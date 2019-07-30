package hu.lottery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
		System.out.println("++all record from lottery weekly draws++"+lotteryWeeklyService.getAllDrawingData()+toString());
		modelMap.put("hand",numbersByHandService.getAllNumsByHand());
		System.out.println("--all draws by hand--"+numbersByHandService.getAllNumsByHand().toString() );
		return new ModelAndView("index", modelMap);

	}

}
