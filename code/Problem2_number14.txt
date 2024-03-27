
CL-USER 1 > (defvar *airports*
  '((YUL . Montreal)
    (LCY . London_UK)
    (LHR . London_UK)
    (MIL . Milan)
    (SFO . San_Francisco)
    (SDQ . Santo_Domingo)))
*AIRPORTS*

CL-USER 2 > (defun getAllAirports (city)
(mapcar #'car (remove-if-not (lambda (airport)
(string= (cdr airport) city))
                                *airports*)))
GETALLAIRPORTS

CL-USER 3 > (getAllAirports 'LondonUK)
NIL

CL-USER 4 > (getAllAirports 'London_UK)
(LCY LHR)

CL-USER 5 >(defun getAllAirports (city)
  (let ((airports (mapcar #'car (remove-if-not (lambda (airport)
                                                  (string= (cdr airport) city))
                                                *airports*))))
    (if (null airports)
        (print "City not found")
        (progn
          (print "ok")
          airports))))
GETALLAIRPORTS

CL-USER 6 > (getAllAirports 'London_UK)

"ok" 
(LCY LHR)

CL-USER 7 > (getAllAirports 'Jamaica)

"City not found" 
"City not found"

CL-USER 8 > 