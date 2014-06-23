$(document).ready(function() {
    $("#btn-finalizar").hide();

    $("#save-btn").click(function(e) {
        $.post("adicionaKit",
                {
                    'kit.acessorio_1': $("#item1").val(),
                    'kit.acessorio_2': $("#item2").val(),
                    'kit.acessorio_3': $("#item3").val(),
                    'kit.acessorio_4': $("#item4").val(),
                    'kit.acessorio_5': $("#item5").val()
                },
        function(result) {
            $("#resultadokit").append(result);
            $("#myModal").modal('hide');
            $("#btn-modal").hide();
            $("#btn-finalizar").show();
        });
    });
});