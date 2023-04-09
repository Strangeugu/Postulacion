<?php
// Conexión a la base de datos
$conn = new mysqli("localhost", "root", "", "votacion");

// Datos del formulario
$nombre = $_POST["nombre"];
$alias = $_POST["alias"];
$rut = $_POST["rut"];
$email = $_POST["email"];
$region = $_POST["region"];
$comuna = $_POST["comuna"];
$candidato = $_POST["candidato"];
$como_se_entero = implode(", ", $_POST["como_se_entero"]);

// Verifica si el RUT ya ha sido utilizado para votar anteriormente
$stmt = $conn->prepare("SELECT * FROM votos WHERE rut = ?");
$stmt->bind_param("s", $rut);
$stmt->execute();
$result = $stmt->get_result();
if ($result->num_rows > 0) {
  echo "Este RUT ya ha sido utilizado para votar anteriormente.";
  exit();
}

// Inserta los datos del voto en la base de datos
$stmt = $conn->prepare("INSERT INTO votos (nombreyapellido, alias, RUT, email, region, comuna, candidato, entere) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssss", $nombre, $alias, $rut, $email, $region, $comuna, $candidato, $como_se_entero);
$stmt->execute();

echo "¡Gracias por votar!";

// Cierra
$stmt->close();
$conn->close();
?>