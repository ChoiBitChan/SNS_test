package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MoreController {

	
	
	
	@RequestMapping("/more.do")
	public String moreForm(){
		return "moreRestaurant";
	}
	
	
	
	
	
}
