;; (defvar *emacs-port* 4005)
;; (defvar *swank-client-port* 10000)

;; (defun start-swank-server-for-emacs (port)
;;   "Starts a Swank server thread, listening on PORT of the host's loopback
;; interface, to handle Emacs/Slime connection requests."
;;   (swank:create-server :port port :dont-close t))

;; (defun start-swank-server-for-swank-client (port)
;;   "Starts a Swank server thread, listening on PORT of the host's network
;; interface, to handle Swank Client connection requests."
;;   (let ((swank::*loopback-interface* (sb-unix:unix-gethostname)))))
