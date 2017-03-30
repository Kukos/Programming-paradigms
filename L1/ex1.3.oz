% Skladnia Fold[L/R]
% @IN @FUN @INIT
% Przeksztalc @IN za pomoca @FUN w zaczynajac od @INIT idz rekursyjnie od strony L/R


declare
fun {Append L1 L2}
    % Doklej do L2 L1 ale od prawej wiec bedzie na poczatku
    {List.foldR L1 fun {$ X Y} X | Y end L2}
end
{Browse {Append [1 2 3] [4 5 6]}}

declare
fun {Reverse L}
    % dokladaj w odwrotnej kolejnosci zaczynajac od pustej
    {List.foldL L fun {$ X Y} Y | X end nil}
end
{Browse {Reverse [1 2 3]}}
