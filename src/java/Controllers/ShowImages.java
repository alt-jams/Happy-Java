/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.Image;
import Globals.Globals;
import Models.ImageModel;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
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
@WebServlet(name = "ShowImages", urlPatterns = {"/ShowImages"})
public class ShowImages extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        
        int imageId = Integer.parseInt(request.getParameter("id"));
        
        ImageModel model = new ImageModel();
        
        Image image = model.getImage(imageId);
        
        byte[] imageData = loadImage(image.getPath());
        
        response.setContentType(image.getContentType());
        response.getOutputStream().write(imageData);
        
    }
    
    private static byte[] loadImage(String name) throws FileNotFoundException, IOException {
        byte[] image;
        
        File file = new File(Globals.filePath + name);
        image = new byte[(int)file.length()];
        
        FileInputStream fileInputStream = new FileInputStream(file);
        fileInputStream.read(image);
        fileInputStream.close();
        
        return image;
    }

}
