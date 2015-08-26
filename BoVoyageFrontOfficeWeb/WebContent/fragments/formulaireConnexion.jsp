	<form method="post" action="FrontController?cde=connexion">
		<br />
		<fieldset class="mdl-shadow--4dp">
			<legend class="mdl-shadow--2dp">Identification :</legend>
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
		<fieldset id="buttonField" class="mdl-shadow--4dp">
			<button type="submit" id="validate"
				class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Valider</button>
		</fieldset>
	</form>
