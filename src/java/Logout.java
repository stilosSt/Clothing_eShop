
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
public class Logout extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        HttpSession session = request.getSession(false);

        if (session != null) {
            session.invalidate();
        }

        String alert = "<div class='alert alert-success alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-100' role='alert'>"
                + "  <strong>Goodbye!</strong>"
                + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                + "    <span aria-hidden='true'>&times;</span>"
                + "  </button>"
                + "</div>";
        request.setAttribute("data", alert);
        getServletConfig().getServletContext()
                .getRequestDispatcher("/index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        doGet(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
