
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
public class UpdateBasket extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false);
        
        if(request.getParameter("act").equals("update")){
            
            DBValidation db = new DBValidation();
            
            int item_id = Integer.parseInt(request.getParameter("id"));
            int basket_id = Integer.parseInt(request.getParameter("basket_id"));
            double price = Double.parseDouble(request.getParameter("price"));
            String size = request.getParameter("size");
            int user_id = (Integer)session.getAttribute("id");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            double weight = Double.parseDouble(request.getParameter("weight"));
            
            db.updateItem(item_id, basket_id,price, size, user_id, quantity, weight);
            
            response.sendRedirect("basket.jsp");
        }
        else{
            
            DBValidation db = new DBValidation();
            
            int id = Integer.parseInt(request.getParameter("basket_id"));
            int user_id = (Integer)session.getAttribute("id");
            
            db.removeItem(id, user_id);
            response.sendRedirect("basket.jsp");

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
