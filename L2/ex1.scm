; zero? A B ==> if (A == 0) B;
; list 1 2 3 4 5 ... ==> tworzy liste (1,2,3,4,5)
; (if (cond)) true (false) )
; list-tail List NUM ==> obcina nam @NUM pierwszych elementow z listy @List
; car ==> bierze pierwszy element z listy
; scheme --load ex1.scm ( a potem przyklady wpisac w interpreter )

(define (_mymap fun lista lista2)
    (if (zero? (length lista))
        lista2
        ; Tutaj jesli list1 nie pusta to wez usun pierwszy element i
        ; dodaj go do listy2, ale obron go za pomoca @func
	    (_mymap fun (list-tail lista 1) (append lista2 (list (fun (car lista)))))
   )
)

; potrzeba nam pusta lista 2 wiec mamy pomocnicza funkcje "prywatna"
(define (mymap fun lista)
    (_mymap fun lista '()))


; przyklady uzycia
(mymap (lambda (x) (+ 1 x)) (list 0 3 4 6 8))

(mymap car '((1 2 3) (4 5 6) (7 8 9)))
