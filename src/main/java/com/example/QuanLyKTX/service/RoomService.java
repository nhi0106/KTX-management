package com.example.QuanLyKTX.service;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.example.QuanLyKTX.model.Room;
import com.example.QuanLyKTX.repository.RoomRepository;

import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomService {

    @Autowired
    private RoomRepository roomRepository;

    public List<Room> getAllRooms() {
        return roomRepository.findAll();
    }

    public Room saveRoom(Room room) {
        return roomRepository.save(room);
    }

    public Room findById(Long roomId) {
        return roomRepository.findById(roomId).orElse(null);
    }

    public Room updateRoom(Long roomId, Room updatedRoom) {
        return roomRepository.findById(roomId).map(room -> {
            room.setRoomNumber(updatedRoom.getRoomNumber());
            room.setCapacity(updatedRoom.getCapacity());
            room.setFloor(updatedRoom.getFloor());
            room.setBuilding(updatedRoom.getBuilding());
            room.setStatus(updatedRoom.getStatus());
            return roomRepository.save(room);
        }).orElse(null);
    }

    @Transactional(isolation = Isolation.SERIALIZABLE)
    public Room updateRoomStatus(Long roomId, String status) {
        Room room = roomRepository.findById(roomId).orElseThrow(() -> new IllegalArgumentException("Invalid room ID"));
        room.setStatus(status);
        return roomRepository.save(room);
    }


    public boolean deleteRoom(Long roomId) {
        if (roomRepository.existsById(roomId)) {
            roomRepository.deleteById(roomId);
            return true;
        }
        return false;
    }

    public Map<String, Long> getRoomStatusCount() {
        List<Room> rooms = roomRepository.findAll();
        Map<String, Long> statusCount = new HashMap<>();
        statusCount.put("Available", rooms.stream().filter(room -> "Available".equals(room.getStatus())).count());
        statusCount.put("Full", rooms.stream().filter(room -> "Full".equals(room.getStatus())).count());
        return statusCount;
    }

    public Room getRoomById(Long id) {
        Optional<Room> room = roomRepository.findById(id);
        return room.orElse(null);
    }

    public List<Room> getRoomsByCriteria(Long buildingID, int capacity, String buildingType) {
        return roomRepository.findByBuildingBuildingIDAndCapacityAndBuildingBuildingType(buildingID, capacity,
                buildingType);
    }

}
