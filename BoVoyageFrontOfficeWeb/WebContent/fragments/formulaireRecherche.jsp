<form id="formRecherche" method="post" action="FrontController?cde=voyages">
		<br />
		<fieldset class="mdl-shadow--4dp">
			<legend class="mdl-shadow--4dp">Filtres</legend>
			<div
				class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
				<input class="mdl-textfield__input" type="text" name="region"
					id="region" /> <label class="mdl-textfield__label" for="region">Region</label>
			</div>
		</fieldset>
		<br/>
		<fieldset id="buttonField" class="mdl-shadow--4dp">
			<button type="submit" id="validate"
				class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Rechercher</button>
		</fieldset>
	</form>