<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h3>사원관리 및 전자결재 프로그램</h3>
		<span>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.</span>
		<br/>
		<span>프로그램작성 순서</span><br />
		1. 회원정보 테이블을 생성한다.<br />
		2. 매출정보 테이블을 생성한다.<br />
		3. 회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.<br />
		4. 회원정보 입력 화면프로그램을 작성한다.<br />
		5. 회원정보 조회 프로그램을 작성한다.<br />
		6. 회원매출정보 조회 프로그램을 작성한다.<br />
	</section>
	<footer>
		<span>HKDKOREA Copyright&copy 2016 All reserved Human Resources Development Service of Korea</span>
	</footer>
</body>
</html>