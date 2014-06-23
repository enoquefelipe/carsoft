// Modal de cadastro de usuário
$(document).ready(function() {
    $("#btn-finalizar").hide();
    $("#btn-imprimi").hide();
    $("#save-btn").click(function(e) {
        $.post("adicionaIntAjax",
                {
                    'pessoa.nome': $("#pessoa-nome").val(),
                    'pessoa.cpf': $("#pessoa-cpf").val(),
                    'pessoa.nascimento': $("#pessoa-nascimento").val(),
                    'pessoa.sexo': $("#pessoa-sexo").val(),
                    'pessoa.endereco': $("#endereco-lagradouro").val(),
                    'endereco.cep': $("#endereco-cep").val(),
                    'endereco.cidade': $("#endereco-cidade").val(),
                    'contato.telefone': $("#contato-telefone").val(),
                    'contato.email': $("#contato-email").val()
                },
        function(result) {
            $("#resultado").append(result);
            $("#myModal").modal('hide');
            $("#btn-modal").hide();
            $("#btn-cancelar").hide();
            $("#btn-finalizar").show();
            $("#btn-imprimi").show();

        });
    });
});


// Modal de exlusão
$(document).ready(function() {

    var deleteLink;

    $('.dialog').dialog({
        autoOpen: false,
        modal: true,
        width: 250,
        buttons: {
            "Ok": function() {
                $(this).dialog("close");
                window.location = deleteLink;
            },
            "Cancel": function() {
                $(this).dialog("close");
            }
        }
    });

    $(".delete-button").click(function(e) {
        e.preventDefault();
        deleteLink = $(this).attr('href');
        $(".dialog").dialog('open');
        return false;
    });
});

