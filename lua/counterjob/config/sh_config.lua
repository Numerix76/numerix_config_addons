--[[ Counter Job --------------------------------------------------------------------------------------

Counter Job made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

CounterJob.Settings.VersionCustom = "1.0.2" --DON'T TOUCH THIS

--Change the language
CounterJob.Settings.Language = "en"

if CLIENT then --DON'T TOUCH THIS
    
    --Time between refreshes in seconds (do not set it too low)
    CounterJob.Settings.Refresh = 5
    
    --Show HUD ? (You can use CounterJob.GetInfo() to integrate it where you want)
    CounterJob.Settings.DrawHUD = true

    --Font size
    CounterJob.Settings.TextFont = 20 

    --Text color
    CounterJob.Settings.TextColor = Color(255,255,255,180) 

    --Position of the text on the screen length
    CounterJob.Settings.PosX = function() return ScrW()/2 end

    --Position of the text on the height of the screen
    CounterJob.Settings.PosY = function() return ScrH() end

    --How to align the text along the length of the screen? (Available : https://wiki.garrysmod.com/page/Enums/TEXT_ALIGN)
    CounterJob.Settings.AlignX = TEXT_ALIGN_CENTER 

    --How to align the text on the height of the screen? (Available : https://wiki.garrysmod.com/page/Enums/TEXT_ALIGN)
    CounterJob.Settings.AlignY = TEXT_ALIGN_BOTTOM 

    timer.Simple(1, function() --DON'T TOUCH
        CounterJob.Settings.Team = {
            {
                name = "Police(s)", --Name of the group
                teams = {
                    --[TEAM_POLICE] = true, --TEAM in jobs.lua
                },
            },
            {
                name = "Medic(s)",
                teams = {
                    --[TEAM_MEDIC] = true,
                },
            },
        }
    end)
end--DON'T TOUCH THIS
