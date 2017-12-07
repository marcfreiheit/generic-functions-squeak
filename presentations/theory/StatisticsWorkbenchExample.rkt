(defclass SWData ()
  (first :accessor data-first
         :initform '() 
         :initarg :first))

(defclass SWVector ()
  (value :accessor vector-value
         :initform '()
         :initarg :value))

(defclass SWDate ()
  (value :accessor date-value
         :initform '()
         :initarg :value)
  (next :accessor date-next
        :initform '()
        :initarg :next))

(defclass Point ()
  (x :accessor point-x
     :initform 0
     :initarg :x)
  (y :accessor point-y
     :initform 0
     :initarg :y))

