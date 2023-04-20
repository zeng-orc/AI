p( ["AKO","ISA"] ). 
p( ["include"] ). 
p( ["has_spec"] ). 
p( ["has_chairman"] ). 
p( ["lead"] ).
g(up, ["has_chairman","AKO","ISA"] ).
g(down, ["include"] ).
g(down, ["lead"] ).
r( [t("?x", "AKO", "?y")], [t("?y","include","?x")] ).
r([t("?x", "has_chairman","?c"), t("?x","has_spec","?s"),
   t("?s","name","?n")], [t("?c","lead","?n")]).