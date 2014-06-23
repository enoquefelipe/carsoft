<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/my.css" rel="stylesheet" />
        <title> Concessionaria </title>
    </head>
    <body>
        <c:import url="_header.html"/>
        <table class="tabela-interessado">
            <tr>
                <th> CNPJ </th>
                <th> NOME FANTASIA </th>
                <th> RAZAO SOCAL </th>
                <th> EXCLUIR </th>
            </tr>

            <s:if test="listConce.size() > 0" >
                <s:iterator value="listConce" status="userStatus">

                    <tr>
                        <td> <s:property value="cnpj" />  </td>
                        <td> <s:property value="nome_fantasia" /> </td>
                        <td> <s:property value="razao_social" /> </td>


                        <td> 
                            <s:url id="deleteURL" action="removeConce">
                                <s:param name="id_concessionaria" value="%{id_concessionaria}"></s:param>
                            </s:url>
                            <s:a href="%{deleteURL}" cssClass="delete-button">
                                <img  src="../img/re.png" alt="re">
                            </s:a>

                        </td>
                    </tr>

                </s:iterator>
            </s:if>

        </table>

    </body>
</html>
