<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
{	margin: 0;	padding: 0;}
body { margin: 0 auto; }
a {text-decoration: none;}
header { background: #808080; color: #fff;}
header h2, h3 {text-align: center;padding: 10px 0;}
.mainhead {color: white;}
.topMenu {background: #e1e1e1;padding: 10px 0;}
.content {text-align: center;padding : 10px 0;}
footer {background: #808080;color : #fff;position: fixed;bottom: 0;text-align: center;width : 100%;padding: 15px;}
table  { margin: 0 auto;text-align: center;padding : 10px 0; }
</style>
</head>
<body>
	<header><h2><a href="main" class="mainhead">사원관리 및 전자결재 시스템</a></h2></header>
	<nav>
		<div class="topMenu">
			<a href="login">로그인</a>
			<a href="memberRegist">사원등록</a>
			<a href="memberList" >사원목록조회/수정</a>
			<a href="eaRegist" >전자결재등록</a>
			<a href="eaList" >전자결재조회</a>
			<a href="main" >홈으로</a>
		</div>
	</nav>
	<section>
	<table border=1>	
      <colgroup>
			<col width="100" />
			<col width="100" />
			<col width="150" />
			<col width="250" />
			<col width="150" />
			<col width="100" />
			<col width="100" />
		</colgroup>
		<thead>
		    <tr>
				<th>사원 번호</th>
				<th>사원 성명</th>
				<th>전화 번호</th>
				<th>주소</th>
				<th>가입 일자</th>
				<th>사원 직급</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="memberdto">
			<tr>
				<td>
					<a href="modify?membernum=${memberdto.membernum }">${memberdto.membernum }</a>
				</td>
				<td>${memberdto.membername }</td>
				<td>${memberdto.memberphone }</td>
				<td>${memberdto.memberaddress }</td>
				<td>${memberdto.memberjoindate }</td>
				<td>${memberdto.membergrade }</td>
			</tr>
			</c:forEach>
		</tbody>	
	</table>
	</section>
	<footer>
		<span>HKDKOREA Copyright&copy 2016 All reserved Human Resources Development Service of Korea</span>
	</footer>
</body>
</html>