mov eax, [ebx + ecx*4 + 0x10]

The above instruction attempts to access memory at an address calculated as ebx + ecx*4 + 0x10.  If the calculation results in an address outside the allowed memory range, a general protection fault (GPF) will occur.  This is a common error in assembly, especially when dealing with arrays or pointers.