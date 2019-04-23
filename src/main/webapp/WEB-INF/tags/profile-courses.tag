<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<c:if test="${profile.courses != null}">
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-book"></i> Courses <a class="edit-block" href="/edit/courses">Edit</a>
		</h3>
	</div>
	<div class="panel-body">
		<c:forEach var="courses" items="${profile.courses}">
		<ul class="timeline">
			<li>
				<div class="timeline-badge success">
					<i class="fa fa-book"></i>
				</div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h4 class="timeline-title">${courses.name} at ${courses.school} </h4>
						<p>
							<small class="dates"><i class="fa fa-calendar"></i> <strong>Finish Date:</strong>
								<c:choose>
									<c:when test="${courses.finishDate != null}">
										<strong class="label label-danger">${courses.finishDate} </strong>
									</c:when>
									<c:otherwise>
										<strong class="label label-danger">Not finished yet</strong>
									</c:otherwise>
								</c:choose>
							</small>
						</p>
					</div>
				</div>
			</li>
		</ul>
		</c:forEach>
	</div>
</div>
</c:if>