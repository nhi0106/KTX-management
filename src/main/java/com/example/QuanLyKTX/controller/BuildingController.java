package com.example.QuanLyKTX.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

import com.example.QuanLyKTX.model.Building;
import com.example.QuanLyKTX.model.MonthlyBookingCount;
import com.example.QuanLyKTX.service.BookingService;
import com.example.QuanLyKTX.service.BuildingService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BuildingController {
    private BuildingService buildingService = null;
    private BookingService bookingService = null;

    public BuildingController(BuildingService buildingService,BookingService bookingService) {
        this.buildingService = buildingService;
        this.bookingService = bookingService;
    }

    @GetMapping("/building/getAllBuiding")
    public List<Building> getAllBuilding() {
        return buildingService.getAllBuildings();
    }

    @GetMapping(value = "/api/buildings", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Building> getAllBuildings() {
        return buildingService.getAllBuildings();
    }

    @PostMapping("/api/buildings")
    public ResponseEntity<Building> addBuilding(@RequestBody Building building) {
        Building savedBuilding = buildingService.saveBuilding(building);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedBuilding);
    }

    @GetMapping("/api/buildings/{buidlingId}")
    public ResponseEntity<Building> getBuildingById(@PathVariable Long buidlingId) {
        Building buidling = buildingService.findById(buidlingId);
        return ResponseEntity.ok(buidling);
    }

    @PutMapping("/api/buildings/{buidlingId}")
    public ResponseEntity<Building> updateBuilding(@PathVariable Long buidlingId,
            @RequestBody Building updatedBuilding) {
        Building building = buildingService.updateBuilding(buidlingId, updatedBuilding);
        if (building == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
        return ResponseEntity.ok(building);
    }

    @DeleteMapping("/api/buildings/{buidlingId}")
    public ResponseEntity<Void> deleteBuilding(@PathVariable Long buidlingId) {
        boolean isDeleted = buildingService.deleteBuilding(buidlingId);
        if (!isDeleted) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        return ResponseEntity.ok().build();
    }

}
