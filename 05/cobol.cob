       >>SOURCE FORMAT IS FREE
id division.program-id.a.
data division.working-storage section.
1 s pic x(50).
1 p pic x(50).
1 t pic 99.
1 k pic 99.
procedure division.
accept s.
inspect s tallying t for leading " ".
begin.
display s.
accept p.
inspect p tallying k for leading " ".
if k = 50 then go to begin end-if.
if k = 0 then go to begin end-if.
string p(1 : t) "T" into s.
inspect s replacing all " " by "*" after initial "K" before initial "T".
display s.