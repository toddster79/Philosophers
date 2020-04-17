// const searchParams = new URLSearchParams(window.location.search) 
// const userID = searchParams.get('user_id') 
const url = window.location; 
const urlObject = new URL(url);
const id = urlObject.searchParams.get('id')
console.log(id) 


fetch(`http://localhost:3000/users/`)
    .then(response => response.json())
    //.then(console.log)



