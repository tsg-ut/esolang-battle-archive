       >>SOURCE FORMAT IS FREE
program-id.a.data division.working-storage section. 1 s pic x(50). 1 p pic x(50). 1 t pic 99. 1 k pic 99.
procedure division.accept s.inspect s tallying t for leading" ".b.display s.accept p.move 0 to k.inspect p tallying k for all" ".if k=50 go b.string p(1:t)"T"into s.inspect s replacing all" "by"K"after initial"K"before initial"T".display s.