package com.logger.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoggerController {
	
	@GetMapping("/greeting")
	public String getStarted()
	{
		return "Hello SPring!!";
	}

}
