WITH RECURSIVE m(x,l,r) AS (
SELECT 1, '' AS l, substr(v, 0) AS r FROM i
UNION ALL
SELECT x + 1, CASE WHEN substr(r,1,8)='00000000' or substr(r,1,8)='00000001' or substr(r,1,8)='00000011' or substr(r,1,8)='00000110' or substr(r,1,8)='00001010' or substr(r,1,8)='00001111' or substr(r,1,8)='00010101' or substr(r,1,8)='00011100' or substr(r,1,8)='00100100' or substr(r,1,8)='00101101' or substr(r,1,8)='00110111' or substr(r,1,8)='01000010' or substr(r,1,8)='01001110' or substr(r,1,8)='01011011' or substr(r,1,8)='01101001' or substr(r,1,8)='01111000' or substr(r,1,8)='10001000' or substr(r,1,8)='10011001' or substr(r,1,8)='10101011' or substr(r,1,8)='10111110' or substr(r,1,8)='11010010' or substr(r,1,8)='11100111' or substr(r,1,8)='11111101' THEN 1 ELSE 0 END AS l, substr(r, 10) AS r
FROM m
WHERE r != ''
)
SELECT l FROM m WHERE l != ''