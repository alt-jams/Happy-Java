/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.Image;
import Models.OrphanageModel;
import Entities.Orphanage;
import Models.ImageModel;
import java.io.IOException;
import java.util.List;
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
        int id = Integer.parseInt(request.getParameter("id"));
        
        OrphanageModel model = new OrphanageModel();
        Entities.Orphanage orphanage = model.getOrphanage(id);
        
        ImageModel imageModel = new ImageModel();
        List<Image> images = imageModel.getOrphanageImages(orphanage.getId());
            
        request.setAttribute("images", images);
        
        request.setAttribute("orphanage", orphanage);
        request.getRequestDispatcher("Acceptance.jsp").forward(request, response);
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        
        OrphanageModel model = new OrphanageModel();
        
        int id = Integer.parseInt(request.getParameter("is_acepted"));
        Orphanage o = model.getOrphanage(id);
        o.setStatus(true);
        
        model.UpdateOrphanage(o);
        
        request.getRequestDispatcher("WaitingRegistration.jsp").forward(request, response);
    }

}
