""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Abbreviations for the Abolish Plugin                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Not installed fail. Install with :BundleInstall
if !exists(":Abolish")
    finish
endif

Abolish teh the

" From the wise Tim Pope:
" https://github.com/tpope/tpope/blob/master/.vim/after/plugin/abolish.vim
Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}
Abolish {,in}consistan{cy,cies,t,tly}         {}consisten{}
Abolish delimeter{,s}                         delimiter{}
Abolish {,non}existan{ce,t}                   {}existen{}
Abolish d{e,i}screp{e,a}nc{y,ies}             d{i}screp{a}nc{}
Abolish euphamis{m,ms,tic,tically}            euphemis{}
Abolish {,re}impliment{,s,ing,ed,ation}       {}implement{}
Abolish improvment{,s}                        improvement{}
Abolish inherant{,ly}                         inherent{}
Abolish {les,compar,compari}sion{,s}          {les,compari,compari}son{}
Abolish {,un}nec{ce,ces,e}sar{y,ily}          {}nec{es}sar{}
Abolish {,un}orgin{,al}                       {}origin{}
Abolish persistan{ce,t,tly}                   persisten{}
Abolish {,ir}releven{ce,cy,t,tly}             {}relevan{}
Abolish reproducable                          reproducible
Abolish restraunt{,s}                         restaurant{}
Abolish segument{,s,ed,ation}                 segment{}
