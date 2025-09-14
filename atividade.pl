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


model(Solution):-
  % Definindo solução
  % Mochilas=[Mochila_1, Mochila_2, Mochila_3, Mochila_4, Mochila_5],
  Nomes=[Nome_1, Nome_2, Nome_3, Nome_4, Nome_5],
  Meses=[Mes_1, Mes_2, Mes_3, Mes_4, Mes_5],
  Jogos=[Jogo_1, Jogo_2, Jogo_3, Jogo_4, Jogo_5],
  Materias=[Materia_1, Materia_2, Materia_3, Materia_4, Materia_5],
  Sucos=[Suco_1, Suco_2, Suco_3, Suco_4, Suco_5],    
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
  % alldifferent(Mochilas),
  alldifferent([Mochila_1, Mochila_2, Mochila_3, Mochila_4, Mochila_5]),

  nome(Nome_1),
  nome(Nome_2),
  nome(Nome_3),
  nome(Nome_4),
  nome(Nome_5),
  alldifferent(Nomes),

  mes(Mes_1),
  mes(Mes_2),
  mes(Mes_3),
  mes(Mes_4),
  mes(Mes_5),
  alldifferent(Meses),

  jogo(Jogo_1),
  jogo(Jogo_2),
  jogo(Jogo_3),
  jogo(Jogo_4),
  jogo(Jogo_5),
  alldifferent(Jogos),

  materia(Materia_1),
  materia(Materia_2),
  materia(Materia_3),
  materia(Materia_4),
  materia(Materia_5),
  alldifferent(Materias),

  suco(Suco_1),
  suco(Suco_2),
  suco(Suco_3),
  suco(Suco_4),
  suco(Suco_5),
  alldifferent(Sucos),
  
  (
    Suco_1==limao
  ),
  (
    Nome_5==lenin
  ),

  (
    Nome_1==otavio
  ),

  (
    Jogo_3==jogo_da_forca
  ),
  
  (
    % Materia_1==biologia,Suco_1==morango;
    % Materia_2==biologia,Suco_2==morango;
    Materia_3==biologia,Suco_3==morango
    % Materia_4==biologia,Suco_4==morango;
    % Materia_5==biologia,Suco_5==morango
  ),

  (
    Mes_1==setembro,Suco_2==laranja;
    Mes_2==setembro,Suco_3==laranja;
    Mes_3==setembro,Suco_4==laranja;
    Mes_4==setembro,Suco_5==laranja;
    Suco_1==laranja,Mes_2==setembro;
    Suco_2==laranja,Mes_3==setembro;
    % Suco_3==laranja,Mes_4==setembro;
    Suco_4==laranja,Mes_5==setembro
  ),

  ( 
    % Nome_1==joao,Materia_1==historia;
    Nome_2==joao,Materia_2==historia;
    Nome_3==joao,Materia_3==historia;
    Nome_4==joao,Materia_4==historia
    % Nome_5==joao,Materia_5==historia 
  ),

  (
    Mochila_1==azul,Mes_2==maio;
    Mochila_2==azul,Mes_3==maio;
    Mochila_3==azul,Mes_4==maio;
    Mochila_4==azul,Mes_5==maio
  ),

  (    
    
    % Nome_1==will,Jogo_2==prob_de_logica;
    Nome_2==will,Jogo_3==prob_de_logica;
    Nome_3==will,Jogo_4==prob_de_logica;
    Nome_4==will,Jogo_5==prob_de_logica;
    Jogo_1==prob_de_logica,Nome_2==will;
    Jogo_2==prob_de_logica,Nome_3==will;
    Jogo_3==prob_de_logica,Nome_4==will
    % Jogo_4==prob_de_logica,Nome_5==will
  ),
  
  (
    Mochila_1==branca,Nome_2==will;
    Mochila_2==branca,Nome_3==will;
    Mochila_3==branca,Nome_4==will
    % Mochila_4==branca,Nome_5==will
  ),
  
 

  (
    Suco_1==uva,Jogo_1==prob_de_logica;
    Suco_2==uva,Jogo_2==prob_de_logica;
    % Suco_3==uva,Jogo_3==prob_de_logica;
    Suco_4==uva,Jogo_4==prob_de_logica;
    Suco_5==uva,Jogo_5==prob_de_logica
  ),

  (
    Jogo_1==jogo_da_forca,Jogo_2==tres_ou_mais;
    Jogo_2==jogo_da_forca,Jogo_3==tres_ou_mais;
    Jogo_3==jogo_da_forca,Jogo_4==tres_ou_mais;
    Jogo_4==jogo_da_forca,Jogo_5==tres_ou_mais;
    Jogo_1==tres_ou_mais,Jogo_2==jogo_da_forca;
    Jogo_2==tres_ou_mais,Jogo_3==jogo_da_forca;
    Jogo_3==tres_ou_mais,Jogo_4==jogo_da_forca;
    Jogo_4==tres_ou_mais,Jogo_5==jogo_da_forca
  ),

  (
    Suco_2==uva,Mochila_1==azul;
    % Suco_3==uva,Mochila_2==azul;
    Suco_4==uva,Mochila_3==azul;
    Suco_5==uva,Mochila_4==azul
  ),

  (
    Jogo_1==cubo_vermelho;
    Jogo_5==cubo_vermelho
  ),

  (
    Jogo_1==jogo_da_forca,Mochila_2==vermelha;
    Jogo_2==jogo_da_forca,Mochila_3==vermelha;
    Jogo_3==jogo_da_forca,Mochila_4==vermelha;
    Jogo_4==jogo_da_forca,Mochila_5==vermelha;
    Mochila_1==vermelha,Jogo_2==jogo_da_forca;
    Mochila_2==vermelha,Jogo_3==jogo_da_forca;
    Mochila_3==vermelha,Jogo_4==jogo_da_forca;
    Mochila_4==vermelha,Jogo_5==jogo_da_forca
  ),

  (
    Mes_1==janeiro,Mes_2==setembro;
    Mes_2==janeiro,Mes_3==setembro;
    Mes_3==janeiro,Mes_4==setembro;
    Mes_4==janeiro,Mes_5==setembro;
    Mes_1==setembro,Mes_2==janeiro;
    Mes_2==setembro,Mes_3==janeiro;
    Mes_3==setembro,Mes_4==janeiro;
    Mes_4==setembro,Mes_5==janeiro
  ),

  (
    Suco_1==uva,Materia_2==portugues;
    Suco_2==uva,Materia_3==portugues;
    Suco_3==uva,Materia_4==portugues;
    Suco_4==uva,Materia_5==portugues
  ),

  (
    Materia_1==matematica,Mes_1==dezembro;
    Materia_2==matematica,Mes_2==dezembro;
    Materia_3==matematica,Mes_3==dezembro;
    Materia_4==matematica,Mes_4==dezembro;
    Materia_5==matematica,Mes_5==dezembro
  ),

  (
    Jogo_1==prob_de_logica,Mochila_2==amarela;
    Jogo_2==prob_de_logica,Mochila_3==amarela;
    Jogo_3==prob_de_logica,Mochila_4==amarela;
    Jogo_4==prob_de_logica,Mochila_5==amarela;
    Mochila_1==amarela,Jogo_2==prob_de_logica;
    Mochila_2==amarela,Jogo_3==prob_de_logica;
    Mochila_3==amarela,Jogo_4==prob_de_logica;
    Mochila_4==amarela,Jogo_5==prob_de_logica
  ),

  (
    Mochila_1==azul,Mes_1==janeiro;
    Mochila_2==azul,Mes_2==janeiro;
    Mochila_3==azul,Mes_3==janeiro;
    Mochila_4==azul,Mes_4==janeiro;
    Mochila_5==azul,Mes_5==janeiro
  ),

  (
    Mes_1==setembro,Jogo_2==cubo_vermelho;
    Mes_2==setembro,Jogo_3==cubo_vermelho;
    Mes_3==setembro,Jogo_4==cubo_vermelho;
    Mes_4==setembro,Jogo_5==cubo_vermelho;
    Jogo_1==cubo_vermelho,Mes_2==setembro;
    Jogo_2==cubo_vermelho,Mes_3==setembro;
    Jogo_3==cubo_vermelho,Mes_4==setembro;
    Jogo_4==cubo_vermelho,Mes_5==setembro
  ),


  (
    Materia_2==matematica,Suco_2==maracuja;
    Materia_3==matematica,Suco_3==maracuja;
    Materia_4==matematica,Suco_4==maracuja;
    Materia_5==matematica,Suco_5==maracuja
  )
  .

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
