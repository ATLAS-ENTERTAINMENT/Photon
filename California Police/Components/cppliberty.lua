AddCSLuaFile()

local name = "CPP Liberty"
local COMPONENT = {}

COMPONENT.Model = "models/schmal/liberty_ii.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "AMBER",
	[4] = "WHITE"
}

COMPONENT.Meta = {
	liberty2_f_main = {
		AngleOffset = -90,
		W = 7.9,
		H = 7.5,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2,
		Scale = 1.4
	},
	liberty2_takedown = {
		AngleOffset = -90,
		W = 4.7,
		H = 4.7,
		Sprite = "sprites/emv/emv_whelen2_takedown",
		WMult = 1.4,
		Scale = 1.5
	},
	liberty2_alley = {
		AngleOffset = -90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/emv_whelen2_alley",
		WMult = .5,
		Scale = 1
	},
	liberty2_f_ang = {
		AngleOffset = -90,
		W = 17,
		H = 15,
		Sprite = "sprites/emv/emv_whelen2_corner",
		WMult = 3,
		Scale = 1.6,
		VisRadius = 0
	},
	liberty2_f2_ang = {
		AngleOffset = -90,
		W = 17,
		H = 15,
		Sprite = "sprites/emv/emv_whelen2_corner2",
		WMult = 3,
		Scale = 1.6,
		VisRadius = 0
	},
	liberty2_r_ang = {
		AngleOffset = 90,
		W = 16,
		H = 15,
		Sprite = "sprites/emv/emv_whelen2_corner",
		WMult = 3,
		Scale = 1.6
	},
	liberty2_r2_ang = {
		AngleOffset = 90,
		W = 16,
		H = 15,
		Sprite = "sprites/emv/emv_whelen2_corner2",
		WMult = 3,
		Scale = 1.6
	},
	liberty2_r_main = {
		AngleOffset = 90,
		W = 7.9,
		H = 7.5,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2,
		Scale = 1.4
	}
}

COMPONENT.Positions = {
	[1] = { Vector( -10.18, 6.51, 0.67 ), Angle( 0, 0, 0 ), "liberty2_f_main" },
	[2] = { Vector( 10.18, 6.51, 0.67 ), Angle( 0, 0, 0 ), "liberty2_f_main" },
	[3] = { Vector( -16.96, 6.51, 0.67 ), Angle( 0, 0, 0 ), "liberty2_f_main" },
	[4] = { Vector( 16.96, 6.51, 0.67 ), Angle( 0, 0, 0 ), "liberty2_f_main" },
	[5] = { Vector( -23.85, 3.87, 0.64 ), Angle( 0, 38.4, 0 ), "liberty2_f_ang", 1 },
	[6] = { Vector( 24.25, 3.67, 0.64 ), Angle( 0, -38.4, 0 ), "liberty2_f2_ang", 2 },
	[7] = { Vector( -23.85, -4.22, 0.64 ), Angle( 0, -38.4, 0 ), "liberty2_r_ang", 3 },
	[8] = { Vector( 23.85, -4.02, 0.64 ), Angle( 0, 38.4, 0 ), "liberty2_r2_ang", 4 },
	[9] = { Vector( -16.94, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[9] = { Vector( -16.94, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[10] = { Vector( 16.94, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[11] = { Vector( -10.18, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[12] = { Vector( 10.18, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[13] = { Vector( -3.4, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[14] = { Vector( 3.4, -7.06, 0.59 ), Angle( 0, 0, 0 ), "liberty2_r_main" },
	[15] = { Vector( -3.37, 6.28, 0.6 ), Angle( 0, 0, 0 ), "liberty2_takedown" },
	[16] = { Vector( 3.37, 6.28, 0.6 ), Angle( 0, 0, 0 ), "liberty2_takedown" },
	[17] = { Vector( -27.9, -0.23, 0.58 ), Angle( 0, 90, 0 ), "liberty2_alley" },
	[18] = { Vector( 27.9, -0.23, 0.58 ), Angle( 0, -90, 0 ), "liberty2_alley" }
}

-- ODD = LEFT
-- EVEN = RIGHT
COMPONENT.Sections = {
	["cpp_liberty"] = {
		[1] = {
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_1" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_2" },
			{ 7, "_2" }, { 8, "_1" },
			{ 11, "_3" }, { 12, "_3" },
			{ 13, "_3" }, { 14, "_3" }
		}
	},
	["liberty_rear"] = {
		[1] = {
			{ 7, "_2" }
		},
		[2] = {
			{ 13, "_3" },
			{ 14, "_3" },
			{ 12, "_3" },
			{ 10, "_3" }
		},
		[3] = {
			{ 7, "_2" },
			{ 8, "_1" }
		},
		[4] = {
			{ 11, "_3" },
			{ 13, "_3" },
			{ 14, "_3" },
			{ 12, "_3" }
		},
		[5] = {
			{ 11, "_3" },
			{ 13, "_3" }
		},
		[6] = {
			{ 14, "_3" },
			{ 12, "_3" }
		},
		[7] = {
			{ 7, "_2" }
		},
		[8] = {
			{ 8, "_1" }
		}
	},
	["liberty_front"] = {
		[1] = {
			{ 1, "_1" },
			{ 3, "_1" },
			{ 5, "_1" }
		},
		[2] = {
			{ 5, "_1" }
		},
		[3] = {
			{ 6, "_2" }
		},
		[4] = {
			{ 1, "_1" },
			{ 5, "_1" }
		},
		[5] = {
			{ 2, "_2" },
			{ 4, "_2" },
			{ 6, "_2" }
		},
		[6] = {
			{ 5, "_1" }
		},
		[7] = {
			{ 4, "_2" },
			{ 6, "_2" }
		}
	},
	["liberty_stdybrn"] = {
		[1] = {
			{ 3, "_1" }
		},
		[2] = {
			{ 1, "_1" },
			{ 3, "_1" }
		}
	}
}

COMPONENT.Patterns = {
	["cpp_liberty"] = {
		["all"] = { 1 },
		["alert"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 }
	},
	["liberty_rear"] = {
		["pattern1"] = { 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 2, 0 },
		["pattern2"] = { 3, 3, 3, 3, 3, 0, 4, 4, 4, 4, 4, 0 },
		["pattern3"] = { 5, 5, 5, 5, 5, 0, 6, 6, 6, 6, 6, 0 },

		["pattern4"] = { 7, 7, 7, 7, 7, 0, 8, 8, 8, 8, 8, 0 }
	},
	["liberty_front"] = {
		["pattern1"] = { 1 },
		["pattern2"] = { 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3, 0 },

		["pattern3"] = { 4, 4, 4, 4, 4, 0, 5, 5, 5, 5, 5, 0 },
		["pattern4"] = { 6, 6, 6, 6, 6, 0, 7, 7, 7, 7, 7, 0 }
	},
	["liberty_stdybrn"] = {
		["sb1"] = { 1 },
		["sb2"] = { 2 }
	}
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
		M11 = {
			["liberty_rear"] = "pattern1"
		},
		M12 = {
			["liberty_rear"] = "pattern2"
		},
		M13 = {
			["liberty_rear"] = "pattern3"
		},
		M21 = {
			["liberty_rear"] = "pattern2",
			["liberty_front"] = "pattern1"
		},
		M22 = {
			["liberty_rear"] = "pattern2",
			["liberty_front"] = "pattern2",
			["liberty_stdybrn"] = "sb2"
		},
		M31 = {
			["liberty_rear"] = "pattern2",
			["liberty_front"] = "pattern3",
			["liberty_stdybrn"] = "sb1"
		},
		M32 = {
			["liberty_rear"] = "pattern2",
			["liberty_front"] = "pattern4",
			["liberty_stdybrn"] = "sb1"
		},
		M33 = {
			["liberty_rear"] = "pattern4",
			["liberty_front"] = "pattern3",
			["liberty_stdybrn"] = "sb1"
		},
		ALERT = {
			["cpp_liberty"] = "alert"
		}
	},
	Auxiliary = {
		L = {},
		R = {},
		D = {}
	},
	Illumination = {
		T = {},
		F = {},
		L = {},
		R = {}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
