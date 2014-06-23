package br.carsoft.dao;

import br.carsoft.data.ConnectionFactory;
import br.carsoft.entities.Veiculo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VeiculoDAO {

    Connection connection;

    public VeiculoDAO() throws SQLException {
        connection = ConnectionFactory.getConnection();
    }

    public void cadastra(Veiculo veiculo) throws SQLException {
        String SQLVeiculo = "INSERT INTO DBO.VEICULO (MODELO,ANO,COR,MOTOR,MONTADORA,CATEGORIA,PRECO,IMAGEM) VALUES (?,?,?,?,?,?,?,?)";
        try (PreparedStatement stmt = this.connection.prepareStatement(SQLVeiculo)) {
            stmt.setString(1, veiculo.getModelo());
            stmt.setString(2, veiculo.getAno());
            stmt.setString(3, veiculo.getCor());
            stmt.setString(4, veiculo.getMotor());
            stmt.setString(5, veiculo.getMontadora());
            stmt.setString(6, veiculo.getCategoria());
            stmt.setString(7, veiculo.getPreco());
            stmt.setString(8, veiculo.getImagem());
            stmt.execute();
        }
    }

    public List<Veiculo> lista() throws SQLException {
        List<Veiculo> listVeiculo;
        try (PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM DBO.VEICULO")) {
            ResultSet rs = stmt.executeQuery();
            listVeiculo = new ArrayList<>();
            while (rs.next()) {
                Veiculo veiculo = new Veiculo();
                veiculo.setId_veiculo(rs.getInt("id_veiculo"));
                veiculo.setModelo(rs.getString("modelo"));
                veiculo.setAno(rs.getString("ano"));
                veiculo.setCor(rs.getString("cor"));
                veiculo.setMotor(rs.getString("motor"));
                veiculo.setMontadora(rs.getString("montadora"));
                veiculo.setCategoria(rs.getString("categoria"));
                veiculo.setPreco(rs.getString("preco"));
                veiculo.setImagem(rs.getString("imagem"));
                listVeiculo.add(veiculo);
            }
        }
        connection.close();
        return listVeiculo;
    }
    
      public List<Veiculo> pesquisaVeiculo(String montadora) throws SQLException {
        List<Veiculo> listVeiculo;
        try (PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM DBO.VEICULO WHERE MONTADORA = ? ORDER BY MODELO")) {
            stmt.setString(1, montadora);
            ResultSet rs = stmt.executeQuery();
            listVeiculo = new ArrayList<>();
            while (rs.next()) {
                Veiculo veiculo = new Veiculo();
                veiculo.setId_veiculo(rs.getInt("id_veiculo"));
                veiculo.setModelo(rs.getString("modelo"));
                veiculo.setAno(rs.getString("ano"));
                veiculo.setCor(rs.getString("cor"));
                veiculo.setMotor(rs.getString("motor"));
                veiculo.setMontadora(rs.getString("montadora").toUpperCase());
                veiculo.setCategoria(rs.getString("categoria"));
                veiculo.setPreco(rs.getString("preco"));
                veiculo.setImagem(rs.getString("imagem"));
                listVeiculo.add(veiculo);
            }
        }
        connection.close();
        return listVeiculo;
    }

    public void remove(int id) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement("DELETE FROM DBO.VEICULO WHERE ID_VEICULO=?")) {
            statement.setInt(1, id);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

    public Veiculo edita(Veiculo veiculo) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("UPDATE DBO.VEICULO SET MODELO=?,ANO=?,COR=?,MOTOR=?,MONTADORA=?,CATEGORIA=?,PRECO=? WHERE ID_VEICULO=?");
        statement.setString(1, veiculo.getModelo());
        statement.setString(2, veiculo.getAno());
        statement.setString(3, veiculo.getCor());
        statement.setString(4, veiculo.getMotor());
        statement.setString(5, veiculo.getMontadora());
        statement.setString(6, veiculo.getCategoria());
        statement.setString(7, veiculo.getPreco());
        statement.setInt(8, veiculo.getId_veiculo());
        statement.execute();
        return veiculo;
    }

    public Veiculo veiculoId(int id) throws SQLException {
        Veiculo veiculo = new Veiculo();
        try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM DBO.VEICULO WHERE ID_VEICULO=? order by modelo")) {
            statement.setInt(1, id);
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    veiculo.setId_veiculo(rs.getInt("id_veiculo"));
                    veiculo.setModelo(rs.getString("modelo"));
                    veiculo.setAno(rs.getString("ano"));
                    veiculo.setCor(rs.getString("cor"));
                    veiculo.setMotor(rs.getString("motor"));
                    veiculo.setMontadora(rs.getString("montadora"));
                    veiculo.setCategoria(rs.getString("categoria"));
                    veiculo.setPreco(rs.getString("preco"));
                }
            }
        }
        connection.close();
        return veiculo;
    }
}
