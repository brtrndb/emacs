# .emacs

Simple `.emacs` configuration file.

## Installation

First, clone the repository.

```shell
$ git clone https://github.com/brtrndb/emacs.git
```

## Usage

Run the script.

```shell
$ ./install.sh -h
Usage: ./install.sh  { -n | -c | -u | -h }
Options:
  -s, --symlink: Install as symbolic link.
  -c, --copy:    Install as copy.
  -h, --help:    Display usage.
```

It will create a symlink or a copy of `emacs` into `~/.emacs`.

## Description

- Display date and time.
- Display battery percent.
- Parenthesis matching.
- Remove whitespaces at end of lines.
- ... And more !

Enjoy !

## Note

```shell
$ emacs --version
GNU Emacs 29.1
Copyright (C) 2023 Free Software Foundation, Inc.
GNU Emacs comes with ABSOLUTELY NO WARRANTY.
You may redistribute copies of GNU Emacs
under the terms of the GNU General Public License.
For more information about these matters, see the file named COPYING.
```

## License

See [LICENSE.md](./LICENSE.md).
