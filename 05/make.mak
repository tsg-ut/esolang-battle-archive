x=$(subst $() ,1,$(STDIN))
a=$(subst 1, ,$(firstword $x))
b=$(subst 1, 1 ,$(lastword $x))
c=x $(subst $() , 1 ,$a)
p=1
s=x
$(foreach i,$x,$(if $(findstring $(subst 1,,$i),K),,$(info $a)),),$(foreach i,$b,$(if $(findstring $i,K),$(eval p=2)) $(eval s+=$p) $(if $(findstring $(word $(words $s),$c),T),$(eval p=1))),$(info $(subst 1, ,$(subst x,,$(subst $() ,,$s))))
