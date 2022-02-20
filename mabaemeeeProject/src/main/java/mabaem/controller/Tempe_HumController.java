package mabaem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("")
@Log4j
public class Tempe_HumController {

	@RequestMapping("/temPage")
	public String temPage () {

		log.info("여기이이이이이ㅣ");
		
		return "/temperature/temPage";
	}
	
}


	
	
