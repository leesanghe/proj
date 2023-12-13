package com.future.my.rest.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.future.my.rest.dao.IRestDAO;
import com.future.my.rest.vo.RestVO;



@Service
public class RestService {

	@Autowired
	IRestDAO restDao;	
	
	
	public List<RestVO> getRestList(String restrntaddr){
		List<RestVO> codeList = restDao.getRestList(restrntaddr);
		return codeList;
	}


	public void addRestaurant(RestVO restaurant) throws Exception {
		int result = restDao.restaurant(restaurant);
		if(result == 0) {
			throw new Exception();
		}
	}

}
