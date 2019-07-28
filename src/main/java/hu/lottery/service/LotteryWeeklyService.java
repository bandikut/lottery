package hu.lottery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.lottery.model.LotteryWeeklyDrawData;
import hu.lottery.repository.LotteryWeeklyRepository;


@Service
public class LotteryWeeklyService {

	
	@Autowired 
	LotteryWeeklyRepository lotteryWeeklyRepository;
	
	public List<LotteryWeeklyDrawData> getAllDrawingData(){
		return lotteryWeeklyRepository.findAll();
	}
}
