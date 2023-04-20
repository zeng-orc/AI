c("person").
c("man").
c("woman"). 

d(["Ваня","Vano"]).
d(["Саша","Sandra"]).

% p(["один_из","is_a"]).

r([t("?b", "is_a", "cool_man"), t("?a", "has_sex", "female")], [t("?a", "loves", "?b")]).

r([t("?a", "is_a", "man"), t("?a", "has_child", "?y")], [t("?a", "is_a", "cool_man")]).
r([t("?x", "is_a", "person"), t("?x", "has_sex", "male")], [t("?x", "is_a", "man")]).
r([t("?x", "is_a", "person"), t("?x", "has_sex", "female")], [t("?x", "is_a", "woman")]).

r([t("?x", "is_a", "person"), n("?x", "has_sex", "male"), n("?x", "has_sex", "female")], [t("?x", "is_a", "child")]).
r([t("?x","is_grandparent","?y"), t("?x", "has_sex", "male")], [t("?x","is_grandfather","?y")]).
r([t("?x","has_child","?y"), t("?y","has_child","?z")], [t("?x","is_grandparent","?z")]).

r( [t("?x","has_child","?y"),t("?x","is_spouse","?z"),  n("?z", "has_child", "?y")], 
   [t("?z","is_step-parent","?y")] ).
   
r([t("?y", "is_a", "person"), n("?x","has_child","?y")], 
   [t("?y","is","orphan")] ).   
   
r([t("?x","has_child","?y")], 
   [t("?x","is_ancestor","?y")] ). 
     
r([t("?x","has_child","?y"), t("?y","is_ancestor","?z")], 
   [t("?x","is_ancestor","?z")] ).       