s=[0]
for i in range(1,23):
	s.append(s[-1]+i)
for i in range(0,50):
	if int(input(),2) in s:
		print(1,end="")
	else:
		print(0,end="")