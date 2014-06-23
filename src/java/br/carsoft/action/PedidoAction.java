package br.carsoft.action;

import br.carsoft.dao.InteressadoDAO;
import br.carsoft.dao.KitDAO;
import br.carsoft.dao.PedidoDAO;
import br.carsoft.dao.VeiculoDAO;
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
//import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

//@Namespace(value = "/admin")
public class PedidoAction {

    private Pedido pedido = new Pedido();
    private Veiculo veiculo = new Veiculo();
    private Pessoa pessoa = new Pessoa();
    private Kit kit = new Kit();
    private List<Pedido> listPedido = new ArrayList<>();

    @Action(value = "listaPedido", results =
            @Result(name = "ok", location = "/admin/listaPedido.jsp"))
    public String listaPedido() throws SQLException {
        PedidoDAO dao = new PedidoDAO();
        listPedido = dao.listaPedido();
        return "ok";
    }

    @Action(value = "removePedido", results =
            @Result(name = "Delete", type = "redirectAction", params = {"actionName", "listaPedido"}))
    public String removePedido() throws Exception {
        PedidoDAO dao = new PedidoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        dao.remove(Integer.parseInt(request.getParameter("id_pedido")));
        return "Delete";
    }

    @Action(value = "preparaPedido", results =
            @Result(name = "ok", location = "/admin/editaPedido.jsp"))
    public String preparaPedido() throws Exception {
        PedidoDAO dao = new PedidoDAO();
        InteressadoDAO pessoadao = new InteressadoDAO();
        KitDAO kitdao = new KitDAO();
        VeiculoDAO veiculodao = new VeiculoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        pedido = dao.getID(Integer.parseInt(request.getParameter("id_pedido")));
        veiculo = veiculodao.veiculoId(pedido.getId_veiculo());
        pessoa = pessoadao.getPessoa(pedido.getId_interessado());
        kit = kitdao.getkit(pedido.getId_kit());
        return "ok";
    }

    @Action(value = "efetivaPedido", results =
            @Result(name = "ok", location = "/admin/pedido-sucesso.jsp"))
    public String efetivaPedido() throws SQLException {
        PedidoDAO dao = new PedidoDAO();
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        dao.atualizaPedido(Integer.parseInt(request.getParameter("id_pedido")));
        return "ok";
    }

    public List<Pedido> getListPedido() {
        return listPedido;
    }

    public void setListPedido(List<Pedido> listPedido) {
        this.listPedido = listPedido;
    }

    public Pedido getPedido() {
        return pedido;
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

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public Kit getKit() {
        return kit;
    }

    public void setKit(Kit kit) {
        this.kit = kit;
    }
}
