/*
head([Head| _], Head). head(a, [a,b,c,d,e,f]).
tail([ _|Tail], Tail).
tail([b,c,d,e,f], [a,b,c,d,e,f]). Wichtig: Alles auﬂer der Head ist das Tail!!

isMember(X, [X | _]).
isMember(X, [_| Tail]) :- isMember(X, Tail).

concatenate([], L, L).
concatenate([H|T], L, [H|ExtendedTail]) :- concatenate(T,L, ExtendedTail).*/

prepend(X, L, [X|L]).

addElement(X, [], [X]).
addElement(X,[H|T1], [H|T2]) :- addElement(X, T1, T2).

hasLength([], 0).
hasLength([_|T], X) :- hasLength(T, X2), X is X2 + 1. 

remove(X, [X|T], T).
remove(X, [H|T], [H|NewTail]) :- remove(X, T, NewTail).
