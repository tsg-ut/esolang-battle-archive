dec = $(patsubst .%,%,$1)
add = $1$2
sub = $(if $(findstring $2,$1),$(patsubst $2%,%,$1),)
numeral = $(words $(subst .,. ,$1))
mult = $(subst .,$2,$1)
0 = 
1 = .
2 = ..
3 = ...
4 = ....
5 = .....
6 = ......
7 = .......
8 = ........
9 = .........
$(foreach i,0 1 2 3 4 5 6 7 8 9,$(eval STDIN=$(subst $i,x$($i).x,$(strip $(STDIN)))))
conv = $(eval n=$(subst x,,$(subst xx, ,$1)))$(call mult,..........,$(word 1,$n))$(word 2,$n)
$(foreach i,1 2 3 4 5 6 7 8 9 10 11 12,$(eval v$(i)=$(call conv,$(word $(i),$(STDIN)))))
simplify = $(eval a=$(word 1,$1))$(eval b=$(word 2,$1))$(call sub,$(a),$(b)). $(call sub,$(b),$(a)).
a1 = $(call simplify,$(v4) $(v1))
a2 = $(call simplify,$(v5) $(v2))
a3 = $(call simplify,$(v6) $(v3))
a4 = $(call simplify,$(v7) $(v1))
a5 = $(call simplify,$(v8) $(v2))
a6 = $(call simplify,$(v9) $(v3))
a7 = $(call simplify,$(v10) $(v1))
a8 = $(call simplify,$(v11) $(v2))
a9 = $(call simplify,$(v12) $(v3))
z_mult = $(eval a=$(word 1,$1))$(eval b=$(word 2,$1))$(eval c=$(word 1,$2))$(eval d=$(word 2,$2))$(call simplify,$(call mult,$(a),$(c))$(call mult,$(b),$(d)) $(call mult,$(a),$(d))$(call mult,$(b),$(c)))
z_add = $(eval a=$(word 1,$1))$(eval b=$(word 2,$1))$(eval c=$(word 1,$2))$(eval d=$(word 2,$2))$(a)$(c) $(b)$(d)
z_sub = $(eval a=$(word 1,$1))$(eval b=$(word 2,$1))$(eval c=$(word 1,$2))$(eval d=$(word 2,$2))$(a)$(d) $(b)$(c)
z2n = $(call sub,$(word 1,$1),$(word 2,$1))
a59 = $(call z_mult,$(a5),$(a9))
a68 = $(call z_mult,$(a6),$(a8))
a57 = $(call z_mult,$(a5),$(a7))
a48 = $(call z_mult,$(a4),$(a8))
a67 = $(call z_mult,$(a6),$(a7))
a49 = $(call z_mult,$(a4),$(a9))
s1 = $(call z_mult,$(a1),$(call z_sub,$(a59),$(a68)))
s2 = $(call z_mult,$(a2),$(call z_sub,$(a67),$(a49)))
s3 = $(call z_mult,$(a3),$(call z_sub,$(a48),$(a57)))
zans = $(call z_add,$(s1),$(call z_add,$(s2),$(s3)))
ans = $(call sub,$(word 1,$(zans)),$(word 2,$(zans)))
ans2 = $(subst v,.,$(subst .,,$(subst ......,v,$(ans))))
$(info $(call numeral,$(ans2)))