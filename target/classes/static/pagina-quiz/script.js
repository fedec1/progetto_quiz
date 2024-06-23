// Variabili globali per gestire lo stato del quiz
let quizData = []; // Contiene le domande e risposte del quiz
let currentQuestionIndex = 0; // Indice della domanda corrente
let score = 0; // Punteggio del quiz
let username = '';
let tipoQuiz = '';
let difficolta = '';

// Funzione per avviare il quiz
function avviaQuiz() {
    difficolta = parseInt(document.getElementById('difficolta').value); // Converti in intero
    username = document.getElementById('username').value;

    if (!tipoQuiz) {
        alert("Seleziona un tipo di quiz");
        return;
    }

    // Chiamata API per ottenere le domande
    fetch(`/api/${tipoQuiz}?difficolta=${difficolta}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Errore nella risposta del server');
            }
            return response.json();
        })
        .then(data => {
            quizData = data; // Salva le domande ricevute
            mostraDomandaCorrente();
        })
        .catch(error => console.error('Errore:', error));
}

// Funzione per mostrare la domanda corrente
function mostraDomandaCorrente() {
    const quizSetup = document.getElementById('quiz-setup');
    const questionContainer = document.getElementById('question-container');
    const questionText = document.getElementById('question-text');
    const optionsContainer = document.getElementById('options-container');
    const flagImage = document.getElementById('flag-image'); // Riferimento all'elemento img

    // Nascondi il setup del quiz e mostra il contenitore delle domande
    quizSetup.style.display = 'none';
    questionContainer.style.display = 'block';

    // Verifica se siamo alla fine del quiz
    if (currentQuestionIndex >= quizData.length) {
        mostraPunteggioFinale();
        salvaSessione(username, tipoQuiz, score, difficolta); // Salva automaticamente la sessione alla fine del quiz
        return;
    }

    const domandaCorrente = quizData[currentQuestionIndex];

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

    // Gestione pulsanti Previous e Next
    document.getElementById('prev-question-btn').style.display = currentQuestionIndex > 0 ? 'inline-block' : 'none';
    document.getElementById('next-question-btn').style.display = 'inline-block';
    document.getElementById('next-question-btn').disabled = true; // Disabilita il pulsante "Next" inizialmente
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
}

// Funzione per verificare la risposta dell'utente (modificata per il nuovo flusso)
function verificaRisposta() {
    const selectedButton = document.querySelector('#options-container button.selected');
    const domandaCorrente = quizData[currentQuestionIndex];
    const rispostaScelta = selectedButton ? selectedButton.textContent : null;

    // Controlla la risposta e aggiorna il punteggio
    if (rispostaScelta === domandaCorrente.rispostaCorretta) {
        score++;
    }

    // Passa alla prossima domanda
    currentQuestionIndex++;
    mostraDomandaCorrente();
}

// Funzione per mostrare il punteggio finale
function mostraPunteggioFinale() {
    const quizSetup = document.getElementById('quiz-setup');
    const questionContainer = document.getElementById('question-container');
    const resultContainer = document.getElementById('result-container');
    const finalScore = document.getElementById('final-score');

    // Nasconde il contenitore delle domande
    questionContainer.style.display = 'none';

    // Mostra il punteggio finale
    finalScore.textContent = `Punteggio finale: ${score}`;
    resultContainer.style.display = 'block';

    // Gestione pulsante per ricominciare il quiz
    document.getElementById('restart-quiz-btn').onclick = () => {
        currentQuestionIndex = 0;
        score = 0;
        quizSetup.style.display = 'block';
        resultContainer.style.display = 'none';
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

    fetch('/api/saveSession', {
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
        .catch(error => console.error('Errore:', error));
}

// Event listener per avviare il quiz al click del pulsante
document.getElementById('start-quiz-btn').addEventListener('click', avviaQuiz);

// Event listener per selezionare il tipo di quiz
document.getElementById('capitali').addEventListener('click', () => tipoQuiz = 'quizcapitale');
document.getElementById('bandiere').addEventListener('click', () => tipoQuiz = 'quizbandiere');
document.getElementById('confini').addEventListener('click', () => tipoQuiz = 'quizconfini');
document.getElementById('miste').addEventListener('click', () => tipoQuiz = 'miste');

// Event listener per la navigazione tra le domande
document.getElementById('prev-question-btn').addEventListener('click', () => {
    if (currentQuestionIndex > 0) {
        currentQuestionIndex--;
        mostraDomandaCorrente();
    }
});

document.getElementById('next-question-btn').addEventListener('click', () => {
    verificaRisposta();
});