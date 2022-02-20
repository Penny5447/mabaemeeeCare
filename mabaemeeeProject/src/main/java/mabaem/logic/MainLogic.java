package mabaem.logic;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mabaem.dao.MainDao;

@Service
public class MainLogic {
	Logger logger = Logger.getLogger(MainLogic.class);
	
	@Autowired
	private MainDao mainDao = null;
	
	int result = 0;
	List<Map<String, Object>> list = null;
	Map<String, Object> rMap;
	

	public Map<String, Object> mainPage(Map<String, Object> pMap) {
		logger.info(pMap);
		rMap = mainDao.mainPage(pMap);
		return rMap;
	}
	
}
