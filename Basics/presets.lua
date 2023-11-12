AddCSLuaFile()
EMV_DEBUG = false



local name = "PLACEHOLDER"

local EMV = {}



EMV.Siren = 1

EMV.Color = 255,255,255

EMV.Skin = 0



EMV.BodyGroups = { { 0, 1 } }

EMV.Props = {}



EMV.Auto = {
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 0, 0, 100 ),
		Ang = Angle( 0, 0, 0 )
	}
}



EMV.Meta = {}

EMV.Positions = {}

EMV.Sections = {}

EMV.Patterns = {}

EMV.Sequences = {
	Sequences = {
		{
			Name = "CODE 1",
			Stage = "M1",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Stage = "M2",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Stage = "M3",
			Components = {},
			Disconnect = {}
		}
	},
	Traffic = {
		{
			Name = "LEFT",
			Stage = "L",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "DIVERGE",
			Stage = "D",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "RIGHT",
			Stage = "R",
			Components = {},
			Disconnect = {}
		}
	},
	Illumination = {
		{
			Name = "TAKEDOWN",
			Lights = {},
			Stage = "T",
			Components = {},
			Disconnect = {},
			Icon = "takedown"
		},
		{
			Name = "FULL",
			Lights = {},
			Stage = "F",
			Components = {},
			Disconnect = {},
			Icon = "takedown"
		},
		{
			Name = "LEFT ALLEY",
			Lights = {},
			Stage = "L",
			Components = {},
			Disconnect = {},
			Icon = "left_alley"
		},
		{
			Name = "RIGHT ALLEY",
			Lights = {},
			Stage = "R",
			Components = {},
			Disconnect = {},
			Icon = "right_alley"
		}
	}
}



local PI = {}

PI.Meta = {}

PI.Positions = {}

PI.States = {}

PI.States.Headlights = {}

PI.States.Brakes = {}

PI.States.Blink_Left = {}

PI.States.Blink_Right = {}

PI.States.Reverse = {}

PI.States.Running = {}



local V = {
	Name = name,
	Class = "prop_vehicle_jeep",
	Category = "PLACEHOLDER",
	Author = "ATLAS",
	Information = "PLACEHOLDER",
	Model =	"PLACEHOLDER",
	KeyValues = { vehiclescript = "PLACEHOLDER.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end

if Photon then Photon:OverwriteIndex( name, PI ) end
