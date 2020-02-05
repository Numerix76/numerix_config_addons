--[[ Timer Prison --------------------------------------------------------------------------------------

Timer Prison made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

TimerPrison.Settings.VersionCustom = "1.0.0" --DON'T TOUCH THIS

--Change the language
TimerPrison.Settings.Language = "en"

--Sound play on change task
TimerPrison.Settings.SoundFile = "ambient/alarms/klaxon1.wav"

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