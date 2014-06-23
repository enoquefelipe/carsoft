<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link href="css/my.css" rel="stylesheet" />
        <title> Interessados </title>
        <style>
            #alerta{
                width: 30%;
                margin: auto;
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

        <table class="tabela-interessado">

            <h3> Lista de Interessados </h3>
            <hr>

            <tr>
                <th> NOME </th>
                <th> CPF </th>
                <th> EDITAR </th>
                <th> REMOVER </th>
            </tr>

            <s:if test="listInteressado.size() > 0" >
                <s:iterator value="listInteressado" status="userStatus">

                    <tr>
                        <td> <s:property value="nome" />  </td>
                        <td> <s:property value="cpf" />  </td>
                        <td> <img  src="../img/ed.png" alt="ed">  </td>
                        <td> 
                            <s:url id="deleteURL" action="removeInt">
                                <s:param name="id_pessoa" value="%{id_pessoa}"></s:param>
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
            <br>
            <div id="alerta" class="alert alert-danger">

                <b> Desculpe, </b> não há nenhum interessado cadastrado no sistema!
                <br>
                <p> Tente Novamente mais tarde.! </p>
            </div>
        </s:else>
        <div title="Alerta" class="dialog">
            <p> Tem certeza que deseja excluir? </p>
        </div>

        <script src="../js/jquery.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/myScript.js">

        </script>
    </body>
</html>
