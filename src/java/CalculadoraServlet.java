import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author uliss
 */
public class CalculadoraServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /* entrada do usuário */
        Double n1 = Double.parseDouble(request.getParameter("n1"));
        Double n2 = Double.parseDouble(request.getParameter("n2"));
        String operacao = request.getParameter("operacao");
        
        Double resultado = null;
        /* processamento */
        switch (operacao) {
            case "somar":
                resultado = n1+n2;
                break;
            case "subtrair":
                resultado = n1-n2;
                break;
            case "multiplicar":
                resultado = n1*n2;
                break;
            case "dividir":
                resultado = n1/n2;
                break;
        }
        
        request.setAttribute("mensagem", resultado);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request, response);                
    }
}
