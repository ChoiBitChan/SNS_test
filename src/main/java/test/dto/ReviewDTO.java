package test.dto;

import java.util.Date;

public class ReviewDTO {
	
	private String restaurant_number;
	private Date reserve_date;
	private Date write_date;
	private String comments;
	private int ranking;
	private String review_filePath;
	private String userid;
	private String e_name;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getRestaurant_number() {
		return restaurant_number;
	}
	public void setRestaurant_number(String restaurant_number) {
		this.restaurant_number = restaurant_number;
	}
	public Date getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(Date reserve_date) {
		this.reserve_date = reserve_date;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public String getReview_filePath() {
		return review_filePath;
	}
	public void setReview_filePath(String review_filePath) {
		this.review_filePath = review_filePath;
	}
	
	@Override
	public String toString() {
		return "ReviewDTO [restaurant_number=" + restaurant_number + ", reserve_date=" + reserve_date + ", write_date="
				+ write_date + ", comments=" + comments + ", ranking=" + ranking + ", review_filePath="
				+ review_filePath + "]";
	}
	
}
