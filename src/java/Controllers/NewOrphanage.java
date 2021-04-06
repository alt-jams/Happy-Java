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
@WebServlet(name = "NewOrphanage", urlPatterns = {"/NewOrphanage"})
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
        // remember - status IsAccepted n images
        
        if (request.getParameter("open_on_weekends").equals("yes")){
            openOnWeekends = true;
        }else{
            openOnWeekends = false;
        }
        
        response.sendRedirect("Done");
    }
}
