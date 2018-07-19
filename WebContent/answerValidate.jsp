<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body oncontextmenu="return false;" oncopy="return false"
	oncut="return false" onpaste="return false">
	<form action="FinishExam" method="post">
		<%
			List<String> s = new ArrayList();
			s.add(0, request.getParameter("q1"));
			s.add(1, request.getParameter("q2"));
			s.add(2, request.getParameter("q3"));
			s.add(3, request.getParameter("q4"));
			s.add(4, request.getParameter("q5"));
			s.add(5, request.getParameter("q6"));
			s.add(6, request.getParameter("q7"));
			s.add(7, request.getParameter("q8"));
			s.add(8, request.getParameter("q9"));
			s.add(9, request.getParameter("q10"));
			s.add(10, request.getParameter("q11"));
			s.add(11, request.getParameter("q12"));
			s.add(12, request.getParameter("q13"));
			s.add(13, request.getParameter("q14"));
			s.add(14, request.getParameter("q15"));
			s.add(15, request.getParameter("q16"));
			s.add(16, request.getParameter("q17"));
			s.add(17, request.getParameter("q18"));
			s.add(18, request.getParameter("q19"));
			s.add(19, request.getParameter("q20"));
			s.add(20, request.getParameter("q21"));
			s.add(21, request.getParameter("q22"));
			s.add(22, request.getParameter("q23"));
			s.add(23, request.getParameter("q24"));
			s.add(24, request.getParameter("q25"));
			s.add(25, request.getParameter("q26"));
			s.add(26, request.getParameter("q27"));
			s.add(27, request.getParameter("q28"));
			s.add(28, request.getParameter("q29"));
			s.add(29, request.getParameter("q30"));

			String[] ans = { "a", "b", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "a", "b",
					"c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "a", "b" };
			int count = 0;
			int countSum = 0;

			for (int j = 0; j < ans.length; j++) {
				if (ans[j].equals(s.get(j))) {
					count++;
				}
			}
			countSum = count;
		%>
		<input type="hidden" value="<%=countSum%>" name="sum1"> <input
			type="submit" top:="" 50%="" right:="" class="btn btn-success"
			value="Finish Exam" name="submit"
			style="position: absolute; top: 20%; right: 44%; padding: 12px; word-spacing: 5px; font-size: 28px; font-family: ariel;">
	</form>
</body>
</html>