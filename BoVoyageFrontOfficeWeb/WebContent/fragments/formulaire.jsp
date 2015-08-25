<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="FrontController?cde=inscription">
		<br />
		<fieldset class="mdl-shadow--4dp">
			<legend>Identification :</legend>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="name"
					id="name" /> <label class="mdl-textfield__label" for="name">Nom</label>
			</div>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="email"
					id="email" /> <label class="mdl-textfield__label" for="email">Email</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="password" name="password"
					id="password" /> <label class="mdl-textfield__label"
					for="password">Mot de Passe</label>
			</div>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="password"
					name="passwordConf" id="passwordConf" /> <label
					class="mdl-textfield__label" for="passwordConf">Confirmation</label>
			</div>
		</fieldset>
		<br />
		<fieldset class="mdl-shadow--4dp">
			<legend>Adresse :</legend>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="street"
					id="street" /> <label class="mdl-textfield__label" for="street">Rue</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="postalCode"
					id="postalCode" /> <label class="mdl-textfield__label"
					for="postalCode">Code Postal</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="city"
					id="city" /> <label class="mdl-textfield__label" for="city">Ville</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="country"
					id="country" /> <label class="mdl-textfield__label" for="country">Pays</label>
			</div>
			<br />
		</fieldset>
		<br />
		<fieldset class="mdl-shadow--4dp">
			<legend>Adresse de facturation :</legend>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="streetFact"
					id="streetFact" /> <label class="mdl-textfield__label"
					for="streetFact">Rue</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text"
					name="postalCodeFact" id="postalCodeFact" /> <label
					class="mdl-textfield__label" for="postalCodeFact">Code
					Postal</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="cityFact"
					id="cityFact" /> <label class="mdl-textfield__label"
					for="cityFact">Ville</label>
			</div>
			<br />
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="countryFact"
					id="countryFact" /> <label class="mdl-textfield__label"
					for="countryFact">Pays</label>
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