function test#echo() abort
  echohl Search
  echo "this is a demo."
endfunction

function test#name(name) abort
  echohl DiffAdd
  echo "Hi," a:name
endfunction

function test#date() abort
  echohl DiffAdd
  echo strftime("%Y-%m-%d %H:%M:%S")
endfunction

function! test#FixLastSpellingError()
  set spell
  normal! mm[s1z=`m"
  set nospell
endfunction
