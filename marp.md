# Marp
## Markdown presentation tool best used with VS code

Really good documentation in this repository: [Repo](https://gist.github.com/yhatt/a7d33a306a87ff634df7bb96aab058b5)

I tried using it with vim, didn't seem as smooth. Perhaps it can be integrated though. 
VS-code also has the `paste-image` extension which makes the process extra smooooth. 

I pretty much copy images from the net/ screenshot and paste into presentation very easily. 

## Marp for vim!

### Live preview
On a separate terminal window (definitely not in the vim command mode), run:
```marp --watch --pdf --allow-local-files file.md```

Here
- `--watch` allows live preview of files
- `--pdf` converts to pdf. Without this option the output is an html file
- `--allow-local-files` allows references to images from the system within the markdown.

Open `file.pdf` in a pdf viewer of your choice. The file will constantly keep getting updated on changes in the marp.md file. Although, my vim is configured to save file every time insert mode is exited, so that could be the reason for faster updates.

### Paste images
To paste images, I use [this plugin](https://github.com/ferrine/md-img-paste.vim). After installing it with Vundle, and copying some lines in .vimrc as given in the README of the linked git repo, to paste an image in clipboard, just use `\p` in normal mode (if your <leader> key is `\`)

### Syntax highlighting
The indentation generally screws up for marp files, and gets annoying. I've found it best to keep syntax highlight off for md files in general, to get past this. To do so, add the following to vimrc:

```
syntax on
autocmd! bufreadpost *.md set syntax=off
```

### Template
I use a vim template plugin for the initial boilerplate to start a marp file. The template can be found in the templates folder of this repository.

### Using the same setup for other md files
Unfortunately, the same setup does not seem to port to other files. Even on setting `marp=false`, the preview still looks like a presentation, and not a document. Currently do not know if the best idea is to attempt to port this setup, or use another one for regular md files.
