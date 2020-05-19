package com.kh.weparty.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfigure {
	
	@Bean
	public Logger getlogger() {
		return LoggerFactory.getLogger(BeanConfigure.class);
	}

}
