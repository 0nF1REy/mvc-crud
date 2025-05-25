const db = require('../util/database');

class Tasks {
    constructor(id_task, task) {
        this.id_task = id_task;
        this.task = task;
    }

    static fetchAll() {
        return db.execute('SELECT * FROM tb_tasks')
    }

    static post(task) {
        return db.execute('INSERT INTO tb_tasks (task) VALUES (?)', [task]);
    }

    static update(id_task, task) {
        return db.execute('UPDATE tb_tasks SET task = ? WHERE id_task = ?', [task, id_task]);
    }

    static delete(id_task) {
        return db.execute('DELETE FROM tb_tasks WHERE id_task = ?', [id_task]);
    }
};

module.exports = Tasks;
