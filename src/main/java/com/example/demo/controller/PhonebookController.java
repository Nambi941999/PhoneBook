package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.Phonebook;
import com.example.demo.service.PhonebookService;

@Controller
public class PhonebookController {

	@Autowired
	private PhonebookService phoneBookService;

	@GetMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		Phonebook phoneBook = new Phonebook();
		mav.addObject("phoneBook", phoneBook);
		mav.setViewName("index");
		return mav;
	}

	@PostMapping(value = {"/savePhone",})
	public ModelAndView savePhoneBook(Phonebook phoneBook) {
		boolean saved = phoneBookService.saveData(phoneBook);
		ModelAndView mav = new ModelAndView();

		if (saved) {
			mav.addObject("success", "Contact Saved Successfully !!!");

		} else {
			mav.addObject("failed", "Contact is Not saved ");
		}
		mav.addObject("phoneBook", phoneBook);

		mav.setViewName("index");
		return mav;

	}

	@GetMapping("allContact")
	public ModelAndView getAllPhone() {
		ModelAndView mav = new ModelAndView();
		List<Phonebook> allPhone = phoneBookService.getAllPhoneBook();
		mav.addObject("allPhone", allPhone);
		mav.setViewName("data");
		return mav;
	}

	@GetMapping("delete/{id}")
	public ModelAndView deleteById(@PathVariable("id") Integer id) {

		ModelAndView mav = new ModelAndView();
		boolean isDelete = phoneBookService.deleteById(id);
		if (isDelete) {
			mav.addObject("success", "deleted successfully");
		} else {
			mav.addObject("failed", "Fail to delete");
		}
		mav.setViewName("redirect:/allContact");
		return mav;
	}
	
	@GetMapping("update")
	public ModelAndView updateById(@RequestParam("id") Integer id) {
		ModelAndView mav = new ModelAndView();
		Phonebook phoneBook = phoneBookService.getPhoneById(id);
		mav.addObject("phoneBook", phoneBook);
		mav.setViewName("index");
		
		return mav;
	}

}
