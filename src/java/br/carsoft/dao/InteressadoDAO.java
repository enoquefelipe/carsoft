package br.carsoft.dao;

import br.carsoft.data.ConnectionFactory;
import br.carsoft.entities.Contato;
import br.carsoft.entities.Endereco;
import br.carsoft.entities.Interessado;
import br.carsoft.entities.Pessoa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InteressadoDAO {

    Connection connection;
    public int idInteressado = 0;

    public InteressadoDAO() throws SQLException {
        connection = ConnectionFactory.getConnection();
    }

    public void cadastra(Endereco endereco, Pessoa pessoa, Contato contato) throws SQLException {
        String SQLInteressado = "INSERT INTO DBO.INTERESSADO (NOME,RG,CPF,NASCIMENTO,SEXO) values (?,?,?,?,?)";
        try (PreparedStatement stmt = this.connection.prepareStatement(SQLInteressado, PreparedStatement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, pessoa.getNome());
            stmt.setString(2, pessoa.getRg());
            stmt.setString(3, pessoa.getCpf());
            stmt.setString(4, pessoa.getNascimento());
            stmt.setString(5, pessoa.getSexo());

            stmt.execute();
            ResultSet rs3 = stmt.getGeneratedKeys();
            while (rs3.next()) {
                idInteressado = rs3.getInt(1);
            }
        }

        String SQLEndereco = "INSERT INTO DBO.ENDERECO(ESTADO,CIDADE,BAIRRO,LAGRADOURO,CEP,NUMERO,COMPLEMENTO,ID_INTERESSADO) VALUES (?,?,?,?,?,?,?,?) ";
        try (PreparedStatement stm = this.connection.prepareStatement(SQLEndereco)) {
            stm.setString(1, endereco.getEstado());
            stm.setString(2, endereco.getCidade());
            stm.setString(3, endereco.getBairro());
            stm.setString(4, endereco.getLagradouro());
            stm.setString(5, endereco.getCep());
            stm.setString(6, endereco.getNumero());
            stm.setString(7, endereco.getComplemento());
            stm.setInt(8, idInteressado);

            stm.execute();
            stm.close();

        }

        String SQLContato = "INSERT INTO DBO.CONTATO(EMAIL,TELEFONE,TELEFONE2,CELULAR,FAX,ID_INTERESSADO) values (?,?,?,?,?,?)";
        try (PreparedStatement st = this.connection.prepareStatement(SQLContato)) {
            st.setString(1, contato.getEmail());
            st.setString(2, contato.getTelefone());
            st.setString(3, contato.getTelefone2());
            st.setString(4, contato.getCelular());
            st.setString(5, contato.getFax());
            st.setInt(6, idInteressado);
            st.execute();
        }

    }

    public List<Pessoa> lista() throws SQLException {
        PreparedStatement s = this.connection.prepareStatement("SELECT * FROM DBO.INTERESSADO");
        ResultSet rs = s.executeQuery();

        List<Pessoa> listaInteressado = new ArrayList<>();

        while (rs.next()) {
            Pessoa pessoa = new Pessoa();
            pessoa.setId_pessoa(rs.getInt("id_interessado"));
            pessoa.setNome(rs.getString("nome"));
            pessoa.setRg(rs.getString("rg"));
            pessoa.setCpf(rs.getString("cpf"));
            pessoa.setSexo(rs.getString("sexo"));
            listaInteressado.add(pessoa);
        }
        s.close();
        connection.close();
        return listaInteressado;

    }

    public void remove(int id) throws SQLException {
        try (PreparedStatement statement = connection.prepareStatement("DELETE FROM DBO.INTERESSADO WHERE ID_INTERESSADO=?")) {
            statement.setInt(1, id);
            statement.execute();
            statement.close();
            connection.close();
        }
    }

    public Interessado getID(String cpf) throws SQLException {
        Interessado interessado = new Interessado();

        PreparedStatement statement = connection.prepareStatement("SELECT ID_INTERESSADO FROM DBO.INTERESSADO WHERE CPF=?");
        statement.setString(1, cpf);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            interessado.setId_interessado(rs.getInt("ID_INTERESSADO"));
        }
        rs.close();
        statement.close();
        connection.close();
        return interessado;
    }

    public Pessoa getPessoa(int id) throws SQLException {
        Pessoa pessoa = new Pessoa();

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM DBO.INTERESSADO WHERE ID_INTERESSADO=?");
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            pessoa.setId_pessoa(rs.getInt("ID_INTERESSADO"));
            pessoa.setCpf(rs.getString("CPF"));
            pessoa.setNascimento(rs.getString("NASCIMENTO"));
            pessoa.setNome(rs.getString("NOME"));
            pessoa.setRg(rs.getString("RG"));
            pessoa.setSexo(rs.getString("SEXO"));
        }
        rs.close();
        statement.close();
        connection.close();
        return pessoa;
    }
}
