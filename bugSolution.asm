mov ecx, [some_array_length]

;Check if ecx is within the bounds of memory
cmp ecx, 0
jle error_handling

;Check if ecx is greater than the array length
mov eax, [array_length]
 cmp ecx, eax
jge error_handling

mov eax, [ebx + ecx*4 + 0x10]

jmp after_access

error_handling:
; Handle the error appropriately.  This might include printing an error message and exiting.
; Example:  Exit with an error code
mov eax, 1 ; sys_exit
mov ebx, 1 ; exit code 1
int 0x80

after_access:
; Continue the program execution