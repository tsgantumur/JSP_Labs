import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;


public class HelloServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        ServletContext sc = this.getServletContext();
        String support_email = sc.getInitParameter("support-email");

        Random rand = new Random();
        int support_ticket_id = rand.nextInt(1000);

        PrintWriter out = response.getWriter();
        out.print("<html><head><title>Test</title></head><body>");
        out.print("<p>Thank you! ");
        out.print(name);
        out.print(" for contacting us. We should receive reply from us with in 24 hrs in your email address ");
        out.print(email + ".</p>");
        out.print("Let us know in our support email ");
        out.print(support_email);
        out.print(" if you don't receive reply within 24 hrs. Please be sure to attach your reference ");
        out.print(support_ticket_id);
        out.print(" in your email.");
        out.print("</body></html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("<html><head><title>Test</title></head><body>");
        out.print("<form method='post'></br>");
        out.print("<label>Name:</label><input type='text' name='name'/></br>");
        out.print("<label>Email address:</label><input type='text' name='email'/></br>");
        out.print("<label>Problem:</label><input type='text' name='problem'/></br>");
        out.print("<label>Problem description</label></br><textarea></textarea></br>");
        out.print("<input type='submit' value='Help'/>");
        out.print("</form>");
        out.print("</body></html>");


    }
}
