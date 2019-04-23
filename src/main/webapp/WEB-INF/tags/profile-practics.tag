<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-briefcase"></i> Practic Experience <a class="edit-block" href="/edit/practics">Edit</a>
		</h3>
	</div>
	<div class="panel-body">
		<ul class="timeline">
			<li>
				<div class="timeline-badge danger">
					<i class="fa fa-briefcase"></i>
				</div>
				<c:forEach var="practic" items="${profile.practics}">
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h4 class="timeline-title">${practic.position} at ${practic.company}</h4>
						<p>
							<small class="dates"><i class="fa fa-calendar"></i> ${practic.getBeginDate()} -
								<c:choose>
									<c:when test = "${practic.finishDate != null}">
										<strong class="label label-danger">${practic.getFinishDate()}</strong>
									</c:when>
									<c:otherwise>
										<strong class="label label-danger">Current</strong>
									</c:otherwise>
								</c:choose>
							</small>
						</p>
					</div>
					<div class="timeline-body">
						<p>
							<strong>Responsibilities included:</strong> ${practic.getResponsibilities()}
						</p>
						<c:if test="${practic.getDemo()!= null && practic.getSrc()!=null}">
						<p>
							<strong>Demo: </strong><a href="http://LINK_TO_DEMO_SITE">${practic.getDemo()}</a>
						</p>
						<p>
							<strong>Source code: </strong><a href="https://github.com/TODO">${practic.getSrc()}</a>
						</p>
						</c:if>
					</div>
				</div>
				</c:forEach>
			</li>
		</ul>
	</div>
</div>