/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.util.List;

/**
 *
 * @author Jamilly
 */
public class Orphanage {
    private int id;
    private String name;
    private String phoneNumber;
    private String latitude;
    private String longitude;
    private String about;
    private String instructions;
    private String openingHours;
    private boolean openOnWeekends;
    private List<Image> images;
    private boolean status;
}
