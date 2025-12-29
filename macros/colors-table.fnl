(local {: hex? : cterm16? : cterm256? : color-constant? : NONE?} (require :checks))

(local M {})

;; All color tables get checked against this schema.
(set M.schema [:red
               :light_red
               :dark_red
               :green
               :dark_green
               :yellow
               :orange
               :blue
               :purple
               :blue_purple
               :cyan
               :white
               :black
               ;; Special colors
               :special
               :comment
               :line_number
               :highlight
               :menu
               :cursor
               :vertsplit])

;; Colors schema for Neovim GUI clients' terminal fallback rendering.
;;
;; It's quite different from a regular schema in that the color names are
;; 1 to 1 mappings to terminal color codes (0-15).
(set M.gui-terminal-schema (fcollect [i 0 15] i))

(λ M.color-table-validate [schema color-table predicates]
  "Validates the color table according to the schema.
If it doesn't conform the schema, it raises a compile-time error."
  (assert-compile (table? predicates)
                  (.. "expected table, got " (type predicates))
                  predicates)
  (assert-compile (table? color-table)
                  (.. "expected table, got " (type color-table))
                  color-table)
  (let [color-table-length (accumulate [count 0 _ _ (pairs color-table)] (+ count 1))]
    (assert-compile (= (length schema) color-table-length)
                    (if (< (length schema) color-table-length)
                        "too many entries in color table"
                        "not enough entries in color table")))
  (each [_ schema-color-name (ipairs schema)]
    (local color (. color-table schema-color-name))
    (assert-compile (or (= (type color) :string)
                        (= (type color) :number))
                    (.. "expected string or number, got " (type color))
                    color)
    (assert-compile (accumulate [any? false
                                 _ pred (ipairs predicates)
                                 &until any?]
                      (pred color))
                    (.. color " is not a valid color")
                    color))
  color-table)

(λ M.color-table-validate/truecolor [color-table]
  (M.color-table-validate M.schema color-table [hex? color-constant? NONE? cterm256?]))

(λ M.color-table-validate/cterm256 [color-table]
  (M.color-table-validate M.schema color-table [color-constant? NONE? cterm256?]))

(λ M.color-table-validate/cterm16 [color-table]
  (M.color-table-validate M.schema color-table [color-constant? NONE? cterm16?]))

(λ M.color-table-validate/gui-terminal [color-table]
  (M.color-table-validate M.gui-terminal-schema color-table [hex?]))

M
