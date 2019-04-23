<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<div class="panel panel-primary certificates" <c:if  test="${profile.getCertificates() == null}"> style="display: none" </c:if>>
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-certificate"></i> Certificates <a class="edit-block" href="/edit/certificates">Edit</a>
		</h3>
	</div>
	<c:forEach var="certificates" items="${profile.certificates}">
	<div class="panel-body">
		<a data-url="${certificates.largeUrl}" data-title="${certificates.name}" href="#" class="thumbnail certificate-link">
			<img alt="${certificates.name}" src="${certificates.smallUrl}" class="img-responsive"> <span>${certificates.name}</span>
		</a> 
	</div>
	</c:forEach>
</div>