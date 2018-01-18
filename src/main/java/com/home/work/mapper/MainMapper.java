package com.home.work.mapper;

import java.util.List;
import java.util.Map;

import com.home.work.domain.InputVO;
import com.home.work.domain.MainVO;

public interface MainMapper {

	public List<InputVO> testList(InputVO testInput) throws Exception;
	
	public List<MainVO> tableList() throws Exception;
	
	public List<Map> lastTest(Map map) throws Exception;
}
