USE mvc_crud_db;

CREATE TABLE IF NOT EXISTS tb_tasks (
  id_task INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  task VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO tb_tasks (task) VALUES
('Comprar leite de morango para o Gintoki'),
('Levar Sadaharu para passear'),
('Limpar a sede da Yorozuya'),
('Buscar encomenda na loja da Tae'),
('Evitar que o Katsura exploda algo de novo'),
('Ajudar o Shinpachi a organizar os livros'),
('Comprar ingredientes para o curry da Kagura'),
('Consertar a porta da Yorozuya que está rangendo'),
('Pesquisar uma nova missão para a equipe'),
('Fazer uma entrega urgente para o Kondou');

SELECT * FROM tb_tasks;