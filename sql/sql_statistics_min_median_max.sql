select min(score) as min,
       percentile_cont(0.5) within group(order by score desc) as median,
       max(score) as max
from result;
