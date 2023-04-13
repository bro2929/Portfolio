package bro.pp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/*private static final Logger logger = LoggerFactory.getLogger(HomeController.class);*/
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
/*		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
		
		return "index";
	}
	
	@RequestMapping(value = "/1", method = RequestMethod.GET)
	public String generic() {
		return "generic";
	}
	
	@RequestMapping(value = "/2", method = RequestMethod.GET)
	public String elements() {
		return "elements";
	}
	
	@RequestMapping(value = "/SignInUp", method = RequestMethod.GET)
	public String signUp1() {
		return "signInUp";
	}

/*	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String list() {
		return "board/list";
	}*/
	
/*	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public String boardDetail() {
		return "board/detail";
	}*/
	
	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String boardWrite() {
		return "board/write";
	}
	
/*	@RequestMapping(value = "/board/edit", method = RequestMethod.GET)
	public String boardEdit() {
		return "board/edit";
	}*/
}
