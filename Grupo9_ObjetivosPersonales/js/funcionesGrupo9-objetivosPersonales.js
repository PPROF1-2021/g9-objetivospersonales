//Validacion de la fecha
function init() {
	"use strict";
	var forms = document.querySelectorAll(".needs-validation"); 
	Array.prototype.slice.call(forms).forEach(function (form) { //por cada elemento del array, llama a una funcion (call) slice (corta el array, regresa una copia de ese pedazo de codigo)
		form.addEventListener( //subscribe el formulario a un evento
			"submit",
			function (event) {
				var inputs = document.querySelectorAll(`#${form.id} input, #${form.id} textarea, #${form.id} select`)
				var formError = false;
				for (const input of inputs) {
					if(input.classList.contains('is-invalid')){
						formError = true;
						break;
					}
				}
				
				if (!form.checkValidity() || formError) {
					alert('Error en los datos del formulario, asegurese de cargar los datos como corresponden');
				}
				else {
					alert('Operacion realizada con exito!!, se redireccionará el sitio principal en 15 segundos')
					setTimeout(() => { //Para que espere despues del alert del usuario, unos segundos y empieza el contador para devolver los datos
						var params = {}; //Busca todos los inputs con el id del formulario y recupera todos los input, 
						document.querySelectorAll(`#${form.id} input, #${form.id} textarea`).forEach(input => {
							params[input.name] = input.value; //Lo vuelve un objeto con params, lo guarda y lo reutilizamos para mostrar los datos
						});
						post('./info-procesada.php', params);
					}, 1000); //Al darle éste tiempo le permitis al contador inicializarse.
				}
				form.classList.add("was-validated");//clase de bootstrap para mostrar si los campos so validados
				event.preventDefault(); //previene que se realice la accion por defecto, evita que se envie el formulario para corroborar los datos
				event.stopPropagation(); //Detiene cualquier otro evento para evitar que el usuario envie el formulario 
			},
			false //Informa que un evento no es pasivo.
		);
	});
};

init();

function post(path, params, method = 'post') {

	const form = document.createElement('form'); //crea un elemento (form) y lo coloca en HTML
	form.method = method;
	form.action = path;

	for (const key in params) {
		if (params.hasOwnProperty(key)) {
			const hiddenField = document.createElement('input'); 
			hiddenField.type = 'hidden'; //Esconde los campos para no mostrar otro formulario extra con los datos cargados
			hiddenField.name = key;
			hiddenField.value = params[key]; //Lo asigna a una llave, donde la clave es el nombre del campo y el valor es lo que contiene campo por HTTP

			form.appendChild(hiddenField); //Meter el campo creado dentro del formulario
		}
	}
	document.body.appendChild(form); //Meter el campo creado dentro del formulario dentro del body
	form.submit();
}


function calcularEdad(fecha) {
	var fechaNacimiento = Date.parse(fecha);
	var hoy = new Date();

	var millisAnio = 1000 * 60 * 60 * 24 * 365;
	var edad = (hoy - fechaNacimiento) / millisAnio;
	return Math.floor(edad);
}

document.querySelectorAll('input[type="text"]').forEach(item => {
	item.addEventListener('keyup', (evt) => {
		var error = false; 
		if (evt.currentTarget.dataset.minlenght) { //Verificar si contiene el dato con la cantidad minima de caracteres minlenght
			if (evt.currentTarget.value.length < evt.currentTarget.dataset.minlenght) {
				document.querySelector(`#${evt.currentTarget.id} ~ .invalid-feedback`).textContent = `Debe contener más de ${evt.currentTarget.dataset.minlenght - 1} caracteres`;
				evt.currentTarget.classList.add('is-invalid');
				evt.currentTarget.classList.remove('is-valid');
				error = true;
			}
		}
		//lo mismo pero con otro dato, nonumber, no de numeros
		if (evt.currentTarget.dataset.nonumber) {
			if (/[0-9]/.test(evt.currentTarget.value)) {
				document.querySelector(`#${evt.currentTarget.id} ~ .invalid-feedback`).textContent = `No debe contener numeros`;
				evt.currentTarget.classList.add('is-invalid');
				evt.currentTarget.classList.remove('is-valid');
				error = true;
			}
		}
		//marca como valido en caso de que no tenga error
		if (!error) {
			evt.currentTarget.classList.add('is-valid');
			evt.currentTarget.classList.remove('is-invalid');
		}
	}, false)
});
//Lo mismo con los tipo telefono, el formato sea correcto
document.querySelectorAll('input[type="tel"]').forEach(item => {
	item.addEventListener('keyup', (evt) => {
		if (/^\(\d{3}\)\d{5,}|^\d{8,}/.test(evt.currentTarget.value)) {
			evt.currentTarget.classList.add('is-valid');
			evt.currentTarget.classList.remove('is-invalid');
		}
		else {
			document.querySelector(`#${evt.currentTarget.id} ~ .invalid-feedback`).textContent = 'Formato incorrecto, debe ser (999)9999999 o 9999999999';
			evt.currentTarget.classList.add('is-invalid');
			evt.currentTarget.classList.remove('is-valid');
		}
	}, false)
});

//Lo mismo con los tipo email, valida el formato email
document.querySelectorAll('input[type="email"]').forEach(item => {
	item.addEventListener('keyup', (evt) => {
		if (/\w+@\w+/.test(evt.currentTarget.value)) {
			evt.currentTarget.classList.add('is-valid');
			evt.currentTarget.classList.remove('is-invalid');
		}
		else {
			document.querySelector(`#${evt.currentTarget.id} ~ .invalid-feedback`).textContent = 'Formato de correo incorrecto';
			evt.currentTarget.classList.add('is-invalid');
			evt.currentTarget.classList.remove('is-valid');
		}
	})
}, false);
//Lo mismo pero con password, sea igual al campo password
document.getElementById('validacionConfPassword').addEventListener('keyup', (evt) => {
	let pass = document.getElementById('validacionPassword').value;
	if (evt.currentTarget.value === pass) {
		evt.currentTarget.classList.add('is-valid');
		evt.currentTarget.classList.remove('is-invalid');
	}
	else {
		document.querySelector(`#${evt.currentTarget.id} ~ .invalid-feedback`).textContent = 'Las contraseñas no coinciden';
		evt.currentTarget.classList.add('is-invalid');
		evt.currentTarget.classList.remove('is-valid');
	}
});
//lo mismo pero valida con fechas, pero con la edad minima
document.querySelectorAll('input[type="date"][data-minage]').forEach(item => {
	item.addEventListener('input', (evt) => {
		//Calcular edad realizado arriba, minage en el HTML de Registro.php
		if (calcularEdad(evt.currentTarget.value) < evt.currentTarget.dataset.minage) {
			document.querySelector(`#${evt.currentTarget.id} ~ .invalid-feedback`).textContent = `Debes tener mas de ${evt.currentTarget.dataset.minage} años`;
			evt.currentTarget.classList.add('is-invalid');
			evt.currentTarget.classList.remove('is-valid');
		}
		else {
			evt.currentTarget.classList.add('is-valid');
			evt.currentTarget.classList.remove('is-invalid');
		}
	})
});