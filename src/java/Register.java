
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author stavros
 */
public class Register extends HttpServlet {

    private String error = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        DBValidation db = new DBValidation();

        PrintWriter out = response.getWriter();

        if ("".equals(request.getParameter("username"))) {

            error += errorMsg("You should type your username!");

        }

        if ("".equals(request.getParameter("email"))) {

            error += errorMsg("You should type your email!");

        }

        if ("".equals(request.getParameter("pass1"))) {

            error += errorMsg("You should type your password!");
        }

        if (!request.getParameter("pass1").equals(request.getParameter("pass2"))) {

            error += errorMsg("Password dismatch!");
        }

        if (error.length() > 0) {

            request.setAttribute("data", error);
            error = "";
            getServletConfig().getServletContext()
                    .getRequestDispatcher("/register.jsp").forward(request, response);

        }

        if (db.checkUsr(request.getParameter("username"), request.getParameter("email"))) {

            String alert = "<div class='alert alert-danger alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-50' role='alert'>"
                    + "  User already exists."
                    + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                    + "    <span aria-hidden='true'>&times;</span>"
                    + "  </button>"
                    + "</div>";
            request.setAttribute("data", alert);
            getServletConfig().getServletContext()
                    .getRequestDispatcher("/register.jsp").forward(request, response);

        } else {

            db.addUsr(request.getParameter("username"), request.getParameter("email"), request.getParameter("pass1"));

            String alert = "<div class='alert alert-success alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-50' role='alert'>"
                    + "  Successful Registration!<br>Please login."
                    + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                    + "    <span aria-hidden='true'>&times;</span>"
                    + "  </button>"
                    + "</div>";
            request.setAttribute("data", alert);
            getServletConfig().getServletContext()
                    .getRequestDispatcher("/login.jsp").forward(request, response);

        }

    }

    public String errorMsg(String str) {

        return "<div class='alert alert-danger alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-50' role='alert'>"
                + str
                + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                + "    <span aria-hidden='true'>&times;</span>"
                + "  </button>"
                + "</div>";

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);

        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
