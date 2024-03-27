
CL-USER 1 > (defvar *airports*
  '((YUL . Montreal)
    (LCY .London_UK)
    (LHR . London_UK)
    (MIL . Milan)
    (SFO . San_Francisco)
    (SDQ . Santo_Domingo)))
*AIRPORTS*

CL-USER 2 > (defun updateAirport (code new-city)
  (let ((existing (assoc code *airports* :test #'equal)))
    (if existing
        (progn
          (setf (cdr existing) new-city)
          (print  "ok"))
        (print "Code not in use."))))
UPDATEAIRPORT-CITY

CL-USER 3 > (defun updateAirport (code new-city)
  (let ((existing (assoc code *airports* :test #'equal)))
    (if existing
        (progn
          (setf (cdr existing) new-city)
          (print  "ok"))
        (print "Code not in use."))))
UPDATEAIRPORT

CL-USER 4 > (updateAirport 'YUL 'Dorval)

"ok" 
"ok"

CL-USER 5 > (updateAirport 'LL 'GG)

"Code not in use." 
"Code not in use."

CL-USER 6 > 