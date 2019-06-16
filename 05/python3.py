i=input().find('T')
d=-1
while 1:
 print(' '*d+'*'*(i-d+1)if~d else' '*i+'*')
 d=input().find('K')