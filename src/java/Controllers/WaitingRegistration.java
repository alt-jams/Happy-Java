/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.OrphanageModel;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jamilly
 */
@WebServlet(name = "WaitingRegistration", urlPatterns = {"/WaitingRegistration"})
public class WaitingRegistration extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        OrphanageModel model = new OrphanageModel();
        List<Entities.Orphanage> orphanages = model.getWaitingOrphanages();

        request.setAttribute("orphanages", orphanages);
        request.getRequestDispatcher("WaitingRegistration.jsp").forward(request, response);
        
    }

}
