        global  _sum
        section .text

_sum:
        movsd xmm2, xmm0    ; copy b1 from xmm0 to xmm2 (xmm2 - kth term of progression, xmm0 - sum)
        dec rdi             ; rdi = n - 1 (amount of terms still to be added to sum)

add_next_term:
        mulsd xmm2, xmm1    ; multiply bk by q (create next term of progression)
        addsd xmm0, xmm2    ; add next term to sum

        dec rdi             ; decrease by 1 as another term was added to sum
        jnz add_next_term  ; repeat if there are any unadded terms left

        ret