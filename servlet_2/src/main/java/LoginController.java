import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.Cookie;

@WebServlet(name = "LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");

        System.out.println("rememberMe: " + rememberMe);

        if(userName == "" || password == "")
            return;

        User currentUser = new User(userName, password);
        UserDB checkUser = new UserDB();

        if(checkUser.validate(currentUser)){
            request.getSession().setAttribute("userName", userName);
            if (rememberMe != null){
                System.out.println("on: " + rememberMe + " username: " + userName);
                Cookie cookie = new Cookie("remember", userName);
                cookie.setMaxAge(2592000); //in seconds= 30 days
                response.addCookie(cookie);

                Cookie promo = new Cookie("pc", "100");
                promo.setMaxAge(2592000);
                response.addCookie(promo);
            } else {
                System.out.println("off: " + rememberMe + " username: " + userName);
                Cookie cookie = new Cookie("remember", "");
                cookie.setMaxAge(-1);
                response.addCookie(cookie);
            }

            request.getRequestDispatcher("myProfile.jsp").forward(request, response);

        } else {
            System.out.println("hey hey");
            doGet(request , response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userNameVal = "";
        String cbValue = "";
        System.out.println("doGet");
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            System.out.println("<<<<<<cookie value: " + cookie.getValue() + " " + cookie.getName());
            if(cookie.getName().equals("remember")){
                userNameVal = cookie.getValue();
                if(userNameVal == "")
                {
                    cbValue = "uncheck()";
                }
                else
                {
                    cbValue = "check()";
                }
            }
        }

        System.out.println("userNameVal: " + userNameVal);

        request.setAttribute("rememberedName", userNameVal);
        request.setAttribute("cbStatus", cbValue);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
