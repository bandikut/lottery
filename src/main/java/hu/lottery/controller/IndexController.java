package hu.lottery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import hu.lottery.service.LotteryWeeklyService;

@Controller
public class IndexController {

	@Autowired
	LotteryWeeklyService lotteryWeeklyService;

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView get() throws Exception {

		ModelMap modelMap = new ModelMap();

		modelMap.put("allRecord", lotteryWeeklyService.getAllDrawingData());
//		System.out.println("% get all data " + lotteryWeeklyService.getAllDrawingData().toString());
		System.out.println("all data from db");
		System.out.println(modelMap.toString());

		return new ModelAndView("index", modelMap);

	}

}
