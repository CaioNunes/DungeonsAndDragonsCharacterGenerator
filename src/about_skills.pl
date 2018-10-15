:- consult(database/class).

:- dynamic show_skills/0.
:- dynamic select_skills/0.
:- dynamic show_list_elements/0.
:- dynamic show_list_elements/1.

:- style_check(-singleton).

show_skills :- nl,
    write(" Escolha 2 entre as habilidades abaixo: "), nl, 
    answer_class(Class),
    findall(Skill, skill(Class, _), L),
    show_list_skills(Class, L).

select_skills :- nl,
    read(FirstSkill), read(SecondSkill),
    answer_class(Class),
    have_skill(Class, FirstSkill),
    have_skill(Class, SecondSkill),
    asserta(skill1_answer(FirstSkill)),
    asserta(skill2_answer(SecondSkill));
    write(" Escolha opções válidas, por favor !"),
    nl,
    show_skills.

show_list_skills([]).

show_list_skills(Class, [Head|Tail]) :- nl,
    skill(Class, Head), write(Head), nl, show_list_skills(Tail);
    select_skills.

test_about_consecutive_reads :-
    read(A),
    read(B),
    test_function(A,B).

test_function(A,B) :-
    write(A),
    write(B).