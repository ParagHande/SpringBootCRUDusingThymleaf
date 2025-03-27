package com.demo.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.entity.Student;

@Repository public interface StudentRepo extends CrudRepository<Student, Integer>{}
