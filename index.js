const express = require('express');

const app = express();

const ports = process.env.PORT || 2004;

const tasks = [
    { id: 1, task: 'Comprar leite de morango para o Gintoki' },
    { id: 2, task: 'Levar Sadaharu para passear' },
    { id: 3, task: 'Limpar a sede da Yorozuya' },
    { id: 4, task: 'Buscar encomenda na loja da Tae' },
    { id: 5, task: 'Evitar que o Katsura exploda algo de novo' }
];


app.get('/', (req, res) => {
    res.send(tasks);
})

app.listen(ports, () => console.log(`listening on port ${ports}`));