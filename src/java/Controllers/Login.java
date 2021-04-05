/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.User;
import Models.UserModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
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
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("Login.jsp").forward(request, response); 
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        
        System.out.println(user);
        System.out.println(password);

        
        UserModel model = new UserModel();
        User loggedIn = model.login(user, password);
        
        
        if(loggedIn == null){
            String error = URLEncoder.encode("Usuário ou senha inválida!", "ISO-8859-1");
            response.sendRedirect("Login?erro=" + error);
            
        }else{
            HttpSession session = request.getSession(true);
            session.setAttribute("isLoggedIn", true);
            response.sendRedirect("Dashboard");
        }
        
    }
    

}
