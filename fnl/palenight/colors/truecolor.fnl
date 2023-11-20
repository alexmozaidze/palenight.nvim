;;; ╭──────────────────────────────────────────────────────────╮
;;; │             Main Colors (24-bit, true-color)             │
;;; ╰──────────────────────────────────────────────────────────╯
;;;
;;; Colors must be acceptable (gui)fg or (gui)bg value. (see `:help gui-colors`)

(import-macros {: color-table-validate/truecolor} :colors-table)

(color-table-validate/truecolor
  {:red         :#ff5370
   :light_red   :#ff869a
   :dark_red    :#be5046
   :green       :#c3e88d
   :dark_green  :#a2db4f
   :yellow      :#ffcb6b
   :orange      :#f78c6c
   :blue        :#82b1ff
   :purple      :#c792ea
   :blue_purple :#939ede
   :cyan        :#89ddff
   :white       :#bfc7d5
   :black       :#292d3e
   ;; Special colors
   :special     :#717cb4
   :comment     :#697098
   :line_number :#4b5263
   :highlight   :#3e4452
   :menu        :#363a4c
   :cursor      :#2c323c
   :vertsplit   :#181a1f})
