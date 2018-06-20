# README

This is meant to be a drop-in replacement for my `~/.emacs.d` dir, so emacs will pick up my custom settings right off the bat. Emacs 24+ required, at a minimum, maybe 25.2+, I'm not quite sure. I'm using the current snapshot which is 27.

So to try it out (and blow away your own custom settings):
## NOTE THE RECURSIVE FLAG
```
rm -rf ~/.emacs.d
git clone --recursive git@github.com:nixjdm/emacs.d.git ~/.emacs.d
```

N.B. You may get some errors the first time this is ran (when you open a file), e.g. from flymd. If these *don't* go away on a second run, please file an issue.

## What's in here

This has my (m)elpa downloaded packages tracked in git. This is to ensure that I can always just use a working copy if something ever happens to them, melpa, or my internet connection. I also have code that will read a list of packages and pull them in if they aren't there for easy updating. This also doubles as a easy to read list of what's contained here, in init.el.

There is also:

- Several themes and a theme cycler installed. Use `C-c C-t` / `M-x cycle-themes` to switch themes. They are in a loop and repeat. The theme cycler is a [fork](https://github.com/nixjdm/cycle-themes.el) of [this package](https://github.com/toroidal-code/cycle-themes.el). Note, `C-c C-t` may be repurposed by other modes like elpy
- Elpy is preconfigured for easy use if you follow the below system install instructions.
- [Web-Mode](http://web-mode.org/), [json-mode](https://github.com/joshwnj/json-mode), and [less-css-mode](https://github.com/purcell/less-css-mode) (for web-development)
- [Blacken](https://github.com/proofit404/blacken) (opinionated formater for Python)
- [flymd](https://github.com/mola-T/flymd) (Markdown renderer for browsers)
- [markdown-mode](https://jblevins.org/projects/markdown-mode/)
- [smooth-scrolling](https://github.com/aspiers/smooth-scrolling)



## Elpy Install

```
pip install jedi flake8 autopep8
```
If you are on a Debian based distro, you may need something like this:
```
sudo apt-get install python3-distutils python-distutils-extra
```

## Contributions

PRs and Issues welcome! You can even get me to add in themes (mostly dark ones). However, this is meant to be my quick install, so I win any bike shedding arguements. Please feel free to fork if you want to use this but tweak anything that's not my taste.
