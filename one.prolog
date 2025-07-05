% Facts
parent(john, mary).
parent(mary, susan).
parent(john, david).
male(john).
female(mary).
female(susan).
male(david).

% Rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Query: Main entry point
:- initialization(main).

main :-
    write('Who is the grandchild of John?'), nl,
    grandparent(john, GChild),
    write('Answer: '), write(GChild), nl.
