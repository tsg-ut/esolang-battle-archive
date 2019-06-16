i = input().find('T')
while True:
	print(' '*i+'*')
	d = input().find('K')
	if d>=0:
		print(' '*d+'*'*(i-d+1))
		break