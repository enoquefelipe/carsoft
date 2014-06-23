<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <style>
            .tab-pedido{
                width: 90%;
                margin: auto;
                text-align: center;
            }

            .tab-pedido th{
                text-align: center;
            }
        </style>
        <title> Pedidos </title>
    </head>
    <body>

        <c:import url="_header.html"/>

        <s:form cssClass="tab-pedido">
            
            <h3> Lista de Pedidos </h3>
            
            <hr>
            
            <table>
                <tr>
                    <th> NUMERO DO PEDIDO </th>
                    <th> DATA </th>
                    <th> STATUS </th>
                    <th> DETALHES </th>
                    <th> REMOVER </th>
                </tr>

                <s:if test="listPedido.size() > 0" >
                    <s:iterator value="listPedido" status="userStatus">

                        <tr>
                            <td> <s:property value="id_pedido" /></td>
                            <td> <s:property value="data_pedido" />  </td>
                            <td> <s:property value="status_pedido" /> </td>

                            <td> 
                                <s:url id="editURL" action="preparaPedido">
                                    <s:param name="id_pedido" value="%{id_pedido}"></s:param>
                                </s:url>
                                <s:a href="%{editURL}">
                                    <img  src="../img/search.png" alt="ed"> 
                                </s:a>
                            </td>
                            <td> 
                                <s:url id="deleteURL" action="removePedido">
                                    <s:param name="id_pedido" value="%{id_pedido}"></s:param>
                                </s:url>
                                <s:a href="%{deleteURL}" cssClass="delete-button">
                                    <img  src="../img/re.png" alt="re">
                                </s:a>

                            </td>
                        </tr>

                    </s:iterator>
                </s:if>


            </table>
            <s:else>
                <div id="alerta" class="alert alert-danger">
                    <p> <b> Desculpe, </b> não há nenhum pedido! </p>
        
                </div>
            </s:else>
        </s:form>


        <div title="Alerta" class="dialog" id="invisivel">
            <p> Tem certeza que deseja excluir? </p>
        </div>
        <script src="../js/jquery.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/myScript.js"></script>
    </body>
</html>
