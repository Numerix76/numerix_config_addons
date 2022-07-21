--[[ OpenScript --------------------------------------------------------------------------------------

OpenScript made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

OpenScript.Settings.VersionCustom = "1.0.2" --DON'T TOUCH THIS

--Change the language
OpenScript.Settings.Language = "en"

--Name of your Community
OpenScript.Settings.Community = "mtxServ"

--Color for the Community
OpenScript.Settings.ColorCommunity = Color(255,255,255,255)

--Color for the time left
OpenScript.Settings.ColorTimeLeft = Color(255,255,255,255)

--Opening time
OpenScript.Settings.Horaire = 4119858000 --/!\ go to http://www.timestamp-tool.fr/ to get the value

--Color of the Backgroud
OpenScript.Settings.BackGroundColor = Color(0,0,0,255)

--Background of the menu (can be from the game or an url).  To have a good result please use a 1920x1080.
--Put blur to have blur or color to choose a color
--Keep empty to disable
OpenScript.Settings.Background = "color"

--Only work if F4Menu.Settings.Background = "color"
OpenScript.Settings.BackgroundColor = Color(0,0,0,255)

--Buttons config
--Please be sure to change the name of OpenScript.Settings.LinkXName at the first config and when you update the config if you use a web image. (don't remove the .png)
OpenScript.Settings.Link1Text = "Website"
OpenScript.Settings.Link1URL = "https://mtxserv.com"
OpenScript.Settings.Link1IMG = "numerix_context/site.png"

OpenScript.Settings.Link2Text = "Shop"
OpenScript.Settings.Link2URL = "https://mtxserv.com/fr/hebergeur-serveur-garry-s-mod"
OpenScript.Settings.Link2IMG = "numerix_context/boutique.png"

OpenScript.Settings.Link3Text = "Forum"
OpenScript.Settings.Link3URL = "https://mtxserv.com/forums"
OpenScript.Settings.Link3IMG = "numerix_context/forum.png"

OpenScript.Settings.DisconnectIMG = "numerix_echap/disconnect.png"

--ULX group that can bypass
OpenScript.Settings.GroupeBypass = {
    ["superadmin"] = true,
    ["admin"] = true,
}

--SteamID of player that can bypass
OpenScript.Settings.SteamIDBypass = {
    ["STEAM_0:0:0000"] = true,
}
