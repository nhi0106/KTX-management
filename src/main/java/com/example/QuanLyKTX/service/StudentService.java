package com.example.QuanLyKTX.service;

import com.example.QuanLyKTX.model.Student;
import com.example.QuanLyKTX.model.User;
import com.example.QuanLyKTX.repository.StudentRepository;

import org.apache.el.stream.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.stream.Collectors;
import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;


    @Autowired
    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    

    public Student save(Student student) {
        return studentRepository.save(student);
    }


    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    public Student findById(Long studentId) {
        return studentRepository.findById(studentId).orElse(null);
    }

    public Student updateStudent(Long studentId, Student updatedStudent) {
        return studentRepository.findById(studentId).map(student -> {
            student.setFullName(updatedStudent.getFullName());
            student.setDateOfBirth(updatedStudent.getDateOfBirth());
            student.setGender(updatedStudent.getGender());
            student.setPhoneNumber(updatedStudent.getPhoneNumber());
            student.setSchool(updatedStudent.getSchool());
            student.setMssv(updatedStudent.getMssv());
            student.setRoomId(updatedStudent.getRoomId());
            student.setAddress(updatedStudent.getAddress());
            return studentRepository.save(student);
        }).orElse(null);
    }

    public boolean deleteStudent(Long studentId) {
        if (studentRepository.existsById(studentId)) {
            studentRepository.deleteById(studentId);
            return true;
        }
        return false;
    }

    public List<Student> getStudentsNotInBooking() {
        return studentRepository.findStudentsNotInBooking();
    }

    public long countStudents() {
        return studentRepository.count();
    }

 

}
