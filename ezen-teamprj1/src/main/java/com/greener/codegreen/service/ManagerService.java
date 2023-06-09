package com.greener.codegreen.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.greener.codegreen.dto.ManagerDTO;

public interface ManagerService {
	//-------------------------------------------------------------------------------------------------------------------------
	// 관리자 로그인
	//-------------------------------------------------------------------------------------------------------------------------
	public ManagerDTO login(ManagerDTO managerDTO) throws DataAccessException;
	
}
