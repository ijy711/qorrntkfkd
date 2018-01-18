package com.home.work.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.home.work.domain.MainVO;
import com.home.work.mapper.MainMapper;

@Controller
public class JspTestCont {
	
	@Autowired
	private MainMapper mapper;
	
	/*@RequestMapping(value="/jsp")
	public ModelAndView root() throws Exception {
		List<MainVO> test = mapper.testList();
		return new ModelAndView("testtable","list",test);
	}*/

}
