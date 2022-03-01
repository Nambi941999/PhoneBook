package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Phonebook;

public interface PhoneBookRepo extends JpaRepository<Phonebook, Integer> {

}
