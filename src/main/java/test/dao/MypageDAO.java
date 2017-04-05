package test.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import test.dto.CustomerDTO;
import test.dto.ReserveDTO;
import test.dto.ReviewDTO;

public class MypageDAO extends SqlSessionDaoSupport {
	
	public List<ReserveDTO> getReserveList(String userid) {
		List<ReserveDTO> reserveDTO = getSqlSession().selectList("reserve.getReserve", userid);
		return reserveDTO;
	}
	
	public List<ReviewDTO> getReviewList(String userid) {
		List<ReviewDTO> reviewDTO = getSqlSession().selectList("review.getReview", userid);
		return reviewDTO;
	}
	
	public void deleteReview(ReviewDTO reviewDto) {
		getSqlSession().delete("review.deleteReview", reviewDto);
	}
	
	public CustomerDTO getInfo(String userid) {
		CustomerDTO userInfo = getSqlSession().selectOne("userInfo.getInfo", userid);
		return userInfo;
	}
	
	public void modifyInfo(CustomerDTO userInfo) {
		getSqlSession().update("userInfo.modifyInfo", userInfo);
	}

}
