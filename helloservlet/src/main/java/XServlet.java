import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "XServlet")
public class XServlet extends HttpServlet {
    String[] fruit = {"Banana", "Orange", "Apple"};


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("myFruitList", fruit);

        RequestDispatcher dispatcher = request.getRequestDispatcher("x.jsp");
        dispatcher.forward(request, response);
    }
}
