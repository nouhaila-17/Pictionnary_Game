//importing modules

const express = require('express');

const http = require('http'); //importes http from 'http.dart' 
const app = express(); // for builiding apps faster 
const server = http.createServer(app); // creating a server
const socket = require("socket.io");
const io = socket(server);

const mongoose = require('mongoose');
//initialising express 


// const port = process.env.PORT || 3000; //either running on the pport the deployant site gives or we run on 300 by default
//listning to the server 
//port , ip adress , callback function 
server.listen(1337, () => { console.log(`server has started and running on port ${port}`); });





//middle ware changes the data sent from client to server 
app.use(express.json()); //converts incomming data to Json 

//creating a databse variable 
const db = "mongodb+srv://iguerdnouhaila:Db0Ce4z3ql0wVzQ7@cluster0.c6rabse.mongodb.net/?retryWrites=true&w=majority";



//socket.io connection : 
io.on("connection", (socket) => {
    console.log("connected!");
    // Listen for the custom event emitted by the client
    socket.on("createRoom", async({ login }) => {
        console.log(login);
    });
});
//listening to what the client is sending 




//promise:
mongoose.connect(db)
    .then(() => {
        console.log("connection to database is successful");
    })
    .catch((e) => {
        console.error("Failed to connect to database:", e);
    });
//passing the link of our database and connecting to it