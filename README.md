# dot-emacs

My `.emacs` configuration. Actually `.emacs` is wrong, because everything is in `.emacs.d` directory now, starting with `.emacs.d\init.el`.

## Abstract

This is my Emacs configuration. It is a fresh start, because I started to use [Cask](https://github.com/cask/cask), and wanted to restructure my files.

_Note:_ Currently this is work in progress.

## Features

* Erlang/OTP support, with `erlang-mode` from the Erlang source tree
* Elixir support
* SBCL support
* VIM support
* TBD: TeX/LaTeX support (using TexLive)

## Basic Setup

### Environment setup

I have similar, but somewhat different setups at home, work, and various other system, so I pulled some things out of the Emacs Lisp files and put it into environment variables.
Because of this my `$HOME/.bashrc` includes this section:

```bash
# setup environment variables, especially used by emacs
export USER_MAIL_ADDRESS="some-name@example.com"
export ERLANG_ROOT_DIRECTORY="/opt/erlang/otp"
export ERLANG_EXEC_PATH="${ERLANG_ROOT_DIRECTORY}/bin"
export ELIXIR_ROOT_DIRECTORY="/opt/erlang/elixir"
export ELIXIR_EXEC_PATH="${ELIXIR_ROOT_DIRECTORY}/bin"
export ERLANG_EMACS_DIRECTORY="${ERLANG_ROOT_DIRECTORY}/lib/erlang/lib/tools-2.8/emacs"
# > git clone https://github.com/cask/cask.git
export CASK_BASE_DIRECTORY="/opt/emacs/src/cask"
# > git clone https://github.com/elixir-lang/emacs-elixir.git
export EMACS_MODE_ELIXIR_DIRECTORY="/opt/emacs/src/emacs-elixir"
# > git clone https://github.com/tonini/alchemist.el.git
export EMACS_MODE_ALCHEMIST_DIRECTORY="/opt/emacs/src/alchemist.el"
# > git clone https://github.com/erlang/otp.git
export ERLANG_SOURCE_DIRECTORY="/opt/erlang/src/otp"
# > git clone https://github.com/elixir-lang/elixir.git
export ELIXIR_SOURCE_DIRECTORY="/opt/erlang/src/elixir"
# > hg clone https://bitbucket.org/lyro/evil
export EMACS_MODE_EVIL_DIRECTORY="/opt/emacs/src/evil"
# > git clone https://github.com/company-mode/company-mode.git
export EMACS_MODE_COMPANY_DIRECTORY="/opt/emacs/src/company-mode"
```

### File Layout

```
~/.emacs.d
|-- auto-save-list
|-- Cask
|-- .cask
|-- .git
|-- .gitignore
|-- init.el
|-- parts
|   |-- cask-prt.el
|   |-- [...]
|   `-- sbcl-prt.el
|-- places
`-- README.md
```

### Dependencies

#### Cask

I use Cask for the Emacs setup. To install it, follow the Installation guide for Your platform, using the documentation at [Cask @ Read-The-Docs](http://cask.readthedocs.org/en/latest/guide/installation.html).

On my system(s) I did these steps:

```bash
> cd /opt/emacs/src
> git clone https://github.com/cask/cask.git
> export PATH=/opt/emacs/cask/bin:$PATH
> cd ~/.emacs.d
> cask init
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