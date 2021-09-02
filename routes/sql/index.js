const express = require('express')
const router = express.Router()
const path = require('path')
const { error } = require('../../modules/util')

const mysql=require('mysql2/promise')

const pool = mysql.createPool({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password : process.env.DB_PASS,
    database : process.env.DB_NAME,
    waitForConnections :true,
    connectionLimit:10,
    queueLimit:0
});

router.get('/list',async(req, res, next) => {
    let sql ='SELECT * FROM books'
    let r=  await pool.execute(sql)
        res.status(200).json(r)
})

router.get('/create', async(req, res, next) => {
    let title = '홍길동전'
    let writer = '허균'
    let content = '아버지를 아버지라...'
    let sql = "INSERT INTO books SET title='"+title+"',writer='"+writer+"', content='"+content+"'"
    let r = await pool.execute(sql)
    res.status(200).json(r)
    })


module.exports = router