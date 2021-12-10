<!DOCTYPE html>
<html lang="es-AR">

<head>
	<!-- META TAGS -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<meta name="description" content="Realizar seguimiento de objetivos, tareas, rutinas y eventos diarios. Otorgar al usuario la creación de un proyecto personal de corto o largo plazo con el fin de administrar mejor el tiempo, cumplir objetivos y organizar el día a día de manera más eficiente. A su vez conseguir un efecto de satisfacción  al completar tareas con la utilización de recompensas para motivar a la realización de sus proyectos y cumplimientos de objetivos diarios, como por ejemplo; niveles, insignias, eventos, personalización en la app." />
	<meta name="keywords" content="Gestion de proyectos, Manejo del tiempo, tareas, objetivos" />
	<meta name="robots" content="all" />

	<!---LINKS-->
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,900;1,300&display=swap" rel="stylesheet" />

	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />

	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="assets/css/style.css" />
	<link rel="stylesheet" href="assets/css/main.css" />

	<!-- FONT AWESOME -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous" />

	<!-- FAVICON -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
	<link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png" />
	<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png" />
	<link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png" />
	<link rel="manifest" href="assets/favicon/site.webmanifest" />

	<title>READY! - Gestor de Proyectos</title>
</head>

<body>
	<!-- HEADER -->
	<?php
	require 'assets/partials/header.html';


	function console_log($output, $with_script_tags = true)
	{
		$js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) .
			');';
		if ($with_script_tags) {
			$js_code = '<script>' . $js_code . '</script>';
		}
		echo $js_code;
	}

	$server = "localhost";
	$username = "root";
	$password = ""; //Ingrese su contraseña de Mysql
	$database = "ready_bd";
	
	// Create connection
	$conn = mysqli_connect($server, $username, $password, $database);
	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	console_log("Connected successfully");

	$nom = $_POST['name'];
	$ape = $_POST['lastname'];
	$ciudad = $_POST['city'];
	$pais = $_POST['country'];
	$cp = $_POST['cp'];
	$tel = $_POST['tel'];
	$fecha = $_POST['date'];
	$email = $_POST['email'];
	$pw = $_POST['password'];

	$sql = "INSERT INTO Usuario (Nombre,Apellido,TipoDoc_IdTipoDoc,DNI,Email,Contraseña,Pais_IdPais,Ciudad_IdCiudad,FechaBaja) VALUES ('$nom','$ape','1','36125641','$email','$pw','1','1',1);";
	if (mysqli_query($conn, $sql)) {
		console_log("Nuevo registro creado con exito");
	} else {
		console_log("Error: " . $sql . "<br>" . mysqli_error($conn));
	}

	mysqli_close($conn);

	?>
	<main id="content">
		<div class="container-fluid d-flex flex-column align-items-center">
			<h2 class="titulo exito">Registro finalizado con éxito</h2>
			<section id="sectionregistro">
				<div class="container">
					<div class="d-flex justify-content-center row ">
						<div class="col-lg-12 p-5">
							<div class="conteiner">
								<div class="row g3 form-inline">
									<div class="col-sm-6 mb-3 form-inline">
										<!--El echo crea un string en el HTML y asi los muestra-->
										<label class="mr-3">Nombre</label>
										<input type="text" disabled value="<?= $nom ?>" class="form-control rounded col-auto w-100 pr-3">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Apellido</label>
										<input type="text" disabled value="<?= $ape ?>" class="form-control rounded col-auto w-100 pr-3">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Provincia</label>
										<input type="text" disabled value="<?php echo $_POST['city'] ?>" class="form-control rounded col-auto w-100 pr-3">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Pais</label>
										<input type="text" disabled value="<?php echo $_POST['country'] ?>" class="form-control rounded w-100 pr-3" id="validacionPais">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Codigo Postal</label>
										<input type="text" disabled value="<?php echo $_POST['cp'] ?>" class="form-control rounded col-auto w-100 pr-3">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Numero de teléfono</label>
										<input type="text" disabled value="<?php echo $_POST['tel'] ?>" title="HOla" class="form-control rounded col-auto w-100 pr-3">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Fecha de nacimiento</label>
										<input type="text" disabled value="<?php echo $_POST['date'] ?>" data-minage="13" class="form-control rounded col-auto w-100 pr-3">
									</div>
									<div class="col-sm-6 mb-3 form-inline">
										<label class="mr-3">Correo</label>
										<input type="text" disabled value="<?php echo $_POST['email'] ?>" class="form-control rounded col-auto w-100 pr-3">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
	<?php
	require 'assets/partials/footer.html'
	?>

	<!-- SCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

	<script>
		setTimeout(() => {
			window.location.assign('login.php')
			document.getElementById('conteo').textContent = 'conteo iniciado'
		}, 5000) //El contador para redireccion al index
	</script>
	<!-- SCRIPTS -->
</body>

</html>