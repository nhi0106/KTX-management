package com.example.QuanLyKTX.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.QuanLyKTX.model.Building;
import com.example.QuanLyKTX.repository.BuildingRepository;

@Service
public class BuildingService {
    
    @Autowired
    private BuildingRepository buidlingRepository;

    public List<Building> getAllBuildings() {
        return buidlingRepository.findAll();
    }

    
    public Building saveBuilding(Building building) {
        return buidlingRepository.save(building);
    }

    public Building findById(Long buildingId) {
        return buidlingRepository.findById(buildingId).orElse(null);
    }

    public Building updateBuilding(Long buildingId, Building updatedBuilding) {
        return buidlingRepository.findById(buildingId).map(building -> {
            building.setBuildingName(updatedBuilding.getBuildingName());
            building.setBuildingType(updatedBuilding.getBuildingType());
            building.setTotalFloors(updatedBuilding.getTotalFloors());
            return buidlingRepository.save(building);
        }).orElse(null);
    }
    
    public boolean deleteBuilding(long buildingId) {
        if (buidlingRepository.existsById(buildingId)) {
            buidlingRepository.deleteById(buildingId);
            return true;
        }
        return false;
    }
}
