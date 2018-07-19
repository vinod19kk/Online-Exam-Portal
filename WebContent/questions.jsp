
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script>
	function show(shown, hidden1, hidden2, hidden3, hidden4, hidden5, hidden6,
			hidden7) {
		document.getElementById(shown).style.display = 'block';
		document.getElementById(hidden1).style.display = 'none';
		document.getElementById(hidden2).style.display = 'none';
		document.getElementById(hidden3).style.display = 'none';
		document.getElementById(hidden4).style.display = 'none';
		document.getElementById(hidden5).style.display = 'none';
		document.getElementById(hidden6).style.display = 'none';
		document.getElementById(hidden7).style.display = 'none';
		return false;
	}
</script>

<!-- refresh disable -->
<script type="text/javascript">
	document.onkeydown = function(event) {
		switch (event.keyCode) {
		case 116: //F5 button 
			event.returnValue = false;
			event.keyCode = 0;
			return false;
		case 82: //R button 
			if (event.ctrlKey) {
				event.returnValue = false;
				event.keyCode = 0;
				return false;
			}
		}
	}
</script>

<!-- back disable -->
<script type="text/javascript">
	history.pushState(null, null, document.URL);
	window.addEventListener('popstate', function() {
		history.pushState(null, null, document.URL);
	});
</script>

<!-- refresh popup disable -->
<script type="text/javascript">
	function UnLoadWindow() {
		return 'We strongly recommend NOT refreshing this window. Answers will be lost.'
	}
	window.onbeforeunload = UnLoadWindow;
</script>

</head>
<body oncontextmenu="return false;" oncopy="return false"
	oncut="return false" onpaste="return false">

	<div class="container" style="margin-top: 38px;">
		<div class="row">
			<div class="col-md-8">

				<form action="answerValidate.jsp" method="post"
					onsubmit="return confirm('You cannot come back once you submit. Are you sure ?');">

					<div id="Page1">
						<P>1. What is the answer to this question?</p>
						<input type="radio" name="q1" value="a">Answer 1<br /> <input
							type="radio" name="q1" value="b">Answer 2<br /> <input
							type="radio" name="q1" value="c">Answer 3<br /> <input
							type="radio" name="q1" value="d">Answer 4<br />
						<br>

						<p>2. What is the answer to this question?</p>
						<input type="radio" name="q2" value="a">Answer 1<br /> <input
							type="radio" name="q2" value="b">Answer 2<br /> <input
							type="radio" name="q2" value="c">Answer 3<br /> <input
							type="radio" name="q2" value="d">Answer 4<br />
						<br>

						<p>3. What is the answer to this question?</p>
						<input type="radio" name="q3" value="a">Answer 1<br /> <input
							type="radio" name="q3" value="b">Answer 2<br /> <input
							type="radio" name="q3" value="c">Answer 3<br /> <input
							type="radio" name="q3" value="d">Answer 4<br />
						<br>

						<p>4. What is the answer to this question?</p>
						<input type="radio" name="q4" value="a">Answer 1<br /> <input
							type="radio" name="q4" value="b">Answer 2<br /> <input
							type="radio" name="q4" value="c">Answer 3<br /> <input
							type="radio" name="q4" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page2" style="display: none">
						<P>5. What is the answer to this question?</p>
						<input type="radio" name="q5" value="a">Answer 1<br /> <input
							type="radio" name="q5" value="b">Answer 2<br /> <input
							type="radio" name="q5" value="c">Answer 3<br /> <input
							type="radio" name="q5" value="d">Answer 4<br />
						<br>

						<p>6. What is the answer to this question?</p>
						<input type="radio" name="q6" value="a">Answer 1<br /> <input
							type="radio" name="q6" value="b">Answer 2<br /> <input
							type="radio" name="q6" value="c">Answer 3<br /> <input
							type="radio" name="q6" value="d">Answer 4<br />
						<br>

						<p>7. What is the answer to this question?</p>
						<input type="radio" name="q7" value="a">Answer 1<br /> <input
							type="radio" name="q7" value="b">Answer 2<br /> <input
							type="radio" name="q7" value="c">Answer 3<br /> <input
							type="radio" name="q7" value="d">Answer 4<br />
						<br>

						<p>8. What is the answer to this question?</p>
						<input type="radio" name="q8" value="a">Answer 1<br /> <input
							type="radio" name="q8" value="b">Answer 2<br /> <input
							type="radio" name="q8" value="c">Answer 3<br /> <input
							type="radio" name="q8" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page3" style="display: none">
						<P>9. What is the answer to this question?</p>
						<input type="radio" name="q9" value="a">Answer 1<br /> <input
							type="radio" name="q9" value="b">Answer 2<br /> <input
							type="radio" name="q9" value="c">Answer 3<br /> <input
							type="radio" name="q9" value="d">Answer 4<br />
						<br>

						<p>10. What is the answer to this question?</p>
						<input type="radio" name="q10" value="a">Answer 1<br /> <input
							type="radio" name="q10" value="b">Answer 2<br /> <input
							type="radio" name="q10" value="c">Answer 3<br /> <input
							type="radio" name="q10" value="d">Answer 4<br />
						<br>

						<p>11. What is the answer to this question?</p>
						<input type="radio" name="q11" value="a">Answer 1<br /> <input
							type="radio" name="q11" value="b">Answer 2<br /> <input
							type="radio" name="q11" value="c">Answer 3<br /> <input
							type="radio" name="q11" value="d">Answer 4<br />
						<br>

						<p>12. What is the answer to this question?</p>
						<input type="radio" name="q12" value="a">Answer 1<br /> <input
							type="radio" name="q12" value="b">Answer 2<br /> <input
							type="radio" name="q12" value="c">Answer 3<br /> <input
							type="radio" name="q12" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page4" style="display: none">
						<p>13. What is the answer to this question?</p>
						<input type="radio" name="q13" value="a">Answer 1<br /> <input
							type="radio" name="q13" value="b">Answer 2<br /> <input
							type="radio" name="q13" value="c">Answer 3<br /> <input
							type="radio" name="q13" value="d">Answer 4<br />
						<br>

						<p>14. What is the answer to this question?</p>
						<input type="radio" name="q14" value="a">Answer 1<br /> <input
							type="radio" name="q14" value="b">Answer 2<br /> <input
							type="radio" name="q14" value="c">Answer 3<br /> <input
							type="radio" name="q14" value="d">Answer 4<br />
						<br>

						<p>15. What is the answer to this question?</p>
						<input type="radio" name="q15" value="a">Answer 1<br /> <input
							type="radio" name="q15" value="b">Answer 2<br /> <input
							type="radio" name="q15" value="c">Answer 3<br /> <input
							type="radio" name="q15" value="d">Answer 4<br />
						<br>

						<p>16. What is the answer to this question?</p>
						<input type="radio" name="q16" value="a">Answer 1<br /> <input
							type="radio" name="q16" value="b">Answer 2<br /> <input
							type="radio" name="q16" value="c">Answer 3<br /> <input
							type="radio" name="q16" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page5" style="display: none">
						<p>17. What is the answer to this question?</p>
						<input type="radio" name="q17" value="a">Answer 1<br /> <input
							type="radio" name="q17" value="b">Answer 2<br /> <input
							type="radio" name="q17" value="c">Answer 3<br /> <input
							type="radio" name="q17" value="d">Answer 4<br />
						<br>

						<p>18. What is the answer to this question?</p>
						<input type="radio" name="q18" value="a">Answer 1<br /> <input
							type="radio" name="q18" value="b">Answer 2<br /> <input
							type="radio" name="q18" value="c">Answer 3<br /> <input
							type="radio" name="q18" value="d">Answer 4<br />
						<br>

						<p>19. What is the answer to this question?</p>
						<input type="radio" name="q19" value="a">Answer 1<br /> <input
							type="radio" name="q19" value="b">Answer 2<br /> <input
							type="radio" name="q19" value="c">Answer 3<br /> <input
							type="radio" name="q19" value="d">Answer 4<br />
						<br>

						<p>20. What is the answer to this question?</p>
						<input type="radio" name="q20" value="a">Answer 1<br /> <input
							type="radio" name="q20" value="b">Answer 2<br /> <input
							type="radio" name="q20" value="c">Answer 3<br /> <input
							type="radio" name="q20" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page6" style="display: none">
						<p>21. What is the answer to this question?</p>
						<input type="radio" name="q21" value="a">Answer 1<br /> <input
							type="radio" name="q21" value="b">Answer 2<br /> <input
							type="radio" name="q21" value="c">Answer 3<br /> <input
							type="radio" name="q21" value="d">Answer 4<br />
						<br>

						<p>22. What is the answer to this question?</p>
						<input type="radio" name="q22" value="a">Answer 1<br /> <input
							type="radio" name="q22" value="b">Answer 2<br /> <input
							type="radio" name="q22" value="c">Answer 3<br /> <input
							type="radio" name="q22" value="d">Answer 4<br />
						<br>

						<p>23. What is the answer to this question?</p>
						<input type="radio" name="q23" value="a">Answer 1<br /> <input
							type="radio" name="q23" value="b">Answer 2<br /> <input
							type="radio" name="q23" value="c">Answer 3<br /> <input
							type="radio" name="q23" value="d">Answer 4<br />
						<br>

						<p>24. What is the answer to this question?</p>
						<input type="radio" name="q24" value="a">Answer 1<br /> <input
							type="radio" name="q24" value="b">Answer 2<br /> <input
							type="radio" name="q24" value="c">Answer 3<br /> <input
							type="radio" name="q24" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page7" style="display: none">
						<p>25. What is the answer to this question?</p>
						<input type="radio" name="q25" value="a">Answer 1<br /> <input
							type="radio" name="q25" value="b">Answer 2<br /> <input
							type="radio" name="q25" value="c">Answer 3<br /> <input
							type="radio" name="q25" value="d">Answer 4<br />
						<br>

						<p>26. What is the answer to this question?</p>
						<input type="radio" name="q26" value="a">Answer 1<br /> <input
							type="radio" name="q26" value="b">Answer 2<br /> <input
							type="radio" name="q26" value="c">Answer 3<br /> <input
							type="radio" name="q26" value="d">Answer 4<br />
						<br>

						<p>27. What is the answer to this question?</p>
						<input type="radio" name="q27" value="a">Answer 1<br /> <input
							type="radio" name="q27" value="b">Answer 2<br /> <input
							type="radio" name="q27" value="c">Answer 3<br /> <input
							type="radio" name="q27" value="d">Answer 4<br />
						<br>

						<p>28. What is the answer to this question?</p>
						<input type="radio" name="q28" value="a">Answer 1<br /> <input
							type="radio" name="q28" value="b">Answer 2<br /> <input
							type="radio" name="q28" value="c">Answer 3<br /> <input
							type="radio" name="q28" value="d">Answer 4<br />
						<br>
					</div>

					<div id="Page8" style="display: none">
						<p>29. What is the answer to this question?</p>
						<input type="radio" name="q29" value="a">Answer 1<br /> <input
							type="radio" name="q29" value="b">Answer 2<br /> <input
							type="radio" name="q29" value="c">Answer 3<br /> <input
							type="radio" name="q29" value="d">Answer 4<br />
						<br>

						<p>30. What is the answer to this question?</p>
						<input type="radio" name="q30" value="a">Answer 1<br /> <input
							type="radio" name="q30" value="b">Answer 2<br /> <input
							type="radio" name="q30" value="c">Answer 3<br /> <input
							type="radio" name="q30" value="d">Answer 4<br />
						<br>
					</div>
					<input type="submit" class="btn btn-success" value="Submit Answers">
				</form>


			</div>
			<div class="col-md-4">
				<div class="col-md-6">
					<button type="button" class="btn btn-info">
						<a href="page1" style="color: #ffffff;"
							onclick="return show('Page1','Page2','Page3','Page4','Page5','Page6','Page7','Page8');">Page1</a>
					</button>

				</div>
				<div class="col-md-6">
					<button type="button" class="btn btn-info">
						<a href="page2" style="color: #ffffff;"
							onclick="return show('Page2','Page1','Page3','Page4','Page5','Page6','Page7','Page8');">Page2</a>
					</button>
				</div>

				<div class="col-md-6">
					<br>
					<button type="button" class="btn btn-info">
						<a href="page3" style="color: #ffffff;"
							onclick="return show('Page3','Page2','Page1','Page4','Page5','Page6','Page7','Page8');">Page3</a>
					</button>
				</div>
				<div class="col-md-6">
					<br>
					<button type="button" class="btn btn-info">
						<a href="page4" style="color: #ffffff;"
							onclick="return show('Page4','Page2','Page3','Page1','Page5','Page6','Page7','Page8');">Page4</a>
					</button>
				</div>

				<div class="col-md-6">
					<br>
					<button type="button" class="btn btn-info">
						<a href="page5" style="color: #ffffff;"
							onclick="return show('Page5','Page2','Page3','Page4','Page1','Page6','Page7','Page8');">Page5</a>
					</button>
				</div>
				<div class="col-md-6">
					<br>
					<button type="button" class="btn btn-info">
						<a href="page6" style="color: #ffffff;"
							onclick="return show('Page6','Page2','Page3','Page4','Page5','Page1','Page7','Page8');">Page6</a>
					</button>
				</div>

				<div class="col-md-6">
					<br>
					<button type="button" class="btn btn-info">
						<a href="page7" style="color: #ffffff;"
							onclick="return show('Page7','Page2','Page3','Page4','Page5','Page6','Page1','Page8');">Page7</a>
					</button>
				</div>
				<div class="col-md-6">
					<br>
					<button type="button" class="btn btn-info">
						<a href="page8" style="color: #ffffff;"
							onclick="return show('Page8','Page2','Page3','Page4','Page5','Page6','Page7','Page1');">Page8</a>
					</button>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>

	<br>
	<br>

</body>
</html>