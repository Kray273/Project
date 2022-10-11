package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.PointDAOMybatis;
import com.springproj.biz.domain.PointVO;
import com.springproj.biz.service.PointService;

@Service("PointService")
public class PointserviceImpl implements PointService {

	@Autowired
	private PointDAOMybatis dao;
	

	@Override
	public void insertService(PointVO vo) {
		// TODO Auto-generated method stub

		dao.insertPoint(vo);
	}

	@Override
	public PointVO getService(String pp_payno) {
		// TODO Auto-generated method stub
	
		PointVO point = dao.getPoint(pp_payno);
		return point;
	}

	@Override
	public List<PointVO> getServiceList(PointVO vo) {
		// TODO Auto-generated method stub
		
	 return dao.getPiointList(vo);
		
	}

	@Override
	public void updateService(PointVO vo) {
		// TODO Auto-generated method stub
		
		//log.printLog(" = updateService =");
		
		dao.updatePoint(vo);;
		
	}

	@Override
	public void deleteService(String pp_payno) {
		// TODO Auto-generated method stub
		
		dao.deletePoint(pp_payno);
	}

}
