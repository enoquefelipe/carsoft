<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="../css/veiculo.css">
        <title> Monte o Seu </title>
        <style>

            img {
                width: 400px;
            }

            #centro{
                text-align: center;
                margin-top: 30px;
            }

            .painel-informacao{
                text-align: left;
            }

            #botoes {
                margin-bottom:  40px;
            }
            #logo{
                width: 50px;
            }
        </style>

    </head>
    <body> 

        <div id="centro" >
            <form method="POST" action="confirma-pedido.jsp "class="formveiculo jumbotron" > 
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img id="logo" src="../img/logo/${param.montadora}.png" >
                        </div>
                    </div>

                </div>
                <div class="row" >

                    <div class="col-md-4 painel-informacao" >
                        <input type="hidden" name="id_veiculo" value="${param.id_veiculo}" />
                        <div>
                            <div>
                                <p>
                                    <label> MODELO: </label>  
                                    ${param.modelo}
                                    <input type="hidden" name="modelo" value="${param.modelo}">
                                </p>
                            </div>

                            <div>
                                <p>
                                    <label> MOTORIZAÇÃO: </label> 
                                    ${param.motor}
                                    <input type="hidden" name="motor" value="${param.motor}">
                                </p>
                            </div>
                            <div>
                                <p>
                                    <label> PREÇO R$: </label> 
                                    <span id="preco-total">${param.preco}</span>
                                    <input id="input-preco-total" type="hidden" name="preco" value="${param.preco}" />
                                </p>
                            </div>

                            <div>
                                <p>
                                    <label> COR: </label> 
                                    ${param.cor}
                                    <input type="hidden" name="cor" value="  ${param.cor}" />
                                </p>
                            </div>

                        </div>
                    </div> 

                    <div class="col-md-4">

                    </div>

                    <div class="col-md-4">
                        <img src="../${param.imagem}" class="img-responsive img-rounded">
                        <input type="hidden" name="imagem" value="${param.imagem}" />
                    </div>

                    <div class="col-md-12">
                        <h2> Escolha </h2>
                    </div>
                </div>

                <hr>

                <div class="row" >

                    <div class="col-md-3 painel-informacao" >

                        <h3 style="text-align: center"> Monte o Seu </h3>
                        <!-- Button trigger modal -->
                        <div style="text-align: center">
                            <button id="acessorio" type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal" >                        
                                <span class="glyphicon glyphicon-cog "> </span>
                                Clique Aqui !
                            </button>
                        </div>
                        <div id="resultadokit"> </div>
                    </div>

                    <div class="col-md-1 painel-informacao" > <h3> &nbsp; </h3> </div>

                    <div class="col-md-4" >
                        <h3> &nbsp; </h3>
                        <h3> <label class="glyphicon glyphicon-chevron-left" for="acessorio"></label> ou <label class="glyphicon glyphicon-chevron-right" for="kit"></label>  </h3>
                    </div>

                    <div class="col-md-4">
                        <h3> KIT </h3>
                        <select class="form-control" id="kit" name="id_kit" >
                            <option> </option>
                            <option> VIDRO ELÉTRICO + TRAVA ELÉTRICA </option>
                            <option> VIDRO ELÉTRICO + TRAVA ELÉTRICA + AR CONDICIONADO </option>
                            <option> VIDRO ELÉTRICO + TRAVA ELÉTRICA + AR CONDICIONADO + DIREÇÃO HIDRAULICA </option>
                            <option> VIDRO ELÉTRICO + TRAVA ELÉTRICA + AR CONDICIONADO + DIREÇÃO HIDRAULICA + RODA DE LIGA LEVE </option>
                        </select>
                    </div>

                </div>

                <hr>

                <div id="botoes">
                    <div class="col-md-12" >
                        <button type="button" class="btn btn-primary btn-lg" onclick="history.go(-1);" >
                            <span class="glyphicon glyphicon-hand-left"> </span>
                            Voltar
                        </button>
                        /
                        <button type="submit" class="btn btn-success btn-lg">
                            Ir 
                            <span class="glyphicon glyphicon-ok"> </span>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Modal Inicio -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel"><b> Escolha acessórios para seu KIT </b></h4>
                        </div>

                        <!-- Formulario de Cadastro -->

                        <p>&nbsp;</p>

                        <div class="row">

                            <div class="col-sm-1"> </div>

                            <div class="col-sm-10">
                                <div class="form-horizontal">

                                    <div class="checkbox-inline">
                                        <label>
                                            <input class="acessorio" type="checkbox" value="" id="item1" onclick="value = 'AR-CONDICIONADO';" data-price="1200"/>
                                            AR-CONDICIONADO
                                        </label>
                                    </div>

                                    <div class="checkbox-inline">
                                        <label>
                                            <input class="acessorio" type="checkbox" value="" id="item2"  onclick="value = 'DIREÇÃO HIDRÁULICA';"  data-price="1400"/>
                                            DIREÇÃO HIDRÁULICA
                                        </label> 
                                    </div>

                                    <div class="checkbox-inline">
                                        <label>
                                            <input class="acessorio" type="checkbox" value="" id="item3" onclick="value = 'TRAVA ELÉTRICA';" data-price="1000"/>
                                            TRAVA ELÉTRICA 
                                        </label> 
                                    </div>

                                    <div class="checkbox-inline">
                                        <label>
                                            <input class="acessorio" type="checkbox"  value="" id="item4" onclick="value = 'VIDRO ELÉTRICO';" data-price="1000" />
                                            VIDRO ELÉTRICO
                                        </label>
                                    </div>

                                    <div class="checkbox-inline">
                                        <label>
                                            <input class="acessorio" type="checkbox" value=""  id="item5" onclick="value = 'ALARME';" data-price="500"/>
                                            ALARME 
                                        </label>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- Fim Formulario -->

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"> Cancelar </button>
                            <button type="button" class="btn btn-primary" id="save-btn" value="Salvar"> Salvar </button>                      
                        </div>

                    </div>
                </div>
            </div>

            <div id="resultadokit"> </div>
            <!-- Fim Modal -->

        </div>

        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/kit.js"></script>
        <script src="../js/preco.js"></script>
    </body>
</html>
