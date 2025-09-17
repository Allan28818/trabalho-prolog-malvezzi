main:-  
  write('Programa inicializando...'),
  nl,nl,
  model(Solution),
  print_list(Solution),
  nl,
  fail.

main:-
  write("Execução do programa finalizada\n").

print_list([]):-write("\n_______________________\n").
print_list([H|T]):-
  write("\n_______________________\n"),
  write(H),write(":"),
  print_list(T).

alldifferent([]).
alldifferent([H|T]):-not(member(H,T)),alldifferent(T).


mochila(amarela).
mochila(azul).
mochila(branca).
mochila(verde).
mochila(vermelha).

nome(denis).
nome(joao).
nome(lenin).
nome(otavio).
nome(will).

mes(agosto).
mes(dezembro).
mes(janeiro).
mes(maio).
mes(setembro).

jogo(tres_ou_mais).
jogo(caca_palavras).
jogo(cubo_vermelho).
jogo(jogo_da_forca).
jogo(prob_de_logica).


materia(biologia).
materia(geografia).
materia(historia).
materia(matematica).
materia(portugues).

suco(laranja).
suco(limao).
suco(maracuja).
suco(morango).
suco(uva).

model(Solution):-
  % Definindo solução  
  Solution=[
    (Mochila_1, Nome_1, Mes_1, Jogo_1, Materia_1, Suco_1),
    (Mochila_2, Nome_2, Mes_2, Jogo_2, Materia_2, Suco_2),
    (Mochila_3, Nome_3, Mes_3, Jogo_3, Materia_3, Suco_3),
    (Mochila_4, Nome_4, Mes_4, Jogo_4, Materia_4, Suco_4),
    (Mochila_5, Nome_5, Mes_5, Jogo_5, Materia_5, Suco_5)
  ],
  mochila(Mochila_1),
  mochila(Mochila_2),
  mochila(Mochila_3),
  mochila(Mochila_4),
  mochila(Mochila_5),
  % O garoto da mochila Branca esta
  % exatamente a esquerda de Will.
  (   
  Mochila_3==branca,Nome_4==will;
  Mochila_2==branca,Nome_3==will
  ),
    
  % O menino que gosta de suco de Uva esta em 
  % algum lugar a direita do garoto da mochila Azul.
  (
  Mochila_1==azul,Suco_2==uva;
  Mochila_3==azul,Suco_4==uva
  % Mochila_4==azul,Suco_5==uva
  ),
  alldifferent([Mochila_1, Mochila_2, Mochila_3, Mochila_4, Mochila_5]),

  nome(Nome_1),
  nome(Nome_2),
  nome(Nome_3),
  nome(Nome_4),
  nome(Nome_5),
  % Otavio esta em uma das pontas
  (Nome_1==otavio),
    
  % Lenin esta na quinta posicao
  (Nome_5==lenin),   
    
    
  % Will esta ao lado do menino que 
  % gosta de Problemas de Logica.
  (
  % Nome_1==will,Jogo_2==prob_de_logica;
  % Nome_2==will,Jogo_1==prob_de_logica; % Jogo_3==prob_de_logica
  Nome_3==will,(Jogo_2==prob_de_logica;Jogo_4==prob_de_logica);
  Nome_4==will,Jogo_5==prob_de_logica % Jogo_3==prob_de_logica
  % Nome_5==will,Jogo_4==prob_de_logica
  ),
    
  % joao gosta de historia.
  (   
  % Nome_1==joao,Materia_1==historia;
  Nome_2==joao,Materia_2==historia;
  % Nome_3==joao,Materia_3==historia;
  Nome_4==joao,Materia_4==historia
  % Nome_5==joao,Materia_5==historia
  ),
  alldifferent([Nome_1, Nome_2, Nome_3, Nome_4, Nome_5]),

  mes(Mes_1),
  mes(Mes_2),
  mes(Mes_3),
  mes(Mes_4),
  mes(Mes_5),
    
  % O garoto que nasceu em setembro esta ao lado de quem 
  % gosta de jogar Cubo Vermelho.
  (Mes_2==setembro;Mes_4==setembro),
    
  % O menino que nasceu em janeiro esta ao 
  % lado de quem nasceu em setembro.
  (
  Mes_1==janeiro;
  Mes_3==janeiro;
  Mes_5==janeiro
  ),
    
  % O menino que nasceu no mes de setembro esta ao 
  % lado de quem gosta de suco de Laranja.
  (
  % Mes_1==setembro,Suco_2==laranja;
  Mes_2==setembro,(Suco_1==laranja;Suco_3==laranja);
  % Mes_3==setembro,(Suco_2==laranja;Suco_4==laranja);
  Mes_4==setembro,(Suco_3==laranja;Suco_5==laranja)
  % Mes_5==setembro,Suco_4==laranja
  ),
  alldifferent([Mes_1, Mes_2, Mes_3, Mes_4, Mes_5]),

  jogo(Jogo_1),
  jogo(Jogo_2),
  jogo(Jogo_3),
  jogo(Jogo_4),
  jogo(Jogo_5),
  % Na terceira posicao esta quem gosta de jogo da forca
  (Jogo_3==jogo_da_forca),
    
  % O garoto que gosta do Jogo da Forca esta
  % ao lado do que gosta do 3 ou Mais.    
  (Jogo_3==jogo_da_forca, (Jogo_2==tres_ou_mais;Jogo_4==tres_ou_mais)),    
    
    
  % Em uma das pontas esta o menino que 
  % adora jogar Cubo Vermelho.
  (Jogo_1==cubo_vermelho;Jogo_5==cubo_vermelho),
    
  % Quem gosta de suco de Uva gosta 
  % de Problemas de Logica.
  (
  Jogo_2==prob_de_logica,Suco_2==uva;
  Jogo_4==prob_de_logica,Suco_4==uva
  % Jogo_5=prob_de_logica,Suco_5==uva
  ),
  alldifferent([Jogo_1, Jogo_2, Jogo_3, Jogo_4, Jogo_5]),

  materia(Materia_1),
  materia(Materia_2),
  materia(Materia_3),
  materia(Materia_4),
  materia(Materia_5),
  % O garoto que gosta de biologia gosta de suco de morango
  (Materia_3==biologia),
    
    
  % Quem gosta de suco de Uva esta exatamente a 
  % esquerda de quem gosta de Portugues.
  (
  Materia_3==portugues,Suco_2==uva;
  Mateira_5==portugues,Suco_4==uva  
  ),
  alldifferent([Materia_1, Materia_2, Materia_3, Materia_4, Materia_5]),

  suco(Suco_1),
  suco(Suco_2),
  suco(Suco_3),
  suco(Suco_4),
  suco(Suco_5),
  (Suco_1==limao),
  (Suco_3==morango),    
  alldifferent([Suco_1, Suco_2, Suco_3, Suco_4, Suco_5])
  .