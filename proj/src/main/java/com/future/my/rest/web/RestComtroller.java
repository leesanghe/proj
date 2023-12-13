package com.future.my.rest.web;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.future.my.rest.serivce.RestService;
import com.future.my.rest.vo.RestVO;

@RestController
public class RestComtroller {
    
    @Autowired
    private RestService restService;

   

    @GetMapping("/addresses")
    public List<RestVO> getSubCodes(@RequestParam String restrntaddr) {
        List<RestVO> comList = restService.getRestList(restrntaddr);
        System.out.println(comList);
        return comList;
    }
    @PostMapping("/addRestaurant")
    public String addRestaurant(@ModelAttribute RestVO restaurant) throws Exception {
        // 입력된 정보를 데이터베이스에 저장
    	restService.addRestaurant(restaurant);
        return  "home"; // 저장 후 리스트 페이지로 리다이렉트
    }
	
}
