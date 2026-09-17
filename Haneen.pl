male(abdulaziz).
male(mohammed).
male(yazan).
male(aziz).

female(shaqra).
female(haneen).
female(zahra).
female(dana).
female(tana).

parent(abdulaziz, haneen).
parent(abdulaziz, zahra).
parent(abdulaziz, mohammed).

parent(shaqra, haneen).
parent(shaqra, zahra).
parent(shaqra, mohammed).

parent(zahra, yazan).
parent(zahra, dana).

parent(mohammed, tana).
parent(mohammed, aziz).


father(X,Y) :- parent(X,Y) , male(X).
mother(X,Y) :- parent(X,Y) , female(X).
sister(X,Y) :- parent(P,X) , parent(P,Y) , X\=Y, female(X).
brother(X,Y) :- parent(P,X) , parent(P,Y) , X\=Y, male(X).
