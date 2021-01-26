# fzf
fzf is a "blazing fast" fuzzy finder for a word in a list of strings, and typically the list of strings are file names. After installation, the best use for me was via the shortcuts `CTRL-T`, `CTRL-R` and `CTRL-Z` in the bash terminal. Details are in the [repo's README](https://github.com/junegunn/fzf).

To ensure that `fzf` always searches all files in the home directory, irrespective of what the PWD is, add the following to `.bashrc` or `.zshrc`:
```
export FZF_DEFAULT_COMMAND="find ~"
export FZF_CTRL_T_COMMAND="find ~"
export FZF_ALT_C_COMMAND="find ~"

```
