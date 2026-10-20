const express = require('express');
const app = express();
const port = process.env.PORT || 3001;

app.get('/', (_req, res) => {
  res.status(200).send('Hello from AWS CI/CD Capstone Two Project!');
});

app.get('/health', (_req, res) => {
  res.status(200).json({ status: 'ok' });
});

if (require.main === module) {
  app.listen(port, '0.0.0.0', () => console.log(`App listening on ${port}`));
}

module.exports = app;
