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
        <div class="container">
        <div class="card-container"> 
        <div class="card">
        <figure class="front">
        <img src='${philosopher.image}' alt='${philosopher.name}'>
        </figure> 
        <figure class="back">
            <h1 class='philosopher-name-title'>${philosopher.name}</h1>
            <h2 class='philosopher-summary'>${philosopher.summary}</h2>
            <button class="add-button">Add</button>
        </figure>
        </div> 
        </div>
        </div>`
    
        const philosopherInfo = philosopherCard.querySelector('.philosopher-info')
        
        philosophersList.append(philosopherCard)
    }