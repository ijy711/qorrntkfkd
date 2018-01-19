package com.home.work;

import java.nio.charset.Charset;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;

@SpringBootApplication
@MapperScan(value={"com.home.work.mapper"})
public class HomeworkApplication {
	
	@Autowired
	private ApplicationContext applicationContext;

	public static void main(String[] args) {
		SpringApplication.run(HomeworkApplication.class, args);
	}
	
	/* korean*/
	@Bean
    public HttpMessageConverter<String> responseBodyConverter() {
        return new StringHttpMessageConverter(Charset.forName("UTF-8"));
    }
	
	/*SqlSessionFactory*/
	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource)throws Exception{
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
            sessionFactory.setDataSource(dataSource);
            sessionFactory.setConfigLocation(
    				applicationContext.getResource("classpath:mybatis/mybatis-config.xml"));
            sessionFactory.setMapperLocations(
            		applicationContext.getResources("classpath:mybatis/mappers/*.xml"));
            
            return sessionFactory.getObject();
            
    }
}
