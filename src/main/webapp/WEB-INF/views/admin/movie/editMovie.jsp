<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit movie</title>
<style type="text/css">
	div{
		text-align:left;
	}
</style>
</head>
<body>
	<div class="card" style="width: 700px;">
		<div class="card-header">
			<h3>Chỉnh sửa thông tin phim</h3>
			<c:if test="${not empty errorMessage }">
				<div class="alert alert-danger" role="alert">${errorMessage }</div>
			</c:if>
		</div>
		<div class="card-body">
			<form:form enctype="multipart/form-data" action="./saveMovie" method="post" modelAttribute="movie">
				<form:input type="hidden" path="movieId" />
				
				<div class="form-group text-left">
					<label for="movieName"> Tên phim: </label>
					<form:input type="text" id="movieName" path="movieName"/>
				</div>
				
				<div class="form-group text-left">
					<label for="genre">Thể loại:</label>
					<form:select path="genre" id="genre">
						<c:forEach items="${genres}" var="genre">
							<form:option value="${genre.genreId}">${genre.genreName}</form:option>
						</c:forEach>
					</form:select>
				</div>
				
				<div class="form-group text-left">
					<label for="movieAge">Giới hạn tuổi:</label>
					<form:select path="movieAge" id="movieAge">
						<c:forEach items="${movieAges}" var="movieAge">
							<form:option value="${movieAge.ageId}">${movieAge.ageLimit}</form:option>
						</c:forEach>
					</form:select>
				</div>
				
				<div class="form-group text-left">
					<label for="imageFile">Poster phim:</label><br>
					<img alt="" width="200" src="<c:url value="/uploads/moviePoster/${movie.imageName}"/>">
					<form:input type="file" path="imageFile" id="imageFile"/>
				</div>
				
				<div class="form-group text-left">
					<label for="description">Tóm tắt:</label>
					<form:textarea class="form-control" path="description" id="description" rows="3"></form:textarea>
				</div>
				
				<div class="form-group">
					<label for="trailerLink">Trailer link:</label>
					<form:input style="width: 600px;" type="text" id="trailerLink" path="trailerLink"/>
				</div>
				
				<a href="./movieList" class="btn btn-primary text-uppercase">Trở về</a>
				<button class="btn btn-primary text-uppercase" type="submit">Lưu</button>
			</form:form>
		</div>
	</div>
</body>
</html>