(local M {})

(lambda M.auto-cterm-palette []
  "Returns 16 if in tty, and 256 otherwise."
  (let [exec #(= (os.execute $) 0)
        command-exists? #(= (vim.fn.executable $) 1)
        ;; User could be running tmux in tty, in which
        ;; case term-tty? would be false.
        term-tty?        (exec "[ \"$TERM\" = 'linux' ]")
        display?         (exec "[ -n \"$DISPLAY\" ]")
        wayland-display? (exec "[ -n \"$WAYLAND_DISPLAY\" ]")
        termux? (command-exists? "termux-setup-storage")
        macos? (= (. (vim.loop.os_uname) :sysname) :Darwin)
        tty? (or term-tty?
                 (and (not display?)
                      (not wayland-display?)
                      (not termux?)
                      (not macos?)))]
    (if tty?
        16
        256)))

(lambda M.require-cterm [?palette]
  (let [notify (require :palenight/_notify)
        {: config} (require :palenight/_config)
        palette (or ?palette config.cterm_palette)]
    (match palette
      :auto (M.require-cterm (M.auto-cterm-palette))
      16 (require :palenight/colors/cterm16)
      256 (require :palenight/colors/cterm256)
      invalid (notify.error (string.format "%s \"%s\"" notify.messages.invalid-cterm-option invalid)))))

M
