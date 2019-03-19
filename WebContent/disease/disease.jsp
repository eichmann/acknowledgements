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
	<jsp:param name="title" value="acknowledgments Disease" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
            <h1>Disease Mentions</h1>
			<ack:disease ID="${param.id}">
				<table>
					<tr>
						<th>Disease</th>
						<td><ack:diseaseDisease /></td>
					</tr>
					<tr>
						<th>UMLS ID</th>
						<td><ack:diseaseUmlsId /></td>
					</tr>
					<tr>
						<th>UMLS match string</th>
						<td><ack:diseaseUmlsMatchString /></td>
					</tr>
				</table>
				<h4>Mentions</h4>
				<ol class="bulletedList">
					<ack:foreachDiseaseMention var="prov" sortCriteria="pmcid">
						<ack:diseaseMention>
							<li>PMCID: <a
								href="https://www.ncbi.nlm.nih.gov/pmc/articles/<ack:diseaseMentionPmcid/>/"><ack:diseaseMentionPmcid /></a>
								[<a
								href="<util:applicationRoot/>/acknowledgement/acknowledgement.jsp?pmcid=<ack:diseaseMentionPmcid/>">ack</a>]
							
						</ack:diseaseMention>
					</ack:foreachDiseaseMention>
				</ol>

			</ack:disease>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>

