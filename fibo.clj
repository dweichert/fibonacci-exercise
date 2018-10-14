(defn fibo
  ([]
   (fibo 1 1))
  ([a b]
   (lazy-seq (cons a (fibo b (+ a b))))))

(println (take 20 (fibo)))
