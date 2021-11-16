<?php 
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

if(!empty($_POST)){
	$email = mysqli_real_escape_string($conn, $_POST['email']);
	$pass = mysqli_real_escape_string($conn, $_POST['pass']);

	$sql = "SELECT IdUsuario FROM usuario
				WHERE Email = '$email' AND Contraseña = '$pass'";

	$res = $conn->query($sql);
	$filas = $res->num_rows;
	if ($filas > 0) {
		$fila = $res->fetch_assoc();
		$_SESSION['id_usuario'] = $fila['IdUsuario'];
		header("Location: gestor.php");
	}
	else{
		echo "<script>
				alert('Usuario o contraseña incorrectos');
			  </script>";
	}
}

mysqli_close($conn);

?>

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

	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/main.css">

	<!-- FONT AWESOME -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

	<!-- FAVICON -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
	<link rel="manifest" href="assets/favicon/site.webmanifest">

	<title>READY! - Gestor de Proyectos</title>

	<!---START--->
</head>

<body id="bodyLogin">
	<?php
	require 'assets/partials/header.html';
	?>


	<main class="bg-white" id="mainLogin">
		<section class="bg-t" id="sectionLogin">
			<nav aria-label="breadcrumb" id="navLogin">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
					<li class="breadcrumb-item active" aria-current="page">Ingresar</li>
				</ol>
			</nav>
			<div class="container">
				<div class="d-flex justify-content-left row">
					<div class="col-lg-6 p-5">
						<div class="row">
							<div class="col-lg-12">
								<h2 class="mb-3 text-dark">Ingresar</h2>
								<!-- Action provisorio con la unica razon de dar navegabilidad hacia el gestor -->
								<form action="<?php $_SERVER["PHP_SELF"]; ?>" method="POST">
									<div class="conteiner">
										<div class="form-inline">
											<div class="col-lg-12 mb-3 form-inline">
												<label for="validationDefaultUsername" class="mr-3">Correo</label>
												<input name="email" type="email" class="form-control mr-3 rounded col-auto w-100 pr-3" id="validationDefaultUsername" placeholder="correo" aria-describedby="inputGroupPrepend2" required>
											</div>
											<div class="col-lg-12 mb-3 form-inline">
												<label for="validationDefault01" class="mr-3">Contraseña</label>
												<input name="pass" type="password" class="form-control mr-3 rounded col-auto w-100 pr-3" id="validationDefault01" placeholder="contraseña" required>
											</div>
										</div>
									</div>
									<div class="ml-3">
										<button type="submit" class="btn btn-primary btn-block btn-md justify-content-lg-start rounded" value="send">Ingresar</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-5">
						<h2 class="text-dark mt-5 mb-3">
							¡Disfruta de la mejor forma de organizar!
						</h2>
						<div id="demo" class="carousel slide" data-ride="carousel">
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="assets/img/Notas.jpg" alt="Los Angeles" width="auto" height="400">
								</div>
								<div class="carousel-item">
									<img src="assets/img/notas1.jpg" alt="Chicago" width="auto" height="400">
								</div>
							</div>
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- Footer -->
	<?php
	require 'assets/partials/footer.html'
	?>

	<!-- SCRIPTS -->

	<script src="assets/js/funcionesGrupo9-objetivosPersonales.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>

</html>