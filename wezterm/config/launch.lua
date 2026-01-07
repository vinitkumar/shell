-- macOS-only configuration
local options = {
   default_prog = { '/bin/zsh', '-l' },
   launch_menu = {
      { label = 'Zsh', args = { '/bin/zsh', '-l' } },
      { label = 'Bash', args = { '/bin/bash', '-l' } },
   },
}

return options
