# README

This is meant to be a drop-in replacement for my `~/.emacs.d` dir, so emacs will pick up my custom settings right off the bat.

So to try it out (and blow away your own custom settings):
```
rm -rf ~/.emacs.d
git clone --recursive git@github.com:nixjdm/emacs.d.git ~/.emacs.d
```

## what's in here

This has my (m)elpa downloaded packages tracked in git. This is to ensure that I can always just use a working copy if something ever happens to them, melpa, or my internet connection. I also have code that will read a list of packages and pull them in if they aren't there though for easy updating. This also doubles as a easy to read list of what's contained here, in init.el.

I also have a variety of color themes installed that you can easily switch between.

I also have [blacken](https://github.com/proofit404/blacken) installed as a submodule.
