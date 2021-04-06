/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jamilly
 */
@WebFilter(urlPatterns = {"/Dashboard" , "/Acceptance", "/DeleteOrphanage"})
public class IsUserLoggedIn implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
       
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
      
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
     
        HttpSession session = request.getSession(false);
        
        if (session == null || session.getAttribute("isLoggedIn") == null) {
            response.sendRedirect("Login");
        } else {
            chain.doFilter(req, resp);
        }
    }

    @Override
    public void destroy() {
       
    }
    
}
