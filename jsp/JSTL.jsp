<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<hr>
<br>
<center>
	<h1>JSTL Demo</h1>
<c:set var="age" value="20" scope="page"></c:set>
<div class="box" id="jstl">
	<h1>
		Your Age : <c:out value="${age}"></c:out>
		<%--<c:remove var="age"></c:remove>
		Your Age after removing : <c:out value="${age}"></c:out>--%>
		<br><hr>
	</h1>
	<h1 style="color: green;">
		<c:if test="${age>18}">
			Congrats ! Your are eligible for Voting !
		</c:if>
		<hr>
	</h1>
	<c:forEach var="i" begin="0" end="10">
			<h2><c:out value="${i}"></c:out><sup>2</sup> = <c:out value="${i*i}"></c:out></h2>
	</c:forEach>
	<hr><br>
	<h1>
		Number test
		<c:set var="number" value="0"></c:set>
		<c:choose>
			<c:when test="${number>0}">
				<h2 style="color:green">The number <c:out value="${number}"></c:out> is a Positive number</h2>
			</c:when>
			<c:when test="${number<0}">
				<h2 style="color:red">The number <c:out value="${number}"></c:out> is a Negative number</h2>
			</c:when>
			<c:otherwise>
				<h2 style="color:blue">The number <c:out value="${number}"></c:out> is Zero</h2>
			</c:otherwise>
		</c:choose><hr><br>
	</h1>
	<h1>
		<%--<c:redirect url="http://www.google.com"></c:redirect>--%>
        <c:url var="myurl" value="http://www.github.com/" scope="application">
            <c:param name="q" value="ThePhilosopher4097" ></c:param>
        </c:url>
		<a href="JSTL_redirect.jsp">Click here to Search on Google</a>
	</h1>
</div>
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
