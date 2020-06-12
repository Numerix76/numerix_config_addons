--[[ F4menu --------------------------------------------------------------------------------------

F4Menu made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

F4Menu.Settings.VersionCustom = "1.0.6" --DON'T TOUCH THIS

--Change the language
F4Menu.Settings.Language = "en"

--Logo of your server (can be from the game or an url). To have a good result please use a square logo
--Put "usesteamprofile" to set the Profile Steam Logo of the player
F4Menu.Settings.Logo = "https://mtxserv.com/forums/data/avatars/l/49/49891.jpg?1499247238"

--Background of the menu (can be from the game or an url).  To have a good result please use a 1920x1080.
--Keep empty to disable
F4Menu.Settings.Background = ""

--Home text message (%s = Name of player)
F4Menu.Settings.TexteHome = [[Welcome, 

%s we wish you a good game on Your Server Name.]]

--Size of the font of the Home text
F4Menu.Settings.TexteSize = 30

--Show number of slot for job ?
F4Menu.Settings.ShowSlot = true

--Show Model of job ?
F4Menu.Settings.ShowModel = true

--Show the time of the message ? (Chat)
F4Menu.Settings.timeStamps = true

--Show a tag behind the message (not on all) ? (Chat)
F4Menu.Settings.ChatTags = true

--Tags to be show (Chat)
F4Menu.Settings.Tags = {
    ["superadmin"] = {
        name = "Superadmin",
        color = Color(255,0,0,255),
    },
    ["admin"] = {
        name = "Admin",
        color = Color(0,255,0,255),
    },
}

--[[ -----------------------------------------------------------------------------------------------

        Enabled             =>  Tab enable ?

        Name                =>  Name of the tab

        Desc                =>  Description of the tab

        WebsiteEnabled      =>  Button to open a website ?

        WebsiteURL          =>  Website to open

        DoLoadPanel         =>  TOUCH ONLY IF YOU KNOW WHAT YOU DO

        OnLoadInit          =>  Open this tab on the opening of the menu ? 
                                (only one can be on true) (the first one will be show) (don't work if there is a DoFunc)

        Icon                =>  Change the icon of a button (need to be a .png, white and 32x32 )

        NotDrawLine         =>  Draw a line around the button ?
        
        Color...            =>  Change the color of an element of the button
        
        DoFunc              =>  Disallow the DoLoadPanel and run the function

--------------------------------------------------------------------------------------------------]]

F4Menu.Settings.Navigation =
{
     {
        Enabled = true,
        Name = "RESUME",
        Desc = "Resume the game !",
        DoLoadPanel = "F4Menu_Tab_Home",
        OnLoadInit = false,
        Icon = "numerix_f4menu/play-button.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
        DoFunc = function()
            F4Menu:Launch()
        end,
    },
	{
        Enabled = true,
        Name = "COMMANDS",
        Desc = "Commands useful on our server.",
        DoLoadPanel = "F4Menu_Tab_Commands",
        OnLoadInit = false,
        Icon = "numerix_f4menu/commandes.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "CHAT",
        Desc = "Discuss we people on the server.",
        DoLoadPanel = "F4Menu_Tab_Chat",
        OnLoadInit = false,
        Icon = "numerix_f4menu/chat.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "JOBS",
        Desc = "Choose a job.",
        DoLoadPanel = "F4Menu_Tab_Jobs",
        OnLoadInit = false,
        Icon = "numerix_f4menu/jobs.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "ENTITIES",
        Desc = "Buy an entity.",
        DoLoadPanel = "F4Menu_Tab_Entities",
        OnLoadInit = false,
        Icon = "numerix_f4menu/entities.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "WEAPONS",
        Desc = "Buy a weapon.",
        DoLoadPanel = "F4Menu_Tab_Weapons",
        OnLoadInit = false,
        Icon = "numerix_f4menu/weapons.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "SHIPMENTS",
        Desc = "Buy a shipments.",
        DoLoadPanel = "F4Menu_Tab_Shipments",
        OnLoadInit = false,
        Icon = "numerix_f4menu/shipments.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "AMMOS",
        Desc = "Buy ammos.",
        DoLoadPanel = "F4Menu_Tab_Ammo",
        OnLoadInit = false,
        Icon = "numerix_f4menu/ammo.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    },
    {
        Enabled = true,
        Name = "FOOD",
        Desc = "Buy food.",
        DoLoadPanel = "F4Menu_Tab_Food",
        OnLoadInit = false,
        Icon = "numerix_f4menu/food.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
    }, 
    
    {
        Enabled = true,
        Name = "QUIT",
        Desc = "Quit the server",
        DoLoadPanel = "Echap_Tab_Servers",
        OnLoadInit = false,
        Icon = "numerix_echap/disconnect.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
        DoFunc = function()
            RunConsoleCommand("disconnect")
        end
    },
}

--Color backgroud for items
F4Menu.Settings.BackPanelColor = Color( 159, 159, 159, 75 )

--Color backgroud for items that are not available
F4Menu.Settings.BackPanelNoAccessColor = Color(255, 0, 0, 100)

F4Menu.Settings.Commandes = {
    ["Money"] = {
        visible = function() return true end,
        colorhead = Color( 47, 174, 79, 100 ),
        action = {
            ["Give money to the man in front of you"]  = function() F4Menu.OpenTextBox( "Give money", "How much ?", "/give" ) end,
            ["Drop money"] = function() F4Menu.OpenTextBox( "Drop money", "How much ?", "/moneydrop" ) end,
        },
    },
    ["Roleplay"] = {
        visible = function() return true end,
        colorhead = Color( 47, 174, 79, 100 ),
        action = {
            ["Drop weapon"]  = function() RunConsoleCommand( "say", "/drop" ) end,
            ["Request a weapon license"] = function() RunConsoleCommand( "say", "/requestlicense" ) end,
            ["Sell ​​all doors"] = function() RunConsoleCommand( "say", "/unownalldoors" ) end,
        },
    },
    ["Police"] = {
        visible = function(ply) return F4Menu.AccessToCPCmds[ply:Team()] end,
        colorhead = Color(0, 0, 255, 100),
        action = {
            ["Wanted a player"]  = function() F4Menu.OpenPlyReasonBox( "Wanted a player", "Who do you want to wanted ?", "Why do you want to wanted him ?", "/wanted" ) end,
            ["Stop wanted a player"] = function() F4Menu.OpenPlyBox( "Stop wanted a player", "Who do you want to stop wanted ?", "/unwanted" ) end,
            ["Warrant a player"]  = function() F4Menu.OpenPlyReasonBox( "Warrant a player", "Who do you want to warrant ?", "Why do you want warrant him ?", "/warrant" ) end,
        },
    },
    ["Mayor"] = {
        visible = function(ply) return F4Menu.AccessToMayorCmds[ply:Team()] end,
        colorhead = Color(255, 0, 0, 100),
        action = {
            ["Wanted a player"]  = function() F4Menu.OpenPlyReasonBox( "Wanted a player", "Who do you want to wanted ?", "Why do you want to wanted him ?", "/wanted" ) end,
            ["Stop wanted a player"] = function() F4Menu.OpenPlyBox( "Stop wanted a player", "Who do you want to stop wanted ?", "/unwanted" ) end,
            ["Warrant a player"]  = function() F4Menu.OpenPlyReasonBox( "Warrant a player", "Who do you want to ?", "Why do you want warrant him ?", "/warrant" ) end,
            ["Start a lockdown"] = function() RunConsoleCommand( "say", "/lockdown" ) end,
            ["Stop a lockdown"]  = function() RunConsoleCommand( "say", "/unlockdown" ) end,
            ["Place the board of laws"] = function() RunConsoleCommand( "say", "/placelaws" ) end,
            ["Add a law"]  = function() F4Menu.OpenTextBox( "Add a law", "Which law do you want to add ?", "/addlaw" ) end,
            ["Remove a law"] = function() F4Menu.OpenTextBox( "Remove a law", "Which law do yo want to remove (number) ?", "/removelaw" ) end,
        },
    },
    ["Other"] = {
        visible = function() return true end,
        colorhead = Color( 47, 174, 79, 100 ),
        action = {
            ["TeamSpeak"]  = function() RunConsoleCommand( "say", "teamspeak.com" ) end,
            ["Collection"]  = function() RunConsoleCommand( "say", "http://steamcommunity.com" ) end,
            ["Shop"] = function() RunConsoleCommand( "say", "http://google.com/" ) end,
            ["Forum"] = function() RunConsoleCommand( "say", "http://google.com/" ) end,
            ["Steam Group"]  = function() RunConsoleCommand( "say", "http://steamcommunity.com/groups/" ) end,
        },
    },
}

timer.Simple(1, function() --DON'T TOUCH
    --Acces to Police command
    F4Menu.AccessToCPCmds = { 
        --[TEAM_POLICE] = true,
    }

    --Acces to Mayor command
    F4Menu.AccessToMayorCmds = { 
        --[TEAM_MAYOR] = true,
    }
end)
