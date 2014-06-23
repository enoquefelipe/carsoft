<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/kioskStyle.css" type="text/css" />
        <link rel="stylesheet" href="../css/bootstrap.css" type="text/css" />
        <title> Escolha um Veículo </title>

        <style>
            figcaption{
                text-align: center;
            }

            .centralizado{
                display: inline-block; 
                margin-left:  15px;
                margin-right: 15px;
            }

            .hr{
                position: absolute;
                margin: 20px;
                bottom: 0;
                clear: both;
            }

            img {
                width: 300px;
            }

            #alerta{
                width: 30%;
                margin: auto;
            }

            .logo{
                width: 50px;
                text-align: center;
            }   


        </style>
    </head>
    <body>

        <h2> ESCOLHA UM MODELO </h2>

        <div class="row">
            <div class="col-md-12 logo ">
                <div >
                    <img class="logo" src="../img/logo2/${param.montadora}.png" >
                </div>
            </div>

        </div>
        <div class="container-quiosque">

            <s:if test="listVeiculo.size() > 0" >
                <s:iterator value="listVeiculo" status="userStatus">     
                    <div class="centralizado">
                        <a href="monte-o-seu.jsp?id_veiculo=<s:property value="id_veiculo"/>&montadora=<s:property value="montadora"/>&modelo=<s:property value="modelo"/>&preco=<s:property value="preco"/>&imagem=<s:property value="imagem"/>&motor=<s:property value="motor"/>&cor=<s:property value="cor"/>">
                            <figure>
                                <img src="../<s:property value="imagem"/>" alt="" class="img-responsive">
                                <figcaption> 
                                    <s:property value="modelo"/>
                                    <s:property value="ano"/> <br>
                                    A partir de RS: <s:property value="preco"/>

                                </figcaption>
                            </figure>
                        </a>
                    </div>
                </s:iterator>
            </s:if>

            <s:else>
                <div id="alerta" class="alert alert-danger">
                    <b> Desculpe, </b> não há nenhum veículo cadastrado no sistema!
                    <p> Tente Novamente mais tarde.! </p>
                </div>
            </s:else>

        </div>
        <div class="col-md-12">
            <input type="button" value="Voltar" onclick="history.go(-1);" class="btn btn-default">
        </div>  
    </body>
</html>
