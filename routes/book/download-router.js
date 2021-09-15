const path = require('path')
const express = require('express')
const router = express.Router()
const { absPath } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')
const createError = require('http-errors')

router.get('/:idx', async (req, res, next) => {
	let sql
	try {
		sql = "SELECT savename, oriname FROM files WHERE status > '0' AND idx = " + req.params.idx
		const [[{ savename, oriname }]] = await pool.execute(sql)
		res.status(200).download(absPath(savename), oriname)
	}
	catch(err) {
		next(createError(err))
	}
})

module.exports = router