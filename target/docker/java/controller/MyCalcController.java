package controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mycalc")
public class MyCalcController {
	@RequestMapping(value="/{a}/{b}")
	public @ResponseBody double sum(@PathVariable double a,@PathVariable double b)
	{
		return a+b;
	}

	@RequestMapping(value="/hello")
	public @ResponseBody String sayHello(@RequestParam String name)
	{
		return "HI "+name;
	}
}
