USE mvc_crud_db;

/* DDL */
-- 🧾 Tabela: Tarefas
CREATE TABLE IF NOT EXISTS tb_tasks (
  id_task INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  task VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* DML */
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
('Fazer uma entrega urgente para o Kondou'),
('Desentupir o vaso da Yorozuya depois do ramen da Kagura'),
('Comprar band-aids para o Shinpachi'),
('Esconder a geladeira da Kagura por segurança'),
('Treinar técnicas de fuga caso o Shinsengumi apareça'),
('Ajudar o Gintoki a encontrar seu último Jump'),
('Lustrar a espada de madeira do Gintoki'),
('Dar banho no Sadaharu (com equipamento de proteção)'),
('Fazer um cartaz de propaganda para os serviços da Yorozuya'),
('Fazer ronda noturna no Kabukicho'),
('Investigar o desaparecimento de bolinhos da geladeira'),
('Evitar que o Hijikata invada a Yorozuya por maionese'),
('Recolher o lixo acumulado de mangás velhos'),
('Levar o Gintoki ao dentista contra sua vontade'),
('Ajudar a Kagura a estudar matemática'),
('Fugir da conta atrasada do aluguel da Otose'),
('Ajustar o relógio quebrado da parede da Yorozuya'),
('Remendar as roupas rasgadas do Gintoki'),
('Participar do concurso de cosplay do Kabukicho'),
('Evitar que o Zura monte outro plano de rebelião'),
('Encontrar um novo esconderijo para Katsura'),
('Vigiar o Sadaharu para que ele não coma os travesseiros'),
('Evitar que o Gintoki coma doce antes do café da manhã'),
('Comprar doces para subornar a Kagura'),
('Levar a Tae em segurança até o restaurante'),
('Escrever a lista de tarefas semanal da Yorozuya'),
('Fazer inventário dos itens destruídos este mês'),
('Ajudar o Shinpachi com a manutenção do dojo'),
('Evitar que o Gintoki durma no meio do expediente'),
('Limpar a caixa de areia do Sadaharu'),
('Trocar a areia da caixa do Sadaharu'),
('Atualizar o mural de missões da Yorozuya'),
('Fazer café forte pro Gintoki acordar'),
('Ir ao médico após levar um soco da Kagura'),
('Cuidar das plantas da varanda da Yorozuya'),
('Comprar balas mentoladas para o Hasegawa'),
('Verificar a fiação elétrica da sede'),
('Instalar uma tranca nova no banheiro'),
('Consertar o ventilador quebrado'),
('Escrever um relatório para o cliente do último serviço'),
('Organizar os contratos antigos'),
('Comprar um novo travesseiro para o Sadaharu'),
('Evitar que a Kagura quebre o sofá de novo'),
('Anotar os pedidos dos clientes da Yorozuya'),
('Criar um novo cardápio de serviços oferecidos'),
('Avisar a Otose sobre o novo aluguel atrasado'),
('Esconder o último pedaço de bolo da Kagura'),
('Comprar pilhas novas para o controle remoto'),
('Ensinar o Gintoki a usar o smartphone'),
('Ir buscar o pagamento com o último cliente'),
('Ajudar o Zura a montar um disfarce'),
('Evitar que o Shinpachi brigue com a Kagura'),
('Comprar mais papel higiênico'),
('Fazer uma faxina geral no banheiro'),
('Revisar o estoque de armas da Yorozuya'),
('Trocar a lâmpada do corredor'),
('Comprar sabão em pó para lavar os uniformes'),
('Ensinar a Kagura a cozinhar sem explosões'),
('Pedir desculpas à vizinha por barulho da madrugada'),
('Arrumar as almofadas da sala de descanso'),
('Buscar documentos perdidos no correio'),
('Ajudar o Hasegawa com seu novo emprego'),
('Buscar o guarda-chuva esquecido na lanchonete'),
('Comprar cola para reparar a estante quebrada'),
('Evitar que o Gintoki aposte de novo'),
('Escrever um pedido de desculpas formal ao cliente irritado'),
('Contratar um eletricista para a sede'),
('Treinar técnicas de primeiros socorros'),
('Fazer um novo cartaz "Procura-se" do Zura'),
('Colocar plaquinhas de “Não incomodar” nos quartos'),
('Comprar capa de chuva nova para a Kagura'),
('Lavar a louça acumulada há 3 dias'),
('Marcar reunião para revisar objetivos da equipe'),
('Pesquisar como remover manchas de maionese do sofá'),
('Esconder o estoque de doces do Gintoki'),
('Ir até o mercado comprar arroz'),
('Evitar que a Kagura jogue RPG até tarde'),
('Limpar a janela quebrada após confusão'),
('Redecorar o escritório da Yorozuya'),
('Desenhar nova logo para panfletos da equipe'),
('Impedir o Sadaharu de cavar buracos no quintal'),
('Comprar remédio para dor de cabeça do Gintoki'),
('Colocar repelente contra insetos no depósito'),
('Buscar a espada da Kagura que ficou na oficina'),
('Consertar a bicicleta do Shinpachi'),
('Organizar campeonato de quem come mais bolinhos'),
('Fotografar a equipe para novo anúncio'),
('Evitar que o Zura invada o Shinsengumi com fantasias'),
('Tirar o Gintoki da cadeia mais uma vez'),
('Treinar como fugir da Otose com aluguel atrasado'),
('Pintar a fachada da Yorozuya');

/* DQL */
SELECT * FROM tb_tasks;