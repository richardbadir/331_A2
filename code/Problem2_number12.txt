
CL-USER 1 > (defvar *airports*
  '((YUL . Montreal)
    (LCY . London_UK)
    (LHR . London_UL)
    (MIL . Milan)
    (SFO . San_Francisco)
    (SDQ . Santo_Domingo)))
*AIRPORTS*

CL-USER 2 > (defun deleteAirport (code)
  (let ((removed (remove-if (lambda (airport)
                               (string= (car airport) code))
                             *airports*)))
    (if (equal removed *airports*)
        (print "Code not in use")
        (progn
          (setf *airports* removed)
          (print "ok"))))
  *airports*)
DELETEAIRPORT

CL-USER 3 > (deleteAirport 'YUL)

"ok" 
((LCY . LONDON_UK) (LHR . LONDON_UL) (MIL . MILAN) (SFO . SAN_FRANCISCO) (SDQ . SANTO_DOMINGO))

CL-USER 4 > 