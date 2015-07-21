
syntax match hsNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ

" Won't work because operators like .|. exist
"syntax match hsNiceOperator "\." conceal cchar=∘
