package com.future.my.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MapController {
	
	
	@RequestMapping("/map")
	public String map() {
	   return "map/mapView";
	}
	@RequestMapping("/add")
	public String add() {
	   return "map/addView";
	}
}
