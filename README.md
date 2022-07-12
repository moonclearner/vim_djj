# VIM

## install

- git clone vim\_djj
- ln -s .vim vim\_djj

## manual

### snipt

use c-a to complete snipt

## open vim with fzf open current path

```vim
vim $(fzf)
```

## Coc

### Coc install path

~/.config/coc/extensions/package.json

:CocInstall server
:CocUninstall server

## Coc manual

- `:CocAction` choose fix code

## Leaderf

```vim
" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" search word under cursor, the pattern is treated as regex,
" append the result to previous search results.
noremap <C-G> :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>

" search word under cursor literally only in current buffer
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>

" search word under cursor literally in all listed buffers
noremap <C-D> :<C-U><C-R>=printf("Leaderf! rg -F --all-buffers -e %s ", expand("<cword>"))<CR>

" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR>

" recall last search. If the result window is closed, reopen it.
noremap go :<C-U>Leaderf! rg --recall<CR>


" search word under cursor in *.h and *.cpp files.
noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.h -g *.cpp", expand("<cword>"))<CR>
" the same as above
noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.{h,cpp}", expand("<cword>"))<CR>

" search word under cursor in cpp and java files.
noremap <Leader>b :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -t java", expand("<cword>"))<CR>

" search word under cursor in cpp files, exclude the *.hpp files
noremap <Leader>c :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -g !*.hpp", expand("<cword>"))<CR>

```

### use gtags

- Leaderf gtags --remove
- Leaderf gtags --update

如果没有返回successful, 手动运行Leaderf gtags --update --debug， 把输出的命令在你的终端上跑一下 ,看返回什么错误

### search recently file

`<leader>ft`

### search string in project

`F6` and `p` to show preview result

`c-f` search current string in project
`c-b` search current string in buffer

### search all tag include variables or function or class in current file

`<leader>ft`

### find reference in project

`<leader>fr`

### find definition in project

`<leader>fd`

## seach result

### find last search result

`<leader>fo`

### find next search result

`<leader>fn`

### find last previous search result

`<leader>fp`


## Coc server

### c series
:CocInstall coc-clangd

### python
:CocInstall coc-pyright

### snippet

1. PlugInstall "honza/vim-snippets"
2. :CocInstall coc-snippets

