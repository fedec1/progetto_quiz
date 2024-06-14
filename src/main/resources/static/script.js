let domande = [];
let domandaCorrente = 0;
let punteggio = 0;

document.addEventListener('DOMContentLoaded', (event) => {
    fetch('/api/miste')
        .then(response => response.json())
        .then(data => {
            domande = data;
            visualizzaDomanda();
        })
        .catch(error => {
            console.error('Error fetching questions:', error);
        });
});

function visualizzaDomanda() {
    if (domandaCorrente >= domande.length) {
        mostraRisultato();
        return;
    }

    const domanda = domande[domandaCorrente];
    const questionElement = document.getElementById('question');
    const optionsContainer = document.getElementById('options-container');

    questionElement.innerText = domanda.domanda;
    optionsContainer.innerHTML = '';

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
    const nextButton = document.getElementById('next-button');

    questionContainer.innerHTML = `<p>Hai completato il quiz! Il tuo punteggio è ${punteggio} su ${domande.length}.</p>`;
    nextButton.style.display = 'none';
}
