package test.first.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.first.model.Lotto;
import test.first.repository.LottoRepository;

@Service
public class LottoService {

	@Autowired 
	LottoRepository lottoRepository;
	
	public List<Lotto> getLottoNumbersList(){
		return lottoRepository.getAllLottoData();
	}
	
	public List<Lotto> getCustomNumbers(int a){
		return lottoRepository.getCustomNumbers(a);
	}
	
	public Long howManyTimes(int a) {
		return lottoRepository.howManyTimes(a);
	}

}
