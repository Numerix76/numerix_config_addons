--[[ Timer Prison --------------------------------------------------------------------------------------

Timer Prison made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

TimerPrison.Settings.VersionCustom = "1.0.2" --DON'T TOUCH THIS

--Change the language
TimerPrison.Settings.Language = "en"

--Sound play on change task
TimerPrison.Settings.SoundFile = "ambient/alarms/klaxon1.wav"

--Position of the HUD (left, right)
TimerPrison.Settings.Pos = "left"

TimerPrison.Settings.Work = {
    {
        work = "Shower", --Name of the task
        duration = 1*60, --Time of the task in seconds
    },
    {
        work = "Work",
        duration = 5*60,
    },
    {
        work = "Sleep",
        duration = 2*60,
    }
}

--Make a whitelist for the HUD ?
TimerPrison.Settings.MakeWhitelist = false

-- TEAM which can see the HUD
timer.Simple(1, function() --DON'T TOUCH THIS
    TimerPrison.Settings.WhitelistTeam = {
        [TEAM_CITIZEN] = true
    }
end) --DON'T TOUCH THIS
