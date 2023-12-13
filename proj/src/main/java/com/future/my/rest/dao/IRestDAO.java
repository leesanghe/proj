package com.future.my.rest.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.future.my.rest.vo.RestVO;



@Mapper
public interface IRestDAO {
	public List<RestVO> getRestList(String restrntaddr);
	public int restaurant ( RestVO restaurant);
}
