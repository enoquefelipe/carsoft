<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="../css/bootstrap.css" type="text/css" />
        <style>
            #mensagem-sucesso{
                margin-top: 20%;
            }
            #sucess{
                text-align: center;
            }
        </style>
        <title> Fim </title>
    </head>
    <body>
        <c:import url="_header.html"/>
        <div class="row" id="mensagem-sucesso">

            <div class="col-md-4">
            </div>

            <div class="col-md-4">
                <div id="sucess" class="alert alert-warning alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>PEDIDO CONCRETIZADO COM SUCESSSO</strong> 
                    <br>
                    <span class="glyphicon glyphicon-ok"></span>
                </div>
            </div>

            <div class="col-md-4">
            </div>
        </div>

        <script src="../js/jquery.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/myScript.js"></script>
    </body>
</html>