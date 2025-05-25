const Tasks = require('../models/tasks');

exports.getAllTasks = async (req, res, next) => {
    try {
        const [tasks] = await Tasks.fetchAll();

        if (!tasks || tasks.length === 0) {
            return res.status(404).json({ message: 'Nenhuma tarefa encontrada' });
        }

        res.status(200).json({ tasks, count: tasks.length });
    } catch (err) {
        console.error('Erro ao buscar tarefas:', err);
        if (!err.statusCode) {
            err.statusCode = 500;
        }
        next(err);
    }
};

exports.postTask = async (req, res, next) => {
    try {
        const result = await Tasks.post(req.body.task);
        res.status(201).json({ message: 'Tarefa criada com sucesso', result });
    } catch (err) {
        if (!err.statusCode) {
            err.statusCode = 500;
        }
        next(err);
    }
};

exports.putTask = async (req, res, next) => {
    try {
        const result = await Tasks.update(req.body.id_task, req.body.task);
        res.status(200).json({ message: 'Tarefa atualizada com sucesso', result });
    } catch (err) {
        if (!err.statusCode) {
            err.statusCode = 500;
        }
        next(err);
    }
};

exports.deleteTask = async (req, res, next) => {
    try {
        const taskId = parseInt(req.params.id_task, 10);

        if (!Number.isInteger(taskId) || taskId <= 0) {
            return res.status(400).json({ message: 'ID inválido' });
        }

        const result = await Tasks.delete(taskId);

        if (result.affectedRows === 0) {
            return res.status(404).json({ message: 'Tarefa não encontrada' });
        }

        res.status(200).json({ message: 'Tarefa deletada com sucesso' });
    } catch (err) {
        if (!err.statusCode) err.statusCode = 500;
        next(err);
    }
};
