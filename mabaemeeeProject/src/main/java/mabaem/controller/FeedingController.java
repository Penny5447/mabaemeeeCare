package mabaem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("")
@Log4j
public class FeedingController {

	@RequestMapping("/feedingPage")
	public String feedingPage () {

		log.info("여기이이이이이ㅣ");
		
		return "/feeding/feedingPage";
	}
	
	@RequestMapping("/pop_feedUpdate")
	public String feedUpdate () {
		
		log.info("Update");
		
		return "/feeding/pop_feedUpdate";
	}
	
	@RequestMapping("/pop_feedDelete")
	public String feedDelete () {
		
		log.info("delete");
		
		return "/feeding/pop_feedDelete";
	}
	
}


	
	
