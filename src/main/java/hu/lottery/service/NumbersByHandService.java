package hu.lottery.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
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
	
	public Map<Integer, Integer> topSevenNumbers () {
		Map<Integer, Integer> topNumbers = new TreeMap<Integer,Integer>();
		for (int i = 1; i < 36; i++) {
			topNumbers.put(i, 0);
		}
		List<Integer> numList = new ArrayList<Integer>();
		for (NumbersByHand numbersByHand : wholeList) {
			numList.add(numbersByHand.getNum1());
			numList.add(numbersByHand.getNum2());
			numList.add(numbersByHand.getNum3());
			numList.add(numbersByHand.getNum4());
			numList.add(numbersByHand.getNum5());
			numList.add(numbersByHand.getNum6());
			numList.add(numbersByHand.getNum7());
		}
		
		int number =1;
		for (int i = 0; i < numList.size(); i++) {
			int frequency = Collections.frequency(numList,number);
			topNumbers.put(number, frequency);
			i++;
		}
		for (Map.Entry<Integer, Integer> entry : topNumbers.entrySet()) {
		     System.out.println("Key: " + entry.getKey() + ". Value: " + entry.getValue());
		}
		return topNumbers;
	}
	
}
