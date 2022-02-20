package mabaem.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class MainDao {
	private SqlSessionTemplate sqlSessionTemplate=null;
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	

	List<Map<String, Object>> list;
	Map<String, Object> rMap;
	int result;
	String nameSpace = "mabaem.mybatis.mapper.main.";

	
	//─────[ 온습도조회 ]────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
	public Map<String, Object> mainPage(Map<String, Object> pMap) {
		rMap = sqlSessionTemplate.selectOne(nameSpace+"temp_hum", pMap);
		return rMap;
	}
	
}