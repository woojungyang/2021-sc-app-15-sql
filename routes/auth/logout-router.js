const path = require('path')
const express = require('express')
const router = express.Router()
const { error } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')

router.get('/',(req, res, next) => {
    //로그아웃처리

})

module.exports = router