--[[ HUD Identity --------------------------------------------------------------------------------------

HUD Identity made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

HUD.Settings.VersionCustom = "1.0.1" --DON'T TOUCH THIS

--Change the language
HUD.Settings.Language = "en"

--Disable LocalPlayerHUD ? (Information directly on screen)
HUD.Settings.LocalPlayerHUD = false

--Disable AbovePlayerHUD ? (Information draw above player)
HUD.Settings.AbovePlayerHUD = false

--Disable AgendaHUD ?
HUD.Settings.AgendaHUD = false

--Disable NotificationHUD ?
HUD.Settings.NotificationHUD = false

--Disable PickupHUD ?
HUD.Settings.PickupHUD = false

--Disable NoticeHUD ? (If desactivate no warning message for low battery and admintellall)
HUD.Settings.NoticeHUD = false

--Disable VoiceHUD ?
HUD.Settings.VoiceHUD = false

--Disable iconVoiceHUD ?
HUD.Settings.IconVoiceHUD = false

--Disable who can ear you HUD ?
HUD.Settings.ChatReceiverHUD = false

-- Position of the agenda Available : "LeftBottom", "LeftTop", "RightBottom", "RightTop"
HUD.Settings.AgendaPos = "LeftTop"

--At which HP the player have trouble of vision ? (-1 to desactivate)
HUD.Settings.LowHealth = 10

--[[ -----------------------------------------------------------------------------------------------

        text                =>  Which text to display before value
    
        value               =>  Value to show

        visible             =>  Make a condition to show the information

        icon				=>  Icon of the info (32x32)

        bar			        => 	Show a bar ? (only available for number value)
        
        bar_color           =>  Color of the bar

        animspeed           =>  Speed of the bar

        sortOrder			=> 	Order to show infomation

        max			        =>	If there is a max for the value put it

        THIS IS ONLY FOR HUD.Settings.Element*

--------------------------------------------------------------------------------------------------]]

HUD.Settings.ElementLeftBottom = {
    {
        text = "Lockdown ! Return to your homes ",
        value = function(ply) return "" end,
        visible = function(ply) return GetGlobalBool("DarkRP_LockDown") end,
        icon = Material("numerix_hud/lockdown.png"),
        bar = false,
        sortOrder = 0,
    },

    {
        text = "Arrested for : ",
        value = function(ply) return string.FormattedTime(math.ceil( (ply.TimeArrested or 0) - CurTime()), (ply.TimeArrested or 0) - CurTime() > 60*60 and "%02i:%02i:%02i" or "%02i:%02i") end,
        visible = function(ply) return DarkRP and ply:getDarkRPVar("Arrested") end,
        icon = Material("numerix_hud/arrested.png"),
        bar = false,
        sortOrder = 5,
    },

    {
        text = "Name :",
        value = function(ply) return ply:Name() or "" end,
        visible = function(ply) return true end,
        icon = Material("numerix_hud/name.png"),
        bar = false,
        sortOrder = 10,
    },

    {
        text = "HP : ",
        value = function(ply) return ply:Health() or 0 end,
        max = function(ply) return ply:GetMaxHealth() end,
        icon = Material("numerix_hud/hp.png"),
        bar = true,
        bar_color = Color(200,0,0,200),
        sortOrder = 20,
        animspeed = 0.25,
        visible = function(ply) return ply:Health() > 0 end,
    },

    {
        text = "Armor : ",
        value = function(ply) return ply:Armor() or 0 end,
        max = function(ply) return 100 end,
        visible = function(ply) return ply:Armor() > 0 end,
        icon = Material("numerix_hud/armor.png"),
        bar = true,
        bar_color = Color(0,0,200,200),
        sortOrder = 30,
        animspeed = 0.25,    
    },

    {
        text = "Hunger : ",
        value = function(ply) return DarkRP and !DarkRP.disabledDefaults["modules"]["hungermod"] and ply:getDarkRPVar("Energy") or 0 end,
        max = function(ply) return 100 end,
        visible = function(ply) return DarkRP and !DarkRP.disabledDefaults["modules"]["hungermod"] and (ply:getDarkRPVar("Energy") or 0) > 0 end,
        icon = Material("numerix_hud/food.png"),
        bar = true,
        bar_color = Color(0,200,0,200),
        sortOrder = 40,
        animspeed = 0.25,
    },
}

HUD.Settings.ElementLeftTop = {
    
}

HUD.Settings.ElementRightTop = {
    {
        text = "Money :",
        value = function(ply) return DarkRP and ply:getDarkRPVar("money") or 0 end,
        visible = function(ply) return true end,
        icon = Material("numerix_hud/money.png"),
        bar = false,
        drawinfo = function(value) return DarkRP and DarkRP.formatMoney(value) end,
        sortOrder = 10,
        animspeed = 0.1,
    },
}

HUD.Settings.ElementRightBottom = {
    
}

--[[ -----------------------------------------------------------------------------------------------

        visible             =>  Make a condition to show the information

        icon				=>  Icon of the info (32x32)

        sortOrder			=> 	Order to show infomation

        THIS IS ONLY FOR HUD.Settings.Info*

--------------------------------------------------------------------------------------------------]]


HUD.Settings.InfoLeftBottom = {
    {
        visible = function(ply) return DarkRP and GetGlobalBool("DarkRP_LockDown") or false end,
        icon = Material("numerix_hud/lockdown.png"),
        sortOrder = 10,
    },
}

HUD.Settings.InfoLeftTop = {
    
}

HUD.Settings.InfoRightBottom = {
    {
        visible = function(ply) return DarkRP and ply:getDarkRPVar("wanted") or false end,
        icon = Material("numerix_hud/wanted.png"),
        sortOrder = 10,
    },

    {
        visible = function(ply) return DarkRP and ply:getDarkRPVar("HasGunlicense") or false end,
        icon = Material("numerix_hud/license.png"),
        sortOrder = 10,
    },

    {
        visible = function(ply) return DarkRP and ply:getDarkRPVar("Arrested") or false end,
        icon = Material("numerix_hud/arrested.png"),
        sortOrder = 10,
    },
}

HUD.Settings.InfoRightTop = {
    
}

--Icon when Player have a weapon with ammo (32x32)
HUD.Settings.IconWeapon = Material("numerix_hud/ammo.png")

--Add weapon that doesn't have ammo
HUD.Settings.NoAmmoWeapon = {
    ["stunstick"] = true,
    ["unarrest_stick"] = true,
    ["med_kit"] = true,
    ["lockpick"] = true,
    ["keys"] = true,
    ["door_ram"] = true,
    ["arrest_stick"] = true,
    ["weapon_keypadchecker"] = true,
    ["weaponchecker"] = true,
    ["weapon_bugbait"] = true,
    ["weapon_crowbar"] = true,
    ["weapon_physcannon"] = true,
    ["weapon_fists"] = true,
    ["manhack_welder"] = true,
    ["gmod_tool"] = true,
    ["weapon_keypadchecker"] = true,
    ["weapon_physgun"] = true,
    ["weapon_stunstick"] = true,
    ["pocket"] = true,
}

--Desactivate chat indicator of DarkRP ?
HUD.Settings.DisableChatIndicator = true

--Icon when you talk (64x64)
HUD.Settings.VoiceIcon = Material("numerix_hud/voice64.png")

--[[ -----------------------------------------------------------------------------------------------

        text                =>  Which text to display before value
    
        value               =>  Value to show

        color               =>  Color of the text 

        visible             =>  Make a condition to show the information

        sortOrder			=> 	Order to show infomation

        THIS IS ONLY FOR HUD.Settings.AbovePlayerInfo

--------------------------------------------------------------------------------------------------]]

HUD.Settings.AbovePlayerInfo = {
    {
        text = "Name :",
        value = function(ply) return ply:GetName() end,
        color = function(ply) return Color(255,255,255,255) end,
        visible = function(ply) return true end,
        sortOrder = 100,
    },

    {
        text = "Job :",
        value = function(ply) return DarkRP and ply:getDarkRPVar("job") end,
        color = function(ply) return Color(255,255,255,255) end,
        visible = function(ply) return true end,
        sortOrder = 100,
    },

    {
        text = "HP :",
        value = function(ply) return ply:Health() end,
        color = function(ply) return Color(255,255,255,255) end,
        visible = function(ply) return true end,
        sortOrder = 100,
    },
}

--[[ -----------------------------------------------------------------------------------------------

        visible             =>  Make a condition to show the information

        icon                =>  Icon of the info (32x32)

        priority			=>  For example if for the arrested the priority is of 40 and for wanted it's 50 then if the player is wanted and arrested the 
                                icon will be arrested

        THIS IS ONLY FOR HUD.Settings.AbovePlayerInfoLeft

--------------------------------------------------------------------------------------------------]]

HUD.Settings.AbovePlayerInfoLeft = {
    {
        visible = function(ply) return ply.IsTalking or false end,
        icon = Material("numerix_hud/voice.png"),
        priority = 20,
    },

    {
        visible = function(ply) return ply:IsTyping() or false end,
        icon = Material("numerix_hud/chat.png"),
        priority = 30,
    },

    {
        visible = function(ply) return DarkRP and ply:getDarkRPVar("Arrested") or false end,
        icon = Material("numerix_hud/arrested.png"),
        priority = 40,
    },

    {
        visible = function(ply) return DarkRP and ply:getDarkRPVar("wanted") or false end,
        icon = Material("numerix_hud/wanted.png"),
        priority = 50,
    },

    {
        visible = function(ply) return true end,
        icon = Material("numerix_hud/name.png"),
        priority = 999999,
    },   
}
