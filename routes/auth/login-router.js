const path = require('path')
const express = require('express')
const router = express.Router()
const { error } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')

router.get('/',(req, res, next) => {
    // login창 보여주기

})
router.post('/',(req, res, next) => {
    // login 로직

})

module.exports = router