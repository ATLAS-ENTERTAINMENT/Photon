AddCSLuaFile()
EMV_DEBUG = false

local name = "Cali Explorer"
local EMV = {}

EMV.Siren = "lr_w_chp"
EMV.Color = nil
EMV.Skin = 2

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 } -- Fog Lights
}

EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Pos = Vector( 0, 120, 20 ),
		Ang = Angle( 0, -90, 0 ),
		Scale = 1.6
	}
}

EMV.Auto = {
	{
		ID = "CPP Liberty",
		Scale = 1.2,
		Pos = Vector( 0, -15, 88.7 ),
		Ang = Angle( 2, 90, 0 )
	}
}

EMV.Meta = {
    headlights = {
		AngleOffset = -90,
		W = 10,
		H = 12,
		Sprite = "sprites/emv/fpiu_headlight",
		WMult = 3,
		Scale = 2
	},
    taillights = {
		AngleOffset = 90,
		W = 10,
		H = 18,
		Sprite = "sprites/emv/fpiu_hideaway",
		WMult = 2,
		Scale = 1.4
	}
}

EMV.Positions = {
	[1] = { Vector( -29.8, 102, 47.75 ), Angle( 0, 25, 20 ), "headlights" },
    [2] = { Vector( 29.8, 102, 47.75 ), Angle( 180, -25, 160 ), "headlights" },
    [3] = { Vector( -33.2, -117, 58.3 ), Angle( 0, -25, 0 ), "taillights" },
    [4] = { Vector( 33.2, -117, 58.3 ), Angle( 180, 25, 180 ), "taillights" }
}


EMV.Sections = {
	["headlights"] = {
        [1] = { 
            { 1, "S_WHITE", { 16, 0.1, 16 } }, { 2, "S_WHITE", { 16, 0.1, 17 } }
        }
    },
    ["taillights"] = {
        [1] = { 
            { 3, "RED" }
        },
        [2] = { 
            { 4, "BLUE" }
        }
    }
}

EMV.Patterns = {
	["headlights"] = {
        ["code"] = { 1 }
    },
    ["taillights"] = {
        ["code3"] = { 1, 1, 0, 2, 2, 0 }
    }
}


EMV.Sequences = {
	Sequences = {
		{
            Name = "C1P1",
            Stage = "M11",
            Components = {},
            Disconnect = {}
        },
		{
            Name = "C1P2",
            Stage = "M12",
            Components = {},
            Disconnect = {}
        },
		{
            Name = "C1P3",
            Stage = "M13",
            Components = {},
            Disconnect = {}
        },

		{
            Name = "C2P1",
            Stage = "M21",
            Components = {},
            Disconnect = {}
        },
		{
            Name = "C2P2",
            Stage = "M22",
            Components = {},
            Disconnect = {}
        },

		{
            Name = "C3P1",
            Stage = "M31",
            Components = {},
            Disconnect = {}
        },
		{
            Name = "C3P2",
            Stage = "M32",
            Components = {},
            Disconnect = {}
        },
		{
            Name = "C3P3",
            Stage = "M33",
            Components = {},
            Disconnect = {}
        }
	},
	Traffic = {},
    Illumination = {}
}




local PI = {}
PI.Meta = {
	rear_top_light = {
		AngleOffset = 90,
		W = 15,
		H = 15,
		Sprite = "sprites/emv/emv_whelen_src_side",
		Scale = 1,
		WMult = 3
	},
    brake_light = {
		AngleOffset = 90,
		W = 12,
		H = 11,
		Sprite = "sprites/emv/fpiu_taillight",
		Scale = 1,
		WMult = 3
	},
    running_light = {
		AngleOffset = -90,
		W = 10,
		H = 13,
		Sprite = "sprites/emv/fpiu_running",
		Scale = 1,
		WMult = 3
	},
    front_turn_light = {
		AngleOffset = -90,
		W = 8,
		H = 6.7,
		Sprite = "sprites/emv/fpiu_running",
		Scale = 1,
		WMult = 3
	},
    rear_turn_light = {
		AngleOffset = 90,
		W = 1.7,
		H = 30,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 3
	}
}

PI.Positions = {
	[1] = { Vector( 0, -108.5, 82 ), Angle( 0, 0, 53 ), "rear_top_light" },

	[2] = { Vector( -34, -117.3, 53.7 ), Angle( 0, -30, 0 ), "brake_light" },
	[3] = { Vector( 34, -117.3, 53.7 ), Angle( 180, 30, 180 ), "brake_light" },

    [4] = { Vector( -36, 96.9, 48 ), Angle( 0, 40, 15 ), "running_light" },
	[5] = { Vector( 36, 96.9, 48 ), Angle( 180, -40, 165 ), "running_light" },

    [6] = { Vector( -28.8, 104, 44.75 ), Angle( 0, 30, 15 ), "front_turn_light" },
	[7] = { Vector( 28.8, 104, 44.75 ), Angle( 180, -30, 165 ), "front_turn_light" },

    [8] = { Vector( -36.9, -115, 53.5 ), Angle( -10, -10, -11 ), "rear_turn_light" },
	[9] = { Vector( 36.9, -115, 53.5 ), Angle( 190, 10, 191 ), "rear_turn_light" }
}

PI.States = {}

PI.States.Headlights = {}
PI.States.Brakes = {
    { 1, "D_RED" },
    { 2, "D_RED" }, { 3, "D_RED" }
}
PI.States.Blink_Left = {
    { 6, "AMBER" },
    { 8, "AMBER" }
}
PI.States.Blink_Right = {
    { 7, "AMBER" },
    { 9, "AMBER" }
}
PI.States.Reverse = {}
PI.States.Running = {
    { 2, "D_RED", 0.25 }, { 3, "D_RED", 0.25 },
    { 4, "S_WHITE", 0.25 }, { 5, "S_WHITE", 0.25 }
}

local V = {
	Name =	name,
	Class = "prop_vehicle_jeep",
	Category = "Cali Police Project",
	Author = "ATLAS",
	Information = "California 2016 Police Interceptor Utility",
	Model =	"models/smcars/2017_ford_explorer_utility_hubcaps.mdl",
	KeyValues = {				
		vehiclescript =	"scripts/vehicles/SuperCars/smc_fordexplorer16.txt"
	},
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = PI

}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end
