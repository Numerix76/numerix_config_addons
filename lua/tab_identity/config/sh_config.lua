--[[ TAB --------------------------------------------------------------------------------------

TAB made by Numerix (https://steamcommunity.com/id/numerix/) 

--------------------------------------------------------------------------------------------------]]

TAB.Settings.VersionCustom = "1.0.0" --DON'T TOUCH THIS

--Change the language
TAB.Settings.Language = "en"

--Show player job ?
TAB.Settings.ShowJob = true

--Good ping
TAB.Settings.PingGood = 50

--Medium ping
TAB.Settings.PingMedium = 100

--Staff ULX group
TAB.Settings.Staff = {
    ["superadmin"] = true,
    ["admin"] = true,
}

if CLIENT then --DON'T TOUCH THIS

    --Action available on players
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
                return TAB.Settings.Staff[ply:GetNWString("usergroup")] 
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
                return TAB.Settings.Staff[ply:GetNWString("usergroup")] 
            end,
        },
        {
            text = "Teleport",
            icon = function(ply, selected) 
                return "numerix_tab/teleport.png"
            end,
            func = function(ply, selected) 
                ply:ConCommand('ulx teleport "'..selected:Name()..'"') 
            end,
            visible = function(ply) 
                return TAB.Settings.Staff[ply:GetNWString("usergroup")] 
            end,
        },
        {
            text = "Goto",
            icon = function(ply, selected) 
                return "numerix_tab/goto.png"
            end,
            func = function(ply, selected) 
                ply:ConCommand('ulx goto "'..selected:Name()..'"') 
            end,
            visible = function(ply) 
                return TAB.Settings.Staff[ply:GetNWString("usergroup")] 
            end,
        },
        {
            text = "Return",
            icon = function(ply, selected) 
                return "numerix_tab/return.png"
            end,
            func = function(ply, selected) 
                ply:ConCommand('ulx return "'..selected:Name()..'"') 
            end,
            visible = function(ply) 
                return TAB.Settings.Staff[ply:GetNWString("usergroup")]
            end,
        },
        {
            text = "Spectate",
            icon = function(ply, selected) 
                return "numerix_tab/spectate.png"
            end,
            func = function(ply, selected) 
                ply:ConCommand('FSpectate '..selected:UserID()) 
            end,
            visible = function(ply) 
                return FAdmin.Access.PlayerHasPrivilege(ply, "Spectate")
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
                    ply:ConCommand('ulx unfreeze "'..selected:Name()..'"') 
                else
                    ply:ConCommand('ulx freeze "'..selected:Name()..'"') 
                end 
            end,
            visible = function(ply) 
                return TAB.Settings.Staff[ply:GetNWString("usergroup")] 
            end,
        },
        {
            text = "SetTeam",
            icon = function(ply, selected) 
                return "numerix_tab/setteam.png"
            end,
            func = function(ply, selected) 
                TAB.OpenSetTeam(selected:UserID())
            end,
            visible = function(ply) 
                return FAdmin.Access.PlayerHasPrivilege(ply, "SetTeam")
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
                    RunConsoleCommand("_FAdmin", "SetNoclip", selected:UserID(), 1)
                else
                    RunConsoleCommand("_FAdmin", "SetNoclip", selected:UserID(), 0)
                end 
            end,
            visible = function(ply) 
                return FAdmin.Access.PlayerHasPrivilege(ply, "SetNoclip")
            end,
        },
        {
            text = "Cloack/Uncloack",
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
                return FAdmin.Access.PlayerHasPrivilege(ply, "Cloak")
            end,
        },
    }
end--DON'T TOUCH THIS