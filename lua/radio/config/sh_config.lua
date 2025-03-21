--[[ Radio --------------------------------------------------------------------------------------

Radio made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

Radio.Settings.VersionCustom = "3.0.0" --DON'T TOUCH THIS

--If debug true then if there is a problem you will have the line related in the console
Radio.Settings.Debug = false

--Change the language
Radio.Settings.Language = "en"

--If set to true, the addon will use the HTTP library from the game for running music. You will not being able to see the status of the conversion.
--If set to false, the addon will need GWSocket (see : https://steamcommunity.com/sharedfiles/filedetails/?id=1989484474). You wiil be able to see the status of the conversion.
Radio.Settings.DegradeMode = false

--Change the distance max of the radio
Radio.Settings.DistanceSoundRadio = 400

--Change the distance max of the server
Radio.Settings.DistanceSoundServer = 400

--The player is not able to put his music with a radio ?
Radio.Settings.ActivePresetOnlyRadio = false

--The player is not able to put his music with a server ?
Radio.Settings.ActivePresetOnlyServer = false

--Player are able to change the time of the music ? (This can cause a little freeze on all player during this)
Radio.Settings.Seek = true

--Max duration for a sound.
Radio.Settings.MaxDuration = 15*60

--Do you want to enable the radio entity ?
Radio.Settings.EnableEntity = true

--Do you want to enable the radio swep ?
Radio.Settings.EnableSWEP = true

--Do you want to enable the radio in vehicle ?
Radio.Settings.EnableVehicle = true

--The job radio win more money on how much auditors he has ?
Radio.Settings.MakeSalary = true

--How much the job radio win more on how much auditors he has ?
Radio.Settings.Salary = 10

--All vehicle spawn with a radio in it ?
Radio.Settings.VehicleSpawnRadio = false

--Can radio in vehicle can be retrieve from it when they have spawned with it ?
Radio.Settings.VehicleSpawnRadioRetrieve = false

-- The music of a vehicle is only listenable if the player is inside the vehicle ?
Radio.Settings.VehicleSoundOnly = true

--Allow the radio to explode if took too much damage ?
Radio.Settings.ExplodeDamage = true

--How much health do the radio have ?
Radio.Settings.RadioHealth = 200

--How much health do the server have ?
Radio.Settings.ServerHealth = 300

hook.Add( "DarkRPFinishedLoading", "Radio:DarkRPInitialized", function() --DON'T TOUCH THIS
	--Put the TEAM of your job radio
	Radio.Settings.TeamRadio = TEAM_CITIZEN
end)--DON'T TOUCH THIS

--Add music preset
Radio.Settings.Preset = {
	["https://www.youtube.com/watch?v=4cFD-5w5cyA"] = "Panda Eyes - Crystal Cave",
	["https://www.youtube.com/watch?v=LKALcthKSwA"] = "Noisestorm - Sentinel",
	["https://gmod-radio-numerix.mtxserv.com/exemple/Dennis%20Lloyd%20-%20NEVERMIND.mp3"] = "NeverMind",
	["https://soundcloud.com/roddyricch/the-box"] = "The Box",
}

Radio.Settings.Navigation =
{
	{
		Enabled = true,
		Name = "MAIN",
		Desc = "See the main information of the radio.",
		DoLoadPanel = "Radio_Main",
		OnLoadInit = true,
		Icon = "numerix_radio/home.png",
		IconName = "your_server_name/home.png",
		Visible = function(ply, radio) return true end,
	},
	{
		Enabled = true,
		Name = "SEARCH YOUTUBE",
		Desc = "Make a search on youtube.",
		DoLoadPanel = "Radio_Search",
		type = 1,
		OnLoadInit = false,
		Icon = "numerix_radio/youtube.png",
		IconName = "your_server_name/youtube.png",
		Visible = function(ply, radio) return (radio:IsServer() and !Radio.Settings.ActivePresetOnlyServer) or (!radio:IsServer() and !Radio.Settings.ActivePresetOnlyRadio) end,
	},
	{
		Enabled = true,
		Name = "SEARCH SOUDCLOUD",
		Desc = "Make a search on soundcloud.",
		DoLoadPanel = "Radio_Search",
		type = 2,
		OnLoadInit = false,
		Icon = "numerix_radio/soundcloud.png",
		IconName = "your_server_name/soundcloud.png",
		Visible = function(ply, radio) return (radio:IsServer() and !Radio.Settings.ActivePresetOnlyServer) or (!radio:IsServer() and !Radio.Settings.ActivePresetOnlyRadio) end,
	},
	{
		Enabled = true,
		Name = "PRESET",
		Desc = "See preset of the server.",
		DoLoadPanel = "Radio_Preset",
		OnLoadInit = false,
		Icon = "numerix_radio/preset.png",
		IconName = "your_server_name/preset.png",
		Visible = function(ply, radio) return true end,
	}, 
	{
		Enabled = true,
		Name = "SETTINGS",
		Desc = "Settings of the radio.",
		DoLoadPanel = "Radio_Settings",
		OnLoadInit = false,
		Icon = "numerix_radio/settings.png",
		IconName = "your_server_name/settings.png",
		Visible = function(ply, radio) return true end,
	},
	
	{
		Enabled = true,
		Name = "PICK UP",
		Desc = "Pick Up the radio.",
		OnLoadInit = false,
		Icon = "numerix_radio/pickup.png",
		IconName = "your_server_name/pickup.png",
		DoFunc = function(menu, radio)
			net.Start("Radio:Take")
			net.WriteEntity(radio:GetParent())
			net.SendToServer()

			menu:Close()
		end,
		Visible = function(ply, radio) return Radio.Settings.EnableSWEP and !radio:IsWeapon() and !radio:IsServer() and !ply:HasWeapon("numerix_radio_swep") end,
	},
}
