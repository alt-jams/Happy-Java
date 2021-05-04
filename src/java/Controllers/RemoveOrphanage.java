/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.OrphanageModel;
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
@WebServlet(name = "RemoveOrphanage", urlPatterns = {"/RemoveOrphanage"})
public class RemoveOrphanage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        try {
            int id = Integer.parseInt(request.getParameter("id"));
        
            OrphanageModel model = new OrphanageModel();
            model.deleteOrphanage(id);

            response.sendRedirect("Dashboard");
            
        } catch (NumberFormatException e) {
            response.sendRedirect("Dashboard");
        }  
    }

}
