AddCSLuaFile()

local name = "CPP LINZ6"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/whelen_linz6.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	whelen_linz6_left = {
		AngleOffset = -90,
		W = 3.765,
		H = 5,
		Sprite = "sprites/emv/whelen_reflector_left",
		WMult = 1,
		Scale = 1
	},
	whelen_linz6_right = {
		AngleOffset = -90,
		W = 3.765,
		H = 5,
		Sprite = "sprites/emv/whelen_reflector_right",
		WMult = 1,
		Scale = 1
	},
}

COMPONENT.Positions = {
	[1] = { Vector( 0.85, 0.72, 0 ), Angle( 0, 0, 0 ), "whelen_linz6_left" },
	[2] = { Vector( -0.85, 0.72, 0 ), Angle( 0, 0, 0 ), "whelen_linz6_right" }
}

COMPONENT.Sections = {
	["cpp_linz6"] = {
		[1] = {
            { 1, "_1" }, { 2, "_1" }
        }
	}
}

COMPONENT.Patterns = {
	["cpp_linz6"] = {
		["all"] = { 1 },
		["allA"] = { 1 },
		["allB"] = { 1 },
		["allS"] = { 1 },
        ["alert"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertB"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["alertS"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
        ["code"] = { 1, 1, 1, 1, 1, 0 },
		["codeA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0 },
		["codeB"] = { 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0 },
		["codeS"] = { 1 }
	}
}

COMPONENT.Modes = {
	Primary = {
		M21 = {
            ["cpp_linz6"] = "all"
		},
		M22 = {
            ["cpp_linz6"] = "code"
		},
		M31 = {
            ["cpp_linz6"] = "code"
		},
		M32 = {
            ["cpp_linz6"] = "code"
		},
		M33 = {
            ["cpp_linz6"] = "code"
		},
        ALERT = {
            ["cpp_linz6"] = "alert"
		}
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
