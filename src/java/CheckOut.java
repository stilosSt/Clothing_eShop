
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author stavros
 */
public class CheckOut extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String bank = request.getParameter("bank");
        String card_id = request.getParameter("card_id");
        String card_pass = request.getParameter("card_pass");

        DBValidation db = new DBValidation();

        boolean valid = true;
        if (db.validatePurchase(email, pass)) {

            try {
                Object obj = new JSONParser().parse(new FileReader("C:\\Users\\stavros\\Desktop\\json\\accounts.json"));
                JSONObject jo = (JSONObject) obj;

                Map map = ((Map) jo.get(bank));

                if (map != null) {
                    for (Object key : map.keySet()) {
                        if (key.equals("fname") && !map.get(key).equals(fname)) {
                            valid = false;
                            break;
                        } else if (key.equals("lname") && !map.get(key).equals(lname)) {
                            valid = false;
                            break;
                        } else if (key.equals("card_id") && !map.get(key).equals(card_id)) {
                            valid = false;
                            break;
                        } else if (key.equals("card_pass") && !map.get(key).equals(card_pass)) {
                            valid = false;
                            break;
                        }
                    }
                } else {
                    valid = false;
                }

            } catch (ParseException ex) {
                Logger.getLogger(CheckOut.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            valid = false;
        }
        String alert;

        if (valid) {
            alert = "<div class='alert alert-success alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-50' role='alert'>"
                    + "  Purchase completed!<br>"
                    + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                    + "    <span aria-hidden='true'>&times;</span>"
                    + "  </button>"
                    + "</div>";

            HttpSession session = request.getSession(false);
            db.clearItems((Integer) session.getAttribute("id"));

        } else {

            alert = "<div class='alert alert-warning alert-dismissible fade show ml-auto mr-auto mt-1 text-center w-50' role='alert'>"
                    + "  Something went <strong>wrong</strong>...<br>"
                    + "<p>Please try again!</p>"
                    + "  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
                    + "    <span aria-hidden='true'>&times;</span>"
                    + "  </button>"
                    + "</div>";
        }

        request.setAttribute("data", alert);
        if (!response.isCommitted()) {
            getServletConfig().getServletContext()
                    .getRequestDispatcher("/basket.jsp").forward(request, response);

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
