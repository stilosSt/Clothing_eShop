
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author stavros
 */
public class Basket extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false);
        if (session.getAttribute("id") != null) {

            if (request.getParameter("size").equals("Select size")) {

                String alert = "<div class='alert alert-danger alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-70' role='alert'>"
                        + "  Please Select Size."
                        + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                        + "    <span aria-hidden='true'>&times;</span>"
                        + "  </button>"
                        + "</div>";

                request.setAttribute("data", alert);
                getServletConfig().getServletContext()
                        .getRequestDispatcher("/" + request.getParameter("type") + ".jsp").forward(request, response);

            } else {
                DBValidation db = new DBValidation();

                int item_id = Integer.parseInt(request.getParameter("id"));
                int user_id = (Integer) session.getAttribute("id");
                String size = request.getParameter("size");

                db.addItem(user_id, item_id, size);

                String alert = "<div class='alert alert-success alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-70' role='alert'>"
                        + "  Item added successfully."
                        + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                        + "    <span aria-hidden='true'>&times;</span>"
                        + "  </button>"
                        + "</div>";

                request.setAttribute("data", alert);
                getServletConfig().getServletContext()
                        .getRequestDispatcher("/" + request.getParameter("type") + ".jsp").forward(request, response);

                getServletConfig().getServletContext()
                        .getRequestDispatcher("/" + request.getParameter("type") + ".jsp").forward(request, response);
            }

        } else {

            String alert = "<div class='alert alert-danger alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-70' role='alert'>"
                    + "  You can't add items to the basket as visitor.<br>"
                    + "  Please <strong>login</strong>."
                    + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                    + "    <span aria-hidden='true'>&times;</span>"
                    + "  </button>"
                    + "</div>";

            request.setAttribute("data", alert);
            getServletConfig().getServletContext()
                    .getRequestDispatcher("/" + request.getParameter("type") + ".jsp").forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
