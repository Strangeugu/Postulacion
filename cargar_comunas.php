<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "votacion");

// ID de la región seleccionada
$id_region = $_GET["id_region"];

// Consulta para obtener las comunas de la región seleccionada
$stmt = $conn->prepare("SELECT * FROM comunas WHERE id_region = ?");
$stmt->bind_param("i", $id_region);
$stmt->execute();
$result = $stmt->get_result();

// Construye el JSON con las comunas
$data = array();
while ($row = $result->fetch_assoc()) {
  $data[] = array("id_city" => $row["id_city"], "name" => $row["name"]);
}
echo json_encode($data);

// Cierra la conexión a la base de datos
$stmt->close();
$conn->close();
?>