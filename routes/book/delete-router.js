const path = require('path')
const fs = require('fs-extra')
const express = require('express')
const createError = require('http-errors')
const router = express.Router()
const { moveFile } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')
const { isUser, isGuest, isMyBook } = require('../../middlewares/auth-mw')

router.delete('/', isUser, isMyBook('body'), async (req, res, next) => {
	let sql
	try {
		// sql = "DELETE FROM books WHERE idx=?"
		sql = "UPDATE books SET status='0' WHERE idx = " + req.body.idx
		await pool.execute(sql)

		sql = "UPDATE files SET status='0' WHERE fidx = " + req.body.idx
		await pool.execute(sql)

		sql = "SELECT savename FROM files WHERE fidx = " + req.body.idx
		const [rs] = await pool.execute(sql)

		for(let { savename } of rs) {
			await moveFile(savename)
		}
		
		res.redirect(`/${req.lang}/book`)
	}
	catch(err) {
		next(createError(err))
	}
})

module.exports = router