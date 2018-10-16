:- style_check(-singleton).

:- consult(database/race).
:- consult(database/class).
:- consult(database/background).
:- consult(about_race).
:- consult(about_class).
:- consult(about_skills).

menu :- nl,
	write(" Bem vindo ao gerador de personagens de Dungeons and Dragons ! Vamos começar ?"), nl, 
	question_about_size,
	show_class_and_race,
	show_skills,
	show_class_race_and_skills,
	show_hit_dices,
	show_background.

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

show_hit_dices :- nl,
	answer_race(Race),
	answer_class(Class),
	write( " Por ser um "), write(Class),
	write(", você possui "),
	hit_points_per_class(Class, HitPoints),
	write(" pontos de vida "),
	write(HitPoints), write(" estamos progredindo, vamos continuar !").

show_background :- nl,
	background_choosed(Background),
	write( " Você possui o seguinte background: "),
	write(Background), write(" ! "), nl,
	have_background_history(Background,History),
	write(History), nl, 
	write(" Este era você no passado. Seu personagem está pronto para aventuras !").