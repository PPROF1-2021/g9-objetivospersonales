<!DOCTYPE html>
<html lang="es-AR">

<head>
  <!-- META TAGS -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <meta name="description"
    content="Realizar seguimiento de objetivos, tareas, rutinas y eventos diarios. Otorgar al usuario la creación de un proyecto personal de corto o largo plazo con el fin de administrar mejor el tiempo, cumplir objetivos y organizar el día a día de manera más eficiente. A su vez conseguir un efecto de satisfacción  al completar tareas con la utilización de recompensas para motivar a la realización de sus proyectos y cumplimientos de objetivos diarios, como por ejemplo; niveles, insignias, eventos, personalización en la app.">
  <meta name="keywords" content="Gestion de proyectos, Manejo del tiempo, tareas, objetivos">
  <meta name="robots" content="all">

  <!---LINKS-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,900;1,300&display=swap"
    rel="stylesheet">

  <!-- BOOTSTRAP CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

  <!-- CUSTOM CSS -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/main.css">

  <!-- FONT AWESOME -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
    integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

  <!-- FAVICON -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
  <link rel="manifest" href="assets/favicon/site.webmanifest">

  <title>READY! - Gestor de Proyectos</title>
</head>

<body>
    <?php
      include("header.html");
    ?>
  <main class="bg-white" id="mainRegistro">
    <nav aria-label="breadcrumb" id="navRegistro">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
            <li class="breadcrumb-item active" aria-current="page">Registrar</li>
          </ol>
    </nav>
    <section id="sectionregistro">
      <div class="container">
        <div class="d-flex justify-content-center row ">
          <div class="col-lg-12 p-5">
            <h2 class="mb-3 text-dark">Registro</h2>
            <form class="needs-validation" novalidate>
              <div class="conteiner">
                <div class="row g3 form-inline">
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Nombre</label>
                    <input type="text" class="form-control rounded col-auto w-100 pr-3" id="validacionNombre" required name="name">
                    <div class="invalid-feedback">
                      Falta tu Nombre!
                    </div>
                    <div class="valid-feedback">
                      Nombre introducido!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Apellido</label>
                    <input type="text" class="form-control rounded col-auto w-100 pr-3" id="validationApellido" required name="surname">
                    <div class="invalid-feedback">
                      Falta tu Apellido!
                    </div>
                    <div class="valid-feedback">
                      Apellido introducido!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Provincia</label>
                    <input type="text" class="form-control rounded col-auto w-100 pr-3" id="validationProvincia" required name="city">
                    <div class="invalid-feedback">
                      Falta tu Provincia!
                    </div>
                    <div class="valid-feedback">
                      Provincia introducida!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Pais</label>
                    <input type="text" class="form-control rounded w-100 pr-3" id="validationPais" required name="country">
                    <div class="invalid-feedback">
                      Falta tu País!
                    </div>
                    <div class="valid-feedback">
                      País introducido!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Codigo Postal</label>
                    <input type="number" class="form-control rounded col-auto w-100 pr-3" id="validationCodigoPostal" required name="cp">
                    <div class="invalid-feedback">
                      Falta tu CP!
                    </div>
                    <div class="valid-feedback">
                      CP introducido!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Numero de teléfono</label>
                    <input type="number" class="form-control rounded col-auto w-100 pr-3" id="validationTelefono" required name="tel">
                    <div class="invalid-feedback">
                      Falta tu Teléfono!
                    </div>
                    <div class="valid-feedback">
                      Teléfono introducido!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Fecha de nacimiento</label>
                    <input type="date" class="form-control rounded col-auto w-100 pr-3" id="validationFechaNacimiento" required name="date">
                    <div class="invalid-feedback">
                      Falta tu Fecha de nacimiento!
                    </div>
                    <div class="valid-feedback">
                      Fecha introducida!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label for="validationDefaultUsername" class="mr-3">Correo</label>
                    <input type="email" class="form-control rounded w-100 pr-3" id="validationCorreo" aria-describedby="inputGroupPrepend2" required name="email">
                    <div class="invalid-feedback">
                      Escribe bien tu Correo!
                    </div>
                    <div class="valid-feedback">
                      Correo introducido!
                    </div>
                  </div>
                  <div class="col-sm-6 mb-3 form-inline">
                    <label class="mr-3">Contraseña</label>
                    <input type="password" class="form-control rounded w-100 pr-3" id="validationContraseña" required name="password">
                    <div class="invalid-feedback">
                      Falta tu Clave!
                    </div>
                    <div class="valid-feedback">
                      Clave introducida!
                    </div>
                  </div>
                </div>
              </div>
              <form>
                <h3>¿Como nos conociste? ¡Contanos!</h3></br>
                <div class="container input-group mb-3">
                  <textarea name="mensaje" cols="30" rows="10" placeholder="Mensaje"
                    class="form-control"></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-block btn-md col-auto rounded w-auto">Registrarme</button>
                
              </form>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <?php
    include("footer.html");
  ?>
  <!-- SCRIPTS -->
  <script src="js/validacion.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
    integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script>
  <!-- SCRIPTS -->

</body>

</html>