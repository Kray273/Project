package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.PointVO;

public interface PointService {

	// 포인트 등록
	public void insertService(PointVO vo);
	
	// 포인트 목록 조회
	public PointVO getService(String pp_payno);
	
	public List<PointVO> getServiceList(PointVO vo);
	
	// 포인트 수정
	public void updateService(PointVO vo);
	
	// 포인트 삭제
	public void deleteService(String pp_payno);
	
}