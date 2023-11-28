create database StardewTestes;
use StardewTestes;

create table Teste (
    idTeste int primary key auto_increment,
    titulo varchar(45),
    dataDoTeste datetime
    );
    
    select * from teste;
    
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
    
    SELECT sum(pontos), fkUsuario FROM pontos 
        GROUP BY fkUsuario;
        
	SELECT sum(pontos) total_pontos, fkUsuario, nome FROM pontos
        JOIN usuario ON idUsuario = fkUsuario 
        GROUP BY fkUsuario;
    
    select count(idPontos) as qtdTeste, dataTeste from pontos
    group by dataTeste;
    
    
    alter table pontos add column dataTeste date;
    update pontos set dataTeste = '2023-11-26' where idPontos = 1; 
     update pontos set dataTeste = '2023-11-26' where idPontos = 2;
      update pontos set dataTeste = '2023-11-27' where idPontos = 3;
       update pontos set dataTeste = '2023-11-28' where idPontos = 4; 
       
	alter table pontos modify column dataTeste  date default(current_date);
    
    
    
drop database stardewtestes;
    
    