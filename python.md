# Python, ofc

## Relative Imports in Python

Package = directory with an `__init__.py`

Within a package you have a full directory structure and imports can be done as `Import A.B.C` etc (dot separated)

Module is a single python file. Packages can be imported as a whole and so can modules. (The `__init__.py` allows this, I believe)

Very good explanation to problem: `https://stackoverflow.com/a/28154841/5391777`

Two reasons why we get the relative import error:

1. You are running a module as a script. When you do so, its `__name__ = __main__` rather than a name like `package.folder1.module` that tells its hierarchy.
2. You are importing the module, but your current working directory is within the package. On first search, it searches current directory and picks up the file from there. I guess when this happens then is that the module has its own name, rather than the correct package hierarchy name, and screws with relative imports. 


You might have to add `sys.path` some places to get rid of this issue. 

## Virtual Environments
- There are a million different ways to create Python environments, and all of them are annoying.  
- I find that `pyenv` is the least annoying. 


