package Form.Control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "DanhmucSeachServlet", value = "/DanhmucSeachServlet")
public class DanhmucSeachServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("txt");
        // 4. xu ly du lieu
        try {
            String txt = request.getParameter("input_seach1");
            session.setAttribute("txt" , txt);
            System.out.println(txt);
            request.getRequestDispatcher("seach.jsp").forward(request, response);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
