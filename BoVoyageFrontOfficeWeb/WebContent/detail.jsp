<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.blue-light_blue.min.css" />
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/boVoyage.css">
<title>Voyage</title>
</head>
<body>
	<fmt:setLocale value="fr_FR" />
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header">
		<div class="mdl-layout__header-row">
			<span class="mdl-layout-title">BoVoyages</span>
			<nav class="mdl-navigation mdl-layout--large-screen-only"> <a
				class="mdl-navigation__link" href="FrontController">Accueil</a> <a
				class="mdl-navigation__link" href="FrontController?cde=voyages">Voyages</a>
			<a class="mdl-navigation__link" href="FrontController?cde=compte">Compte</a>
			</nav>
			<div class="mdl-layout-spacer"></div>
			<nav> <a class="mdl-navigation__link"
				href="FrontController?cde=connexion">Connexion</a> </nav>
		</div>
		</header>
		<main class="mdl-layout__content">
		<div class="page-content">
			<div id="page">
				<c:if test="${empty voyage}">
					<c:out value="Voyage indisponible" />
				</c:if>
				<div class="maxi-card demo-card-wide mdl-card mdl-shadow--2dp">
					<div class="mdl-card__title"
						style="background: url('ressources/canadat.gif') center/cover;">
						<h2 class="mdl-card__title-text">${voyage.region }</h2>
					</div>
					<div class="mdl-card__supporting-text">${voyage.description }</div>
					<c:forEach items="${voyage.dateVoyages}" var="date">
						<div class="mdl-card__supporting-text">

							<fmt:formatNumber value="${date.prix }" type="currency" />
						</div>
					</c:forEach>
					<div class="mdl-card__actions mdl-card--border">
						<a href="FrontController?cde=commander&idVoyage=${voyage.id}"
							class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
							Commander </a>
					</div>
				</div>

<br/>
				<table
					class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
					<thead>
						<tr>
							<th>Date de départ</th>
							<th>Date de retour</th>
							<th>Prix</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${voyage.dateVoyages}" var="date">
							<tr>
								<td><fmt:formatDate value="${date.dateDepart }" type="date" dateStyle="long"/></td>
								<td><fmt:formatDate value="${date.dateRetour }" type="date" dateStyle="long"/></td>
								<td><fmt:formatNumber value="${date.prix }" type="currency" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<jsp:include page="fragments/footer.jsp"></jsp:include>
		</div>
		</main>
	</div>
</body>
</html>

