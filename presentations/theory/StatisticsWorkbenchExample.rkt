; Class definitons, ported from our SWT project
(defclass SWDate ()
  (value :accessor date-value
         :initform '()
         :initarg :value)
  (next :accessor date-next
        :type SWDate
        :initform '()
        :initarg :next))

(defclass SWData ()
  (first :accessor data-first
         :type SWDate
         :initform '() 
         :initarg :first))

(defclass SWVector ()
  (value :accessor vector-value
         :initform '()
         :initarg :value))

(defclass Point ()
  (x :accessor point-x
     :initvalue 0
     :initarg :x)
  (y :accessor point-y
     :initvalue 0
     :initarg :y))

; naive first approach
(defgeneric asSWDate (elem)) ; defining our generic function taking one argument

(defmethod asSWDate ((elem Point))
  '((point-x elem) (point-y elem)))


; easier approach

