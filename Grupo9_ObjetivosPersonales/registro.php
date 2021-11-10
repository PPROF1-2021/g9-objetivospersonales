<!DOCTYPE html>
<html lang="es-AR">

<head>
	<!-- META TAGS -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<meta name="description" content="Realizar seguimiento de objetivos, tareas, rutinas y eventos diarios. Otorgar al usuario la creación de un proyecto personal de corto o largo plazo con el fin de administrar mejor el tiempo, cumplir objetivos y organizar el día a día de manera más eficiente. A su vez conseguir un efecto de satisfacción  al completar tareas con la utilización de recompensas para motivar a la realización de sus proyectos y cumplimientos de objetivos diarios, como por ejemplo; niveles, insignias, eventos, personalización en la app.">
	<meta name="keywords" content="Gestion de proyectos, Manejo del tiempo, tareas, objetivos">
	<meta name="robots" content="all">

	<!---LINKS-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,900;1,300&display=swap" rel="stylesheet">

	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/main.css">

	<!-- FONT AWESOME -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

	<!-- FAVICON -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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


		<!-- Modal de errores -->

		<section id="sectionregistro">
			<div class="container">
				<div class="d-flex justify-content-center row ">
					<div class="col-lg-12 p-5">
						<h2 class="mb-3 text-dark">Registro</h2>
						<form id="formRegistro" class="needs-validation" novalidate>
							<div class="conteiner">
								<div class="row g3 form-inline">
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Nombre</label>
										<!-- Patterns: Es una expresion regular, regla que el campo debe cumplir para ser considerado valido -->
										<input type="text" pattern="[^0-9]{2,}" class="form-control rounded col-auto w-100 pr-3" id="validacionNombre" aria-describedby="feed-nombre" required name="name" data-minlenght="3" data-nonumber="true">
										<div id="feed-nombre" class="invalid-feedback">
											Falta tu Nombre!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Apellido</label>
										<input type="text" pattern="[^0-9]{2,}" class="form-control rounded col-auto w-100 pr-3" id="validacionApellido" aria-describedby="feed-apellido" required name="surname" data-minlenght="3" data-nonumber="true">
										<div id="feed-apellido" class="invalid-feedback">
											Falta tu Apellido!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Provincia</label>
										<input type="text" class="form-control rounded col-auto w-100 pr-3" id="validacionProvincia" aria-describedby="feed-prov" required name="city">
										<div id="feed-prov" class="invalid-feedback">
											Falta tu Provincia!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Pais</label>
										<input type="text" class="form-control rounded w-100 pr-3" id="validacionPais" aria-describedby="feed-pais" required name="country">
										<div id="feed-pais" class="invalid-feedback">
											Falta tu País!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Codigo Postal</label>
										<input type="number" class="form-control rounded col-auto w-100 pr-3" id="validacionCodigoPostal" aria-describedby="feed-cp" required name="cp">
										<div id="feed-cp" class="invalid-feedback">
											Falta tu CP!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Numero de teléfono</label>
										<input type="tel" pattern="^\(\d{3}\)\d{5,}|^\d{8,}" class="form-control rounded col-auto w-100 pr-3" id="validacionTelefono" aria-describedby="feed-tel" required name="tel">
										<div id="feed-tel" class="invalid-feedback">
											Falta tu Teléfono!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Fecha de nacimiento</label> 
										<!-- Obtiene la fecha con la funcion date y la asigna al atributo Max lo que limita la fecha que ingresas hoy -->
										<input type="date" data-minage="13" max="<?= date('Y-m-d') ?>" class="form-control rounded col-auto w-100 pr-3" id="validacionFechaNacimiento" aria-describedby="feed-nacimiento" required name="date">
										<div id="feed-nacimiento" class="invalid-feedback">
											Falta tu Fecha de nacimiento!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Correo</label>
										<input type="email" class="form-control rounded col-auto w-100 pr-3" id="validacionEdad" aria-describedby="feed-email" required name="email">
										<div id="feed-email" class="invalid-feedback">
											Falta tu correo!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label for="validationDefaultUsername" class="mr-3">Contraseña</label>
										<input type="password" class="form-control rounded w-100 pr-3" id="validacionPassword" aria-describedby="inputGroupPrepend2" aria-describedby="feed-pass" required>
										<div id="feed-pass" class="invalid-feedback">
											Falta tu Clave!
										</div>
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Confirmar contraseña</label>
										<input type="password" class="form-control rounded w-100 pr-3" id="validacionConfPassword" aria-describedby="feed-confpass" required name="password">
										<div id="feed-confpass" class="invalid-feedback">
											Falta tu Clave!
										</div>
									</div>
								</div>
							</div>
							<form>
								<h3>¿Como nos conociste? ¡Contanos!</h3></br>
								<div class="container input-group mb-3">
									<textarea name="mensaje" cols="30" rows="10" placeholder="Mensaje" class="form-control"></textarea>
								</div>
								<button type="submit" class="btn btn-primary btn-block btn-md col-auto rounded w-auto">Registrarse</button>
							</form>
					</div>
					</form>
				</div>
			</div>
		</section>
	</main>

	<!-- Footer -->
	<?php
	include("footer.html");
	?>
	<!-- SCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
	<script src="js/funcionesGrupo9-objetivosPersonales.js"></script>
	<!-- SCRIPTS -->

</body>

</html>