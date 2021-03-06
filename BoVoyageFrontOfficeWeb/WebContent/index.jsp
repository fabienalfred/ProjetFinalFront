<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=Windows-1252">
<meta charset="Windows-1252">
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.blue-light_blue.min.css" />
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/boVoyage.css">
<link rel="stylesheet" href="css/formulaire.css">
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="js/changeNbVoyageurs.js"></script>
<title>BoVoyage</title>
</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<span class="mdl-layout-title">BoVoyages</span>
				<nav class="mdl-navigation mdl-layout--large-screen-only">
					<a class="mdl-navigation__link" href="FrontController">Accueil</a>
					<a class="mdl-navigation__link" href="FrontController?cde=voyages">Voyages</a>
					<a class="mdl-navigation__link" href="FrontController?cde=compte">Compte</a>
				</nav>
				<div class="mdl-layout-spacer"></div>
				<nav>
					<a class="mdl-navigation__link"
						href="FrontController?cde=connexion">Connexion</a>
				</nav>
			</div>
		</header>
		<main class="mdl-layout__content">
		<div class="page-content">
			<div id="page">
				<jsp:include page="fragments/${fragment}.jsp"></jsp:include>
			</div>
			<jsp:include page="fragments/footer.jsp"></jsp:include>
		</div>
		</main>
	</div>
</body>
</html>