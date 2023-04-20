c("person").
c("everybody").
c("thing").
%c("arm").
%c("finger").
%c("nail").

g(up, ["ISA", "AKO", "is_a", "a_part_of", "a_kind_of"]).
g(down, ["has_part", "has"]).

o("everybody", "has_a", "breathe").
o("thing", "has_a", "age").

o("everybody", "has_part", "arm").
o("arm", "has_part", "finger").
o("finger", "has_part", "nail").