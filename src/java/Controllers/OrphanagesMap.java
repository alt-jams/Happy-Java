package Controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Models.OrphanageModel;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Orphanage;

/**
 *
 * @author Jamilly
 */
@WebServlet(urlPatterns = {"/OrphanagesMap"})
public class OrphanagesMap extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        OrphanageModel model = new OrphanageModel();
        List<Orphanage> orphanages = model.getAcceptedOrphanages();
        
        request.setAttribute("orphanages", orphanages);
        request.getRequestDispatcher("OrphanagesMap.jsp").forward(request, response); 
    }

}
