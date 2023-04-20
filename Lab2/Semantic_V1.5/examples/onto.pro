p(["ISA", "is_a", "один_из"]).
p(["AKO", "a_kind_of", "вид"]).
p(["HASPART","has_part", "имеет_часть"]).
p(["ISPART", "part_of", "часть"]).

r([t("?a", "ISA", "?b"), t("?b", "AKO", "?c")], [t("?a", "ISA", "?c")]).
r([t("?a", "AKO","?b"), t("?b", "AKO", "?c")], [t("?a", "AKO","?c")]).
r([t("?a", "ISPART","?b"), t("?b", "ISPART", "?c")], [t("?a", "ISPART","?c")]).
r([t("?a", "HASPART","?b"), t("?b", "HASPART", "?c")], [t("?a", "HASPART","?c")]).
r([t("?a", "AKO","?b"), t("?b", "HASPART", "?c")], [t("?a", "HASPART","?c")]).
r([t("?a", "is_a","?b"), t("?b", "has_part", "?c")], [t("?a", "has_part","?a:?c")]).