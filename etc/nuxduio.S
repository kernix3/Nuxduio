        .file   "nuxduio.c"
        .text
        .section        .rodata
.LC0:
        .string "-- Nuxduio --\n"
        .align 8
.LC1:
        .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
.LC2:
        .string "> "
.LC3:
        .string "%c=="
.LC4:
        .string "%c="
        .text
        .globl  main
        .type   main, @function
main:
.LFB0:
        .cfi_startproc
        endbr64
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        pushq   %rbx
        subq    $152, %rsp
        .cfi_offset 3, -24
        movq    %fs:40, %rax
        movq    %rax, -24(%rbp)
        xorl    %eax, %eax
        leaq    .LC0(%rip), %rdi
        call    puts@PLT
        leaq    .LC1(%rip), %rax
        movq    %rax, -136(%rbp)
        leaq    .LC2(%rip), %rdi
        movl    $0, %eax
        call    printf@PLT
        movq    stdin(%rip), %rdx
        leaq    -128(%rbp), %rax
        movl    $100, %esi
        movq    %rax, %rdi
        call    fgets@PLT
        movl    $0, -152(%rbp)
        movl    $0, -148(%rbp)
        movl    $0, -144(%rbp)
        jmp     .L2
.L6:
        movl    -144(%rbp), %eax
        cltq
        movzbl  -128(%rbp,%rax), %eax
        movb    %al, -154(%rbp)
        movl    $0, -140(%rbp)
        jmp     .L3
.L5:
        movsbl  -154(%rbp), %eax
        sarl    $7, %eax
        andl    $1, %eax
        movb    %al, -153(%rbp)
        sall    -152(%rbp)
        movsbl  -153(%rbp), %eax
        orl     %eax, -152(%rbp)
        addl    $1, -148(%rbp)
        movsbl  -154(%rbp), %eax
        addl    %eax, %eax
        movb    %al, -154(%rbp)
        cmpl    $6, -148(%rbp)
        jne     .L4
        movl    -152(%rbp), %eax
        movslq  %eax, %rdx
        movq    -136(%rbp), %rax
        addq    %rdx, %rax
        movzbl  (%rax), %eax
        movsbl  %al, %eax
        movl    %eax, %edi
        call    putchar@PLT
        movl    $0, -152(%rbp)
        movl    $0, -148(%rbp)
.L4:
        addl    $1, -140(%rbp)
.L3:
        cmpl    $7, -140(%rbp)
        jle     .L5
        addl    $1, -144(%rbp)
.L2:
        movl    -144(%rbp), %eax
        movslq  %eax, %rbx
        leaq    -128(%rbp), %rax
        movq    %rax, %rdi
        call    strlen@PLT
        cmpq    %rax, %rbx
        jb      .L6
        movl    $6, %eax
        subl    -148(%rbp), %eax
        movl    %eax, %ecx
        sall    %cl, -152(%rbp)
        leaq    -128(%rbp), %rax
        movq    %rax, %rdi
        call    strlen@PLT
        movq    %rax, %rcx
        movabsq $-6148914691236517205, %rdx
        movq    %rcx, %rax
        mulq    %rdx
        movq    %rdx, %rax
        shrq    %rax
        movq    %rax, %rdx
        addq    %rdx, %rdx
        addq    %rax, %rdx
        movq    %rcx, %rax
        subq    %rdx, %rax
        cmpq    $1, %rax
        jne     .L7
        movl    -152(%rbp), %eax
        movslq  %eax, %rdx
        movq    -136(%rbp), %rax
        addq    %rdx, %rax
        movzbl  (%rax), %eax
        movsbl  %al, %eax
        movl    %eax, %esi
        leaq    .LC3(%rip), %rdi
        movl    $0, %eax
        call    printf@PLT
.L7:
        leaq    -128(%rbp), %rax
        movq    %rax, %rdi
        call    strlen@PLT
        movq    %rax, %rcx
        movabsq $-6148914691236517205, %rdx
        movq    %rcx, %rax
        mulq    %rdx
        movq    %rdx, %rax
        shrq    %rax
        movq    %rax, %rdx
        addq    %rdx, %rdx
        addq    %rax, %rdx
        movq    %rcx, %rax
        subq    %rdx, %rax
        cmpq    $2, %rax
        jne     .L8
        movl    -152(%rbp), %eax
        movslq  %eax, %rdx
        movq    -136(%rbp), %rax
        addq    %rdx, %rax
        movzbl  (%rax), %eax
        movsbl  %al, %eax
        movl    %eax, %esi
        leaq    .LC4(%rip), %rdi
        movl    $0, %eax
        call    printf@PLT
.L8:
        movl    $10, %edi
        call    putchar@PLT
        movl    $0, %eax
        movq    -24(%rbp), %rbx
        subq    %fs:40, %rbx
        je      .L10
        call    __stack_chk_fail@PLT
.L10:
        movq    -8(%rbp), %rbx
        leave
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE0:
        .size   main, .-main
        .ident  "GCC: ()"
        .section        .note.GNU-stack,"",@progbits
        .section        .note.gnu.property,"a"
        .align 8
        .long    1f - 0f
        .long    4f - 1f
        .long    5
0:
        .string  "GNU"
1:
        .align 8
        .long    0xc0000002
        .long    3f - 2f
2:
        .long    0x3
3:
        .align 8
4:
