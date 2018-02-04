; <number> : <primitive-class>
;        <exact> : <primitive-class>
;          <exact-complex> : <primitive-class>
;            <exact-real> : <primitive-class>
;              <exact-rational> : <primitive-class>
;                <exact-integer> : <primitive-class>
;        <inexact> : <primitive-class>
;          <inexact-complex> : <primitive-class>
;            <inexact-real> : <primitive-class>
;              <inexact-rational> : <primitive-class>
;                <inexact-integer> : <primitive-class>

(defgeneric add (x y))

(defmethod add ((x <exact-integer>) (y <exact-integer>))
  (+ x y))

(defmethod add ((x <inexact-rational>) (y <inexact-rational>))
  (+ x y))

(defmethod add ((x <inexact-rational>) (y <exact-integer>))
  (+ x (exact->inexact y)))


; query generic function
; missing
; (add 5 5.4)
; (add 'a 'b)
; change method during runtime


;(defmethod add (x y)
;  (print '(No method found)))

;(defmethod add ((x <exact-integer>) (y <inexact-rational>))
;  (+ x (inexact->exact (round y))))

; (defmethod add (iar>) y)
;    (print '(Thats not working)))