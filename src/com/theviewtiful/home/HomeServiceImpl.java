package com.theviewtiful.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private HomeDAO homedao;

	@Override
	public List<Object> artlist() {
		return homedao.artlist();
	}

}
