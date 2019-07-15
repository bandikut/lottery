package test.first.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import test.first.model.Lotto;

@Repository
public class LottoRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private List<Map<String, Object>> resultSize;
	

	public List<Lotto> getAllLottoData() {
		List<Lotto> lottoList = new ArrayList<Lotto>();
		List<Map<String, Object>> result;
		try {
			result = jdbcTemplate.queryForList("SELECT * FROM connection_test_hybernate.lottoszamok");
			for (Map<String, Object> object : result) {
				lottoList.add(new Lotto(Integer.valueOf(object.get("id").toString()), // id int
						Integer.valueOf(object.get("year").toString()), // year int
						Integer.valueOf(object.get("week").toString()), // week int
						object.get("pick_date").toString(), // date string
						Integer.valueOf(object.get("seven_match_count").toString()), // sevenM int
						object.get("seven_prize").toString(), // sevenP string
						Integer.valueOf(object.get("six_match_count").toString()), // sixM int
						object.get("six_prize").toString(), // sixP string
						Integer.valueOf(object.get("five_match_count").toString()), // fiveM
						object.get("five_prize").toString(), // fiveP
						Integer.valueOf(object.get("four_match_count").toString()), // fourM
						object.get("four_prize").toString(), // fourP
						Integer.valueOf(object.get("m1").toString()), // m1
						Integer.valueOf(object.get("m2").toString()), // m2
						Integer.valueOf(object.get("m3").toString()), // m3
						Integer.valueOf(object.get("m4").toString()), // m4
						Integer.valueOf(object.get("m5").toString()), // m5
						Integer.valueOf(object.get("m6").toString()), // m6
						Integer.valueOf(object.get("m7").toString()), // m7
						Integer.valueOf(object.get("h1").toString()), // h1
						Integer.valueOf(object.get("h2").toString()), // h2
						Integer.valueOf(object.get("h3").toString()), // h3
						Integer.valueOf(object.get("h4").toString()), // h4
						Integer.valueOf(object.get("h5").toString()), // h5
						Integer.valueOf(object.get("h6").toString()), // h6
						Integer.valueOf(object.get("h7").toString()) // h7
				));
			}
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("the query is empty");
		}

		return lottoList;
	}
		

	public List<Lotto> getCustomNumbers(int a) {
		List<Lotto> lottoList = new ArrayList<Lotto>();
		List<Map<String, Object>> result;
		try {
			result = jdbcTemplate.queryForList("SELECT * FROM connection_test_hybernate.lottoszamok where "
					+ "m1='"+a+"' OR h1='"+a+"';");
			for (Map<String, Object> object : result) {
				lottoList.add(new Lotto(Integer.valueOf(object.get("id").toString()), // id int
						Integer.valueOf(object.get("year").toString()), // year int
						Integer.valueOf(object.get("week").toString()), // week int
						object.get("pick_date").toString(), // date string
						Integer.valueOf(object.get("seven_match_count").toString()), // sevenM int
						object.get("seven_prize").toString(), // sevenP string
						Integer.valueOf(object.get("six_match_count").toString()), // sixM int
						object.get("six_prize").toString(), // sixP string
						Integer.valueOf(object.get("five_match_count").toString()), // fiveM
						object.get("five_prize").toString(), // fiveP
						Integer.valueOf(object.get("four_match_count").toString()), // fourM
						object.get("four_prize").toString(), // fourP
						Integer.valueOf(object.get("m1").toString()), // m1
						Integer.valueOf(object.get("m2").toString()), // m2
						Integer.valueOf(object.get("m3").toString()), // m3
						Integer.valueOf(object.get("m4").toString()), // m4
						Integer.valueOf(object.get("m5").toString()), // m5
						Integer.valueOf(object.get("m6").toString()), // m6
						Integer.valueOf(object.get("m7").toString()), // m7
						Integer.valueOf(object.get("h1").toString()), // h1
						Integer.valueOf(object.get("h2").toString()), // h2
						Integer.valueOf(object.get("h3").toString()), // h3
						Integer.valueOf(object.get("h4").toString()), // h4
						Integer.valueOf(object.get("h5").toString()), // h5
						Integer.valueOf(object.get("h6").toString()), // h6
						Integer.valueOf(object.get("h7").toString()) // h7
				));
			}
			
		} catch (DataAccessException ee) {
			// TODO Auto-generated catch block
			ee.printStackTrace();
		}
		
		return lottoList;
	}
	
	public Long howManyTimes(int a) {
		List<Map<String, Object>> result;
		Map<String, Object> resultMap;
		String sql ="SELECT COUNT(id), id  FROM lottoszamok WHERE "
				+ "m1=13 OR m2=13 OR m3=13 OR m4=13 OR m5=13 OR m6=13 OR m7=13 OR h1=13 OR h2=13 OR h3=13 OR h4=13 OR h5=13 OR h6=13 OR h7=13";
		result = jdbcTemplate.queryForList(sql);
		resultMap= result.get(0);

		Long listSize = (Long) resultMap.values().toArray()[0];
		
		return  listSize;
	}
		
}
