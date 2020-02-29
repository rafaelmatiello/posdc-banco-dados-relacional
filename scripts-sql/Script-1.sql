select aluno.nome, campus.nome from aluno
inner join acesso on aluno.id = acesso.aluno_id
inner join turma on acesso.acesso_turma_id = turma.id 
inner join campus ON campus.id = turma.campus_id 

select aluno.nome, aluno.endereço from aluno 
inner join acesso ON acesso.aluno_id = aluno.id 

select aluno.nome from aluno

select professor.nome, disciplina.nome, turma.anosemestre from turma 
inner join professor on professor.id = turma.professor_id 
inner join disciplina on disciplina.id = turma.disciplina_id 

select professor.nome  from professor 