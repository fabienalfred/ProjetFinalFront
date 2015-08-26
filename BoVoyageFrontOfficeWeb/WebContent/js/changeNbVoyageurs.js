$(document).ready(function(){
	$("#addVButton").click(function(){
		var nb = parseInt($("#nbVoyageurs").html());
		if(nb<9) {
			$("#nbVoyageurs").html(nb+1);
		}
	});
	$("#remVButton").click(function() {
		var nb = parseInt($("#nbVoyageurs").html());
		if(nb>1) {
			$("#nbVoyageurs").html(nb-1);
		}
	});
})