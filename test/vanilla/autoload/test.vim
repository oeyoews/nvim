function test#echo() abort
  echo "this is a demo."
endfunction

function test#name(name) abort
  echo "Hi," a:name
endfunction

function test#date() abort
  echo strftime("%Y-%m-%d %H:%M:%S")
endfunction
