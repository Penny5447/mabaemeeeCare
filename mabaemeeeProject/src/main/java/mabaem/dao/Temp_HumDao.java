package mabaem.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class Temp_HumDao {
	private SqlSessionTemplate sqlSessionTemplate=null;
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	List<Map<String, Object>> list;
	Map<String, Object> rMap;
	int result;
	String nameSpace = "mabaem.mybatis.mapper.temp_hum.";
}
