--[[ ServerInfo --------------------------------------------------------------------------------------

ServerInfo made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

ServerInfo.Settings.VersionCustom = "1.0.0" --DON'T TOUCH THIS

--Change the language
ServerInfo.Settings.Language = "en"

--Show the name above the NPC ?
ServerInfo.Settings.ShowName3D = true

--Name to show above NPC
ServerInfo.Settings.Name = "Guide"

--Model of the NPC
ServerInfo.Settings.Model = "models/breen.mdl"

--Name of your server
ServerInfo.Settings.Server = "Your server name"

--[[ -----------------------------------------------------------------------------------------------

    Visibility          =>  Button visible ? (Work like the customCheck of DarkRP)

    Name                =>  Name of the button

    Icon				=>  Icone of the button (keep empty to remove)

    NotDrawLine			=> 	Don't show a line around the button ?

    ColorLine			=> 	Color of the line around the button

    ColorBase			=>	Color of the button background

    ColorHover			=>	Color of the button when you are hover it or press it

    ColorText			=> 	Color of the text

    ColorImage 			=>	Color of the image

    WebSiteEnabled      =>  Open a website when click on the button ?
       
    WebSiteURL          =>  URL of the website

    DoFunc				=>  Action to execute (WebSiteEnabled must be false)

--------------------------------------------------------------------------------------------------]]
ServerInfo.Settings.Info = {
    {
        Visibility = function(ply) 
            return true
        end,
        Name = "Collection",
        Icon = "numerix_serverinfo/steam.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        WebSiteEnabled = true,
        WebSiteURL = "https://www.google.com/",
        DoFunc = function(ply)
        end,
    },

    {
        Visibility = function(ply) 
            return true
        end,
        Name = "Discord",
        Icon = "numerix_serverinfo/discord.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        WebSiteEnabled = true,
        WebSiteURL = "https://www.google.com/",
        DoFunc = function(ply)
        end,
    },

    {
        Visibility = function(ply) 
            return true
        end,
        Name = "Forum",
        Icon = "numerix_serverinfo/forum.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        WebSiteEnabled = true,
        WebSiteURL = "https://www.google.com/",
        DoFunc = function(ply)
        end,
    },

    {
        Visibility = function(ply) 
            return true
        end,
        Name = "Boutique",
        Icon = "numerix_serverinfo/boutique.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        WebSiteEnabled = true,
        WebSiteURL = "https://www.google.com/",
        DoFunc = function(ply)
        end,
    },

    {
        Visibility = function(ply) 
            return true
        end,
        Name = "Steam Group",
        Icon = "numerix_serverinfo/steam.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        WebSiteEnabled = true,
        WebSiteURL = "https://www.google.com/",
        DoFunc = function(ply)
        end,
    },

    {
        Visibility = function(ply) 
            return true
        end,
        Name = "Rules",
        Icon = "numerix_serverinfo/rules.png",
        NotDrawLine = false,
        ColorLine = Color( 255, 255, 255, 100 ),
        ColorBase = Color(33, 31, 35, 200),
        ColorHover = Color( 0, 0, 0, 100 ),
        ColorText = Color( 255, 255, 255, 255 ),
        ColorImage = Color(255,255,255,255),
        WebSiteEnabled = false,
        WebSiteURL = "https://www.google.com/",
        DoFunc = function(ply)
            ServerInfo.TextMenu("Rules of the server", 
[[1. Don't freekill
2. Example
3. Example
4. Example
5. Example
6. Example]])
        end,
    },
}
