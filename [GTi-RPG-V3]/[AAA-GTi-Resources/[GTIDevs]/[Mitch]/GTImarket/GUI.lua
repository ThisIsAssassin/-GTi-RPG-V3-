gTable = {
    edit = {},
    button = {},
    window = {},
    label = {},
    grid = {}
}
addEventHandler("onClientResourceStart",resourceRoot, function()
	local screenW, screenH = guiGetScreenSize()
	gTable.window[1] = guiCreateWindow((screenW - 869) / 2, (screenH - 529) / 2, 869, 529, "GTI - Market Interface", false)
	guiWindowSetSizable(gTable.window[1], false)

	gTable.grid['tosell'] = guiCreateGridList(12, 27, 240, 190, false, gTable.window[1])
        guiGridListAddColumn(gTable.grid['tosell'], "Item", 0.3)
        guiGridListAddColumn(gTable.grid['tosell'], "Type", 0.3)
        guiGridListAddColumn(gTable.grid['tosell'], "Amount", 0.2)
        guiSetAlpha(gTable.grid['tosell'], 0.90)
        guiGridListSetSortingEnabled(gTable.grid['tosell'], false)
	gTable.grid['onsale'] = guiCreateGridList(12, 275, 240, 190, false, gTable.window[1])
        guiGridListAddColumn(gTable.grid['onsale'], "Item", 0.3)
        guiGridListAddColumn(gTable.grid['onsale'], "Price", 0.15)
        guiGridListAddColumn(gTable.grid['onsale'], "Amount", 0.18)
        guiGridListAddColumn(gTable.grid['onsale'], "Type", 0.3)
        guiSetAlpha(gTable.grid['onsale'], 0.90)
        guiGridListSetSortingEnabled(gTable.grid['onsale'], false)
	gTable.grid['public'] = guiCreateGridList(260, 27, 600, 443, false, gTable.window[1])
        guiGridListAddColumn(gTable.grid['public'], "Item", 0.18)
        guiGridListAddColumn(gTable.grid['public'], "Price", 0.18)
        guiGridListAddColumn(gTable.grid['public'], "Amount", 0.18)
        guiGridListAddColumn(gTable.grid['public'], "Type", 0.18)
        guiGridListAddColumn(gTable.grid['public'], "Seller", 0.18)
        guiSetAlpha(gTable.grid['public'], 0.90)
        guiGridListSetSortingEnabled(gTable.grid['public'], false)
	gTable.button[1] = guiCreateButton(700, 474, 131, 26, "Purchase", false, gTable.window[1])
	guiSetProperty(gTable.button[1], "NormalTextColour", "FFAAAAAA")
	gTable.button[2] = guiCreateButton(141, 231, 111, 28, "Sell", false, gTable.window[1])
	guiSetProperty(gTable.button[2], "NormalTextColour", "FFAAAAAA")
	gTable.label[1] = guiCreateLabel(12, 221, 48, 15, "Amount: ", false, gTable.window[1])
	gTable.edit['ats'] = guiCreateEdit(62, 219, 62, 22, "", false, gTable.window[1])
        guiEditSetMaxLength(gTable.edit['ats'], 7)
	gTable.label[2] = guiCreateLabel(22, 250, 35, 15, "Price: ", false, gTable.window[1])
	gTable.edit['price'] = guiCreateEdit(62, 246, 62, 22, "", false, gTable.window[1])
        guiEditSetMaxLength(gTable.edit['price'], 7)
	gTable.label[3] = guiCreateLabel(506, 475, 120, 15, "Amount to Purchase: ", false, gTable.window[1])
	gTable.edit['atb'] = guiCreateEdit(631, 473, 62, 26, "", false, gTable.window[1])
        guiEditSetMaxLength(gTable.edit['atb'], 7)
	gTable.button[3] = guiCreateButton(732, 503, 63, 16, "Close", false, gTable.window[1])
	guiSetProperty(gTable.button[3], "NormalTextColour", "FFFF0000")
	gTable.button[4] = guiCreateButton(30, 474, 186, 26, "Remove From Sale", false, gTable.window[1])
	guiSetProperty(gTable.button[4], "NormalTextColour", "FFAAAAAA")
	gTable.button[5] = guiCreateButton(300, 474, 131, 26, "Refresh", false, gTable.window[1])
	guiSetVisible(gTable.window[1],false)
end)