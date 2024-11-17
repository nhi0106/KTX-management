package com.example.QuanLyKTX.controller;

import java.time.LocalDate;
import java.util.*;

import com.example.QuanLyKTX.model.Building;
import com.example.QuanLyKTX.model.Room;
import com.example.QuanLyKTX.service.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import com.example.QuanLyKTX.service.BuildingService;

import com.example.QuanLyKTX.service.RoomService;

@Controller
public class RoomController {

    @Autowired
    private RoomService roomService = new RoomService();

    private BuildingService buildingService;

    private StudentService studentService;

    public RoomService getRoomService() {
        return this.roomService;
    }

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    @Autowired
    public RoomController(RoomService roomService, BuildingService buildingService, StudentService studentService) {
        this.roomService = roomService;
        this.buildingService = buildingService;
        this.studentService = studentService;
    }

    // contructor mặc định
    public RoomController() {
    }

    // hiển thị trang tìm kiếm phòng
    @GetMapping("/rooms")
    public String showRoomSearchForm(Model model) {
        model.addAttribute("buildings", buildingService.getAllBuildings());
        model.addAttribute("room", new Room());

        return "room-search";
    }

    @PostMapping("/rooms/search")
    public String searchRooms(@ModelAttribute Room room, Model model) {
        if (room.getBuilding() == null) {
            System.out.println("Building is null");
            model.addAttribute("error", "Building is required");
            return "room-search";
        }

        Long buildingID = room.getBuilding().getBuildingID();
        int capacity = room.getCapacity();
        String buildingType = room.getBuilding().getBuildingType();
        System.out.println(room);
        System.out.println("Building ID: " + buildingID);
        System.out.println("Capacity: " + capacity);
        System.out.println("Building Type: " + buildingType);

        if (buildingID == null || buildingType == null) {
            System.out.println("Building ID or Building Type is null");
            model.addAttribute("error", "Building ID and Building Type are required");
            return "room-search";

        }

        List<Room> rooms = roomService.getRoomsByCriteria(buildingID, capacity, buildingType);

        System.out.println("Found rooms: " + rooms.size());
        model.addAttribute("rooms", rooms);
        return "room-list";
    }

    // hiển thị chi tiết phòng
    @GetMapping("/rooms/{id}")
    public String viewRoomDetails(@PathVariable Long id, Model model) {
        Room room = roomService.getRoomById(id);
        model.addAttribute("room", room);
        return "room-details";
    }

    // kỹ thuật ajax :v

    @GetMapping("/api/rooms")
    public ResponseEntity<List<Room>> getAllRooms() {
        List<Room> rooms = roomService.getAllRooms();
        return ResponseEntity.ok(rooms);
    }

    @PostMapping("api/rooms")
    public ResponseEntity<Room> addRoom(@RequestBody Room room) {
        System.out.println(room);
        Room savedRoom = roomService.saveRoom(room);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedRoom);
    }

    @GetMapping("api/rooms/{roomId}")
    public ResponseEntity<Room> getRoomById(@PathVariable Long roomId) {
        Room room = roomService.findById(roomId);
        return ResponseEntity.ok(room);
    }


    @PutMapping("/api/rooms/{roomId}")
    public ResponseEntity<Room> updateStudent(@PathVariable Long roomId, @RequestBody Room updatedRoom) {
        Room room = roomService.updateRoom(roomId, updatedRoom);
        if (room == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
        return ResponseEntity.ok(room);
    }

    @DeleteMapping("/api/rooms/{roomId}")
    public ResponseEntity<Void> deleteRoom(@PathVariable Long roomId) {
        boolean isDeleted = roomService.deleteRoom(roomId);
        if (!isDeleted) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        return ResponseEntity.ok().build();
    }

    @GetMapping("/api/rooms/status-count")
    public ResponseEntity<Map<String, Long>> getRoomStatusCount() {
        Map<String, Long> statusCount = roomService.getRoomStatusCount();
        return ResponseEntity.ok(statusCount);
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof RoomController)) {
            return false;
        }
        RoomController roomController = (RoomController) o;
        return Objects.equals(roomService, roomController.roomService);
    }

    @Override
    public String toString() {
        return "{" +
                " roomService='" + getRoomService() + "'" +
                "}";
    }

}
