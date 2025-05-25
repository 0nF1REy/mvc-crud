const Tasks = require('../models/tasks');

exports.getAllTasks = async (req, res, next) => {
    try {
        const [getAllTasks] = await Tasks.fetchAll();
        res.status(200).json(getAllTasks);
    } catch (err) {
        if (!err.statusCode) {
            err.statusCode = 500
        }
        next(err);
    }
};

