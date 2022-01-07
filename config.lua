Config = {}
Config.PatreonEmail = 'Your Patrion Email' --Take authorisation with your patreon email.

Config.Blips = { --Commnent out if you don't need blips
	[1] = {pos = vector3(-1172.19, -1571.77, 3.69), sprite = 496, color = 2, size = 1.3, radius = 50.0, name = 'DrugDealer Weed'},
	[2] = {pos = vector3(-1172.19, -1571.77, 3.69), sprite = 278, color = 2, size = 1.0, radius = 0.0, name = 'DrugDealer Weed'},
	[3] = {pos = vector3(116.75, -1990.18, 17.43), sprite = 496, color = 2, size = 1.3, radius = 50.0, name = 'Weed Lab'},
	[4] = {pos = vector3(116.75, -1990.18, 17.43), sprite = 499, color = 2, size = 0.6, radius = 0.0, name = 'Weed Lab'},

	[5] = {pos = vector3(348.04, 168.61, 102.12), sprite = 497, color = 0, size = 1.2, radius = 50.0, name = 'DrugDealer Coke'},
	[6] = {pos = vector3(348.04, 168.61, 102.12), sprite = 278, color = 2, size = 1.0, radius = 0.0, name = 'DrugDealer Coke'},
	[7] = {pos = vector3(-55.15, 6392.58, 30.52), sprite = 497, color = 0, size = 1.3, radius = 50.0, name = 'Coke Lab'},
	[8] = {pos = vector3(-55.15, 6392.58, 30.52), sprite = 499, color = 2, size = 0.8, radius = 0.0, name = 'Coke Lab'},

	[9] = {pos = vector3(-1146.53, 4940.75, 221.3), sprite = 496, color = 1, size = 1.3, radius = 50.0, name = 'DrugDealer Spice'},
	[10] = {pos = vector3(-1146.53, 4940.75, 221.3), sprite = 278, color = 2, size = 1.0, radius = 0.0, name = 'DrugDealer Spice'},
	[11] = {pos = vector3(2431.03, 4963.06, 41.38), sprite = 496, color = 1, size = 1.3, radius = 50.0, name = 'Spice Lab'},
	[12] = {pos = vector3(2431.03, 4963.06, 41.38), sprite = 499, color = 2, size = 0.62, radius = 0.0, name = 'Spice Lab'},

	[13] = {pos = vector3(42.23, 3706.88, 38.78), sprite = 93, color = 27, size = 1.3, radius = 50.0, name = 'DrugDealer Lean'},
	[14] = {pos = vector3(42.23, 3706.88, 38.78), sprite = 278, color = 2, size = 1.0, radius = 0.0, name = 'DrugDealer Lean'},
	[15] = {pos = vector3(93.22, -1291.32, 28.3), sprite = 93, color = 27, size = 1.3, radius = 50.0, name = 'Lean Lab'},
	[16] = {pos = vector3(93.22, -1291.32, 28.3), sprite = 499, color = 2, size = 0.62, radius = 0.0, name = 'Lean Lab'},

	[17] = {pos = vector3(32.46, -627.4, 10.8), sprite = 403, color = 5, size = 1.3, radius = 50.0, name = 'DrugDealer X-Pills'},
	[18] = {pos = vector3(32.46, -627.4, 10.8), sprite = 278, color = 2, size = 1.0, radius = 0.0, name = 'DrugDealer X-Pills'},
	[19] = {pos = vector3(3561.85, 3670.55, 27.15), sprite = 403, color = 5, size = 1.3, radius = 50.0, name = 'X-Pills Lab'},
	[20] = {pos = vector3(3561.85, 3670.55, 27.15), sprite = 499, color = 2, size = 0.62, radius = 0.0, name = 'X-Pills Lab'},

	[21] = {pos = vector3(1394.54, 3601.74, 37.97), sprite = 501, color = 21, size = 1.3, radius = 50.0, name = 'Heroin Lab'},
	[22] = {pos = vector3(1394.54, 3601.74, 37.97), sprite = 499, color = 2, size = 0.62, radius = 0.0, name = 'Heroin Lab'},

	[23] = {pos = vector3(495.28, -1823.37, 28.9), sprite = 57, color = 45, size = 1.0, radius = 50.0, name = 'DrugDealer Meth'},
	[24] = {pos = vector3(495.28, -1823.37, 28.9), sprite = 278, color = 2, size = 1.0, radius = 0.0, name = 'DrugDealer Meth'},
	[25] = {pos = vector3(244.61, 374.4, 104.77), sprite = 57, color = 45, size = 1.0, radius = 50.0, name = 'Meth Lab'},
	[26] = {pos = vector3(244.61, 374.4, 104.77), sprite = 499, color = 2, size = 0.62, radius = 0.0, name = 'Meth Lab'},

}

Config.DrugDealerItems = {
	[1] = {
		name = 'DrugDealer Weed', --Any name
		pos = vector3(-1172.19, -1571.77, 3.69), --Position of the dealer
		items = {
			['weed_pooch'] = 500, --item name and price
		},
	},
	[2] = {
		name = 'DrugDealer Coke',
		pos = vector3(348.04, 168.61, 102.12),
		items = {
			['coke_pooch'] = 500,
			['heroin_shot'] = 500,
		},
	},
	[3] = {
		name = 'DrugDealer Spice',
		pos = vector3(-1146.53, 4940.75, 221.3),
		items = {
			['spice_pooch'] = 500,
		},
	},
	[4] = {
		name = 'DrugDealer Lean',
		pos = vector3(42.23, 3706.88, 38.78),
		items = {
			['lean_bottle'] = 500,
			['double_cup'] = 500, --Download ak47_usabledrugs for this
		},
	},
	[5] = {
		name = 'DrugDealer X-Pill',
		pos = vector3(32.46, -627.4, 10.8),
		items = {
			['xpills'] = 500,
		},
	},
	[6] = {
		name = 'DrugDealer Meth',
		pos = vector3(495.28, -1823.37, 28.9),
		items = {
			['meth_pooch'] = 500,
		},
	},
}

Config.CircleZones = {
	[1] = {
		collect = { --Drug collect points
			[1] = {pos = vector3(1057.51, -3196.77, -40.13), heading = 175.7, quantity = 1},
			[2] = {pos = vector3(1060.13, -3193.63, -40.13), heading = 275.42, quantity = 1},
			[3] = {pos = vector3(1054.19, -3192.18, -40.13), heading = 47.96, quantity = 1},
		}, 
		process = { --Drug process Points
			[1] = {pos = vector3(1037.56, -3205.25, -39.15), heading = 274.9},
			[2] = {pos = vector3(1039.14, -3205.28, -39.15), heading = 91.65},
			[3] = {pos = vector3(1034.57, -3205.47, -39.15), heading = 84.13},
			[4] = {pos = vector3(1033.03, -3205.47, -39.15), heading = 267.92},
		},
		processDelay = 10, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if you don't need any require item.(requiredForProcess = false)
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'weed_leaf', xQuantity = 5, --xItem is the raw item and xQuantity is the required quantity for process
		xLabel = 'Weed leaf', --Any Name
		yItem = 'weed_pooch', yQuantity = 1, --yItem is the item after process and it's quantity is yQuantity
		yLabel = 'Weed Pooch', --Any name
	},
	[2] = {
		collect = {
			[1] = {pos = vector3(1100.84, -3198.77, -39.96), heading = 183.77, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(1095.36, -3194.92, -39.96), heading = 179.39},
			[2] = {pos = vector3(1092.92, -3194.93, -39.96), heading = 179.39},
			[3] = {pos = vector3(1090.37, -3194.92, -39.96), heading = 179.39},
			[4] = {pos = vector3(1090.41, -3196.56, -39.96), heading = 0.64},
			[5] = {pos = vector3(1092.94, -3196.59, -39.96), heading = 0.64},
			[6] = {pos = vector3(1095.41, -3196.56, -39.96), heading = 0.64},
		},
		processDelay = 30, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'cokebrick', xQuantity = 1,
		xLabel = 'Coke Brick',
		yItem = 'coke_pooch', yQuantity = 1,
		yLabel = 'Coke Pooch',
	},
	[3] = {
		collect = {
			[1] = {pos = vector3(2431.03, 4963.06, 41.38), heading = 142.4, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(2434.44, 4963.87, 41.38), heading = 223.45},
			[2] = {pos = vector3(2436.04, 4965.4, 41.38), heading = 224.01},
			[3] = {pos = vector3(2433.88, 4969.21, 41.38), heading = 44.52},
			[4] = {pos = vector3(2431.14, 4970.72, 41.38), heading = 46.9},
			[5] = {pos = vector3(2431.95, 4967.65, 41.38), heading = 314.27},
		},
		processDelay = 10, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'spice_leaf', xQuantity = 2,
		xLabel = 'Spice leaf',
		yItem = 'spice_pooch', yQuantity = 1,
		yLabel = 'Spice Pooch',
	},
	[4] = {
		collect = {
			[1] = {pos = vector3(93.22, -1291.32, 28.3), heading = 29.39, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(94.38, -1294.12, 28.3), heading = 119.36},
		},
		processDelay = 10, --in second
		requiredForProcess = 'empty_lean_bottle', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Empty lean Bottle', --Any name
		removable = true,
		xItem = 'raw_lean', xQuantity = 2,
		xLabel = 'Lean ingredients',
		yItem = 'lean_bottle', yQuantity = 1,
		yLabel = 'Lean bottle',
	},
	[5] = {
		collect = {
			[1] = {pos = vector3(3561.85, 3670.55, 27.15), heading = 260.66, quantity = 1},
			[2] = {pos = vector3(3561.48, 3668.44, 27.15), heading = 262.82, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(3559.53, 3672.34, 27.15), heading = 351.67},
			[2] = {pos = vector3(3559.82, 3674.50, 27.15), heading = 169.58},
		},
		processDelay = 10, --in second
		requiredForProcess = false, -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = '', --Any name
		removable = false,
		xItem = 'chemicals', xQuantity = 5,
		xLabel = 'Chemicals',
		yItem = 'xpills', yQuantity = 1,
		yLabel = 'X Pills',
	},
	[6] = {
		collect = {
			[1] = {pos = vector3(1394.54, 3601.74, 37.97), heading = 202.84, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(1391.81, 3605.82, 37.97), heading = 112.41},
			[2] = {pos = vector3(1389.85, 3608.74, 37.97), heading = 20.64},
			[3] = {pos = vector3(1389.10, 3605.58, 37.97), heading = 293.55},
			[4] = {pos = vector3(1389.80, 3603.47, 37.97), heading = 288.46},
		},
		processDelay = 10, --in second
		requiredForProcess = 'lighter', -- Set it false if not require like requiredForProcess = false,
		removable = false, 
		requiredForProcessLabel = 'Lighter', --Any name
		xItem = 'heroin', xQuantity = 5,
		xLabel = 'Heroin',
		yItem = 'heroin_shot', yQuantity = 1,
		yLabel = 'Heroin Shot',
	},
	[7] = {
		collect = {
			[1] = {pos = vector3(1016.18, -3195.62, -39.96), heading = 270.00, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(1014.25, -3194.94, -39.96), heading = 1.48},
			[2] = {pos = vector3(1012.09, -3194.94, -39.96), heading = 1.48},
			[3] = {pos = vector3(1006.93, -3194.87, -39.96), heading = 1.48},
			[4] = {pos = vector3(1004.7, -3194.92, -39.96), heading = 1.48},
		},
		processDelay = 10, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'meth_raw', xQuantity = 3,
		xLabel = 'Raw meth',
		yItem = 'meth_pooch', yQuantity = 1,
		yLabel = 'Meth pooch',
	},
}

Config.Teleports = {
	['Coke Lab'] = {enter = vector3(-55.15, 6392.58, 30.52), exit = vector3(1088.61, -3188.4, -39.96)},
	['Weed Lab'] = {enter = vector3(116.75, -1990.18, 17.43), exit = vector3(1065.92, -3183.51, -40.13)},
	['Meth Lab'] = {enter = vector3(244.61, 374.4, 104.77), exit = vector3(997.13, -3200.64, -37.36)},
}