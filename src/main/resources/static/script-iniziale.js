/**
 * Questa pagina collega l'index inziale cioè quello del menù
 * con la pagina del quiz dove ci sono tutte le modalità
 */

 // script-iniziale.js
 
 document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('training').addEventListener('click', function() {
        window.location.href = 'pagina-training/index.html';
    });
});

document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('quiz').addEventListener('click', function() {
        window.location.href = 'pagina-quiz/index.html';
    });
});

document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('credits').addEventListener('click', function() {
        window.location.href = 'pagina-credits/index.html';
    });
});