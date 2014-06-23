package br.carsoft.dao;

import br.carsoft.data.ConnectionFactory;
import br.carsoft.entities.Kit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class KitDAO {

    Connection connection;
    public int idKit;

    public KitDAO() throws SQLException {
        connection = ConnectionFactory.getConnection();
    }

    public Kit cadastra(Kit kit) throws SQLException {
        String SQLKit = "INSERT INTO DBO.KIT (ACESSORIO1,ACESSORIO2,ACESSORIO3,ACESSORIO4,ACESSORIO5) VALUES (?,?,?,?,?)";
        try (PreparedStatement stmt = this.connection.prepareStatement(SQLKit, PreparedStatement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, kit.getAcessorio_1());
            stmt.setString(2, kit.getAcessorio_2());
            stmt.setString(3, kit.getAcessorio_3());
            stmt.setString(4, kit.getAcessorio_4());
            stmt.setString(5, kit.getAcessorio_5());
            stmt.execute();

            ResultSet rs3 = stmt.getGeneratedKeys();
            while (rs3.next()) {
                idKit = rs3.getInt(1);
            }
            Kit kitresult = new Kit();
            kit.setId_kit(idKit);
            return kitresult;
        }
    }

    public Kit getkit(int id) throws SQLException {
        Kit kit = new Kit();
        try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM DBO.KIT WHERE ID_KIT=?")) {
            statement.setInt(1, id);
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    kit.setAcessorio_1(rs.getString("acessorio1"));
                    kit.setAcessorio_2(rs.getString("acessorio2"));
                    kit.setAcessorio_3(rs.getString("acessorio3"));
                    kit.setAcessorio_4(rs.getString("acessorio4"));
                    kit.setAcessorio_5(rs.getString("acessorio5"));
                }
            }
        }
        connection.close();
        return kit;

    }
}
