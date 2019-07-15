package test.first.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import test.first.service.LottoService;

@Controller
@RequestMapping(value = "stat")
public class StatsController {

	@Autowired
	LottoService lottoService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView initStats() {
		Long numberOf13 =lottoService.howManyTimes(13);
		ModelMap modelMap = new ModelMap();
		System.out.println("********"+numberOf13);
		modelMap.put("num13", numberOf13);
		modelMap.put("kuty", "kuty");
		return new ModelAndView("stat", modelMap);
	}
	
//	@RequestMapping(method = RequestMethod.GET)
//	public ModelAndView searchNumbers() {
//		ModelMap modelMap = new ModelMap();
//		modelMap.put("kuty", "kuty");
//		return new ModelAndView("stat", modelMap);
//	}
	

}
