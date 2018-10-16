:- consult(database/background).

question_about_background :- nl,
    write(" Escolha a ação que você mais gosta ou que seja bom executando: "), nl,
    write("ir_a_igreja"), nl,  write("orar"), nl,
    write("confeccionar_coisas"), nl,  write("dancar"), nl,
    write("desenhar"), nl,  write("atuar"), nl,
    write("cantar"), nl,  write("tocar_instrumento"), nl,
    write("ouvir_as_pessoas"), nl,  write("inventar_historias"), nl,
    write("conversar"), nl,  write("enganar_alguem"), nl,
    write("quebrar_regras"), nl,  write("desafiar_autoridades"), nl,
    write("se_esconder"), nl,  write("ficar_sozinho"), nl,
    write("ficar_em_silencio"), nl,  write("pisar_na_grama"), nl,
    write("respirar_ar_puro"), nl,  write("ajudar_os_mais_necessitados"), nl,
    write("nadar"), nl,  write("navegar"), nl,
    write("comprar"), nl,  write("dar_ordens"), nl,
    write("ser_independente"), nl,  write("estudar"), nl,
    write("aprender"), nl,  write("debater"), nl,
    write("lutar"), nl,  write("servir_algo_ou_alguem"), nl,
    read(Action),
    have_background(Background, Action),
    asserta(background_choosed(Background));
    question_about_background.