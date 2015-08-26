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
			<tr>
				<form method="post"
					action="FrontController?cde=selectDate&idDest=${dest.id }&idDate=${date.id }">
				<td><c:out value="${dest.region }" /></td>
				<td><fmt:formatDate value="${date.dateDepart }" type="date"
						dateStyle="long" /></td>
				<td><fmt:formatDate value="${date.dateRetour }" type="date"
						dateStyle="long" /></td>
				<td>
					<select name="nbVoy">
					<c:forEach var="i" begin="1" end="9">
						<c:if test="${i == nbVoy }" > 
							<c:set var="selected" value="selected='selected'"/>
						</c:if>
						<c:if test="${i != nbVoy }" >
							<c:set var="selected" value=""/>
						</c:if>
						<option value="${i }" ${selected }>${i }</option>
					</c:forEach>
					</select>
				
<!-- 					<button id="remVButton" type="button" -->
<!-- 						class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored"> -->
<!-- 						<i class="material-icons">remove</i> -->
<!-- 					</button> -->
<!-- 					<label id="nbVoyageurs">1</label> -->
<!-- 					<button id="addVButton" type="button" -->
<!-- 						class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored"> -->
<!-- 						<i class="material-icons">add</i> -->
<!-- 					</button> -->
				</td>
				<td><fmt:formatNumber value="${date.prix * nbVoy }" type="currency" /></td>
				<td>
					<button type="submit" id="confirmButton"
						class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Confirmer</button>
				</td>
				</form>
			</tr>
		</tbody>
	</table>
	<br />
	<div id="divFormsVoyageurs">
	<form id="formVoyageur" method="post" action="FrontController?cde=confirmDate&idDest=${dest.id }&idDate=${date.id }&nbVoy=${nbVoy }">
		<jsp:include page="formulaire.jsp"></jsp:include>
		<c:forEach begin="1" end="${nbVoy }" varStatus="i">
			<jsp:include page="formVoyageur.jsp">
				<jsp:param value="${i.index }" name="index"/>
			</jsp:include>
		</c:forEach>
	<br />
	<fieldset id="buttonField" class="mdl-shadow--4dp">
		<button type="submit" id="validate"
			class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Valider</button>
	</fieldset>
	</form>
	</div>
</div>