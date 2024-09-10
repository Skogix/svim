function ReloadBuffer()
  local temp_sync_value = vim.g.aider_buffer_sync                            
  vim.g.aider_buffer_sync = 0                                                
  vim.api.nvim_exec2('e!', {output = false})
  vim.g.aider_buffer_sync = temp_sync_value
end
require("skogix.core.options")
require("skogix.core.lazy")
require("skogix.core.keymaps")
require("skogix.core.autocmds")
