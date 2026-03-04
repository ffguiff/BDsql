alter table aluno -- alterar tabela 
add data_nasc data; --adicionar a tabela aluno coluna data de nascimento
modify nome varchar2(150); -- modificar o campo nome para ter capacidade de 150 caracteres
modify nome not null; --moficica coluna nome para não poder receber mias valores nulos
rename column data_nasc to data_nascimento -- altera o nome da coluna de data_nasc para data_nascimento
drop column nome; -- eliminar coluna nome da tabela aluno
add constraint pk_alu primary key(ra); -- adicionando restrição de chave primaria a coluna ra 

rename aluno to alu; -- renomea tabela aluno para alu

drop table professor; -- exclui tabela professor

describe aluno -- exibi dados da tabela aluno