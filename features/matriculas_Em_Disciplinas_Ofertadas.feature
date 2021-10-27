Scenario:aluno matriculado em disciplinas com sucesso
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 And eu possuo os pre-requisitos para cursar "Lógica" e "Algoritmos"
 When eu seleciono  "Lógica" e "Algoritmos"
 And seleciono a opção de matrícula
 Then aparece "Lógica" e "Algoritmos" na coleção de disciplinas matriculadas 

Scenario: aluno não selecionou nenhuma disciplinas
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 When seleciono a opção de matricula sem selecionar nenhuma matéria
 Then nada acontece

Scenario: aluno não possui algum pre-requisito para pagar alguma cadeira
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 And eu não possuo os pre-requisitos para cursar "Lógica" 
 And eu possuo os pre-requisitos para cursar "Algoritmos"
 When eu seleciono  "Lógica" e "Algoritmos"
 And seleciono a opção de matrícula
 Then aparece uma mensagem de erro : Voce não possui os pre-requistos de "Lógica"
 And eu não sou matriculado em "Lógica"
 And aparece só "Algoritmos" na coleção de disciplinas matriculadas 
 And aparece que "Lógica" foi recusada

Scenario: aluno execedeu o limite de cadeiras na matrícula
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 And eu possuo os pre-requisitos de todas as cadeiras que eu pretendo pagar
 And o limite de caideras é de "2"
 When eu escolho  "Lógica", "Algoritmos" e "Estatística"
 And seleciono a opção de matricula
 Then aparece uma mensagem de erro : "Número maximo de matriculas excedido"
 And não aparece nenhuma cadeira na coleção de matrículas

<<<<<<< HEAD
Scenario: Z
=======
Scenario: X
>>>>>>>  cenario X do roteiro
