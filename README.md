hexview
=======

Interactive console mode hex viewer

![screenshot](https://raw.githubusercontent.com/walterdejong/hexview/master/images/hexview.png)

For the love of console programs ... this hex viewer looks a lot
like a classic DOS program, and/but its user interface is somewhat
inspired by the `vim` editor. For example, get built-in help by typing
'`:help`'. You don't need to hit `Esc` like you would in `vim`.


Using hexview
-------------
You can search text by pressing '`/`' and search backwards with the '`?`'
command, and you may search hexadecimal strings with '`x`'. Jump to a
particular offset using '`@`'. Use the arrow keys for recalling search and
address history.

Use the number keys '`1`', '`2`', and '`4`' to select different views:
bytes, words, and quads.

Hit '`p`' to toggle the printing the values in the subwindow at the bottom.
There's much more, so be sure to read the `:help`.  

`hexview` can examine files as large as 256 TiB. I haven't been able to
verify this though ...


Starting hexview
----------------
If you don't like colors, `hexview` may be started with:

    hexview.py --no-color

See `hexview.py --help` for more options.


Installing hexview
------------------
Run the following command in a terminal:

    python setup.py install

or use `setup.py bdist` to create a package.


- - -
_Copyright 2016 by Walter de Jong <walter@heiho.net>_

Galfodo fork - Added functionality
----------------------------------
* Automatically chooses 16 or 32 byte line width, depending on available screen space. This can be disabled with the `--80` option.
* Installs a .bat file in your Python environment `Scripts` directory, so it can be used directly also on Windows.
* Toggle between codepages for byte -> character display. Currently, these are: `latin-1`, `cp500` (EBCDIC) and `cp437` (IBM extended ASCII)

**Buyer beware:** I rewrote the terminal text backing `bytebuffer` handling to use an `array` of unsigned `int`s. This eliminates the need for encoding and decoding each character value, but it may have unintended consequences.

_Stein Pedersen <stein.pedersen@gmail.com> January 2025_

