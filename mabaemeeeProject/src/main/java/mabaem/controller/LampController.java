package mabaem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("")
@Log4j
public class LampController {

	@RequestMapping("/lampPage")
	public String lampPage() {

		log.info("여기이이이이이ㅣ");

		return "/lamp/lampPage";
	}

	
	  @RequestMapping("/pop_lampUpdate") public String lampUpdate () {
	  
	  log.info("Update");
	  
	  return "/lamp/pop_lampUpdate"; }
	  
	  @RequestMapping("/pop_lampDelete") public String lampDelete () {
	  
	  log.info("delete");
	  
	  return "/lamp/pop_lampDelete"; }
	 

}
