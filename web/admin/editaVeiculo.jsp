<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Edição de Veículo </title>
    </head>
    <body>

        <c:import url="_header.html"/>

        <form class="form-horizontal" action="edit" method="POST">

            <input type="hidden" name="veiculo.id_veiculo" value="<s:property value="veiculo.id_veiculo" />" />

            <div class="form-group">
                <label for="modelo" class="col-sm-2 control-label"> MODELO </label>
                <div class="col-sm-4">
                    <input type="text" class="form-control input-sm" id="modelo" name="veiculo.modelo" value="<s:property value="veiculo.modelo" />" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"> ANO </label>
                <div class="col-sm-2">
                    <input type="text" class="form-control input-sm" name="veiculo.ano" value="<s:property value="veiculo.ano" />" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"> COR </label>
                <div class="col-sm-2">
                    <input type="text" class="form-control input-sm" name="veiculo.cor" value="<s:property value="veiculo.cor" />" />
                </div>
            </div>

            <div class="form-group"> 
                <label class="col-sm-2 control-label"> MOTORIZAÇÃO </label>
                <div class="col-sm-2">
                    <input type="text" class="form-control input-sm" name="veiculo.motor" value="<s:property value="veiculo.motor" />" />
                </div>
            </div>

            <div class="form-group">           
                <label class="col-sm-2 control-label"> MONTADORA </label>
                <div class="col-sm-3">
                    <input type="text" class="form-control input-sm" name="veiculo.montadora" value="<s:property value="veiculo.montadora" />" />
                </div>
            </div>

            <div class="form-group">  
                <label class="col-sm-2 control-label"> CATEGORIA </label>
                <div class="col-sm-2">
                    <input type="text" class="form-control input-sm" name="veiculo.categoria" value="<s:property value="veiculo.categoria" />" />
                </div>
            </div>
                
                <div class="form-group">  
                <label class="col-sm-2 control-label"> PREÇO </label>
                <div class="col-sm-2">
                    <input type="text" class="form-control input-sm" name="veiculo.preco" value="<s:property value="veiculo.preco" />" />
                </div>
            </div>

            <div class="col-sm-offset-2"> 
                <span >
                    <a href="lista" class="btn btn-default"> CANCELAR </a>
                    <input type="submit" value="SALVAR" class="btn btn-primary"/>
                </span>
            </div>
        </form>

    </body>
</html>
