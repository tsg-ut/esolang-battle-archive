with a(a,b,c,d,e,f,g,h,i,j,k,l) as (
select 
substr(v,1,2) as a,
substr(v,4,2) as b,
substr(v,7,2) as c,
substr(v,10,2) as d,
substr(v,13,2) as e,
substr(v,16,2) as f,
substr(v,19,2) as g,
substr(v,22,2) as h,
substr(v,25,2) as i,
substr(v,28,2) as j,
substr(v,31,2) as k,
substr(v,34,2) as l
from i
),
b(m,n,o,p,q,r,s,t,u) as (
select 
d-a as m,
e-b as n,
f-c as o,
g-a as p,
h-b as q,
i-c as r,
j-a as s,
k-b as t,
l-c as u
from a
)
select (m*(q*u-t*r)+n*(r*s-p*u)+o*(p*t-s*q))/6 from b
