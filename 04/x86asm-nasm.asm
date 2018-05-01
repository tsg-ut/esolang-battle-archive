SECTION .bss
z resb 4
x resb 4
a rest 4
SECTION .text
B:mov bl,[x]
cmp bl,11
jg C
push bx
mov dx,3
mov ecx,a+20
mov bx,0
mov ax,3
int 128
pop bx
movsx eax,byte[a+20]
mov dl,10
sub eax,48
imul eax,edx
mov dl,[a+21]
lea eax,[eax+edx-30]
mov[a+ebx],al
movsx ebx,byte[x]
mov cl,3
movsx ax,bl
mov edx,ebx
idiv cl
cmp bl,2
movsx ecx,ah
setg al
inc dx
mul byte[a+ecx]
mov[x],dl
sub[a+ebx],al
jmp B
C:  movsx   ebx,byte[a+8]
movsx edi,byte[a+10]
movsx esi,byte[a+11]
movsx ecx,byte[a+6]
movsx ax,[a+9]
mov edx,ebx
imul edx,edi
mov [z],ax
movsx eax, byte[a+7]
mov [x],eax
imul ebx,[z]
imul eax,esi
sub eax,edx
movsx edx,byte[a+3]
imul esi,ecx
imul ecx,edi
sub ebx,esi
movsx esi,byte[a+4]
imul edx,eax
mov eax,[x]
imul eax,[z]
imul ebx,esi
movsx esi,byte[a+5]
add ebx,edx
sub ecx,eax
imul ecx,esi
lea eax,[ebx+ecx]
cdq
mov ecx,6
idiv ecx
push eax
call w
ret
w:push   ebp
mov ebp,esp
push ebx
mov edx,[ebp+8]
test dx,dx
jz A
mov ecx,10
mov eax,edx
xor edx,edx
div cx
mov ebx,edx
push eax
call w
lea ax,[ebx+48]
mov[a],al
mov dx,1
mov ecx,a
mov bx,1
mov ax,4
int 128
add esp,16
A:mov ebx,[ebp-4]
leave
ret