# Part 2/2 of my Discord RPC for my Vim (neovim) config, this part actually updates to apply the new info, ie. showing what file is being edited.
import pynvim
from discord_rpc import DiscordRPC
import os

@pynvim.plugin
class NeovimDiscordRPC(object):
    def __init__(self, nvim):
        self.nvim = nvim
        self.rpc = DiscordRPC("YOUR_APP_ID")  # Replace with your Discord application ID
        self.rpc.initialize()

    @pynvim.command('UpdateRPC', nargs='*')
    def update_rpc(self, args):
        state = args[0] if len(args) > 0 else 'Editing'
        file_path = self.nvim.eval('expand("%:p")')
        file_name = os.path.basename(file_path)
        file_dir = os.path.dirname(file_path)
        details = f'{file_name} in {file_dir}'
        self.rpc.update_presence(state=state, details=details)

    @pynvim.command('CloseRPC')
    def close_rpc(self, args):
        self.rpc.close()
