(local M {})

(set M.opts {:italic false
             :cterm_palette :auto})

(lambda M.setup [?opts]
  (let [opts (or ?opts {})
        new-opts (vim.tbl_deep_extend :force M.opts opts)]
    (set M.opts new-opts)))

M
