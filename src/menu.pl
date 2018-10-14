:- style_check(-singleton).

:- consult(race).
:- consult(about_race).

menu :- nl,
	write("==== Welcome to D&D Character Generator ===="),
	question_about_size.

main :- menu.

	% write(" 1 - Start "), nl,
	% write(" 2 - Quit "), nl,
	% read(Choice),
