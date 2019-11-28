
function! password#generate(len) abort
  let str = ''
  for i in range(1, a:len)
    let str = str . s:randomChar()
  endfor

  return str
endfunction

let s:numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
let s:upper =   ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]
let s:lower =   ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ]
let s:special = ['!', '§', '$', '%', '&', '/', '(', ')', '=', '?', ';', ':', '_', '#', '*', '+', ',', '.', '-', '<', '>']

" let s:characters = s:numbers + s:numbers + s:upper + s:upper + s:upper + s:lower + s:lower + s:lower + s:special
let s:characters = s:numbers + s:numbers + s:upper + s:upper + s:upper + s:lower + s:lower + s:lower

function! s:randomInt()
  if has('win32')
    return system("echo %RANDOM%")
  endif
  return system("echo $RANDOM")
endfunction

function! s:randomChar()
  return s:characters[s:randomInt() % len(s:characters)]
endfunction

