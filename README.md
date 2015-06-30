# dot-emacs

My `.emacs` configuration. Actually `.emacs` is wrong, because everything is in `.emacs.d` directory now, starting with `.emacs.d\init.el`.

## Abstract

This is about my Emacs configuration. It is a fresh start, because I use something like [Cask](https://github.com/cask/cask) now.

The goals of my setup are to extend Emacs in the following ways:

* TeX/LaTeX support (using TexLive)
* Erlang/OTP support, with `erlang-mode` from the Erlang source tree
* Elixir support
* SBCL support
* VI support

## Basic Setup

### File Layout

```
~/.emacs.d
|-- auto-save-list
|-- Cask
|-- .cask
|-- .git
|   |-- branches
|   |-- [...]
|   `-- refs
|-- .gitignore
|-- init.el
|-- parts
|   |-- cask-prt.el
|   |-- company-prt.el
|   |-- customize-prt.el
|   |-- elixir-prt.el
|   |-- email-prt.el
|   |-- enterprise-prt.el
|   |-- erlang-prt.el
|   |-- evil-prt.el
|   |-- package-prt.el
|   `-- sbcl-prt.el
|-- places
`-- README.md
```

### Dependencies

#### Cask

I use Cask for the Emacs setup. To install it, follow the Installation guide for Your platform, using the documentation at [Cask @ Read-The-Docs](http://cask.readthedocs.org/en/latest/guide/installation.html).

On my system(s) I did these steps:

```bash
> cd /opt/emacs
> git clone https://github.com/cask/cask.git
> export PATH=/opt/emacs/cask/bin:$PATH
> cd ~/.emacs.d
> cask init
```

Lines added to `~/.emacs.d/init.el`:

```elisp
;;;; add cask to emacs
(require 'cask "~/.cask/cask.el")
(cask-initialize)
```

#### Add Erlang/OTP

#### Add Elixir

* elixir-mode
* alchemist



#### Add SBCL

#### Add EVIL mode

#### Add TeX/LaTeX





## Link Collection

TBD: Add and organize links