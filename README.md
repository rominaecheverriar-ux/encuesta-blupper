# Encuesta Blüpper

Encuesta estática (`index.html`) para GitHub Pages, con las respuestas guardadas en Supabase.

## 1. Crear el proyecto en Supabase

1. Andá a https://supabase.com y creá una cuenta / proyecto nuevo (plan gratuito alcanza).
2. Dentro del proyecto, andá a **SQL Editor → New query**, pegá el contenido de `supabase_setup.sql` y ejecutalo (`Run`). Esto crea la tabla `survey_responses`, la protege con Row Level Security (nadie puede leer emails ni comentarios crudos vía la API), y crea la función `survey_stats()` que alimenta el panel de resultados con solo datos agregados.
3. Andá a **Project Settings → API** y copiá:
   - **Project URL**
   - **anon public key**

## 2. Conectar la encuesta a Supabase

Abrí `index.html` y buscá, cerca del inicio del `<script>`, estas dos líneas:

```js
const SUPABASE_URL = 'https://TU-PROYECTO.supabase.co';
const SUPABASE_ANON_KEY = 'TU_ANON_KEY_AQUI';
```

Reemplazalas por los valores reales de tu proyecto.

> La `anon key` es pública por diseño (viaja en el HTML del navegador). Por eso el SQL de setup NO da permiso de lectura directa sobre la tabla: solo permite insertar respuestas y leer estadísticas agregadas a través de `survey_stats()`. Los emails y comentarios de texto libre no quedan expuestos.

## 3. Publicar en GitHub Pages

```bash
git init
git add .
git commit -m "Encuesta Blüpper con guardado en Supabase"
git branch -M main
git remote add origin <URL_DE_TU_REPO_NUEVO_EN_GITHUB>
git push -u origin main
```

Luego, en GitHub: **Settings → Pages → Deploy from a branch → main / (root)**. En unos minutos la encuesta queda disponible en `https://<tu-usuario>.github.io/<repo>/`.

## Nota sobre el panel de resultados

El botón "Ver resultados acumulados" pide una clave (`blupper2026`, definida en el JS como `RESULTS_PASSCODE`) antes de mostrar las estadísticas. Es solo una traba visual para curiosos casuales, no una medida de seguridad real — cualquiera que abra el código fuente puede verla. Como el endpoint público solo expone agregados (sin datos personales), el riesgo es bajo, pero si querés cambiarla, editá `RESULTS_PASSCODE` en `index.html`.
