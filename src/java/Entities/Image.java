/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Jamilly
 */
@Entity
@Table(name = "image")

public class Image {
    private int id;
    private Orphanage orphanage;
    private String path;
    private String contentType;

    public Image() {
    }
    
    public Image(Orphanage orphanage, String path, String contentType) {
        this.orphanage = orphanage;
        this.path = path;
        this.contentType = contentType;
    }
    
    public Image( String path, String contentType) {
        this.path = path;
        this.contentType = contentType;
    }

    @Id @GeneratedValue(strategy = GenerationType.AUTO)    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne
    @JoinColumn(name="id_orphanage")    
    public Orphanage getOrphanage() {
        return orphanage;
    }

    public void setOrphanage(Orphanage orphanage) {
        this.orphanage = orphanage;
    }

    @Column(name="path", nullable = false)
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Column(nullable = false)
    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }
    
}
