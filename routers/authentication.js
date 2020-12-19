const express = require('express')

const router = express.Router({ caseSensitive: true })
const jwt = require('jsonwebtoken')
const config = require('config')


router.use('/api/*', (req, res, next) => {
  const token = req.body.token || req.query.token || req.headers['x-access-token']
  if (token) {
    jwt.verify(token, config.get('options.secret'), (err, payload) => {
      if (err) {
        res.sendStatus(401)
        return
      }
      req.account = payload.data
      next()
    })
  } else {
    res.sendStatus(401)
  }
})

module.exports = router
