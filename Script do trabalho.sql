drop database if exists Brawhalla;
CREATE database Brawhalla;
use Brawhalla;

CREATE table Usuario(
Id_Usuario int(8) primary key not null,
Email varchar(100) not null,
Senha_Usuario varchar(100) not null,
Nome_Usuario varchar(100) not null
);

CREATE table Conta(
Id_Conta int(8) primary key not null,
Nome varchar(20) not null,
Ranking int(4) not null,
Nivel int(4) not null,
Personagens text not null,
email varchar(20) not null,
Id_Usuario int(8),
foreign key (Id_Usuario) references Usuario (Id_Usuario)
);

CREATE table Modo(
Id_Modo int primary key not null,
Tipo ENUM ('Solo','Dupla')
);

CREATE table selecao(
Codigo_Sala int primary key,
Numero_jogadores int not null,
Id_Usuario int(8) ,
Id_Modo int(8),
foreign key (Id_Usuario) references Usuario (Id_Usuario),
foreign key (Id_Modo) references Modo (Id_Modo)
);

 -- tabela modo: chave primaria Id_Modo


CREATE table Mapa(
Id_Mapa int(8) primary key not null,
Borda_Mapa boolean not null,
Plataformas boolean not null
);

CREATE table Personagem(
Id_Personagem int(8) primary key not null, 
foreign key (Id_Postura) references Postura(Id_Postura),
 foreign key (Id_Skin_Personagem) references Skin_Personagem(Id_Skin_Personagem)
);