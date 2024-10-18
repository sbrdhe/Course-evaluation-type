<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="top.jsp" %>
    <h1>회원등록</h1>
    <form action="new_ex.jsp" method="get" onsubmit="return chl()">
    	<table border=1 width="70%" style="margin: 0 auto">
    	<tr><th>회원번호</th><td><input type="text" name="custno"/></td></tr>
    	<tr><th>회원성명</th><td><input type="text" name="custname"/></td></tr>
    	<tr><th>회원전화</th><td><input type="text" name="tel"/></td></tr>
    	<tr><th>회원주소</th><td><input type="text" name="address" style="width:300px" /></td></tr>
    	<tr><th>가입일자</th><td><input type="text" name="joindate" style="width:600px" /></td></tr>
    	<tr><th>고객등급</th><td><input type="text" name="grade"/></td></tr>
    	<tr><th>도시코드</th><td><input type="text" name="city"/></td></tr>
    	<tr><td colspan=2><input type="submit" value=" 등 록 " />
    					  <input type="button" value=" 조 회 " onclick="location.href='list.jsp'"/></td></tr>
    </table>
    </form>
    <script type="text/javascript">
	function chk(f) {
		if(f.custno.value=="") { alert('어 고객번호가 읎네... 이쓰 읎네~~~'); f.custno.focus(); return false; }
		if(f.custname.value=="") { alert('어 고객이름이 읎네... 이쓰 읎네~~~'); f.custname.focus(); return false; }
		if(f.tel.value=="") { alert('어 전화번호가 읎네... 이쓰 읎네~~~'); f.tel.focus(); return false; }
		if(f.address.value=="") { alert('어 고객주수가 읎네... 이쓰 읎네~~~'); f.address.focus(); return false; }
		if(f.joindate.value=="") { alert('어 가입일자가 읎네... 이쓰 읎네~~~'); f.joindate.focus(); return false; }
		if(f.grade.value=="") { alert('어 고객등급이 읎네... 이쓰 읎네~~~'); f.grade.focus(); return false; }
		if(f.city.value=="") { alert('어 고객지역이 읎네... 이쓰 읎네~~~'); f.city.focus(); return false; }
	}
	</script>
   <%@ include file="footer.jsp" %>