	<form id="formInscr" method="post" action="FrontController?cde=inscription">
		<br />
		<fieldset class="mdl-shadow--4dp">
			<legend class="mdl-shadow--4dp">Identification :</legend>
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
			<legend class="mdl-shadow--4dp">Adresse :</legend>
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
			<legend class="mdl-shadow--4dp">Adresse de facturation :</legend>
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
		<fieldset id="buttonField" class="mdl-shadow--4dp">
			<button type="submit" id="validate"
				class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Valider</button>
		</fieldset>
	</form>
	<br />
