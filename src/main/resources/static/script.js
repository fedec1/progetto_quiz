let domande = [];
let domandaCorrente = 0;
let punteggio = 0;
let username = '';
let quizType = '';

document.addEventListener('DOMContentLoaded', (event) => {
    document.getElementById('miste').addEventListener('click', () => startQuiz('miste'));
    document.getElementById('quizCapitale').addEventListener('click', () => startQuiz('quizcapitale'));
    document.getElementById('quizBandiere').addEventListener('click', () => startQuiz('quizbandiere'));
    document.getElementById('quizConfini').addEventListener('click', () => startQuiz('quizconfini'));
});

function startQuiz(type) {
    username = prompt('Inserisci il tuo username:');
    if (!username) {
        alert('Devi inserire un username per iniziare il quiz.');
        return;
    }
    quizType = type;
    document.getElementById('quiz-selection').style.display = 'none';
    document.getElementById('quiz-container').style.display = 'block';
    loadQuiz(type);
}

function loadQuiz(type) {
    fetch(`/api/${type}`)
        .then(response => response.json())
        .then(data => {
            domande = data;
            domandaCorrente = 0;
            punteggio = 0;
            visualizzaDomanda();
        })
        .catch(error => {
            console.error('Error fetching questions:', error);
        });
}

function visualizzaDomanda() {
    if (domandaCorrente >= domande.length) {
        mostraRisultato();
        return;
    }

    const domanda = domande[domandaCorrente];
    const questionElement = document.getElementById('question');
    const optionsContainer = document.getElementById('options-container');
    const imageContainer = document.getElementById('image-container');

    questionElement.innerText = domanda.domanda;
    optionsContainer.innerHTML = '';
    imageContainer.innerHTML = ''; // Clear the image container

    if (domanda.path) {
        const img = document.createElement('img');
        img.src = domanda.path;
        img.alt = "Bandiera";
        img.style.width = "200px";
        imageContainer.appendChild(img);
    }

    domanda.opzioni.forEach(option => {
        const button = document.createElement('button');
        button.innerText = option;
        button.onclick = () => verificaRisposta(option, domanda.rispostaCorretta);
        optionsContainer.appendChild(button);
    });
}

function verificaRisposta(selectedOption, correctAnswer) {
    if (selectedOption === correctAnswer) {
        punteggio++;
        alert('Risposta corretta!');
    } else {
        alert('Risposta sbagliata! La risposta corretta è: ' + correctAnswer);
    }
    domandaCorrente++;
    visualizzaDomanda();
}

function mostraRisultato() {
    const questionContainer = document.getElementById('question-container');
    questionContainer.innerHTML = `<p>Hai completato il quiz! Il tuo punteggio è ${punteggio} su ${domande.length}.</p>`;

    const sessionData = {
        username: username,
        type: quizType,
        score: punteggio
    };

    console.log('Sending session data:', sessionData);

    fetch('/api/saveSession', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(sessionData)
    })
    .then(response => {
        if (response.ok) {
            console.log('Sessione di gioco salvata con successo');
        } else {
            response.text().then(text => console.error('Errore nel salvataggio della sessione di gioco:', response.status, text));
        }
    })
    .catch(error => {
        console.error('Error saving game session:', error);
    });

    // Reset quiz interface after saving
    setTimeout(() => {
        document.getElementById('quiz-selection').style.display = 'block';
        document.getElementById('quiz-container').style.display = 'none';
    }, 3000); // Ritarda di 3 secondi prima di resettare l'interfaccia
}


