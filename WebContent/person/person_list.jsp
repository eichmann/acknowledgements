<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="ack"
	uri="http://icts.uiowa.edu/AcknowledgementsTagLib"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="acknowledgements Person List" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
            <h1>List of Person Mentions</h1>
			<ol class="bulletedList">
				<ack:foreachPerson var="X" sortCriteria="last_name, first_name">
					<ack:person>
						<li><a href="person.jsp?id=<ack:personID/>"><ack:personLastName />,	<ack:personFirstName /></a>
					</ack:person>
				</ack:foreachPerson>
			</ol>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>

