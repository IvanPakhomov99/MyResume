<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-language"></i> Foreign languages <a class="edit-block" href="/edit/languages">Edit</a>

		</h3>
	</div>
	<div class="panel-body">
		<c:forEach var="languages" items="${profile.languages}">
			<strong>${languages.name}:</strong> ${languages.level}(${languages.type})<br>
		</c:forEach>
	</div>
</div>
