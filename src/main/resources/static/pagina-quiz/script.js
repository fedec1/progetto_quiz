// Variabili globali per gestire lo stato del quiz
let quizData = []; // Contiene le domande e risposte del quiz
let currentQuestionIndex = 0; // Indice della domanda corrente
let score = 0; // Punteggio del quiz
let correctCount = 0; // Numero di risposte corrette
let incorrectCount = 0; // Numero di risposte sbagliate
let username = '';
let tipoQuiz = '';
let difficolta = '';
let timerInterval;

// Ottieni elementi modal dal DOM
var modal = document.getElementById("myModal");
var span = document.getElementsByClassName("close")[0];
var modalMessage = document.getElementById("modalMessage");

// Quando l'utente clicca su <span> (x), chiudi la modalità
span.onclick = function() {
	modal.style.display = "none";
}

// Quando l'utente clicca ovunque fuori dalla modalità, chiudi la modalità
window.onclick = function(event) {
	if (event.target == modal) {
		modal.style.display = "none";
	}
}

let showModal = (message) => {
	modalMessage.textContent = message;
	modal.style.display = "block";
};

let checkCampiRequiredAvviaQuiz = () => {
	let compiledFields = true;
	const selectedButton = document.querySelector('.quiz-setup button.selected');
	const compiledUsername = document.querySelector('.quiz-setup input#username');
	if (!selectedButton) {
		// Se l'username è presente ma non è stato selezionato alcun tipo di quiz, mostra il messaggio appropriato
		showModal("Seleziona un tipo di quiz e inserisci l'username");
		compiledFields = false;
	}
	if (selectedButton && !compiledUsername.value) {
		showModal("Inserire l'username");
		compiledFields = false;
	}
	if(compiledUsername.value && !compiledFields){
		showModal("Seleziona un tipo di quiz");
		compiledFields = false;
	}
	return compiledFields;
};


function startTimer() {
	let timeLeft = 30;
	const timerElement = document.getElementById('timer');

	if (!timerElement) {
		console.error("Elemento timer non trovato");
		return;
	}

	clearInterval(timerInterval);

	timerElement.textContent = timeLeft;

	timerInterval = setInterval(() => {
		timeLeft--;
		timerElement.textContent = timeLeft;

		if (timeLeft <= 0) {
			clearInterval(timerInterval);
			verificaRisposta();
		}
	}, 1000);
}

// Funzione per avviare il quiz
function avviaQuiz() {
	difficolta = parseInt(document.getElementById('difficolta').value);
	username = document.getElementById('username').value;

	let bCompiledRequiredFields = checkCampiRequiredAvviaQuiz();

	if (bCompiledRequiredFields) {
		const selectedButton = document.querySelector('.quiz-setup button.selected');
		tipoQuiz = selectedButton.id;

		switch (tipoQuiz) {
			case 'capitali':
				tipoQuiz = 'quizcapitale';
				break;
			case 'bandiere':
				tipoQuiz = 'quizbandiere';
				break;
			case 'confini':
				tipoQuiz = 'quizconfini';
				break;
			case 'miste':
				tipoQuiz = 'miste';
				break;
			default:
				console.log(`id pulsante non gestito`);
		}

		fetch(`/api/${tipoQuiz}?difficolta=${difficolta}`)
			.then(response => {
				if (!response.ok) {
					throw new Error('Errore nella risposta del server');
				}
				return response.json();
			})
			.then(data => {
				quizData = data;
				document.getElementById('timer').style.display = 'block'; // Mostra il timer
				mostraDomandaCorrente();
				startTimer();
			})
			.catch(error => console.error('Errore:', error));
	}
}

// Funzione per mostrare la domanda corrente
function mostraDomandaCorrente() {
	const quizSetup = document.getElementById('quiz-setup');
	const questionContainer = document.getElementById('question-container');
	const questionText = document.getElementById('question-text');
	const optionsContainer = document.getElementById('options-container');
	const flagImage = document.getElementById('flag-image');

	quizSetup.style.display = 'none';
	questionContainer.style.display = 'block';

	if (currentQuestionIndex >= quizData.length) {
		mostraPunteggioFinale();
		salvaSessione(username, tipoQuiz, score, difficolta)
			.then(() => {
				mostraClassifica();
			})
			.catch(error => console.error('Errore nel salvataggio della sessione:', error));
		return;
	}

	const domandaCorrente = quizData[currentQuestionIndex];

	questionText.textContent = domandaCorrente.domanda;

	if (domandaCorrente.path) {
		flagImage.src = domandaCorrente.path;
		flagImage.style.display = 'block';
	} else {
		flagImage.style.display = 'none';
	}

	optionsContainer.innerHTML = '';

	domandaCorrente.opzioni.forEach(opzione => {
		const button = document.createElement('button');
		button.textContent = opzione;
		button.onclick = () => selezionaRisposta(button);
		optionsContainer.appendChild(button);
	});

	document.getElementById('prev-question-btn').style.display = currentQuestionIndex > 0 ? 'inline-block' : 'none';
	document.getElementById('next-question-btn').style.display = 'inline-block';
	document.getElementById('next-question-btn').disabled = true;
}

// Funzione per gestire la selezione della risposta
function selezionaRisposta(button) {
	const optionsContainer = document.getElementById('options-container');
	const buttons = optionsContainer.querySelectorAll('button');
	buttons.forEach(btn => btn.classList.remove('selected'));
	button.classList.add('selected');
	document.getElementById('next-question-btn').disabled = false;
}

// Funzione per verificare la risposta dell'utente
function verificaRisposta() {
	const selectedButton = document.querySelector('#options-container button.selected');
	const domandaCorrente = quizData[currentQuestionIndex];
	const rispostaScelta = selectedButton ? selectedButton.textContent : null;

	if (rispostaScelta === domandaCorrente.rispostaCorretta) {
		score++;
		correctCount++;
	} else {
		incorrectCount++;
	}

	updateAnswerCount();

	currentQuestionIndex++;

	if (currentQuestionIndex < quizData.length) {
		mostraDomandaCorrente();
		startTimer(); // Resetta il timer per la nuova domanda
	} else {
		clearInterval(timerInterval); // Ferma il timer alla fine del quiz
		mostraPunteggioFinale();
		salvaSessione(username, tipoQuiz, score, difficolta)
			.then(() => {
				mostraClassifica();
			})
			.catch(error => console.error('Errore nel salvataggio della sessione:', error));
	}
}

// Funzione per aggiornare il conteggio delle risposte corrette e sbagliate
function updateAnswerCount() {
	document.getElementById('correct-count').textContent = `Corrette: ${correctCount}`;
	document.getElementById('incorrect-count').textContent = `Sbagliate: ${incorrectCount}`;
}

// Funzione per mostrare il punteggio finale e la classifica
function mostraPunteggioFinale() {
	const quizSetup = document.getElementById('quiz-setup');
	const questionContainer = document.getElementById('question-container');
	const resultContainer = document.getElementById('result-container');
	const finalScore = document.getElementById('final-score');
	const timerElement = document.getElementById('timer');

	questionContainer.style.display = 'none';
	timerElement.style.display = 'none'; // Nascondi il timer
	finalScore.textContent = `Punteggio finale: ${score}`;
	resultContainer.style.display = 'block';

	document.getElementById('restart-quiz-btn').onclick = () => {
		currentQuestionIndex = 0;
		score = 0;
		correctCount = 0;
		incorrectCount = 0;
		quizSetup.style.display = 'block';
		resultContainer.style.display = 'none';
		document.getElementById('leaderboard-container').style.display = 'none';
		updateAnswerCount(); // Resetta i conteggi delle risposte
	};
}

// Funzione per salvare la sessione
function salvaSessione(username, tipoQuiz, score, difficolta) {
	const sessione = {
		username: username,
		type: tipoQuiz,
		score: score,
		difficulty: difficolta
	};

	return fetch('/api/saveSession', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(sessione)
	})
		.then(response => {
			if (!response.ok) {
				throw new Error('Errore nel salvataggio della sessione');
			}
			console.log('Sessione salvata con successo');
		})
		.catch(error => {
			console.error('Errore:', error);
			throw error;
		});
}

// Funzione per richiedere la classifica
function mostraClassifica() {
	fetch(`/api/classifica?difficolta=${difficolta}&type=${tipoQuiz}`)
		.then(response => {
			if (!response.ok) {
				throw new Error('Errore nella risposta del server');
			}
			return response.json();
		})
		.then(data => {
			aggiornaClassifica(data);
		})
		.catch(error => console.error('Errore:', error));
}

// Funzione per aggiornare il DOM con la classifica
function aggiornaClassifica(classifica) {
	const leaderboardContainer = document.getElementById('leaderboard-container');
	const leaderboardList = document.getElementById('leaderboard-list');

	leaderboardList.innerHTML = '';

	classifica.forEach(sessione => {
		const listItem = document.createElement('li');
		listItem.textContent = `${sessione.username}: ${sessione.score}`;
		leaderboardList.appendChild(listItem);
	});

	leaderboardContainer.style.display = 'block';
}

function tornaAlMenu() {
	document.getElementById('timer').style.display = 'none';
	document.getElementById('quiz-setup').style.display = 'block';
	document.getElementById('question-container').style.display = 'none';
	document.getElementById('result-container').style.display = 'none';
	document.getElementById('leaderboard-container').style.display = 'none';
	currentQuestionIndex = 0;
	score = 0;
	correctCount = 0;
	incorrectCount = 0;
	updateAnswerCount(); // Resetta i conteggi delle risposte
}

// Event listeners
document.getElementById('start-quiz-btn').addEventListener('click', avviaQuiz);

document.getElementById('prev-question-btn').addEventListener('click', () => {
	if (currentQuestionIndex > 0) {
		currentQuestionIndex--;
		mostraDomandaCorrente();
		startTimer(); // Resetta il timer quando si torna alla domanda precedente
	}
});

document.getElementById('next-question-btn').addEventListener('click', () => {
	clearInterval(timerInterval); // Ferma il timer corrente
	verificaRisposta();
});

const tipoQuizButtons = document.querySelectorAll('.quiz-setup button');
tipoQuizButtons.forEach(button => {
	button.addEventListener('click', () => {
		tipoQuizButtons.forEach(btn => btn.classList.remove('selected'));
		button.classList.add('selected');
	});
});

document.addEventListener('DOMContentLoaded', function() {
	document.getElementById('Home').addEventListener('click', function() {
		window.location.href = '../index.html';
	});
});
