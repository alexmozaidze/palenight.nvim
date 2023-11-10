(local messages {:unsupported-nvim-version "Only nvim >=0.8 is supported. Proceed at your own risk!"
                 :unsupported-light-theme "Light theme is unsupported. Set `background` to `dark`."})

(lambda warn [message]
  (vim.notify (.. "palenight.nvim: " message) vim.log.levels.WARN))

(local M {})

(set M.config {:italic true})

(lambda M.setup [?user-config]
  (let [user-config (or ?user-config {})
        new-config (vim.tbl_deep_extend :force M.config user-config)]
    (set M.config new-config)))

(lambda M.load []
  (let [unsupported-nvim-version? (<= (. (vim.version) :minor) 7)]
    (when unsupported-nvim-version?
      (warn messages.unsupported-nvim-version)))
  (when (= vim.opt.background :light)
    (warn messages.unsupported-light-theme))
  (let [colorscheme-loaded? vim.g.colors_name]
    (when colorscheme-loaded?
      (vim.cmd.hi :clear)))
  (set vim.g.colors_name :palenight)
  ;; FIX: Confusing naming. Change group to hl.
  (let [groups (require :palenight/groups)]
    (each [_ group (ipairs groups)]
      (local hl group.hl)
      (set group.hl nil)
      (set group.italic (and M.italic group.italic))
      (vim.api.nvim_set_hl 0 hl group))))

M
