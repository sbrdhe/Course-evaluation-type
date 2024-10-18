<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
//custno=111&custname=홍길동&tel=01012345678&address=qwweey&joindate=2024-10-10&grade=A&city=10
String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String tel = request.getParameter("tel");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

String sql = "insert into member_02 values ('"+custno+"','"+custname+"','"+tel+"','"+address+"','"+joindate+"','"+grade+"','"+city+"')";
//out.print(sql);
	try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}

%>
<script type="text/javascript">
alert("정상입력")
location.href='list.jsp';
</script>