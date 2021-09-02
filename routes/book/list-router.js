const path = require('path')
const moment = require('moment')
const express = require('express')
const router = express.Router()
const { error, cutTail ,chgStatus} = require('../../modules/util-module')
const { pool } = require('../../modules/mysql-module')

router.get('/', async(req, res, next) => {
    try{
        const sql = 'SELECT *FROM books ORDER BY idx DESC';
        const [rs] = await pool.execute(sql)

        const ejs = {
            title : '도서 목록',
            description : '등록된 도서들의 리스트입니다.',
            js : null,
            css : null,
            books : rs,
            moment,
            cutTail,
            chgStatus

        }

        res.status(200).render('book/list',ejs)
    }
    catch(err){
        next(error(err))

    }

})

module.exports = router