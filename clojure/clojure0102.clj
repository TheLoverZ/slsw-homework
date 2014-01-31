; 实现一个函数 (collection-class col)
; 根据给定集合 col 的类型返回 :list，:map 或 :vector

(defn collection-class
  "return :list, :map or :vector according class of col"
  [col]
  (cond
   (list? col) :list
   (vector? col) :vector
   (map? col) :map)
)

;; user=> (collection-class (list 1 2 3))
;; :list
;; user=> (collection-class [1 2 3])
;; :vector
;; user=> (collection-class {:a 1, :b 2})
;; :map
