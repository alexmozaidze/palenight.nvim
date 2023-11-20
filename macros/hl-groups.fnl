(local {: cterm256? : color-constant? : NONE?} (require :checks))

(lambda first-letter-uppercase? [?input]
  (and ?input
       (string.match (string.sub ?input 1 1) "%u")))

(lambda color-constant?* [?input]
  (and ?input
       (or (cterm256? ?input)
           (and (or (color-constant? ?input)
                    (NONE? ?input))
                (first-letter-uppercase? ?input)))))

(local M {})

(lambda M.transform-gui-color [colors ?target]
  (if (not ?target)
      nil
      (color-constant?* ?target)
      ?target
      `(. ,colors ,?target)))

(lambda M.transform-cterm-color [colors-cterm ?gui ?target]
  (if (and (not ?gui) (not ?target))
      nil
      (color-constant?* ?target)
      ?target
      (and ?gui (not ?target))
      `(. ,colors-cterm ,?gui)
      (and ?gui ?target)
      ?target
      `(. ,colors-cterm ,?target)))

(lambda M.transform-hl-groups [colors colors-cterm groups]
  "Takes colors (fg, bg, ctermfg, ctermbg) and de-aliases them.
  In addition to de-aliasing, it assigns default color to
  cterm colors (ctermfg and ctermbg) in case they weren't defined.

  Example transformation:
  {:fg :red} -> {:fg colors.red :ctermfg colors-cterm.red}"
  (assert-compile (in-scope? colors)
                  "colors identifier not in scope"
                  colors)
  (assert-compile (in-scope? colors-cterm)
                  "colors-cterm identifier not in scope"
                  colors-cterm)
  (each [_group hl (pairs groups)]
    (let [transform-gui-color #(M.transform-gui-color colors $)
          transform-cterm-color #(M.transform-cterm-color colors-cterm $)
          new-fg (transform-gui-color hl.fg)
          new-ctermfg (transform-cterm-color hl.fg hl.ctermfg)
          new-bg (transform-gui-color hl.bg)
          new-ctermbg (transform-cterm-color hl.bg hl.ctermbg)]
      (set hl.fg new-fg)
      (set hl.bg new-bg)
      (set hl.ctermfg new-ctermfg)
      (set hl.ctermbg new-ctermbg)))
  groups)

M
