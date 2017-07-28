package com.theviewtiful.user;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userdao;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public HashMap<String, Object> checkUser(Map<String, String[]> map) {
		
		HashMap hashmap = new HashMap();
		Iterator<String> iterator=map.keySet().iterator();
		while (iterator.hasNext()) {
			String key = (String) iterator.next();
			String[] values = map.get(key);
			if (values.length == 1) {
				hashmap.put(key, values[0]);
			}
			else {
				hashmap.put(key, values);
			}
			
		}
		
		return userdao.checkUser(hashmap);
	}

}
