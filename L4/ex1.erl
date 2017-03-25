-module(ex1).
-export([pythag/1]).

% brute force, lists:seq generuje liczby, nastepnie sprawdzamy warunki
pythag(D) ->
	[ 	{A, B, C} ||
	 	A <- lists:seq(1, D div 2),
		B <- lists:seq(1, A),
		% Po 1h googlowania wymyslilem taki workaround, strasznie nieelegancki ale dziala :)
		C <- lists:seq(trunc(math:sqrt(A * A + B * B)), trunc(math:sqrt(A * A + B * B))),
		A + B + C == D,
		A * A + B * B == C * C
	].

% > c(ex1).
% > ex1:pythag(1000).
