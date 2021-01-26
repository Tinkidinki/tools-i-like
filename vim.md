# Vim
## What can I say XD

Note: Find my .vimrc in this repository. I will continuously keep updating it. 

I think the part I like (and should exploit) is the fact that you can be wherever you are in your file, but to go to another place, there are absolute commands. 

For example (cursor = C in this example)
```
this C that
O
```

To go to the beginning of the next line in insert mode, I need to press <Esc>o no matter where I am. To append, I need to press `a`, no matter where I am. I think these can be leveraged, as you can memorize them easily. 

Still need to learn more to understand it fully. 

Favourite commands so far:
```
o/O
i, shift I
a, shift A
```

Stuff I learned from the [Missing Semester video](https://www.youtube.com/watch?v=a6Q8Na575qc&feature=emb_logo&ab_channel=MissingSemester)

Commands I should start using:

- w: Keeping skipping forward to beginning of each word
- v: Keep skipping backward to beginning of each word
- e: Keep skipping forward to end of each word
- 0: Beginning of line
- $: end of line
- f<char>, F<char>, t<char>, T<char>
- J: Super useful command. Join the next line to current line with a space in between. Especially useful to convert functions written over multiple lines to inline functions. 

## Vim Plugins
- First of all, the plugin manager of vim (vim-plug) that integrates directly into the .vimrc is the coolest thing ever. That is the most portable configuration settings I have seen. 

### vim-templates
Find (most) of my templates in the templates repository. 


