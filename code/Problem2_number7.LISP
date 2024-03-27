
CL-USER 1 > (defvar *airports*
  '((YUL . Montreal)
    (LCY .London_UK)
    (LHR . London_UK)
    (MIL . Milan)
    (SFO . San_Francisco)
    (SDQ . Santo_Domingo)))
*AIRPORTS*

CL-USER 2 > *aiports*

Error: The variable *AIPORTS* is unbound.
  1 (continue) Try evaluating *AIPORTS* again.
  2 Specify a value to use this time instead of evaluating *AIPORTS*.
  3 Specify a value to set *AIPORTS* to.
  4 (abort) Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 3 : 1 > *airports*
((YUL . MONTREAL) (LCY .LONDON_UK) (LHR . LONDON_UK) (MIL . MILAN) (SFO . SAN_FRANCISCO) (SDQ . SANTO_DOMINGO))

CL-USER 4 : 1 > (defun add-airport (code city)
  (if (find code *airports* :key #'car)
      (print "Code already in use.")
      (progn
        (push (cons code city) *airports*)
        (print "ok"))))
ADD-AIRPORT

CL-USER 5 : 1 > 