:- consult(database/race).
:- consult(database/class).
:- consult(about_class).
:- style_check(-singleton).

question_about_size :- nl,
    write(" Você quer ser alto ou baixo ? (alto/baixo) "), nl,
    read(Size),
    asserta(size(Size)),
    findall(Race, race(Race, Size, _, _), L),
    length(L, N), N == 1,
    race(Race, Size, _, _),
    write('Você deveria ser um ... '),
    write(Race), write(!),
    asserta(answer_race(Race));
    
    question_about_rarity(Size).
    
question_about_rarity(Size) :- nl,
    write(" Você quer ser de uma raça comum ou incomum ? (comum/incomum)"), nl,
    read(Rarity),
    asserta(rarity(Rarity)),
    size(SizeQuery),
    findall(Race, race(Race, SizeQuery, Rarity, _), L),
    length(L, N), N == 1,
    race(Race, SizeQuery, Rarity, _),
    write('Você deveria ser um ... '),
    write(Race), write(!),
    asserta(answer_race(Race));

    question_about_alignment(SizeQuery, Rarity).

question_about_alignment(Size, Rarity) :- nl,
    write(" Qual alinhamento você deseja que seu personagem tenha ? (leal/neutro/caotico)"), nl,
    read(Alignment),
    asserta(alignment(Alignment)),
    size(SizeQuery),
    rarity(RarityQuery),
    findall(Race, race(Race, SizeQuery, RarityQuery, Alignment), L),
    length(L, N), N == 1,
    race(Race, SizeQuery, RarityQuery, Alignment),
    write('Você deve ser um ... '),
    write(Race), write(!),
    asserta(answer_race(Race)),
    question_about_fighting_style;

    write('Baseado nas suas preferências, você poderia ser um Humano, eles são bem versáteis !'),
    asserta(answer_race('Humano')),
    question_about_fighting_style.