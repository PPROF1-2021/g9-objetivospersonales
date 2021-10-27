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

  <!--START-->
</head>

<body>
    <?php
      include("header.html");
    ?>
  <main>

    <!-- TEAM -->
    <section class="text-center team">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
          <li class="breadcrumb-item active" aria-current="page">Equipo</li>
        </ol>
      </nav>
      <div class="container p-3">
        <h2 class="text-center text-white">Nosotros</h2>
        <h3 class="text-white">
          Somos un grupo de estudiantes pertenecientes al ISPC (Instituto Superior Politecnico
          Cordoba), la Tecnicatura de Desarrollo Web y Aplicaciones Digitales.</h3>
        <div class="container p-3">
          <div class="container row">


            <!-- USER TEAM -->

            <!--------------------------BRENDA------------------------------->

            <div class="col-lg-4">
              <div class="card">
                <div class="card-body">
                  <img src="assets/img/Brenda.png" class="img-fluid rounded-circle w-50">
                  <br>
                  <br>
                  <h3><a class="nav-link" href="#">Brenda Escobar</a></h3>
                  <p class="text-dark">
                    <!--Full Stack developer, capacitandose en tecnologias Nodejs y React.-->
                    Capacitandose en desarrollo web y aplicaciones digitales.
                  </p>
                  <div class="d-flex flex-row justify-content-center">
                    <div class="p-2">
                      <a href="https://www.linkedin.com/in/brendaesco98/" class="btn btn-primary" target="_blank">Linkedin</a>
                    </div>
                    <div class="p-2">
                      <a href="https://drive.google.com/file/d/1yXHdu9dWt2aVyWlkmg-cKSvfyqsg72Dt/view?usp=sharing" target="_blank"><button
                          type="button" class="btn btn-email"><i class="fa fa-envelope left"></i> CV</button></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!------------- DIEGO ------------------>

            <div class="col-lg-4">
              <div class="card">
                <div class="card-body">
                  <img src="assets/img/Diego.jpg" class="img-fluid rounded-circle w-50">
                  <br>
                  <br>
                  <h3><a class="nav-link" href="#">Diego Maciel Silva</a></h3>
                  <p class="text-dark">
                    Capacitandose en desarrollo web y aplicaciones digitales.
                  </p>
                  <div class="d-flex flex-row justify-content-center">
                    <div class="p-2">
                      <a href="https://www.linkedin.com/in/ar1810/" class="btn btn-primary" target="_blank">Linkedin</a>
                    </div>
                    <div class="p-2">
                      <a href="https://drive.google.com/file/d/11Nc1LlORnazFTSW5NKd9baVWZwzQ3Gzz/view?usp=sharing" target="_blank"><button
                          type="button" class="btn btn-email"><i class="fa fa-envelope left"></i>
                          CV</button></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!------------- IVAN ------------------>

            <div class="d-flex justify-content-center col-lg-4">
              <div class="card">
                <div class="card-body">
                  <img src="assets/img/Ivan.jpg" class="img-fluid rounded-circle w-50">
                  <br>
                  <br>
                  <h3><a class="nav-link" href="#">Ivan Massimino</a></h3>
                  <p class="text-dark">
                    <!--Diseñador gráfico y productor audiovisual.-->
                    Capacitandose en desarrollo web y aplicaciones digitales.
                  </p>
                  <div class="d-flex flex-row justify-content-center">
                    <div class="p-2">
                      <a href="https://www.linkedin.com/in/ivan-massimino-210204170/" class="btn btn-primary" target="_blank">Linkedin</a>
                    </div>
                    <div class="p-2">
                      <a href="https://drive.google.com/file/d/14ISJjJhjAH21Us7oF6vxvS5Cf_CmoY_P/view?usp=sharing" target="_blank">
                        <button type="button" class="btn btn-email"><i class="fa fa-envelope left"></i>CV
                        </button>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>


            <!------------- JUAN ------------------>

            <div class="d-flex justify-content-center col-lg-4">
              <div class="card">
                <div class="card-body">
                  <img src="assets/img/Juan.jpg" class="img-fluid rounded-circle w-50">
                  <br>
                  <br>
                  <h3><a class="nav-link" href="#">Juan Manuel Lopez</a></h3>
                  <p class="text-dark">
                    Capacitandose en desarrollo web y aplicaciones digitales. <br>
                  </p>
                  <div class="d-flex flex-row justify-content-center">
                    <div class="p-2">
                      <a href="https://www.linkedin.com/in/juanem-ar" class="btn btn-primary" target="_blank">Linkedin</a>
                    </div>
                    <div class="p-2">
                      <a href="https://drive.google.com/file/d/1IrjmSlsh9KpE6uvyJ2PGZyuLtBNy7d66/view?usp=sharing" target="_blank"><button
                          type="button" class="btn btn-email"><i class="fa fa-envelope left"></i>
                          CV</button></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!------------- MONY ------------------>

            <div class=" d-flex justify-content-center col-lg-4">
              <div class="card">
                <div class="card-body">
                  <img src="assets/img/Monica.jpg" class="img-fluid rounded-circle w-50">
                  <br>
                  <br>
                  <h3><a class="nav-link" href="#">Monica Antich</a></h3>
                  <p class="text-dark">
                    Capacitandose en desarrollo web y aplicaciones digitales. <br>
                  </p>
                  <div class="d-flex flex-row justify-content-center">
                    <div class="p-2">
                      <a href="http://linkedin.com/in/monica-beatriz-antich-412b7a223" class="btn btn-primary" target="_blank">Linkedin</a>
                    </div>
                    <div class="p-2">
                      <a href="https://drive.google.com/file/d/15aBRAJ27ktA3R8a-i-0Ir8-nSrS19i-v/view?usp=sharing" target="_blank"><button
                          type="button" class="btn btn-email"><i class="fa fa-envelope left"></i>
                          CV</button></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  <?php
    include("footer.html");
  ?>
  <!-- SCRIPTS -->
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