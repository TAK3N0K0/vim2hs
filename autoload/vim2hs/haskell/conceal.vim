scriptencoding utf-8

function! vim2hs#haskell#conceal#simple() " {{{
  syntax match hsStructure
    \ "\\\ze[[:alpha:][:space:]_([]"
    \ display conceal cchar=λ

  syntax match hsOperator
    \ "\(\_s\)\@<=\.\(\_s\)\@="
    \ display conceal cchar=∘

  setlocal conceallevel=2

  highlight default link Conceal Operator
endfunction " }}}


" These can mess up the layout (alignment)
function! vim2hs#haskell#conceal#wide() " {{{
  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=/=\(\_s\|\i\)\@="
    \ display conceal cchar=≠

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<=::\(\_s\|\i\)\@="
    \ display conceal cchar=⦂

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=>>\(\_s\|\i\)\@="
    \ display conceal cchar=»

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=<<\(\_s\|\i\)\@="
    \ display conceal cchar=«

  syntax match hsKeyword
    \ "\<sum\>"
    \ display conceal cchar=∑

  syntax match hsKeyword
    \ "\<product\>"
    \ display conceal cchar=∏

  syntax match hsKeyword
    \ "\<sqrt\>"
    \ display conceal cchar=√

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<=->\(\_s\|\i\)\@="
    \ display conceal cchar=→

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<=<-\(\_s\|\i\)\@="
    \ display conceal cchar=←

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=<>\(\_s\|\i\)\@="
    \ display conceal cchar=•

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=!!\(\_s\|\i\)\@="
    \ display conceal cchar=‼

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=&&\(\_s\|\i\)\@="
    \ display conceal cchar=∧

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=||\(\_s\|\i\)\@="
    \ display conceal cchar=∨

  syntax match hsOperator
    \ "`intersect\%(ion\)\?`"
    \ display conceal cchar=∩

  syntax match hsOperator
    \ "`union`"
    \ display conceal cchar=∪

  syntax match hsStructure
    \ "\<not\>"
    \ display conceal cchar=¬

  syntax match hsStructure
    \ "\<pi\>"
    \ display conceal cchar=π

  syntax match hsType
    \ "\<forall\>"
    \ display conceal cchar=∀

  syntax match hsType
    \ '\<Bool\>'
    \ display conceal cchar=𝔹

  syntax match hsType
    \ '\<Integer\>'
    \ display conceal cchar=ℤ

  syntax match hsType
    \ '\<Rational\>'
    \ display conceal cchar=ℚ

  syntax match hsType
    \ '\<Complex\>'
    \ display conceal cchar=ℂ

  syntax match hsOperator
    \ "*"
    \ display conceal cchar=×

  syntax match hsOperator
    \ "<="
    \ display conceal cchar=≤

  syntax match hsOperator
    \ ">="
    \ display conceal cchar=≥
endfunction " }}}


" These work badly in GVIM with the fonts I've tested.
function! vim2hs#haskell#conceal#bad() " {{{
  syntax match hsOperator
    \ "`elem`"
    \ display conceal cchar=∈

  syntax match hsOperator
    \ "`notElem`"
    \ display conceal cchar=∉

  syntax match hsStructure
    \ "()"
    \ display conceal cchar=∅

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<==>\(\_s\|\i\)\@="
    \ display conceal cchar=⇒

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=\~>\(\_s\|\i\)\@="
    \ display conceal cchar=⇝

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=>>>\(\_s\|\i\)\@="
    \ display conceal cchar=↠

  syntax match hsOperator
    \ "\(\_s\|\i\)\@<=<<<\(\_s\|\i\)\@="
    \ display conceal cchar=↞

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<=-<\(\_s\|\i\)\@="
    \ display conceal cchar=↢

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<=>-\(\_s\|\i\)\@="
    \ display conceal cchar=↣

  syntax match hsStructure
    \ "\(\_s\|\i\)\@<=-<<\(\_s\|\i\)\@="
    \ display conceal cchar=⇺
endfunction " }}}
