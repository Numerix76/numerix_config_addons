--[[ TAB --------------------------------------------------------------------------------------

TAB made by Numerix (https://steamcommunity.com/id/numerix/) 

--------------------------------------------------------------------------------------------------]]

TAB.Settings.VersionCustom = "1.0.9" --DON'T TOUCH THIS

--Change the language
TAB.Settings.Language = "en"

--Keep empty to show anything of option below
--Put "job" to show ONLY the job of the player
--Put "rank" to show ONLY the rank of the player
--Put "job+rank" to show the job and the rank of the player
TAB.Settings.ShowJobULX = "job+rank"

--Same as above but only for member of TAB.Settings.Staff. If empty the config above will have the priority
TAB.Settings.ShowJobULXAdmin = "job+rank"

--Change the color of the name and the job or rank depending of the color of the job ?
TAB.Settings.ColorJob = false

--Use the color of the team as a backgroud ? (Don't have ColorJob enable or the text will be invisible)
TAB.Settings.UseColorTeamBG = false

--Possibility to click on a player and see more action (Only for DarkRP)
TAB.Settings.PlayerTab = true

--Good ping
TAB.Settings.PingGood = 50

--Medium ping
TAB.Settings.PingMedium = 100

--Staff ULX group
TAB.Settings.Staff = {
    ["superadmin"] = true,
    ["admin"] = true,
}

--Background of the menu (can be from the game or an url).  To have a good result please use a 1920x1080.
--Put blur to have blur or color to choose a color
--Keep empty to disable
TAB.Settings.Background = "blur"

--Please be sure to change the name of this at the first config and when you update the config if you use a web image. (don't remove the .png)
TAB.Settings.BackgroundName = "your_server_name/backgroud1.png"

--Only work if Echap.Settings.Background = "color"
TAB.Settings.BackgroundColor = Color(0,0,0,255)

--Hide all HUD when the TAB is open ?
TAB.Settings.HideHUD = true

--Change the name of a rank to be show (if a rank is not present here the script will show the basic name)
TAB.Settings.RankName = {
    ["superadmin"] = "Superadmin",
    ["admin"] = "Admin",
    ["user"] = "User",
}

if CLIENT then --DON'T TOUCH THIS

    --Action available on players
    --Some of them use the Fadmin command use on DarkRP so you have to change command to an available and remove 
    --"DarkRP and !DarkRP.disabledDefaults["modules"]["fadmin"] and" in visible

    --Please be sure to change the name of (for example) 'your_server_name/icon1.png' at the first config and when you update the config if you use a web image. (don't remove the .png)
    TAB.Settings.ActionPlayer = {
        {
            text = "Mute/UnMute",
            icon = function(ply, selected) 
                if selected:IsMuted() then
                    return "numerix_tab/mute.png", "your_server_name/icon1.png" 
                else
                    return "numerix_tab/unmute.png", "your_server_name/icon2.png" 
                end 
            end,
            func = function(ply, selected) 
                if selected:IsMuted() then
                    selected:SetMuted(false)
                else
                    selected:SetMuted(true)
                end
            end,
            visible = function(ply) 
                return true 
            end,
        },
        {
            text = "Copy SteamID",
            icon = function(ply, selected) 
                return "numerix_tab/steam.png", "your_server_name/icon3.png" 
            end,
            func = function(ply, selected) 
                SetClipboardText(selected:SteamID()) 
                ply:TABChatInfo( "SteamID copied", 2 )
            end,
            visible = function(ply) 
                return true 
            end,
        },
        {
            text = "Ban",
            icon = function(ply, selected) 
                return "numerix_tab/ban.png", "your_server_name/icon4.png" 
            end,
            func = function(ply, selected) 
                TAB.OpenBanDialog(selected:UserID()) 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx ban")
            end,
        },
        {
            text = "Kick",
            icon = function(ply, selected) 
                return "numerix_tab/kick.png", "your_server_name/icon5.png" 
            end,
            func = function(ply, selected) 
                TAB.OpenKickDialog(selected:Name()) 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx kick")
            end,
        },
        {
            text = "Teleport",
            icon = function(ply, selected) 
                return "numerix_tab/teleport.png", "your_server_name/icon6.png" 
            end,
            func = function(ply, selected) 
                RunConsoleCommand("ulx", "teleport", selected:Name()) 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx teleport")
            end,
        },
        {
            text = "Goto",
            icon = function(ply, selected) 
                return "numerix_tab/goto.png", "your_server_name/icon7.png" 
            end,
            func = function(ply, selected) 
                RunConsoleCommand("ulx", "goto", selected:Name()) 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx goto")
            end,
        },
        {
            text = "Return",
            icon = function(ply, selected) 
                return "numerix_tab/return.png", "your_server_name/icon8.png" 
            end,
            func = function(ply, selected) 
                RunConsoleCommand("ulx", "return", selected:Name()) 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx return")
            end,
        },
        {
            text = "Spectate",
            icon = function(ply, selected) 
                return "numerix_tab/spectate.png", "your_server_name/icon9.png" 
            end,
            func = function(ply, selected) 
                RunConsoleCommand("FSpectate", selected:UserID()) 
            end,
            visible = function(ply) 
                return DarkRP and !DarkRP.disabledDefaults["modules"]["fadmin"] and FAdmin.Access.PlayerHasPrivilege(ply, "Spectate")
            end,
        },
        {
            text = "Freeze/Unfreeze",
            icon = function(ply, selected) 
                if selected:IsFrozen() then
                    return "numerix_tab/freeze.png", "your_server_name/icon10.png" 
                else
                    return "numerix_tab/unfreeze.png", "your_server_name/icon11.png" 
                end 
            end,
            func = function(ply, selected) 
                if selected:IsFrozen() then
                    RunConsoleCommand("ulx", "unfreeze", selected:Name()) 
                else
                    RunConsoleCommand("ulx", "freeze", selected:Name()) 
                end 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx freeze") and ply:query("ulx unfreeze")
            end,
        },
        {
            text = "SetTeam",
            icon = function(ply, selected) 
                return "numerix_tab/setteam.png", "your_server_name/icon12.png" 
            end,
            func = function(ply, selected) 
                TAB.OpenSetTeam(selected:UserID())
            end,
            visible = function(ply) 
                return DarkRP and !DarkRP.disabledDefaults["modules"]["fadmin"] and FAdmin.Access.PlayerHasPrivilege(ply, "SetTeam")
            end,
        },
        {
            text = "NoClip",
            icon = function(ply, selected) 
                if selected:FAdmin_GetGlobal("FADmin_DisableNoclip") then 
                    return "numerix_tab/noclipoff.png", "your_server_name/icon13.png" 
                else
                    return "numerix_tab/noclipon.png", "your_server_name/icon14.png" 
                end
            end,
            func = function(ply, selected) 
                if selected:FAdmin_GetGlobal("FADmin_DisableNoclip") then
                    RunConsoleCommand("_FAdmin", "SetNoclip", selected:UserID(), "1")
                else
                    RunConsoleCommand("_FAdmin", "SetNoclip", selected:UserID(), "0")
                end 
            end,
            visible = function(ply) 
                return DarkRP and !DarkRP.disabledDefaults["modules"]["fadmin"] and FAdmin.Access.PlayerHasPrivilege(ply, "SetNoclip")
            end,
        },
        {
            text = "Cloack",
            icon = function(ply, selected) 
                if not selected:FAdmin_GetGlobal("FAdmin_cloaked") then
                    return "numerix_tab/cloackoff.png", "your_server_name/icon15.png" 
                else
                    return "numerix_tab/cloackon.png", "your_server_name/icon16.png" 
                end
            end,
            func = function(ply, selected) 
                if not selected:FAdmin_GetGlobal("FAdmin_cloaked") then
                    RunConsoleCommand("_FAdmin", "Cloak", selected:UserID())
                else
                    RunConsoleCommand("_FAdmin", "Uncloak", selected:UserID())
                end
            end,
            visible = function(ply) 
                return DarkRP and !DarkRP.disabledDefaults["modules"]["fadmin"] and FAdmin.Access.PlayerHasPrivilege(ply, "Cloak")
            end,
        },
    }
end--DON'T TOUCH THIS
