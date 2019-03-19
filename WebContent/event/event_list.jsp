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
	<jsp:param name="title" value="acknowledgements Event List" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
            <h1>List of Event Mentions</h1>
			<ol class="bulletedList">
				<ack:foreachEvent var="X" sortCriteria="event">
					<ack:event>
						<li><a href="event.jsp?id=<ack:eventID/>"><ack:eventEvent /></a>
					</ack:event>
				</ack:foreachEvent>
			</ol>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>

