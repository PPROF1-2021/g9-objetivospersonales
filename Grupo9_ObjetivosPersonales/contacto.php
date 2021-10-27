<!DOCTYPE html>
<html lang="es-AR">
  <head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta
      name="description"
      content="Realizar seguimiento de objetivos, tareas, rutinas y eventos diarios. Otorgar al usuario la creación de un proyecto personal de corto o largo plazo con el fin de administrar mejor el tiempo, cumplir objetivos y organizar el día a día de manera más eficiente. A su vez conseguir un efecto de satisfacción  al completar tareas con la utilización de recompensas para motivar a la realización de sus proyectos y cumplimientos de objetivos diarios, como por ejemplo; niveles, insignias, eventos, personalización en la app."
    />
    <meta
      name="keywords"
      content="Gestion de proyectos, Manejo del tiempo, tareas, objetivos"
    />
    <meta name="robots" content="all" />

    <!---LINKS-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,900;1,300&display=swap"
      rel="stylesheet"
    />

    <!-- BOOTSTRAP CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
      crossorigin="anonymous"
    />

    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/main.css" />

    <!-- FONT AWESOME -->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
      integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
      crossorigin="anonymous"
    />

    <!-- FAVICON -->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
    <link
      rel="apple-touch-icon"
      sizes="180x180"
      href="assets/favicon/apple-touch-icon.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="32x32"
      href="assets/favicon/favicon-32x32.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="16x16"
      href="assets/favicon/favicon-16x16.png"
    />
    <link rel="manifest" href="assets/favicon/site.webmanifest" />

    <title>READY! - Gestor de Proyectos</title>

    <!---START--->
  </head>
  <body id="bodyContacto">
    <?php
      include("header.html");
    ?>
    <main class="bg-white" id="mainContacto">
      <section id="sectionContacto">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
          <li class="breadcrumb-item active" aria-current="page">Contacto</li>
        </ol>
      </nav id="navContacto">
        <div class="container pt-5">
          <div class="row">
            <div class="col-lg-9">
              <h2 class="mb-3 text-dark">Contacto</h2>
              <h3 class="mb-4">¿Tienes mas dudas? ¡Ponte en contacto!</h3>
              <form id="formContacto">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <i class="fas fa-user input-group-text"></i>
                  </div>
                  <input
                    type="text"
                    class="form-control rounded"
                    placeholder="Nombre"
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    required
                  />
                </div>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <i class="fas fa-user input-group-text"></i>
                  </div>
                  <input
                    type="text"
                    class="form-control rounded"
                    placeholder="Apellido"
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    required
                  />
                </div>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <i class="fas fa-envelope input-group-text"></i>
                  </div>
                  <input
                    type="email"
                    class="form-control rounded"
                    placeholder="Email"
                    aria-label="email"
                    aria-describedby="basic-addon1"
                    required
                  />
                </div>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <i class="fas fa-pencil-alt input-group-text"></i>
                  </div>
                  <textarea
                    name=""
                    cols="30"
                    rows="10"
                    placeholder="Consulta"
                    class="form-control rounded"
                    required
                  ></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-block rounded">
                  Enviar
                </button>
              </form>
              <br />
            </div>
            <div class="col-lg-3 align-self-center">
              <img src="img/logo.png" alt="" />
            </div>
          </div>
        </div>
      </section>
    </main>

    <?php
      include("footer.html");
    ?>
    <!-- SCRIPTS -->
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
      integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
