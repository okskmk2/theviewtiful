package com.theviewtiful.home;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAOImpl implements HomeDAO {
	
	@Autowired
	SqlSessionFactory factory;

	@Override
	public List<Object> artlist() {
		SqlSession session =factory.openSession();
		List<Object> artList = session.selectList("home.artList");
		session.close();
		return artList;
	}

}
