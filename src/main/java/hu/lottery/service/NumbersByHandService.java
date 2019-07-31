package hu.lottery.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.lottery.model.NumbersByHand;
import hu.lottery.repository.NumbersByHandRepository;

@Service
public class NumbersByHandService {
	private List<NumbersByHand> wholeList = new ArrayList<NumbersByHand>();

	@Autowired
	NumbersByHandRepository numbersByHandRepository;

	public List<NumbersByHand> getAllNumsByHand() {
		wholeList = numbersByHandRepository.findAll();
		return wholeList;
	}
	
	public Integer[] topSevenNumbers () {
		Map<Integer, Integer> topNumbers = new TreeMap<Integer,Integer>();
		for (int i = 1; i < 36; i++) {
			topNumbers.put(i, null);
		}
		
		return null;
	}
	
}
