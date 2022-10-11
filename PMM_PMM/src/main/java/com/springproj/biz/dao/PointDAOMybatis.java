package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.PointVO;

@Repository
public class PointDAOMybatis { 
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 포인트 등록
	public void insertPoint(PointVO vo) {
		mybatis.insert("Point.insertPoint", vo);	
	}

	// 목록보기
	public PointVO getPoint(String pp_payno) {
		return mybatis.selectOne("Point.getPoint", pp_payno);	
	}

	public List<PointVO> getPiointList(PointVO vo) {
		return mybatis.selectList("Point.getPointList",vo);
		
	}

	// 포인트 수정
	public void updatePoint(PointVO vo) {
		mybatis.update("Point.updatePoint", vo);	
		
	}

	//포인트 삭제
	public void deletePoint(String pp_payno) {
		mybatis.delete("Point.deletePoint", pp_payno);	
	}

}
