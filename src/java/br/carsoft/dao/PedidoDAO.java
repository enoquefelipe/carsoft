package br.carsoft.dao;

import br.carsoft.data.ConnectionFactory;
import br.carsoft.entities.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PedidoDAO {

    Connection connection;

    public PedidoDAO() throws SQLException {
        connection = ConnectionFactory.getConnection();
    }

    public void atualizaPedido(int id) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DBO.PEDIDO SET STATUS_PEDIDO='CONCLUIDO' WHERE ID_PEDIDO=?");
        statement.setInt(1, id);
        statement.execute();
    }

    public void cadastraPedido(Pedido pedido) throws SQLException {
        String SQLVeiculo = "INSERT INTO DBO.PEDIDO (DATA_PEDIDO,STATUS_PEDIDO,VALOR_PEDIDO,ID_VEICULO,ID_KIT,ID_INTERESSADO) VALUES (?,?,?,?,?,?)";
        try (PreparedStatement stmt = this.connection.prepareStatement(SQLVeiculo)) {
            stmt.setString(1, pedido.getData_pedido());
            stmt.setString(2, pedido.getStatus_pedido());
            stmt.setString(3, pedido.getValor_pedido());
            stmt.setInt(4, pedido.getId_veiculo());
            stmt.setInt(5, pedido.getId_kit());
            stmt.setInt(6, pedido.getId_interessado());
            stmt.execute();
            stmt.close();
        }
    }

    public List<Pedido> listaPedido() throws SQLException {
        List<Pedido> listPedido;
        try (PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM DBO.PEDIDO")) {
            ResultSet rs = stmt.executeQuery();
            listPedido = new ArrayList<>();
            while (rs.next()) {
                Pedido pedido = new Pedido();
                pedido.setId_pedido(rs.getInt("id_pedido"));
                pedido.setData_pedido(rs.getString("data_pedido"));
                pedido.setStatus_pedido(rs.getString("status_pedido"));
                pedido.setId_veiculo(rs.getInt("id_veiculo"));
                listPedido.add(pedido);
            }
        }
        connection.close();
        return listPedido;
    }

    public void remove(int id) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement("DELETE FROM DBO.PEDIDO WHERE ID_PEDIDO=?")) {
            statement.setInt(1, id);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

    public Pedido edita(Pedido pedido) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DBO.PEDIDO SET STATUS_PEDIDO=?");
        statement.setString(1, pedido.getStatus_pedido());
        statement.execute();
        return pedido;
    }

    public Pedido getID(int id) throws SQLException {
        Pedido pedido = new Pedido();
        try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM DBO.PEDIDO WHERE ID_PEDIDO=?")) {
            statement.setInt(1, id);
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    pedido.setId_pedido(rs.getInt("id_pedido"));
                    pedido.setData_pedido(rs.getString("data_pedido"));
                    pedido.setId_interessado(rs.getInt("id_interessado"));
                    pedido.setId_kit(rs.getInt("id_kit"));
                    pedido.setId_veiculo(rs.getInt("id_veiculo"));
                    pedido.setStatus_pedido(rs.getString("status_pedido"));
                    pedido.setValor_pedido(rs.getString("valor_pedido"));
                }
            }
        }
        connection.close();
        return pedido;
    }
}
