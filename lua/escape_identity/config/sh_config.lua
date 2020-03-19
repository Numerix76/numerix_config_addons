--[[ Escape --------------------------------------------------------------------------------------

Escape made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

Echap.Settings.VersionCustom = "1.0.1" --DON'T TOUCH THIS

--Change the language
Echap.Settings.Language = "en"

--Logo of your server (can be from the game or an url). To have a good result please use a square logo
--Put "usesteamprofile" to set the Profile Steam Logo of the player
Echap.Settings.Logo = "https://mtxserv.com/forums/data/avatars/l/49/49891.jpg?1499247238"

--Home text message
Echap.Settings.TexteHome = "we wish you a good game on Your Server Name.\n\n\nIf you have a question or a problem make a message with the '///' to contact the administrator."

--Size of the font of the Home text
Echap.Settings.TexteSize = 30

--URL for the tab Server
Echap.Settings.URLServesTabs = "https://gmod-radio-numerix.mtxserv.com/escape_api/php_api/shb_api.php"

--Enable the compatibility with https://www.gmodstore.com/market/view/updatenotify-discord-inspired-update-notification-system ?
Echap.Settings.UseUpdateNotify = false

--Show Quit button ?
Echap.Settings.QuitButton = true

--Change the actual news
Echap.Settings.News =
{
    name = "Example",
    date = "30/12/2019",
    content = "This is an example of the uptate system\n\nThis is a text whith 2 line break",
}

--[[ -----------------------------------------------------------------------------------------------

        Enabled             =>  Tab enable ?

        Name                =>  Name of the tab

        Desc                =>  Description of the tab

        WebsiteEnabled      =>  Button to open a website ?

        WebsiteURL          =>  Website to open

        DoLoadPanel         =>  TOUCH ONLY IF YOU KNOW WHAT YOU DO

        OnLoadInit          =>  Open this tab on the opening of the menu ? (only one can be on true)

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

    },
    {
        Enabled = true,
        Name = "OPTIONS",
        Desc = "Adjust game settings.",
        DoLoadPanel = "Echap_Tab_Rules",
        OnLoadInit = false,
        Icon = "numerix_echap/settings.png",
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
    },
    --Enable only if you have https://github.com/Tomelyr/Server-Hopping-Bunny
    {
        Enabled = true,
        Name = "SERVERS",
        Desc = "View the community servers !",
        DoLoadPanel = "Echap_Tab_Servers",
        OnLoadInit = false,
        Icon = "numerix_echap/server.png",
    },
}

--Add server that will be show in the server tab
Echap.Settings.Server =
{
    {
        Enabled = true,
        Name = "Example",
        Desc = "Example of description",
        IP = "game-fr-40.mtxserv.com",
        Port = "27120",
    },
}
