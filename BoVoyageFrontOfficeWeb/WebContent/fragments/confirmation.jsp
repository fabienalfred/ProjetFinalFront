<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<br />
<div id="divTableDetails">
	<br />
	<table id="tableDetails"
		class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
		<thead>
			<tr>
				<th colspan="5" style="text-align: center;">Nous vous remercions d'avoir réservé votre voyage</th>
			</tr>
			<tr>
				<th>Destination</th>
				<th>Date de départ</th>
				<th>Date de retour</th>
				<th>Voyageurs</th>
				<th>Prix</th>
			</tr>
		</thead>
		<tbody>
			<fmt:setLocale value="fr_FR" />
				<tr>
					<td><c:out value="${dossier.region }"/></td>
					<td><fmt:formatDate value="${dossier.dateVoyage.dateDepart }" type="date"
							dateStyle="long" /></td>
					<td><fmt:formatDate value="${dossier.dateVoyage.dateRetour }" type="date"
							dateStyle="long" /></td>
					<td><c:out value="${nbVoyageurs }" /></td>
					<td><fmt:formatNumber value="${dossier.prix }" type="currency" /></td>
				</tr>
		</tbody>
	</table>
</div>