const Tasks = require('../models/tasks');

exports.getAllTasks = (req, res, next) => {
    res.send(Tasks.fetchAll());
}
