package test.first.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import test.first.model.Lotto;
import test.first.service.LottoService;
import test.first.util.DBException;

@Controller
@RequestMapping(value = {"/","index"})
public class LottoContoller {

	@Autowired
	LottoService lottoService;
	
	private String firstNumber="";
	private Integer result = null;


	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView initLottoNums() {
		Long numberOf13 =lottoService.howManyTimes(13);
		Integer listSize = lottoService.getLottoNumbersList().size();
		System.out.println("========"+numberOf13);
		System.out.println("//////////// a lista mérete "+ listSize);
		ModelMap modelMap = new ModelMap();
		modelMap.put("lottoList", lottoService.getLottoNumbersList());
		modelMap.put("lottoListSize", "találatok száma: "+ listSize + " db");
		modelMap.put("firstN", firstNumber);
		modelMap.put("result", result);
		modelMap.put("num13", numberOf13);
		return new ModelAndView("index", modelMap);
	}

	@RequestMapping(value = "stat", method = RequestMethod.POST)
	public String goStats() {
		return "stat";
	}

	@RequestMapping(value = "name", method = RequestMethod.POST)
	public String getFileName(String firstNum) {
		firstNumber= firstNum;
		System.out.println("----------" + firstNum);
		return "redirect:/index";
	}

	@RequestMapping(value = "calculate", method = RequestMethod.POST)
	public String getNumber(String number) {
		result = Integer.parseInt(number)*2+1;
		System.out.println("+++++++++++" + number);
		return "redirect:/index";
	}
	
	@RequestMapping(value = "search", method = RequestMethod.POST)
	public ModelAndView searchANumber(String number) throws Exception{
		ModelMap modelMap = new ModelMap();		
		System.out.println("@@@@@@@@@@" + number);
		List<Lotto> lottoList = lottoService.getCustomNumbers(Integer.parseInt(number));

		modelMap.put("searchANumber", lottoList );
		Integer filteredListSize = lottoList.size();
		System.out.println("ffffffffff " + filteredListSize);
		modelMap.put("filteredListSize","találatok száma: "+ filteredListSize + " db");
		return new ModelAndView("index", modelMap);
	}
	
	
	
}
