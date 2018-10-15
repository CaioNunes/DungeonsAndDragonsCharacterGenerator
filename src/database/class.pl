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
class('Clérigo', indiferente, sim, sim, forca, pacifico).
class('Druida', indiferente, sim, nao, indiferente, indiferente).
class('Lutador', curta, nao, nao, forca, indiferente).
class('Monge', curta, nao, nao, agilidade, pacifico).
class('Paladino', curta, sim, sim, forca, pacifico).
class('Ranger', longa, sim, nao, agilidade, indiferente).
class('Ladino', curta, nao, nao, agilidade, indiferente).
class('Feiticeiro', longa, sim, nao, conhecimento, indiferente).
class('Bruxo', longa, sim, sim, conhecimento, agressivo).
class('Mago', longa, sim, nao, conhecimento, pacifico).

skill('Bárbaro', adestrar_animais).
skill('Bárbaro', atletismo).
skill('Bárbaro', intimidacao).
skill('Bárbaro', natureza).
skill('Bárbaro', percepcao).
skill('Bárbaro', sobrevivencia).

have_skill(Class, Skill) :- skill(Class, Skill). 
