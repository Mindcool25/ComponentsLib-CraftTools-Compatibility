
CTCL_COMPAT = {
	VERSION = '010000',
	modpath = core.get_modpath 'ctcl_compat',
	gettext = core.get_translator 'ctcl_compat'
}

if tonumber(crafttools.VERSION) <= 20101 then
	error(
		"ComponentsLib-CraftTools Compatibility requires CraftTools version 2.1.1 or greater, but only verion "
		.. table.concat({
			tonumber(crafttools.VERSION:sub(1,2)),
			tonumber(crafttools.VERSION:sub(3,4)),
			tonumber(crafttools.VERSION:sub(5,6))
		}, '.')
		.. " is present."
	)
end
