command! -nargs=? Term :execute printf("!terminator --working-directory=%s", getcwd())
