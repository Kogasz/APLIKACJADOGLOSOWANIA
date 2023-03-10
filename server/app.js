const cors = require("cors")
const express = require("express")
const mysql = require("mysql")
const app = express()
const port = 3000

app.use(cors())

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "glosowanie"
})
con.connect(function(err){
    if(err){
        console.log(err)
    }
    else{
        console.log("Połaczono")
    }
})
app.get("/kandydat",function(req,res){
    const sql = `SELECT * FROM kandydaci`
    con.query(sql,function(err,result,fields){
        if(err){
            res.send(err)
        }
        else{
            res.send(result)
        }
    })
})
app.get("/klient",function(req,res){
    const sql = `SELECT * FROM klienci`
    con.query(sql,function(err,result,fields){
        if(err){
            res.send(err)
        }
        else{
            res.send(result)
        }
    })
})
app.get("/get/:pesel",function(req,res){
    const pesel = req.params.pesel
    const mysql = `INSERT INTO klienci (PESEL) VALUES ('${pesel}')`
    con.query(mysql,function(err,result,fields){
        if(err){
            res.send("niedodano")
        }
        else{
            res.send("dodano")
        }
    })
})





app.listen(port)