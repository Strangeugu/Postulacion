$(document).ready(function () {
    // Carga las regiones en el combo box
    $.get("cargar_regiones.php", function (data) {
        var options = '<option>Seleccione</option>';
        data = Object.values(data); // convertir el objeto a un array
        $.each(data, function (index, value) {
            options += '<option value="' + value.id_region + '">' + value.name + '</option>';
        });
        $('#region').html(options);
    });

    // Carga los candidatos en el combo box
    $.get("cargar_candidatos.php", function (data) {
        $("#candidato").html(data);
    });

    // Carga las comunas correspondientes a la región seleccionada
    $("#region").change(function () {
        var id_region = $(this).val();
        $.get("cargar_comunas.php?id_region=" + id_region, function (data) {
            var options = '<option>Seleccione</option>';
            $.each(data, function (index, value) {
                options += '<option value="' + value.id_city + '">' + value.name + '</option>';
            });
            $("#comuna").html(options);
        }, "json");
    });

    $("#comuna").change(function () {
        var id_comuna = $(this).val();
        $.get("cargar_candidatos.php?id_comuna=" + id_comuna, function (data) {
            var options = '<option>Seleccione</option>';
            $.each(data, function (index, value) {
                options += '<option value="' + value.id + '">' + value.nombre + '</option>';
            });
            $("#candidato").html(options);
        }, "json");
    });



    // Validación del formulario
    $("#formulario").submit(function (event) {
        // Evita que el formulario se envíe automáticamente
        event.preventDefault();

        // Validaciones de los campos de entrada
        if ($("#nombre").val() === "") {
            alert("Por favor, ingrese su nombre y apellido.");
            return;
        }

        var alias = $("#alias").val();
        var alias_regex = /^[a-zA-Z0-9]{6,}$/;
        if (!alias_regex.test(alias)) {
            alert("Por favor, ingrese un alias válido (al menos 6 caracteres, letras y números).");
            return;
        }

        var rut = $("#rut").val();
        var rut_regex = /^[0-9]{8}-[0-9Kk]{1}$/;
        if (!rut_regex.test(rut)) {
            alert("Por favor, ingrese un RUT válido (con formato 12345678-9).");
            return;
        }

        var email = $("#email").val();
        var email_regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!email_regex.test(email)) {
            alert("Por favor, ingrese un correo electrónico válido.");
            return;
        }

        if ($("#region").val() === "" || $("#comuna").val() === "") {
            alert("Por favor, seleccione su región y comuna.");
            return;
        }

        if ($("#como_se_entero input:checked").length >= 2) {
            alert("Por favor, seleccione exactamente dos opciones de cómo se enteró de nosotros.");
            return;
        }



        // Envía la solicitud POST al servidor PHP utilizando AJAX
        $.post("procesar_voto.php", $("#formulario").serialize(), function (data) {
            alert(data);
        });
    });
});