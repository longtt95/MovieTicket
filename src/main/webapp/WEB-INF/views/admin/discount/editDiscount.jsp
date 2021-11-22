<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chỉnh sửa giảm giá</title>
<style type="text/css">
div {
	text-align: left;
}
</style>
</head>
<body>
	<div class="card cd-center">
		<div class="card-header">
			<h3>Chỉnh sửa thông tin giảm giá</h3>
			<c:if test="${not empty errorMessage }">
				<div class="alert alert-danger" role="alert">${errorMessage }</div>
			</c:if>
		</div>
		<div class="card-body">
			<form:form action="./saveDiscount" method="post"
				modelAttribute="discount">
				<form:input type="hidden" path="discountId" />
				
				<<div class="form-group text-left">
					<label for="percentage">Tỷ lệ giảm</label>
					<form:input id="movieName" path="percentage" />
				</div>

				<div class="form-group text-left">
					<label for="startDate">Ngày bắt đầu</label>
					<form:input id="startDate" path="startDate" />
				</div>

				<div class="form-group text-left">
					<label for="endDate">Ngày kết thúc</label>
					<form:input id="endDate" path="endDate" />
				</div>



				<a href="./discountList" class="btn btn-primary text-uppercase">Trở
					về</a>
				<button class="btn btn-primary text-uppercase" type="submit">Lưu</button>
			</form:form>
		</div>
	</div>
</body>
</html>