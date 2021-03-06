window.onload = function() {
	compila();
}

function compila() {
	if(ind == -1) {
		pannelloSuperiore("guidaSceltaProdotto");
		inserisciDomanda(categorie.domanda);
		inserisciRisposteCategoria(categorie.categoria);
		caricaDescrizione(categorie.descrizione);
		document.getElementById("rigaIndiceDomande").style.display = "none"; 
	} else if(ind == numDomandeTotaliCategoria) {
		inserisciDomanda("Recommended products");
		caricaDescrizione("Done!%Here is our list of " + categoriaSelezionata + " ideal according to your needs!");
		caricaPulsanteAltriProdotti();
	} else {
		document.getElementById("rigaIndiceDomande").style.display = ""; 
		pannelloSuperiore(categoriaSelezionata.toLowerCase());
		switch(categoriaSelezionata) {
			case "printer":
				inserisciDomanda(domande.stampanti.elencoDomande[ind].domanda);
				if(domande.stampanti.elencoDomande[ind].unaOpzione)
					inserisciRisposteRadio(domande.stampanti.elencoDomande[ind].risposte);
				else
					inserisciRisposteCheck(domande.stampanti.elencoDomande[ind].risposte);
				selezionaRisposteScelte();
				caricaDescrizione(domande.stampanti.elencoDomande[ind].descrizione);
				break;
			case "notebook":
				inserisciDomanda(domande.notebook.elencoDomande[ind].domanda);
				if(domande.notebook.elencoDomande[ind].unaOpzione)
					inserisciRisposteRadio(domande.notebook.elencoDomande[ind].risposte);
				else
					inserisciRisposteCheck(domande.notebook.elencoDomande[ind].risposte);
				selezionaRisposteScelte();
				caricaDescrizione(domande.notebook.elencoDomande[ind].descrizione);
				break;
			default:
				return;		
		}
//		console.log(preferenzeUtente);
		
	}
	
	eliminaEsitoSegnalazione();
	caricaFocusDomanda();
}

function pannelloSuperiore(stringa) {
	
	let prodotto;
	
	switch(stringa) {
		case("notebook"):
			prodotto = "notebook";
			break;
		case("printer"):
			prodotto = "printer";
			break;
		default:
			prodotto = "product";
			break;
	}
	
	var row = document.getElementById("imageDescription");		
	row.innerHTML = "<figure>"
						+ "<img src= \"../images/guidaSceltaProdotto/pannelloSopra/" + stringa + ".png\" class = \"img-fluid\"/>"
					+ "</figure>"
						+ "<div id = \"description\" >"
							+ "<p class = \"titolo\">Find the " + prodotto + "</p>"
							+ "<p>Discover the device for your needs. Our system advises you the best " + prodotto + ".</p>"
						+"</div>";
}

function inserisciDomanda(stringa) {
	let stringhe = stringa.split("%");
	var row = document.getElementById("domande");
	
	let testo = "";
	for(let i = 0; i < stringhe.length; ++i) {
		if(i != 0) 
			testo += "<small>" + stringhe[i] + "</small>";
		else	
			testo += stringhe[i];
		if(i + 1 < stringhe.length)
			testo += "<br />";
	}
		
	row.innerHTML = "<p class = \"domanda\">" + testo + "</p>";
}

function inserisciRisposteCategoria(oggetto) {
	var row = document.getElementById("risposte");
	row.innerHTML = "";
	
	righe = -1;
	for (let i = 0; i < oggetto.length; ++i) {
//		console.log("Righe " + righe);
		righe = inserisciRispostaRadio(oggetto[i], "", i, righe);
	}
}

function inserisciRisposteRadio(oggetto) {

	var row = document.getElementById("risposte");
	row.innerHTML = "";
	
	var righe = -1;
	for (let i = 0; i < oggetto.length; ++i){
//		console.log("Righe " + righe);
		if(oggetto[i].descrizione != "")
			righe = inserisciRispostaRadioConInfo(oggetto[i].risposta, oggetto[i].tag, i, righe);
		else
			righe = inserisciRispostaRadio(oggetto[i].risposta, oggetto[i].tag, i, righe);
	}
}

function inserisciRispostaRadioConInfo(risposta, tag, id, righe){

	var row = document.getElementById("risposte");
	
	let rigaInizio = "";
	let rigaFine = "";
//	console.log(id%3 + " " + id);
	if(id % 3 == 0) {
//		console.log("qui");
		righe++;
		rigaInizio = "<div class = \"row\" id = " + righe + " >";	
		rigaFine = "</div>";
		
	} else
		row = document.getElementById(righe);
	
	let resourceImg = "../images/guidaSceltaProdotto/risposte/";
	if(categoriaSelezionata != undefined)
		resourceImg = "../images/guidaSceltaProdotto/" + categoriaSelezionata + "/risposte/";
	
	row.innerHTML = row.innerHTML + rigaInizio + "<label for = \""+ risposta.toLowerCase() + "\" class= \"col-sm-4 \">"
													+ "<div id = \"rispostaJS\" >" 
														+ "<input id=\"" + risposta.toLowerCase() + "\" type=\"radio\" name = \"collega\" value = \"" + tag + "\" onclick = \"focusRisposte()\" />"
														+ "<figure>"	
															+ "<img src=\"" + resourceImg + risposta.toLowerCase() + ".png\" class=\"img-fluid\"/>" 	
														+ "</figure>"
														+ "<div class = \"risposta\">"
															+ risposta
															+ "<button type=\"button\" class = \"informazione\" id = " + risposta + " onclick = caricaInfo(" + id + ")>"
																+"<img src = ../images/guidaSceltaProdotto/icone/info.png  class=\"img-fluid\"/>"
															+ "</button>"
														+ "</div>"
													+ "</div>"
											+ "</label>" 
								  + rigaFine;
	return righe;
}

function inserisciRispostaRadio(risposta, tag, id, righe){

	var row = document.getElementById("risposte");
	
	let rigaInizio = "";
	let rigaFine = "";
	if(id % 3 == 0) {
		++righe;
		rigaInizio = "<div class = \"row\" id = " + righe + " >";	
		rigaFine = "</div>";
		
	} else
		row = document.getElementById(righe);
	
	let resourceImg = "../images/guidaSceltaProdotto/risposte/";
	if(categoriaSelezionata != undefined && ind != -1)
		resourceImg = "../images/guidaSceltaProdotto/" + categoriaSelezionata + "/risposte/";
		
	row.innerHTML += rigaInizio + "<label for = \""+ risposta.toLowerCase() + "\" class= \"col-sm-4 \">"
													+ "<div id = \"rispostaJS\" >" 
														+ "<input id=\"" + risposta.toLowerCase() + "\" type=\"radio\" name = \"collega\" value = \"" + tag + "\" onclick = \"focusRisposte()\" />"
														+ "<figure>"
															+ "<img src=\"" + resourceImg + risposta.toLowerCase() + ".png\" class=\"img-fluid\" />" 	
														+ "</figure>"
														+ "<p class = \"risposta\">"
															+ risposta
														+ "</p>"
													+ "</div>"
											+ "</label>" 
								  + rigaFine;
	return righe;
}

function inserisciRisposteCheck(oggetto) {

	var row = document.getElementById("risposte");
	row.innerHTML = "";

	var righe = -1;
	for (let i = 0; i < oggetto.length; ++i){
		if(oggetto[i].descrizione != "")
			righe = inserisciRispostaCheckConInfo(oggetto[i].risposta, oggetto[i].tag, i, righe);
		else
			righe = inserisciRispostaCheck(oggetto[i].risposta, oggetto[i].tag, i, righe);
	}
}

function inserisciRispostaCheckConInfo(risposta, tag,  id, righe){

	var row = document.getElementById("risposte");
	
	let rigaInizio = "";
	let rigaFine = "";
	if(id % 3 == 0) {
		righe++;
		rigaInizio = "<div class = \"row\" id = " + righe + " >";	
		rigaFine = "</div>";
	} else
		row = document.getElementById(righe);
	
	let resourceImg = "../images/guidaSceltaProdotto/risposte/";
	if(categoriaSelezionata != undefined)
		resourceImg = "../images/guidaSceltaProdotto/" + categoriaSelezionata + "/risposte/";
		
	row.innerHTML = row.innerHTML + rigaInizio + "<label for = \""+ risposta.toLowerCase() + "\" class= \"col-sm-4 \">"
													+ "<div id = \"rispostaJS\" >" 
														+ "<input id=\"" + risposta.toLowerCase() + "\" type=\"checkbox\" name = \"collega\" value = \"" + tag + "\" onclick = \"focusRisposte()\" />"
														+ "<figure>"
															+ "<img src=\"" + resourceImg + risposta.toLowerCase() + ".png\" class=\"img-fluid\" />" 	
														+ "</figure>"
														+ "<div class = \"risposta\">"
															+ risposta
															+ "<button type=\"button\" class = \"informazione\" id = " + risposta + " onclick = caricaInfo(" + id + ")>"
																+"<img src = ../images/guidaSceltaProdotto/icone/info.png class=\"img-fluid\" />"
															+ "</button>"
														+ "</div>"
													+ "</div>"
												+ "</label>"
								 		 + rigaFine;
								
	return righe;
}

function inserisciRispostaCheck(risposta, tag, id, righe){

	var row = document.getElementById("risposte");
	let rigaInizio = "";
	let rigaFine = "";
	if(id % 3 == 0) {
		righe++;
		rigaInizio = "<div class = \"row\" id = " + righe + " >";	
		rigaFine = "</div>";
	} else
		row = document.getElementById(righe);
	
	let resourceImg = "../images/guidaSceltaProdotto/risposte/";
	if(categoriaSelezionata != undefined && ind != -1)
		resourceImg = "../images/guidaSceltaProdotto/" + categoriaSelezionata + "/risposte/";
		
	row.innerHTML = row.innerHTML + rigaInizio + "<label for = \""+ risposta.toLowerCase() + "\" class= \"col-xs-4 \">"
													+ "<div id = \"rispostaJS\" >" 
														+ "<input id=\"" + risposta.toLowerCase() + "\" type=\"checkbox\" name = \"collega\" value = \"" + tag + "\" onclick = \"focusRisposte()\"/>"
														+ "<figure>"
															+ "<img src=\"" + resourceImg + risposta.toLowerCase() + ".png\" class=\"img-fluid\"/>" 	
														+ "</figure>"
														+ "<p class = \"risposta\">"
															+ risposta
														+ "</p>"
													+ "</div>"
											   + "</label>" 
									 + rigaFine;
	return righe;
}


function inserisciProdottiTag(prodottiTag) {
	var row = document.getElementById("risposte");
	
	let tag = new Array();
	for(let i = 0; i < preferenzeUtente.length; ++i)
		if(preferenzeUtente[i] != undefined && preferenzeUtente[i] != "indifferent") {
			for(let j = 0; j < preferenzeUtente[i].length; ++j)
				tag.push(preferenzeUtente[i][j]);
		}
	
	// se non ho nessun prodotto restituito
	if(prodottiTag.length == 0) {
		row.innerHTML = "<p class = \"testoCentrale\">We don't have products that meet your needs at the moment.</p>"
						+ "<figure>"
							+ "<img src = \"../images/guidaSceltaProdotto/risposte/triste.png\">"
						+ "</figure>"
						+ "<p class = \"testoCentrale\">You can always see the best reviewed " + categoriaSelezionata +  ".</p>"
						+ "<br />"
		return;
	}
	
	let stringa = ""; 
	let s = "";
	for(let i = 0; i < prodottiTag.length; ++i) {
		
		s = "<br /><strong>" + prodottiTag[i].product.name + "</strong><br /><br />";
		for(let j = 0; j < tag.length; ++j) {
			if(prodottiTag[i].tagSoddisfatti[j] == true)
				s += "<div class = \"requisito\">"
						+ "<figure>"
							+ "<img id = \"requisitoSoddisfatto\" src = \"../images/guidaSceltaProdotto/risposte/si.png\" class = \"img-fluid\">"
							+ tag[j] + "<br />"
						+ "</figure>"
					+ "</div>";
			else
				s += "<div class = \"requisito\">"
						+ "<figure>"
							+ "<img id = \"requisitoSoddisfatto\" src = \"../images/guidaSceltaProdotto/risposte/no.png\" class = \"img-fluid\">" 
							+ tag[j] + "<br />"
						+ "</figure>"
					+ "</div>";
		}
		
		s += "<br/>"
				+ "<div class = \"prezzo\">"
					+ "<strong> $ " + prodottiTag[i].product.price + " </strong>"
					+ "<a href=\"/viewProduct?id=" + prodottiTag[i].product.id + "\">View details</a>"
				+ "</div>";
		
		stringa += "<div class = \"row\" id = \"prodotto\">"
						+ "<div class=\"col-8\"id = \"immagineProdotto\">"
							+ "<figure>"
								+ "<img src = \"" + prodottiTag[i].product.image + "\">"
							+ "</figure>"
						+ "</div>"
						+ "<div class=\"col-4\" id = \"requisitiUtente\">"
							+ s
						+ "</div>"
				  	+ "</div>"
					+ "<br />";
	}
					
	row.innerHTML = stringa;
}

function inserisciProdotti(prodotti) {
	var row = document.getElementById("risposte");
	
	let stringa = ""; 
	let s = "";
	for(let i = 0; i < prodotti.length; ++i) {
		
		s = "<br /><strong>" + prodotti[i].name + "</strong><br /><br />";
		var tags = prodotti[i].tags.split(",");
		for(let j = 0; j < tags.length; ++j) {
			s += "<div class = \"requisito\">"
					+ "<figure>"
						+ "<img id = \"requisitoSoddisfatto\" src = \"../images/guidaSceltaProdotto/risposte/tag.png\">"
						+ tags[j] + "<br />"
					+ "</figure>"
				+ "</div>";
		}
		
		s += "<br/>"
				+ "<div class = \"prezzo\">"
					+ "<strong> $ " + prodotti[i].price + " </strong>"
					+ "<a href=\"/viewProduct?id=" + prodotti[i].id + "\">View details</a>"
				+ "</div>";
		
		stringa += "<div class = \"row\" id = \"prodotto\">"
						+ "<div class=\"col-8\"id = \"immagineProdotto\">"
							+ "<figure>"
								+ "<img src = \"" + prodotti[i].image + "\" class = \"img-fluid\">"
							+ "</figure>"
						+ "</div>"
						+ "<div class=\"col-4\" id = \"requisitiUtente\">"
							+ s
						+ "</div>"
				  	+ "</div>"
					+ "<br />";
	}
					
	row.innerHTML = stringa;
}

function caricaDescrizione(stringa) {
	var row = document.getElementById("descrizione");
	let stringhe = stringa.split("%");
	
	let s = "";
	for(let i = 0; i < stringhe.length; ++i) {
		if(i == 0) 
			s += "<strong>" + stringhe[i] + "</strong>" + "<br/>";
		else
			s += stringhe[i] 
	}
	
	let resourceImg = "../images/guidaSceltaProdotto/descrizione/";
	if(categoriaSelezionata != undefined && ind != numDomandeTotaliCategoria && ind != -1)
		resourceImg = "../images/guidaSceltaProdotto/" + categoriaSelezionata + "/descrizione/";
	
	row.innerHTML = "<div id = \"tuttaLaDescrizione\" class = \"sticky\">"
					+ "<div id = \"descrizioneJS\" >" 
						+ "<figure>"
							+ "<img src=\"" + resourceImg + stringhe[0].toLowerCase() + ".png\" class=\"img-fluid\" />"
				 		+ "</figure>"
						+ "<p>" 
							+ s
						+ "</p>"
					+ "</div>"
				+ "</div>";
}

function caricaPulsanteAltriProdotti() {
	var row = document.getElementById("tuttaLaDescrizione");
	row.innerHTML += "<div id = \"altriProdotti\" >" 
					+ "<p>" 
						+ "Are you not satisfied with the search?"
					+ "</p>"
					+ "<p>"
						+ "Discover the best reviewed."
					+ "</p>"
					+ "<button type=\"button\" class=\"btn btn-light\" id = \"cercaProdottiMeglioRecensiti\" onclick = \"cercaProdottiMeglioRecensiti()\">"
						+ "Search"
					+ "</button>"
				+ "</div>";
}


function caricaBarraNavigazione() {	
	let s = "";
	
	s += "<button type =\"button\" class = \"numDomande\" value =\"-1\" onclick = \"vaiAllaDomanda(-1)\" >"
								+ "C" 
						+ "</button>";
						
	for(let i = 0; i < numDomandeTotaliCategoria + 1; ++i) {
		s += "<button type =\"button\" class = \"numDomande\" value =" + i + " onclick = \"vaiAllaDomanda(" + i + ")\" >"
								+ (i + 1) 
						+ "</button>";
	}
		
	var row = document.getElementById("rigaIndiceDomande");
	row.innerHTML = "<div class= \"col-3\" id = \"indiceDomandeSX\">"
						+ "<button class = \"button\" id = \"pulsanteReset\" onclick=\"rinizia()\">"
							+ "<figure>"
								+ "<img id = \"icona\" src=\"../images/guidaSceltaProdotto/icone/rinizia.png\" width = 30% class = \"img-fluid\"/><br />"
							+ "</figure>"
								+ "Reset"
						+ "</button>"
					+ "</div>"
					+ "<div class=\"col-6\" id = \"indiceDomandeCenter\">"
						+ "<strong>Scope of use</strong>" + "<br />"
						+ s
					+ "</div>"
					+ "<div class=\"col-3\" id = \"indiceDomandeDX\">"
						+ "<button class =\"button\" id = \"pulsanteResult\" onclick=\"risultati()\">"
							+ "<figure>"
								+ "<img id = \"icona\" src=\"../images/guidaSceltaProdotto/icone/risultati.png\" width = 30% class = \"img-fluid\"/><br />"
							+ "</figure>"
								+ "Results"
						+ "</button> "
					+ "</div>";
}

