/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.Image;
import Entities.Orphanage;
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
@WebServlet(name = "UpdateOrphanage", urlPatterns = {"/UpdateOrphanage"})
public class UpdateOrphanage extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
         int id = Integer.parseInt(request.getParameter("id"));
        
        OrphanageModel model = new OrphanageModel();
        Orphanage orphanage = model.getOrphanage(id);
        
        ImageModel imageModel = new ImageModel();
        List<Image> images = imageModel.getOrphanageImages(orphanage.getId());
            
        request.setAttribute("images", images);
        request.setAttribute("orphanage", orphanage);
        request.getRequestDispatcher("UpdateOrphanage.jsp").forward(request, response); 
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        OrphanageModel model = new OrphanageModel();
        Entities.Orphanage o = model.getOrphanage(id);
        
        o.setLatitude(request.getParameter("latitude"));
        o.setLongitude(request.getParameter("longitude"));
        o.setName(request.getParameter("name"));
        o.setPhoneNumber(request.getParameter("phone_number"));
        o.setAbout(request.getParameter("about"));
        o.setInstructions(request.getParameter("instructions"));
        o.setOpeningHours(request.getParameter("opening_hours"));
        
        if (request.getParameter("open_on_weekends").equals("yes")){
            o.setOpenOnWeekends(true);
        }else{
            o.setOpenOnWeekends(false);
        }
        
        model.UpdateOrphanage(o);
        
        response.sendRedirect("Dashboard");
        
    }
}
