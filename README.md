# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


#just some keybinds 
MODE: UNDERSTANDING

| Mode             | Purpose                      |
| ---------------- | ---------------------------- |
| **Normal**       | Navigate, edit, run commands |
| **Insert**       | Type text                    |
| **Visual**       | Select text                  |
| **Command-line** | Run commands (`:`)           |

MODE SWITCHING ( if dont know ESC TWICE )

| Key                | From   | To      | Description          |
| ------------------ | ------ | ------- | -------------------- |
| `i`                | Normal | Insert  | Insert before cursor |
| `a`                | Normal | Insert  | Insert after cursor  |
| `o`                | Normal | Insert  | New line **below**   |
| `O`                | Normal | Insert  | New line **above**   |
| `Esc` / `Ctrl + [` | Any    | Normal  | Exit to normal       |
| `v`                | Normal | Visual  | Character selection  |
| `V`                | Normal | Visual  | Line selection       |
| `Ctrl + v`         | Normal | Visual  | Block selection      |
| `:`                | Normal | Command | Enter command mode   |

IN NORMAL MODE

| Key       | Action                   |
| --------- | ------------------------ |
| `h j k l` | Left / Down / Up / Right |
| `w`       | Next word                |
| `b`       | Previous word            |
| `0`       | Line start               |
| `^`       | First non-space          |
| `$`       | Line end                 |
| `gg`      | File start               |
| `G`       | File end                 |
| `{` `}`   | Jump paragraphs          |

EDITING NORMAL MODE

| Key        | Action                |
| ---------- | --------------------- |
| `x`        | Delete character      |
| `dd`       | Delete line           |
| `dw`       | Delete word           |
| `D`        | Delete to end of line |
| `yy`       | Copy (yank) line      |
| `p`        | Paste after           |
| `P`        | Paste before          |
| `u`        | Undo                  |
| `Ctrl + r` | Redo                  |

INSERT MODE ( Typing )

| Key        | Action         |
| ---------- | -------------- |
| `Esc`      | Back to Normal |
| `Ctrl + h` | Backspace      |
| `Ctrl + w` | Delete word    |
| `Ctrl + u` | Delete line    |

VISUAL MODE ( TEXT SELECTION )

| Key        | Mode   | Action           |
| ---------- | ------ | ---------------- |
| `v`        | Normal | Visual (char)    |
| `V`        | Normal | Visual (line)    |
| `Ctrl + v` | Normal | Visual (block)   |
| `y`        | Visual | Copy selection   |
| `d`        | Visual | Delete selection |
| `>` `<`    | Visual | Indent / Outdent |
| `Esc`      | Visual | Exit             |

COMMAND MODE ( : )

| Command   | Action                 |
| --------- | ---------------------- |
| `:w`      | Save                   |
| `:q`      | Quit                   |
| `:wq`     | Save & quit            |
| `:q!`     | Force quit             |
| `:e file` | Open file              |
| `:set nu` | Line numbers           |
| `:noh`    | Clear search highlight |


FOLDER TAB (NORMAL MODE) -> space + e
TERMINAL TAB (NORMAL MODE) -> n { space + t + t / ctrl + n } // n = tab number
FIND FILE (NORMAL MODE) -> space + f + f


| Command         | Action                 |
| --------------- | ---------------------- |
| `space + e`     | FOLDER TAB             |
| `n* + ctrl + \` | Terminal               |
| `space + f + f` | FIND FILE              |

