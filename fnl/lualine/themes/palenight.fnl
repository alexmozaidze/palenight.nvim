;; FIX: This file is quite a mess...

(local {: require-cterm} (require :palenight/_colors))
(local {: opts} (require :palenight/_config))

(local colors (require :palenight/colors/truecolor))
(local colors-cterm (require-cterm))

(local c (if vim.o.termguicolors
             colors
             colors-cterm))

(lambda active-mode-bg []
  (if (= opts.cterm_palette 16)
      c.black
      c.menu))

;; Bold doesn't look great in tty
(lambda get-bold []
  (if (not= opts.cterm_palette 16)
      :bold
      nil))

{:normal   {:a {:fg c.black :bg c.purple :gui (get-bold)}
            :b {:fg c.purple :bg (active-mode-bg)}
            :c {:fg c.comment :bg c.black}}
 :insert   {:a {:fg c.black :bg c.blue :gui (get-bold)}
            :b {:fg c.blue :bg (active-mode-bg)}}
 :visual   {:a {:fg c.black :bg c.cyan :gui (get-bold)}
            :b {:fg c.cyan :bg (active-mode-bg)}}
 :replace  {:a {:fg c.black :bg c.green :gui (get-bold)}
            :b {:fg c.green :bg (active-mode-bg)}}
 :inactive {:a {:fg c.black :bg c.menu :gui (get-bold)}
            :b {:fg c.black :bg c.menu}
            :c {:fg c.black :bg c.menu}}}
