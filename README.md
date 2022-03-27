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

Leaderf rg的使用也比较简单，只要Leaderf[!] + rg 命令和选项（同命令行上一样）就可以了。 具体使用方法可以用:Leaderf rg -h来查看。
```shell
usage: Leaderf[!] rg [-h] [-e <PATTERN>...] [-F] [-i] [-L] [-P] [-S] [-s] [-v]
                     [-w] [-x] [--hidden] [--no-config] [--no-ignore]
                     [--no-ignore-global] [--no-ignore-parent]
                     [--no-ignore-vcs] [--no-pcre2-unicode] [-E <ENCODING>]
                     [-M <NUM>] [-m <NUM>] [--max-depth <NUM>]
                     [--max-filesize <NUM+SUFFIX?>]
                     [--path-separator <SEPARATOR>] [--sort <SORTBY>]
                     [--sortr <SORTBY>] [-f <PATTERNFILE>...] [-g <GLOB>...]
                     [--iglob <GLOB>...] [--ignore-file <PATH>...]
                     [--type-add <TYPE_SPEC>...] [-t <TYPE>...] [-T <TYPE>...]
                     [--current-buffer | --all-buffers] [--recall] [--append]
                     [--reverse] [--stayOpen] [--input <INPUT> | --cword]
                     [--top | --bottom | --left | --right | --belowright | --aboveleft | --fullScreen]
                     [--nameOnly | --fullPath | --fuzzy | --regexMode] [--nowrap]
                     [<PATH> [<PATH> ...]]

optional arguments:
  -h, --help            show this help message and exit

specific arguments:
  -e <PATTERN>..., --regexp <PATTERN>...
                        A pattern to search for. This option can be provided multiple times, where all
                        patterns given are searched.
  -F, --fixed-strings   Treat the pattern as a literal string instead of a regular expression.
  -i, --ignore-case     Searches case insensitively.
  -L, --follow          Follow symbolic links while traversing directories.
  -P, --pcre2           When this flag is present, rg will use the PCRE2 regex engine instead of its
                        default regex engine.
  -S, --smart-case      Searches case insensitively if the pattern is all lowercase, case sensitively
                        otherwise.
  -s, --case-sensitive  Searches case sensitively.
  -v, --invert-match    Invert matching. Show lines that do not match the given patterns.
  -w, --word-regexp     Only show matches surrounded by word boundaries. This is roughly equivalent to
                        putting \b before and after all of the search patterns.
  -x, --line-regexp     Only show matches surrounded by line boundaries.
  --hidden              Search hidden files and directories. By default, hidden files and directories
                        are skipped.
  --no-config           Never read configuration files. When this flag is present, rg will not respect
                        the RIPGREP_CONFIG_PATH environment variable.
  --no-ignore           Don't respect ignore files (.gitignore, .ignore, etc.). This implies
                        --no-ignore-parent and --no-ignore-vcs.
  --no-ignore-global    Don't respect ignore files that come from 'global' sources such as git's
                        `core.excludesFile` configuration option (which defaults to
                        `$HOME/.config/git/ignore`).
  --no-ignore-parent    Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories.
  --no-ignore-vcs       Don't respect version control ignore files (.gitignore, etc.).
  --no-pcre2-unicode    When PCRE2 matching is enabled, this flag will disable
                        Unicode mode, which is otherwise enabled by default.
  -E <ENCODING>, --encoding <ENCODING>
                        Specify the text encoding that rg will use on all files searched.
  -M <NUM>, --max-columns <NUM>
                        Don't print lines longer than this limit in bytes.
  -m <NUM>, --max-count <NUM>
                        Limit the number of matching lines per file searched to NUM.
  --max-depth <NUM>     Limit the depth of directory traversal to NUM levels beyond the paths given.
  --max-filesize <NUM+SUFFIX?>
                        Ignore files larger than NUM in size. This does not apply to directories.
  --path-separator <SEPARATOR>
                        Set the path separator to use when printing file paths.
  --sort <SORTBY>       This flag enables sorting of results in ascending order.
  --sortr <SORTBY>      This flag enables sorting of results in descending order.
  -f <PATTERNFILE>..., --file <PATTERNFILE>...
                        Search for patterns from the given file, with one pattern per line.
                        (This option can be provided multiple times.)
  -g <GLOB>..., --glob <GLOB>...
                        Include or exclude files and directories for searching that match the given
                        glob.(This option can be provided multiple times.)
  --iglob <GLOB>...     Include or exclude files and directories for searching that match the given glob.
                        Globs are matched case insensitively.(This option can be provided multiple times.)
  --ignore-file <PATH>...
                        Specifies a path to one or more .gitignore format rules files.
  --type-add <TYPE_SPEC>...
                        Add a new glob for a particular file type.
  -t <TYPE>..., --type <TYPE>...
                        Only search files matching TYPE. Multiple type flags may be provided.
  -T <TYPE>..., --type-not <TYPE>...
                        Do not search files matching TYPE. Multiple type-not flags may be provided.
  <PATH>                A file or directory to search. Directories are searched recursively. Paths
                        specified on the command line override glob and ignore rules.
  --current-buffer      Searches in current buffer.
  --all-buffers         Searches in all listed buffers.
  --recall              Recall last search. If the result window is closed, reopen it.
  --append              Append to the previous search results.

common arguments:
  --reverse             show results in bottom-up order
  --stayOpen            don't quit LeaderF after accepting an entry
  --input <INPUT>       specifies INPUT as the pattern inputted in advance
  --cword               current word under cursor is inputted in advance
  --top                 the LeaderF window is at the top of the screen
  --bottom              the LeaderF window is at the bottom of the screen
  --left                the LeaderF window is at the left of the screen
  --right               the LeaderF window is at the right of the screen
  --belowright          the LeaderF window is at the belowright of the screen
  --aboveleft           the LeaderF window is at the aboveleft of the screen
  --fullScreen          the LeaderF window takes up the full screen
  --nameOnly            LeaderF is in NameOnly mode by default
  --fullPath            LeaderF is in FullPath mode by default
  --fuzzy               LeaderF is in Fuzzy mode by default
  --regexMode           LeaderF is in Regex mode by default
  --nowrap              long lines in the LeaderF window won't wrap

If [!] is given, enter normal mode directly.
```

注意：如果:Leaderf后面有感叹号，会直接进入 normal 模式；如果没有感叹号，则是输入模式，此时可以输入字符来进行模糊匹配过滤。可以用 tab 键在两个模式间来回切换。

Leaderf rg基本支持 rg 所有的必要选项，用户如果对 rg 命令比较熟悉，可以在 vim 命令行内输入:Leaderf, 然后手敲 rg 命令，命令选项还可以通过 tab 来补全。 当然，更聪明的做法是定义一些快捷键。例如：

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

