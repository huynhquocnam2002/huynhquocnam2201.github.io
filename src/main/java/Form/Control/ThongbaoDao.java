package Form.Control;

import Form.DB.DataDB;
import Form.model.Thongbao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ThongbaoDao {
    //  xu ly du lieu seach tu tham so truyen vao va tra ve danh sach ket qua
    public static List<Thongbao> getThongbao(String text) throws SQLException, ClassNotFoundException {
        // 5. conect database
        DataDB db = new DataDB();
        List<Thongbao> res = new ArrayList<Thongbao>();
        PreparedStatement sta = db.getStatement("SELECT * \n" +
                "FROM `thongbao` \n" +
                "where thongbao.title like '%"+text+"%'");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Thongbao p = new Thongbao(rs.getString("id"),rs.getString("title"),rs.getString("content"),rs.getString("date_add"),rs.getString("image"),rs.getString("status"));
            res.add(p);
        }
        // 6. tra ve du lieu xu ly
        return res;
    }
    public static List<Thongbao> getAllThongbaos() throws SQLException, ClassNotFoundException {
        DataDB db = new DataDB();
        List<Thongbao> res = new ArrayList<Thongbao>();
        PreparedStatement sta = db.getStatement("SELECT * FROM `thongbao`");
        ResultSet rs = sta.executeQuery();
        while (rs.next()) {
            Thongbao p = new Thongbao(rs.getString("id"),rs.getString("title"),rs.getString("content"),rs.getString("date_add"),rs.getString("image"),rs.getString("status"));
            res.add(p);
        }
        return res;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ThongbaoDao tb = new ThongbaoDao();
        List<Thongbao> res = getAllThongbaos();

        for (int i = 0; i < res.size(); i++) {
            System.out.println(res.get(i).toString());
        }
    }
}
