const express = require('express')
const app = express()

const {Pool} = require('pg');

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'cyf_ecommerce',
    password: 'manresa1',
    port: 5432
});

app.get("/customers", (req, res) => {
    pool.query('select * from customers',(error, result) => {
        res.json(result.rows)
    })
})

app.listen(3000, function () {
    console.log("Server is listening on port 3000. Ready to accept requests!")
});