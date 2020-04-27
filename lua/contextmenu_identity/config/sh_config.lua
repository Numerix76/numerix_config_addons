--[[ ContextMenu Identity --------------------------------------------------------------------------------------

ContextMenu Identity made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

ContextMenuIdentity.Settings.VersionDefault = "1.0.2" --DON'T TOUCH THIS

--Change the language
ContextMenuIdentity.Settings.Language = "en"

if CLIENT then --DON'T TOUCH THIS

	--Logo of your server (can be from the game or an url). To have a good result please use a square logo
	--Put "usesteamprofile" to set the Profile Steam Logo of the player
	ContextMenuIdentity.Settings.Logo = "usesteamprofile"

	--Name of the server
	ContextMenuIdentity.Settings.Server = "mtxServ"

	--Border right (0 = no space)
	ContextMenuIdentity.Settings.Border = ScrW()/1.03

	--Sier of the server text
	ContextMenuIdentity.Settings.ServerSize = 30

	--2 buttons on 1 line ?
	ContextMenuIdentity.Settings.TwoButton = true

	--Everyone can interact on the map (ex: right click and delete a props) ?
	ContextMenuIdentity.Settings.AllowEveryone = false

	--ULX group that can interact on the map (ex: right click and delete a props
	ContextMenuIdentity.Settings.StaffGroup = {
		["superadmin"] = true,
		["admin"] = true,
	}

	--Don't open the menu when the player have this weapon in hand
	ContextMenuIdentity.Settings.WeaponBlacklist = {
		"dradio",
		"tfa_",
		"cw_",
	}

	--Information show under the logo
	ContextMenuIdentity.Settings.Info =
	{
		{
			Enabled = true,
			Value = function(ply) return "Name : "..ply:Name() end,
		},
		{
			Enabled = true,
			Value = function(ply) return "SteamID :"..ply:SteamID() end,
		},
		{
			Enabled = true,
			Value = function(ply) return "Money :"..ply:getDarkRPVar("money").."$" end,
		},
		{
			Enabled = true,
			Value = function(ply) 
				if DarkRP.disabledDefaults["modules"]["hungermod"] then
					return "Health : "..ply:Health().."  Amor : "..ply:Armor() 
				else
					return "Health : "..ply:Health().."  Amor : "..ply:Armor().."  Food : "..math.Round(ply:getDarkRPVar( "Energy" ))
				end
			end,
		},
	}
	--[[ -----------------------------------------------------------------------------------------------

			Visibility          =>  Button visible ? (Work like the customCheck of DarkRP)

			Name                =>  Name of the button

			Desc                =>  Description of the button

			Icon				=>  Icone of the button (keep empty to remove)

			NotDrawLine			=> 	Don't show a line around the button ?

			ColorLine			=> 	Color of the line around the button

			ColorBase			=>	Color of the button background

			ColorHover			=>	Color of the button when you are hover it or press it

			ColorText			=> 	Color of the text

			ColorImage 			=>	Color of the image
			
			DoFunc				=>  Action to execute

			Space				=>  Make a space ? example : 	{
																	Visibility = function(ply) 
																		return true
																	end,
																	Space = true,   
																}, 

	--------------------------------------------------------------------------------------------------]]
	ContextMenuIdentity.Settings.Button =
	{
		{
			Visibility = function(ply) 
				return true
			end,
			Name = "Drop money",
			Desc = "Drop money",
			Space = false,
			Icon = "numerix_context/money.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				ContextMenuIdentity.OpenTextEntry("Drop Money", "How much ?", "/dropmoney")
			end,
		},
		{
			Visibility = function(ply) 
				return true
			end,
			Name = "Drop weapon",
			Desc = "Drop your actual weapon.",
			Space = false,
			Icon = "numerix_context/weapons.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				ply:ConCommand("say /drop")
			end,
		},
		{
			Visibility = function(ply) 
				return true
			end,
			Name = "Call an admin",
			Desc = "Call an admin if you have trouble.",
			Space = false,
			Icon = "numerix_context/staff.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				ContextMenuIdentity.OpenTextEntry("Call an admin", "What is your problem ?", "///")
			end,
		},
		{
			Visibility = function(ply) 
				return true
			end,
			Space = true,   
		},
		{
			Visibility = function(ply) 
				return true
			end,
			Name = "Discord",
			Desc = "Link for the discord server.",
			Space = false,
			Icon = "numerix_context/discord.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				gui.OpenURL("https://discord.gg")
			end,
		},
		{
			Visibility = function(ply) 
				return true
			end,
			Name = "WebSite",
			Desc = "Link for the website.",
			Space = false,
			Icon = "numerix_context/site.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				gui.OpenURL("https://google.com")
			end,
		},
		{
			Visibility = function(ply) 
				return true
			end,
			Name = "Forum",
			Desc = "Link for the forum.",
			Space = false,
			Icon = "numerix_context/forum.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				gui.OpenURL("https://google.com")
			end,
		},
		{
			Visibility = function(ply) 
				return ContextMenuIdentity.Settings.StaffGroup[ply:GetUserGroup()]
			end,
			Name = "Shop",
			Desc = "Link for the shop.",
			Space = false,
			Icon = "numerix_context/boutique.png",
			NotDrawLine = false,
			ColorLine = Color( 255, 255, 255, 100 ),
			ColorBase = Color(33, 31, 35, 200),
			ColorHover = Color( 0, 0, 0, 100 ),
			ColorText = Color( 255, 255, 255, 255 ),
			ColorImage = Color(255,255,255,255),
			DoFunc = function(ply)
				gui.OpenURL("https://google.com")
			end,
		},

	}
end--DON'T TOUCH THIS
