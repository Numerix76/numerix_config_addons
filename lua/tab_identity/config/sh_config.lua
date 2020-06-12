--[[ TAB --------------------------------------------------------------------------------------

TAB made by Numerix (https://steamcommunity.com/id/numerix/) 

--------------------------------------------------------------------------------------------------]]

TAB.Settings.VersionCustom = "1.0.6" --DON'T TOUCH THIS

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
    TAB.Settings.ActionPlayer = {
        {
            text = "Mute/UnMute",
            icon = function(ply, selected) 
                if selected:IsMuted() then
                    return "numerix_tab/mute.png" 
                else
                    return "numerix_tab/unmute.png"
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
                return "numerix_tab/steam.png" 
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
                return "numerix_tab/ban.png"
            end,
            func = function(ply, selected) 
                TAB.OpenBanDialog(selected:Name()) 
            end,
            visible = function(ply) 
                return ulx and ply:query("ulx ban")
            end,
        },
        {
            text = "Kick",
            icon = function(ply, selected) 
                return "numerix_tab/kick.png"
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
                return "numerix_tab/teleport.png"
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
                return "numerix_tab/goto.png"
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
                return "numerix_tab/return.png"
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
                return "numerix_tab/spectate.png"
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
                    return "numerix_tab/freeze.png"
                else
                    return "numerix_tab/unfreeze.png"
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
                return "numerix_tab/setteam.png"
            end,
            func = function(ply, selected) 
                TAB.OpenSetTeam(selected:Name())
            end,
            visible = function(ply) 
                return DarkRP and !DarkRP.disabledDefaults["modules"]["fadmin"] and FAdmin.Access.PlayerHasPrivilege(ply, "SetTeam")
            end,
        },
        {
            text = "NoClip",
            icon = function(ply, selected) 
                if selected:FAdmin_GetGlobal("FADmin_DisableNoclip") then 
                    return "numerix_tab/noclipoff.png"
                else
                    return "numerix_tab/noclipon.png"
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
                    return "numerix_tab/cloackoff.png"
                else
                    return "numerix_tab/cloackon.png"
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
