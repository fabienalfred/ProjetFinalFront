<div id="divFormVoyageur">
	<br />
	<fieldset class="mdl-shadow--4dp">
		<legend class="mdl-shadow--2dp">Identification voyageur ${param.index } :</legend>
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="name${param.index }" id="name${param.index }" /> <label
				class="mdl-textfield__label" for="name${param.index }">Nom</label>
		</div>
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="prenom${param.index }" id="prenom${param.index }" /> <label
				class="mdl-textfield__label" for="prenom${param.index }">Prenom</label>
		</div>
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="date${param.index }" id="date${param.index }" /> <label
				class="mdl-textfield__label" for="date${param.index }">Date
				de naissance</label>
		</div>
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="email${param.index }" id="email${param.index }" /> <label
				class="mdl-textfield__label" for="email${param.index }">Email</label>
		</div>
	</fieldset>
	<fieldset class="mdl-shadow--4dp">
		<legend class="mdl-shadow--2dp">Adresse voyageur ${param.index } :</legend>
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="street${param.index }" id="street${param.index }" /> <label
				class="mdl-textfield__label" for="street${param.index }">Rue</label>
		</div>
		<br />
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="postalCode${param.index }" id="postalCode${param.index }" />
			<label class="mdl-textfield__label" for="postalCode${param.index }">Code
				Postal</label>
		</div>
		<br />
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="city${param.index }" id="city${param.index }" /> <label
				class="mdl-textfield__label" for="city${param.index }">Ville</label>
		</div>
		<br />
		<div
			class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input class="mdl-textfield__input" type="text"
				name="country${param.index }" id="country${param.index }" /> <label
				class="mdl-textfield__label" for="country${param.index }">Pays</label>
		</div>
		<br />
	</fieldset>
</div>
<br />