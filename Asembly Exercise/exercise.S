
;;; Five
    .global Five
Five:   
    ;;; uint16_t Five(): return 5 as a uint16_t
    ;;  load immediate
    ;;  load immediate or clear
    ;;  return

;;; Max
    .global Max
Max:
    ;;; uint8_t max(uint8_t x, uint8_t y): return the greater of the arguments
    ;; compare x to y
    ;; if x >= y, branch 1f
    ;; copy y into return value / first param slot.
1:
    ;; return
    
;;; Strlen
    .global Strlen
Strlen:
    ;;; uint16_t Strlen(char *arg)
    ;; copy argument to X (r27:26) pointer
    ;; initialize return value to zero
2:  
    ;; load X with post-increment
    ;; if loaded value was zero, branch 1f (label 1, forward)
    ;; increment return value
    ;; jump 2b (label 2, backward)
1:
    ;; return

