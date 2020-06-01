Config = {}
Config.Zones = {}
Config.illegalzone = {}
Config.Locale = 'tr'

Config.MarkerType   = 27
Config.DrawDistance = 100.00
Config.MarkerSize   = {x = 2.0, y = 2.0, z = 1.0}
Config.MarkerColor  = {r = 0, g = 0, b = 255}
Config.illegalMarkerType   = 27
Config.illegalMarkerSize   = {x = 2.0, y = 2.0, z = 1.0}
Config.illegalMarkerColor  = {r = 255, g = 0, b = 0}

Config.BlipHospital = {
	Sprite = 403,
	Color = 2,
	Display = 2,
	Scale = 1.0
}

Config.illegalprice = 999
Config.Price = 25 -- Edit this to your liking.

Config.EnableUnemployedOnly = false
Config.EnableBlips = false
Config.EnablePeds = true

Config.Locations = {
	{ x = 454.67, y = 218.61, z = 102.17, heading =254.88}
}

Config.illegal = {
	{x = 448.67, y = 218.61, z = 102.17, heading =254.88}
}


for i=1, #Config.Locations, 1 do
	Config.Zones['Shop_' .. i] = {
		Pos   = Config.Locations[i],
		Size  = Config.MarkerSize,
		Color = Config.MarkerColor,
		Type  = Config.MarkerType
	}
end

for i=1, #Config.illegal, 1 do
	Config.illegalzone['Shop_' .. i] = {
		Pos   = Config.illegal[i],
		Size  = Config.illegalMarkerSize,
		Color = Config.illegalMarkerColor,
		Type  = Config.illegalMarkerType
	}
end
