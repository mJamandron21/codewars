select d.id, d.name from departments d
where exists 
(select s.name from sales s where s.department_id = d.id and s.price > 98.00);
