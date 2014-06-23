var valorInicial;
var valorTotal;

$(document).ready(function(){
    valorInicial = valorTotal = parseInt($("#preco-total").text().replace(".", ""));
    $('.acessorio').change(function() {
        var valor = parseInt($(this).attr("data-price"));
        if ($(this).is(":checked")) {
            valorTotal = valorTotal + valor;
        }
        else {
            valorTotal = valorTotal - valor;
        }
        $("#preco-total").html(valorTotal);
        $("#input-preco-total").val(valorTotal);
    });
});

