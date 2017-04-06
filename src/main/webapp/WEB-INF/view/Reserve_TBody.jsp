<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
						<jsp:useBean id="toDay" class="java.util.Date"/>
				        <c:forEach var="reserveList" items="${reserveList}">
							<tr>
								<td>
									<fmt:formatDate value="${reserveList.reserve_date}" var="reserve_date" type="both" pattern="yyyy-MM-dd HH:mm"/>
									${reserve_date}
								</td>
								<td>${reserveList.e_name}</td>
								<td>
									<c:if test="${reserveList.r_state==1}">
										승인대기
									</c:if>
									<c:if test="${reserveList.r_state==2}">
										예약완료
									</c:if>
									<c:if test="${reserveList.r_state==3}">
										취소요청
									</c:if>
									<c:if test="${reserveList.r_state==4}">
										이용완료
									</c:if>
									<c:if test="${reserveList.r_state==5}">
										취소완료
									</c:if>
										
								</td>
								<td>
									<fmt:parseDate value="${reserve_date}" var="reDay" pattern="yyyy-MM-dd HH:mm"/>
									<c:if test="${reDay.time - toDay.time > 0}">
										<c:if test="${reserveList.r_state==1 or reserveList.r_state==2}">
											<input type="button" id="btn_cancel" class="btn btn-info btn-sm" value="Cancel">
										</c:if>
									</c:if>
								</td>
								<td>
									<fmt:parseDate value="${reserve_date}" var="reDay" pattern="yyyy-MM-dd HH:mm"/>
									<c:if test="${reDay.time - toDay.time < 0}">
										<c:if test="${reDay.time - toDay.time > -3*(1000*60*60*24)}">
											<input type="button" id="btn_write" class="btn btn-info btn-sm" data-toggle="modal" data-target="#write" value="Write">
										</c:if>
									</c:if>
								</td>
							</tr>
						</c:forEach>

