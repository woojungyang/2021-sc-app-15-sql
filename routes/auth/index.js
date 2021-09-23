const path = require('path')
const express = require('express')
const router = express.Router()
const { error } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')
const loginRouter = require('../auth/login-router')
const logoutRouter = require('../auth/logout-router')
const formRouter = require('../auth/form-router')

router.use('/login', loginRouter)
router.use('/logout', logoutRouter)
router.use('/form', formRouter)

module.exports = router