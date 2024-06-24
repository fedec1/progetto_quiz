let pulsante = document.getElementById('next-question-btn');

let quizData;

chiamataMista();

function chiamataMista (){
	
	// Chiamata API per ottenere le domande
	fetch(`/api/mista`)
		.then(response => {
			if (!response.ok) {
				throw new Error('Errore nella risposta del server');
			}
			return response.json();
		})
		.then(data => {
			quizData = data; // Salva una domanda ricevuta
			mostraDomandaCorrente();
		})
		.catch(error => console.error('Errore:', error));
	
}

pulsante.onclick = () => chiamataMista();

// Funzione per mostrare la domanda corrente
function mostraDomandaCorrente() {
	const quizSetup = document.getElementById('quiz-setup');
	const questionContainer = document.getElementById('question-container');
	const questionText = document.getElementById('question-text');
	const optionsContainer = document.getElementById('options-container');
	const flagImage = document.getElementById('flag-image'); // Riferimento all'elemento img

	// Nascondi il setup del quiz e mostra il contenitore delle domande
	questionText.style.display = 'block';
	questionContainer.style.display = 'block';

	const domandaCorrente = quizData;

	// Mostra il testo della domanda
	questionText.textContent = domandaCorrente.domanda;

	// Verifica se la domanda riguarda le bandiere
	if (domandaCorrente.path) {
		flagImage.src = domandaCorrente.path; // Imposta il percorso dell'immagine della bandiera
		flagImage.style.display = 'block'; // Mostra l'immagine della bandiera
	} else {
		flagImage.style.display = 'none'; // Nasconde l'immagine della bandiera se il percorso non è definito
	}
	
	// Pulisce le opzioni precedenti
    optionsContainer.innerHTML = '';

    // Mostra le opzioni di risposta
    domandaCorrente.opzioni.forEach(opzione => {
        const button = document.createElement('button');
        button.textContent = opzione;
        button.onclick = () => selezionaRisposta(button);
        optionsContainer.appendChild(button);
    });
    

}    

    // Funzione per gestire la selezione della risposta
	function selezionaRisposta(button) {
    const optionsContainer = document.getElementById('options-container');

    // Rimuovi la classe "selected" da tutti i bottoni
    const buttons = optionsContainer.querySelectorAll('button');
    buttons.forEach(btn => btn.classList.remove('selected'));

    // Aggiungi la classe "selected" al bottone cliccato
    button.classList.add('selected');

    // Abilita il pulsante "Next" per andare alla domanda successiva
    document.getElementById('next-question-btn').disabled = false;
    
     // Verifica se la risposta selezionata è corretta
    const isCorrect = (button.textContent === quizData.rispostaCorretta);
    button.style.backgroundColor = isCorrect ? 'green' : 'red';
    button.style.color = 'black';

    // Mostra i colori per tutte le risposte
    buttons.forEach((btn, idx) => {
        if (btn.textContent === quizData.rispostaCorretta) {
            btn.style.backgroundColor = 'green';
            btn.style.color = 'black';
        } else {
            btn.style.backgroundColor = 'red';
            btn.style.color = 'black';
        }
    });

}

document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('Home').addEventListener('click', function() {
        window.location.href = '../index.html';
    });
});

