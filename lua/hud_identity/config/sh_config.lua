--[[ HUD Identity --------------------------------------------------------------------------------------

HUD Identity made by Numerix (https://steamcommunity.com/id/numerix/)

--------------------------------------------------------------------------------------------------]]

HUD.Settings.VersionCustom = "1.0.0" --DON'T TOUCH THIS

--[[ -----------------------------------------------------------------------------------------------

        text                =>  Which text to display before value

        value               =>  Value to show

        visible             =>  Make a condition to show the information

        icon				=>  Icon of the info

        bar			        => 	Show a bar ? (only available for number value)
        
        bar_color           =>  Color of the bar

        animspeed           =>  Speed of the bar

        sortOrder			=> 	Order to show infomation

        max			        =>	If there is a max for the value put it

        THIS IS ONLY FOR HUD.Settings.Element*

--------------------------------------------------------------------------------------------------]]

HUD.Settings.ElementLeftBottom = {
    {
        text = "Name :",
        value = function(ply) return ply:Name() or "" end,
        visible = function(ply) return true end,
        icon = Material("numerix_hud/name.png"),
        bar = false,
        sortOrder = 0,
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
        value = function(ply) return DarkRP and ply:getDarkRPVar("Energy") or 0 end,
        max = function(ply) return 100 end,
        visible = function(ply) return DarkRP and ply:getDarkRPVar("Energy") > 0 end,
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
        drawinfo = function(value) return DarkRP.formatMoney(value) end,
        sortOrder = 10,
        animspeed = 1000,
    },
}

HUD.Settings.ElementRightBottom = {
    
}

--[[ -----------------------------------------------------------------------------------------------

        visible             =>  Make a condition to show the information

        icon				=>  Icon of the info

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

--Icon when Player have a weapon with ammo
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
