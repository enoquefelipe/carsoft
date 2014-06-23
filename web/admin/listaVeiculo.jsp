
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title> Lista de Veículos </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/favicon.png">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link href="css/my.css" rel="stylesheet" />
        <style>

            #invisivel{
                display: none;
            }

            #alerta{
                width: 50%;
                margin-left: auto;
                margin-right: auto;
                margin-top: 20px;
                text-align: center;
            }
            h3{
                text-align: center;
            }

            hr{
                width: 90%;
                margin: auto;
                text-align: center;
            }

        </style>
    </head>
    <body>
        <c:import url="_header.html"/>

        <h3> Veículos Cadastrados </h3>

        <hr>

        <div class="tabela-veiculo">

            <s:form>

                <table>
                    <tr>
                        <th> MODELO </th>
                        <th> ANO </th>
                        <th> COR </th>
                        <th> MOTORIZAÇÃO </th>
                        <th> MONTADORA </th>
                        <th> CATEGORIA </th>
                        <th> EDITAR</th>
                        <th> REMOVER</th>
                    </tr>

                    <s:if test="listVeiculo.size() > 0" >
                        <s:iterator value="listVeiculo" status="userStatus">

                            <tr>
                                <td> <s:property value="modelo" />  </td>
                                <td> <s:property value="ano" /> </td>
                                <td> <s:property value="cor" /> </td>
                                <td> <s:property value="motor" /> </td>
                                <td> <s:property value="montadora" /> </td>
                                <td> <s:property value="categoria" /> </td>

                                <td> 

                                    <s:url id="editURL" action="prepara">
                                        <s:param name="id_veiculo" value="%{id_veiculo}"></s:param>
                                    </s:url>
                                    <s:a href="%{editURL}">
                                        <img  src="../img/ed.png" alt="ed"> 
                                    </s:a>

                                </td>
                                <td> 
                                    <s:url id="deleteURL" action="removecar">
                                        <s:param name="id_veiculo" value="%{id_veiculo}"></s:param>
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
                        <p> <b> Desculpe, </b> não há nenhum veículo cadastrado no sistema! </p>
                        <p> <a href="cadastraVeiculo.jsp"> Clique aqui </a> para cadastrar um veículo </p>
                    </div>
                </s:else>
            </s:form>
        </div>

        <div title="Alerta" class="dialog" id="invisivel">
            <p> Tem certeza que deseja excluir? </p>
        </div>

        <script src="../js/jquery.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/myScript.js"></script>
    </body>

</html>
