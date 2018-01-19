package com.home.work.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.home.work.domain.InputVO;
import com.home.work.domain.MainVO;
import com.home.work.mapper.MainMapper;

@RestController
public class MainController {
	
	@Autowired
	private MainMapper mainMapper;
	
	@RequestMapping(value="/")
	public ModelAndView header() throws Exception {
		
		return new ModelAndView("headermenu");
	}
	
	@RequestMapping("/testtable")
	public ModelAndView getList(HttpServletRequest request) throws Exception {
		Map map = new HashMap();
		
		long start = System.currentTimeMillis();
		
		map.put("location", request.getParameter("location")==""?null:request.getParameter("location"));
		map.put("ord1", request.getParameter("ord1")==""?null:request.getParameter("ord1"));
		map.put("ord2", request.getParameter("ord2")==""?null:request.getParameter("ord2"));
		map.put("ord3", request.getParameter("ord3")==""?null:request.getParameter("ord3"));
		map.put("ord4", request.getParameter("ord4")==""?null:request.getParameter("ord4"));
		map.put("ord6", request.getParameter("ord6")==""?null:request.getParameter("ord6"));
		map.put("ord7", request.getParameter("ord7")==""?null:request.getParameter("ord7"));
		map.put("cnt", request.getParameter("cnt")==""?100000:request.getParameter("cnt"));
		map.put("lvl", request.getParameter("lvl")==""?null:request.getParameter("lvl"));
		map.put("dir", request.getParameter("dir")==""?null:request.getParameter("dir"));
		
		List<MainVO> list = mainMapper.lastTest(map);
		
		long end = System.currentTimeMillis();
		long sec = end-start;
		float time = (float)sec/1000;
		
		request.setAttribute("time", time);
		
		System.out.println(map);
		System.out.println(list);
		
		return new ModelAndView("testtable","list",list);
	}
	
	/*@RequestMapping("/testtable")
	public ModelAndView list(HttpServletRequest request) throws Exception{
		List<MainVO> list= mainMapper.tableList();
		
		return new ModelAndView("testtable","list",list);
	}

	@RequestMapping("/test")
	public ModelAndView testList(HttpServletRequest request) throws Exception {
		InputVO testInput = new InputVO();
		testInput.setLocation("10");
		testInput.setOrd1("1");
		testInput.setOrd1("2");
		testInput.setOrd1("3");
		testInput.setOrd1("4");
		testInput.setOrd1("6");
		testInput.setOrd1("7");
		testInput.setCnt("10000");
		testInput.setDir("F");
		testInput.setLvl("1");
		
		List<InputVO> list = mainMapper.testList(testInput);
		
		System.out.println(list);
		
		return new ModelAndView("/testtable","list",list);
	}
	
	@RequestMapping(value="/table")
	public String table(HttpServletRequest request, Model model) throws Exception {
		System.out.println(request.getParameter("location"));
		System.out.println(request.getParameter("ord1"));
		System.out.println(request.getParameter("cnt"));
		System.out.println(request.getParameter("dir"));
		System.out.println(request.getParameter("lvl"));
		
		return ("/");
	}*/

}
