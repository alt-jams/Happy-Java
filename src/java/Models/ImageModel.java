/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DAO.ImageDAO;
import Entities.Image;
import java.util.List;

/**
 *
 * @author Jamilly
 */
public class ImageModel {
    public List<Image> getOrphanageImages(int fk){
        ImageDAO dao = new ImageDAO();
        List<Image> images = dao.getOrphanagesImages(fk);
        
        return images;
    }
    
    public Image getImage(int id){
        ImageDAO dao = new ImageDAO();
        return dao.get(id);
    }
}
