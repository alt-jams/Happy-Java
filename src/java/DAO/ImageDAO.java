/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.Image;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author Jamilly
 */
public class ImageDAO extends GenericDAO<Integer, Image>{
    
    public List<Image> getOrphanagesImages(int fk) {
        List<Image> images;
        TypedQuery<Image> query
                = em.createQuery("SELECT i FROM Image i WHERE i.orphanage.id = :fk", Image.class);
        query.setParameter("fk", fk);

        try {
            images = query.getResultList();
        } catch (NoResultException e) {
            return null;
        } finally {

        }
        return images;
    }
}
