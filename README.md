[index.html](https://github.com/user-attachments/files/32481818/index.html)
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Blüpper — Encuesta para familias</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500;600;700&family=Work+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style>
  :root{
    --ink:#123832;
    --ink-soft:#3d5b55;
    --bg:#F6EFE4;
    --card:#FFFFFF;
    --teal:#1D9E75;
    --teal-dark:#0F6E56;
    --coral:#D85A30;
    --coral-light:#F5C4B3;
    --line:#DCEAE4;
  }
  *{box-sizing:border-box;}
  body{
    margin:0;
    font-family:'Work Sans', sans-serif;
    background:var(--bg);
    color:var(--ink);
    padding:0 0 4rem;
  }
  .wrap{max-width:640px;margin:0 auto;padding:0 20px;}
  .hero{
    padding:2px 20px 4px;
    text-align:center;
    background:var(--bg);
    border-bottom:1px solid var(--line);
  }
  .badge{
    display:inline-flex;
    align-items:center;
    gap:6px;
    background:var(--coral-light);
    color:#7A2E10;
    font-size:12px;
    font-weight:600;
    padding:5px 12px;
    border-radius:20px;
    margin-bottom:14px;
    letter-spacing:.02em;
  }
  h1{
    font-family:'Baloo 2', sans-serif;
    font-size:30px;
    font-weight:700;
    margin:0 0 10px;
    color:var(--ink);
  }
  .sub{
    font-size:15px;
    color:var(--ink-soft);
    line-height:1.55;
    max-width:480px;
    margin:0 auto;
  }
  .card{
    background:var(--card);
    border:1px solid var(--line);
    border-radius:16px;
    padding:24px 22px;
    margin:10px auto 0;
  }
  .q-num{
    font-family:'Baloo 2', sans-serif;
    font-size:13px;
    font-weight:600;
    color:var(--teal-dark);
    text-transform:uppercase;
    letter-spacing:.06em;
    margin-bottom:6px;
  }
  .q-text{
    font-size:17px;
    font-weight:600;
    margin:0 0 14px;
    line-height:1.4;
  }
  .q-help{
    font-size:13px;
    color:var(--ink-soft);
    margin:-10px 0 14px;
  }
  .options{display:flex;flex-direction:column;gap:8px;}
  .opt{
    display:flex;
    align-items:center;
    gap:10px;
    border:1.5px solid var(--line);
    border-radius:10px;
    padding:12px 14px;
    cursor:pointer;
    font-size:14.5px;
    transition:border-color .15s, background .15s;
    background:#FDFBF6;
  }
  .opt:hover{border-color:var(--teal);}
  .opt.selected{
    border-color:var(--teal);
    background:#E9F7F1;
    font-weight:500;
  }
  .opt input{accent-color:var(--teal);width:16px;height:16px;flex-shrink:0;}
  .scale{display:flex;gap:8px;justify-content:space-between;}
  .scale-opt{
    flex:1;
    text-align:center;
    border:1.5px solid var(--line);
    border-radius:10px;
    padding:12px 4px;
    cursor:pointer;
    font-size:15px;
    font-weight:600;
    color:var(--ink-soft);
    background:#FDFBF6;
  }
  .scale-opt.selected{
    border-color:var(--coral);
    background:var(--coral-light);
    color:#7A2E10;
  }
  .scale-labels{display:flex;justify-content:space-between;font-size:11.5px;color:var(--ink-soft);margin-top:6px;}
  textarea, input[type="text"], input[type="number"], input[type="email"]{
    width:100%;
    border:1.5px solid var(--line);
    border-radius:10px;
    padding:11px 13px;
    font-family:inherit;
    font-size:14.5px;
    color:var(--ink);
    background:#FDFBF6;
    resize:vertical;
  }
  textarea:focus, input:focus{outline:none;border-color:var(--teal);}
  .optional{font-size:12px;color:var(--ink-soft);font-weight:400;text-transform:none;letter-spacing:0;}
  .submit-btn{
    width:100%;
    background:var(--teal);
    color:#fff;
    border:none;
    border-radius:12px;
    padding:16px;
    font-family:'Baloo 2', sans-serif;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
    margin-top:20px;
    transition:background .15s, transform .1s;
  }
  .submit-btn:hover{background:var(--teal-dark);}
  .submit-btn:active{transform:scale(0.99);}
  .submit-btn:disabled{background:#B4B2A9;cursor:not-allowed;}
  .error{color:var(--coral);font-size:13px;margin-top:8px;}
  .done{
    text-align:center;
    padding:50px 24px;
  }
  .done .icon{
    width:56px;height:56px;border-radius:50%;
    background:#E9F7F1;color:var(--teal-dark);
    display:flex;align-items:center;justify-content:center;
    margin:0 auto 18px;font-size:26px;
  }
  .done h2{font-family:'Baloo 2', sans-serif;font-size:22px;margin:0 0 8px;}
  .done p{color:var(--ink-soft);font-size:14.5px;line-height:1.5;}
  .results-toggle{
    text-align:center;margin-top:28px;
  }
  .results-toggle button{
    background:none;border:none;color:var(--ink-soft);
    font-size:12.5px;text-decoration:underline;cursor:pointer;
  }
  .results{
    background:var(--card);border:1px solid var(--line);border-radius:16px;
    padding:20px 22px;margin-top:14px;
  }
  .results h3{font-family:'Baloo 2', sans-serif;font-size:16px;margin:0 0 14px;}
  .stat-row{display:flex;justify-content:space-between;font-size:13.5px;padding:6px 0;border-bottom:1px solid var(--line);}
  .stat-row:last-child{border-bottom:none;}
  .stat-label{color:var(--ink-soft);}
  .stat-val{font-weight:600;}
  .loading{text-align:center;padding:40px;color:var(--ink-soft);font-size:14px;}
</style>
</head>
<body>

<div class="hero">
  <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABDgAAAQ4CAIAAABjcvvYAAAQAElEQVR4nOzdB5hdVb3w4Z02Pb0XSAgkJJBAwADSpEeqtCtRUIoUvYB0kauoiCLIlaIioqIIIogFaVKlCYRqKCEEUiAJ6b1MS5nk2xg+LiSQswMzZ/45532f8/DEZE1wZcLM/p219tqtaxdOSwAAACJpnQAAAAQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIFAAAIR6gAAADhCBUAACAcoQIAAIQjVAAAgHCECgAAEI5QAQAAwhEqAABAOEIF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QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcIQKAAAQjlABAADCESoAAEA4QgUAAAhHqAAAAOEIFQAAIByhAgAAhCNUAACAcP4fAAAA///KacTuAAAABklEQVQDAAXy2H++px9YAAAAAElFTkSuQmCC" alt="Blüpper" style="max-width:320px;width:80%;height:auto;margin:0 auto 6px;display:block;">
  <div class="badge" style="background:#DCF3EA;color:var(--teal-dark);">🌱 Hábitos saludables de forma entretenida para niños</div>
  <h1 style="font-size:24px;">Ayúdanos a crear la próxima rutina positiva para tu hijo/a</h1>
  <p class="sub"><strong>Blüpper</strong> crea hábitos saludables para niños; <strong>Blüpper Teeth</strong>, nuestro primer kit, convierte el cepillado de dientes en una misión: de forma entretenida, tu hijo/a aprende la técnica adecuada a su edad y descubre por sí mismo dónde el cepillado está siendo deficiente.</p>
  <p class="sub" style="margin-top:8px;font-weight:600;color:var(--teal-dark);">Tu opinión (2 min) nos ayuda a decidir si seguir adelante 💚</p>
</div>

<div class="wrap">
  <form id="survey-form">

    <div class="card">
      <div class="q-num">1 de 7</div>
      <p class="q-text">¿Qué edad tiene tu hijo/a?</p>
      <div class="options" data-name="edad">
        <label class="opt"><input type="radio" name="edad" value="0-3 años"><span>0 a 3 años</span></label>
        <label class="opt"><input type="radio" name="edad" value="4-5 años"><span>4 a 5 años</span></label>
        <label class="opt"><input type="radio" name="edad" value="6-8 años"><span>6 a 8 años</span></label>
        <label class="opt"><input type="radio" name="edad" value="Fuera de ese rango"><span>Fuera de ese rango</span></label>
      </div>
    </div>

    <div class="card">
      <div class="q-num">2 de 7</div>
      <p class="q-text">¿Cómo es hoy la rutina de cepillado en tu casa?</p>
      <div class="options" data-name="rutina">
        <label class="opt"><input type="radio" name="rutina" value="Sin problema, ya es un hábito"><span>Sin problema, ya es un hábito</span></label>
        <label class="opt"><input type="radio" name="rutina" value="A veces cuesta"><span>A veces cuesta</span></label>
        <label class="opt"><input type="radio" name="rutina" value="Es una lucha diaria"><span>Es una lucha diaria</span></label>
      </div>
    </div>

    <div class="card">
      <div class="q-num">🦷 Blüpper Teeth</div>
      <p class="q-text" style="margin-bottom:6px;">¡La misión del cepillado comienza! 🚀</p>
      <p class="q-help" style="margin:0 0 14px;">Blüpper Teeth transforma la rutina diaria en una verdadera misión: aprender, descubrir, practicar y avanzar hasta convertirse en un ¡experto del cepillado! ⭐</p>
      <div class="options" style="gap:12px;">
        <div class="opt" style="cursor:default;align-items:flex-start;"><span>🔍</span><span><strong>Revelador de placa</strong> (tiñe suave y temporalmente los dientes)<br><span style="color:var(--ink-soft);font-weight:400;">Descubre dónde se esconde la placa bacteriana y transforma el cepillado en un desafío: ¡encuentra las zonas que necesitan más atención!</span></span></div>
        <div class="opt" style="cursor:default;align-items:flex-start;"><span>🪥</span><span><strong>Cepillo VITIS infantil</strong><br><span style="color:var(--ink-soft);font-weight:400;">Un cepillo diseñado para acompañar a los niños en su aprendizaje y hacer del cepillado una experiencia cómoda y amigable.</span></span></div>
        <div class="opt" style="cursor:default;align-items:flex-start;"><span>🎴</span><span><strong>Tarjetas didácticas por edad</strong><br><span style="color:var(--ink-soft);font-weight:400;">Aprende paso a paso cómo cepillarse correctamente según la etapa de desarrollo, de una manera simple, visual y entretenida.</span></span></div>
        <div class="opt" style="cursor:default;align-items:flex-start;"><span>⏳</span><span><strong>Reloj de arena de 2 minutos</strong><br><span style="color:var(--ink-soft);font-weight:400;">¡La misión tiene tiempo! Usa el reloj para aprender cuánto debe durar el cepillado y convertir esos 2 minutos en un desafío diario.</span></span></div>
        <div class="opt" style="cursor:default;align-items:flex-start;"><span>📅</span><span><strong>Calendario de progreso + Diploma de misión cumplida</strong><br><span style="color:var(--ink-soft);font-weight:400;">Cada cepillado cuenta. Registra los avances, celebra los logros y motiva a tu hijo a mantener el hábito día a día.</span></span></div>
      </div>
    </div>

    <div class="card">
      <div class="q-num">3 de 7</div>
      <p class="q-text">¿Qué tan interesante te parece este kit?</p>
      <div class="scale" data-name="interes">
        <div class="scale-opt" data-value="1">1</div>
        <div class="scale-opt" data-value="2">2</div>
        <div class="scale-opt" data-value="3">3</div>
        <div class="scale-opt" data-value="4">4</div>
        <div class="scale-opt" data-value="5">5</div>
      </div>
      <div class="scale-labels"><span>Nada interesante</span><span>Muy interesante</span></div>
    </div>

    <div class="card">
      <div class="q-num">4 de 7</div>
      <p class="q-text">¿Pagarías $22.990 CLP por este kit?</p>
      <div class="options" data-name="precio">
        <label class="opt"><input type="radio" name="precio" value="Sí, definitivamente"><span>Sí, definitivamente</span></label>
        <label class="opt"><input type="radio" name="precio" value="Tal vez, depende"><span>Tal vez, depende</span></label>
        <label class="opt"><input type="radio" name="precio" value="Me parece caro"><span>Me parece caro</span></label>
        <label class="opt"><input type="radio" name="precio" value="No me interesa"><span>No me interesa</span></label>
      </div>
    </div>

    <div class="card">
      <div class="q-num">5 de 7 <span class="optional">· opcional</span></div>
      <p class="q-text">¿Te interesaría una membresía mensual, a un costo menor al del kit inicial?</p>
      <p class="q-help" style="margin-top:-4px;margin-bottom:10px;font-weight:600;">Incluye:</p>
      <div class="options" style="gap:8px;margin-bottom:16px;">
        <div class="opt" style="cursor:default;"><span>🪥</span><span>Recambio de cepillo</span></div>
        <div class="opt" style="cursor:default;"><span>🔍</span><span>Pastillas reveladoras</span></div>
        <div class="opt" style="cursor:default;"><span>🦷</span><span>Visita trimestral al odontólogo: evaluación y refuerzo de la técnica de cepillado + fluoración gratis</span></div>
      </div>
      <div class="options" data-name="membresia">
        <label class="opt"><input type="radio" name="membresia" value="Sí"><span>Sí</span></label>
        <label class="opt"><input type="radio" name="membresia" value="Tal vez"><span>Tal vez</span></label>
        <label class="opt"><input type="radio" name="membresia" value="No"><span>No</span></label>
      </div>
    </div>

    <div class="card">
      <div class="q-num">6 de 7 <span class="optional">· opcional</span></div>
      <p class="q-text">¿Qué te generaría dudas o freno para comprarlo?</p>
      <textarea name="dudas" rows="3" placeholder="Ej: no sé si mi hijo lo usaría, el precio, prefiero verlo antes..."></textarea>
    </div>

    <div class="card">
      <div class="q-num">7 de 7 <span class="optional">· opcional</span></div>
      <p class="q-text">Tu email, si quieres que te avisemos cuando esté disponible</p>
      <input type="email" name="email" placeholder="nombre@correo.com">
    </div>

    <button type="submit" class="submit-btn" id="submit-btn">Enviar respuesta</button>
    <div class="error" id="form-error" style="display:none;"></div>
  </form>

  <div id="done-screen" class="done" style="display:none;">
    <div class="icon"><i>✓</i></div>
    <h2>¡Gracias por tu respuesta!</h2>
    <p>Nos ayuda un montón a decidir si este kit vale la pena. Si dejaste tu email, te avisamos apenas esté disponible.</p>
  </div>

  <div class="results-toggle">
    <button type="button" id="toggle-results">Ver resultados acumulados</button>
  </div>
  <div class="results" id="results-panel" style="display:none;">
    <div id="passcode-gate">
      <p style="font-size:13.5px;color:var(--ink-soft);margin:0 0 10px;">Ingresa la clave de acceso para ver los resultados.</p>
      <div style="display:flex;gap:8px;">
        <input type="password" id="passcode-input" placeholder="Clave" style="flex:1;">
        <button type="button" id="passcode-submit" style="background:var(--teal);color:#fff;border:none;border-radius:10px;padding:0 18px;font-weight:600;cursor:pointer;">Entrar</button>
      </div>
      <div class="error" id="passcode-error" style="display:none;">Clave incorrecta.</div>
    </div>
    <div id="results-content" style="display:none;">
      <div class="loading" id="results-loading">Cargando respuestas...</div>
    </div>
  </div>
</div>

<script>
(function(){
  // Reemplaza estos dos valores por los de tu proyecto Supabase
  // (Project Settings → API → Project URL / anon public key).
  const SUPABASE_URL = 'https://ggpolhpjaqudtddpbkof.supabase.co';
  const SUPABASE_ANON_KEY = 'sb_publishable_WfsuwlklwGNX543V7BIHpg_wol5egdf';

  const form = document.getElementById('survey-form');
  const submitBtn = document.getElementById('submit-btn');
  const formError = document.getElementById('form-error');
  const doneScreen = document.getElementById('done-screen');
  const scaleGroups = document.querySelectorAll('.scale');
  const optionLabels = document.querySelectorAll('label.opt');

  scaleGroups.forEach(group => {
    group.querySelectorAll('.scale-opt').forEach(opt => {
      opt.addEventListener('click', () => {
        group.querySelectorAll('.scale-opt').forEach(o => o.classList.remove('selected'));
        opt.classList.add('selected');
        group.dataset.selected = opt.dataset.value;
      });
    });
  });

  optionLabels.forEach(label => {
    const input = label.querySelector('input');
    input.addEventListener('change', () => {
      document.querySelectorAll(`input[name="${input.name}"]`).forEach(i => {
        i.closest('.opt').classList.toggle('selected', i.checked);
      });
    });
  });

  form.addEventListener('submit', async (e) => {
    e.preventDefault();
    formError.style.display = 'none';

    const edad = form.querySelector('input[name="edad"]:checked');
    const rutina = form.querySelector('input[name="rutina"]:checked');
    const interesGroup = document.querySelector('.scale[data-name="interes"]');
    const interes = interesGroup ? interesGroup.dataset.selected : null;
    const precio = form.querySelector('input[name="precio"]:checked');

    if (!edad || !rutina || !interes || !precio) {
      formError.textContent = 'Por favor responde las preguntas 1 a 4 antes de enviar.';
      formError.style.display = 'block';
      return;
    }

    const membresia = form.querySelector('input[name="membresia"]:checked');
    const dudas = form.querySelector('textarea[name="dudas"]').value.trim();
    const email = form.querySelector('input[name="email"]').value.trim();

    const response = {
      edad: edad.value,
      rutina: rutina.value,
      interes: parseInt(interes, 10),
      precio: precio.value,
      membresia: membresia ? membresia.value : null,
      dudas: dudas || null,
      email: email || null
    };

    submitBtn.disabled = true;
    submitBtn.textContent = 'Enviando...';

    try {
      const res = await fetch(SUPABASE_URL + '/rest/v1/survey_responses', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'apikey': SUPABASE_ANON_KEY,
          'Authorization': 'Bearer ' + SUPABASE_ANON_KEY,
          'Prefer': 'return=minimal'
        },
        body: JSON.stringify(response)
      });
      if (!res.ok) throw new Error('No se pudo guardar');
      form.style.display = 'none';
      doneScreen.style.display = 'block';
    } catch (err) {
      formError.textContent = 'Hubo un problema al enviar. Intenta de nuevo.';
      formError.style.display = 'block';
      submitBtn.disabled = false;
      submitBtn.textContent = 'Enviar respuesta';
    }
  });

  const toggleBtn = document.getElementById('toggle-results');
  const resultsPanel = document.getElementById('results-panel');
  const passcodeGate = document.getElementById('passcode-gate');
  const resultsContent = document.getElementById('results-content');
  const passcodeInput = document.getElementById('passcode-input');
  const passcodeSubmit = document.getElementById('passcode-submit');
  const passcodeError = document.getElementById('passcode-error');
  const RESULTS_PASSCODE = 'blupper2026';
  let unlocked = false;
  let loaded = false;

  toggleBtn.addEventListener('click', () => {
    const showing = resultsPanel.style.display !== 'none';
    if (showing) {
      resultsPanel.style.display = 'none';
      toggleBtn.textContent = 'Ver resultados acumulados';
      return;
    }
    resultsPanel.style.display = 'block';
    toggleBtn.textContent = 'Ocultar resultados';
  });

  passcodeSubmit.addEventListener('click', async () => {
    if (passcodeInput.value.trim() !== RESULTS_PASSCODE) {
      passcodeError.style.display = 'block';
      return;
    }
    passcodeError.style.display = 'none';
    unlocked = true;
    passcodeGate.style.display = 'none';
    resultsContent.style.display = 'block';
    await loadResults();
  });

  passcodeInput.addEventListener('keydown', (e) => {
    if (e.key === 'Enter') passcodeSubmit.click();
  });

  async function loadResults() {
    if (loaded) return;
    try {
      const res = await fetch(SUPABASE_URL + '/rest/v1/rpc/survey_stats', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'apikey': SUPABASE_ANON_KEY,
          'Authorization': 'Bearer ' + SUPABASE_ANON_KEY
        },
        body: '{}'
      });
      if (!res.ok) throw new Error('No se pudieron cargar los resultados');
      const stats = await res.json();

      const total = stats.total || 0;
      if (total === 0) {
        resultsContent.innerHTML = '<div class="loading">Todavía no hay respuestas.</div>';
        loaded = true;
        return;
      }
      const pct = (n) => total ? Math.round((n / total) * 100) : 0;

      const precioCounts = stats.precio_counts || {};
      const avgInteres = stats.avg_interes != null ? stats.avg_interes : '0';
      const membresiaCounts = stats.membresia_counts || {};

      let html = '<h3>' + total + ' respuesta' + (total === 1 ? '' : 's') + '</h3>';
      html += '<div class="stat-row"><span class="stat-label">Interés promedio (1-5)</span><span class="stat-val">' + avgInteres + '</span></div>';
      ['Sí, definitivamente', 'Tal vez, depende', 'Me parece caro', 'No me interesa'].forEach(k => {
        const n = precioCounts[k] || 0;
        html += '<div class="stat-row"><span class="stat-label">' + k + '</span><span class="stat-val">' + n + ' (' + pct(n) + '%)</span></div>';
      });
      html += '<h3 style="margin-top:18px;">Interés en membresía</h3>';
      ['Sí', 'Tal vez', 'No'].forEach(k => {
        const n = membresiaCounts[k] || 0;
        html += '<div class="stat-row"><span class="stat-label">' + k + '</span><span class="stat-val">' + n + ' (' + pct(n) + '%)</span></div>';
      });

      resultsContent.innerHTML = html;
      loaded = true;
    } catch (err) {
      resultsContent.innerHTML = '<div class="loading">No se pudieron cargar los resultados.</div>';
    }
  }
})();
</script>

</body>
</html>
