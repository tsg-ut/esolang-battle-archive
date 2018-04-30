SECTION .bss
buf resb 200
i resb 4
a resb 40
SECTION .text
global main
global get_int
global write_int
main:
lea ecx, [esp+4H]
and esp, 0FFFFFFF0H
push dword [ecx-4H]
push ebp
mov ebp, esp
push esi
push ebx
push ecx
sub esp, 28
mov dword [ebp-1CH], 0
jmp ?_006
?_004: call get_int
mov edx, eax
mov eax, dword [ebp-1CH]
mov dword [a+eax*4], edx
cmp dword [ebp-1CH], 2
jle ?_005
mov eax, dword [ebp-1CH]
mov ebx, dword [a+eax*4]
mov ecx, dword [ebp-1CH]
mov edx, 1431655766
mov eax, ecx
imul edx
mov eax, ecx
sar eax, 31
sub edx, eax
mov eax, edx
mov edx, eax
add edx, edx
add edx, eax
mov eax, ecx
sub eax, edx
mov eax, dword [a+eax*4]
sub ebx, eax
mov edx, ebx
mov eax, dword [ebp-1CH]
mov dword [a+eax*4], edx
?_005: add dword [ebp-1CH], 1
?_006: cmp dword [ebp-1CH], 11
jle ?_004
mov eax, dword [a+0CH]
mov ecx, dword [a+1CH]
mov edx, dword [a+2CH]
imul ecx, edx
mov ebx, dword [a+20H]
mov edx, dword [a+28H]
imul edx, ebx
sub ecx, edx
mov edx, ecx
imul edx, eax
mov eax, dword [a+10H]
mov ebx, dword [a+20H]
mov ecx, dword [a+24H]
imul ebx, ecx
mov esi, dword [a+2CH]
mov ecx, dword [a+18H]
imul ecx, esi
sub ebx, ecx
mov ecx, ebx
imul eax, ecx
lea esi, [edx+eax]
mov eax, dword [a+14H]
mov ecx, dword [a+28H]
mov edx, dword [a+18H]
imul ecx, edx
mov ebx, dword [a+1CH]
mov edx, dword [a+24H]
imul edx, ebx
sub ecx, edx
mov edx, ecx
imul eax, edx
lea ecx, [esi+eax]
mov edx, 715827883
mov eax, ecx
imul edx
mov eax, ecx
sar eax, 31
sub edx, eax
mov eax, edx
sub esp, 12
push eax
call write_int
add esp, 16
mov eax, 0
lea esp, [ebp-0CH]
pop ecx
pop ebx
pop esi
pop ebp
lea esp, [ecx-4H]
ret
get_int:
push ebp
mov ebp, esp
sub esp, 24
mov dword [ebp-0CH], 0
?_001: sub esp, 4
push 1
pop edx
push buf
pop ecx
push 0
pop ebx
push 3
pop eax
int 0x80
add esp, 16
movzx eax, byte [buf]
cmp al, 10
jz ?_002
movzx eax, byte [buf]
cmp al, 32
jz ?_002
mov edx, dword [ebp-0CH]
mov eax, edx
shl eax, 2
add eax, edx
add eax, eax
mov edx, eax
movzx eax, byte [buf]
movsx eax, al
sub eax, 48
add eax, edx
mov dword [ebp-0CH], eax
jmp ?_001
?_002: mov eax, dword [ebp-0CH]
leave
ret
write_int:
push ebp
mov ebp, esp
sub esp, 8
cmp dword [ebp+8H], 0
jle ?_003
mov ecx, dword [ebp+8H]
mov edx, 1717986919
mov eax, ecx
imul edx
sar edx, 2
mov eax, ecx
sar eax, 31
sub edx, eax
mov eax, edx
sub esp, 12
push eax
call write_int
add esp, 16
mov ecx, dword [ebp+8H]
mov edx, 1717986919
mov eax, ecx
imul edx
sar edx, 2
mov eax, ecx
sar eax, 31
sub edx, eax
mov eax, edx
shl eax, 2
add eax, edx
add eax, eax
sub ecx, eax
mov edx, ecx
mov eax, edx
add eax, 48
mov byte [buf], al
sub esp, 4
push 1
pop edx
push buf
pop ecx
push 1
pop ebx
push 4
pop eax
int 0x80
add esp, 16
?_003: nop
leave
ret