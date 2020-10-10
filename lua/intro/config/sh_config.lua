--[[ Cinematic Intro --------------------------------------------------------------------------------------

Cinematic Intro made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

Intro.Settings.VersionCustom = "1.0.4" --DON'T TOUCH THIS

--Change the language
Intro.Settings.Language = "en"

--Command allowing the player to launch the intro when he wants (leave empty to desactivate)
Intro.Settings.Commande = "/startintro"

--Key (https://wiki.facepunch.com/gmod/Enums/KEY) to exit the intro.
Intro.Settings.ExitKey = KEY_E

--Use "numerix_addcampos" in order to add easely some scene
Intro.Settings.Map["gm_construct"] = {

    Title = "Welcome on Name of Server", --Put a blur effect for the panel when the player joins the server?
    Blur = true, --Put a blur effect for the panel when the player joins the server?
    BGColor = Color(0,0,0,255), --Put a colored background for the panel when the player joins the server? (Intro.Settings.Blur must be false)
    AlwaysShow = false, --Display the menu when the player joins the server each time or no longer display it when he has seen the intro at least once?
    ForceIntro = false, --Remove the "Skip introduction" button ?
    URLMusic = "https://gmod-radio-numerix.mtxserv.com/exemple/Calvin%20Harris%20-%20Summer.mp3", --Music link (Youtube, Soundcloud or mp3)
    MusicVolume = 0.3, --Music volume (between 0 and 1)
    AnimReturnPlayer = true, --Return to the player once the intro is finished?
    AnimReturnPlayerHigh = 1500, --Camera height when return to player
    Speedback = 0.2, --Camera speed when return to player
    textend = "We wish you a good game on our server", --Return to Player Text

    --HUD to draw the text (edit only if you know what you are doing)
    HUD = function(text) 
        surface.SetFont("Intro.Text")
        local textlenght, textheigth = surface.GetTextSize(text)
        draw.RoundedBox(5, ScrW()/2 -textlenght/2 - 25, ScrH() - ScrH()/24 - textheigth*1.1, textlenght + 50, textheigth*1.2, Color(0,0,0,150))
        draw.DrawText(text, "Intro.Text", ScrW()/2, ScrH() - ScrH()/24 - textheigth , color_white, TEXT_ALIGN_CENTER) 
    end,

    --Tall of each Black Strip (put 0 to disable)
    BlackStripTall = function() return ScrH()/10 end,

    Camera = { 
        {
            startpos = Vector(-3526, 6241, 260),
            endpos = Vector(-3008, 5003, 275),
            startang = Angle(0,-140,0), 
            endang = Angle(0,172,0),
            text = "Welcome on Name of Server", --You can put \n to make a line break
            speed = 0.2,
            makefade = false,
        },
        {
            startpos = Vector(-3008, 5003, 275),
            endpos = Vector(-3664, 3558, 256),
            startang = Angle(0,172,0),
            endang = Angle(-30,115,0),
            text = "The staff is listening and available",
            speed = 0.2,
            makefade = true,
        },
        {
            startpos = Vector(372, 1831, 109),
            endpos = Vector(153, -973, 64),
            startang = Angle(0,-40,0),
            endang = Angle(0,30,0),
            text = "This is a nice building",
            speed = 0.1,
            makefade = true,
        },
        {
            startpos = Vector(11, -710, 98),
            endpos = Vector(-4093, -680, 812),
            startang = Angle(0,-131,0),
            endang = Angle(0,-41,0),
            text = "This hangar may hide things",
            speed = 0.1,
            makefade = true,
        },
        {
            startpos = Vector(-619, -866, 92),
            endpos = Vector(-932, -1568, -41),
            startang = Angle(0,-152,0),
            endang = Angle(0,180,0),
            text = "We take a look ?",
            speed = 0.2,
            makefade = false,
        },
        {
            startpos = Vector(-932, -1568, -41),
            endpos = Vector(-2911, -1459, -80),
            startang = Angle(0,180,0),
            endang = Angle(0,180,0),
            text = "Let's go !",
            speed = 0.2,
            makefade = true,
        },
    }
}
