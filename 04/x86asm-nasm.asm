SECTION .bss
u resb 20
i resb 4
a resb 40
SECTION .text
mov ebp,esp
B:mov bl,[i]
cmp bl,11
jg C
push ebx
mov edx,3
mov ecx,u
mov ebx,0
mov eax,3
int 0x80
pop ebx
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
inc edx
mul byte[a+ecx]
mov[i],dl
sub[a+ebx],al
jmp B
C:movsx eax,byte[a+7]
movsx ebx,byte[a+8]
sub esp,12
movsx edi,byte[a+0AH]
movsx esi,byte[a+0BH]
movsx ecx,byte[a+6]
mov [ebp-1CH],eax
movsx eax,byte[a+9]
mov edx,ebx
imul edx,edi
mov [ebp-20H],eax
mov eax,[ebp-1CH]
imul ebx,[ebp-20H]
imul eax,esi
sub eax,edx
movsx edx,byte[a+3]
imul esi,ecx
imul ecx,edi
sub ebx,esi
movsx esi,byte[a+4]
imul edx,eax
mov eax,[ebp-1CH]
imul eax,[ebp-20H]
imul ebx,esi
movsx esi,byte[a+5]
add ebx,edx
sub ecx,eax
mov eax,ecx
mov ecx,6
imul eax,esi
lea eax,[ebx+eax]
cdq
idiv ecx
movzx eax,ax
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
sub esp,12
mov ebx,edx
push eax
call w
add esp,12
lea eax,[ebx+30H]
mov[u],al
mov edx,1
mov ecx,u
mov ebx,1
mov eax,4
int 0x80
add esp,16
A:mov ebx,[ebp-4]
leave
ret