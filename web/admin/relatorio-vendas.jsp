
<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/my.css" rel="stylesheet" />
        <style>
            #soma-total{
                text-align: right;
                float: right;
                padding-right: 10px;
            }
            #total-vendas{
       
                text-align: left;
            }
            .bloquinho{
                display: inline-block;
                width: 100%;
                margin: auto;
            }

            h3,h4{
                text-align: center;
            }
            #tabela-vendas{
                text-align: center;
                width: 90%;
                margin: auto;

            }
        </style>
    </head>
    <body>

        <c:import url="_header.html"/>

        <div id="tabela-vendas">
            <h3> Relatório de Vendas  </h3>
            <h4> 07/06/2014 </h4>

            <table class="table">
                <tr>
                    <th> CODIGO </th>
                    <th> DATA </th>
                    <th> CLIENTE </th>
                    <th> VALOR </th>
                </tr>
                <tr>
                    <td> 34 </td>
                    <td> 07/06/2014 </td>
                    <td> Enoque Felie</td>
                    <td> 40700  </td>
                </tr>

                <tr>
                    <td> 35 </td>
                    <td> 07/06/2013 </td>
                    <td> Emerson Suzumura </td>
                    <td> 60730  </td>
                </tr>

                <tr>
                    <td> 36 </td>
                    <td> 07/06/2014 </td>
                    <td> Ronaldo Santos </td>
                    <td> 28200  </td>
                </tr>
                
                 <tr>
                    <td> 38 </td>
                    <td> 07/06/2014 </td>
                    <td> Sergio Ricardo </td>
                    <td> 36500  </td>
                </tr>
                
            </table>
            <div id="total-vendas" class="bloquinho">
                <b> Total de Vendas: </b> 4
            </div>

            <div id="soma-total" class="bloquinho">
                <b>Valor total das vendas R$: </b> 166130
            </div>
        </div>

    </body>
</html>
