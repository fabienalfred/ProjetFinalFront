<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<c:if test="${empty destination}">
	<c:out value="Voyage indisponible" />
</c:if>
<br/ >
<div class="maxi-card demo-card-wide mdl-card mdl-shadow--2dp">
	<div class="mdl-card__title"
		style="background: url('ressources/${destination.images[0]}') center/cover;">
		<h2 class="mdl-card__title-text">${destination.region }</h2>
	</div>
	<div class="mdl-card__supporting-text">${destination.description }</div>
</div>

<br />
<div id="divTableDetails">
	<table id="tableDetails"
		class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
		<thead>
			<tr>
				<th>Date de départ</th>
				<th>Date de retour</th>
				<th>Prix</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<fmt:setLocale value="fr_FR" />
			<c:forEach items="${destination.dateVoyages}" var="date">
				<tr>
					<td><fmt:formatDate value="${date.dateDepart }" type="date"
							dateStyle="long" /></td>
					<td><fmt:formatDate value="${date.dateRetour }" type="date"
							dateStyle="long" /></td>
					<td><fmt:formatNumber value="${date.prix }" type="currency" /></td>
					<td>
						<form method="post"
							action="FrontController?cde=selectDate&idDest=${destination.id }&idDate=${date.id }">
							<button type="submit" id="reserverButton"
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Réserver</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>