<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/favicon.png">
        <link href="css/my.css" rel="stylesheet" />
        <title> Cadastro de Concessionaria</title>
    </head>
    <body>
        <c:import url="_header.html"/>
        <div class="cadastro-colaborador">  
            <div class="form-horizontal">
                <form action="adicionaConc" method="POST">
                    <div class="form-group">
                        <label class="col-sm-2 control-label"> CNPJ </label>
                        <div class="col-sm-5">
                            <input type="text" name="concessionaria.cnpj" class="form-control" placeholder="00.000.000/0000-00" required=""/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> Nome Fantasia </label>
                        <div class="col-sm-8">
                            <input type="text" name="concessionaria.nome_fantasia" class="form-control" placeholder="XPTO Multimarcas" required=""/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> Razão Social </label>
                        <div class="col-sm-8">
                            <input type="text" name="concessionaria.razao_social" class="form-control" placeholder="XPTO LTDA" required=""/>
                        </div>
                    </div>

                    <hr>

                    <div class="form-group">
                        <label for="rua" class="col-sm-2 control-label"> Lagradouro </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="rua" name="concessionaria.lagradouro" placeholder="Avenida, Rua, Viela e etc" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="numero" class="col-sm-2 control-label"> Numero </label>
                        <div class="col-sm-1">
                            <input type="text" class="form-control" id="numero" name="endereco.numero" placeholder="Numero" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="complemento" class="col-sm-2 control-label"> Complemento </label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="complemento" name="endereco.complemento" placeholder="Complemento" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cep" class="col-sm-2 control-label"> CEP </label>
                        <div class="col-sm-1">
                            <input type="text" class="form-control" id="cep" name="endereco.cep" placeholder="CEP" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="bairro" class="col-sm-2 control-label"> Bairro </label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="bairro" name="endereco.bairro" placeholder="Bairro" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cidade" class="col-sm-2 control-label"> Cidade </label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="cidade" name="endereco.cidade" placeholder="Cidade" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"> Estado </label>
                        <div class="col-sm-1">
                            <select class="form-control" name="endereco.estado">
                                <option> AC </option> <option> AL </option> <option> AP </option>
                                <option> AM </option> <option> BA </option> <option> CE </option>
                                <option> DF </option> <option> GO </option> <option> ES </option>
                                <option> MA </option> <option> MT </option> <option> MS </option>
                                <option> MG </option> <option> PA </option> <option> PB </option>
                                <option> MR </option> <option> PE </option> <option> PI </option>
                                <option> RJ </option> <option> RN </option> <option> RS </option>
                                <option> RO </option> <option> RR </option> <option> SP </option>
                                <option> SC </option> <option> SE </option> <option> TO </option>
                            </select>
                        </div>
                    </div>

                    <hr>

                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label"> E-mail </label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" name="contato.email" placeholder="E-mail">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="telefone" class="col-sm-2 control-label"> Telefone </label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="telefone" name="contato.telefone" placeholder="(011) 0000-0000" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="celular" class="col-sm-2 control-label"> Celular </label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="celular" name="contato.celular" placeholder="(011) 00000-0000" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="fax" class="col-sm-2 control-label"> Fax </label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="fax" name="contato.fax" placeholder="(011) 0000-0000" >
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="reset" class="btn btn-default" > Limpar </button>
                            <button type="submit" class="btn btn-primary"> Enviar </button>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
