<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PubMed Central Acknowledgements 1.0</title>
<style type="text/css" media="all">
@import "<util:applicationRoot/>/resources/style.css";
</style>
</head>
<body>
    <div id="content"><jsp:include page="/header.jsp" flush="true" />
        <jsp:include page="/menu.jsp" flush="true"><jsp:param
                name="caller" value="research" /></jsp:include><div id="centerCol">
                <form action="award_search.jsp">
                Award regular expression: <input type="text" id="expression" name="expression" size="100" value="${param.expression}">
                </form>
            <c:if test="${not empty param.expression }">
            <h3>Matching Awards</h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Award</th>
                </tr>
                <sql:query var="awards" dataSource="jdbc/AcknowledgementsTagLib">
                    select id,award
                    from pubmed_central_ack_stanford.award
                    where award~?
                    order by 2;
                    <sql:param>${param.expression}</sql:param>
                </sql:query>
                <c:forEach items="${awards.rows}" var="row" varStatus="rowCounter">
                    <tr>
                        <td><a href="award.jsp?id=${row.id}">${row.id}</td>
                        <td>${row.award}</td>
                    </tr>
                </c:forEach>
            </table>
            </c:if>
            <jsp:include page="/footer.jsp" flush="true" /></div>
    </div>
</body>
</html>
