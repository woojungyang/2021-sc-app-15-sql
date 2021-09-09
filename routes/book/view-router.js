const express = require('express')
const router = express.Router()
const moment = require('moment')
const { error, chgStatus, relPath, isImg } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')

router.get('/:idx', async (req, res, next) => {
	let sql, values
	try {
		sql = `
		SELECT 
		B.*, 
		F.oriname, F.savename, F.idx AS id, 
		F2.oriname AS oriname2, F2.savename AS savename2, F2.idx AS id2 
		FROM books B 
		LEFT JOIN files F 
		ON B.idx = F.fidx AND F.fieldname = 'C'
		LEFT JOIN files F2 
		ON B.idx = F2.fidx AND F2.fieldname = 'U'
		WHERE B.idx=?`
		values = [req.params.idx]
		const [[book]] = await pool.execute(sql, values)

		book.createdAt = moment(book.createdAt).format('YYYY-MM-DD HH:mm:ss')
		book.writer = book.writer || '미상'
		book.status = chgStatus(book.status)
		book.cover = book.savename ? relPath(book.savename) : null
		book.upfile = book.savename2 ? relPath(book.savename2) : null
		book.isImg = isImg(book.savename2 || '')

		const title = '도서 상세 정보'
		const description = '선택하신 도서의 상세 정보 입니다.'
		const css = 'book/view'
		const js = 'book/view'

		if(book) res.status(200).render('book/view', { title, description, css, js, book })
		else next(error(400, "존재하지 않는 데이터 입니다."))
	}
	catch(err) {
		next(error(500, err))
	}
})

module.exports = router