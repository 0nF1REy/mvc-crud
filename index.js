const express = require('express');
const bodyParser = require('body-parser');
const tasksRoutes = require('./routes/tasks');
const errorController = require('./controllers/error');

const app = express();
const port = process.env.PORT || 2004;

app.use(bodyParser.json());

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    next();
});

app.use('/tasks', tasksRoutes);

app.use(errorController.get404);

app.use(errorController.get500);

app.listen(port, () => console.log(`Listening on port ${port}`));
