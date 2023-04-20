t("Vano").
onto("onto_test.pro").
%onto("common_eng.pro").
%onto("onto_people_rus.pro").

  
f("Vano", "is_a", "person").              % 0
f("Vano", "has_sex", "male").           % 1
f("Sandra", "is_a", "person").            % 2
f("Sandra", "has_sex", "female").      % 3 
f("Vano","is_parent","Misha").            % 4
f("Victor","is_parent","Vano").           % 5
f("Misha", "is_a", "person").              % 6
f("Misha", "has_sex", "male").           % 7
f("Ivan","is_parent","Sandra").           % 8
f("Sandra","is_parent","Masha").           % 9
f("Vano","is_parent","Masha").           % 10
f("Vano","is_spouse","Sandra").         %11
f("Victor","is_spouse","Maria").         %12
f("Maria","is_spouse","Victor").         %13
% f("Sandra","is_parent","Misha").            % 12
/*
i(s, 1, "Vano", [1,2,5,11], [6]).
i(s, 2,  "Sandra", [3,4,10,12], [9]).
i(s, 3,  "Victor", [6], []).
i(s, 4,  "Misha", [7,8], [5,12]).
i(s, 5,  "Ivan", [9], []).

i(p, 1, "is_a", [1,3,7]).
i(p, 2, "has_sex", [2,4,8]).
i(p, 3, "is_parent", [5,6,9,10,11,12]).

i(o, 1, "person", [], [1,3,7]).
i(o, 2, "male", [], [2,8]).
i(o, 3, "female",[],  [4]).
i(o, 4, "Misha", [7,8], [5,12]).
i(o, 5, "Vano", [...], [6]).
i(o, 6,  "Masha", [], [10,11]).
*/
% r([t("?x","is_a","person"), t("?x","has_sex","male")] , [t("?x","is_a","man")]).

% p([1,3,7]) * o([1,3,7]) =>    ?x = s([1,3,7]) = ["Vano","Sandra", "Misha"]
% p([2,4,8]) * o([2,8])    =>    ?x = s([2,8])    = ["Vano","Misha"]
% ?x = s[1,3,7] *s[2,8] = ["Vano","Sandra","Misha"] * ["Vano","Misha"] = ["Vano","Misha"]   => Vano is_a man,  Misha is_a man

% r([t("?x","is_parent","?y"), t("?y","is_parent","?z")]  , [t("?x","is_grandparent","?z")]).
% p([5,6,9,10,11,12]) =>  (1, ?x, s([5,6,9,10,11,12])) = ["Vano", "Victor","Ivan", "Sandra", "Vano","Sandra"], 
                                    %(1, ?y, o([5,6,9,10,11,12])) = ["Misha", "Vano","Sandra","Masha","Masha","Misha"]
% p([5,6,9,10,11,12]) =>  (2,?y, s([5,6,9,10,11,12])) = ["Vano", "Victor","Ivan", "Sandra" , "Vano","Sandra"], 
                                    %(2,?z, o([5,6,9,10,11,12])) = ["Misha", "Vano,"Sandra","Masha","Masha","Misha"]



% ?y = o[5,6,9,10,11,12] * s[5,6,9,10,11,12] = ["Misha", "Vano","Sandra","Masha","Masha","Misha"] * ["Vano", "Victor","Ivan", "Sandra"] = ["Vano","Sandra"] =o[6,9] = s[1,2,3,4,5,10]

% ?x = p[5,6,9,10] * o[6,9] = s[6,9] = ["Victor", "Ivan"]
% ?z = p[5,6,9,10] * s[1,2,3,4,5,10] = o[5,10] = ["Misha", "Masha"]  => Victor is_grandparent Misha; Ivan is_grandparent Masha

