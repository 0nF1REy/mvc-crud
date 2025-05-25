const db = require('../util/database');

class Tasks {
    static fetchAll() {
        return db.execute('SELECT * FROM tb_tasks')
    }
};

module.exports = Tasks;
