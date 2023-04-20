t("Vano").
onto("onto_test.pro").
%onto("onto_people_rus.pro").
f("Vano", "is_a", "person").
f("Vano", "has_sex", "male").
f("Viktor", "has_sex", "male").
f("Sandra", "is_a", "person").
f("Sandra", "has_sex", "female").

f("Misha", "is_a", "person").

f("Fiodor", "has_child", "Stepan").
f("Stepan", "has_child", "Viktor").
f("Viktor", "has_child", "Vano").
f("Vano", "has_child", "Misha").
