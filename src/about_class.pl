:- consult(database/class).

:- style_check(-singleton).

question_about_fighting_style :- nl,
    write(" Você prefere lutar a uma curta ou longa distância ? (curta/longa/indiferente) "), nl,
    read(Combat),
    asserta(combat(Combat)),
    findall(Class, class(Class, Combat, _, _, _, _), L),
    length(L, N), N == 1,
    class(Class, Combat, _, _, _, _), nl,
    write('Você deveria ser um ... '),
    write(Class), write(!), nl, 
    asserta(answer_class(Class));
    question_about_magic.
    
question_about_magic :- nl,
    write(" Você gostaria de poder usar magias ? (sim/nao)"), nl,
    read(Magic),
    asserta(magic(Magic)),
    combat(Combat),
    findall(Class, class(Class, Combat, Magic, _, _, _), L),
    length(L, N), N == 1,
    class(Class, Combat, Magic, _, _, _), nl,
    write('Você deveria ser um ... '),
    write(Class), write(!), nl, 
    asserta(answer_class(Class));
    question_about_divinity.

question_about_divinity :- nl,
    write(" Você gostaria de ser guiado por um entidade sobrenatural ? (sim/nao)"), nl,
    read(Divinity),
    asserta(divinity(Divinity)),
    combat(Combat),
    magic(Magic),
    findall(Class, class(Class, Combat, Magic, Divinity, _, _), L),
    length(L, N), N == 1,
    class(Class, Combat, Magic, Divinity, _, _), nl,
    write('Você deveria ser um ... '),
    write(Class), write(!), nl, 
    asserta(answer_class(Class));
    question_about_ability.

question_about_ability :- nl,
    write(" Você dá mais valor à força, agilidade, ou conhecimento ? (forca/agilidade/conhecimento)"), nl,
    read(Ability),
    asserta(ability(Ability)),
    combat(Combat),
    magic(Magic),
    divinity(Divinity),
    findall(Class, class(Class, Combat, Magic, Divinity, Ability, _), L),
    length(L, N), N == 1,
    class(Class, Combat, Magic, Divinity, Ability, _), nl,
    write('Você deveria ser um ... '),
    write(Class), write(!), nl, 
    asserta(answer_class(Class));
    question_about_behavior.

question_about_behavior :- nl,
    write(" Você gostaria de ser pacifico ou agressivo ? (agressivo/pacifico/indiferente)"), nl,
    read(Behavior),
    asserta(behavior(Behavior)),
    combat(Combat),
    magic(Magic),
    divinity(Divinity),
    ability(Ability),
    findall(Class, class(Class, Combat, Magic, Divinity, Ability, Behavior), L),
    length(L, N), N == 1,
    class(Class, Combat, Magic, Divinity, Ability, Behavior), nl,
    write('Você deveria ser um ... '),
    write(Class), write(!), nl, 
    asserta(answer_class(Class)), !;
    nl,
    write(" Sua mente é confusa para os padrões impostos... Um Druida seria o ideal para ti, por ser o mais versátil"),
    nl,
    asserta(answer_class('Druida')).