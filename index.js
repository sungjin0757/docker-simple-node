const express=require('express');

const port=8080;

const app=express();
app.get('/',(req,res)=>{
    res.send("Hell")
});

app.listen(port);
console.log("Server is Running");