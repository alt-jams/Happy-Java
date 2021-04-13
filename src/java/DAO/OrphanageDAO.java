/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.Orphanage;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author Jamilly
 */
public class OrphanageDAO extends GenericDAO<Integer, Orphanage>{
    
    public List<Orphanage> getAcceptedOrphanages(){
        List<Orphanage> orphanages;
        TypedQuery<Orphanage> query
                = em.createQuery("SELECT o FROM Orphanage o WHERE o.status = :status", Orphanage.class);
        query.setParameter("status", true);

        try {
            orphanages= query.getResultList();
        } catch (NoResultException e) {
            return null;
        } finally {

        }
        return orphanages;
    }
    
    public List<Orphanage> getWaitingOrphanages(){
        List<Orphanage> orphanages;
        TypedQuery<Orphanage> query
                = em.createQuery("SELECT o FROM Orphanage o WHERE o.status = :status", Orphanage.class);
        query.setParameter("status", false);

        try {
            orphanages= query.getResultList();
        } catch (NoResultException e) {
            return null;
        } finally {

        }
        return orphanages;
    }
}
