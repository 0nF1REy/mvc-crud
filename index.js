const express = require('express');
const tasksRoutes = require('./routes/tasks');

const app = express();
const port = process.env.PORT || 2004;

app.use('/tasks', tasksRoutes);

app.listen(port, () => console.log(`Listening on port ${port}`));
