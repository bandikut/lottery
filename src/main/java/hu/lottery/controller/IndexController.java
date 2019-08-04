package hu.lottery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import hu.lottery.service.LotteryWeeklyService;
import hu.lottery.service.NumbersByHandService;

@Controller
public class IndexController {

	@Autowired
	LotteryWeeklyService lotteryWeeklyService;
	
	@Autowired
	NumbersByHandService numbersByHandService;

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView get() throws Exception {
		ModelMap modelMap = new ModelMap();
		
		modelMap.put("allRecord", lotteryWeeklyService.getAllDrawingData());	
//		System.out.println("++all record from lottery weekly draws++"+lotteryWeeklyService.getAllDrawingData()+toString());
		modelMap.put("hand",numbersByHandService.getAllNumsByHand());
//		System.out.println("--all draws by hand--"+numbersByHandService.getAllNumsByHand().toString() );
		modelMap.put("biggestPrize", lotteryWeeklyService.biggestWinPrice());
		modelMap.put("smallestPrize", lotteryWeeklyService.smallestWinPrice());
		
		modelMap.put("maxWinners", lotteryWeeklyService.maxWinnersOfAWeek());
		modelMap.put("nobodyWins", lotteryWeeklyService.numbersOfTheNotWinningWeeks());
		
		modelMap.put("freq", numbersByHandService.orderNumbersByFrequency());
		
		modelMap.put("search", numbersByHandService.getSevenNumbers(1, 11, 19, 21, 23, 26, 27));
		System.out.println("test search: " + numbersByHandService.getSevenNumbers(1, 11, 19, 21, 23, 26, 27).toString() );
		return new ModelAndView("index", modelMap);
	}
	

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@ModelAttribute("lNumbers") Integer n1 ) {
		System.out.println("keresendő szám 1." + n1);
		return "index";
		
	}
	


}
