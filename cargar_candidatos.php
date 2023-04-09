<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "votacion");

// Obtiene el ID de la comuna seleccionada
$id_comuna = $_GET["id_comuna"];

// Consulta para obtener los candidatos de la comuna
$result = $conn->query("SELECT * FROM candidatos WHERE id_comuna = $id_comuna");

// Construye el JSON con los candidatos
$data = array();
while ($row = $result->fetch_assoc()) {
  $data[] = array("id" => $row["ID"], "nombre" => $row["nombre"]);
}
echo json_encode($data);

// Cierra la conexión a la base de datos
$conn->close();
?>
