
CLCT_COMPAT = {
	VERSION = "010000",
	modpath = core.get_modpath "clct_compat",
	gettext = core.get_translator "clct_compat"
}

if tonumber(crafttools.VERSION) <= 20101 then
	error(
		"ComponentsLib-CraftTools Compatibility requires CraftTools version 2.1.1 or greater, but only version "
		.. table.concat({
			tonumber(crafttools.VERSION:sub(1,2)),
			tonumber(crafttools.VERSION:sub(3,4)),
			tonumber(crafttools.VERSION:sub(5,6))
		}, '.')
		.. " is present."
	)
end

if tonumber(COMPLIB.VERSION) <= 5 then
	error(
		"ComponentsLib-CraftTools Compatibility requires ComponentsLib version 0.0.5 or greater, but only version "
		.. table.concat({
			tonumber(COMPLIB.VERSION:sub(1,2)),
			tonumber(COMPLIB.VERSION:sub(3,4)),
			tonumber(COMPLIB.VERSION:sub(5,6))
		}, '.')
		.. " is present."
	)
end
