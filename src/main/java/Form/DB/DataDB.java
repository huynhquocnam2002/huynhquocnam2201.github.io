package Form.DB;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class DataDB {
    private DBConnect dbConnect = DBConnect.getInstance();
    private Statement statement;

    public PreparedStatement getStatement(String query) throws SQLException, ClassNotFoundException {
        // 6. conect database
        return dbConnect.getPreparedStatement(query);
    }

    public DataDB() throws SQLException, ClassNotFoundException {
    }
}