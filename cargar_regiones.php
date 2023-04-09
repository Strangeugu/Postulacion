<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "votacion");

// Consulta para obtener las regiones
$result = $conn->query("SELECT * FROM regiones");

// Construye el JSON con las regiones
$data = array();
while ($row = $result->fetch_assoc()) {
  $data[] = array("id_region" => $row["id_region"], "name" => $row["name"]);
}

// Cierra la conexión a la base de datos
$conn->close();

// Envía la respuesta como un objeto JSON
header('Content-Type: application/json');
echo json_encode($data);
?>