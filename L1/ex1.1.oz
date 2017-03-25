declare

local
    fun {DoReverse List Rev}
        case List of nil then
	        Rev % Jesli koniec listy zwracamy odwrocona
        [] H | T then
	        {DoReverse T H | Rev} % Jesli liste mozemy pokazac w posatci head | tail to dodaj head na poczatek odwroconej
	    end
    end
in
    fun {ListReverse List}
        {DoReverse List nil}
    end
end

% Jakis przyklad
{Browse {ListReverse [1 2 3 4 5 6 7 8 9]}}
