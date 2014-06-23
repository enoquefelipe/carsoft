package br.carsoft.dao;

import br.carsoft.data.ConnectionFactory;
import br.carsoft.entities.Concessionaria;
import br.carsoft.entities.Contato;
import br.carsoft.entities.Endereco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConcessionariaDAO {

    Connection connection;
    public int idConcessionaria;

    public ConcessionariaDAO() throws SQLException {
        connection = ConnectionFactory.getConnection();
    }

    public void cadastra(Endereco endereco, Concessionaria concessionaria, Contato contato) throws SQLException {
        String SQLInteressado = "INSERT INTO DBO.CONCESSIONARIA (CNPJ,NOME_FANTASIA,RAZAO_SOCIAL) values (?,?,?)";
        try (PreparedStatement stmt = this.connection.prepareStatement(SQLInteressado, PreparedStatement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, concessionaria.getCnpj());
            stmt.setString(2, concessionaria.getNome_fantasia());
            stmt.setString(3, concessionaria.getRazao_social());
            stmt.execute();
            ResultSet rs3 = stmt.getGeneratedKeys();
            while (rs3.next()) {
                idConcessionaria = rs3.getInt(1);
            }
        }
        String SQLEndereco = "INSERT INTO DBO.ENDERECO(ESTADO,CIDADE,BAIRRO,LAGRADOURO,CEP,NUMERO,COMPLEMENTO,ID_CONCESSIONARIA) VALUES (?,?,?,?,?,?,?,?) ";
        try (PreparedStatement stm = this.connection.prepareStatement(SQLEndereco)) {
            stm.setString(1, endereco.getEstado());
            stm.setString(2, endereco.getCidade());
            stm.setString(3, endereco.getBairro());
            stm.setString(4, endereco.getLagradouro());
            stm.setString(5, endereco.getCep());
            stm.setString(6, endereco.getNumero());
            stm.setString(7, endereco.getComplemento());
            stm.setInt(8, idConcessionaria);
            stm.execute();
        }

        String SQLContato = "INSERT INTO DBO.CONTATO(EMAIL,TELEFONE,TELEFONE2,CELULAR,FAX,ID_CONCESSIONARIA) values (?,?,?,?,?,?)";
        try (PreparedStatement st = this.connection.prepareStatement(SQLContato)) {
            st.setString(1, contato.getEmail());
            st.setString(2, contato.getTelefone());
            st.setString(3, contato.getTelefone2());
            st.setString(4, contato.getCelular());
            st.setString(5, contato.getFax());
            st.setInt(6, idConcessionaria);
            st.execute();
        }
    }

    public List<Concessionaria> lista() throws SQLException {
        PreparedStatement s = this.connection.prepareStatement("SELECT * FROM DBO.CONCESSIONARIA");
        ResultSet rs = s.executeQuery();

        List<Concessionaria> listaConcessionaria = new ArrayList<>();

        while (rs.next()) {
            Concessionaria concessionaria = new Concessionaria();
            concessionaria.setId_concessionaria(rs.getInt("ID_CONCESSIONARIA"));
            concessionaria.setCnpj(rs.getString("CNPJ"));
            concessionaria.setNome_fantasia(rs.getString("NOME_FANTASIA"));
            concessionaria.setRazao_social(rs.getString("RAZAO_SOCIAL"));
            listaConcessionaria.add(concessionaria);
        }
        s.close();
        connection.close();
        return listaConcessionaria;
    }

    public void remove(int id) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement("DELETE FROM DBO.CONCESSIONARIA WHERE ID_CONCESSIONARIA=?")) {
            statement.setInt(1, id);
            statement.execute();
            statement.close();
            connection.close();
        }
    }
}