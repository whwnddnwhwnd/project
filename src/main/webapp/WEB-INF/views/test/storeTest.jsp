<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<form>
	<input type="hidden">
	<table>
		<tr>
			<td>가게이름</td>
			<td><input type="text" id="name"></td>
		</tr>
		<tr>
			<td>업종</td>
			<td><input type="text" id="type"></td>
		</tr>
		<tr>
			<td>가게 한줄 소개</td>
			<td><input type="text" id="intro"></td>
		</tr>
		<tr>
			<td>가게번호</td>
			<td><input type="text" id="tel"></td>
		</tr>
		<tr>
			<td>운영시간</td>
			<td><input type="text" id="time"></td>
		</tr>
		<tr>
			<td>수요가능 인원</td>
			<td><input type="text" id="capa"></td>
		</tr>
		<tr>
			<td>반려견</td>
			<td>
				<input type="radio" name="animal" id="animal" value="o">o
				<input type="radio" name="animal" id="animal" value="x">x</td>
		</tr>
		<tr>
			<td>휠체어</td>
			<td>
				<input type="radio" name="wheel" id="wheel" value="o">o
				<input type="radio" name="wheel" id="wheel" value="x">x
			</td>
		</tr>
		<tr>
			<td>공간</td>
			<td>
				<input type="checkbox" class="space" name="space" id="space" value="seat">seat
				<input type="checkbox" class="space" name="space" id="space" value="stand">stand
				<input type="checkbox" class="space" name="space" id="space" value="out">out
				<input type="checkbox" class="space" name="space" id="space" value="take">take
			</td>
		</tr>
		<tr>
			<td>가게위치 등록</td>
			<td><input type="text" id="location"></td>
		</tr>
	</table>
	<button type="button" id="btn-test">제출</button>
</form>
<script src="/js/test.js"></script>
</body>
</html>