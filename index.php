<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de votación</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Validación JS -->
    <script src="validacion.js"></script>
</head>

<body>

    <div class="container my-5">

        <h1 class="text-center mb-5">Sistema de votación</h1>

        <form id="formulario" method="POST">

            <div class="row mb-3">
                <label for="nombre" class="col-sm-2 col-form-label">Nombre y Apellido:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nombre" name="nombre">
                </div>
            </div>

            <div class="row mb-3">
                <label for="alias" class="col-sm-2 col-form-label">Alias (mayor a 5 caracteres, letras y números):</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="alias" name="alias">
                </div>
            </div>

            <div class="row mb-3">
                <label for="rut" class="col-sm-2 col-form-label">RUT:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="rut" name="rut">
                </div>
            </div>

            <div class="row mb-3">
                <label for="email" class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" name="email">
                </div>
            </div>

            <div class="row mb-3">
                <label for="region" class="col-sm-2 col-form-label">Región:</label>
                <div class="col-sm-10">
                    <select class="form-select" id="region" name="region"></select>
                </div>
            </div>

            <div class="row mb-3">
                <label for="comuna" class="col-sm-2 col-form-label">Comuna:</label>
                <div class="col-sm-10">
                    <select class="form-select" id="comuna" name="comuna"></select>
                </div>
            </div>

            <div class="row mb-3">
                <label for="candidato" class="col-sm-2 col-form-label">Candidato:</label>
                <div class="col-sm-10">
                    <select class="form-select" id="candidato" name="candidato"></select>
                </div>
            </div>

            <div class="row mb-3">
                <label for="como_se_entero" class="col-sm-2 col-form-label">¿Cómo se enteró de nosotros?</label>
                <div class="col-sm-10">
                    <div class="form-check">
        <input type="checkbox" id="web" name="como_se_entero[]" value="WEB" class="form-check-input">
        <label for="web" class="form-check-label">WEB</label>
      </div>
      <div class="form-check">
        <input type="checkbox" id="tv" name="como_se_entero[]" value="TV" class="form-check-input">
        <label for="tv" class="form-check-label">TV</label>
      </div>
      <div class="form-check">
        <input type="checkbox" id="redes_sociales" name="como_se_entero[]" value="Redes Sociales" class="form-check-input">
        <label for="redes_sociales" class="form-check-label">Redes Sociales</label>
      </div>
      <div class="form-check">
        <input type="checkbox" id="amigo" name="como_se_entero[]" value="Amigo" class="form-check-input">
        <label for="amigo" class="form-check-label">Amigo</label>
      </div>
    </div>

    <button type="submit" class="btn btn-primary">Votar</button>
  </form>
</div>

<!-- Bootstrap 5 JS bundle (with Popper.js) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Your custom JS -->
<script src="validacion.js"></script>
  </body>
</html>




