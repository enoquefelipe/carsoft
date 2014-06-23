<%@taglib uri="/struts-tags" prefix="s"%>

<style>
    #sucess{
        width: 30%;
        margin: auto;
    }
</style>

<div id="sucess" class="alert alert-warning alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong> Sucesso! </strong> Cadastro efetuado com sucesso.
    <input type="hidden" name="pedido.id_interessado" value="<s:property value="interessado.id_interessado"/>" />
</div>