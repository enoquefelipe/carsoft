package br.carsoft.action;

import br.carsoft.dao.InteressadoDAO;
import br.carsoft.entities.Contato;
import br.carsoft.entities.Endereco;
import br.carsoft.entities.Pessoa;
import com.opensymphony.xwork2.ActionContext;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import org.apache.struts2.convention.annotation.Action;
//import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

//@Namespace(value = "/admin")
public class InteressadoAction {

    private Pessoa pessoa = new Pessoa();
    private Endereco endereco = new Endereco();
    private Contato contato = new Contato();
    private List<Pessoa> listInteressado = new ArrayList<>();

    @Action(value = "adicionaInt", results =
            @Result(name = "ok", type = "redirectAction", params = {"actionName", "listaInt"}))
    public String adicionaInt() throws SQLException {
        InteressadoDAO dao = new InteressadoDAO();
        dao.cadastra(endereco, pessoa, contato);
        return "ok";
    }

    @Action(value = "listaInt", results =
            @Result(name = "ok", location = "/admin/listaInteressado.jsp"))
    public String listaInt() throws SQLException {
        InteressadoDAO dao = new InteressadoDAO();
        listInteressado = dao.lista();
        return "ok";
    }

    @Action(value = "removeInt", results =
            @Result(name = "ok", type = "redirectAction", params = {"actionName", "listaInt"}))
    public String removeInt() throws SQLException {
        InteressadoDAO dao = new InteressadoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        dao.remove(Integer.parseInt(request.getParameter("id_pessoa")));
        return "ok";
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public void setContato(Contato contato) {
        this.contato = contato;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public Contato getContato() {
        return contato;
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public List<Pessoa> getListInteressado() {
        return listInteressado;
    }

    public void setListInteressado(List<Pessoa> listInteressado) {
        this.listInteressado = listInteressado;
    }
}