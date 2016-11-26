        .file   "sample.c"
        .text
        .globl  is_all_zero
        .type   is_all_zero, @function
is_all_zero:
.LFB0:
        .cfi_startproc
        pushl   %ebp
        .cfi_def_cfa_offset 8
        .cfi_offset 5, -8
        movl    %esp, %ebp
        .cfi_def_cfa_register 5
        subl    $16, %esp
        movl    $0, -4(%ebp)
        jmp     .L2
.L5:
        movl    8(%ebp), %edx
        movl    -4(%ebp), %eax
        addl    %edx, %eax
        movzbl  (%eax), %eax
        testb   %al, %al
        je      .L3
        movl    $0, %eax
        jmp     .L4
.L3:
        addl    $1, -4(%ebp)
.L2:
        cmpl    $99, -4(%ebp)
        jbe     .L5
        movl    $1, %eax
.L4:
        leave
        .cfi_restore 5
        .cfi_def_cfa 4, 4
        ret
        .cfi_endproc
.LFE0:
        .size   is_all_zero, .-is_all_zero
        .globl  main
        .type   main, @function
main:
.LFB1:
        .cfi_startproc
        leal    4(%esp), %ecx
        .cfi_def_cfa 1, 0
        andl    $-16, %esp
        pushl   -4(%ecx)
        pushl   %ebp
        .cfi_escape 0x10,0x5,0x2,0x75,0
        movl    %esp, %ebp
        pushl   %ecx
        .cfi_escape 0xf,0x3,0x75,0x7c,0x6
        subl    $372, %esp
        movl    $0, -12(%ebp)
        movl    stdin, %eax
        subl    $4, %esp
        pushl   %eax
        pushl   $101
        leal    -233(%ebp), %eax
        pushl   %eax
        call    fgets
        addl    $16, %esp
        movl    $0, -16(%ebp)
        jmp     .L7
.L8:
        leal    -233(%ebp), %edx
        movl    -16(%ebp), %eax
        addl    %edx, %eax
        movzbl  (%eax), %eax
        movsbl  %al, %eax
        subl    $48, %eax
        testl   %eax, %eax
        setne   %dl
        leal    -132(%ebp), %ecx
        movl    -16(%ebp), %eax
        addl    %ecx, %eax
        movb    %dl, (%eax)
        addl    $1, -16(%ebp)
.L7:
        cmpl    $99, -16(%ebp)
        jbe     .L8
        movl    $0, -20(%ebp)
        jmp     .L9
.L12:
        movl    $0, -24(%ebp)
        movl    $0, -28(%ebp)
        jmp     .L10
.L11:
        sall    -24(%ebp)
        leal    -132(%ebp), %edx
        movl    -28(%ebp), %eax
        addl    %edx, %eax
        movzbl  (%eax), %eax
        movzbl  %al, %eax
        addl    %eax, -24(%ebp)
        movl    -24(%ebp), %ecx
        movl    $1717986919, %edx
        movl    %ecx, %eax
        imull   %edx
        sarl    $2, %edx
        movl    %ecx, %eax
        sarl    $31, %eax
        subl    %eax, %edx
        movl    %edx, %eax
        testl   %eax, %eax
        setne   %dl
        leal    -132(%ebp), %ecx
        movl    -28(%ebp), %eax
        addl    %ecx, %eax
        movb    %dl, (%eax)
        movl    -24(%ebp), %ecx
        movl    $1717986919, %edx
        movl    %ecx, %eax
        imull   %edx
        sarl    $2, %edx
        movl    %ecx, %eax
        sarl    $31, %eax
        subl    %eax, %edx
        movl    %edx, %eax
        sall    $2, %eax
        addl    %edx, %eax
        addl    %eax, %eax
        subl    %eax, %ecx
        movl    %ecx, %eax
        movl    %eax, -24(%ebp)
        addl    $1, -28(%ebp)
.L10:
        cmpl    $99, -28(%ebp)
        jbe     .L11
        movl    -20(%ebp), %eax
        movl    -24(%ebp), %edx
        movl    %edx, -368(%ebp,%eax,4)
        movl    -20(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -12(%ebp)
        addl    $1, -20(%ebp)
.L9:
        subl    $12, %esp
        leal    -132(%ebp), %eax
        pushl   %eax
        call    is_all_zero
        addl    $16, %esp
        xorl    $1, %eax
        testb   %al, %al
        jne     .L12
        movl    $0, -32(%ebp)
        jmp     .L13
.L14:
        movl    -12(%ebp), %eax
        subl    -32(%ebp), %eax
        subl    $1, %eax
        movl    -368(%ebp,%eax,4), %eax
        addl    $48, %eax
        subl    $12, %esp
        pushl   %eax
        call    putchar
        addl    $16, %esp
        addl    $1, -32(%ebp)
.L13:
        movl    -12(%ebp), %eax
        cmpl    %eax, -32(%ebp)
        jb      .L14
        movl    $0, %eax
        movl    -4(%ebp), %ecx
        .cfi_def_cfa 1, 0
        leave
        .cfi_restore 5
        leal    -4(%ecx), %esp
        .cfi_def_cfa 4, 4
        ret
        .cfi_endproc