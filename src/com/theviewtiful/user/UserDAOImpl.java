package com.theviewtiful.user;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{

	
	@Autowired
	private SqlSessionFactory factory;

	@Override
	public HashMap<String, Object> checkUser(Map<String, String[]> map) {
		SqlSession session =factory.openSession();
		System.out.println("user-dao-impl-pre:"+map.get("email"));
		System.out.println("user-dao-impl-pre:"+map.get("password"));
		HashMap<String, Object> userdata = session.selectOne("user.checkUser",map);
		System.out.println("user-dao-impl-post:"+userdata);
		session.close();
		return userdata;
	}

}
