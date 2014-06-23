package br.carsoft.action;

import br.carsoft.dao.ConcessionariaDAO;
import br.carsoft.entities.Concessionaria;
import br.carsoft.entities.Contato;
import br.carsoft.entities.Endereco;
import com.opensymphony.xwork2.ActionContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class ConcessionariaAction {

    private Concessionaria concessionaria = new Concessionaria();
    private Endereco endereco = new Endereco();
    private Contato contato = new Contato();
    private List<Concessionaria> listConce = new ArrayList<>();

    @Action(value = "adicionaConc", results =
            @Result(name = "ok", type = "redirectAction", params = {"actionName", "listaConc"}))
    public String adicionaConc() throws SQLException {
        ConcessionariaDAO dao = new ConcessionariaDAO();
        dao.cadastra(endereco, concessionaria, contato);
        return "ok";
    }

    @Action(value = "listaConc", results =
            @Result(name = "ok", location = "/admin/listaConcessionaria.jsp"))
    public String listaConc() throws SQLException {
        ConcessionariaDAO dao = new ConcessionariaDAO();
        listConce = dao.lista();
        return "ok";
    }
    
        @Action(value = "removeConce", results =
            @Result(name = "Delete", type = "redirectAction", params = {"actionName", "listaConc"}))
    public String removeConce() throws Exception {
        ConcessionariaDAO dao = new ConcessionariaDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        dao.remove(Integer.parseInt(request.getParameter("id_concessionaria")));
        return "Delete";
    }

    public Concessionaria getConcessionaria() {
        return concessionaria;
    }

    public void setConcessionaria(Concessionaria concessionaria) {
        this.concessionaria = concessionaria;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public Contato getContato() {
        return contato;
    }

    public void setContato(Contato contato) {
        this.contato = contato;
    }

    public List<Concessionaria> getListConce() {
        return listConce;
    }

    public void setListConce(List<Concessionaria> listConce) {
        this.listConce = listConce;
    }
}
