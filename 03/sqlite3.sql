WITH RECURSIVE f(x)AS(SELECT""UNION SELECT x+9 FROM f LIMIT 50)SELECT cast(substr((SELECT*FROM i),x)as R)IN(0,1,11,110,1010,1111,10101,11100,100100,101101,110111,1000010,1001110,1011011,1101001,1111e3,10001e3,10011001,10101011,10111110,11010010,11100111,11111101)FROM f;