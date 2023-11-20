(local plugin-title "palenight.nvim")

(local M {})

(set M.messages {:unsupported-nvim-version "Only nvim >=0.8 is supported. Proceed at your own risk!"
                 :unsupported-light-theme "Light theme is unsupported. Set `background` to `dark`."
                 :invalid-cterm-option "Invalid `cterm_palette` option"})

(lambda M.notify [message log-level]
  (let [(notify-plugin-present?) (pcall require :notify)]
    (if notify-plugin-present?
        ((require :notify) message log-level {:title plugin-title})
        (vim.notify (.. plugin-title ": " message) log-level))))

(lambda M.warn [message]
  (M.notify message vim.log.levels.WARN))

(lambda M.error [message]
  (M.notify message vim.log.levels.ERROR))

M
