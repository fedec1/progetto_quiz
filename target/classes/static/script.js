let domande = [];
let domandaCorrente = 0;
let punteggio = 0;

document.addEventListener('DOMContentLoaded', (event) => {
    document.getElementById('miste').addEventListener('click', () => loadQuiz('miste'));
    document.getElementById('quizCapitale').addEventListener('click', () => loadQuiz('quizcapitale'));
    document.getElementById('quizBandiere').addEventListener('click', () => loadQuiz('quizbandiere'));
    document.getElementById('quizConfini').addEventListener('click', () => loadQuiz('quizconfini'));
});

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
}

