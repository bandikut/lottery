package hu.lottery.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.lottery.model.NumbersByHand;
import hu.lottery.repository.NumbersByHandRepository;

@Service
public class NumbersByHandService {
	private List<NumbersByHand> wholeList = new ArrayList<NumbersByHand>();
	Map<Integer, Integer> sortedFrequencies = new LinkedHashMap<Integer, Integer>();

	@Autowired
	NumbersByHandRepository numbersByHandRepository;

	public List<NumbersByHand> getAllNumsByHand() {
		wholeList = numbersByHandRepository.findAll();
		return wholeList;
	}

	public Map<Integer, Integer> orderNumbersByFrequency() {
		// future map for the numbers frequency, ordered bí the numbers (1-35)
		Map<Integer, Integer> topNumbers = new TreeMap<Integer, Integer>();
		// list of the numbers from the object
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
		// fill the map with the number frequency
		for (int i = 1; i < 36; i++) {
			topNumbers.put(i, 0);
			topNumbers.put(i, Collections.frequency(numList, i));
		}
		// list for the comparator
		List<Map.Entry<Integer, Integer>> list = new LinkedList<Map.Entry<Integer, Integer>>(topNumbers.entrySet());
		// ordering the frequencies ordering by the maps keys
		Collections.sort(list, new Comparator<Map.Entry<Integer, Integer>>() {
			public int compare(Map.Entry<Integer, Integer> o1, Map.Entry<Integer, Integer> o2) {
				return (o1.getValue()).compareTo(o2.getValue());
			}
		});
		// put in frequnency order into a new map
		for (Entry<Integer, Integer> entry : list) {
			sortedFrequencies.put(entry.getKey(), entry.getValue());
		}

		for (Map.Entry<Integer, Integer> entry : sortedFrequencies.entrySet()) {
			System.out.println("Key: " + entry.getKey() + ". Value: " + entry.getValue());
		}

		return sortedFrequencies;
	}

	public NumbersByHand getSevenNumbers(Integer n1, Integer n2, Integer n3, Integer n4, Integer n5, Integer n6,
			Integer n7) {
		return numbersByHandRepository.findByHand(n1, n2, n3, n4, n5, n6, n7);
	}

}
