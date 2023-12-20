;;; ╭──────────────────────────────────────────────────────────╮
;;; │                  Fallback Colors (256)                   │
;;; │                  ─────────────────────                   │
;;; │   Shoutout to xtermcolor for helping me get this done    │
;;; │                     quick and easy!                      │
;;; │       https://github.com/broadinstitute/xtermcolor       │
;;; ╰──────────────────────────────────────────────────────────╯
;;;
;;; Colors must be acceptable ctermfg or ctermbg value. (see `:help cterm-colors`)

(import-macros {: color-table-validate/cterm256} :colors-table)

(color-table-validate/cterm256
  {:red         203
   :light_red   210
   :dark_red    131
   :green       186
   :dark_green  149
   :yellow      221
   :orange      209
   :blue        111
   :purple      176
   :blue_purple 110
   :cyan        117
   :white       251
   :black       236
   ;; Special colors
   :special     67
   :comment     60
   :line_number 239
   :highlight   238
   :menu        237
   :cursor      236
   :vertsplit   234})
