:- consult(race).

question_about_size :- nl,
    write(" Você quer ser alto ou baixo ? (tall/small) "), nl,
    read(Size),
    asserta(size(Size)),
    findall(Race, race(Race, Size), L),
    length(L, N), N == 1,
    race(Race, Size),
    write('Você deveria ser um ... '),
    write(Race).
    
question_about_size :- nl,
    write(" Você quer ser de uma raça comum ou incomum ? (common/unusual)").