package controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.dao.MypageDAO;
import test.dto.CustomerDTO;
import test.dto.ReserveDTO;
import test.dto.ReviewDTO;

@Controller
public class MypageController {
	
	@Autowired
	MypageDAO mypageDAO;
	
	public void setMypageDAO(MypageDAO mypageDAO) {
		this.mypageDAO = mypageDAO;
	}

	@RequestMapping("/Mypage_Main.do")
	public String mypage_main() {
		System.out.println("Main page");
		return "Mypage_Main";
	}
	
	
	
	
	@RequestMapping("/Mypage_Reserve.do")
	public ModelAndView mypage_reserve(@RequestParam(value="end_rno", defaultValue="10") String end_rno) {
		System.out.println(end_rno);
		System.out.println("Reserve page");
		ModelAndView mav = new ModelAndView("Mypage_Reserve");
		
		List<ReserveDTO> list = new ArrayList<ReserveDTO>();
		list = mypageDAO.getReserveList("a", end_rno);
		mav.addObject("reserveList", list);
		return mav;
	}
	
	@RequestMapping("/More_Reserve.do")
	public ModelAndView more_reserve(@RequestParam(value="end_rno", defaultValue="10") String end_rno) {
		
		ModelAndView mav = new ModelAndView("Reserve_TBody");
		
		List<ReserveDTO> list = new ArrayList<ReserveDTO>();
		list = mypageDAO.getReserveList("a", end_rno);
		mav.addObject("reserveList", list);
		return mav;
	}
	
	
	
	@RequestMapping("/Mypage_UserInfo.do")
	public ModelAndView mypage_userinfo() {
		System.out.println("UserInfo page");
		ModelAndView mav = new ModelAndView("Mypage_UserInfo");
		
		CustomerDTO userInfo = new CustomerDTO();
		userInfo = mypageDAO.getInfo("a");
		mav.addObject("userInfo", userInfo);
		
		return mav;
	}
	
	@RequestMapping("/modifyInfo.do")
	public String modifyInfo(CustomerDTO userInfo, BindingResult result) {
		System.out.println("modifyInfo");
		System.out.println(userInfo.getUserid());
		System.out.println(userInfo.getName());
		mypageDAO.modifyInfo(userInfo);
		
		return "redirect:/Mypage_UserInfo.do";
	}
	
	
	
	
	@RequestMapping("/Mypage_Review.do")
	public ModelAndView mypage_review() {
		System.out.println("Review page");
		ModelAndView mav = new ModelAndView("Mypage_Review");
		
		List<ReviewDTO> list = new ArrayList<ReviewDTO>();
		list = mypageDAO.getReviewList("a");
		mav.addObject("reviewList", list);
		return mav;
	}
	
	@RequestMapping("/Review_Delete.do")
	public String review_delete(ReviewDTO reviewDto, BindingResult result){
		System.out.println("review_delete");
		mypageDAO.deleteReview(reviewDto);
				
		return "redirect:/Mypage_Review.do";
	}
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}
