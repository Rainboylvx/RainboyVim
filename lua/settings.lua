local settings = {
	number = true,
	relativenumber = true,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true
}

for k,v in pairs(settings) do
	vim.opt[k] = v
end
