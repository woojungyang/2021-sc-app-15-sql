const path = require('path')
const express = require('express')
const router = express.Router()
const { alert } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')
const { isUser, isGuest } = require('../../middlewares/auth-mw')

router.get('/', isUser, (req, res, next) => {
	req.logOut()
	req.session.destroy()
	res.locals.user = null
	res.send(alert('로그아웃 되었습니다.'))
})

module.exports = router