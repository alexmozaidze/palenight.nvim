;;; ╭──────────────────────────────────────────────────────────╮
;;; │                   Fallback Colors (16)                   │
;;; ╰──────────────────────────────────────────────────────────╯
;;;
;;; Colors must be acceptable ctermfg or ctermbg value
;;; supported by 16-color palette terminals. (see `:help cterm-colors`)

(import-macros {: color-table-validate/cterm16} :colors-table)

(color-table-validate/cterm16
  {:red         :Red
   :light_red   :LightRed
   :dark_red    :DarkRed
   :green       :Green
   :dark_green  :DarkGreen
   :yellow      :Yellow
   :orange      :Brown
   :blue        :Blue
   :purple      :Magenta
   :blue_purple :LightBlue
   :cyan        :Cyan
   :white       :White
   :black       :Black
   ;; Special colors
   :special     :LightGrey
   :comment     :Grey
   :line_number :Grey
   :highlight   :DarkGrey
   :menu        :DarkGrey
   :cursor      :NONE ; There is no acceptable color to make it look good
   :vertsplit   :Grey})
