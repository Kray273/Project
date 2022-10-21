package com.spring.proj.controller.buy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.dao.buy.BuyDAOMybatis;
import com.spring.proj.domain.buy.BuyToVO;
import com.spring.proj.domain.buy.BuyVO;
import com.spring.proj.domain.user.UserMemberVO;
import com.spring.proj.service.buy.BuyService;
import com.spring.proj.service.user.UserMemberService;

@Controller
@SessionAttributes("buy")
public class BuyController{
	@Autowired
	BuyService buyService;
	
	@Autowired
	UserMemberService userService;
	
	@Autowired
	private BuyDAOMybatis dao;
	

	
	
	@RequestMapping(value="/getBuy.sj")
	public String getBuy(BuyToVO buyvo, String um_no,int p_pno, BuyVO buy,UserMemberVO user, Model model,Model model2,Model model3){
		
		
		
		System.out.println(buyvo);
		
		user = userService.getService(um_no);
		
		BuyVO vo = buyService.getService(p_pno);
		
		
		System.out.println("==> orderBuy() 호출"+buy+"model"+ model);
		
		
		 
	System.out.println(user);
		
		System.out.println("1번"+vo);
		
		
		model.addAttribute("buy", vo);
		
		model2.addAttribute("user", user);
		
		model2.addAttribute("buyto", buyvo);
	
		return "buy/getBuy1";
	}

	
	@GetMapping(value="/gotoMain.do")
	public String main() {
		return "toMain.do";
	}
	


}
