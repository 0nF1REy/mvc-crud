const express = require('express');
const tasksController = require('../controllers/tasks');

const router = express.Router();

router.get('/', tasksController.getAllTasks);

module.exports = router;
