<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<button id="demo-menu-lower-right"
	class="mdl-button mdl-js-button mdl-button--icon">
	<i class="material-icons">more_vert</i>
</button>
<div id="popupLogin"
	class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
	for="demo-menu-lower-right">
	<form method="post" action="FrontController?cde=connexion">
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
			<div id="buttonField">
				<button type="submit" id="validate"
					class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect"
					value="Valider">Valider</button>
			</div>
		</fieldset>
	</form>
</div>