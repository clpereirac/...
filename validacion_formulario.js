function validarFormulario() {
    var nombre = document.getElementById("nombre").value.trim();
    var email = document.getElementById("email").value;
    var telefono = document.getElementById("telefono").value;
    var codigo_postal = document.getElementById("codigo_postal").value;

//var nombre_regex = new RegExp("^[a-zA-Z]+\\s[a-zA-Z]+\\s?([a-zA-Z]+)?$");

var nombre_regex = /^[A-Za-zÁÉÍÓÚáéíóúÑñ]+( [A-Za-zÁÉÍÓÚáéíóúÑñ]+)*$/;
var email_regex = /^[\w.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,24}$/
var telefono_regex = /^(?:\+?591\s?)?\d{8}$/;
var codigo_postal_regex = /^(0000|00591)$/;

    if (!nombre_regex.test(nombre.trim())) {
        document.getElementById("error-nombre").textContent = "Por favor, introduce un nombre completo válido";
        document.getElementById("error-nombre").style.display = "block";
        return false;
    } else {
        document.getElementById("error-nombre").style.display = "none";
    }

    if (!email_regex.test(email)) {
        document.getElementById("error-email").textContent = "Por favor, introduce una dirección de correo electrónico válida";
        document.getElementById("error-email").style.display = "block";
        return false;
    } else {
        document.getElementById("error-email").style.display = "none";
    }

    if (!telefono_regex.test(telefono)) {
        document.getElementById("error-telefono").textContent = "Por favor, introduce un número de teléfono válido";
        document.getElementById("error-telefono").style.display = "block";
        return false;
    } else {
        document.getElementById("error-telefono").style.display = "none";
    }

    if (!codigo_postal_regex.test(codigo_postal)) {
        document.getElementById("error-codigo_postal").textContent = "Por favor, introduce un código postal válido";
        document.getElementById("error-codigo_postal").style.display = "block";
        return false;
    } else {
        document.getElementById("error-codigo_postal").style.display = "none";
    }

    return true;
}
