const express = require('express');
const tasksController = require('../controllers/tasks');

const router = express.Router();

router.get('/', tasksController.getAllTasks);

router.post('/', tasksController.postTask);

router.put('/:id_task', tasksController.putTask);

router.delete('/:id_task', tasksController.deleteTask);

module.exports = router;
