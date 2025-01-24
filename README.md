# Assembly GPF Bug

This repository demonstrates a common error in assembly programming: a general protection fault (GPF) caused by accessing memory outside the allowed range. The bug is in `bug.asm`, and the solution is provided in `bugSolution.asm`.  The solution adds bounds checking to prevent the GPF.  The example uses x86 assembly.