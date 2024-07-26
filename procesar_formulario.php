<?php

include 'db.php';

header('Content-Type: text/html; charset=UTF-8');

$errores = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];
    $codigo_postal = $_POST['codigo_postal'];
    
$nombre_regex = "/^[A-Za-zÁÉÍÓÚáéíóúÑñ]+( [A-Za-zÁÉÍÓÚáéíóúÑñ]+)*$/";
$email_regex = "/^[\w.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,24}$/";
$telefono_regex = "/^(?:\+?591\s?)?\d{8}$/";
$codigo_postal_regex = "/^(0000|00591)$/";

    if (preg_match($nombre_regex, $nombre)) {
    } else {
        $errores[] = "Nombre completo inválido";
    }
    if (preg_match($email_regex, $email)) {
    } else {
        $errores[] = "Correo electrónico inválido";
    }
    if (preg_match($telefono_regex, $telefono)) {
    } else {
        $errores[] = "Número de teléfono inválido";
    }
    if (preg_match($codigo_postal_regex, $codigo_postal)) {
    } else {
        $errores[] = "Código postal inválido";
    }
    // mostrar errores si los hay
    if (!empty($errores)) {
        foreach ($errores as $error) {
            echo "<div style='color: red;'>$error</div>";
        }
    } else {
        // insertar datos en la base de datos si no hay errores
        $sql = "INSERT INTO usuarios (nombre, email, telefono, codigo_postal) VALUES ('$nombre', '$email', '$telefono', '$codigo_postal')";

        if ($connect->query($sql) === TRUE) {
            echo "Formulario llenado correctamente";
        } else {
            echo "Error al guardar los datos: " . $connect->error;
        }
    }
}

$connect->close();
?>

