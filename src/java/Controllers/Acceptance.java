/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jamilly
 */
@WebServlet(name = "Acceptance", urlPatterns = {"/Acceptance"})
public class Acceptance extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        request.getRequestDispatcher("Acceptance.jsp").forward(request, response);
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        
        String isAcepted = request.getParameter("is_acepted");
        
        if (isAcepted == null) {
            // refused - delete orphanage
        }else{
            //acepted - set status
        }
        
        response.sendRedirect("WaitingRegistration");
    }

}
