const searchParams = new URLSearchParams(window.location.search)
const userID = searchParams.get('user_id')  

fetch('http://localhost:3000/philosophers')
    .then(response => response.json())
    .then(philosophers => addPhilosopher(philosophers)) 

    function addPhilosopher(philosophers){
        const philosophersList = document.querySelector('.thinkers-list')
    
        philosophers.forEach(philosopher => {
            createCard(philosopher, philosophersList)
        })
    
    
    } 

    function createCard(philosopher, philosophersList){
        const philosopherCard = document.createElement('li')
        
        philosopherCard.className = 'philosopher-card'
        philosopherCard.innerHTML = `
        <img class='responsive' src='${philosopher.image}' alt='${philosopher.name}'>
        <section class='philosopher-info'>
            <p class='philosopher-name-title'>${philosopher.name}</p>
            <p class='philosopher-summary'>${philosopher.summary}</p>
        </section>`
    
        const philosopherInfo = philosopherCard.querySelector('.philosopher-info')
        
        philosophersList.append(philosopherCard)
    }