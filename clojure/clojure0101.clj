; 实现一个函数 (big st n)
; 当字符串 st 长度不超过 n 个字符时返回 true.

(defn big
  "return true if length of string is bigger than n"
  [st, n]
  (> (count st) n))

; #'user/big
; user=> (big "abcde" 5)
; false
; user=> (big "abcde" 4)
; true