<?php
$data = array(
    "nombre" => "Juan",
    "edad" => 25,
    "ciudad" => "Madrid"
);

header('Content-Type: application/json');
echo json_encode($data);
?>