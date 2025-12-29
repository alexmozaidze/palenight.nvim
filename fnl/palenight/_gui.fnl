(local M {})

(λ M.define-terminal-colors []
  "Define terminal colors for GUIs."
  (local gui-colors (require :palenight/colors/gui))
  (each [i color (ipairs gui-colors)]
    (tset vim.g (.. "terminal_color_" i) color)))

(λ M.clear-terminal-colors []
  "Clear terminal colors for GUIs."
  (for [i 0 15]
    (tset vim.g (.. "terminal_color_" i) nil)))

M
