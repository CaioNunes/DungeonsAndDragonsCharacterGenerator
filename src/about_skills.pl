:- consult(database/class).

:- dynamic show_skills/0.
:- dynamic show_list_elements/0.
:- dynamic show_list_elements/1.

:- style_check(-singleton).

show_skills :- nl,
    answer_class(Class),
    findall(Skill, skill(Class, _), L),
    show_list_skills(L).

show_list_skills([]).
show_list_skills([Head|Tail]) :- nl,
    print_skill(Head, PSkill), write(PSkill), show_list_skills(Tail).

print_skill(Class, PSkill) :- 
    answer_class(Class),
    skill(Class, PSkill),
    retract(skill(Class, PSkill)).
     