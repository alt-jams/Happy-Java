/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DAO.OrphanageDAO;
import Entities.Orphanage;
import java.util.List;

/**
 *
 * @author Jamilly
 */
public class OrphanageModel {
    
    
    public boolean insertOrphanage(Orphanage o){
        if (o.getAbout().equals("") || o.getInstructions().equals("") || o.getLatitude().equals("")
                || o.getLongitude().equals("") || o.getName().equals("") || o.getPhoneNumber().equals("")) {
            return false;
        } else {
            OrphanageDAO dao = new OrphanageDAO();
            dao.create(o);
            return true;
        } 
    }
    
    public Orphanage getOrphanage(int id){
        OrphanageDAO dao = new OrphanageDAO();        
        Orphanage orphanage = dao.get(id);
         
        return orphanage;
    }
    
    public List<Orphanage> getAcceptedOrphanages(){
        OrphanageDAO dao = new OrphanageDAO();
        return dao.getAcceptedOrphanages();
    } 
    
    public List<Orphanage> getWaitingOrphanages(){
        OrphanageDAO dao = new OrphanageDAO();   
        return dao.getWaitingOrphanages();
    } 
    
    public boolean UpdateOrphanage(Orphanage o){
        if (o.getAbout().equals("") || o.getInstructions().equals("") || o.getLatitude().equals("")
                || o.getLongitude().equals("") || o.getName().equals("") || o.getPhoneNumber().equals("")){
            return false;
        }else {
            OrphanageDAO dao = new OrphanageDAO();
            dao.update(o);
            return true;
        }
    }
    
    public void deleteOrphanage(int id){
        OrphanageDAO dao = new OrphanageDAO();
        dao.remove(id);
    }    
    
}
