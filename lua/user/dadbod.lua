local m = {}

m.config = function()
  local status_ok, dadbod = pcall(require, "vim-dadbod")
  if not status_ok then
    return
  end

  dadbod.setup();
end

return m
