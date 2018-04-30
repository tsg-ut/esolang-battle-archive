SECTION .bss
buf resb 200
i resb 4
a resb 40
SECTION .text
global get_int
global write_int
global main
main:
lea ecx,[esp+4H]
and esp,0FFFFFFF0H
push dword [ecx-4H]
push ebp
mov ebp,esp
push edi
push esi
push ebx
push ecx
sub esp,24
mov byte [i],0
?_002: movsx  ebx,byte [i]
cmp bl,11
jg  ?_003
call get_int
mov byte [a+ebx],al
movsx  ebx,byte [i]
mov cl,3
movsx  ax,bl
mov edx,ebx
idiv cl
cmp bl,2
movsx  eax,ah
movsx  ecx,al
setg al
inc edx
mul byte [a+ecx]
mov byte [i],dl
sub byte [a+ebx],al
jmp ?_002

?_003: movsx  eax,byte [a+7H]
movsx  ebx,byte [a+8H]
sub esp,12
movsx  edi,byte [a+0AH]
movsx  esi,byte [a+0BH]
movsx  ecx,byte [a+6H]
mov dword [ebp-1CH],eax
movsx  eax,byte [a+9H]
mov edx,ebx
imul edx,edi
mov dword [ebp-20H],eax
mov eax,dword [ebp-1CH]
imul ebx,dword [ebp-20H]
imul eax,esi
sub eax,edx
movsx  edx,byte [a+3H]
imul esi,ecx
imul ecx,edi
sub ebx,esi
movsx  esi,byte [a+4H]
imul edx,eax
mov eax,dword [ebp-1CH]
imul eax,dword [ebp-20H]
imul ebx,esi
movsx  esi,byte [a+5H]
add ebx,edx
sub ecx,eax
mov eax,ecx
mov ecx,6
imul eax,esi
lea eax,[ebx+eax]
cdq
idiv ecx
movzx  eax,ax
push eax
call write_int
add esp,16
lea esp,[ebp-10H]
pop ecx
pop ebx
pop esi
pop edi
pop ebp
lea esp,[ecx-4H]
ret
get_int:
push ebp
mov ebp,esp
sub esp,12
push edx
push ecx
push ebx
mov edx,3
mov ecx,buf
mov ebx,0
mov eax,3
int 0x80
pop ebx
pop ecx
pop edx
movsx  eax,byte [buf]
mov dl,10
sub eax,48
imul eax,edx
mov dl,byte [buf+1H]
leave
lea eax,[eax+edx-30H]
ret
write_int:
push ebp
mov ebp,esp
push ebx
push eax
mov edx,dword [ebp+8H]
test dx,dx
jz  ?_001
mov ecx,10
mov eax,edx
xor edx,edx
div cx
sub esp,12
movzx  eax,ax
mov ebx,edx
push eax
call write_int
add esp,12
lea eax,[ebx+30H]
mov byte [buf],al
push edx
push ecx
push ebx
mov edx,1
mov ecx,buf
mov ebx,1
mov eax,4
int 0x80
pop ebx
pop ecx
pop edx
add esp,16
?_001: mov ebx,dword [ebp-4H]
leave
ret