<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> </title>
    </head>
    <body>
        <br>
        <div class="alert alert-danger">
            <b> KIT Montado com Sucesso! </b>
        </div>
        <input type="hidden" name="id_kit" value="<s:property value="kit.id_kit"/>" />

    </body>
</html>
