; Class definitons, ported from our SWT project
(defclass SWVector ()
  (value :accessor vector-value
         :initform '())
  :autoinitargs #t)

(defclass SWDate ()
  (value :accessor date-value
         :type SWVector
         :initform '())
  (next :accessor date-next
        :type SWDate
        :initform '())
  :autoinitargs #t)

(defclass SWData ()
  (first :accessor data-first
         :type SWDate
         :initform '() 
         :initarg :first))

(defclass Point ()
  (x :accessor point-x
     :type <number>
     :initvalue 0)
  (y :accessor point-y
     :type <number>
     :initvalue 0)
  :autoinitargs #t)

; naive first approach
(defgeneric asSWDate (elem)) ; defining our generic function taking one argument

(defmethod asSWDate ((elem Point))
  (make SWDate :value ))

(defgeneric asSWVector (elem)) ; defininf our generic function taking one argument

(defmethod asSWVector ((elem Point))
  (make SWVector :value (cons (point-x elem) (cons (point-y elem) '()))))
  
; easier approach

; examples
(vector-value (asSWVector (make Point :x 10)))
