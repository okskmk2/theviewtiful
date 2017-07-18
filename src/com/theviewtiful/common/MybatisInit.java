package com.theviewtiful.common;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServlet;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisInit extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static SqlSessionFactory sqlSessionFactory;

	public void init() {

		try {
			InputStream inputStream = Resources.getResourceAsStream("com/theviewtiful/xml/config/mybatisConfig.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		MybatisInit.sqlSessionFactory = sqlSessionFactory;
	}
}
