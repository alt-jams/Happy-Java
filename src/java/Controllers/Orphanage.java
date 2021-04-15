/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.Image;
import Models.ImageModel;
import Models.OrphanageModel;
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
@WebServlet(name = "Orphanage", urlPatterns = {"/Orphanage"})
public class Orphanage extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        OrphanageModel model = new OrphanageModel();
        Entities.Orphanage orphanage = model.getOrphanage(id);
        
        if (orphanage == null ){
            response.sendRedirect("OrphanagesMap");
        }else{
            ImageModel imageModel = new ImageModel();
            List<Image> images = imageModel.getOrphanageImages(orphanage.getId());
            
            request.setAttribute("images", images);
            request.setAttribute("orphanage", orphanage);
            request.getRequestDispatcher("Orphanage.jsp").forward(request, response);
        }
        
        
    }
}
