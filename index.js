
const express = require('express')
const { Client } = require('pg')
const connectionString = 'postgresql://johnathanredd:@localhost:5432/MovieDatabase'
const client = new Client({ connectionString })
const bodyparser = require('body-parser')

const PORT = 9000

let app = express()

client.connect().then(() => {
	console.log('connection to postgres succesful!')
})

app.use(bodyparser.urlencoded({ extended: true }))


const query = 'SELECT * FROM movies'
const query1 = 'SELECT * FROM director'
const query2 = 'SELECT * FROM actor'
const query3 = 'SELECT * FROM movie_actor'


const create = "INSERT INTO movies(movie_ID, title, release_date, director_foreign_key) VALUES ($1, $2, $3, $4)"
const values = []
const create1 = "INSERT INTO director(director_ID, name) VALUES ($1, $2)"
const values1 = []
const create2 = "INSERT INTO actor(actor_ID, name, age) VALUES ($1, $2, $3)"
const values2 = []


//this function can update the actors age 
function updateActor(actor_ID, age){
	const update = `UPDATE actor SET age = ${age} WHERE actor_ID = ${actor_ID}`
	return update
}

function deleteActor(actor_ID){
	const trashActor = `DELETE FROM actor WHERE actor_ID = ${actor_ID}`
	return trashActor
}

function deleteDirector(director_ID){
	const trashDirector = `DELETE FROM director WHERE director_ID = ${director_ID}`
	return trashDirector
}

function deleteMovie(movie_ID){
	const trashMovie = `DELETE FROM movies WHERE movie_ID = ${movie_ID}`
	return trashMovie
}



app.get('/movies', (request, response) => {
	client.query(query).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})


app.get('/director', (request, response) => {
	client.query(query1).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})


app.get('/actor', (request, response) => {
	client.query(query2).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})


app.get('/movie_actor', (request, response) => {
	client.query(query3).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})

app.post('/movies', (request, response) => {
	for (let movie in request.body)
		values.push(request.body[movie])
	client.query(create, values).then(result => {
		response.send(result.rows)
	}).catch(error => {
		console.log(error.stack)
	})
})

app.post('/director', (request, response) => {
	for (let director in request.body)
		values1.push(request.body[director])
	client.query(create1, values1).then(result => {
		response.send(result.rows)
	}).catch(error => {
		console.log(error.stack)
	})
})

app.post('/actor', (request, response) => {
	for (let actor in request.body)
		values2.push(request.body[actor])
	client.query(create2, values2).then(result => {
		response.send(result.rows)
	}).catch(error => {
		console.log(error.stack)
	})
})

// This is for updating an actors age
app.put('/actor', (request, response) => {
	let update = updateActor(request.body['actor_id'], request.body['age'])
	client.query(update).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})

// This is for deleting an actor from the database
app.delete('/actor', (request, response) => {
	let trashActor = deleteActor(request.body['actor_id'])
	client.query(trashActor).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})

// This is for deleting a director from the database
app.delete('/director', (request, response) => {
	let trashDirector = deleteDirector(request.body['director_id'])
	client.query(trashDirector).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})

// This is for deleting a movie from the database
app.delete('/movies', (request, response) => {
	let trashMovie = deleteMovie(request.body['movie_id'])
	client.query(trashMovie).then(result => {
		response.send(result.rows)
	}).catch(error =>{
		console.log(error.stack)
	})
})





app.listen(PORT, function() {
  console.log('My server is set up and running on port: ', PORT);
})
