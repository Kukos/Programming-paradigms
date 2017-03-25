declare
local
    fun {ListMerge2 L1 L2}
        if L1 == nil then
            L2 % jesli 1 sie skonczyla kopiuj druga
	    elseif L2 == nil then
	        L1 % jesli druga sie skonczyla kopiuj pierwsza
	    else
	        case L1#L2 of (H1 | T1)#(H2 | T2) then % jesli sa obie
	            if H1 < H2 then
		            H1 | {ListMerge2 T1 L2} % H1 idzie jako 1st element nowej listy
		        else
		            H2 | {ListMerge2 L1 T2} % H2 idzie jako 1st element nowej listy
	            end
	        end
        end
     end
in
    fun {ListMerge3 L1 L2 L3}
        {ListMerge2 {ListMerge2 L1 L2} L3}
    end
end

% Jakis przyklad: Euler + Fib + Catalan
{Browse {ListMerge3 [2 3 5 11 17 41] [1 1 2 3 5 8] [1 1 2 5 14 42]}}
