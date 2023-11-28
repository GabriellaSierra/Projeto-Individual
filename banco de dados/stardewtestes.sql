create database StardewTestes;
use StardewTestes;

create table Teste (
    idTeste int primary key auto_increment,
    titulo varchar(45),
    dataDoTeste datetime
    );
    
    insert into teste value (null, 'Quiz do vale', now());
    
	create table usuario (
    idUsuario int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    senha varchar(45),
    fkTeste int,
    foreign key (fkTeste) references Teste(idTeste)
    );
    
    select * from usuario;
    
    create table pontos (
    idPontos int primary key auto_increment,
    pontos int,
    fkUsuario int,
    foreign key (fkUsuario) references usuario(idUsuario)
    );
    
    select * from pontos;
    
drop database stardewtestes;
    
    