s := stdin nextLine.
val := s asNumber.

num := Number readFrom: (ReadStream on: s) radix: 2.
Transcript show: num printString; cr.
