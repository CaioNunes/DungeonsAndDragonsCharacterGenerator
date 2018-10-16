:- dynamic class/6.
:- dynamic combat/1.
:- dynamic magic/1.
:- dynamic divinity/1.
:- dynamic ability/1.
:- dynamic behavior/1.
:- dynamic answer_class/1.
:- dynamic skill/2.

:- dynamic skill1_answer/1.
:- dynamic skill2_answer/1.

% Name, combat type(ranged, meele or indifferent), can use magic, guided by a supernatural entity
% knowledge or strength or agility, agressive or peaceful

class('Bárbaro', curta, nao, nao, forca, agressivo).
class('Bardo', indiferente, sim, nao, conhecimento, indiferente).
class('Bruxo', longa, sim, sim, conhecimento, agressivo).
class('Clérigo', indiferente, sim, sim, forca, pacifico).
class('Druida', indiferente, sim, nao, indiferente, indiferente).
class('Feiticeiro', longa, sim, nao, conhecimento, indiferente).
class('Ladino', curta, nao, nao, agilidade, indiferente).
class('Lutador', curta, nao, nao, forca, indiferente).
class('Mago', longa, sim, nao, conhecimento, pacifico).
class('Monge', curta, nao, nao, agilidade, pacifico).
class('Paladino', curta, sim, sim, forca, pacifico).
class('Ranger', longa, sim, nao, agilidade, indiferente).

skill('Bárbaro', adestrar_animais).
skill('Bárbaro', atletismo).
skill('Bárbaro', intimidacao).
skill('Bárbaro', natureza).
skill('Bárbaro', percepcao).
skill('Bárbaro', sobrevivencia).

skill('Bardo', acrobacia).
skill('Bardo', adestrar_animais).
skill('Bardo', arcanismo).
skill('Bardo', atletismo).
skill('Bardo', enganacao).
skill('Bardo', furtividade).
skill('Bardo', historia).
skill('Bardo', intimidacao).
skill('Bardo', intuicao).
skill('Bardo', investigacao).
skill('Bardo', medicina).
skill('Bardo', natureza).
skill('Bardo', percepcao).
skill('Bardo', performance).
skill('Bardo', persuasao).
skill('Bardo', prestidigitacao).
skill('Bardo', religiao).
skill('Bardo', sobrevivencia).

skill('Bruxo', arcanismo).
skill('Bruxo', enganacao).
skill('Bruxo', historia).
skill('Bruxo', intimidacao).
skill('Bruxo', investigacao).
skill('Bruxo', natureza).
skill('Bruxo', religiao).

skill('Clérigo', historia).
skill('Clérigo', intuicao).
skill('Clérigo', medicina).
skill('Clérigo', persuasao).
skill('Clérigo', religiao).

skill('Druida', arcanismo).
skill('Druida', adestrar_animais).
skill('Druida', intuicao).
skill('Druida', medicina).
skill('Druida', natureza).
skill('Druida', percepcao).
skill('Druida', religiao).
skill('Druida', sobrevivencia).

skill('Feiticeiro', arcanismo).
skill('Feiticeiro', enganacao).
skill('Feiticeiro', intuicao).
skill('Feiticeiro', intimidacao).
skill('Feiticeiro', persuasao).
skill('Feiticeiro', religiao).

skill('Ladino', acrobacia).
skill('Ladino', atletismo).
skill('Ladino', atuacao).
skill('Ladino', enganacao).
skill('Ladino', furtividade).
skill('Ladino', intimidacao).
skill('Ladino', intuicao).
skill('Ladino', investigacao).
skill('Ladino', percepcao).
skill('Ladino', persuasao).
skill('Ladino', prestidigitacao).

skill('Lutador', acrobacia).
skill('Lutador', adestrar_animais).
skill('Lutador', atletismo).
skill('Lutador', historia).
skill('Lutador', intuicao).
skill('Lutador', intimidacao).
skill('Lutador', percepcao).
skill('Lutador', sobrevivencia).

skill('Mago', arcanismo).
skill('Mago', historia).
skill('Mago', intuicao).
skill('Mago', investigacao).
skill('Mago', medicina).
skill('Mago', religiao).

skill('Monge', acrobacia).
skill('Monge', atletismo).
skill('Monge', furtividade).
skill('Monge', historia).
skill('Monge', intuicao).
skill('Monge', religiao).

skill('Paladino', atletismo).
skill('Paladino', intuicao).
skill('Paladino', intimidacao).
skill('Paladino', medicina).
skill('Paladino', persuasao).
skill('Paladino', religiao).

skill('Ranger', acrobacia).
skill('Ranger', adestrar_animais).
skill('Ranger', atletismo).
skill('Ranger', furtividade).
skill('Ranger', intuicao).
skill('Ranger', investigacao).
skill('Ranger', natureza).
skill('Ranger', percepcao).
skill('Ranger', sobrevivencia).

hit_points_per_class('Bárbaro', '12').
hit_points_per_class('Bardo', '8').
hit_points_per_class('Bruxo', '8').
hit_points_per_class('Clérigo', '8').
hit_points_per_class('Druida', '8').
hit_points_per_class('Feiticeiro', '6').
hit_points_per_class('Ladino', '8').
hit_points_per_class('Lutador', '10').
hit_points_per_class('Mago', '6').
hit_points_per_class('Monge', '8').
hit_points_per_class('Paladino', '10').
hit_points_per_class('Ranger', '10').

% rules

have_skill(Class, Skill) :- skill(Class, Skill). 
