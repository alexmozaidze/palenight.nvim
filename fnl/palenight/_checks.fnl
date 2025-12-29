(local M {})

(set M.min-version (vim.version.parse "0.8.0"))

(λ M.supported-nvim-version? []
  (<= 0 (vim.version.cmp (vim.version) M.min-version)))

(λ M.supports-cur-search? []
  (<= 0 (vim.version.cmp (vim.version) (vim.version.parse "0.9.0"))))

M
