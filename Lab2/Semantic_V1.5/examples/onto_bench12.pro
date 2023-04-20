c("seat").
c("guest").
pr(["has_sex"]).
pr(["is_spouse"]).
pr(["next_to"]).
pr(["may_next_to"]).
pr(["left_of"]).
% r([t("?x","left_of","?y")] , [t("?y","right_of","?x")]).
 
r([t("?x","is_spouse","?y")] , [t("?y","is_spouse","?x")]).
 
 r([t("?x","has_sex","?s1"), t("?y","has_sex","?s2"), t("?s1","differs","?s2"), n("?x","is_spouse","?y")] ,
  [t("?x","may_next_to","?y")]). 

r([t("?x","may_next_to","?y")],  [t("?y","may_next_to","?x")]).


r([n("?nb1", "occupied","1"), n("?nb2", "occupied","2"), n("?nb3", "occupied","3"), n("?nb4", "occupied","4"), 
    n("?nb5", "occupied","5"), n("?nb6", "occupied","6"), n("?nb7", "occupied","7"), n("?nb8", "occupied","8"), 
    n("?nb9", "occupied","9"), n("?nb10", "occupied","10"), n("?nb11", "occupied","11"), n("?nb12", "occupied","12"),     
    t("?x1", "is_a", "guest"),
    t("?x2", "is_a", "guest"),  t("?x1", "may_next_to", "?x2"),
    t("?x3", "is_a", "guest"),  t("?x2", "may_next_to" ,"?x3"),    t("?x3", "differs", "?x1"),
    t("?x4", "is_a", "guest"),  t("?x3", "may_next_to" ,"?x4"),    t("?x4", "differs", "?x2"),
    t("?x5", "is_a", "guest"),  t("?x4", "may_next_to" ,"?x5"),    t("?x5", "differs", "?x3"),   t("?x5", "differs", "?x1"),
    t("?x6", "is_a", "guest"),  t("?x5", "may_next_to" ,"?x6"),    t("?x6", "differs", "?x4"),    t("?x6", "differs", "?x2"),
    t("?x7", "is_a", "guest"),  t("?x6", "may_next_to" ,"?x7"),    t("?x7", "differs", "?x5"),    t("?x7", "differs", "?x3"), t("?x7", "differs", "?x1"),
    t("?x8", "is_a", "guest"),  t("?x7", "may_next_to" ,"?x8"),    t("?x8", "differs", "?x6"),    t("?x8", "differs", "?x4"), t("?x8", "differs", "?x2"), 
    t("?x9", "is_a", "guest"),  t("?x8", "may_next_to" ,"?x9"),    t("?x9", "differs", "?x7"),    t("?x9", "differs", "?x5"), t("?x9", "differs", "?x3"), t("?x9", "differs", "?x1"),
    t("?x10", "is_a", "guest"), t("?x9", "may_next_to" ,"?x10"),  t("?x10", "differs", "?x8"),  t("?x10", "differs", "?x6"), t("?x10", "differs", "?x4"), t("?x10", "differs", "?x2"),
    t("?x11", "is_a", "guest"), t("?x10", "may_next_to" ,"?x11"), t("?x11", "differs", "?x9"),  t("?x11", "differs", "?x7"), t("?x11", "differs", "?x5"), t("?x11", "differs", "?x3"), t("?x11", "differs", "?x1"),
    t("?x12", "is_a", "guest"), t("?x11", "may_next_to" ,"?x12"), t("?x12", "differs", "?x10"), t("?x12", "differs", "?x8"), t("?x12", "differs", "?x6"), t("?x12", "differs", "?x4"), t("?x12", "differs", "?x2"), 
                                         t("?x12", "may_next_to" ,"?x1")],

 [ t("?x1", "occupied", "1"),  t("?x2", "occupied", "2"),     t("?x3", "occupied", "3"),     t("?x4", "occupied", "4"),
   t("?x5", "occupied", "5"),  t("?x6", "occupied", "6"),     t("?x7", "occupied", "7"),      t("?x8", "occupied", "8"),
   t("?x9", "occupied", "9"),  t("?x10", "occupied", "10"),  t("?x11", "occupied", "11"),  t("?x12", "occupied", "12") ]).


                                                
 