r([t("?x","is_father_of","?y")],[t("?x","is_parent_of","?y")]).
r([t("?x","is_mother_of","?y")],[t("?x","is_parent_of","?y")]).
r([t("?x","is_father_of","?y")],[t("?y","is_child_of","?x")]).
r([t("?x","is_mother_of","?y")],[t("?y","is_child_of","?x")]).
r([t("?x","is_child_of","?y"),t("?x","has_sex","male")],[t("?x","is_son_of","?y")]).
r([t("?x","is_child_of","?y"),t("?x","has_sex","female")],[t("?x","is_daughter_of","?y")]).
r([t("?x","is_father_of","?y"),t("?y","is_parent_of","?z")],[t("?x","is_grandfather_of","?z")]).
r([t("?x","is_mother_of","?y"),t("?y","is_parent_of","?z")],[t("?x","is_grandmother_of","?z")]).
r([t("?x","is_parent_of","?y"),t("?x","is_parent_of","?z"),t("?y","differs","?z")],[t("?y","is_sibling_of","?z")]).
r([t("?x","is_parent_of","?y"),t("?z","is_sibling_of","?x"),t("?z","has_sex","male")],[t("?z","is_uncle_of","?y")]).
r([t("?x","is_parent_of","?y"),t("?z","is_sibling_of","?x"),t("?z","has_sex","female")],[t("?z","is_aunt_of","?y")]).
r([t("?x","is_parent_of","?y"),t("?z","is_parent_of","?w"),t("?x","is_sibling_of","?z")],[t("?y","is_cousin_of","?w")]).
r([t("?x","is_parent_of","?y"),t("?z","is_parent_of","?y"),t("?x","differs","?z")],[t("?x","is_spouse_of","?z")]).

c("person").

o("person","attribute","hobby").

r([t("?a","is_a","?b"), t("?b","attribute","?c")], [t("?a","attribute","?a:?c")]).
r([t("?a:hobby","is","?b"),t("?c:hobby","is","?b"),t("?a","differs","?c")],[t("?a","has_common_hobby_with","?c")]).
r([t("?a:hobby","is","?b"),t("?c:hobby","is","?d"),t("?b","differs","?d")],[t("?a","has_different_hobby_with","?c")]).
