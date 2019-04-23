<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="panel panel-primary">
	<a href="/edit"><img class="img-responsive photo" src="${profile.largePhoto}" alt="photo"></a>
	<h1 class="text-center">
		<a style="color: black;" href="/edit">${profile.fullName}</a>
	</h1>
	<h6 class="text-center">
		<strong>${profile.city}, ${profile.country}</strong>
	</h6>
	<h6 class="text-center">
		<strong>Age:</strong> ${profile.getAge()}, <strong>Birthday: </strong> ${profile.birthDay}
	</h6>
	<div class="list-group contacts">
		<c:if test = "${profile.phone != null}">
            <a class="list-group-item" href="tel:+380507525137"><i class="fa fa-phone"></i> ${profile.phone}</a>
        </c:if>

		<c:if test = "${profile.email != null}">
            <a class="list-group-item" href="mailto:richard-hendricks@gmail.com"><i class="fa fa-envelope"></i> ${profile.email}</a>
        </c:if>

		<c:if test = "${profile.getContacts().skype != null}">
            <a class="list-group-item" href="javascript:void(0);"><i class="fa fa-skype"></i>${profile.getContacts().skype}</a>
        </c:if>

		<c:if test = "${profile.getContacts().vkontakte != null}">
            <a target="_blank" class="list-group-item" href="https://vk.com/richard-hendricks"><i class="fa fa-vk"></i> ${profile.getContacts().vkontakte}</a>
        </c:if>

		<c:if test = "${profile.getContacts().facebook != null}">
            <a target="_blank" class="list-group-item" href="https://facebook.com/richard-hendricks"><i class="fa fa-facebook"></i> ${profile.getContacts().facebook}</a>
        </c:if>

		<c:if test = "${profile.getContacts().linkedin != null}">
            <a target="_blank" class="list-group-item" href="https://linkedin.com/richard-hendricks"><i class="fa fa-linkedin"></i> ${profile.getContacts().linkedin}</a>
        </c:if>

		<c:if test = "${profile.getContacts().github != null}">
            <a target="_blank" class="list-group-item" href="https://github.com/richard-hendricks"><i class="fa fa-github"></i> ${profile.getContacts().github}</a>
        </c:if>

		<c:if test = "${profile.getContacts().stackoverflow != null}">
            <a target="_blank" class="list-group-item" href="https://stackoverflow.com/richard-hendricks"><i class="fa fa-stack-overflow"></i> ${profile.getContacts().stackoverflow}</a>
        </c:if>

	</div>
</div>