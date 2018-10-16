:- dynamic race/4.
:- dynamic size/1.
:- dynamic rarity/1.
:- dynamic alignment/1. 
:- dynamic answer_race/1.

% Name, Size, Frequency that is seen by the world,
% Alignment (Be a controlled person, follow laws and orders of society,
% or be a impulsive person, guided by your dreams and desires)

race('Anão', baixo, comum, leal).
race('Elfo', alto, comum, caotico).
race('Halfling', baixo, comum, neutro).
race('Humano', alto, comum, neutro).
race('Gnomo', baixo, incomum, neutro).
race('Tiefling', alto, incomum, caotico).
race('Draconato', alto, incomum, neutro).
