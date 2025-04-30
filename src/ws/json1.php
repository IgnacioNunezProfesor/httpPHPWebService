<?php
$menu = array(
    "index" => "html/index.html",
    "Productos" => "html/productos.html",    
    "contacto" => "html/contacto.html"
);

$datos = [
    ["id" => 1, "nombre" => "Juan", "edad" => 25, "email" => "juan@example.com", "pais" => "España", "profesion" => "Ingeniero"],
    ["id" => 2, "nombre" => "María", "edad" => 30, "email" => "maria@example.com", "pais" => "México", "profesion" => "Diseñadora"],
    ["id" => 3, "nombre" => "Carlos", "edad" => 28, "email" => "carlos@example.com", "pais" => "Argentina", "profesion" => "Médico"],
    ["id" => 4, "nombre" => "Ana", "edad" => 26, "email" => "ana@example.com", "pais" => "Chile", "profesion" => "Abogada"],
    ["id" => 5, "nombre" => "Luis", "edad" => 32, "email" => "luis@example.com", "pais" => "Colombia", "profesion" => "Profesor"],
];
$data = [
    "menu" => $menu,
    "datos" =>$datos
];


header('Content-Type: application/json');
echo json_encode($data);
?>