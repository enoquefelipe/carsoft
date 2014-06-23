<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/favicon.png">
        <title> Cadastro de Veículo </title>
    </head>
    <body>
        <c:import url="_header.html"/>


        <div>
            <div class="cadastro-colaborador">
                <form class="form-horizontal" method="POST" action="./cadastravei" enctype="multipart/form-data" >

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="modelo"> MODELO </label>
                        <div class="col-sm-3"> 
                            <input class="form-control input-sm" id="modelo" type="text" name="veiculo.modelo" required=""/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> ANO </label>
                        <div class="col-sm-1">
                            <select name="veiculo.ano" class="form-control input-sm" >
                                <option>  </option>
                                <option> 2014 </option>
                                <option> 2013 </option>
                                <option> 2012 </option>
                                <option> 2011 </option>
                                <option> 2010 </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> COR </label>
                        <div class="col-sm-1">
                            <select name="veiculo.cor" class="form-control input-sm">
                                <option>  </option>
                                <option> BRANCO </option>
                                <option> PRETO </option>
                                <option> AZUL </option>
                                <option> PRATA </option>
                                <option> CINZA </option>
                                <option> AMARELO </option>
                                <option> VERMELHO </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> MOTORIZAÇÃO </label>
                        <div class="col-sm-1">
                            <select name="veiculo.motor" class="form-control input-sm">
                                <option>  </option>
                                <option> 1.0 8V </option>
                                <option> 1.0 16V </option>
                                <option> 1.3 8V </option>
                                <option> 1.3 16V </option>
                                <option> 1.4 8V </option>
                                <option> 1.4 16V </option>
                                <option> 1.5 8V </option>
                                <option> 1.5 16V </option>
                                <option> 1.6 8V </option>
                                <option> 1.6 16V </option>
                                <option> 1.8 8V </option>
                                <option> 1.8 16V </option>
                                <option> 2.0 8V </option>
                                <option> 2.0 16V </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> MONTADORA </label> 
                        <div class="col-sm-2">
                            <select name="veiculo.montadora"  class="form-control input-sm">
                                <option>  </option>
                                <option> VOLKSWAGEN </option>
                                <option> CHEVROLET </option>
                                <option> FORD </option>
                                <option> FIAT </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> CATEGORIA </label>
                        <div class="col-sm-2">
                            <select name="veiculo.categoria" class="form-control input-sm">
                                <option>  </option> 
                                <option> SEDAN </option>
                                <option> HATCH </option>
                                <option> PICK-UP </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> PREÇO </label>
                        <div class="col-sm-3"> 
                            <input type="text" name="veiculo.preco" required=""/>
                        </div> 
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> FOTO </label>
                        <div class="col-sm-3"> 
                            <input type="file" name="toBeUploaded" required=""/>

                        </div> 
                    </div>

                    <div class="form-group">

                        <div class="col-sm-offset-2"> 
                            <span >
                                <input type="reset" value="LIMPAR" class="btn btn-default" />
                                <input type="submit" value="CADASTRAR" class="btn btn-primary" />
                            </span>
                        </div>

                    </div>

                </form>
            </div>
        </div>

    </body>
</html>
