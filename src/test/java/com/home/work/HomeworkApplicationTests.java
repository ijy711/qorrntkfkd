package com.home.work;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.home.work.domain.MainVO;
import com.home.work.mapper.MainMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HomeworkApplicationTests {

	@Autowired
	private MainMapper mapper;
	
	@Test
	public void contextLoads() {
	}
	
	

}
