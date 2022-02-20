package mabaem.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;
import mabaem.logic.MainLogic;

@Controller
@RequestMapping("")
@Log4j
public class MainController {
	
	Logger logger = Logger.getLogger(MainController.class);
	
	Object robj = null;
	
	@Autowired
	MainLogic mainLogic = null;
	
	Map<String, Object> rMap = null;
	
	@RequestMapping("/mainPage")
	public String mainPage(@RequestParam Map<String,Object> pMap, Model model) {
		robj = mainLogic.mainPage(pMap);
		model.addAttribute("temp_hum",robj);
		return "/main/mainPage";
		
	}

}


	
	
