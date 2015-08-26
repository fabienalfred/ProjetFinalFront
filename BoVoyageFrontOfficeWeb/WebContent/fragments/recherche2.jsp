<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>


<c:if test="${empty destinations}">
	<c:out value="Aucun voyage disponible" />
</c:if>
<div class="mini-cards">
	<c:forEach items="${destinations }" var="dest" varStatus="i">
		<div class="mini-card demo-card-wide mdl-card mdl-shadow--4dp">
			<div class="mdl-card__title"
				style="background: url('ressources/${dest.image}') center/cover;">
				<h2 class="mdl-card__title-text">${dest.region }</h2>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<a href="FrontController?cde=details&idVoyage=${dest.id}"
					class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
					Détails </a>
			</div>
		</div>
		<c:if test="${i.index % 2 != 0 }">
</div>
<div class="mini-cards">
	</c:if>
	</c:forEach>
</div>