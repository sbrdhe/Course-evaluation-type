<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="top.jsp" %>
    <h1>회원매출조회</h1>
    <table border=1 width="100%">
    	<tr><th>회원번호</th><th>회원성명</th><th>매출횟수</th><th>매출수량</th><th>매출액</th></tr>
       <%
		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select m.custno, m.custname, count(mm.custno), sum(amount), sum(price) from member_02 m left join money_02 mm on m.custno=mm.custno group by m.custno,m.custname order by custno asc");
			while(rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td>");
				out.println("    <td>" + rs.getString(2) + "</td>");
				out.println("    <td>" + String.format("%05d",rs.getInt(3)) + "</td>");
				out.println("    <td>" + rs.getInt(4) + "</td>");
				out.println("    <td>" + String.format("%,d",rs.getInt(5)) + "</td></tr>");
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>
	</table>
   <%@ include file="footer.jsp" %>