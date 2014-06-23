<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css" />
        <title> Confirme </title>
    </head>
    <body>
        <div class="row">
            <form method="POST" action="salvaPedido">

                <div id="resultado">

                </div>

                <div class="col-md-2" >
                </div>

                <div class="col-md-8" >
                    <h1> Confirme seu pedido </h1>

                    <div>
                        <label> ID </label>
                        ${param.id_veiculo}
                        <input type="hidden" name="pedido.id_veiculo" value="${param.id_veiculo}" />
                    </div>
                    <br>
                    <div>
                        <label> MODELO </label>
                        ${param.modelo}
                    </div>
                    <br>
                    <div>
                        <label> MOTOR </label>
                        ${param.motor}
                    </div>
                    <br>
                    <div>
                        <label> COR </label>
                        ${param.cor}
                    </div>
                    <br>
                    <div>
                        <label> KIT </label>
                        ${param.id_kit}
                        <input type="hidden" name="pedido.id_kit" value=" ${param.id_kit}" />
                    </div>
                    <br>
                    <div>
                        <label> DATA </label>
                        <input type="date" name="pedido.data_pedido"/>
                    </div>
                    <br>
                    <div>
                        <label> PREÇO TOTAL R$: </label>
                        ${param.preco}
                        <input type="hidden" name="pedido.valor_pedido" value="${param.preco}" />
                    </div>
                    <br>
                    <div>
                        <input type="hidden" name="pedido.status_pedido" value="NOVO" />
                    </div>
                    <br>
                    <div>
                        <input type="submit" value="Finalizar" class="btn btn-primary btn" id="btn-finalizar"/>
                    </div>
                    <br>
                    <div>
                        <button type="button" class="btn btn-success" id="btn-imprimi"> Imprimir </button>
                    </div>

                </div>

                <div class="col-md-2" >
                </div>

            </form>
        </div>
        <div class="row">
            <div class="col-md-2" >
            </div>
            <div class="col-md-8" >
                <!-- Button trigger modal -->
                <button id="btn-modal" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                    Continuar
                </button>

                <br>
                <br>
                <div>
                    <a href="http://localhost:8086/Carsoft/quiosque/index.html">
                        <button id="btn-cancelar" class="btn btn-default" >
                            Cancelar
                        </button>
                    </a>
                </div>
            </div>

            <br>


            <!-- Button trigger modal -->


            <div class="col-md-2" >
            </div>
        </div>
        <!--- -->

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel"><b> Cadastre-se </b></h4>
                    </div>

                    <!-- Formulario -->

                    <p>&nbsp;</p>

                    <div class="form-horizontal">

                        <div class="form-group">
                            <label for="pessoa-nome" class="col-sm-3 control-label"> Nome </label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="pessoa-nome" name="pessoa.nome" required=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="pessoa-cpf" class="col-sm-3 control-label"> CPF </label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="pessoa-cpf" name="pessoa.cpf" required=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="pessoa-nascimento" class="col-sm-3 control-label"> Data de Nascimento </label>
                            <div  class="col-sm-4">
                                <input type="date" class="form-control" id="pessoa-nascimento" name="pessoa.nascimento" required="" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"> Sexo </label>
                            <div class="col-sm-3">
                                <select name="pessoa.sexo" id="pessoa-sexo" class="form-control" >
                                    <option> Masculino </option>
                                    <option> Feminino </option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"> Endereço </label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="endereco-lagradouro" name="endereco.lagradouro" required=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"> CEP </label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="endereco-cep" name="endereco.cep"  placeholder="00000-000" required=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"> Região </label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="endereco-cidade" name="endereco.cidade" placeholder="São Paulo" required=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">  Telefone </label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="contato-telefone" name="contato.telefone"  placeholder=" 000 0000-0000" required=""/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"> E-mail </label>
                            <div class="col-sm-4">
                                <input type="email" class="form-control" id="contato-email" name="contato.email" placeholder="xpto@xpto.com" required=""/>
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

        <!-- FIM MODAL -->

        <!-- -->

        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/myScript.js"></script>
    </body>
</html>
