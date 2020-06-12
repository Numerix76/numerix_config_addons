--[[ Escape --------------------------------------------------------------------------------------

Escape made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

Echap.Settings.VersionCustom = "1.0.7" --DON'T TOUCH THIS

--Change the language
Echap.Settings.Language = "en"

--Logo of your server (can be from the game or an url). To have a good result please use a square logo
--Put "usesteamprofile" to set the Profile Steam Logo of the player
Echap.Settings.Logo = "https://mtxserv.com/forums/data/avatars/l/49/49891.jpg?1499247238"

--Background of the menu (can be from the game or an url).  To have a good result please use a 1920x1080.
--Keep empty to disable
Echap.Settings.Background = ""

--Home text message (%s = Name of player)
Echap.Settings.TexteHome = [[Welcome,
%s we wish you a good game on Your Server Name.


If you have a question or a problem make a message with the '///' to contact the administrator.]]

--Size of the font of the Home text
Echap.Settings.TexteSize = 30

--URL for the tab Server
Echap.Settings.URLServesTabs = "https://gmod-radio-numerix.mtxserv.com/escape_api/php_api/shb_api.php"

--Enable the compatibility with https://www.gmodstore.com/market/view/updatenotify-discord-inspired-update-notification-system ?
Echap.Settings.UseUpdateNotify = false

--Change the actual news
Echap.Settings.News =
{
    name = "Example",
    date = "30/12/2019",
    content = [[This is an example of the uptate system
    
This is a text whith 2 line break]],
}

--Show the time of the message ? (Chat)
Echap.Settings.timeStamps = true

--Show a tag behind the message (not on all) ? (Chat)
Echap.Settings.ChatTags = true

--Tags to be show (Chat)
Echap.Settings.Tags = {
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

Echap.Settings.Navigation =
{
     {
        Enabled = true,
        Name = "RESUME",
        Desc = "Resume the game !",
        DoLoadPanel = "Echap_Tab_Home",
        OnLoadInit = false,
        Icon = "numerix_echap/play-button.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
        DoFunc = function()
            Echap:Launch()
        end
    },
    {
        Enabled = true,
        Name = "NEWS",
        Desc = "Learn about the latest news from the server.",
        DoLoadPanel = "Echap_Tab_News",
        OnLoadInit = false,
        Icon = "numerix_echap/newspaper.png",
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
        DoLoadPanel = "Echap_Tab_Chat",
        OnLoadInit = false,
        Icon = "numerix_echap/chat.png",
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
        Name = "OPTIONS",
        Desc = "Adjust game settings.",
        DoLoadPanel = "Echap_Tab_Rules",
        OnLoadInit = false,
        Icon = "numerix_echap/settings.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        ColorSelected = Color(47, 174, 79, 100),
        DoFunc = function()
            RunConsoleCommand("gamemenucommand", "openoptionsdialog")
            timer.Simple( 0, function() RunConsoleCommand("gameui_activate") end )
        end
    },
    {
        Enabled = true,
        Name = "WEBSITE",
        Desc = "Access our site.",
        WebsiteEnabled = true,
        WebsiteURL = "https://google.com/",
        Icon = "numerix_echap/cursor.png",
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
        Name = "SERVERS",
        Desc = "View the community servers !",
        DoLoadPanel = "Echap_Tab_Servers",
        OnLoadInit = false,
        Icon = "numerix_echap/server.png",
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

--Add server that will be show in the server tab
Echap.Settings.Server =
{
    {
        Enabled = true,
        Name = "Example",
        Desc = [[Example of description]],
        IP = "game-fr-40.mtxserv.com",
        Port = "27120",
        Map = true,
    },
}
