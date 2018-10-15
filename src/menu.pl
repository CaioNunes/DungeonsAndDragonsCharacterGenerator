:- style_check(-singleton).

:- consult(database/race).
:- consult(database/class).
:- consult(about_race).
:- consult(about_class).
:- consult(about_skills).

menu :- nl,
	write(" ==== Welcome to D&D Character Generator ==== "),
	question_about_size,
	show_class_and_race,
	show_skills,
	show_class_race_and_skills.

main :- menu.

show_class_and_race :- nl,
	write(" Então está decidido ! Você será um ... "),
	answer_race(Race),
	answer_class(Class),
	write(Race), write(" "), write(Class), write(!).

show_class_race_and_skills :- nl,
	answer_race(Race),
	answer_class(Class),
	skill1_answer(Skill1),
	skill2_answer(Skill2),
	write(" Então você é um ... "),
	write(Race), write(" "), write(Class),
	write(" proficiente em ... "),
	write(Skill1), write(" e "), write(Skill2),
	write(" ! Curioso, muito curioso...").