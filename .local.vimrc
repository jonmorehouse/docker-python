let g:dockerTag="python"

let deleteCommand="docker images | grep ". g:dockerTag ." | awk '{ print  }' | \\xargs -I '{}' docker rmi {}"

map <Leader>rd :call CleanShell(deleteCommand)<CR>


