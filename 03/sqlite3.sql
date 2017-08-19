WITH RECURSIVE m(x,l,r,p) AS (
SELECT 1, '' AS l, substr(v,10) AS r, substr(v,1,8) AS p FROM i
UNION ALL
SELECT x + 1, CASE WHEN p='00000000' or p='00000001' or p='00000011' or p='00000110' or p='00001010' or p='00001111' or p='00010101' or p='00011100' or p='00100100' or p='00101101' or p='00110111' or p='01000010' or p='01001110' or p='01011011' or p='01101001' or p='01111000' or p='10001000' or p='10011001' or p='10101011' or p='10111110' or p='11010010' or p='11100111' or p='11111101' THEN 1 ELSE 0 END AS l, substr(r, 10) AS r, substr(r,1,8) AS p
FROM m
WHERE p != ''
)
SELECT l FROM m WHERE l != ''