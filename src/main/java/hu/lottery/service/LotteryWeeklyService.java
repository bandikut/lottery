package hu.lottery.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.lottery.model.LotteryWeeklyDrawData;
import hu.lottery.repository.LotteryWeeklyRepository;

@Service
public class LotteryWeeklyService {
	private List<LotteryWeeklyDrawData> wholeList = new ArrayList<LotteryWeeklyDrawData>();

	@Autowired
	LotteryWeeklyRepository lotteryWeeklyRepository;

	public List<LotteryWeeklyDrawData> getAllDrawingData() {
		wholeList = lotteryWeeklyRepository.findAll();
		for (LotteryWeeklyDrawData lotteryWeeklyDrawData : wholeList) {
			String temp[] = lotteryWeeklyDrawData.getSevenP().split(" Ft");
			lotteryWeeklyDrawData.setDerivedSevenP(Integer.parseInt((temp[0]).replaceAll("\\s+","")));
		}
		return wholeList;
	}

	public LotteryWeeklyDrawData biggestWinPrice() {
		LotteryWeeklyDrawData maxPrize = Collections.max(wholeList, Comparator.comparing(l -> l.getDerivedSevenP()));
		return maxPrize;
	}
	
	public LotteryWeeklyDrawData smallestWinPrice() {
		LotteryWeeklyDrawData minPrizeObject = new LotteryWeeklyDrawData();
		Integer min = Integer.MAX_VALUE;
		for (int i = 0; i < wholeList.size(); i++) {
			if (wholeList.get(i).getDerivedSevenP() != 0 &&  wholeList.get(i).getDerivedSevenP() < min) {
				min = wholeList.get(i).getDerivedSevenP();
				minPrizeObject= wholeList.get(i);
			}		
		}	
		return minPrizeObject;
	}
	
	public LotteryWeeklyDrawData maxWinnersOfAWeek () {
		LotteryWeeklyDrawData maxWinners = Collections.max(wholeList, Comparator.comparing(l -> l.getSevenM()));
		return maxWinners;
	}
	
	public Integer numbersOfTheNotWinningWeeks () {
		return (int) wholeList.stream().filter(l->l.getSevenM()==0).count();
	}

}
