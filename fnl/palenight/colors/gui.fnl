;;; ╭──────────────────────────────────────────────────────────╮
;;; │         Colors for Neovim GUIs (such as Neovide)         │
;;; ╰──────────────────────────────────────────────────────────╯
;;;
;;; Note that these colors are a bit lighter on the eyes than the
;;; regular truecolor colors. That's intentional. If it bothers
;;; you, feel free to make a pull request or open an issue.

(import-macros {: color-table-validate/gui-terminal} :colors-table)

(color-table-validate/gui-terminal
  {0  :#292d3e
   1  :#f07178
   2  :#c3e88d
   3  :#ffcb6b
   4  :#82b1ff
   5  :#c792ea
   6  :#89ddff
   7  :#bfc7d5
   ;; Bright colors
   8  :#434758
   9  :#ff8b92
   10 :#ddffa7
   11 :#ffe585
   12 :#9cc4ff
   13 :#e1acff
   14 :#a3f7ff
   15 :#ffffff})
