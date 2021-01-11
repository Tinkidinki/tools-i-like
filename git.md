# Git stuff!

## Branches
Start a new branch from where your head is currently located. 
```git checkout -b <new-branch-name>```

## Useful git commands
A file can be in four statuses: unstaged, staged, committed, pushed.
- unstaged - before add
- staged - after add
- committed - after commit
- pushed - after push

`git status`: Tells you the status of your staging area. 

## Submodules
A submodule is a git repository inside a git repository. 
- It is useful when you want to use code from another repository in your own repository, but you don't want to copy out the whole thing, and you also want to be able to pull updates.
- It is also useful to have a public facing repository inside a private repo, which is going to be my usecase. Typically in research projects, we will have some subfolders that we would like to be public (like the code at the end of the project), but we really don't want to manage several separate repositories for this, from an organizational point of view. This is where submodules comes in!

The repository you want to add as a submodule must first already exist as a git repo. Then, to add it in your main repository, in the folder you want to add it, run:
```git submodule add <submodule-url>```

`git submodule add` is just like `git add`, except that it knows to treat this added folder as a submodule. Once this is done, it is already staged! (no need to do a git add again).

When a submodule is added to a git repository, it only adds a reference to the actual git repo. If you clone the parent repository, however, it is like attempting to clone all its submodules as well, so all of them get cloned too. 

To remove a submodule:
```
git rm the_submodule
rm -rf .git/modules/the_submodule
```

Question: So, I can have submodule-specific branches, as well as branches for the repository, how do these things play with each other?

```
SITUATION: Made changes in submodule. Did not add. 
- Both submodule status and main repository status show unstaged changes. 

SITUATION: Attempted to git add in main repository. 
- Main repository unable to add these changes as the changes do not belong to it. 

SITUATION: Attempted to git add in the submodule. 
- Added
- git status of submodule shows that everything is staged. 
- git status of repository shows that submodule is still not staged. 
- Therefore for changes made in a submodule, adding in a submodule or adding in the main repository, does not cause the main repository to stage the changes. 

SITUATION: Commit changes in submodule.
- Now when you git status in the main repository there are staged changes that can be commited!
- And the submodule status shows staged!

SITUATION: In the same branch of the big repo, create another branch in the submodule and make a commit. 
- Done, the previous expected thing happened. Now I pushed in the big repo, but did not push in the submodule. 
- We'll see what happens. 
- Exactly what I expected: if a commit is not pushed, then you get a 404 page. 


```

I am still not so clear on how submodules work with branches. Hopefully, I either never require this, or get the opportunity to learn it before I require it XD



