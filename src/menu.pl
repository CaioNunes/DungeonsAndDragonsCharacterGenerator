:- style_check(-singleton).

:- consult(database/race).
:- consult(database/class).
:- consult(about_race).
:- consult(about_class).
:- consult(about_skills).

menu :- nl,
	write("==== Welcome to D&D Character Generator ===="),
	question_about_size,
	show_answer,
	show_skills.

main :- menu.

show_answer :- nl,
	write("Então está decidido ! Você será um ..."),
	answer_race(Race),
	answer_class(Class),
	write(Race), write(" "), write(Class), write(!).

