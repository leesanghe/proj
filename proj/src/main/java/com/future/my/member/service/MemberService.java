package com.future.my.member.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.future.my.member.dao.IMemberDAO;
import com.future.my.member.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	IMemberDAO dao;
	
	public void registMember(MemberVO member) throws Exception {
			int result = dao.registMember(member);
			if(result == 0) {
				throw new Exception();
			}
	}
	
	public MemberVO loginMember(MemberVO member) {
		MemberVO result = dao.loginMember(member);
		if(result == null) {
			return null;
		}
		return result;
	}
	
	
	
}
