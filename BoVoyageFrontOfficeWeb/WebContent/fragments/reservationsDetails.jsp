<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<br />
<div id="divTableDetails">
	<table id="tableDetails"
		class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
		<thead>
			<tr>
				<th>Destination</th>
				<th>Date de départ</th>
				<th>Date de retour</th>
				<th>Voyageurs</th>
				<th>Prix</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<fmt:setLocale value="fr_FR" />
			<%-- 			<c:forEach items="${destination.dateVoyages}" var="date"> --%>
			<tr>
				<form method="post"
					action="FrontController?cde=confirmDate&idDest=${dest.id }&idDate=${date.id }">
				<td><c:out value="${dest.region }" /></td>
				<td><fmt:formatDate value="${date.dateDepart }" type="date"
						dateStyle="long" /></td>
				<td><fmt:formatDate value="${date.dateRetour }" type="date"
						dateStyle="long" /></td>
				<td><select name="nbVoyageurs">
						<c:forEach begin="1" end="9" varStatus="i">
							<option>${i.index }</option>
						</c:forEach>
				</select></td>
				<td><fmt:formatNumber value="${date.prix }" type="currency" /></td>
				<td>
					<button type="submit" id="confirmButton"
						class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Confirmer</button>
				</td>
				</form>
			</tr>
			<%-- 			</c:forEach> --%>
		</tbody>
	</table>
</div>