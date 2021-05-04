/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DAO.UserDAO;
import Entities.User;

/**
 *
 * @author Jamilly
 */
public class UserModel {
    
    public User login(String email, String password){
        
        User user = null;
        
        if (!email.equals("") && !password.equals("")){
            UserDAO dao = new UserDAO();
            user = dao.login(email, password);
        }  
        
        return user;
    }
}
