package hu.lottery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.lottery.model.NumbersByHand;
import hu.lottery.repository.NumbersByHandRepository;

@Service
public class NumbersByHandService {

	@Autowired
	NumbersByHandRepository numbersByHandRepository;
	
	public List<NumbersByHand> getAllNumsByHand () {
		return numbersByHandRepository.findAll();
	}
}
