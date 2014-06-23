<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap-theme.css" type="text/css" />
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
        <div class="row" id="mensagem-sucesso">

            <div class="col-md-4">
            </div>

            <div class="col-md-4">
                <div id="sucess" class="alert alert-warning alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>Sucesso!</strong> 
                    <span class="glyphicon glyphicon-ok"></span>

                    <br> 
                    <p>
                        Pedido efetuado com sucesso.
                    </p>
                </div>
                
                <br>
                
                <p>
                    <a href="http://localhost:8086/Carsoft/quiosque/">
                        <button type="button" class="btn btn-primary">Novo Pedido</button>
                    </a>
                </p>

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
