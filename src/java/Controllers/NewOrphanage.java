/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.Image;
import Globals.Globals;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Entities.Orphanage;
import Models.OrphanageModel;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author Jamilly
 */
@WebServlet(name = "NewOrphanage", urlPatterns = {"/NewOrphanage"})
@MultipartConfig
public class NewOrphanage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("NewOrphanage.jsp").forward(request, response); 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        
        String latitude = request.getParameter("latitude");
        String longitude = request.getParameter("longitude");
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phone_number");
        String about = request.getParameter("about");
        String instructions = request.getParameter("instructions");
        String openingHours = request.getParameter("opening_hours"); 
        
        boolean openOnWeekends;
        
        if (request.getParameter("open_on_weekends").equals("yes")){
            openOnWeekends = true;
        }else{
            openOnWeekends = false;
        }
        
        Orphanage o = new Orphanage(name, phoneNumber, latitude, longitude, about, instructions, openingHours, openOnWeekends);
        o.setImages(this.saveImage(request, o));
        
        OrphanageModel model = new OrphanageModel();
        model.insertOrphanage(o);
        
        response.sendRedirect("Done");
    }
    
    
    private ArrayList<Image> saveImage(HttpServletRequest request, Orphanage orphanage)
    throws IOException, ServletException{
        ArrayList<Image> images = new ArrayList();
        
        for (Part filePart : request.getParts()){
            if(filePart.getName().equals("image")){
                String folder = Globals.filePath;
                String name = UUID.randomUUID().toString();
                Path path = Paths.get(folder.concat(name));
                Files.copy(filePart.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
      
                images.add(new Image(orphanage, name, filePart.getContentType()));            
            }
        }
        return images;
    }
    
}
