<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%	request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>FAQ 관리</title>
	<!--  부트스트랩 5.3 적용 -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
   <link href=" https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"/>
	<!-- 제이쿼리 넣어주기 -->  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <!-- 부트스트랩 사이드바 css  -->
   <link href="../../resources/css/admin/bootstrap.min.css" rel="stylesheet">
   <!-- 게시판관리 js 적용 -->
	<script src="${contextPath}/resources/js/Eboard.js"></script>
	<style>
	.listWrap {
	width : 90%;
	margin : 0 auto;
}
	th, td{
	text-align:center; vertical-align: middle;
	}
</style>
</head>
<body>
<!-- 사이드바 -->
<jsp:include page="../../admin/include/nav.jsp"></jsp:include>

<!-- 상단 바  -->
<jsp:include page="../../common/CStopMenu.jsp"></jsp:include>		
<div class="container" >
	<form class="form-horizontal listWrap" id="frm">
		<div class="form-group">
			<div>
				<h2 class="adminTitle">FAQ 관리</h2>
			</div>
		</div>

		<!-- 카테고리별 검색하기 --> 
		<div align="left" style="display:flex; width:100%; margin-bottom:20px; justify-content:space-between;">
		<div style="display:flex; justify-content:row;">
		<select class="form-select right"  style="width:200px; margin-right:10px;" aria-label="Default select example" title="카테고리 선택" id="f_bc_code" name="f_bc_code" >
		  <option value="0" <c:if test="${f_bc_code == '0'}">selected</c:if>>전체</option>
			  <option value="9" <c:if test="${f_bc_code == '9'}">selected</c:if>>회원/멤버십</option>
			  <option value="10" <c:if test="${f_bc_code == '10'}">selected</c:if>>주문/결제</option>
			  <option value="11" <c:if test="${f_bc_code == '11'}">selected</c:if>>배송</option>
			  <option value="12" <c:if test="${f_bc_code == '12'}">selected</c:if>>상품</option>
			  <option value="13" <c:if test="${f_bc_code == '13'}">selected</c:if>>이벤트</option>
		</select>	
		<button type="submit" class="btn btn-success">조회</button>
		</div>
				<!-- 게시글 쓰기/등록 버튼 -->
			<button type="button" class="btn btn-success" onclick="location.href='/CS/board/FaqForm'">FAQ 작성</button>
		
		</div>
		
		<!-- 표  -->
		<table class="table table-striped table-hover align-middle table-bordered" style="border-spacing:0;">
	   	<thead class="table-dark" style="text-align:center; vertical-align: middle;">
				<tr class="info"> 
					<th class="col-sm-1 text-center">번호</th>
					<th class="col-sm-1 text-center">카테고리</th> 
					<th class="col-sm-1 text-center">관리자ID</th>
					<th class="col-sm-3 text-center">제목</th>
					<th class="col-sm-3 text-center">내용</th>
					<th class="col-sm-2 text-center">작성일자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${FaqList}" var="falist">
				<tr>
					<td align="center">${falist.f_no}</td>
				  <c:choose>
					<c:when test="${falist.f_bc_code eq 9}">
						<td align="center">회원/멤버십</td>
					</c:when>
						<c:when test="${falist.f_bc_code eq 10}">
						<td align="center">주문/결제</td>
					</c:when>
						<c:when test="${falist.f_bc_code eq 11}">
						<td align="center">배송</td>
					</c:when>
						<c:when test="${falist.f_bc_code eq 12}">
						<td align="center">상품</td>
					</c:when>
					<c:otherwise>	
						<td align="center">이벤트</td>
					</c:otherwise>
				</c:choose>
					<td align="center">${falist.f_m_id}</td>
					<td align="center"><a href="${contextPath}/CS/board/FaqDetail?f_no=${falist.f_no}">${falist.f_title}</a></td>
					<td align="center">${falist.f_content }</td>
					<td><fmt:formatDate value="${falist.f_regdate}" pattern="yyyy년 MM월 dd일"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</form>
</div>
	
	
</body>
</html>