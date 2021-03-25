/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.User;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author Jamilly
 */
public class UserDAO extends GenericDAO<Integer, User> {
    
    public User login(String email, String password){
        
        TypedQuery<User> query = em.createQuery("SELECT u FROM User u WHERE u.email = :email AND u.password = :password",
                User.class);
        query.setParameter("email", email);
        query.setParameter("password", password);

        User u = null;

        try {
            u = query.getSingleResult();
        } catch (NoResultException e) {
            u = null;
        } finally {
        }

        return u;
    }
}
