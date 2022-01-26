<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
header h2, h3 {text-align: center;padding: 10px 0;color: white;}
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
<form action="registAct" method="post" name="frm" id="frm" >
		<table border=1>
			<tr>
				<th>사원 번호(자동발생)</th>
				<td>
					<input type="text" name="membernum" id="membernum" value="${autoNum }" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th>사원 성명</th>
				<td>
					<input type="text" name="membername" id="membername"/>
				</td>
			</tr>
			<tr>
				<th>사원 전화</th>
				<td>
					<input type="text" name="memberphone" id="memberphone"/>
				</td>
			</tr>
			<tr>
				<th>사원 주소</th>
				<td>
					<input type="text" name="memberaddress" id="memberaddress"/>
				</td>
			</tr>
			<tr>
				<th>가입 일자</th>
				<td>
					<input type="text" name="memberjoindate" id="memberjoindate"/>
				</td>
			</tr>
			<tr>
 				<th>사원 직급</th> <!-- 사원:A, 대리:B, 부장:C, 대표:VIP, 관리자:ADMIN-->
			<td>
			<select name="membergrade" id="membergrade">
				<option value="">직업 선택</option>
				<option value="사원">사원</option>
				<option value="대리">대리</option>
				<option value="부장">부장</option>
				<option value="대표">대표</option>
				<option value="관리자">관리자</option>
			</select>
			</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="등록"/>
					<input type="button" value="조회" onclick="javascript:location.href='memberList'"/>
				</th>
			</tr>	                
                                 </table>
	</form>
	</section>
	<footer>
		<span>HKDKOREA Copyright&copy 2016 All reserved Human Resources Development Service of Korea</span>
	</footer>
</body>
</html>