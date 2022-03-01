package com.example.demo.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Phonebook {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String name;
	private String email;
	private String mobileno;

	// auditing

	private LocalDateTime createdData;
	private LocalDateTime updateData;

	public Phonebook() {
		// TODO Auto-generated constructor stub
	}

	public Phonebook(String name, String email, String mobileno, LocalDateTime createdData, LocalDateTime updateData) {
		super();
		this.name = name;
		this.email = email;
		this.mobileno = mobileno;
		this.createdData = createdData;
		this.updateData = updateData;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDateTime getCreatedData() {
		return createdData;
	}

	public void setCreatedData(LocalDateTime createdData) {
		this.createdData = createdData;
	}

	public LocalDateTime getUpdateData() {
		return updateData;
	}

	public void setUpdateData(LocalDateTime updateData) {
		this.updateData = updateData;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	@Override
	public String toString() {
		return "Phonebook [id=" + id + ", name=" + name + ", email=" + email + ", mobileno=" + mobileno
				+ ", createdData=" + createdData + ", updateData=" + updateData + "]";
	}

}
