;;;; ranges.lisp

(in-package #:dev.shft.blackbox)

(defclass range ()
  ((upper
	:initarg :upper
	:accessor upper-bound
	:initform (error "An upper bound must be specified"))
   (lower
	:initarg :lower
	:accessor lower
	:initform (error "A lower bound must be specified"))
   (upper-inclusivep
	:initarg :upper-inclusive
	:accessor upper-inclusivep)
   (lower-inclusivep
	:initarg :lower-inclusive
	:accessor lower-inclusivep)))

(defun make-range (upper lower &key (upper-inclusive nil upper-inclusivep) (lower-inclusive nil lower-inclusivep))
  (when (or (and (eq upper 'inf) upper-inclusive)
			(and (eq lower 'inf) lower-inclusive))
	(error "Infinite ranges can't be inclusive"))
  (make-instance 'range :upper upper :lower lower :upper-inclusive upper-inclusivep :lower-inclusive lower-inclusivep))

