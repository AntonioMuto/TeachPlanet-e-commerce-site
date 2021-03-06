window.onload = function() {
	mostraChatBox();
	caricaTesto();
}

function caricaTesto() {
	
	if(indice == undefined)
		return;
	
	var div = document.querySelector("#chatBox");
	
	bot = "<div class = \"messaggioBot\">"
				+ "<p>" + indice.testo.domanda + "</p>"
			+ "</div>";
		
	sceltePossibili = "";
	if(indice.testo.risposte[0] != "") {
		sceltePossibili = "<div id = \"sceltePossibili\" class = \"row\">";
		
		sizeColonne = 10 / indice.testo.risposte.length;

		testoColonne = "col-" + sizeColonne;
		
		for(let i = 0; i < indice.testo.risposte.length; ++i) {
			sceltePossibili += "<div class = \"col-" + sizeColonne +"\" id = \"scelta\">"
								+ "<button onclick = \"javascript:scelta(" + i + ")\">"
									+ "<p>" + indice.testo.risposte[i] + "</p>"
								+ "</button>"
							+ "</div>";
		}
		
		sceltePossibili += "</div>";
	}
	
	
	div.innerHTML = sceltePossibili + bot + div.innerHTML;
	

	if(sceltePossibili == "") {

		indice = indice.discendenti[LEFT];
		caricaTesto();
	}
}


function inserisciRispostaUtenteSelezionata(i) {
	
	var div = document.querySelector("#chatBox");
	
	utente = "<div class = \"messaggioUtente\">"
				+ "<p>" + indice.testo.risposte[i] + "</p>"
			+ "</div>";
			
	div.innerHTML = utente + div.innerHTML;
}


function svuotaTuttaChatBox() {
	
	document.querySelector("#chatBox").innerHTML = "";
	
}

