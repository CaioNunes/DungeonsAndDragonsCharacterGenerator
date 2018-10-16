:- dynamic background_choosed/1.
:- dynamic have_background/2.
:- dynamic have_background_history/2.


background('Acólito', ir_a_igreja).
background('Acólito', orar).

background('Artesão da Guilda', confeccionar_coisas).

background('Artista', dancar).
background('Artista', desenhar).
background('Artista', atuar).
background('Artista', cantar).
background('Artista', tocar_instrumento).

background('Charlatão', ouvir_as_pessoas).
background('Charlatão', inventar_historias).
background('Charlatão', conversar).
background('Charlatão', enganar_alguem).

background('Criminoso', quebrar_regras).
background('Criminoso', desafiar_autoridades).
background('Criminoso', se_esconder).

background('Eremita', ficar_sozinho).
background('Eremita', ficar_em_silencio).

background('Forasteiro', pisar_na_grama).
background('Forasteiro', respirar_ar_puro).

background('Herói do Povo', ajudar_os_mais_necessitados).

background('Marinheiro', nadar).
background('Marinheiro', navegar).

background('Nobre', comprar).
background('Nobre', dar_ordens).

background('Órfão', ser_independente).

background('Sábio', estudar).
background('Sábio', aprender).
background('Sábio', debater).

background('Soldado', lutar).
background('Soldado', servir_algo_ou_alguem).

background_history('Acólito', 'Você viveu a serviço de um templo de algum deus específico ou de um panteão de deuses.').
background_history('Artesão da Guilda', 'Você é um membro de uma guilda de artesãos, perito em um campo especifico e intimamente associado a outros artesãos.').
background_history('Artista', 'Você cresce em frente a uma audiência. Sabe como fasciná-los, entretê-los e inspirá-los.').
background_history('Charlatão', 'Você sempre teve jeito com as pessoas. Você pode lê-los como se fossem livros infantis.').
background_history('Criminoso', 'Você é um criminoso experiente com um histórico de contravenções.').
background_history('Eremita', 'Você viveu em reclusão - ou em uma comunidade isolada como um monastério ou completamente sozinho.').
background_history('Forasteiro', 'Você cresceu em uma área selvagem, longe da civilização e dos confortos da cidade e tecnologia.').
background_history('Herói do Povo', 'Você veio de uma parcela humilde da sociedade, mas está destinado a muito mais.').
background_history('Marinheiro', 'Você navegou em um navio pelo mar por anos.').
background_history('Nobre', 'Você entende de riqueza, poder e privilégios.').
background_history('Órfão', 'Você cresceu nas ruas, sozinho órfão e pobre.').
background_history('Sábio', 'Você ficou anos aprendendo sobre o conhecimento do multiverso.').
background_history('Soldado', 'A guerra esteve na sua vida desde que você se recorda.').

have_background(Background, Action) :- background(Background, Action).
have_background_history(Background, History) :- background_history(Background, History).