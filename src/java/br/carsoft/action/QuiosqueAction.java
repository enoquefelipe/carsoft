package br.carsoft.action;

import br.carsoft.dao.InteressadoDAO;
import br.carsoft.dao.KitDAO;
import br.carsoft.dao.PedidoDAO;
import br.carsoft.dao.VeiculoDAO;
import br.carsoft.entities.Contato;
import br.carsoft.entities.Endereco;
import br.carsoft.entities.Interessado;
import br.carsoft.entities.Kit;
import br.carsoft.entities.Pedido;
import br.carsoft.entities.Pessoa;
import br.carsoft.entities.Veiculo;
import com.opensymphony.xwork2.ActionContext;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

@Namespace(value = "/quiosque")
public class QuiosqueAction {

    private Interessado interessado = new Interessado();
    private Kit kit = new Kit();
    private Pessoa pessoa = new Pessoa();
    private Endereco endereco = new Endereco();
    private Contato contato = new Contato();
    private Pedido pedido = new Pedido();
    private Veiculo veiculo = new Veiculo();
    private List<Veiculo> listVeiculo = new ArrayList<>();

    @Action(value = "adicionaIntAjax", results =
            @Result(name = "ok", location = "/quiosque/interessadoSucesso.jsp"))
    public String adicionaIntAjax() throws SQLException {
        InteressadoDAO dao = new InteressadoDAO();
        String cpf = pessoa.getCpf();
        dao.cadastra(endereco, pessoa, contato);
        interessado = dao.getID(cpf);
        return "ok";
    }

    @Action(value = "adicionaKit", results =
            @Result(name = "ok", location = "/quiosque/kit-sucesso.jsp"))
    public String adcionaKit() throws SQLException {
        KitDAO dao = new KitDAO();
        dao.cadastra(kit);
        return "ok";
    }

    @Action(value = "salvaPedido", results =
            @Result(name = "cadasrado", location = "/quiosque/pedido-sucesso.jsp"))
    public String salvaPedido() throws SQLException {
        PedidoDAO dao = new PedidoDAO();
        dao.cadastraPedido(pedido);
        return "cadasrado";
    }

    @Action(value = "listaVeiculo", results =
            @Result(name = "ok", location = "/quiosque/listaVeiculo.jsp"))
    public String listaVeiculo() throws SQLException {
        VeiculoDAO dao = new VeiculoDAO();
        listVeiculo = dao.lista();
        return "ok";
    }

    @Action(value = "pesquisaVeiculo", results =
            @Result(name = "ok", location = "/quiosque/listaVeiculo.jsp"))
    public String pesquisaVeiculo() throws SQLException {
        VeiculoDAO dao = new VeiculoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        listVeiculo = dao.pesquisaVeiculo(request.getParameter("montadora"));
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

    public List<Veiculo> getListVeiculo() {
        return listVeiculo;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setListVeiculo(List<Veiculo> listVeiculo) {
        this.listVeiculo = listVeiculo;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public Veiculo getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

    public Interessado getInteressado() {
        return interessado;
    }

    public void setInteressado(Interessado interessado) {
        this.interessado = interessado;
    }

    public Kit getKit() {
        return kit;
    }

    public void setKit(Kit kit) {
        this.kit = kit;
    }
}
