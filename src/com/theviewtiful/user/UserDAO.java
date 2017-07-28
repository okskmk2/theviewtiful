package com.theviewtiful.user;

import java.util.HashMap;
import java.util.Map;

public interface UserDAO {

	HashMap<String, Object> checkUser(Map<String, String[]> map);

}
