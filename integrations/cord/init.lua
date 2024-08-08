vim.cmd [[
python3 << EOF
import sys
import os
import pynvim

sys.path.append('/path/to/your/scripts')  -- Replace with the path to your scripts
import neovim_rpc
EOF
]]
