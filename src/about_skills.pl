:- consult(database/class).

:- dynamic show_skills/0.
:- dynamic show_list_elements/0.
:- dynamic show_list_elements/1.

:- style_check(-singleton).

show_skills :- nl,
    write("Escolha 2 entre as habilidades abaixo: "),
    answer_class(Class),
    findall(Skill, skill(Class, _), L),
    show_list_skills(Class, L).

% show_list_skills([]).
% show_list_skills([Head|Tail]) :- nl,
%     print_skill(Head, PSkill), write(PSkill), show_list_skills(Tail).

show_list_skills([]).
show_list_skills(Class, [Head|Tail]) :- nl,
    skill(Class, Head), write(Head), nl, show_list_skills(Tail).

% print_skill(Class, PSkill) :- 
%     answer_class(Class),
%     skill(Class, PSkill).
%     % retract(skill(Class, PSkill)).
     
test_about_consecutive_reads :-
    read(A),
    read(B),
    test_function(A,B).

test_function(A,B) :-
    write(A),
    write(B).