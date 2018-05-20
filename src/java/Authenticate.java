
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Authenticate implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String uri = req.getRequestURI();
        HttpSession session = req.getSession(false);
        
        if (session.getAttribute("id") != null){
            if(uri.contains("login.jsp") || uri.contains("register.jsp")
                || uri.endsWith("Login") ||uri.endsWith("Register")) {
            res.sendRedirect("index.jsp");
            }
            else{
                chain.doFilter(request, response);
            }
            
        } else{
            if(uri.contains("basket.jsp") || uri.endsWith("CheckOut") ||uri.endsWith("UpdateBasket")) {
                res.sendRedirect("login.jsp");
            }
            else{
                chain.doFilter(request, response);
            }
        }
    }
    
    @Override
    public void destroy() {
    }

    @Override
    public void init(FilterConfig fc) throws ServletException {}



}
