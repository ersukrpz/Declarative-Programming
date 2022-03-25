%family tree.

male(ahmet).
male(mustafa).
male(recep).
male(halil).
male(ersu).
male(bartu).
male(poyraz).
male(deniz).
male(atlas).
male(asil).
male(tuna).
female(afet).
female(pınar).
female(gamze).
female(nehir).
female(merve).
female(rümeysa).

parent(ahmet,recep). %ahmet recep's parent.
parent(ahmet,mustafa). %ahmet mustafa's parent.
parent(recep,pınar). %recep pınar's parent.
parent(recep,gamze). %recep gamze's parent.
parent(recep,halil). %recep halil's parent.
parent(afet,pınar). %afet pınar's parent.
parent(afet,gamze). %afet gamze's parent.
parent(afet,halil). %afet halil's parent.
parent(pınar,ersu). %pınar ersu's parent.
parent(pınar,bartu). %pınar bartu's parent.
parent(pınar,poyraz). %pınar poyraz's parent.
parent(gamze,deniz). %gamze deniz's parent.
parent(gamze,atlas). %gamze atlas's parent.
parent(gamze,asil). %gamze asil's parent.
parent(halil,nehir). %halil nehir's parent.
parent(halil,tuna). %halil tuna's parent.
parent(halil,merve). %halil merve's parent.
parent(halil,rümeysa). %halil rümeysa's parent.

%rules.

father(X,Y) :- male(X),parent(X,Y). % We can find mother ,if X is a male.
mother(X,Y) :- female(X),parent(X,Y). % We can find mother ,if X is a female.
grandfather(X,Y) :- male(X),parent(X,Z),parent(Z,Y). % We can find grandfather, if X is a male.
uncle(X,Y) :-  male(X),brother(X,Z),parent(Z,Y). % We can find uncle, if X is a male.
grand_uncle(X,Y) :- male(X),father(Z,Y),father(A,Z),brother(A,X). % We can find grand_uncle, if X is a male.
grand_uncle(X,Y) :- male(X),mother(Z,Y),father(A,Z),brother(A,X). % We can find grand_uncle, if X is a male.
brother(X,Y) :-  male(Y),parent(Z,X),parent(Z,Y), X \= Y. % We can find brother, if X is a male.
sister(X,Y) :- female(Y),parent(Z,X),parent(Z,Y), X \= Y. % We can find sister, if X is a female.

