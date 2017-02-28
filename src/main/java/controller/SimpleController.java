package controller;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleController {

	private Logger logger = LogManager.getLogger(this.getClass());
	@RequestMapping(value="/")
	public String home(){
		String info ="Hello Microservice1";
		logger.info(info);
		return info;
	}
}