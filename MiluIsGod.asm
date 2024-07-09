; 死循环打印 "米露是神"
; 汇编代码

; 数据段
.data
str: db '米露是神', 0

; 代码段
.code
main proc
    ; 初始化
    mov edx, 8
    mov ecx, 1
    mov ebx, 1
    mov eax, 4
    int 0x2E

    ; 循环打印
    mov edx, 8
    mov ecx, 1
    mov ebx, 1
    mov eax, 4
    int 0x2E

    ; 退出程序
    mov eax, 1
    xor ebx, ebx
    int 0x2E
main endp

end main