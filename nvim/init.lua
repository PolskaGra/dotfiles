vim.o.termguicolors = true
local hr = tonumber(os.date('%H', os.time()))
if hr > 6 and hr < 16 then -- day between 6am and 9pm
  vim.opt.background = 'light'
  vim.cmd[[colorscheme vscode]]
else -- night
  vim.opt.background = 'dark'
  vim.cmd[[colorscheme gruber-darker]]
end

require("pyczek")

