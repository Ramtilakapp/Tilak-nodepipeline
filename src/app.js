const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('hello Ram , How are you');
});

module.exports = app;
