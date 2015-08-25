<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="FrontController?cde=connexion">
		<br />
		<fieldset>
			<legend>Identification :</legend>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="email"
					id="email" /> <label class="mdl-textfield__label" for="email">Email</label>
			</div>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="password" name="password"
					id="password" /> <label class="mdl-textfield__label"
					for="password">Mot de Passe</label>
			</div>
		</fieldset>
		<br />
		<fieldset id="buttonField">
			<input type="submit" id="validate"
				class="mdl-button mdl-js-button mdl-button--primary" value="Valider" />
		</fieldset>
	</form>
</body>
</html>