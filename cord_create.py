# Part 1/2 of my Discord RPC intagration for Vim
import discord_rpc

client_id = "YOUR_APP_ID"  # Replace with your Discord application ID, you can make one at discord.dev
rpc = discord_rpc.DiscordRPC(client_id)
rpc.initialize()

def update_presence(state, details):
    rpc.update_presence(
        state=state,
        details=details,
        start_time=None,
        end_time=None,
        large_image="large_image_key",  # Replace with your large image key of choice, I use the Vim logo in mine.
        large_text="Vim",
    )

def close_rpc():
    rpc.close()
