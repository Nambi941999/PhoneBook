package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.PhoneBookRepo;
import com.example.demo.entity.Phonebook;

@Service
public class PhonebookService {

	@Autowired
	private PhoneBookRepo phoneBookRepo;

	public boolean saveData(Phonebook book) {
		Phonebook saveContact = phoneBookRepo.save(book);
		if (saveContact != null) {
			return true;

		} else {
			return false;
		}

	}

	public List<Phonebook> getAllPhoneBook() {
		List<Phonebook> allPhoneBook = phoneBookRepo.findAll();

		return allPhoneBook;
	}

	public boolean deleteById(Integer id) {
		boolean isAvailable = phoneBookRepo.existsById(id);
		if (isAvailable) {
			phoneBookRepo.deleteById(id);
			return true;
		} else {
			return false;
		}

	}

	public Phonebook getPhoneById(Integer id) {
		boolean isAvailable = phoneBookRepo.existsById(id);
		if (isAvailable) {
			Optional<Phonebook> findAllById = phoneBookRepo.findById(id);
			return findAllById.get();
		} else {
			return null;
		}

	}

}
