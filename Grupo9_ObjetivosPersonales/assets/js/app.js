const priori = [
  new Prioritarios("Presentar la documentacion a la empresa"),
  new Prioritarios("Subir el archivo a Jira"),
];

const nopriori = [
  new NoPrioritarios("Modificar el código"),
  new NoPrioritarios("Realizar el primer sprint"),
];

let cargarApp = () => {
  cargarPrioritarios();
  cargarNoPrioritarios();
};

const cargarPrioritarios = () => {
  let prioritarioHTML = "";
  for (let itera of priori) {
    prioritarioHTML += crearPrioritariosHTML(itera);
  }
  document.getElementById("contadorPrioritario").textContent = priori.length;
  document.getElementById("lista-tareas-prioritarias").innerHTML =
    prioritarioHTML;
};

const crearPrioritariosHTML = (itera) => {
  let prioritariosHTML = `
    <div class="elemento limpiarEstilos">
        <div class="elemento_descripcion">${itera.descripcion}</div>
        <div class="derecha limpiarEstilos">
            <div class="elemento_eliminar">
                <button class='elemento_eliminar--btn'>
                    <ion-icon name="close-circle-outline" onclick='eliminarPrioritarios(${itera.id})'></ion-icon>
                </button>
            </div>
        </div>
    </div>
    `;
  return prioritariosHTML;
};

const eliminarPrioritarios = (id) => {
  let indiceEliminar = priori.findIndex((muestra) => muestra.id === id);
  priori.splice(indiceEliminar, 1);
  cargarPrioritarios();
};

const cargarNoPrioritarios = () => {
  let noPrioritariosHTML = "";
  for (let itera of nopriori) {
    noPrioritariosHTML += crearNoPrioritariosHTML(itera);
  }
  document.getElementById("contadorNoPrioritario").textContent =
    nopriori.length;
  document.getElementById("no-Prioritarios").innerHTML = noPrioritariosHTML;
};

const crearNoPrioritariosHTML = (itera) => {
  let noPrioritariosHTML = `
    <div class="elemento limpiarEstilos">
    <div class="elemento_descripcion">${itera.descripcion}</div>
    <div class="derecha limpiarEstilos">
        <div class="elemento_eliminar">
            <button class='elemento_eliminar--btn' >
                <ion-icon name="close-circle-outline" onclick='eliminarNoPrioritarios(${itera.id})'></ion-icon>
            </button>
        </div>
    </div>
</div>
    `;
  return noPrioritariosHTML;
};

let eliminarNoPrioritarios = (id) => {
  let indiceEliminar = nopriori.findIndex((muestra) => muestra.id === id);
  nopriori.splice(indiceEliminar, 1);
  cargarNoPrioritarios();
};

let agregarDato = () => {
  let forma = document.forms["forma"];
  let tipo = forma["tipo"];
  let descripcion = forma["descripcion"];
  if (descripcion.value !== "") {
    if (tipo.value === "prioritaria") {
      priori.push(new Prioritarios(descripcion.value));
      cargarPrioritarios();
    } else if (tipo.value === "no-prioritaria") {
      nopriori.push(new NoPrioritarios(descripcion.value));
      cargarNoPrioritarios();
    }
  }
};
