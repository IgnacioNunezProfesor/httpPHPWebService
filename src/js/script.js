document.addEventListener("DOMContentLoaded", function() {
    obtenerDatos();
    console.log("Página cargada completamente.");
});

function obtenerDatos() {
    fetch(
        "http://httpserverjson.v1.localhost/ws/json1.php"
    ) // URL de ejemplo con JSON
    .then(response => response.json())
    .then(data => mostrarDatos(data))
    .catch(error => console.error("Error al obtener datos:", error));
}

function mostrarDatos(datos) {
    const contenedor = document.getElementById("data-container");
    contenedor.innerHTML = ""; // Limpiar contenido previo

    Object.keys(datos["menu"]).forEach((clave) => {
        const div = document.createElement("div");
        div.innerHTML += `<strong>${clave} - ${datos["menu"][clave]}</strong>`;
        contenedor.appendChild(div);
    });
}
