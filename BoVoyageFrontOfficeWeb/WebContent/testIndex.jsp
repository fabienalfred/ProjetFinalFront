<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Material Design Lite -->
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.indigo-pink.min.css">
<!-- Material Design icon font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/boVoyage.css">
<title>BoVoyage</title>
</head>
<body>
	<div id="page">
		<!-- Always shows a header, even in smaller screens. -->
		<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<!-- Title -->
				<span class="mdl-layout-title">Title</span>
				<!-- Add spacer, to align navigation to the right -->
				<div class="mdl-layout-spacer"></div>
				<!-- Navigation. We hide it in small screens. -->
				<nav class="mdl-navigation mdl-layout--large-screen-only"> <a
					class="mdl-navigation__link" href="">Link</a> <a
					class="mdl-navigation__link" href="">Link</a> <a
					class="mdl-navigation__link" href="">Link</a> <a
					class="mdl-navigation__link" href="">Link</a> </nav>
			</div>
			</header>
			<div class="mdl-layout__drawer">
				<span class="mdl-layout-title">Title</span>
				<nav class="mdl-navigation"> <a class="mdl-navigation__link"
					href="">Link</a> <a class="mdl-navigation__link" href="">Link</a> <a
					class="mdl-navigation__link" href="">Link</a> <a
					class="mdl-navigation__link" href="">Link</a> </nav>
			</div>
			<main class="mdl-layout__content">
			<div class="page-content">
				<!-- Your content goes here -->
			</div>
			</main>
		</div>
	</div>
</body>
</html>