<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>

<br />
<br />
<div class="maxi-card demo-card-wide mdl-card mdl-shadow--2dp">
	<div class="mdl-card__title"
		style="background: url('ressources/${destinations[0].image}') center/cover;">
		<h2 class="mdl-card__title-text">${destinations[0].region }</h2>
	</div>
	<div class="mdl-card__supporting-text">${destinations[0].description }</div>
	<div class="mdl-card__actions mdl-card--border">
		<a href="FrontController?cde=details&idVoyage=${destinations[0].id}"
			class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
			Détails </a>
	</div>
</div>
<br />

<div class="mini-cards">
	<c:forEach begin="1" end="4" varStatus="i">
		<div class="mini-card demo-card-wide mdl-card mdl-shadow--4dp">
			<div class="mdl-card__title"
				style="background: url('ressources/${destinations[i.index].image}') center/cover;">
				<h2 class="mdl-card__title-text">${destinations[i.index].region }</h2>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<a
					href="FrontController?cde=details&idVoyage=${destinations[i.index].id}"
					class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
					Détails </a>
			</div>
		</div>
		<c:if test="${i.index % 2 == 0 }">
</div>
<div class="mini-cards">
	</c:if>
	</c:forEach>
</div>
<br />