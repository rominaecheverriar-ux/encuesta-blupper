-- Ejecutar todo este script en Supabase: Project → SQL Editor → New query → Run

create extension if not exists pgcrypto;

create table if not exists survey_responses (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  edad text not null,
  rutina text not null,
  interes int not null,
  precio text not null,
  membresia text,
  dudas text,
  email text
);

-- Row Level Security: nadie puede leer las filas crudas (con emails y comentarios)
-- desde la API pública. Solo se permite insertar respuestas nuevas.
alter table survey_responses enable row level security;

create policy "Cualquiera puede enviar una respuesta"
  on survey_responses
  for insert
  to anon
  with check (true);

-- Función que calcula estadísticas agregadas (sin exponer emails ni comentarios).
-- El panel de resultados de la encuesta llama a esta función, no a la tabla directamente.
create or replace function survey_stats()
returns jsonb
language sql
security definer
set search_path = public
as $$
  select jsonb_build_object(
    'total', (select count(*) from survey_responses),
    'avg_interes', (select round(avg(interes)::numeric, 1) from survey_responses),
    'precio_counts', (
      select coalesce(jsonb_object_agg(precio, cnt), '{}'::jsonb)
      from (select precio, count(*) as cnt from survey_responses group by precio) t
    ),
    'membresia_counts', (
      select coalesce(jsonb_object_agg(membresia, cnt), '{}'::jsonb)
      from (
        select membresia, count(*) as cnt
        from survey_responses
        where membresia is not null
        group by membresia
      ) t
    )
  );
$$;

grant execute on function survey_stats() to anon;
