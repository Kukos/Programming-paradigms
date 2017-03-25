declare
local
    fun {GameThread Name Entry}
        case Entry of H | T then
            {Browse Name#H}
            {Delay 1000}
            if (H == 'ping') then
                % Doklej odpowiedz ale juz nie nie bierz H wiec zastepujemy
                'pong' | {GameThread Name T}
            else
	            'ping' | {GameThread Name T}
            end
        end
    end
P1 P2

in
    proc {Game}
        % IN P1 => OUTP2 INP2 => OUTP1
        thread P1 = {GameThread 'P1' P2} end
        thread P2 = 'ping'|{GameThread 'P2' P1} end
    end
end

% Start The GAME :)
{Game}
