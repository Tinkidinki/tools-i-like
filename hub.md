# HUB
## Create git repositories entirely from command line!

This is pretty much all we need to know (once you make a directory and `cd` into it)
Get SSH access so that you don't even need to type the password 

```
git init
// add whatever files you want
git add -A
git commit -m "First commit"
hub create // pretty much the only extra command you need to remember! 
git push -u origin HEAD
```
There's a bunch of other things if I ever get into contributing to open source listed [here](https://hub.github.com/)

HUB currently does not directly work with password, and one needs to generate a token for password:
See [this link](https://github.com/github/hub/issues/2655#issuecomment-735836048)
