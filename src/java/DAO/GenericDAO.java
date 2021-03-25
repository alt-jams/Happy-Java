/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Jamilly
 */
public class GenericDAO <Pk, Entity>{
    private static final EntityManagerFactory factory = 
           Persistence.createEntityManagerFactory("HappyPU");
    
    EntityManager em;
    
    public GenericDAO(){
        this.em = factory.createEntityManager();
    }
    
    public void create(Entity e){
        em.getTransaction().begin();
        em.persist(e);
        em.getTransaction().commit();
        em.close();
    }
    
    public Entity get(Pk pk) {
        Entity entity = (Entity) em.find(getTypeClass(), pk);
        em.close();
        
        return entity;
    }
    
    public void update(Entity e){
        em.getTransaction().begin();
        em.merge(e);
        em.getTransaction().commit();
        
        em.close();
        
    }
    
    public List<Entity> findAll(){
        return em.createQuery("FROM " + getTypeClass().getName()).getResultList();
    }
    
    public void remove(Pk pk){
        Entity cadastrada = (Entity) em.find(getTypeClass(), pk);
        em.getTransaction().begin();
        em.remove(cadastrada);
        em.getTransaction().commit();
        em.close();

    }
    
    private Class<?> getTypeClass() {
        Class<?> clazz = (Class<?>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        return clazz;
    }
}
