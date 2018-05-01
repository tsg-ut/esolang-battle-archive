SECTION .bss
u resb 20
i resb 4
z resb 4
x resb 4
a resb 40
SECTION .text
mov ebp,esp
B:mov bl,[i]
cmp bl,11
jg C
push bx
mov dx,3
mov ecx,u
mov bx,0
mov ax,3
int 128
pop bx
movsx eax,byte[u]
mov dl,10
sub eax,48
imul eax,edx
mov dl,[u+1]
lea eax,[eax+edx-30]
mov[a+ebx],al
movsx ebx,byte[i]
mov cl,3
movsx ax,bl
mov edx,ebx
idiv cl
cmp bl,2
movsx ecx,ah
setg al
inc dx
mul byte[a+ecx]
mov[i],dl
sub[a+ebx],al
jmp B
C:  movsx   ebx,byte[a+8]
sub esp,12
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
mov[u],al
mov dx,1
mov ecx,u
mov bx,1
mov ax,4
int 0x80
add esp,16
A:mov ebx,[ebp-4]
leave
ret