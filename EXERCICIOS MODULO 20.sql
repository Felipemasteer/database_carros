-- 1

create database AlugaFacil

create table Cliente(
	ID_Cliente int identity(1,1),
	Nome_Cliente varchar(100) NOT NULL,
	CNH int NOT NULL,
	Cartao int NOT NULL,
	constraint cliente_id_cliente_pk primary key(ID_Cliente),
	constraint cliente_cnh_un unique(CNH)
	);

create table Carro(
	ID_Carro int identity(1,1),
	Placa varchar(100) not null,
	Modelo varchar(100) not null,
	Tipo varchar(100) not null,

	constraint carro_id_carro_pk primary key(ID_Carro),
	constraint carro_tipo_ck check(Tipo IN ('Hatch', 'Sedan', 'SUV')),
	constraint carro_placa_un unique(Placa)
	)

create table Locacoes(
	ID_Locacao int identity(1,1),
	Data_Locacao date not null,
	Data_Devolucao date not null,	ID_Carro int not null,	ID_Cliente int not null,	constraint locacoes_id_locacao_pk primary key(ID_Locacao),	constraint locacoes_id_carro_fk foreign key (ID_Carro) references Carro(ID_Carro),	constraint locacoes_id_cliente_fk foreign key(ID_Cliente) references Cliente(ID_Cliente))


