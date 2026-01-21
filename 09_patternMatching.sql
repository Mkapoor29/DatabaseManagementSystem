-- start with char a -> a%
select * from birthchart where person like "m%";

-- ends with 'a'
select * from birthchart where person like "%e";

-- ends with 'ab'
select * from birthchart where person like "%ke";

-- containing 'a'
select * from birthchart where person like "%i%";

-- name containing exactly 4 characters: ____
select * from birthchart where person like "____";

-- show name with same pattern
select * from birthchart where person like "__l__a__";

-- starts with 'a' or ends with 'b'
select * from birthchart where person like "m%" or person like "%s";

-- starts with m and ends e
select * from birthchart where person like "m%e";

-- starts with a and are atleast 3 characters in length
 select * from birthchart where person like "m__%";

-- have 'a' in second position
select * from birthchart where person like "_a%";

-- return exact match
 select * from birthchart where person like "Mike";
