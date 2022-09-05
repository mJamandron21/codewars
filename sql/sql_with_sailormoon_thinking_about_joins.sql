select nullif(sh.senshi_name,'') as sailor_senshi,
nullif(sh.real_name_jpn,'') as real_name,
nullif(c.name,'') as cat,
nullif(s.school,'') as school
from sailorsenshi sh
left outer join cats c
on sh.cat_id = c.id
left outer join schools s
on sh.school_id = s.id;
