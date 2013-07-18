(set-info :origin "NTS benchmark converted to SMT-LIB2 using Eldarica (http://lara.epfl.ch/w/eldarica)")
(set-logic HORN)
(declare-fun main_s1 (Int Int Int Int) Bool)
(declare-fun main_s3 (Int Int Int Int) Bool)
(declare-fun main_s4 (Int Int Int Int) Bool)
(declare-fun main_s2 (Int Int Int Int) Bool)
(declare-fun main_init_p (Int Int Int Int) Bool)
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s3 ?A ?B ?E ?F)(and (= ?C 0) (= ?D ?F))) (main_s1 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s3 ?A ?B ?E ?F)(and (= ?C ?E) (= ?D ?F))) (main_s4 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s1 ?A ?B ?E ?F)(and (= ?C 0) (= ?D ?F))) (main_s3 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s1 ?A ?B ?E ?F)(and (= ?C ?E) (= ?D ?F))) (main_s2 ?A ?B ?C ?D))))
(assert(not (exists((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(and (main_s4 ?A ?B ?C ?D)(and (and (= ?C ?D) (= ?E ?C)) (= ?F ?D))))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s4 ?A ?B ?E ?F)(and (= ?C 0) (= ?D ?F))) (main_s3 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s4 ?A ?B ?E ?F)(and (= ?C ?E) (= ?D ?F))) (main_s2 ?A ?B ?C ?D))))
(assert(not (exists((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(and (main_s2 ?A ?B ?C ?D)(and (and (= ?C ?D) (= ?E ?C)) (= ?F ?D))))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s2 ?A ?B ?E ?F)(and (= ?C 0) (= ?D ?F))) (main_s1 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s2 ?A ?B ?E ?F)(and (and (and (and (not (= ?E (- ?F 1))) (= ?E (- ?F 1))) (= ?C (+ ?E 1))) (= ?C 0)) (= ?D ?F))) (main_s4 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s2 ?A ?B ?E ?F)(and (and (= ?E (- ?F 1)) (= ?C 0)) (= ?D ?F))) (main_s4 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_s2 ?A ?B ?E ?F)(and (and (not (= ?E (- ?F 1))) (= ?C (+ ?E 1))) (= ?D ?F))) (main_s4 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_init_p ?A ?B ?E ?F)(and (and (> ?F 1) (= ?D ?F)) (= ?C 0))) (main_s1 ?A ?B ?C ?D))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int))(=>(and (= ?A ?C) (= ?B ?D)) (main_init_p ?A ?B ?C ?D))))
(check-sat)