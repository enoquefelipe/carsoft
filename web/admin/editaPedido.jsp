<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Confirmação de Pedido </title>
        <style> 
            .container-pedido{
                width: 80%;
                margin: auto;
            }

            .center{
                text-align: center;
            }

            form{
                display: inline;

            }
        </style>
    </head>
    <body>
        <c:import url="_header.html"/>


        <div class="container-pedido">
            <div class="panel panel-default">
                <div class="panel-heading"> <b> Informações do Pedido </b> </div>
                <div class="panel-body">
                    <div>

                        <div>
                            <label> NUMERO DO PEDIDO: </label>
                            <s:property value="pedido.id_pedido" />
                        </div>

                        <label><b> DATA: </b></label>
                        <s:property value="pedido.data_pedido" />
                    </div>

                    <div>
                        <label><b> STATUS: </b></label>
                        <s:property value="pedido.status_pedido" />
                    </div>

                    <div>
                        <label><b> VALOR R$: </b></label>
                        <s:property value="pedido.valor_pedido" />
                    </div>

                </div>           
            </div> 


            <div class="panel panel-default">
                <div class="panel-heading"> <b> Informações do Veículo </b> </div>
                <div class="panel-body">
                    <div>

                        <div>
                            <label><b> MODELO: </b></label>
                            <s:property value="veiculo.modelo" />
                        </div>

                        <div>
                            <label><b> MOTORIZAÇÃO: </b></label>
                            <s:property value="veiculo.motor" />
                        </div>

                        <div>
                            <label><b> ANO: </b></label>
                            <s:property value="veiculo.ano" />
                        </div>

                    </div>

                    <div>
                        <label> KIT: </label>

                        <s:property value="kit.acessorio_1" />
                        /
                        <s:property value="kit.acessorio_2" />
                        /
                        <s:property value="kit.acessorio_3" />
                        /
                        <s:property value="kit.acessorio_4" />
                        /
                        <s:property value="kit.acessorio_5" />
                    </div>

                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading"> <b> Informações do Interessado </b> </div>
                <div class="panel-body">
                    <div>
                        <label> NOME: </label>
                        <s:property value="pessoa.nome" />
                    </div>

                    <div>
                        <label> DATA DE NASCIMENTO: </label>
                        <s:property value="pessoa.nascimento" />
                    </div>

                    <div>
                        <label> CPF: </label>
                        <s:property value="pessoa.cpf" />
                    </div>

                    <div>
                        <label> SEXO: </label>
                        <s:property value="pessoa.sexo" />
                    </div>
                </div>
            </div>

            <div class="center">
                <form method="POST" action="removePedido">
                    <input type="hidden" name="id_pedido" value="<s:property value="pedido.id_pedido" />" />
                    <button type="submit"  class="btn btn-default" > EXCLUIR </button>
                </form>

                <form method="POST" action="efetivaPedido">
                    <input type="hidden" name="id_pedido" value="<s:property value="pedido.id_pedido" />" />
                    <button type="submit" class="btn btn-primary"> CONFIRMAR </button>
                </form>
            </div>

        </div>


    </body>
</html>
