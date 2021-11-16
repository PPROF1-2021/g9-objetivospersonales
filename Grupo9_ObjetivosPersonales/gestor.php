<!DOCTYPE html>
<html lang="es-AR">

<head>
  <!-- META TAGS -->
  <meta charset="UTF-8" />
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <meta name="description"
    content="Realizar seguimiento de objetivos, tareas, rutinas y eventos diarios. Otorgar al usuario la creación de un proyecto personal de corto o largo plazo con el fin de administrar mejor el tiempo, cumplir objetivos y organizar el día a día de manera más eficiente." />
  <meta name="keywords" content="Gestion de proyectos, gestor de tareas, rutinas, planificación" />
  <meta name="robots" content="all" />

  <!---LINKS-->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,900;1,300&display=swap"
    rel="stylesheet" />

  <!-- BOOTSTRAP CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />

  <!-- CUSTOM CSS -->
  <link rel="stylesheet" href="assets/css/style.css" />
  <link rel="stylesheet" href="assets/css/main.css" />

  <!-- FONT AWESOME -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
    integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous" />

  <!-- FAVICON -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
  <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png" />
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png" />
  <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png" />
  <link rel="manifest" href="assets/favicon/site.webmanifest" />

  <title>READY! - Gestor de Proyectos</title>
</head>

<body onload="cargarApp()" id="bodyGestor">
  <?php
    require 'assets/partials/header.html'
  ?>
  <main id="mainGestor">
    <div class="container-fluid h-auto fondo">
      <div class="row p-5 justify-content-center h-auto">
        <div class="col col col-lg-2"></div>
        <div class="col-md-auto">
          <div class="row">
            <h2>Agenda para organizar sus tareas</h2>
          </div>
          <div class="row justify-content-md-center h1 p-3 text-white">
            <p></p>
          </div>
          <div class="row p-3 mb-2 bg-primary text-white rounded bg-gradient">
            <div class="col-7">Tareas Prioritarias</div>
            <div class="col-auto"></div>
          </div>
          <div class="row p-3 mb-2 bg-danger text-white rounded bg-gradient">
            <div class="col-7">Tareas No Prioritarias</div>
            <div class="col-3"></div>
            <div class="col-auto badge bg-secondary"></div>
          </div>
        </div>
        <div class="col col col-lg-2"></div>
      </div>
      <div class="row p-3 justify-content-center bg-white mb-3 shadow rounded">
        <div class="col-md-auto align-content-center">
          <form id="forma" onsubmit="return false;">
            <select class="shadow p-2 rounded" id="tipo">
              <option value="prioritaria" selected>Prioritarios</option>
              <option value="no-prioritaria" selected>No Prioritarios</option>
            </select>
            <input type="text" class="shadow-lg p-2 bg-body rounded border-1" placeholder="Agregar Tarea"
              id="descripcion" />
            <button class="shadow p-2 rounded border-1 btn-primary" onclick="agregarDato()">
              <ion-icon name="checkmark-circle-outline"></ion-icon>
            </button>
          </form>
        </div>
      </div>
      <div class="row p-3 justify-content-center bg-white rounded h-auto">
        <div class="col-6 h-auto">
          <div class="contenedor limpiarEstilos">
            <div>
              <h3 class="text-primary text-uppercase">Tareas Prioritarias: <span id="contadorPrioritario"></span></h3>
              <div id="lista-tareas-prioritarias">
                <div class="elemento limpiarEstilos">
                  <div class="elemento_descripcion"></div>
                  <div class="derecha limpiarEstilos">
                    <div class="elemento_eliminar">
                      <button class="elemento_eliminar--btn">
                        <ion-icon name="close-circle-outline" onclick="eliminarPrioritarios()"></ion-icon>
                      </button>
                    </div>
                  </div>
                </div>
                <div class="elemento limpiarEstilos">
                  <div class="elemento_descripcion"></div>
                  <div class="derecha limpiarEstilos">
                    <div class="elemento_eliminar">
                      <button class="elemento_eliminar--btn">
                        <ion-icon name="close-circle-outline" onclick="eliminarPrioritarios()"></ion-icon>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-6 h-auto">
          <div>
            <h3 class="text-danger text-uppercase">Tareas No Prioritarias: <span id="contadorNoPrioritario"></span></h3>
            <div id="no-Prioritarios">
              <div class="elemento limpiarEstilos">
                <div class="elemento_descripcion"></div>
                <div class="derecha limpiarEstilos">
                  <div class="elemento_eliminar">
                    <button class="elemento_eliminar--btn">
                      <ion-icon name="close-circle-outline" onclick="eliminarNoPrioritarios()"></ion-icon>
                    </button>
                  </div>
                </div>
              </div>
              <div class="elemento limpiarEstilos">
                <div class="elemento_descripcion"></div>
                <div class="derecha limpiarEstilos">
                  <div class="elemento_eliminar">
                    <button class="elemento_eliminar--btn">
                      <ion-icon name="close-circle-outline" onclick="eliminarNoPrioritarios()"></ion-icon>
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>

	<?php
    require 'assets/partials/footer.html'
  ?>

<!-- SCRIPTS -->
<script src="assets/js/Dato.js"></script>
<script src="assets/js/Prioritarios.js"></script>
<script src="assets/js/NoPrioritarios.js"></script>
<script src="assets/js/app.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.4.0/dist/ionicons/ionicons.esm.js"></script>

</body>
</html>