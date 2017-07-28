package com.theviewtiful.user;


import java.util.HashMap;
import java.util.Map;


public interface UserService {

	HashMap<String, Object> checkUser(Map<String, String[]> map);

}
