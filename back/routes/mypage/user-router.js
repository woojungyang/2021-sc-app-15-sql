const path = require('path')
const express = require('express')
const router = express.Router()
const createError = require('http-errors')
const { alert } = require('../../modules/util')
const { isUser } = require('../../middlewares/auth-mw')
const { findUser, updateUser, updateDomain } = require('../../models/auth')

// 내 회원정보 보여주기 GET: /mypage/user
router.get('/', isUser, async (req, res, next) => {
	try {
		req.app.locals.PAGE = 'MYPAGE'
		req.app.locals.css = 'mypage/form'
		req.app.locals.js = 'mypage/form'
		const { success, user } = await findUser('idx', req.user.idx)
		if(success) res.render('mypage/form', { ...user })
		else res.send(alert('회원이 아닙니다.'))
	}
	catch(err) {
		next(createError(err))
	}
})

// 회원정보 수정 POST: /mypage/user
router.post('/',isUser, async (req, res, next) => {
	try {
		const { ERROR } = req.app.locals
		const r = await updateUser(req.body)
		if(r) res.send(alert('User Updated', '/mypage/user'))
		else res.send(alert(ERROR.SQL_ERROR))
	}
	catch(err) {
		next(createError(err))
	}
})

// apikey 발행 POST: /mypage/user/api
router.post('/api',isUser, async (req, res, next) => {
	try{
		const { ERROR } = req.app.locals
		const r = await updateDomain(req.body.domain, req.user.idx)
		if(r) res.send(alert('Success' , '/mypage/user'))
		else res.send(alert(ERROR.SQL_ERROR,'/'))
	}
	catch(err){
		next(createError(err))
	}
})

module.exports = router