package sk.garaj.spring.web.springmvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sk.garaj.spring.web.springmvc.dao.Offer;
import sk.garaj.spring.web.springmvc.services.OffersService;

@Controller
public class OffersController {
	
	@Autowired
	private OffersService offersService;

	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String showTest(Model model, @RequestParam("id") String id) {
		System.out.println("Id is " + id);
		return "home";
	}
	
	@RequestMapping("/offers")
	public String showOffers(Model model) {
		List<Offer> offers = offersService.getCurrent();
		
		model.addAttribute("offers", offers);
		return "offers";
	}
	
	@RequestMapping("/addOffer")
	public String addOffer(Model model) {
		model.addAttribute("offer", new Offer());
		
		return "addOffer";
	}
	
	@RequestMapping(value="/doCreate", method=RequestMethod.POST)
	public String doCreate(Model model, @Valid Offer offer, BindingResult result) {
		if(result.hasErrors()) {
			return "addOffer";
		}
		
		System.out.println(offersService.saveOffer(offer));

		return "offerCreated";
	}
}
