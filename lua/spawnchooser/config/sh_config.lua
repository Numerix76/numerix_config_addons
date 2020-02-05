--[[ SpawnChooser --------------------------------------------------------------------------------------

SpawnChooser made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

SpawnChooser.Settings.VersionCustom = "1.0.0" --DON'T TOUCH THIS

--Change the language
SpawnChooser.Settings.Language = "en"

--Your community name
SpawnChooser.Settings.CommunityName = "mtxServ"

--The link to your community website
SpawnChooser.Settings.CommunityLink = "https://mtxserv.com"

timer.Simple(1, function() --DON'T TOUCH

    --Job that don't have acces to the menu
    SpawnChooser.Settings.BlackListTeam = {
        --[TEAM_MEDIC] = true,
    }

    --Spawn location
    SpawnChooser.Settings.Spawn = {
        ["Downtown"] = {
            pos= { 
                Vector(-3104.230225, 5022.685547, -48.678299),
                Vector(-3104.230225, 5022.685547, -48.678299),
                Vector(-3104.230225, 5022.685547, -48.678299),
                Vector(-3104.230225, 5022.685547, -48.678299),
                Vector(-3104.230225, 5022.685547, -48.678299),
            },
            restricted = false, --Spawn available for everyone (replace the line by the line under to use team restriction)

            --[[restricted = {
                [TEAM_CITIZEN] = true, --Spawn only available for Citizen
            },]]
        },
        ["Campaign 1"] = {
            pos= { 
                Vector(-5275.815918, -3097.27002, 136.045258),
                Vector(-4847.570313, -3145.11499, 136.045258),
                Vector(-4701.130371, -2704.57057, 161.021988),
                Vector(-4288.096680, -3071.28516, 182.947571),
                Vector(-4304.501465, -2848.06178, 188.688171),
            },
            restricted = false,
        },
        ["Campaign 2"] = {
            pos= {
                Vector(5456.157227, 4905.093262, 136.031250),
                Vector(5555.863281, 4907.483398, 136.031250),
                Vector(5263.836914, 4941.210938, 136.031250),
                Vector(4985.522949, 4931.463867, 136.031250),
                Vector(4875.036621, 4930.645020, 136.031250),
            },
            restricted = false,
        },
        ["Random"] = {
            pos= {
                Vector(-1489.692993, 10880.8558, 120.910133),
                Vector(2386.851318, 6647.828125, 119.031250),
                Vector(-594.308838, 700.9600876, 131.534119),
                Vector(-355.083405, -4690.95332, 119.031250),
                Vector(-8263.792969, 2932.73896, 119.031250),
            },
            restricted = false,
        },
    }
end)