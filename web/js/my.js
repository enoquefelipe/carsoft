// CORES DA CONFIGURAÇÃO DO VEÍCULO
$(document).ready(function() {
    $(".cores input[type=radio]").each(function(index) {
        $(this).on('click', function() {
            $('.cores-container img').css("display", "none");
            $('.cores-container img:eq(' + index + ')').css('display', 'block');
        });
    });
});

// ALERTA TELA PRINCIPAL QUIOSQUE
function alertar() {
    $("#mensagem").dialog();
}
    