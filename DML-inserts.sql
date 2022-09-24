use todo6;
create Table if not exists produtos(
idproduto int not null  primary key auto_increment,
skuProduto int (7) not null,
descricaoProduto varchar(45) not null,
caracterProduto varchar(45) not null,
custoProduto decimal(10,2) not null,
valorProduto decimal(10,2) not null,
fornecedorProduto bigint(14) not null
);
create table if not exists Clientes(
idCliente int primary key auto_increment,
dadoNome varchar(60) not null,
dadoCpf bigint (11) not null
);

create Table if not exists dados(
dadoAvaliacao varchar (64) not null,
dadoData date,
dadoComentario varchar (64) not null,
dadoNota decimal(10) not null,
idCliente int not null,
idproduto int not null,
constraint fk_produtos foreign key (idproduto) references produtos(idproduto),
constraint fk_Clientes foreign key (idCliente) references Clientes(idCliente)
);


insert into clientes (dadoNome, dadoCpf)
values ('IVETE PEREIRA DA SILVA LEMOS', 092815438-69);
insert into clientes (dadoNome, dadoCpf)
values ('PATRICIA HELENA DE SOUZA' ,09868180899);
insert into clientes (dadoNome, dadoCpf)
values('ALESSANDRO LIMA DOS SANTOS' ,12209890888);
insert into clientes (dadoNome, dadoCpf)
values ('EDILAINE CRISTINA DE OLIVEIRA DOMICIANO', 34549210826);
insert into clientes (dadoNome, dadoCpf)
values ('FELIPE DE ANDRADE FORTES DA SILVA', 32515573860);
insert into clientes(dadoNome, dadoCpf)
values ('CARLOS EDUARDO APARECIDO REZENDE', 36019331873);
insert into clientes (dadoNome, dadoCpf)
values ('NATHALIA FERRAZ SCHIRMER', 12162282720);
insert into clientes (dadoNome, dadoCpf)
values ('RENATA MARIA NOGUEIRA SANTOS IVO', 22972662865);
insert into clientes (dadoNome, dadoCpf)
values ('ANA CRISTINA DE QUEIROZ',36636917806);
insert into clientes (dadoNome, dadoCpf)
values('DAMARIS DE FARIA ARAUJO',36847827858);

insert into produtos(skuProduto,descricaoProduto,caracterProduto,custoProduto,valorProduto,fornecedorProduto )
 values(5,'camiseta', 'polo',39.90, 79.90, 34000278000123),
(5,'bone', 'abalisa',39.90, 79.90, 34000278000123),
 ( 5,'bermuda', 'sarja',39.90, 79.90, 34000278000123),
( 5,' relogio ', 'mondaine',39.90, 79.90, 34000278000123),
( 5,'camisa', 'social',39.90, 79.90, 34000278000123),
( 5,'perfurme', '212',39.90, 79.90, 34000278000123),
( 5,'macacao', 'modal',39.90, 79.90, 34000278000123),
( 5,'chinelo', 'rasteira',39.90, 79.90, 34000278000123),
( 5,'sapato', 'couro',39.90, 79.90, 34000278000123),
( 5,'sandalia', 'plataforma',39.90, 79.90, 34000278000123),
( 5,'blusinha', 'menina',39.90, 79.90, 34000278000123),
( 5,'bota', 'canelada',39.90, 79.90, 34000278000123),
( 5,'colar', 'rainha',39.90, 79.90, 34000278000123),
( 5,'lenco', 'rosto',39.90, 79.90, 34000278000123),
( 5,'brinco', 'argola',39.90, 79.90, 34000278000123);

insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(1,1,'otimo', '2002-02-02', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(2,2,'bom', '2002-03-03', 'faltou item', 4);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(3,1,'bom', '2002-02-04', 'falta cor', 3);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(4,3,'otimo', '2002-03-10', 'tamanho perfeito', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(5,10,'otimo', '2002-02-11', 'cores exemplares', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(6,1,'otimo', '2002-03-14', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(7,4,'otimo', '2002-02-15', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(8,1,'otimo', '2002-03-20', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(9,4,'otimo', '2002-02-22', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(10,1,'regular', '2002-03-23', 'faltou peça', 2);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(11,10,'otimo', '2002-03-02', 'atendimento show', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(12,6,'ruim', '2002-04-03', 'faltou peça', 2);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(13,6,'regular', '2002-05-02', 'produto com muito pó', 2);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(14,1,'otimo', '2002-06-03', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(15,1,'ruim', '2002-07-02', 'malha com rasgo', 1);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(1,7,'otimo', '2002-08-03', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(2,7,'ruim', '2002-09-02', 'material danificado', 1);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(3,1,'otimo', '2002-10-03', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(4,1,'otimo', '2002-11-02', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(5,7,'bom', '2002-12-03', 'loja com ar forte', 3);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(6,7,'otimo', '2010-02-02', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(7,1,'ruim', '2011-03-03', 'faltou operador de caixa', 1);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(8,1,'regular', '2012-02-02', 'muita fila', 3);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(9,1,'otimo', '2013-03-03', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(10,1,'otimo', '2014-02-02', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(11,1,'bom', '2015-03-03', 'muita fila', 3);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(12,8,'otimo', '2016-02-02', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(13,8,'otimo', '2017-03-03', 'tudo ok', 5);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(14,10,'regular', '2018-02-02', 'muita fila', 2);
insert into dados(idproduto,idCliente,dadoAvaliacao,dadoData,dadoComentario,dadoNota)
values(15,10,'otimo', '2019-03-03', 'tudo ok', 5);


