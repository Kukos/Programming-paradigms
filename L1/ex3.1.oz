declare
local
    proc {Response In Func Interlokutor}
        case In of H | T then
            {Delay 1000}
            {Browse H}
            % Wartosc obrobiona funkcja @Func
            {Send Interlokutor {Func H}}
            % Rob dalej swoje na reszcie listy
            {Response T Func Interlokutor}
        end
    end

    fun {Talk Proc Interlokutor}
        Data in
            thread {Response Data Proc Interlokutor} end
        {NewPort Data}
    end

    R1 R2
in
    proc {Start}
        R1={Talk fun {$ X} X+1 end R2}
        R2={Talk fun {$ X} X-1 end R1}
        {Send R1 0}
    end
end

{Start}
