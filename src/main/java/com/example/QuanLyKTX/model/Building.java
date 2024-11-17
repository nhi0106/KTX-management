package com.example.QuanLyKTX.model;


import jakarta.persistence.*;

@Entity
@Table(name = "BUILDING")
public class Building {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long buildingID;

    @Column(name = "BUILDINGNAME")
    private String buildingName;
    
    @Column(name = "BUILDINGTYPE")
    private String buildingType;
    
    @Column(name = "TOTALFLOORS")
    private int totalFloors;

    public Building() {
        // Default constructor
    }

    public Building(String buildingName, String buildingType, int totalFloors) {
        this.buildingName = buildingName;
        this.buildingType = buildingType;
        this.totalFloors = totalFloors;
    }

    // Getters and setters
    public Long getBuildingID() {
        return buildingID;
    }

    public void setBuildingID(Long buildingID) {
        this.buildingID = buildingID;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName;
    }

    public String getBuildingType() {
        return buildingType;
    }

    public void setBuildingType(String buildingType) {
        this.buildingType = buildingType;
    }

    public int getTotalFloors() {
        return totalFloors;
    }

    public void setTotalFloors(int totalFloors) {
        this.totalFloors = totalFloors;
    }
}
