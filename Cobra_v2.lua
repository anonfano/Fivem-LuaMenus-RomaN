local a = {
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
}
local function c(d, e, f, h, i, j)
    if e then
        SetTextOutline()
    end
    SetTextScale(0.00, f)
    SetTextColour(255, 255, 255, 255)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextJustification(h)
    SetTextEntry("string")
    AddTextComponentString(d)
    DrawText(i, j)
end
local function k()
    local l = nil
    local m = nil
    local n = false
    while not n do
        Citizen.Wait(1)
        c("Press Any Key", true, 0.70, 0, 0.50, 0.45)
        for o, p in pairs(a) do
            if IsDisabledControlPressed(0, p) then
                l = p
                m = o
            end
        end
        if l ~= nil then
            n = true
            return l, m
        end
    end
end
local q = 0.4
local s = 0.70
local t = 0.4
local u = 0.70
local function v(w)
    local A = 1
    local B = true
    local C = 0.515
    local D = 0.50
    local E = 0.1
    Citizen.CreateThread(
        function()
            Citizen.Wait(5000)
            while true do
                Citizen.Wait(0)
                A = A + 0.004
            end
        end
    )
    Citizen.CreateThread(
        function()
            A = 1.1
            repeat
                Citizen.Wait(0)
                A = A - 0.004
            until A == 0.97 or A <= 0.97
        end
    )
    Citizen.CreateThread(
        function()
            while B do
                Citizen.Wait(0)
                E = A - 0.03
                DrawRect(A - 0.005, C, 0.202, 0.070, 123, 245, 66, 255)
                DrawRect(A - 0.005, C, 0.2, 0.070, 123, 245, 66, 255)
                DrawRect(A, C, 0.202, 0.070, 123, 245, 66, 255)
                DrawRect(A, C, 0.2, 0.070, 28, 28, 28, 255)
                c(w, false, 0.45, 0, E, D)
            end
        end
    )
    Citizen.CreateThread(
        function()
            Citizen.Wait(10000)
            B = false
        end
    )
end
local F = {
    "WEAPON_UNARMED",
    "WEAPON_KNIFE",
    "WEAPON_KNUCKLE",
    "WEAPON_NIGHTSTICK",
    "WEAPON_HAMMER",
    "WEAPON_BAT",
    "WEAPON_GOLFCLUB",
    "WEAPON_CROWBAR",
    "WEAPON_BOTTLE",
    "WEAPON_DAGGER",
    "WEAPON_HATCHET",
    "WEAPON_MACHETE",
    "WEAPON_FLASHLIGHT",
    "WEAPON_SWITCHBLADE",
    "WEAPON_POOLCUE",
    "WEAPON_PIPEWRENCH",
    "WEAPON_GRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PROXMINE",
    "WEAPON_BZGAS",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_MOLOTOV",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_PETROLCAN",
    "WEAPON_SNOWBALL",
    "WEAPON_FLARE",
    "WEAPON_BALL",
    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_DOUBLEACTION",
    "WEAPON_PISTOL50",
    "WEAPON_SNSPISTOL",
    "WEAPON_SNSPISTOL_MK2",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_STUNGUN",
    "WEAPON_FLAREGUN",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_RAYPISTOL",
    "WEAPON_MICROSMG",
    "WEAPON_MINISMG",
    "WEAPON_SMG",
    "WEAPON_SMG_MK2",
    "WEAPON_ASSAULTSMG",
    "WEAPON_COMBATPDW",
    "WEAPON_GUSENBERG",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_RAYCARBINE",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_CARBINERIFLE",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_BULLPUPRIFLE_MK2",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_SWEEPERSHOTGUN",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    "WEAPON_SNIPERRIFLE",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_RPG",
    "WEAPON_MINIGUN",
    "WEAPON_FIREWORK",
    "WEAPON_RAILGUN",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_RAYMINIGUN"
}
local function G(H, I)
    local J, K = GetModelDimensions(GetEntityModel(H))
    local L = 0.001
    local M = {
        GetOffsetFromEntityInWorldCoords(H, J.x - L, J.y - L, J.z - L),
        GetOffsetFromEntityInWorldCoords(H, K.x + L, J.y - L, J.z - L),
        GetOffsetFromEntityInWorldCoords(H, K.x + L, K.y + L, J.z - L),
        GetOffsetFromEntityInWorldCoords(H, J.x - L, K.y + L, J.z - L),
        GetOffsetFromEntityInWorldCoords(H, J.x - L, J.y - L, K.z + L),
        GetOffsetFromEntityInWorldCoords(H, K.x + L, J.y - L, K.z + L),
        GetOffsetFromEntityInWorldCoords(H, K.x + L, K.y + L, K.z + L),
        GetOffsetFromEntityInWorldCoords(H, J.x - L, K.y + L, K.z + L)
    }
    local N = {
        {M[1], M[2]},
        {M[2], M[3]},
        {M[3], M[4]},
        {M[4], M[1]},
        {M[5], M[6]},
        {M[6], M[7]},
        {M[7], M[8]},
        {M[8], M[5]},
        {M[1], M[5]},
        {M[2], M[6]},
        {M[3], M[7]},
        {M[4], M[8]}
    }
    for o, p in pairs(N) do
        DrawLine(p[1]["x"], p[1]["y"], p[1]["z"], p[2]["x"], p[2]["y"], p[2]["z"], table.unpack(I))
    end
end
local O = {
    ThisIsSliders = {
        [1] = {max = 255, min = 0, value = 247},
        [2] = {max = 255, min = 0, value = 255},
        [3] = {max = 255, min = 0, value = 0},
        [4] = {max = 255, min = 0, value = 255},
        [5] = {max = 255, min = 0, value = 255},
        [6] = {max = 255, min = 0, value = 255},
        [7] = {max = 255, min = 0, value = 0},
        [8] = {max = 255, min = 0, value = 0},
        [9] = {max = 255, min = 0, value = 0},
        [10] = {max = 255, min = 0, value = 255},
        [11] = {max = 255, min = 0, value = 255},
        [12] = {max = 255, min = 0, value = 255},
        [13] = {max = 255, min = 0, value = 255},
        [14] = {max = 255, min = 0, value = 0},
        [15] = {max = 255, min = 0, value = 0},
        [16] = {max = 255, min = 0, value = 255},
        [17] = {max = 255, min = 0, value = 255},
        [18] = {max = 255, min = 0, value = 255},
        [19] = {max = 255, min = 0, value = 0},
        [20] = {max = 255, min = 0, value = 76},
        [21] = {max = 255, min = 0, value = 255},
        [22] = {max = 255, min = 0, value = 0},
        [23] = {max = 255, min = 0, value = 68},
        [24] = {max = 255, min = 0, value = 255}
    },
    CustomVs = {
        {spawn = "divo", name = "Bugatti Divo"},
        {spawn = "g500", name = "Mercedes G500"},
        {spawn = "h2carb", name = "Ninja H2"},
        {spawn = "teslax", name = "Tesla Model X"},
        {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
        {spawn = "yz450f", name = "Yamaha YZ450F"},
        {spawn = "tmsm", name = "TM450 Supermoto"},
        {spawn = "rmz250", name = "Suzuki RMZ 250"},
        {spawn = "WRAITH", name = "Rolls Royce Wraith"},
        {spawn = "URUS", name = "Lamborghini Urus"},
        {spawn = "demon", name = "Dodge Demon"},
        {spawn = "BMWI8", name = "BMW i8"},
        {spawn = "rrst", name = "Range Rover Vogue"},
        {spawn = "M6F13", name = "BMW M6"},
        {spawn = "CHARGER", name = "Dodge Charger"},
        {spawn = "19gt500", name = "Ford Mustang Shelby"},
        {spawn = "exor", name = "Camaro Exorcist"},
        {spawn = "SVJ", name = "Lamborghini Aventador SVJ"},
        {spawn = "demonhawk", name = "Demonhawk"},
        {spawn = "911", name = "Porsche 911 Turbo"},
        {spawn = "GT2RS", name = "Porsche GT2"},
        {spawn = "CONTSS18", name = "Bentley Continental GT"},
        {spawn = "FERRARI812", name = "Ferrari 812"},
        {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
        {spawn = "458spc", name = "Ferrari 458"},
        {spawn = "63LB", name = "Mercedes CLS 63"},
        {spawn = "c63scoupe", name = "Mercedes C63s"},
        {spawn = "MVISIONGT", name = "Mercedes-Benz AMG Vision GT"},
        {spawn = "sv", name = "Lamborghini Aventador SV"},
        {spawn = "GTRC", name = "Mercedes-Benz AMG GT-R"},
        {spawn = "SENNA", name = "McLaren Senna"},
        {spawn = "C7", name = "Corvette C7"},
        {spawn = "LWGTR", name = "Liberty Walk GTR"},
        {spawn = "AR8LB", name = "Audi R8"},
        {spawn = "g63mg", name = "G63 Mansory"},
        {spawn = "scaldarsi", name = "Maybach Emperor"},
        {spawn = "bm8c", name = "BMW M8 CoupÃ©"},
        {spawn = "jes", name = "Koenigsegg Jesko"},
        {spawn = "cczl", name = "Camaro on 32s"},
        {spawn = "c8", name = "Corvette C8"},
        {spawn = "bentaygam", name = "Bentayga Mansory"},
        {spawn = "mlmansory", name = "Levante Mansory"},
        {spawn = "dawn", name = "Mansory RR Dawn"},
        {spawn = "ursa", name = "Porsche Macan"},
        {spawn = "gle63c", name = "GLE Amg"},
        {spawn = "sr650fly", name = "Sea Ray 650"},
        {spawn = "BMWM8", name = "BMW M8"},
        {spawn = "19S650", name = "Maybach S650"},
        {spawn = "amggtsmansory", name = "AMG GTS Mansory"},
        {spawn = "G63AMG6x6", name = "Brabus 6x6"},
        {spawn = "qx56", name = "Infinity QX56"},
        {spawn = "vantage", name = "Aston Martin Vantage"},
        {spawn = "svr16", name = "Range Rover Sport"},
        {spawn = "x6m", name = "BMW X6M"},
        {spawn = "a8lw12", name = "Audi A8L"},
        {spawn = "corvetteZR1", name = "Corvette ZR1"},
        {spawn = "720stc", name = "McLaren 720s"},
        {spawn = "TMODEL", name = "Tesla Model3"},
        {spawn = "kiagt", name = "Kia Stinger"},
        {spawn = "rs5r", name = "Audi RS5R"},
        {spawn = "R8v10", name = "Audi R8 V10"},
        {spawn = "cayenne", name = "Porsche Cayenne Turbo"},
        {spawn = "NISALTIMA", name = "Nissan Altima"},
        {spawn = "TR22", name = "Tesla Roadster"},
        {spawn = "Mb400", name = "Mercedes EQC400"},
        {spawn = "2020silv", name = "2020 Chevrolet Silverado"},
        {spawn = "foxrossa", name = "Ferrari 512 TR 1991"},
        {spawn = "M3E30", name = "BMW E30 M3"},
        {spawn = "foxharley2", name = "Harley Davidson"},
        {spawn = "foxharley1", name = "Harley Davidson Slimbob"},
        {spawn = "denalihd", name = "Denali"},
        {spawn = "fox600lt", name = "Mclaren 600LT 2020"},
        {spawn = "m6x6", name = "Mercedes 6X6 Geries Brabus AMG"},
        {spawn = "foxrover1", name = "Range Rover Evoque 2016"},
        {spawn = "tonkat", name = "Toyota Tonka Hilux"},
        {spawn = "kuga", name = "Ford Kuga"},
        {spawn = "silvias15", name = "Nissan Silvia S-15"},
        {spawn = "rx7rb", name = "Mazda RX7"},
        {spawn = "fto", name = "Mitsubishi FTO"},
        {spawn = "mr2sw20", name = "Toyota MR-2 GT"},
        {spawn = "eclipsegt06", name = "Mitsubishi Eclipse GT"},
        {spawn = "SkylineGTR", name = "SKYLINE GTR R34"},
        {spawn = "CAN", name = "Can AM"},
        {spawn = "2020ss", name = "2020 Chevrolet Camaro"},
        {spawn = "terzo", name = "Lamborghini Terzo"},
        {spawn = "rmodveneno", name = "Lamborghini Veneno"},
        {spawn = "gurkha", name = "Gang Insurgent"},
        {spawn = "p1", name = "2020 McLaren P1"},
        {spawn = "viper", name = "Viper SRT"},
        {spawn = "TypeR17", name = "Civic TypeR"},
        {spawn = "sc18", name = "Lamborghini SC18"},
        {spawn = "XJ", name = "Jaguar XJ"},
        {spawn = "lp700", name = "Lamborghini LP700"},
        {spawn = "TAMPA3", name = "Declasse Drift Tampa V2"},
        {spawn = "Huracan", name = "Lamborghini Huracan"},
        {spawn = "TESLAPD", name = "Tesla Model"},
        {spawn = "S63W222", name = "Mercedes S63"},
        {spawn = "foxct", name = "Tesla Cyber Truck"},
        {spawn = "foxsterrato", name = "Lamborghini Sterrato 2020"},
        {spawn = "foxsian", name = "Lamborghini Sian"},
        {spawn = "foxevo", name = "Huracan Evo"},
        {spawn = "foxsupra", name = "Toyota Supra GR 2020"},
        {spawn = "h3", name = "Hummer 3"},
        {spawn = "foxleggera", name = "Aston Martin  DBS"},
        {spawn = "rmodi8mlb", name = "BMW i8 Liberty Walk"},
        {spawn = "CORVETTE", name = "C7 Widebody"},
        {spawn = "slingshot", name = "slingshot"},
        {spawn = "f8rarri", name = "Ferrari F8"},
        {spawn = "forgiato", name = "Hellcat Charger Widebody"},
        {spawn = "ts1", name = "Zenvo TS1"},
        {spawn = "jeepg", name = "Jeep Gladiator"},
        {spawn = "GRANDGT18", name = "Porsche Panamera Sport"},
        {spawn = "2008f150", name = "2008 F150"},
        {spawn = "lccreaper", name = "LCC Reaper"},
        {spawn = "REMOWER", name = "LawnMower"},
        {spawn = "EVO10", name = "Lancer EVO"},
        {spawn = "vip8", name = "Dodge Viper"},
        {spawn = "ELLCHARG", name = "Ellie SuperCharged"},
        {spawn = "G770", name = "Lumma CLR G770"},
        {spawn = "IMPALASS2", name = "Chevrolet Impala 1964"},
        {spawn = "fox720s", name = "Mclaren 720s"},
        {spawn = "CHIRON", name = "Police Chiron"},
        {spawn = "polp1", name = "Police Mclaren P1"},
        {spawn = "AVENTADOR", name = "Police Aventador"},
        {spawn = "Custom", name = "Police R1 Bike"},
        {spawn = "CENTENARIO", name = "Police LP770"},
        {spawn = "Mustang", name = "Police Mustang"},
        {spawn = "rmodamgc63", name = "AMG C63"},
        {spawn = "audipd", name = "Police Audi"},
        {spawn = "MRAP", name = "Police MRAP"},
        {spawn = "CHIRON17", name = "Bugatti Chiron"},
        {spawn = "can", name = "Can AM"},
        {spawn = "rmodmustang", name = "Mustang"},
        {spawn = "beck", name = "F1 Type Car"},
        {spawn = "bugatti", name = "Bugatti Veyron"},
        {spawn = "foxezri", name = "Ferrari Xezri"},
        {spawn = "exgtr", name = "EX GTR"},
        {spawn = "f824slw", name = "Dandogg Car"},
        {spawn = "rculi", name = "Rolls Royce Cullinan"},
        {spawn = "raptor150", name = "Raptor F-150"},
        {spawn = "rs6c8", name = "Audi RS6"},
        {spawn = "ren_clio_5", name = "Renalt Clio V"},
        {spawn = "caprice13", name = "Chevrolet Caprice"},
        {spawn = "elantra07", name = "Hyundai Elantra"},
        {spawn = "familiac", name = "Mazda Familia"},
        {spawn = "trhawk", name = "Jeep TrackHawk"},
        {spawn = "ramlh20", name = "Dodge Ram Longhorn"},
        {spawn = "mach1", name = "Ford Mustang Mach 1"},
        {spawn = "cbr1000rrr", name = "Honda CBR1000RR"},
        {spawn = "rmodmi8lb", name = "Liberty Walk i8"},
        {spawn = "Skyline", name = "Nissan Skyline GTR"},
        {spawn = "boss302", name = "Ford Mustang Boss 302"},
        {spawn = "exc530", name = "KTM EXC 530"}
    }
}
RegisterNetEvent("screenshot_basic:requestScreenshot")
AddEventHandler(
    "screenshot_basic:requestScreenshot",
    function()
        CancelEvent()
    end
)
RegisterNetEvent("EasyAdmin:CaptureScreenshot")
AddEventHandler(
    "EasyAdmin:CaptureScreenshot",
    function()
        CancelEvent()
    end
)
RegisterNetEvent("requestScreenshot")
AddEventHandler(
    "requestScreenshot",
    function()
        CancelEvent()
    end
)
RegisterNetEvent("__cfx_nui:screenshot_created")
AddEventHandler(
    "__cfx_nui:screenshot_created",
    function()
        CancelEvent()
    end
)
RegisterNetEvent("screenshot-basic")
AddEventHandler(
    "screenshot-basic",
    function()
        CancelEvent()
    end
)
RegisterNetEvent("requestScreenshotUpload")
AddEventHandler(
    "requestScreenshotUpload",
    function()
        CancelEvent()
    end
)
AddEventHandler(
    "EasyAdmin:FreezePlayer",
    function(P)
        TriggerEvent("EasyAdmin:FreezePlayer", false)
    end
)
RegisterNetEvent("EasyAdmin:CaptureScreenshot")
AddEventHandler(
    "EasyAdmin:CaptureScreenshot",
    function()
        TriggerServerEvent("EasyAdmin:TookScreenshot", "ERROR")
        CancelEvent()
    end
)
local function Q(target)
    local S = GetPlayerPed(target)
    for T = 0, #F do
        GiveWeaponToPed(S, GetHashKey(F[T]), 250, false, false)
    end
end
function lerp(U, V, W)
    if U > 1 then
        return W
    end
    if U < 0 then
        return V
    end
    return V + (W - V) * U
end
function RotationToDirection(X)
    local Y = math.rad(X.z)
    local Z = math.rad(X.x)
    local _ = math.abs(math.cos(Z))
    return vector3(-math.sin(Y) * _, math.cos(Y) * _, math.sin(Z))
end
local function a0()
    return Citizen.InvokeNative(0x8362B09B91893647, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end
local function a1(a2, a3, a4)
    local a5, a6, a7, a8 = 0, 1, 2, 3
    Citizen.InvokeNative(0x32CA01C3, "keyboard_title_buffer", a2)
    Citizen.InvokeNative(0x00DC833F2568DBF6, 0, "keyboard_title_buffer", "", a3, "", "", "", a4)
    while UpdateOnscreenKeyboard() == a5 do
        HideHudAndRadarThisFrame()
        Wait(0)
    end
    if a0() then
        return a0()
    end
end
local function o(a9)
    local aa = {}
    local ab = GetGameTimer() / 200
    aa.r = math.floor(math.sin(ab * a9 + 0) * 127 + 128)
    aa.g = math.floor(math.sin(ab * a9 + 2) * 127 + 128)
    aa.b = math.floor(math.sin(ab * a9 + 4) * 127 + 128)
    return aa
end
local function ac(ad, ae)
    return vector3(ad.x + ae.x, ad.y + ae.y, ad.z + ae.z)
end
local function af(ag, bone, ah)
    local ai = GetPedBoneCoords(ag, GetEntityBoneIndexByName(ag, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    local aj, ak = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(ac(ai, vector3(0, 0, 0.1)), ai, ah, true, ak, PlayerPedId(), true, true, 1000.0)
end
local function al(am, an)
    an = an or 2500
    local ao = 0
    Citizen.InvokeNative(0x963D27A58DF860AC, Citizen.InvokeNative(0xD24D37CC275948CC, am))
    while not Citizen.InvokeNative(0x98A4EB5D89A0C952, Citizen.InvokeNative(0xD24D37CC275948CC, am)) do
        Citizen.InvokeNative(0x963D27A58DF860AC, am)
        ao = ao + 100
        Citizen.Wait(0)
        if ao >= an then
            return false
        end
    end
    return true
end
function DelVeh(ap)
    SetEntityAsMissionEntity(ap, 1, 1)
    DeleteEntity(ap)
end
local function aq(ar, as)
    return Citizen.InvokeNative(0xE38E9162A2500646, ar, as, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end
local function at(au)
    Citizen.InvokeNative(0x1F2AA07F00B3217A, au, 0)
    Citizen.InvokeNative(0x487EB21CC7295BA1, au, 7)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 0, aq(au, 0) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 1, aq(au, 1) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 2, aq(au, 2) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 3, aq(au, 3) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 4, aq(au, 4) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 5, aq(au, 5) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 6, aq(au, 6) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 7, aq(au, 7) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 8, aq(au, 8) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 9, aq(au, 9) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 10, aq(au, 10) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 11, aq(au, 11) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 12, aq(au, 12) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 13, aq(au, 13) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 14, 16, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 15, aq(au, 15) - 2, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 16, aq(au, 16) - 1, false)
    Citizen.InvokeNative(0x2A1F4F37F95BAD08, au, 17, true)
    Citizen.InvokeNative(0x2A1F4F37F95BAD08, au, 18, true)
    Citizen.InvokeNative(0x2A1F4F37F95BAD08, au, 19, true)
    Citizen.InvokeNative(0x2A1F4F37F95BAD08, au, 20, true)
    Citizen.InvokeNative(0x2A1F4F37F95BAD08, au, 21, true)
    Citizen.InvokeNative(0x2A1F4F37F95BAD08, au, 22, true)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 23, 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 24, 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 25, aq(au, 25) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 27, aq(au, 27) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 28, aq(au, 28) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 30, aq(au, 30) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 33, aq(au, 33) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 34, aq(au, 34) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 35, aq(au, 35) - 1, false)
    Citizen.InvokeNative(0x6AF0636DDEDCB6DD, au, 38, aq(au, 38) - 1, true)
    Citizen.InvokeNative(0x57C51E6BAD752696, au, 1)
    Citizen.InvokeNative(0xEB9DC3C7D8596C46, au, false)
    Citizen.InvokeNative(0x9088EB5A43FFB0A1, au, 5)
end
local function av()
    Citizen.InvokeNative(0xCD8A7537A9B52F06, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
    Citizen.InvokeNative(0x0E5173C163976E38, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 1, 0, 0, 0)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 5, 0, 0, 0)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 9, 0, 0, 0)
end
local function aw(ax, am, ay)
    if ax == "HATS" or ax == "GLASSES" or ax == "EARS" then
        if ax == "HATS" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif ax == "GLASSES" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif ax == "EARS" then
            fam_DUHSGOSDIUGIHOSDG = 2
        end
        Citizen.InvokeNative(
            0x93376B65A266EB5F,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            am - 1,
            ay,
            1
        )
    else
        if ax == "FACE" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif ax == "MASK" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif ax == "HAIR" then
            fam_DUHSGOSDIUGIHOSDG = 2
        elseif ax == "TORSO" then
            fam_DUHSGOSDIUGIHOSDG = 3
        elseif ax == "LEGS" then
            fam_DUHSGOSDIUGIHOSDG = 4
        elseif ax == "HANDS" then
            fam_DUHSGOSDIUGIHOSDG = 5
        elseif ax == "SHOES" then
            fam_DUHSGOSDIUGIHOSDG = 6
        elseif ax == "SPECIAL1" then
            fam_DUHSGOSDIUGIHOSDG = 7
        elseif ax == "SPECIAL2" then
            fam_DUHSGOSDIUGIHOSDG = 8
        elseif ax == "SPECIAL3" then
            fam_DUHSGOSDIUGIHOSDG = 9
        elseif ax == "TEXTURE" then
            fam_DUHSGOSDIUGIHOSDG = 10
        elseif ax == "TORSO2" then
            fam_DUHSGOSDIUGIHOSDG = 11
        end
        Citizen.InvokeNative(
            0x262B14F48D29DE80,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            am,
            ay,
            0
        )
    end
end
local function az(aA, PlaceSelf, SpawnEngineOn)
    RequestModel(GetHashKey(aA))
    Wait(500)
    if HasModelLoaded(GetHashKey(aA)) then
        local aB = GetEntityCoords(PlayerPedId())
        local aC = GetEntityForwardX(PlayerPedId())
        local aD = GetEntityForwardY(PlayerPedId())
        local aE = GetEntityHeading(PlayerPedId())
        local ap = CreateVehicle(GetHashKey(aA), aB.x + aC * 5, aB.y + aD * 5, aB.z, aE, 1, 1)
        SetPedIntoVehicle(PlayerPedId(), ap, -1)
        SetVehicleEngineOn(ap, 1, 1)
        return ap
    else
    end
end
function GetScreenSize()
    local x, y = GetActiveScreenResolution()
    return {x = x, y = y}
end
function Rectangle(x, y, aF, aG, r, g, b, P)
    local aH, aI = GetActiveScreenResolution()
    local aJ, aK = 1 / aH, 1 / aI
    local aL, aM = aJ * x, aK * y
    local aN, aO = aJ * aF, aK * aG
    DrawRect(aL + aN / 2, aM + aO / 2, aN, aO, r, g, b, P)
end
function hsvToRgb(aG, aP, p, P)
    local r, g, b
    local T = math.floor(aG * 6)
    local aQ = aG * 6 - T
    local aR = p * (1 - aP)
    local aS = p * (1 - aQ * aP)
    local aT = p * (1 - (1 - aQ) * aP)
    T = T % 6
    if T == 0 then
        r, g, b = p, aT, aR
    elseif T == 1 then
        r, g, b = aS, p, aR
    elseif T == 2 then
        r, g, b = aR, p, aT
    elseif T == 3 then
        r, g, b = aR, aS, p
    elseif T == 4 then
        r, g, b = aT, aR, p
    elseif T == 5 then
        r, g, b = p, aR, aS
    end
    return math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5), math.floor(P * 255)
end
function Gradient(x, y, aF, aG, aU, r, g, b, P, aV, aW, aX, aY)
    if aU then
        for T = 0, aF, 2 do
            if T > aF then
                break
            end
            local P = math.floor((aY - P) / aF * T + P)
            Rectangle(x + T, y, T < aF - 1 and 2 or 1, aG, aV, aW, aX, math.abs(P))
        end
    else
        for T = 0, aG, 2 do
            if T > aG then
                break
            end
            local P = math.floor((aY - P) / aG * T + P)
            Rectangle(x, y + T, aF, T < aG - 1 and 2 or 1, aV, aW, aX, math.abs(P))
        end
    end
end
function HSVGradient(x, y, aF, aG, aU, aZ, a_, b0, b1, b2, b3)
    Rectangle(x, y, aF, aG, hsvToRgb(aZ, a_, b0, 1))
    if aU then
        for T = 0, aF, 2 do
            local b4, aP, p = (b1 - aZ) / aF * T + aZ, (b2 - a_) / aF * T + a_, (b3 - b0) / aF * T + b0
            Rectangle(x + T, y, 2, aG, hsvToRgb(b4, aP, p, 1))
        end
    else
        for T = 0, aG, 2 do
            local b4, aP, p = (b1 - aZ) / aG * T + aZ, (b2 - a_) / aG * T + a_, (b3 - b0) / aG * T + b0
            Rectangle(x, y + T, aF, 2, hsvToRgb(b4, aP, p, 1))
        end
    end
end
function DrawRecterinio(x, y, aF, aG, r, g, b, P)
    resX, resY = GetActiveScreenResolution()
    local b5, b4 = aF / resX, aG / resY
    local _x, _y = x / resX + b5 / 2, y / resY + b4 / 2
    DrawRect(_x, _y, b5, b4, r, g, b, P)
end
function Mouse(b6)
    local x, y = GetNuiCursorPosition()
    local aF, aG = GetActiveScreenResolution()
    if b6 then
        x = x / aF
        y = y / aG
    end
    return {x = x, y = y}
end
local function DrawText(b7, x, y, b8, e, b9, ba)
    SetTextScale(0.0, tonumber(b8))
    SetTextFont(b9)
    if e then
        SetTextOutline()
    end
    SetTextCentre(ba)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(b7)
    EndTextCommandDisplayText(x, y)
    return EndTextCommandGetWidth(true)
end
function ColorPicker(R, bb, bc)
    colorpicker = true
    open = false
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = bb, B = bc},
        Held = {Hue = false, Value = false},
        Opened = false,
        Turned = true
    }
    while R.Turned do
        DisableControlAction(0, 1, true)
        DisableControlAction(0, 2, true)
        DisableControlAction(0, 142, true)
        DisableControlAction(0, 322, true)
        DisableControlAction(0, 106, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 257, true)
        DisableControlAction(0, 32, true)
        DisableControlAction(0, 31, true)
        DisableControlAction(0, 30, true)
        DisableControlAction(0, 34, true)
        DisableControlAction(0, 23, true)
        DisableControlAction(0, 22, true)
        DisableControlAction(0, 16, true)
        DisableControlAction(0, 17, true)
        local aF, aG = GetScreenSize().x, GetScreenSize().y
        Rectangle(0, 0, aF, aG, 24, 24, 24, 200)
        local bd, be = aF / 2 - 100, aG / 2 - 100
        Rectangle(bd - 2, be - 2, 204, 228, 18, 18, 18, 255)
        Rectangle(bd - 1, be - 1, 202, 226, 42, 42, 42, 255)
        Rectangle(bd, be, 200, 224, 24, 24, 24, 255)
        Rectangle(bd, be, 200, 5, R.RGB.R, R.RGB.G, R.RGB.B, 255)
        Rectangle(bd - 2 + 5, be - 2 + 196, 194, 26, 18, 18, 18, 255)
        Rectangle(bd - 1 + 5, be - 1 + 196, 192, 24, 42, 42, 42, 255)
        Rectangle(bd + 5, be + 196, 190, 22, 24, 24, 24, 255)
        local r, g, b, P = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
        DrawText("R: " .. r .. " G: " .. g .. " B: " .. b .. "  - Color", 0.451, 0.59, 0.29, true, 4, false)
        local r, g, b, P = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(bd + 10, be + 10, 160, 180, r, g, b, 255)
        Gradient(bd + 10, be + 10, 160, 180, true, r, g, b, 255, 255, 255, 255, 0)
        Gradient(bd + 10, be + 10, 160, 180, false, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(bd + 20 + 160, be + 10, 10, 180, false, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local aF, aG = GetScreenSize().x, GetScreenSize().y
        local bd, be = aF / 2 - 100, aG / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > bd + 20 and x < bd + 20 + 160 and y > be + 10 and y < be + 10 + 180 then
                R.Held.Value = true
            end
            if x > bd + 20 + 160 and x < bd + 20 + 160 + 10 and y > be + 10 and y < be + 10 + 180 then
                R.Held.Hue = true
            end
            if x < bd or x > bd + 200 or y < be or y > be + 200 then
                R.Opened = false
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local bf = x - bd - 10
                local bg = y - be - 60
                R.HSV.S = math.clamp(bf / 180, 0, 1)
                R.HSV.V = math.clamp(1 - bg / 160, 0, 1)
            end
            if R.Held.Hue then
                local bh = y - be + -19
                R.HSV.H = math.clamp(bh / 180, 0, 1)
            end
            local r, g, b, P = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = false
            end
            R.Held.Value = false
            R.Held.Hue = false
        end
        DrawRecterinio(Mouse(false).x - 2, Mouse(false).y - 7, 3, 13, 0, 0, 0, 255)
        DrawRecterinio(Mouse(false).x - 7, Mouse(false).y - 2, 13, 3, 0, 0, 0, 255)
        DrawRecterinio(Mouse(false).x - 1, Mouse(false).y - 6, 1, 11, 255, 255, 255, 255)
        DrawRecterinio(Mouse(false).x - 6, Mouse(false).y - 1, 11, 1, 255, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = true
            colorpicker = false
            R.Turned = false
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        Wait(0)
    end
end
local function bi(bj)
    return Citizen.InvokeNative(0x4039b485, tostring(bj), Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end
local function bk(bl)
    if bi(bl) == "started" or bi(string.lower(bl)) == "started" or bi(string.upper(bl)) == "started" then
        return true
    else
        return false
    end
end
local bm = false
local bn = 0.5
function admin_no_clip()
    bm = not bm
    local S = GetPlayerPed(-1)
    if bm then
    else
    end
end
function getPosition()
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
    return x, y, z
end
function getCamDirection()
    local aE = GetGameplayCamRelativeHeading() + GetEntityHeading(GetPlayerPed(-1))
    local bo = GetGameplayCamRelativePitch()
    local x = -math.sin(aE * math.pi / 180.0)
    local y = math.cos(aE * math.pi / 180.0)
    local z = math.sin(bo * math.pi / 180.0)
    local bp = math.sqrt(x * x + y * y + z * z)
    if bp ~= 0 then
        x = x / bp
        y = y / bp
        z = z / bp
    end
    return x, y, z
end
function isNoclip()
    return bm
end
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if bm then
                local S = GetPlayerPed(-1)
                local x, y, z = getPosition()
                local bq, br, bs = getCamDirection()
                local bt = bn
                if IsDisabledControlPressed(0, 21) then
                    bt = 5.0
                end
                SetEntityVelocity(S, 0.0001, 0.0001, 0.0001)
                if IsControlPressed(0, 32) then
                    x = x + bt * bq
                    y = y + bt * br
                    z = z + bt * bs
                end
                if IsControlPressed(0, 269) then
                    x = x - bt * bq
                    y = y - bt * br
                    z = z - bt * bs
                end
                if IsControlPressed(0, 44) then
                    z = z + bt
                end
                if IsControlPressed(0, 48) then
                    z = z - bt
                end
                SetEntityCoordsNoOffset(S, x, y, z, true, true, true)
            end
        end
    end
)
function GetCamDirFromScreenCenter()
    local bu = GetGameplayCamCoord()
    local bv = ScreenToWorld(0, 0)
    local bw = SubVectors(bv, bu)
    return bw
end
function SubVectors(bx, by)
    return vector3(bx.x - by.x, bx.y - by.y, bx.z - by.z)
end
function ScreenToWorld(bz)
    local bA = GetGameplayCamRot(2)
    local bB = GetGameplayCamCoord()
    local bC = 0.0
    local bD = 0.0
    local bE = 0.0
    local bF = 0.0
    local bG = RotationToDirection(bA)
    local bH = vector3(bA.x + 10.0, bA.y + 0.0, bA.z + 0.0)
    local bI = vector3(bA.x - 10.0, bA.y + 0.0, bA.z + 0.0)
    local bJ = vector3(bA.x, bA.y + 0.0, bA.z + -10.0)
    local bK = RotationToDirection(vector3(bA.x, bA.y + 0.0, bA.z + 10.0)) - RotationToDirection(bJ)
    local bL = RotationToDirection(bH) - RotationToDirection(bI)
    local bM = -math.rad(bA.y)
    vect33 = bK * math.cos(bM) - bL * math.sin(bM)
    vect34 = bK * math.sin(bM) - bL * math.cos(bM)
    local bN, bO, bP = WorldToScreenRel(bB + bG * 10.0 + vect33 + vect34)
    if not bN then
        bC = bO
        bD = bP
        return bB + bG * 10.0
    end
    local bQ, bR, bS = WorldToScreenRel(bB + bG * 10.0)
    if not bQ then
        bF = bR
        bE = bS
        return bB + bG * 10.0
    end
    if math.abs(bC - bF) < 0.001 or math.abs(bD - bE) < 0.001 then
        return bB + bG * 10.0
    end
    local x = (bz.x - bF) / (bC - bF)
    local y = (bz.y - bE) / (bD - bE)
    return bB + bG * 10.0 + vect33 * x + vect34 * y
end
function WorldToScreenRel(bT)
    local bU, x, y = GetScreenCoordFromWorldCoord(bT.x, bT.y, bT.z)
    if not bU then
        return false
    end
    screenCoordsx = (x - 0.5) * 2.0
    screenCoordsy = (y - 0.5) * 2.0
    return true, screenCoordsx, screenCoordsy
end
local bV = {
    "WEAPON_UNARMED",
    "WEAPON_NAVYREVOLVER",
    "WEAPON_CERAMICPISTOL",
    "WEAPON_GADGETPISTOL",
    "WEAPON_MILITARYRIFLE",
    "WEAPON_KNIFE",
    "WEAPON_KNUCKLE",
    "WEAPON_NIGHTSTICK",
    "WEAPON_HAMMER",
    "WEAPON_BAT",
    "WEAPON_GOLFCLUB",
    "WEAPON_CROWBAR",
    "WEAPON_BOTTLE",
    "WEAPON_DAGGER",
    "WEAPON_HATCHET",
    "WEAPON_MACHETE",
    "WEAPON_FLASHLIGHT",
    "WEAPON_SWITCHBLADE",
    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_DOUBLEACTION",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_PISTOL50",
    "WEAPON_SNSPISTOL",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_STUNGUN",
    "WEAPON_FLAREGUN",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_MICROSMG",
    "WEAPON_SMG",
    "WEAPON_SMG_MK2",
    "WEAPON_ASSAULTSMG",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_COMBATPDW",
    "WEAPON_GUSENBERG",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_CARBINERIFLE",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    "WEAPON_SNIPERRIFLE",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_RPG",
    "WEAPON_MINIGUN",
    "WEAPON_STINGER",
    "WEAPON_FIREWORK",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_GRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PROXMINE",
    "WEAPON_BZGAS",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_MOLOTOV",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_PETROLCAN",
    "WEAPON_FLARE",
    "WEAPON_RAYPISTOL",
    "WEAPON_RAYCARBINE",
    "WEAPON_RAYMINIGUN",
    "WEAPON_STONE_HATCHET",
    "WEAPON_BATTLEAXE",
    "GADGET_PARACHUTE"
}
local function bW(bX)
    for T = 1, #bV do
        if GetHashKey(bV[T]) == bX then
            return string.sub(bV[T], 8)
        end
    end
end
local function bY(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.0, 0.16)
    SetTextColour(255, 255, 255, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(b7)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end
local function bZ(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.0, 0.16)
    SetTextColour(O.ThisIsSliders[16].value, O.ThisIsSliders[17].value, O.ThisIsSliders[18].value, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(b7)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end
local function b_(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.0, 0.16)
    SetTextColour(O.ThisIsSliders[19].value, O.ThisIsSliders[20].value, O.ThisIsSliders[21].value, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(b7)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end
local function c0(x, y, z, b7)
    local c1, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local c2 = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)
    local b8 = 1 / c2 * 2
    local c3 = 1 / GetGameplayCamFov() * 100
    local b8 = b8 * c3
    if c1 then
        SetTextScale(0.0 * b8, 0.55 * b8)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(b7)
        DrawText(_x, _y)
    end
end
local function c4(o)
    if
        IsEntityOnScreen(o) and HasEntityClearLosToEntityInFront(PlayerPedId(), o) and not IsPedDeadOrDying(o) and
            not IsPedInVehicle(o, GetVehiclePedIsIn(o), false) and
            IsDisabledControlPressed(0, 24) and
            IsPlayerFreeAiming(PlayerId())
     then
        local x, y, z = table.unpack(GetEntityCoords(o))
        local aj, _x, _y = World3dToScreen2d(x, y, z)
        if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
            local aj, ak = GetCurrentPedWeapon(PlayerPedId())
            af(o, "", GetWeaponDamage(ak, 0))
        end
    end
end
local c5 = false
local function c6(c7, c8, c9)
    if c5 then
    else
        local ca = GetPedBoneCoords(c7, GetEntityBoneIndexByName(c7, "SKEL_HEAD"), 0.0, 0.0, 0.0)
        local aj, cb = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
        Citizen.InvokeNative(
            0x867654CBC7606F2C,
            ac(ca, vector3(0, 0, 0.1)),
            ca,
            c9,
            true,
            cb,
            Citizen.InvokeNative(0xD80958FC74E988A6),
            true,
            true,
            1000.0
        )
        c5 = true
        Wait(500)
        c5 = false
    end
end
local function cc(cd)
    if
        Citizen.InvokeNative(0xE659E47AF827484B, cd) and not Citizen.InvokeNative(0x3317DEDB88C95038, cd) and
            Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, 24) and
            Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, 24) and
            Citizen.InvokeNative(0x2E397FD2ECD37C87, Citizen.InvokeNative(0x4F8644AF03D0E0D6))
     then
        local ce, cf, cg = table.unpack(GetEntityCoords(cd))
        local aj, ch, ci = World3dToScreen2d(ce, cf, cg)
        if ch > q and ch < s and ci > t and ci < u then
            local aj, cb = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
            c6(cd, "", GetWeaponDamage(cb, 1))
        end
    end
end
local cj = {}
local ck = {
    error = false,
    hovered = {},
    cache = {},
    style = {
        logColor = "5",
        Background = {r = 0, g = 0, b = 0, a = 200},
        Background_Border = {r = 150, g = 150, b = 150, a = 255},
        Checkbox_Text = {r = 200, g = 200, b = 200, a = 200},
        Button_Text = {r = 15, g = 15, b = 15, a = 225},
        Item_Background = {r = 150, g = 150, b = 150, a = 225},
        Item_Hovered = {r = 0, g = 0, b = 0, a = 75},
        Item_Hold = {r = 255, g = 255, b = 255, a = 100},
        Item_Toggled = {r = 255, g = 0, b = 0, a = 255},
        TextControl = {r = 255, g = 255, b = 255, a = 100},
        TextControl_Hovered = {r = 200, g = 200, b = 200, a = 175}
    }
}
local cl = {
    ["base"] = {
        nextSize = nil,
        position = {x = 500, y = 250, w = 600, h = 500},
        item = {x = 0, y = 0, w = 0, h = 0, name = ""},
        prev_item = {x = 0, y = 0, w = 0, h = 0, name = ""},
        vars = {sameline = false}
    },
    ["playerlist"] = {
        nextSize = nil,
        position = {x = 500, y = 250, w = 165, h = 335},
        item = {x = 0, y = 0, w = 0, h = 0, name = ""},
        prev_item = {x = 0, y = 0, w = 0, h = 0, name = ""},
        vars = {sameline = false, curplayerped = nil, trash_y = 0.008}
    },
    active = true,
    cursor = {x = 0, y = 0, old_x = 0, old_y = 0},
    dragging = {state = false},
    screen = {w = 0, h = 0},
    vars = {
        menuKey = -1,
        noclip = -1,
        healbind = -1,
        armourbind = -1,
        aimlock = 31086,
        fov = 0.05,
        dance = "dancesilly",
        keyaim = 21,
        currentMenu = "base"
    },
    config = {}
}
cl.screen.w, cl.screen.h =
    Citizen.InvokeNative(0x873C9F3104101DD3, Citizen.PointerValueInt(), Citizen.PointerValueInt())
ck.natives = {}
function ck.natives.GetNuiCursorPosition()
    return Citizen.InvokeNative(0xbdba226f, Citizen.PointerValueInt(), Citizen.PointerValueInt())
end
function ck.natives.IsDisabledControlJustPressed(cm, cn)
    return Citizen.InvokeNative(0x91AEF906BCA88877, cm, cn, Citizen.ReturnResultAnyway())
end
function ck.natives.IsDisabledControlJustReleased(cm, cn)
    return Citizen.InvokeNative(0x305C8DCD79DA8B0F, cm, cn, Citizen.ReturnResultAnyway())
end
function ck.natives.IsDisabledControlPressed(cm, cn)
    return Citizen.InvokeNative(0xE2587F8CBBD87B1D, cm, cn, Citizen.ReturnResultAnyway())
end
function ck.natives.IsDisabledControlReleased(cm, cn)
    return Citizen.InvokeNative(0xFB6C4072E9A32E92, cm, cn, Citizen.ReturnResultAnyway())
end
local function co(cp, cq, cr)
    return coroutine.wrap(
        function()
            local cs, ct = cp()
            if not ct or ct == 0 then
                cr(cs)
                return
            end
            local cu = {handle = cs, destructor = cr}
            setmetatable(cu, entityEnumerator)
            local cv = true
            repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
            until not cv
            cu.destructor, cu.handle = nil, nil
            cr(cs)
        end
    )
end
function EnumeratePeds()
    return co(FindFirstPed, FindNextPed, EndFindPed)
end
local function cw()
    return co(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
local function cx()
    return co(FindFirstObject, FindNextObject, EndFindObject)
end
function RequestControlOnce(H)
    if not NetworkIsInSession or NetworkHasControlOfEntity(H) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(H), true)
    return NetworkRequestControlOfEntity(H)
end
function cj.DrawRect(x, y, aF, aG, r, g, b, P)
    local b5, b4 = aF / cl.screen.w, aG / cl.screen.h
    local _x, _y = x / cl.screen.w + b5 / 2, y / cl.screen.h + b4 / 2
    Citizen.InvokeNative(0x3A618A217E5154F0, _x, _y, b5, b4, r, g, b, P)
end
function cj.DrawBorderedRect(x, y, aF, aG, r, g, b, P)
    cj.DrawRect(x, y, 1, aG, r, g, b, P)
    cj.DrawRect(x, y, aF, 1, r, g, b, P)
    cj.DrawRect(x + aF - 1, y, 1, aG, r, g, b, P)
    cj.DrawRect(x, y - 1 + aG, aF, 1, r, g, b, P)
end
function cj.DrawCursor(cy, cz)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cj.DrawRect((cy or cl.cursor.x) - 2, (cz or cl.cursor.y) - 7, 3, 13, 0, 0, 0, 255)
    cj.DrawRect((cy or cl.cursor.x) - 7, (cz or cl.cursor.y) - 2, 13, 3, 0, 0, 0, 255)
    cj.DrawRect((cy or cl.cursor.x) - 1, (cz or cl.cursor.y) - 6, 1, 11, 255, 255, 255, 255)
    cj.DrawRect((cy or cl.cursor.x) - 6, (cz or cl.cursor.y) - 1, 11, 1, 255, 255, 255, 255)
end
function cj.DrawText(x, y, r, g, b, P, b7, b9, cA, b8)
    Citizen.InvokeNative(0x66E0276CC5F6B9DA, b9)
    Citizen.InvokeNative(0x07C837F9A01C34C9, b8, b8)
    Citizen.InvokeNative(0xC02F4DBFB51D988B, cA)
    Citizen.InvokeNative(0xBE6B23FFA53FB442, r, g, b, P)
    Citizen.InvokeNative(0x25FBB336DF1804CB, "STRING")
    Citizen.InvokeNative(0x6C188BE134E074AA, b7)
    Citizen.InvokeNative(0xCD015E5BB0D96A57, x / cl.screen.w, y / cl.screen.h)
end
function cj.GetTextWidthS(string, b9, b8)
    b9 = b9 or 4
    b8 = b8 or 0.35
    ck.cache[b9] = ck.cache[b9] or {}
    ck.cache[b9][b8] = ck.cache[b9][b8] or {}
    if ck.cache[b9][b8][string] then
        return ck.cache[b9][b8][string].length
    end
    Citizen.InvokeNative(0x54CE8AC98E120CAB, "STRING")
    Citizen.InvokeNative(0x6C188BE134E074AA, string)
    Citizen.InvokeNative(0x66E0276CC5F6B9DA, b9 or 4)
    Citizen.InvokeNative(0x07C837F9A01C34C9, b8 or 0.35, b8 or 0.35)
    local length = Citizen.InvokeNative(0x85F061DA64ED2F67, 1, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
    ck.cache[b9][b8][string] = {length = length}
    return length
end
local function cB(x, y)
    return {x, y}
end
local function cC(cD, cE)
    return Citizen.InvokeNative(0x3FEF770D40960D5A, cD, cE, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end
local function cF(...)
    return msgpack.unpack(Citizen.InvokeNative(0xcf143fb9, Citizen.ReturnResultAnyway(), Citizen.ResultAsObject()))
end
function cj.GetTextWidth(string, b9, b8)
    return cj.GetTextWidthS(string, b9, b8) * cl.screen.w
end
function cj.mouseInBounds(x, y, aF, aG)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    if cl.cursor.x > x and cl.cursor.y > y and cl.cursor.x < x + aF and cl.cursor.y < y + aG then
        return true
    end
    return false
end
function ck.PushNextWindowSize(aF, aG)
    cl[cl.vars.currentMenu].nextSize = {w = aF, h = aG}
end
function ck.DisableActions()
    DisableControlAction(1, 36, true)
    DisableControlAction(1, 37, true)
    DisableControlAction(1, 38, true)
    DisableControlAction(1, 44, true)
    DisableControlAction(1, 45, true)
    DisableControlAction(1, 69, true)
    DisableControlAction(1, 70, true)
    DisableControlAction(0, 63, true)
    DisableControlAction(0, 64, true)
    DisableControlAction(0, 278, true)
    DisableControlAction(0, 279, true)
    DisableControlAction(0, 280, true)
    DisableControlAction(0, 281, true)
    DisableControlAction(0, 91, true)
    DisableControlAction(0, 92, true)
    DisablePlayerFiring(PlayerId(), true)
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 25, true)
    DisableControlAction(1, 37, true)
    DisableControlAction(0, 47, true)
    DisableControlAction(0, 58, true)
    DisableControlAction(0, 140, true)
    DisableControlAction(0, 141, true)
    DisableControlAction(0, 81, true)
    DisableControlAction(0, 82, true)
    DisableControlAction(0, 83, true)
    DisableControlAction(0, 84, true)
    DisableControlAction(0, 12, true)
    DisableControlAction(0, 13, true)
    DisableControlAction(0, 14, true)
    DisableControlAction(0, 15, true)
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 16, true)
    DisableControlAction(0, 17, true)
    DisableControlAction(0, 96, true)
    DisableControlAction(0, 97, true)
    DisableControlAction(0, 98, true)
    DisableControlAction(0, 96, true)
    DisableControlAction(0, 99, true)
    DisableControlAction(0, 100, true)
    DisableControlAction(0, 142, true)
    DisableControlAction(0, 143, true)
    DisableControlAction(0, 263, true)
    DisableControlAction(0, 264, true)
    DisableControlAction(0, 257, true)
    DisableControlAction(1, 26, true)
    DisableControlAction(1, 23, true)
    DisableControlAction(1, 24, true)
    DisableControlAction(1, 25, true)
    DisableControlAction(1, 45, true)
    DisableControlAction(1, 45, true)
    DisableControlAction(1, 80, true)
    DisableControlAction(1, 140, true)
    DisableControlAction(1, 250, true)
    DisableControlAction(1, 263, true)
    DisableControlAction(1, 310, true)
    DisableControlAction(1, 37, true)
    DisableControlAction(1, 73, true)
    DisableControlAction(1, 1, true)
    DisableControlAction(1, 2, true)
    DisableControlAction(1, 335, true)
    DisableControlAction(1, 336, true)
    DisableControlAction(1, 106, true)
end
function ck.Begin(d, cG)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    if d == nil then
        return
    else
        cl.vars.currentMenu = d
        if cl[cl.vars.currentMenu].nextSize then
            cl[cl.vars.currentMenu].position.w, cl[cl.vars.currentMenu].position.h =
                cl[cl.vars.currentMenu].nextSize.w,
                cl[cl.vars.currentMenu].nextSize.h
        end
        cj.DrawRect(
            cl[cl.vars.currentMenu].position.x,
            cl[cl.vars.currentMenu].position.y,
            cl[cl.vars.currentMenu].position.w,
            cl[cl.vars.currentMenu].position.h,
            ck.style.Background.r,
            ck.style.Background.g,
            ck.style.Background.b,
            ck.style.Background.a
        )
        if not cG or not cG.NoBorder then
            cj.DrawBorderedRect(
                cl[cl.vars.currentMenu].position.x - 1,
                cl[cl.vars.currentMenu].position.y - 1,
                cl[cl.vars.currentMenu].position.w + 2,
                cl[cl.vars.currentMenu].position.h + 2,
                ck.style.Background_Border.r,
                ck.style.Background_Border.g,
                ck.style.Background_Border.b,
                ck.style.Background_Border.a
            )
        end
    end
    ck.DisableActions()
end
function ck.End()
    cj.DrawCursor()
    cl[cl.vars.currentMenu].item = {x = 0, y = 0, w = 0, h = 0, name = ""}
    cl[cl.vars.currentMenu].prev_item = {x = 0, y = 0, w = 0, h = 0, name = ""}
end
function ck.SameLine()
    cl[cl.vars.currentMenu].vars.sameline = true
end
function ck.SetMenuKey(cH, w)
    cl.vars.menuKey = cH
end
function ck.CheckOpen()
    if ck.natives.IsDisabledControlJustPressed(0, cl.vars.menuKey) then
        cl.active = not cl.active
    end
end
function ck.Checkbox(cI, cJ, cK)
    if cl.config[cJ] == nil then
        cl.config[cJ] = false
    end
    local cL = "h" .. cJ
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = 20,
                h = 20,
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = 20,
                h = 20,
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = 20,
            h = 20,
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cl[cl.vars.currentMenu].item.w = cj.GetTextWidth(cI, 4, 0.3) + cl[cl.vars.currentMenu].item.w
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + 22,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Checkbox_Text.r,
        ck.style.Checkbox_Text.g,
        ck.style.Checkbox_Text.b,
        ck.style.Checkbox_Text.a,
        tostring(cI),
        4,
        false,
        0.30
    )
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        20,
        20,
        ck.style.Item_Background.r,
        ck.style.Item_Background.g,
        ck.style.Item_Background.b,
        ck.style.Item_Background.a
    )
    if cl.config[cJ] == true then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x + 1,
            cl[cl.vars.currentMenu].item.y + 1,
            18,
            18,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
    end
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x + 1,
            cl[cl.vars.currentMenu].item.y + 1,
            18,
            18,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x + 1,
            cl[cl.vars.currentMenu].item.y + 1,
            18,
            18,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            cl.config[cJ] = not cl.config[cJ]
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x + 1,
                cl[cl.vars.currentMenu].item.y + 1,
                18,
                18,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Button(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        ck.style.Item_Background.r,
        ck.style.Item_Background.g,
        ck.style.Item_Background.b,
        ck.style.Item_Background.a
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Espiro(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        O.ThisIsSliders[4].value,
        O.ThisIsSliders[5].value,
        O.ThisIsSliders[6].value,
        255
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Santos(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        O.ThisIsSliders[10].value,
        O.ThisIsSliders[11].value,
        O.ThisIsSliders[12].value,
        255
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Zeroxx(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        O.ThisIsSliders[13].value,
        O.ThisIsSliders[14].value,
        O.ThisIsSliders[15].value,
        255
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Deso(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        O.ThisIsSliders[16].value,
        O.ThisIsSliders[17].value,
        O.ThisIsSliders[18].value,
        255
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Hud(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        O.ThisIsSliders[22].value,
        O.ThisIsSliders[23].value,
        O.ThisIsSliders[24].value,
        255
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.Glio(cI, f, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 10,
                w = f[1],
                h = f[2],
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    10,
                w = f[1],
                h = f[2],
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 10,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = f[1],
            h = f[2],
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cj.DrawRect(
        cl[cl.vars.currentMenu].item.x,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w,
        cl[cl.vars.currentMenu].item.h,
        O.ThisIsSliders[1].value,
        O.ThisIsSliders[2].value,
        O.ThisIsSliders[3].value,
        255
    )
    cj.DrawText(
        cl[cl.vars.currentMenu].item.x + cl[cl.vars.currentMenu].item.w / 2,
        cl[cl.vars.currentMenu].item.y - 2,
        ck.style.Button_Text.r,
        ck.style.Button_Text.g,
        ck.style.Button_Text.b,
        ck.style.Button_Text.a,
        tostring(cI),
        4,
        true,
        0.30
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Hovered.r,
            ck.style.Item_Hovered.g,
            ck.style.Item_Hovered.b,
            ck.style.Item_Hovered.a
        )
        cj.DrawBorderedRect(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h,
            ck.style.Item_Toggled.r,
            ck.style.Item_Toggled.g,
            ck.style.Item_Toggled.b,
            ck.style.Item_Toggled.a
        )
        if ck.natives.IsDisabledControlJustReleased(0, 24) then
            if cK then
                cK()
            end
        end
        if ck.natives.IsDisabledControlPressed(0, 24) then
            cj.DrawRect(
                cl[cl.vars.currentMenu].item.x,
                cl[cl.vars.currentMenu].item.y,
                cl[cl.vars.currentMenu].item.w,
                cl[cl.vars.currentMenu].item.h,
                ck.style.Item_Hold.r,
                ck.style.Item_Hold.g,
                ck.style.Item_Hold.b,
                ck.style.Item_Hold.a
            )
        end
    end
end
function ck.TextControl(cI, cK)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 10,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 5,
                w = 20,
                h = 20,
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 10,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    5,
                w = 20,
                h = 20,
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 5,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = 20,
            h = 20,
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cl[cl.vars.currentMenu].item.w = cj.GetTextWidth(cI, 4, 0.30) + cl[cl.vars.currentMenu].item.w - 25
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawText(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y - 2,
            ck.style.TextControl_Hovered.r,
            ck.style.TextControl_Hovered.g,
            ck.style.TextControl_Hovered.b,
            ck.style.TextControl_Hovered.a,
            tostring(cI),
            4,
            false,
            0.30
        )
        if ck.natives.IsDisabledControlPressed(0, 24) then
            if cK then
                cK()
            end
            return true
        end
    else
        cj.DrawText(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y - 2,
            ck.style.TextControl.r,
            ck.style.TextControl.g,
            ck.style.TextControl.b,
            ck.style.TextControl.a,
            tostring(cI),
            4,
            false,
            0.30
        )
    end
end
function ck.Separator(cI)
    cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
    cl[cl.vars.currentMenu].prev_item = cl[cl.vars.currentMenu].item
    if not cl[cl.vars.currentMenu].vars.sameline then
        if cl[cl.vars.currentMenu].prev_item.y ~= 0 then
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].prev_item.y + cl[cl.vars.currentMenu].prev_item.h + 5,
                w = 20,
                h = 20,
                name = cI
            }
        else
            cl[cl.vars.currentMenu].item = {
                x = cl[cl.vars.currentMenu].position.x + 15,
                y = cl[cl.vars.currentMenu].position.y + cl[cl.vars.currentMenu].prev_item.y +
                    cl[cl.vars.currentMenu].prev_item.h +
                    5,
                w = 20,
                h = 20,
                name = cI
            }
        end
    else
        cl[cl.vars.currentMenu].item = {
            x = cl[cl.vars.currentMenu].prev_item.x + cl[cl.vars.currentMenu].prev_item.w + 5,
            y = cl[cl.vars.currentMenu].prev_item.y,
            w = 20,
            h = 20,
            name = cI
        }
        cl[cl.vars.currentMenu].vars.sameline = false
    end
    cl[cl.vars.currentMenu].item.w = cj.GetTextWidth(cI, 4, 0.3) + cl[cl.vars.currentMenu].item.w
    cj.DrawBorderedRect(
        cl[cl.vars.currentMenu].item.x - 1,
        cl[cl.vars.currentMenu].item.y,
        cl[cl.vars.currentMenu].item.w + 546,
        cl[cl.vars.currentMenu].item.h,
        ck.style.TextControl.r,
        ck.style.TextControl.g,
        ck.style.TextControl.b,
        ck.style.TextControl.a
    )
    if
        cj.mouseInBounds(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y,
            cl[cl.vars.currentMenu].item.w,
            cl[cl.vars.currentMenu].item.h
        )
     then
        cj.DrawText(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y - 2,
            ck.style.TextControl_Hovered.r,
            ck.style.TextControl_Hovered.g,
            ck.style.TextControl_Hovered.b,
            ck.style.TextControl_Hovered.a,
            tostring(cI),
            4,
            false,
            0.30
        )
    else
        cj.DrawText(
            cl[cl.vars.currentMenu].item.x,
            cl[cl.vars.currentMenu].item.y - 2,
            ck.style.TextControl.r,
            ck.style.TextControl.g,
            ck.style.TextControl.b,
            ck.style.TextControl.a,
            tostring(cI),
            4,
            false,
            0.30
        )
    end
end
function ck.Groupbox(cI)
    cj.DrawBorderedRect(
        cl[cl.vars.currentMenu].position.x + 9,
        cl[cl.vars.currentMenu].position.y + 29,
        cl[cl.vars.currentMenu].position.w - 20,
        cl[cl.vars.currentMenu].position.h - 40,
        ck.style.Background_Border.r,
        ck.style.Background_Border.g,
        ck.style.Background_Border.b,
        ck.style.Background_Border.a
    )
end
function ck.ListChoice(cM, f, cN, cO)
    local cP = #cM
    local cQ = cN.current
    ck.Button(
        "\194\171",
        cB(f[1], f[2]),
        function()
            if cQ > 1 then
                cQ = cQ - 1
            else
                cQ = cP
            end
        end
    )
    ck.SameLine()
    ck.TextControl(cM[cQ])
    ck.SameLine()
    ck.Button(
        "\194\187",
        cB(f[1], f[2]),
        function()
            if cQ < cP then
                cQ = cQ + 1
            else
                cQ = 1
            end
        end
    )
    cO(cQ)
    if cQ == 1 then
        Citizen.InvokeNative(
            0x93A3996368C94158,
            Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false),
            1.0 * 20.0
        )
    elseif cQ == 2 then
        Citizen.InvokeNative(
            0x93A3996368C94158,
            Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false),
            2.0 * 20.0
        )
    elseif cQ == 3 then
        Citizen.InvokeNative(
            0x93A3996368C94158,
            Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false),
            5.0 * 20.0
        )
    elseif cQ == 4 then
        Citizen.InvokeNative(
            0x93A3996368C94158,
            Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false),
            10.0 * 20.0
        )
    end
end
function ck.AimlockList(cM, f, cN, cO)
    local cP = #cM
    local cQ = cN.current
    ck.Button(
        "\194\171",
        cB(f[1], f[2]),
        function()
            if cQ > 1 then
                cQ = cQ - 1
            else
                cQ = cP
            end
        end
    )
    ck.SameLine()
    ck.TextControl(cM[cQ])
    ck.SameLine()
    ck.Button(
        "\194\187",
        cB(f[1], f[2]),
        function()
            if cQ < cP then
                cQ = cQ + 1
            else
                cQ = 1
            end
        end
    )
    cO(cQ)
    if cQ == 1 then
        cl.vars.aimlock = 31086
    elseif cQ == 2 then
        cl.vars.aimlock = 0
    elseif cQ == 3 then
        cl.vars.aimlock = 11816
    elseif cQ == 4 then
        cl.vars.aimlock = 28422
    elseif cQ == 5 then
        cl.vars.aimlock = 52301
    end
end
function ck.FovList(cM, f, cN, cO)
    local cP = #cM
    local cQ = cN.current
    ck.Button(
        "\194\171",
        cB(f[1], f[2]),
        function()
            if cQ > 1 then
                cQ = cQ - 1
            else
                cQ = cP
            end
        end
    )
    ck.SameLine()
    ck.TextControl(cM[cQ])
    ck.SameLine()
    ck.Button(
        "\194\187",
        cB(f[1], f[2]),
        function()
            if cQ < cP then
                cQ = cQ + 1
            else
                cQ = 1
            end
        end
    )
    cO(cQ)
    if cQ == 1 then
        cl.vars.fov = 0.05
    elseif cQ == 2 then
        cl.vars.fov = 0.10
    elseif cQ == 3 then
        cl.vars.fov = 0.15
    elseif cQ == 4 then
        cl.vars.fov = 0.20
    elseif cQ == 5 then
        cl.vars.fov = 0.25
    end
end
function ck.AimlockKey(cM, f, cN, cO)
    local cP = #cM
    local cQ = cN.current
    ck.Button(
        "\194\171",
        cB(f[1], f[2]),
        function()
            if cQ > 1 then
                cQ = cQ - 1
            else
                cQ = cP
            end
        end
    )
    ck.SameLine()
    ck.TextControl(cM[cQ])
    ck.SameLine()
    ck.Button(
        "\194\187",
        cB(f[1], f[2]),
        function()
            if cQ < cP then
                cQ = cQ + 1
            else
                cQ = 1
            end
        end
    )
    cO(cQ)
    if cQ == 1 then
        cl.vars.keyaim = 21
    elseif cQ == 2 then
        cl.vars.keyaim = 19
    elseif cQ == 3 then
        cl.vars.keyaim = 25
    elseif cQ == 4 then
        cl.vars.keyaim = 24
    elseif cQ == 5 then
        cl.vars.keyaim = 36
    end
end
function ck.DanceList(cM, f, cN, cO)
    local cP = #cM
    local cQ = cN.current
    ck.Button(
        "\194\171",
        cB(f[1], f[2]),
        function()
            if cQ > 1 then
                cQ = cQ - 1
            else
                cQ = cP
            end
        end
    )
    ck.SameLine()
    ck.TextControl(cM[cQ])
    ck.SameLine()
    ck.Button(
        "\194\187",
        cB(f[1], f[2]),
        function()
            if cQ < cP then
                cQ = cQ + 1
            else
                cQ = 1
            end
        end
    )
    cO(cQ)
    if cQ == 1 then
        cl.vars.dance = "dancesilly"
    elseif cQ == 2 then
        cl.vars.dance = "headbutted"
    elseif cQ == 3 then
        cl.vars.dance = "baseballthrow"
    elseif cQ == 4 then
        cl.vars.dance = "slapped"
    end
end
local cR = {
    ["draw_menu"] = true,
    ["datastore"] = {},
    ["credits"] = "Vanilla UI, bäärs#3150",
    ["list_choices"] = {["test"] = {["items"] = {"x0", "x2", "x5", "x10"}, ["current"] = 1}}
}
local cS = {
    ["list_choices"] = {
        ["test"] = {["items"] = {"Head", "Body", "Pelvis", "Right hand", "Right foot"}, ["current"] = 1}
    }
}
local cT = {["list_choices"] = {["test"] = {["items"] = {"0.05", "0.10", "0.15", "0.20", "0.25"}, ["current"] = 2}}}
local cU = {
    ["list_choices"] = {
        ["test"] = {
            ["items"] = {"Left Shift", "Left ALT", "Right Mouse Click", "Left Mouse Click", "Left Ctrl"},
            ["current"] = 1
        }
    }
}
local cV = {
    ["list_choices"] = {
        ["test"] = {["items"] = {"dancesilly", "headbutted", "baseballthrow", "slapped"}, ["current"] = 1}
    }
}
cR["draw_menu"] = function()
    local cW = true
    local cX = {
        [1] = {["name"] = "Player", ["size"] = cB(84, 20)},
        [2] = {["name"] = "Weapon", ["size"] = cB(84, 20)},
        [3] = {["name"] = "Vehicle", ["size"] = cB(84, 20)},
        [4] = {["name"] = "Visual", ["size"] = cB(84, 20)},
        [5] = {["name"] = "Destroyer", ["size"] = cB(84, 20)},
        [6] = {["name"] = "Settings", ["size"] = cB(84, 20)}
    }
    local cY = 1
    while cR["draw_menu"] do
        Citizen["Wait"](0)
        cR["datastore"]["local_player"] = {
            ["id"] = PlayerId(),
            ["ped"] = PlayerPedId(),
            ["coords"] = GetEntityCoords(PlayerPedId()),
            ["heading"] = GetEntityHeading(PlayerPedId())
        }
        if cW then
            ck.PushNextWindowSize(710, 335)
            ck.SetMenuKey(11)
            local cZ, c_, d0, d1, d2, d3 = GetUtcTime()
            local d4 = string.format("%02d/%02d/%04d", d0, c_, cZ) .. " " .. string.format("%02d:%02d", d1, d2)
            v("Injected at " .. d4 .. "\n")
            cW = false
        end
        ck.CheckOpen()
        if cl.active then
            ck.Begin("base", {NoBorder = false})
            ck.TextControl("Cobra Menu", cR["handle_dragging"])
            ck.SameLine()
            ck.Groupbox()
            for cH = 1, #cX do
                local d5 = cX[cH]
                if d5 then
                    if cY == cH then
                        ck.Button(
                            "" .. d5["name"],
                            cB(150, 20),
                            function()
                            end
                        )
                    else
                        ck.Button(
                            d5["name"],
                            d5["size"],
                            function()
                                cY = cH
                            end
                        )
                    end
                    if cH < #cX then
                        ck.SameLine()
                    end
                end
            end
            if cY == 1 then
                ck.TextControl("Thanks for Buy Cobra Menu bäärs#3150")
                ck.Checkbox("Infinite combat roll", "self_infinite_combat_roll")
                ck.SameLine()
                ck.Checkbox("Infinite stamina", "self_infinite_stamina")
                ck.SameLine()
                ck.Checkbox("Noclip", "self_noclip")
                ck.SameLine()
                ck.Checkbox("Semi GodMode", "self_semigod")
                ck.SameLine()
                ck.Checkbox("Invisible", "self_invi")
                ck.SameLine()
                ck.Button("TP to Coords", cB(70, 20), cR.menu_features["tpcoo"])
                ck.SameLine()
                ck.Button("TP to Waypoint", cB(100, 20), cR.menu_features["tptwp"])
                ck.Button("Heal", cB(50, 20), cR.menu_features["heal"])
                ck.SameLine()
                ck.Button("Armour", cB(50, 20), cR.menu_features["armour"])
                ck.SameLine()
                ck.Button("Revive", cB(50, 20), cR.menu_features["self_revive"])
                ck.SameLine()
                ck.Button("Skin Legit", cB(70, 20), cR.menu_features["self_skin"])
                ck.SameLine()
                ck.Checkbox("Hide Glife ID", "hide_id")
                if cl.config["self_noclip"] then
                    ck.TextControl(
                        "~g~Noclip Info: ~w~Press 'Q' for Move up - Press 'Z' for Move down - Press 'LEFT SHIFT' for Speed"
                    )
                end
                ck.Button("CLICK HERE FOR MINIMIZE", cB(150, 20), cR.menu_features["gui_close"])
                ck.SameLine()
                ck.TextControl("For Open/Close Menu press AV PAG")
                ck.TextControl("bäärs#3150\n~w~discord.com/sPHW7CTTZj")
                if bk("screenshot-basic") then
                    ck.TextControl("~r~screenshot-basic ~w~detected disable it")
                end
                if bk("LRAC_REQ") then
                    ck.TextControl("~r~LRAC_REQ ~w~detected disable it")
                end
            elseif cY == 2 then
                ck.Checkbox("Aimbot", "weapons_aimbot2")
                if cl.config["weapons_aimbot2"] then
                    ck.SameLine()
                    ck.Checkbox("Through Walls", "weapons_aimbot")
                end
                ck.SameLine()
                ck.Checkbox("Aimlock", "weapons_aimlock")
                if cl.config["weapons_aimlock"] then
                    ck.SameLine()
                    ck.Checkbox("Draw Line", "weapons_drawline")
                end
                ck.SameLine()
                ck.Checkbox("Aimlock NPC", "weapons_aimlocknpc")
                ck.SameLine()
                ck.Checkbox("Draw Aimlock FOV", "weapons_aimlockfov")
                ck.SameLine()
                ck.Checkbox("Triggerbot", "weapons_triggerbot")
                ck.Checkbox("No Reload", "weapons_noreload")
                ck.SameLine()
                ck.Checkbox("Infinite Ammo", "weapons_infiammo")
                ck.SameLine()
                ck.Checkbox("Rapid Fire", "weapons_rapidfire")
                ck.SameLine()
                ck.Checkbox("Spinbot", "weapons_spin")
                ck.Button("Refill Ammo", cB(80, 20), cR.menu_features["weapon_refill"])
                ck.SameLine()
                ck.Button("Give Weapon", cB(80, 20), cR.menu_features["give_allwep"])
                ck.SameLine()
                ck.Button("Remove All Weapons", cB(110, 20), cR.menu_features["give_remwep"])
                ck.Separator("")
                ck.AimlockList(
                    cS["list_choices"]["test"]["items"],
                    cB(20, 20),
                    cS["list_choices"]["test"],
                    function(d6)
                        cS["list_choices"]["test"]["current"] = d6
                    end
                )
                ck.SameLine()
                ck.TextControl("Aimlock Body")
                ck.FovList(
                    cT["list_choices"]["test"]["items"],
                    cB(20, 20),
                    cT["list_choices"]["test"],
                    function(d6)
                        cT["list_choices"]["test"]["current"] = d6
                    end
                )
                ck.SameLine()
                ck.TextControl("Custom FOV")
                ck.AimlockKey(
                    cU["list_choices"]["test"]["items"],
                    cB(20, 20),
                    cU["list_choices"]["test"],
                    function(d6)
                        cU["list_choices"]["test"]["current"] = d6
                    end
                )
                ck.SameLine()
                ck.TextControl("Aimlock Keybind ~r~[Remember, Aimlock keybind is this + Right Mouse Cick]]")
            elseif cY == 3 then
                ck.Button("Spawn", cB(80, 20), cR.menu_features["vehicle_spawn"])
                ck.SameLine()
                ck.Button("Repair", cB(80, 20), cR.menu_features["vehicle_repair"])
                ck.SameLine()
                ck.Button("Flip", cB(80, 20), cR.menu_features["vehicle_flip"])
                ck.SameLine()
                ck.Button("Delete", cB(80, 20), cR.menu_features["vehicle_delete"])
                ck.SameLine()
                ck.Button("Warp", cB(80, 20), cR.menu_features["vehicle_warp"])
                ck.SameLine()
                ck.Button("Unlock All Vehicles", cB(100, 20), cR.menu_features["vehicle_unlock"])
                ck.SameLine()
                ck.Button("Set Color", cB(80, 20), cR.menu_features["vehicle_color"])
                ck.Button("Finder", cB(80, 20), cR.menu_features["vehicle_finder"])
                ck.SameLine()
                ck.Button("Max Tunning", cB(100, 20), cR.menu_features["vehicle_maxtun"])
                ck.Checkbox("Auto Repair", "vehicle_autorepair")
                ck.SameLine()
                ck.Checkbox("No Fall", "vehicle_nofall")
                ck.SameLine()
                ck.Checkbox("Better Handling", "vehicle_handling")
                ck.SameLine()
                ck.Checkbox("Drift Mode", "vehicle_drift")
                ck.ListChoice(
                    cR["list_choices"]["test"]["items"],
                    cB(20, 20),
                    cR["list_choices"]["test"],
                    function(d6)
                        cR["list_choices"]["test"]["current"] = d6
                    end
                )
                ck.SameLine()
                ck.TextControl("Speed Multiplier")
                local d7 = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
                local d8 = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(d7))) .. " \nVehicle ID: " .. d7
                ck.TextControl("Closest Vehicle: " .. d8)
                ck.TextControl("")
                if cl.config["vehicle_drift"] then
                    ck.TextControl("~g~Drift Mode: ~w~Press 'LEFT SHIFT' for Drift")
                end
                ck.TextControl("~r~WARP INFO: ~w~Only works in vehicles without driver")
            elseif cY == 4 then
                ck.Checkbox("Crosshair", "visuals_crosshair")
                ck.SameLine()
                ck.Checkbox("ESP Boxes", "visuals_boxes")
                ck.SameLine()
                ck.Checkbox("ESP Corner Boxes", "visuals_corner")
                ck.SameLine()
                ck.Checkbox("ESP Skeleton", "visuals_skeleton")
                ck.SameLine()
                ck.Checkbox("ESP Lines", "visuals_lines")
                ck.SameLine()
                ck.Checkbox("ESP Weapon", "visuals_weapon")
                ck.SameLine()
                ck.Checkbox("ESP Names", "visual_names")
                ck.Checkbox("Glife Loot Bags", "visual_bags")
                ck.SameLine()
                ck.Checkbox("ESP NPCS", "visual_npc")
                ck.SameLine()
                ck.Checkbox("ESP Vehicles", "visual_veh")
                ck.SameLine()
                ck.Checkbox("ESP Props", "visual_obj")
                ck.SameLine()
                ck.Checkbox("ESP GodMode", "visual_god")
                ck.TextControl("~r~ESP Props ~w~most of the time it lowers a lot of FPS")
            elseif cY == 5 then
                if bk("gtalife") then
                    ck.TextControl("You are in ~g~Glife")
                    ck.TextControl("These options are ~r~dangerous")
                else
                    ck.Checkbox("Particles All Players", "fuck_particles")
                    if cl.config["fuck_particles"] then
                        ck.SameLine()
                        ck.Checkbox("Lag", "fuck_particles2")
                    end
                    ck.SameLine()
                    ck.Checkbox("Delete Vehicles", "delete_vehicles")
                    ck.SameLine()
                    ck.Checkbox("Spam Vehicles", "spam_vehicles")
                    ck.SameLine()
                    ck.Checkbox("Taze All", "taze_all")
                    ck.SameLine()
                    ck.Checkbox("Invisible All Vehicles", "invi_veh")
                    ck.SameLine()
                    ck.Checkbox("Max Speed Vehicles", "max_speed")
                    ck.Checkbox("Rainbow All Vehicles", "rain_veh")
                    ck.SameLine()
                    ck.Checkbox("Fly Vehicles", "fly_veh")
                    ck.SameLine()
                    ck.Checkbox("Explode All", "explode_all")
                    ck.SameLine()
                    ck.Checkbox("Delete Props", "delete_prop")
                    ck.Button("Destroy Map", cB(80, 20), cR.menu_features["prop_all"])
                    ck.SameLine()
                    ck.Button("Give RPG All", cB(80, 20), cR.menu_features["rpg_all"])
                    ck.SameLine()
                    ck.Button("Give Vehicle All", cB(80, 20), cR.menu_features["veh_all"])
                    ck.SameLine()
                    ck.Button("Slap All", cB(80, 20), cR.menu_features["slap_all"])
                    ck.SameLine()
                    ck.Button("Dance All", cB(80, 20), cR.menu_features["dance_all"])
                    ck.SameLine()
                    ck.Button("Kill All", cB(80, 20), cR.menu_features["th_all"])
                    ck.SameLine()
                    ck.Button("Spam Message All", cB(100, 20), cR.menu_features["msg_all"])
                    ck.DanceList(
                        cV["list_choices"]["test"]["items"],
                        cB(20, 20),
                        cV["list_choices"]["test"],
                        function(d6)
                            cV["list_choices"]["test"]["current"] = d6
                        end
                    )
                    ck.SameLine()
                    ck.TextControl("Emote Dance All")
                    if bk("esx_vangelico_robbery") then
                        ck.Button("ESX MONEY", cB(80, 20), cR.menu_features["esx_money"])
                    end
                    ck.TextControl("")
                end
            elseif cY == 6 then
                ck.Button("Unload", cB(80, 20), cR.menu_features["unload_menu"])
                ck.SameLine()
                ck.Button("Bind Menu Key", cB(80, 20), cR.menu_features["bind_menu"])
                ck.SameLine()
                ck.Button("Bind Noclip", cB(80, 20), cR.menu_features["bind_no"])
                ck.SameLine()
                ck.Button("Bind Heal", cB(80, 20), cR.menu_features["bind_heal"])
                ck.SameLine()
                ck.Button("Bind Armour", cB(80, 20), cR.menu_features["bind_armour"])
                ck.SameLine()
                ck.TextControl(" ")
                ck.SameLine()
                ck.TextControl(" ")
                ck.SameLine()
                ck.TextControl(" ")
                ck.SameLine()
                ck.TextControl(" ")
                ck.SameLine()
                ck.TextControl(" ")
                ck.SameLine()
                ck.TextControl(" ")
                ck.SameLine()
                ck.Button("Quit Game", cB(80, 20), cR.menu_features["quit_a"])
                ck.SameLine()
                ck.Button("Crash Game", cB(80, 20), cR.menu_features["crash_a"])
                ck.Checkbox("Glife farm", "glife_farm")
                ck.SameLine()
                ck.Checkbox("Glife XP", "glife_xp")
                ck.Separator("Credits: bäärs#3150")
                -- discord.com/sPHW7CTTZj
                ck.Glio("", cB(20, 20), cR.menu_features["skel_colorv"])
                ck.SameLine()
                ck.TextControl("Skeleton Color: ~g~Player Visible")
                ck.Espiro("", cB(20, 20), cR.menu_features["skel_coloriv"])
                ck.SameLine()
                ck.TextControl("Skeleton Color: ~r~Player Invisible")
                ck.Santos("", cB(20, 20), cR.menu_features["lines_color"])
                ck.SameLine()
                ck.TextControl("Lines Color: ~g~Player on Screen")
                ck.Zeroxx("", cB(20, 20), cR.menu_features["lines_colorno"])
                ck.SameLine()
                ck.TextControl("Lines Color: ~r~Player not on Screen")
                ck.Deso("", cB(20, 20), cR.menu_features["bags_color"])
                ck.SameLine()
                ck.TextControl("Loot Bag Color: ~g~Glife")
                ck.Hud("", cB(20, 20), cR.menu_features["hud_rgb"])
                ck.SameLine()
                ck.TextControl("Weapons Wheel Color")
            end
            ck.End()
            ck.Begin("playerlist", {NoBorder = false})
            cl["playerlist"].position.x = cl["base"].position.x + 725
            cl["playerlist"].position.y = cl["base"].position.y
            if cl["playerlist"].vars.selectedPlayer ~= nil then
                local S = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
                ck.TextControl(
                    "~r~Back",
                    function()
                        cl["playerlist"].vars.selectedPlayer = nil
                    end
                )
                ck.Checkbox("Spectate", "pl_spectate")
                ck.TextControl(
                    "Teleport",
                    function()
                        SetEntityCoords(cR["datastore"]["local_player"]["ped"], GetEntityCoords(S))
                    end
                )
                ck.TextControl(
                    "Clone Outfit",
                    function()
                        local P = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
                        local b = PlayerPedId()
                        hat_trjtyrjkytkt = Citizen.InvokeNative(0x898CC20EA75BACD8, P, 0)
                        hat_texture_hgrehjrtjt = Citizen.InvokeNative(0xE131A28626F81AB2, P, 0)
                        glasses_htrkytrkyt = Citizen.InvokeNative(0x898CC20EA75BACD8, P, 1)
                        glasses_texture_RJRTJRRTJ = Citizen.InvokeNative(0xE131A28626F81AB2, P, 1)
                        eare_grehrehgregrrt = Citizen.InvokeNative(0x898CC20EA75BACD8, P, 2)
                        ear_texture_HREHRTHJTRJR = Citizen.InvokeNative(0xE131A28626F81AB2, P, 2)
                        watch_hETRTRT = Citizen.InvokeNative(0x898CC20EA75BACD8, P, 6)
                        watch_texture_HRTEJRYJYTJTY = Citizen.InvokeNative(0xE131A28626F81AB2, P, 6)
                        wrist_EHTRHRHJRJY = Citizen.InvokeNative(0x898CC20EA75BACD8, P, 7)
                        wrist_texture_HTRJRJYJTYU = Citizen.InvokeNative(0xE131A28626F81AB2, P, 7)
                        head_drawable_LGLGLKGKGKGKG = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 0)
                        head_palette_JGRTJHJTHJTY = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 0)
                        head_texture_JGRIEGHJERI = Citizen.InvokeNative(0x04A355E041E004E6, P, 0)
                        beard_drawable_HEHRTJYJYT = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 1)
                        beard_palette = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 1)
                        beard_texture_HTRJYTJTYJT = Citizen.InvokeNative(0x04A355E041E004E6, P, 1)
                        hair_drawable_HTRJTYKJTUK = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 2)
                        hair_palette_JJJJJJJJ = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 2)
                        hair_texture_POPOPOPOP = Citizen.InvokeNative(0x04A355E041E004E6, P, 2)
                        torso_drawable_FREJIUGHERU = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 3)
                        torso_palette_GREHTRH = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 3)
                        torso_texture_GREHTHRTJTY = Citizen.InvokeNative(0x04A355E041E004E6, P, 3)
                        legs_drawable_GERGREHETRHTRH = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 4)
                        legs_palette_gEHTRTRR = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 4)
                        legs_texture_PLOLKPLOLPPOL = Citizen.InvokeNative(0x04A355E041E004E6, P, 4)
                        hands_drawable_GRTHTRYJYT = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 5)
                        hands_palette_HGRTHRHRTHR = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 5)
                        hands_texture_HTIKOULUIKUI = Citizen.InvokeNative(0x04A355E041E004E6, P, 5)
                        foot_drawable_HTRYJTYJTYY = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 6)
                        foot_palette_gRTHRRTDTDTER = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 6)
                        foot_texture_GTHRTHRTHDT = Citizen.InvokeNative(0x04A355E041E004E6, P, 6)
                        acc1_drawable_NTRKJTYKTY = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 7)
                        acc1_palette_HRTYJKTYUKTU = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 7)
                        acc1_texture_HTEHRTHTFH = Citizen.InvokeNative(0x04A355E041E004E6, P, 7)
                        acc2_drawable_LKPLPOPLPL = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 8)
                        acc2_palette_LOPKJIOJO = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 8)
                        acc2_texture_GRETRHR = Citizen.InvokeNative(0x04A355E041E004E6, P, 8)
                        acc3_drawable_GREJGHRTBGRH = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 9)
                        acc3_palette_GJRTIHKRTS = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 9)
                        acc3_texture_GREGRHTHTR = Citizen.InvokeNative(0x04A355E041E004E6, P, 9)
                        mask_drawable_GETHRTEHDR = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 10)
                        mask_palette_hRTHTRHTRYTHT = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 10)
                        mask_texture_HTHRTHTFDTY = Citizen.InvokeNative(0x04A355E041E004E6, P, 10)
                        aux_drawable_GRTHRTHTDTR = Citizen.InvokeNative(0x67F3780DD425D4FC, P, 11)
                        aux_palette_GRTHRTHTRT = Citizen.InvokeNative(0xE3DD5F2A84B42281, P, 11)
                        aux_texture_HREHESHTR = Citizen.InvokeNative(0x04A355E041E004E6, P, 11)
                        Citizen.InvokeNative(0x93376B65A266EB5F, b, 0, hat_trjtyrjkytkt, hat_texture_hgrehjrtjt, 1)
                        Citizen.InvokeNative(0x93376B65A266EB5F, b, 1, glasses_htrkytrkyt, glasses_texture_RJRTJRRTJ, 1)
                        Citizen.InvokeNative(0x93376B65A266EB5F, b, 2, eare_grehrehgregrrt, ear_texture_HREHRTHJTRJR, 1)
                        Citizen.InvokeNative(0x93376B65A266EB5F, b, 6, watch_hETRTRT, watch_texture_HRTEJRYJYTJTY, 1)
                        Citizen.InvokeNative(0x93376B65A266EB5F, b, 7, wrist_EHTRHRHJRJY, wrist_texture_HTRJRJYJTYU, 1)
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            0,
                            head_drawable_LGLGLKGKGKGKG,
                            head_texture_JGRIEGHJERI,
                            head_palette_JGRTJHJTHJTY
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            1,
                            beard_drawable_HEHRTJYJYT,
                            beard_texture_HTRJYTJTYJT,
                            beard_palette
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            2,
                            hair_drawable_HTRJTYKJTUK,
                            hair_texture_POPOPOPOP,
                            hair_palette_JJJJJJJJ
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            3,
                            torso_drawable_FREJIUGHERU,
                            torso_texture_GREHTHRTJTY,
                            torso_palette_GREHTRH
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            4,
                            legs_drawable_GERGREHETRHTRH,
                            legs_texture_PLOLKPLOLPPOL,
                            legs_palette_gEHTRTRR
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            5,
                            hands_drawable_GRTHTRYJYT,
                            hands_texture_HTIKOULUIKUI,
                            hands_palette_HGRTHRHRTHR
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            6,
                            foot_drawable_HTRYJTYJTYY,
                            foot_texture_GTHRTHRTHDT,
                            foot_palette_gRTHRRTDTDTER
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            7,
                            acc1_drawable_NTRKJTYKTY,
                            acc1_texture_HTEHRTHTFH,
                            acc1_palette_HRTYJKTYUKTU
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            8,
                            acc2_drawable_LKPLPOPLPL,
                            acc2_texture_GRETRHR,
                            acc2_palette_LOPKJIOJO
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            9,
                            acc3_drawable_GREJGHRTBGRH,
                            acc3_texture_GREGRHTHTR,
                            acc3_palette_GJRTIHKRTS
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            10,
                            mask_drawable_GETHRTEHDR,
                            mask_texture_HTHRTHTFDTY,
                            mask_palette_hRTHTRHTRYTHT
                        )
                        Citizen.InvokeNative(
                            0x262B14F48D29DE80,
                            b,
                            11,
                            aux_drawable_GRTHRTHTDTR,
                            aux_texture_HREHESHTR,
                            aux_palette_GRTHRTHTRT
                        )
                    end
                )
                ck.TextControl(
                    "Give RPG",
                    function()
                        local P = GetEntityCoords(S)
                        Citizen.InvokeNative(
                            0x673966A0C0FD7171,
                            Citizen.InvokeNative(0xD24D37CC275948CC, "PICKUP_WEAPON_RPG"),
                            P.x,
                            P.y,
                            P.z + 1.0,
                            1,
                            1,
                            Citizen.InvokeNative(0xD24D37CC275948CC, "PICKUP_WEAPON_RPG"),
                            1,
                            0
                        )
                        Citizen.InvokeNative(0x78015C9B4B3ECC9D, pickup, 60)
                    end
                )
                ck.TextControl(
                    "Give Fake Armour",
                    function()
                        local P = GetEntityCoords(S)
                        Citizen.InvokeNative(
                            0x673966A0C0FD7171,
                            Citizen.InvokeNative(0xD24D37CC275948CC, "PICKUP_VEHICLE_ARMOUR_STANDARD"),
                            P.x,
                            P.y,
                            P.z + 1.0,
                            1,
                            1,
                            Citizen.InvokeNative(0xD24D37CC275948CC, "PICKUP_VEHICLE_ARMOUR_STANDARD"),
                            1,
                            0
                        )
                        Citizen.InvokeNative(0x78015C9B4B3ECC9D, pickup, 60)
                    end
                )
                ck.TextControl(
                    "Spawn Mega Prop",
                    function()
                        local P = "\107\116\49\95\108\111\100\95\115\108\111\100\52"
                        local b = Citizen.InvokeNative(0xD24D37CC275948CC, P)
                        local d9 = Citizen.InvokeNative(0x509D5878EB39E842, b, 0, 0, 0, true, true, true)
                        Citizen.InvokeNative(
                            0x6B9BBD38AB0796DF,
                            d9,
                            S,
                            Citizen.InvokeNative(0x3F428D08BE5AAE31, S, 0),
                            0,
                            0,
                            -0.8,
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
                        local da = "\112\111\49\95\108\111\100\95\48\52"
                        local db = Citizen.InvokeNative(0xD24D37CC275948CC, da)
                        local aQ = Citizen.InvokeNative(0x509D5878EB39E842, db, 0, 0, 0, true, true, true)
                        Citizen.InvokeNative(
                            0x6B9BBD38AB0796DF,
                            aQ,
                            S,
                            Citizen.InvokeNative(0x3F428D08BE5AAE31, S, 0),
                            0,
                            0,
                            -0.8,
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
                        local g = "\112\111\49\95\108\111\100\95\48\54"
                        local aG = Citizen.InvokeNative(0xD24D37CC275948CC, g)
                        local T = Citizen.InvokeNative(0x509D5878EB39E842, aG, 0, 0, 0, true, true, true)
                        Citizen.InvokeNative(
                            0x6B9BBD38AB0796DF,
                            T,
                            S,
                            Citizen.InvokeNative(0x3F428D08BE5AAE31, S, 0),
                            0,
                            0,
                            -0.8,
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
                )
                ck.TextControl(
                    "Give Vehicle",
                    function()
                        local P = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
                        local b = a1("Vehicle Name", "", 20)
                        if b and IsModelValid(b) and IsModelAVehicle(b) then
                            al(b)
                            while not HasModelLoaded(b) do
                                Wait(0)
                            end
                            local d9 =
                                Citizen.InvokeNative(
                                0xAF35D0D2583051B0,
                                Citizen.InvokeNative(0xD24D37CC275948CC, b),
                                cC(P),
                                GetEntityHeading(P),
                                true,
                                true
                            )
                        else
                            print "Model not valid"
                        end
                    end
                )
                ck.TextControl(
                    "Slap",
                    function()
                        CreateThread(
                            function()
                                for T = 1, 1 do
                                    CreateThread(
                                        function()
                                            local S = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
                                            local aA = GetHashKey("t20")
                                            while not HasModelLoaded(aA) do
                                                Wait(0)
                                                RequestModel(aA)
                                            end
                                            local dc =
                                                CreateVehicle(
                                                aA,
                                                GetOffsetFromEntityInWorldCoords(S, 0.0, -8.0, 0.0),
                                                GetEntityHeading(S),
                                                true,
                                                true
                                            )
                                            SetVehicleForwardSpeed(dc, 750 / 3.6)
                                            SetEntityVisible(dc, false)
                                            Wait(250)
                                            DeleteEntity(dc)
                                        end
                                    )
                                    Wait(15)
                                end
                            end
                        )
                    end
                )
                ck.TextControl(
                    "Dance",
                    function()
                        TriggerServerEvent(
                            "ServerValidEmote",
                            GetPlayerServerId(cl["playerlist"].vars.selectedPlayer),
                            "dancesilly"
                        )
                    end
                )
                ck.TextControl(
                    "Kill",
                    function()
                        local P = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
                        local b = PlayerPedId()
                        lib = "anim@gangops@hostage@"
                        anim1 = "perp_fail"
                        lib2 = "anim@gangops@hostage@"
                        anim2 = "victim_fail"
                        distans = 0.11
                        distans2 = -0.24
                        height = 0.0
                        spin = 0.0
                        length = 0.2
                        controlFlagMe = 168
                        controlFlagTarget = 0
                        animFlagTarget = 1
                        attachFlag = false
                        local d9 = P
                        target = GetPlayerServerId(cl["playerlist"].vars.selectedPlayer)
                        if d9 ~= nil then
                            TriggerServerEvent(
                                "cmg3_animations:sync",
                                b,
                                lib,
                                lib2,
                                anim1,
                                anim2,
                                distans,
                                distans2,
                                height,
                                target,
                                length,
                                spin,
                                controlFlagMe,
                                controlFlagTarget,
                                animFlagTarget,
                                attachFlag
                            )
                        else
                        end
                    end
                )
                ck.TextControl(
                    "Send Fake Message",
                    function()
                        if bk("esx_policejob") then
                            local S = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
                            local dd = a1("Enter the Message", "", 50)
                            TriggerServerEvent(
                                "esx_policejob:message",
                                GetPlayerServerId(cl["playerlist"].vars.selectedPlayer),
                                dd
                            )
                        else
                            v("You cant do this on this server")
                        end
                    end
                )
            else
                if IsDisabledControlJustPressed(0, 15) then
                    cl["playerlist"].vars.trash_y = cl["playerlist"].vars.trash_y + 0.015
                end
                if IsDisabledControlJustPressed(0, 14) then
                    if cl["playerlist"].vars.trash_y <= 0.015 then
                        cl["playerlist"].vars.trash_y = cl["playerlist"].vars.trash_y - 0.015
                    else
                        cl["playerlist"].vars.trash_y = 0.015
                    end
                end
                ck.TextControl(
                    "            Playerlist",
                    function()
                        cl["playerlist"].vars.trash_y = 0.008
                    end
                )
                for cH, d5 in pairs(GetActivePlayers()) do
                    local de = 0.26 * 1.0 + (cH - 1) * 0.02 + cl["playerlist"].vars.trash_y
                    if de >= 0.26 and de <= 0.4700 then
                        ck.Button(
                            GetPlayerName(d5),
                            cB(120, 18),
                            function()
                                cl["playerlist"].vars.selectedPlayer = d5
                            end
                        )
                    end
                end
            end
            ck.End()
        end
    end
end
Citizen["CreateThread"](cR["draw_menu"])
cR["run_features"] = function()
    while cR["draw_menu"] do
        Citizen["Wait"](0)
        if cl.config["self_infinite_stamina"] then
            ResetPlayerStamina(cR["datastore"]["local_player"]["id"])
        end
        if cl.config["hide_id"] then
            DrawRect(1.0, 0.0, 0.20, 0.14, 70, 70, 70, 255)
        end
        if cl.config["self_invi"] then
            SetEntityVisible(PlayerPedId(), 0, 0)
            local df = PlayerPedId()
            DrawLine(GetPedBoneCoords(df, 31086), GetPedBoneCoords(df, 0x9995), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x9995), GetEntityCoords(df), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x5C57), GetEntityCoords(df), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x192A), GetEntityCoords(df), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x3FCF), GetPedBoneCoords(df, 0x192A), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0xCC4D), GetPedBoneCoords(df, 0x3FCF), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0xB3FE), GetPedBoneCoords(df, 0x5C57), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0xB3FE), GetPedBoneCoords(df, 0x3779), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x9995), GetPedBoneCoords(df, 0xB1C5), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0xB1C5), GetPedBoneCoords(df, 0xEEEB), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0xEEEB), GetPedBoneCoords(df, 0x49D9), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x9995), GetPedBoneCoords(df, 0x9D4D), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x9D4D), GetPedBoneCoords(df, 0x6E5C), 255, 255, 255, 255)
            DrawLine(GetPedBoneCoords(df, 0x6E5C), GetPedBoneCoords(df, 0xDEAD), 255, 255, 255, 255)
            local dg = GetPedBoneCoords(df, 31086)
            DrawMarker(
                28,
                dg.x,
                dg.y,
                dg.z + 0.06,
                0.0,
                0.0,
                0.0,
                0.0,
                180.0,
                0.0,
                0.1,
                0.1,
                0.1,
                255,
                255,
                255,
                255,
                false,
                true,
                2,
                nil,
                nil,
                false
            )
        else
            SetEntityVisible(PlayerPedId(), true)
        end
        if cl.config["self_semigod"] then
            SetPedSuffersCriticalHits(PlayerPedId(), false)
            if GetEntityHealth(PlayerPedId()) < 200 then
                SetEntityHealth(PlayerPedId(), 200)
            end
            if GetEntityHealth(PlayerPedId()) ~= 0 then
            end
        else
            SetPedSuffersCriticalHits(PlayerPedId(), true)
        end
        if cl.config["self_noclip"] then
            admin_no_clip()
        else
            bm = false
            if IsDisabledControlPressed(0, cl.vars.noclip) then
                admin_no_clip()
                bn = 2.0
            else
                bn = 0.5
            end
            if IsDisabledControlPressed(0, cl.vars.healbind) then
                SetEntityHealth(PlayerPedId(), 200)
            end
            if IsDisabledControlPressed(0, cl.vars.armourbind) then
                SetPedArmour(PlayerPedId(), 100)
            end
        end
        if cl.config["self_infinite_combat_roll"] then
            for T = 0, 3 do
                StatSetInt(GetHashKey("mp" .. T .. "_shooting_ability"), 1000, true)
                StatSetInt(GetHashKey("sp" .. T .. "_shooting_ability"), 1000, true)
            end
        else
            for T = 0, 3 do
                StatSetInt(GetHashKey("mp" .. T .. "_shooting_ability"), 0, true)
                StatSetInt(GetHashKey("sp" .. T .. "_shooting_ability"), 0, true)
            end
        end
        if cl.config["weapons_aimlockfov"] then
            if not HasStreamedTextureDictLoaded("mpmissmarkers256") then
                RequestStreamedTextureDict("mpmissmarkers256", true)
            end
            DrawSprite("mpmissmarkers256", "corona_shade", 0.5, 0.5, cl.vars.fov, cl.vars.fov * 1.8, 0.0, 0, 0, 0, 90)
        end
        if cl.config["weapons_drawline"] then
            local ak = GetCurrentPedWeaponEntityIndex(PlayerPedId())
            DrawLine(
                GetEntityCoords(ak),
                GetFinalRenderedCamCoord() + RotationToDirection(GetGameplayCamRot(2)) * 100,
                85,
                255,
                0,
                255
            )
        end
        if cl.config["weapons_aimlock"] then
            for dh in EnumeratePeds() do
                local di = GetPedBoneCoords(dh, cl.vars.aimlock)
                R = IsPedAPlayer(dh)
                local x, y, z = table.unpack(GetEntityCoords(dh))
                local aj, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                local dj = cl.vars.fov
                local dk, dl = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
                local dm, dn, dp = (di - dk).x, (di - dk).y, (di - dk).z
                local dq, bo, dr =
                    -math.deg(math.atan2(dm, dn)) - dl.z,
                    math.deg(math.atan2(dp, #vector3(dm, dn, 0.0))),
                    1.0
                local dq = lerp(1.0, 0.0, dq)
                if dh ~= PlayerPedId() and IsEntityOnScreen(dh) and R then
                    if _x > 0.5 - dj / 2 and _x < 0.5 + dj / 2 and _y > 0.5 - dj / 2 and _y < 0.5 + dj / 2 then
                        if IsDisabledControlPressed(0, cl.vars.keyaim) and IsDisabledControlPressed(0, 25) then
                            if HasEntityClearLosToEntity(PlayerPedId(), dh, 19) then
                                if IsEntityDead(dh) then
                                else
                                    SetGameplayCamRelativeRotation(dq, bo, dr)
                                end
                            end
                        end
                    end
                end
            end
        end
        if cl.config["weapons_aimlocknpc"] then
            for dh in EnumeratePeds() do
                local di = GetPedBoneCoords(dh, cl.vars.aimlock)
                R = dh
                local x, y, z = table.unpack(GetEntityCoords(dh))
                local aj, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                local dj = cl.vars.fov
                local dk, dl = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
                local dm, dn, dp = (di - dk).x, (di - dk).y, (di - dk).z
                local dq, bo, dr =
                    -math.deg(math.atan2(dm, dn)) - dl.z,
                    math.deg(math.atan2(dp, #vector3(dm, dn, 0.0))),
                    1.0
                local dq = lerp(1.0, 0.0, dq)
                if not IsPedAPlayer(dh) and dh ~= PlayerPedId() and IsEntityOnScreen(dh) and R then
                    if _x > 0.5 - dj / 2 and _x < 0.5 + dj / 2 and _y > 0.5 - dj / 2 and _y < 0.5 + dj / 2 then
                        if IsDisabledControlPressed(0, cl.vars.keyaim) and IsDisabledControlPressed(0, 25) then
                            if HasEntityClearLosToEntity(PlayerPedId(), dh, 19) then
                                if IsEntityDead(dh) then
                                else
                                    SetGameplayCamRelativeRotation(dq, bo, dr)
                                end
                            end
                        end
                    end
                end
            end
        end
        if cl.config["weapons_aimbot2"] then
            local S = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
            local ds = GetActivePlayers()
            for T = 1, #ds do
                c4(GetPlayerPed(ds[T]))
            end
        end
        if cl.config["weapons_aimbot"] then
            local S = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
            local dt = GetActivePlayers()
            for du = 1, #dt do
                cc(Citizen.InvokeNative(0x43A66C31C68491C0, dt[du]))
            end
        end
        if cl.config["weapons_triggerbot"] then
            local S = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
            local dv, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
            if dv and IsEntityAPed(target) then
                local dw = GetPedBoneCoords(target, 0, 0.0, -0.2, 0.0)
                x, y, z = table.unpack(dw)
                SetPedShootsAtCoord(PlayerPedId(), x, y, z, true)
            end
        end
        if cl.config["weapons_infiammo"] then
            if IsPedShooting(PlayerPedId()) then
                local dx, ak = GetCurrentPedWeapon(PlayerPedId())
                ammo = GetAmmoInPedWeapon(PlayerPedId(), ak)
                SetPedAmmo(PlayerPedId(), ak, ammo + 1)
            end
        end
        if cl.config["weapons_rapidfire"] then
            DisablePlayerFiring(PlayerPedId(), true)
            if IsDisabledControlPressed(0, 24) then
                local aj, ak = GetCurrentPedWeapon(PlayerPedId())
                local dy = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                local dz = GetCamDirFromScreenCenter()
                local bB = GetGameplayCamCoord()
                local dA = GetEntityCoords(dy)
                local dB = bB + dz * 200.0
                ClearAreaOfProjectiles(dA, 0.0, 1)
                ShootSingleBulletBetweenCoords(dA, dB, 5, 1, ak, PlayerPedId(), true, true, 24000.0)
                ShootSingleBulletBetweenCoords(dA, dB, 5, 1, ak, PlayerPedId(), true, true, 24000.0)
            end
        end
        if cl.config["weapons_spin"] then
            local bq, br, bs = getCamDirection()
            if bq < 0 then
                bq = bq - 3.0
            end
            if bq > 0 then
                bq = bq + 3.0
            end
            if br < 0 then
                br = br - 3.0
            end
            if br > 0 then
                br = br + 3.0
            end
            local dC = PlayerPedId()
            local X = GetEntityRotation(dC)
            SetEntityRotation(dC, 0.0, 0.0, math.random(0, 360) + 0.0, true)
            if IsDisabledControlPressed(0, 32) then
                SetEntityVelocity(dC, bq, br, -0.250)
            end
        end
        if cl.config["visual_bags"] then
            for p in cx() do
                local dD = GetEntityCoords(PlayerPedId())
                local dE = GetEntityCoords(p)
                local x, y, z = table.unpack(GetEntityCoords(p))
                local r, g, b = O.ThisIsSliders[16].value, O.ThisIsSliders[17].value, O.ThisIsSliders[18].value
                local c2 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(p), false)
                local da = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(p), false)
                local dF, dG = GetActiveScreenResolution()
                if GetEntityModel(p) == 1234788901 then
                    SetDrawOrigin(x, y, z, 0)
                    DrawRect(0 - 0.3 / 2 / da, 0, 1 / dF, 0.3 * 1.8 / da, r, g, b, 255)
                    DrawRect(0 + 0.3 / 2 / da, 0, 1 / dF, 0.3 * 1.8 / da, r, g, b, 255)
                    DrawRect(0, 0 - 0.3 * 1.8 / 2 / da, 0.3 / da, 1 / dG, r, g, b, 255)
                    DrawRect(0, 0 + 0.3 * 1.8 / 2 / da, 0.3 / da, 1 / dG, r, g, b, 255)
                    ClearDrawOrigin()
                    local dd = "Loot Bag (" .. math.ceil(c2) .. "m)"
                    bZ(x, y, z - 0.2, dd, r, g, b)
                end
            end
        end
        if cl.config["visual_names"] then
            local ds = GetActivePlayers()
            for T = 1, #ds do
                local ct = ds[T]
                if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
                    local dH = GetEntityCoords(GetPlayerPed(ds[T]))
                    local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
                    local dJ = 250.0
                    if dI <= dJ then
                        local dK = GetPlayerPed(ct)
                        local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
                        local x, y, z = table.unpack(GetEntityCoords(dK))
                        local dd = " " .. GetPlayerName(ds[T]) .. "  ~s~ID: [" .. GetPlayerServerId(ds[T]) .. "]"
                        local dO = IsPlayerDead(dK)
                        if GetEntityHealth(dK) <= 0 then
                            dO = true
                        end
                        if dO then
                            dd = " "
                        end
                        bY(x, y, z - 0.8, dd, 255, 0, 212)
                    end
                end
            end
        end
        if cl.config["visual_god"] then
            local ds = GetActivePlayers()
            for T = 1, #ds do
                local ct = ds[T]
                if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
                    local dH = GetEntityCoords(GetPlayerPed(ds[T]))
                    local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
                    local dJ = 250.0
                    if dI <= dJ then
                        local dK = GetPlayerPed(ct)
                        local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
                        local x, y, z = table.unpack(GetEntityCoords(dK))
                        local dP = GetPlayerInvincible_2(ct)
                        local dd = " "
                        if dP == 1 then
                            dd = "~g~GodMode"
                        end
                        local dO = IsPlayerDead(dK)
                        if GetEntityHealth(dK) <= 0 then
                            dO = true
                        end
                        if dO then
                            dd = " "
                        end
                        bY(x, y, z - 0.9, dd, 255, 0, 212)
                    end
                end
            end
        end
        if cl.config["weapons_noreload"] then
            if IsPedShooting(PlayerPedId()) then
                PedSkipNextReloading(PlayerPedId())
                MakePedReload(PlayerPedId())
            end
        end
        if cl.config["vehicle_autorepair"] then
            SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
            SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
            SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
            SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
            Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
        end
        if cl.config["vehicle_nofall"] then
            SetPedCanBeKnockedOffVehicle(PlayerPedId(), true)
        else
            SetPedCanBeKnockedOffVehicle(PlayerPedId(), false)
        end
        if cl.config["vehicle_handling"] then
            local o = PlayerPedId()
            if IsPedInVehicle(o, GetVehiclePedIsIn(o), true) then
                local ap = GetVehiclePedIsIn(PlayerPedId(), 0)
                SetVehicleGravityAmount(ap, 30.0)
            end
        else
            local o = PlayerPedId()
            if IsPedInVehicle(o, GetVehiclePedIsIn(o), true) then
                local ap = GetVehiclePedIsIn(PlayerPedId(), 0)
                SetVehicleGravityAmount(ap, 9.8)
            end
        end
        if cl.config["fuck_particles"] then
            local ds = GetActivePlayers()
            for T = 1, #ds do
                local S = GetPlayerPed(ds[T])
                local dQ = GetEntityCoords(S)
                RequestNamedPtfxAsset("scr_exec_ambient_fm")
                UseParticleFxAssetNextCall("scr_exec_ambient_fm")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "scr_ped_foot_banknotes",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    200.0,
                    false,
                    false,
                    false,
                    false
                )
                RequestNamedPtfxAsset("scr_josh3")
                UseParticleFxAssetNextCall("scr_josh3")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "scr_josh3_explosion",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    200.0,
                    false,
                    false,
                    false,
                    false
                )
                RequestNamedPtfxAsset("cut_finale1")
                UseParticleFxAssetNextCall("cut_finale1")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "cs_finale1_car_explosion_surge_spawn",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    200.0,
                    false,
                    false,
                    false,
                    false
                )
                RequestNamedPtfxAsset("scr_ba_bomb")
                UseParticleFxAssetNextCall("scr_ba_bomb")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "scr_ba_bomb_destroy",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    200.0,
                    false,
                    false,
                    false,
                    false
                )
            end
        end
        if cl.config["fuck_particles2"] then
            local ds = GetActivePlayers()
            for T = 1, #ds do
                local S = GetPlayerPed(ds[T])
                local dQ = GetEntityCoords(S)
                RequestNamedPtfxAsset("scr_exile1")
                UseParticleFxAssetNextCall("scr_exile1")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "scr_ex1_plane_exp_sp",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    20.0,
                    false,
                    false,
                    false,
                    false
                )
                RequestNamedPtfxAsset("scr_rcbarry2")
                UseParticleFxAssetNextCall("scr_rcbarry2")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "scr_clown_appears",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    20.0,
                    false,
                    false,
                    false,
                    false
                )
                RequestNamedPtfxAsset("core")
                UseParticleFxAssetNextCall("core")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "td_blood_throat",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    200.0,
                    false,
                    false,
                    false,
                    false
                )
                RequestNamedPtfxAsset("scr_indep_fireworks")
                UseParticleFxAssetNextCall("scr_indep_fireworks")
                StartNetworkedParticleFxNonLoopedAtCoord(
                    "scr_indep_firework_trailburst",
                    dQ,
                    0.0,
                    0.0,
                    0.0,
                    200.0,
                    false,
                    false,
                    false,
                    false
                )
            end
        end
        if cl.config["delete_vehicles"] then
            for dR in cw() do
                NetworkRequestControlOfEntity(dR)
                DeleteEntity(dR)
            end
        end
        if cl.config["delete_prop"] then
            for dS in cx() do
                NetworkRequestControlOfEntity(dS)
                DeleteEntity(dS)
            end
        end
        if cl.config["invi_veh"] then
            for dh in cw() do
                SetEntityVisible(dh, false, false)
            end
        else
            for dh in cw() do
                SetEntityVisible(dh, true)
            end
        end
        if cl.config["max_speed"] then
            for dh in cw() do
                SetVehicleForwardSpeed(dh, 750 / 3.6)
            end
        end
        if cl.config["fly_veh"] then
            for dh in cw() do
                ApplyForceToEntity(dh, 1, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 0, 0, 1, 1, 0, 0)
            end
        end
        if cl.config["rain_veh"] then
            for dh in cw() do
                local dT = o(1.0)
                SetVehicleCustomPrimaryColour(dh, dT.r, dT.g, dT.b)
                SetVehicleCustomSecondaryColour(dh, dT.r, dT.g, dT.b)
            end
        end
        if cl.config["explode_all"] then
            local dU = GetActivePlayers()
            for T = 1, #dU do
                local S = GetPlayerPed(dU[T])
                local dV = GetEntityCoords(S)
                AddExplosion(dV.x, dV.y, dV.z, 70, 100000.0, false, true, 0)
            end
        end
        if cl.config["taze_all"] then
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, true, true, false)
            ClearPedTasks(PlayerPedId())
            for o, p in pairs(GetActivePlayers()) do
                local S = GetPlayerPed(p)
                local dW = GetEntityCoords(S)
                local dX = GetPedBoneCoords(S, 0, 0.0, 0.0, 0.0)
                local dY = GetPedBoneCoords(S, 57005, 0.0, 0.0, 0.2)
                if S ~= PlayerPedId() and not IsPedDeadOrDying(S) then
                    ShootSingleBulletBetweenCoords(
                        dY,
                        dX,
                        1,
                        true,
                        GetHashKey("WEAPON_STUNGUN"),
                        PlayerPedId(p),
                        true,
                        false,
                        1.0
                    )
                    Citizen.Wait(100)
                end
            end
        end
        if cl.config["spam_vehicles"] then
            local ds = GetActivePlayers()
            for T = 1, #ds do
                local dZ = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(T)))
                local aA = GetHashKey("bus")
                while not HasModelLoaded(aA) do
                    RequestModel(aA)
                    Citizen.Wait(0)
                end
                CreateVehicle(aA, GetEntityCoords(dZ), GetEntityHeading(dZ), true, true)
            end
        end
        if cl.config["visuals_crosshair"] then
            if cl.config["visuals_crosshair_always"] or not cl.active then
                cj.DrawCursor(cl.screen.w / 2, cl.screen.h / 2)
            end
        end
        if cl.config["glife_farm"] then
            for S in EnumeratePeds() do
                if not IsPedAPlayer(S) and S ~= PlayerPedId() then
                    Citizen["Wait"](0)
                    RequestControlOnce(S)
                    SetEntityHealth(S, 0)
                    SetEntityCollision(S, false, false)
                    SetEntityCoords(S, GetEntityCoords(PlayerPedId()))
                end
            end
        end
        if cl.config["glife_xp"] then
            for S in EnumeratePeds() do
                if not IsPedAPlayer(S) and S ~= PlayerPedId() then
                    Citizen["Wait"](1)
                    SetEntityHealth(S, 100)
                    SetEntityCoords(S, GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 3.0, 3.0, 0.5))
                    FreezeEntityPosition(S, true)
                    IsEntityAttachedToEntity(S, PlayerPedId(), GetEntityCoords(PlayerPedId(-1), 3.0, 3.0, 0.5))
                    local d_ = GetEntityCoords(S)
                    local e0 = DoesEntityExist(S)
                    local dO = IsPlayerDead(S)
                    local e1 = GetPedBoneCoords(S, 31086, 0, 0, 0)
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y,
                        d_.z + 3.0,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y + 3.0,
                        d_.z,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y,
                        d_.z + 3.0,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y + 3.0,
                        d_.z,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y,
                        d_.z + 3.0,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y + 3.0,
                        d_.z,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y,
                        d_.z + 3.0,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        d_.x,
                        d_.y + 3.0,
                        d_.z,
                        e1.x,
                        e1.y,
                        e1.z,
                        9000,
                        0,
                        GetHashKey("weapon_pistol"),
                        PlayerPedId(),
                        true,
                        false,
                        9000.0
                    )
                end
            end
        end
        if cl.config["pl_spectate"] then
            local e2 = PlayerPedId()
            local targetPed = GetPlayerPed(cl["playerlist"].vars.selectedPlayer)
            local e3, e4, e5 = table.unpack(cC(targetPed, false))
            Citizen.InvokeNative(0x07503F7948F491A7, e3, e4, e5)
            Citizen.InvokeNative(0x423DE3854BB50894, true, targetPed)
        else
            local e3, e4, e5 = table.unpack(cC(targetPed, false))
            Citizen.InvokeNative(0x07503F7948F491A7, e3, e4, e5)
            Citizen.InvokeNative(0x423DE3854BB50894, false, targetPed)
        end
        if cl.config["visuals_lines"] then
            local ds = cF()
            local e6 = cC(PlayerPedId())
            for T = 1, #ds do
                if T == PlayerId() then
                    T = T + 1
                end
                local e7 = ds[T]
                local e8 = GetPlayerPed(e7)
                local dO = IsPlayerDead(e8)
                if GetEntityHealth(e8) <= 0 then
                    dO = true
                end
                if dO then
                else
                    local dH = cC(Citizen.InvokeNative(0x43A66C31C68491C0, ds[T]))
                    local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
                    local dJ = 100.0
                    if dI <= dJ then
                        if e8 ~= PlayerPedId() and IsEntityOnScreen(e8) and not IsPedDeadOrDying(e8) then
                            DrawLine(
                                e6,
                                dH,
                                O.ThisIsSliders[10].value,
                                O.ThisIsSliders[11].value,
                                O.ThisIsSliders[12].value,
                                255
                            )
                        else
                            DrawLine(
                                e6,
                                dH,
                                O.ThisIsSliders[13].value,
                                O.ThisIsSliders[14].value,
                                O.ThisIsSliders[15].value,
                                255
                            )
                        end
                    end
                end
            end
        end
        if cl.config["visuals_weapon"] then
            local ds = GetActivePlayers()
            for T = 1, #ds do
                local ct = ds[T]
                if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
                    local dH = GetEntityCoords(GetPlayerPed(ds[T]))
                    local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
                    local dJ = 250.0
                    if dI <= dJ then
                        local aj, e9 = GetCurrentPedWeapon(GetPlayerPed(ds[T]), 1)
                        local ea = bW(e9)
                        if ea == nil then
                            ea = "Null"
                        end
                        local dK = GetPlayerPed(ct)
                        local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
                        local x, y, z = table.unpack(GetEntityCoords(dK))
                        local dd = "Weapon: " .. ea .. "  [" .. math.floor(dI) .. "m]"
                        local dO = IsPlayerDead(dK)
                        if GetEntityHealth(dK) <= 0 then
                            dO = true
                        end
                        if dO then
                            dd = " "
                        end
                        if ea == "UNARMED" then
                            dd = " "
                        end
                        bY(x, y, z + 1.0, dd, 255, 0, 212)
                    end
                end
            end
        end
        if cl.config["visuals_skeleton"] then
            local dU = GetActivePlayers()
            for T = 1, #dU do
                local e7 = dU[T]
                local e8 = GetPlayerPed(e7)
                local eb = GetEntityCoords(e8)
                x, y, z = table.unpack(eb)
                if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < 1000.0 then
                    if e8 ~= PlayerPedId() and IsEntityOnScreen(e8) and not IsPedDeadOrDying(e8) then
                        z = z + 0.9
                        local ec = not IsEntityVisibleToScript(e8)
                        if ec then
                            DrawLine(
                                GetPedBoneCoords(e8, 31086),
                                GetPedBoneCoords(e8, 0x9995),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9995),
                                GetEntityCoords(e8),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x5C57),
                                GetEntityCoords(e8),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x192A),
                                GetEntityCoords(e8),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x3FCF),
                                GetPedBoneCoords(e8, 0x192A),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xCC4D),
                                GetPedBoneCoords(e8, 0x3FCF),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xB3FE),
                                GetPedBoneCoords(e8, 0x5C57),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xB3FE),
                                GetPedBoneCoords(e8, 0x3779),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9995),
                                GetPedBoneCoords(e8, 0xB1C5),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xB1C5),
                                GetPedBoneCoords(e8, 0xEEEB),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xEEEB),
                                GetPedBoneCoords(e8, 0x49D9),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9995),
                                GetPedBoneCoords(e8, 0x9D4D),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9D4D),
                                GetPedBoneCoords(e8, 0x6E5C),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x6E5C),
                                GetPedBoneCoords(e8, 0xDEAD),
                                O.ThisIsSliders[4].value,
                                O.ThisIsSliders[5].value,
                                O.ThisIsSliders[6].value,
                                255
                            )
                            local dg = GetPedBoneCoords(e8, 31086)
                            DrawMarker(
                                28,
                                dg.x,
                                dg.y,
                                dg.z + 0.06,
                                0.0,
                                0.0,
                                0.0,
                                0.0,
                                180.0,
                                0.0,
                                0.1,
                                0.1,
                                0.1,
                                255,
                                0,
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
                            DrawLine(
                                GetPedBoneCoords(e8, 31086),
                                GetPedBoneCoords(e8, 0x9995),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9995),
                                GetEntityCoords(e8),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x5C57),
                                GetEntityCoords(e8),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x192A),
                                GetEntityCoords(e8),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x3FCF),
                                GetPedBoneCoords(e8, 0x192A),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xCC4D),
                                GetPedBoneCoords(e8, 0x3FCF),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xB3FE),
                                GetPedBoneCoords(e8, 0x5C57),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xB3FE),
                                GetPedBoneCoords(e8, 0x3779),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9995),
                                GetPedBoneCoords(e8, 0xB1C5),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xB1C5),
                                GetPedBoneCoords(e8, 0xEEEB),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0xEEEB),
                                GetPedBoneCoords(e8, 0x49D9),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9995),
                                GetPedBoneCoords(e8, 0x9D4D),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x9D4D),
                                GetPedBoneCoords(e8, 0x6E5C),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            DrawLine(
                                GetPedBoneCoords(e8, 0x6E5C),
                                GetPedBoneCoords(e8, 0xDEAD),
                                O.ThisIsSliders[1].value,
                                O.ThisIsSliders[2].value,
                                O.ThisIsSliders[3].value,
                                255
                            )
                            local dg = GetPedBoneCoords(e8, 31086)
                            DrawMarker(
                                28,
                                dg.x,
                                dg.y,
                                dg.z + 0.06,
                                0.0,
                                0.0,
                                0.0,
                                0.0,
                                180.0,
                                0.0,
                                0.1,
                                0.1,
                                0.1,
                                255,
                                0,
                                0,
                                255,
                                false,
                                true,
                                2,
                                nil,
                                nil,
                                false
                            )
                            ResetEntityAlpha(e8)
                            SetEntityAlpha(e8, 0, true)
                        end
                    end
                end
            end
        else
            local dU = GetActivePlayers()
            for T = 1, #dU do
                local e7 = dU[T]
                local e8 = GetPlayerPed(e7)
                ResetEntityAlpha(e8)
            end
        end
        if cl.config["visual_npc"] then
            for aR in EnumeratePeds() do
                local dF, dG = GetActiveScreenResolution()
                local d9 = GetEntityCoords(aR)
                me = aR ~= PlayerPedId()
                mr = aR
                local da = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), d9.x, d9.y, d9.z, true) * (1.1 - 0.05)
                if IsEntityOnScreen(aR) then
                    if da < 125 then
                        if me and mr and not IsEntityDead(aR) and not IsPedAPlayer(aR) then
                            SetDrawOrigin(d9.x, d9.y, d9.z, 0)
                            DrawRect(0.0, 0.0, 1075.2 / dF / da, 2376 / dG / da, 0, 0, 0, 90)
                            if HasEntityClearLosToEntity(PlayerPedId(), aR, 19) then
                                local r, g, b = 90, 252, 3
                                DrawRect(-537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(-537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                local dd = "NPC"
                                local x, y, z = table.unpack(GetEntityCoords(aR))
                                bY(x, y, z - 0.8, dd, 255, 0, 212)
                            else
                                local r, g, b = 252, 3, 186
                                DrawRect(-537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(-537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                local dd = "NPC"
                                local x, y, z = table.unpack(GetEntityCoords(aR))
                                bY(x, y, z - 0.8, dd, 255, 0, 212)
                            end
                            ClearDrawOrigin()
                        end
                    end
                end
            end
        end
        if cl.config["visual_veh"] then
            for aR in cw() do
                local dd = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(aR)))
                local I = {255, 0, 0, 255}
                G(aR, I)
                local x, y, z = table.unpack(GetEntityCoords(aR))
                bY(x, y, z - 0.8, dd, 255, 0, 212)
            end
        end
        if cl.config["visual_obj"] then
            for aP in cx() do
                local I = {255, 255, 255, 255}
                G(aP, I)
            end
        end
        if cl.config["visuals_corner"] then
            for aR in EnumeratePeds() do
                local dF, dG = GetActiveScreenResolution()
                local d9 = GetEntityCoords(aR)
                me = aR ~= PlayerPedId()
                mr = IsPedAPlayer(aR)
                local da = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), d9.x, d9.y, d9.z, true) * (1.1 - 0.05)
                local ed = GetPedArmour(aR) * 10.76200
                local bc = GetEntityHealth(aR) * 5.38200
                local ee = 1250
                local ef = 1200
                if IsEntityOnScreen(aR) then
                    if da < 125 then
                        if me and mr and not IsEntityDead(aR) then
                            SetDrawOrigin(d9.x, d9.y, d9.z, 0)
                            DrawRect(0.0, 0.0, 1075.2 / dF / da, 2376 / dG / da, 0, 0, 0, 90)
                            if HasEntityClearLosToEntity(PlayerPedId(), aR, 19) then
                                local r, g, b = 255, 255, 255
                                DrawRect(-537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(-537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                            else
                                local r, g, b = 255, 0, 0
                                DrawRect(-537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(-537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (290 + 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                                DrawRect(
                                    (-290 - 150 / 2) / dF / da,
                                    -1190.6 / dG / da,
                                    350 / dF / da,
                                    1 / dG,
                                    r,
                                    g,
                                    b,
                                    255
                                )
                            end
                            if GetPedArmour(aR) == 0 then
                                r, g, b = 75, 141 - (50 - GetPedArmour(aR)), 173 - (100 - GetPedArmour(aR))
                            else
                                r, g, b = 0, 178, 255
                            end
                            DrawRect(
                                -1078.2 / 2 / dF / da + ed / 2 / dF / da,
                                ee / dG / da + da / 400 / da,
                                ed / dF / da,
                                3 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                -1078.2 / 2 / dF / da + bc / 2 / dF / da,
                                ef / dG / da + da / 400 / da,
                                bc / dF / da,
                                3 / dG,
                                0,
                                255,
                                0,
                                255
                            )
                            ClearDrawOrigin()
                        end
                    end
                end
            end
        end
        if cl.config["visuals_boxes"] then
            local PlayerList = GetActivePlayers()
            for T = 1, #PlayerList do
                local e8 = GetPlayerPed(PlayerList[T])
                bone = GetEntityBoneIndexByName(e8, "SKEL_HEAD")
                x, y, z = table.unpack(GetPedBoneCoords(e8, bone, 0.0, 0.0, 0.0))
                px, py, pz = table.unpack(GetGameplayCamCoord())
                if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < 1000.0 then
                    if e8 ~= PlayerPedId() and IsEntityOnScreen(e8) and not IsPedDeadOrDying(e8) then
                        z = z + 0.9
                        local eg = GetDistanceBetweenCoords(x, y, z, px, py, pz, true) * 0.002 / 2
                        if eg < 0.0042 then
                            eg = 0.0042
                        end
                        retval, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                        width = 0.00045
                        height = 0.0023
                        DrawRect(_x, _y, width / eg, 0.0015, 255, 255, 255, 200)
                        DrawRect(_x, _y + height / eg, width / eg, 0.0015, 255, 255, 255, 200)
                        DrawRect(_x + width / 2 / eg, _y + height / 2 / eg, 0.001, height / eg, 255, 255, 255, 200)
                        DrawRect(_x - width / 2 / eg, _y + height / 2 / eg, 0.001, height / eg, 255, 255, 255, 200)
                        health = GetEntityHealth(e8)
                        DrawRect(
                            _x - 0.00028 / eg,
                            _y + height / 2 / eg,
                            0.0016 / eg * 0.015,
                            height / eg,
                            0,
                            0,
                            0,
                            200
                        )
                        if GetEntityHealth(e8) <= 150 then
                            DrawRect(
                                _x - 0.00028 / eg,
                                _y + height / eg - GetEntityHealth(e8) / 175000 / eg,
                                0.0016 / eg * 0.015,
                                GetEntityHealth(e8) / 87500 / eg,
                                214,
                                172,
                                6,
                                255
                            )
                        else
                            DrawRect(
                                _x - 0.00028 / eg,
                                _y + height / eg - GetEntityHealth(e8) / 175000 / eg,
                                0.0016 / eg * 0.015,
                                GetEntityHealth(e8) / 87500 / eg,
                                0,
                                255,
                                0,
                                255
                            )
                        end
                        DrawRect(
                            _x - 0.00033 / eg,
                            _y + height / eg - GetPedArmour(e8) * 2 / 175000 / eg,
                            0.0016 / eg * 0.015,
                            GetPedArmour(e8) * 2 / 87500 / eg,
                            0,
                            178,
                            255,
                            255
                        )
                    end
                end
            end
        end
    end
end
Citizen["CreateThread"](cR["run_features"])
cR.menu_features = {
    ["unload_menu"] = function()
        cR["draw_menu"] = false
    end,
    ["bind_menu"] = function()
        local d5 = k()
        cl.vars.menuKey = d5
    end,
    ["bind_no"] = function()
        local eh = k()
        cl.vars.noclip = eh
    end,
    ["bind_heal"] = function()
        local ei = k()
        cl.vars.healbind = ei
    end,
    ["bind_armour"] = function()
        local ej = k()
        cl.vars.armourbind = ej
    end,
    ["quit_a"] = function()
        RestartGame()
    end,
    ["crash_a"] = function()
        while true do
        end
        while true do
        end
        while true do
        end
        while true do
        end
        while true do
        end
        while true do
        end
    end,
    ["gui_close"] = function()
        cl.active = not cl.active
    end,
    ["skel_colorv"] = function()
        O.ThisIsSliders[1].value, O.ThisIsSliders[2].value, O.ThisIsSliders[3].value = ColorPicker()
    end,
    ["skel_coloriv"] = function()
        O.ThisIsSliders[4].value, O.ThisIsSliders[5].value, O.ThisIsSliders[6].value = ColorPicker()
    end,
    ["lines_color"] = function()
        O.ThisIsSliders[10].value, O.ThisIsSliders[11].value, O.ThisIsSliders[12].value = ColorPicker()
    end,
    ["lines_colorno"] = function()
        O.ThisIsSliders[13].value, O.ThisIsSliders[14].value, O.ThisIsSliders[15].value = ColorPicker()
    end,
    ["bags_color"] = function()
        O.ThisIsSliders[16].value, O.ThisIsSliders[17].value, O.ThisIsSliders[18].value = ColorPicker()
    end,
    ["closestcar_color"] = function()
        O.ThisIsSliders[19].value, O.ThisIsSliders[20].value, O.ThisIsSliders[21].value = ColorPicker()
    end,
    ["hud_rgb"] = function()
        O.ThisIsSliders[22].value, O.ThisIsSliders[23].value, O.ThisIsSliders[24].value = ColorPicker()
        ReplaceHudColourWithRgba(
            116,
            O.ThisIsSliders[22].value,
            O.ThisIsSliders[23].value,
            O.ThisIsSliders[24].value,
            255
        )
    end,
    ["heal"] = function()
        SetEntityHealth(PlayerPedId(), 200)
    end,
    ["armour"] = function()
        SetPedArmour(PlayerPedId(), 100)
    end,
    ["self_revive"] = function()
        local S = cR["datastore"]["local_player"]["ped"]
        local aB = cR["datastore"]["local_player"]["coords"]
        local aE = cR["datastore"]["local_player"]["heading"]
        SetEntityCoordsNoOffset(S, aB.x, aB.y, aB.z, false, false, false, true)
        NetworkResurrectLocalPlayer(aB.x, aB.y, aB.z, aE, true, false)
        SetPlayerInvincible(S, false)
        TriggerEvent("playerSpawned", aB.x, aB.y, aB.z)
        ClearPedBloodDamage(S)
        StopScreenEffect("DeathFailOut")
    end,
    ["self_skin"] = function()
        av()
        aw("HATS", 64, 9)
        aw("GLASSES", 0, 0)
        aw("MASK", 51, 7)
        aw("TORSO", 22, 0)
        aw("LEGS", 15, 2)
        aw("HANDS", 44, 0)
        aw("SHOES", 7, 2)
        aw("SPECIAL2", 15, 0)
        aw("TORSO2", 14, 7)
    end,
    ["prop_all"] = function()
        for P, b in pairs(GetActivePlayers()) do
            local d9 = GetPlayerPed(b)
            CreateThread(
                function()
                    local da = GetHashKey("\112\111\49\95\108\111\100\95\48\54")
                    while not HasModelLoaded(da) do
                        Wait(0)
                        RequestModel(da)
                    end
                    local db = CreateObject(da, GetEntityCoords(d9), true, true, true)
                    AttachEntityToEntity(
                        db,
                        d9,
                        11816,
                        0.0,
                        -0.5,
                        0.0,
                        0.5,
                        0.5,
                        0.0,
                        false,
                        false,
                        false,
                        false,
                        2,
                        false
                    )
                end
            )
        end
        for P, b in pairs(GetActivePlayers()) do
            local d9 = GetPlayerPed(b)
            CreateThread(
                function()
                    local da = GetHashKey("\112\111\49\95\108\111\100\95\48\52")
                    while not HasModelLoaded(da) do
                        Wait(0)
                        RequestModel(da)
                    end
                    local db = CreateObject(da, GetEntityCoords(d9), true, true, true)
                    AttachEntityToEntity(
                        db,
                        d9,
                        11816,
                        0.0,
                        -0.5,
                        0.0,
                        0.5,
                        0.5,
                        0.0,
                        false,
                        false,
                        false,
                        false,
                        2,
                        false
                    )
                end
            )
        end
        for P, b in pairs(GetActivePlayers()) do
            local d9 = GetPlayerPed(b)
            CreateThread(
                function()
                    local da = GetHashKey("\107\116\49\95\108\111\100\95\115\108\111\100\52")
                    while not HasModelLoaded(da) do
                        Wait(0)
                        RequestModel(da)
                    end
                    local db = CreateObject(da, GetEntityCoords(d9), true, true, true)
                    AttachEntityToEntity(
                        db,
                        d9,
                        11816,
                        0.0,
                        -0.5,
                        0.0,
                        0.5,
                        0.5,
                        0.0,
                        false,
                        false,
                        false,
                        false,
                        2,
                        false
                    )
                end
            )
        end
    end,
    ["rpg_all"] = function()
        for P, b in pairs(GetActivePlayers()) do
            local d9 = GetPlayerPed(b)
            CreateThread(
                function()
                    if d9 ~= PlayerPedId() then
                        local da = GetEntityCoords(d9)
                        CreateAmbientPickup(
                            GetHashKey("PICKUP_WEAPON_RPG"),
                            da.x,
                            da.y,
                            da.z + 1.0,
                            1,
                            1,
                            GetHashKey("PICKUP_WEAPON_RPG"),
                            1,
                            0
                        )
                        SetPickupRegenerationTime(pickup, 60)
                    end
                end
            )
        end
    end,
    ["veh_all"] = function()
        for P, b in pairs(GetActivePlayers()) do
            local d9 = GetPlayerPed(b)
            CreateThread(
                function()
                    local da = a1("Vehicle Name", "", 100)
                    if da and IsModelValid(da) and IsModelAVehicle(da) then
                        RequestModel(da)
                        while not HasModelLoaded(da) do
                            Citizen.Wait(0)
                        end
                        local db = CreateVehicle(GetHashKey(da), GetEntityCoords(d9), GetEntityHeading(d9), true, true)
                    else
                    end
                end
            )
        end
    end,
    ["msg_all"] = function()
        PlayerList = GetActivePlayers()
        if bk("esx_policejob") then
            for T = 1, #PlayerList do
                TriggerServerEvent("esx_policejob:message", GetPlayerServerId(PlayerList[T]), "∑ ~g~Cobra Menu on TOP!")
                TriggerServerEvent(
                    "esx_policejob:message",
                    GetPlayerServerId(PlayerList[T]),
                    "∑ ~g~discord.com/sPHW7CTTZj"
                )
                TriggerServerEvent(
                    "esx_policejob:message",
                    GetPlayerServerId(PlayerList[T]),
                    "~r~Your Server has been fucked!"
                )
                TriggerServerEvent("esx_policejob:message", GetPlayerServerId(PlayerList[T]), "~b~Do u eat like a pro?")
                TriggerServerEvent("esx_policejob:message", GetPlayerServerId(PlayerList[T]), "~o~I eat like a pro")
            end
        else
            v("You cant do this on this server")
        end
    end,
    ["dance_all"] = function()
        PlayerList = GetActivePlayers()
        for T = 1, #PlayerList do
            TriggerServerEvent("ServerValidEmote", GetPlayerServerId(PlayerList[T]), cl.vars.dance)
        end
    end,
    ["th_all"] = function()
        local ds = GetActivePlayers()
        for T = 1, #ds do
            local dC = PlayerPedId()
            lib = "anim@gangops@hostage@"
            anim1 = "perp_fail"
            lib2 = "anim@gangops@hostage@"
            anim2 = "victim_fail"
            distans = 0.11
            distans2 = -0.24
            height = 0.0
            spin = 0.0
            length = 0.2
            controlFlagMe = 168
            controlFlagTarget = 0
            animFlagTarget = 1
            attachFlag = false
            local ek = GetPlayerPed(-1)
            target = GetPlayerServerId(ds[T])
            if ek ~= nil then
                TriggerServerEvent(
                    "cmg3_animations:sync",
                    ek,
                    lib,
                    lib2,
                    anim1,
                    anim2,
                    distans,
                    distans2,
                    height,
                    target,
                    length,
                    spin,
                    controlFlagMe,
                    controlFlagTarget,
                    animFlagTarget,
                    attachFlag
                )
            else
            end
        end
    end,
    ["slap_all"] = function()
        for o, p in pairs(GetActivePlayers()) do
            local dZ = GetPlayerPed(p)
            CreateThread(
                function()
                    CreateThread(
                        function()
                            for T = 1, 1 do
                                CreateThread(
                                    function()
                                        local aA = GetHashKey("t20")
                                        while not HasModelLoaded(aA) do
                                            Wait(0)
                                            RequestModel(aA)
                                        end
                                        local dc =
                                            CreateVehicle(
                                            aA,
                                            GetOffsetFromEntityInWorldCoords(dZ, 0.0, -8.0, 0.0),
                                            GetEntityHeading(dZ),
                                            true,
                                            true
                                        )
                                        SetVehicleForwardSpeed(dc, 750 / 3.6)
                                        SetEntityVisible(dc, false)
                                        Wait(250)
                                        DeleteEntity(dc)
                                    end
                                )
                                Wait(15)
                            end
                        end
                    )
                end
            )
        end
    end,
    ["tptwp"] = function()
        local el = GetFirstBlipInfoId(8)
        if DoesBlipExist(el) then
            local em = GetBlipInfoIdCoord(el)
            for height = 1, 1000 do
                SetPedCoordsKeepVehicle(PlayerPedId(), em["x"], em["y"], height + 0.0)
                local en, eo = GetGroundZFor_3dCoord(em["x"], em["y"], height + 0.0)
                if en then
                    SetPedCoordsKeepVehicle(PlayerPedId(), em["x"], em["y"], height + 0.0)
                    break
                end
                Citizen.Wait(0)
            end
        else
        end
    end,
    ["tpcoo"] = function()
        local x = a1("X Coord", "", 10)
        local y = a1("Y Coord", "", 10)
        local z = a1("Z Coord", "", 10)
        SetEntityCoords(PlayerPedId(), tonumber(x), tonumber(y), tonumber(z))
    end,
    ["give_allwep"] = function()
        local ep = a1("~r~WEAPON_ALL ~w~FOR GET ALL WEAPONS", "WEAPON_", 100)
        if ep == "WEAPON_ALL" then
            Q()
        else
            GiveWeaponToPed(PlayerPedId(), GetHashKey(ep), 250, false, false)
        end
    end,
    ["give_remwep"] = function()
        RemoveAllPedWeapons(PlayerPedId(), true)
    end,
    ["esx_money"] = function()
        for T = 0, 25 do
            TriggerServerEvent("esx_vangelico_robbery:gioielli1")
        end
        for T = 0, 25 do
            TriggerServerEvent("lester:vendita")
        end
    end,
    ["vehicle_repair"] = function()
        SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
        SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
        SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
        SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
    end,
    ["vehicle_spawn"] = function()
        local aA = a1("Vehicle name", "", 100)
        az(aA, PlaceSelf, SpawnEngineOn)
    end,
    ["vehicle_flip"] = function()
        local eq = Citizen.InvokeNative(0x6094AD011A2EA87D, Citizen.InvokeNative(0xD80958FC74E988A6))
        Citizen.InvokeNative(0x49733E92263139D1, eq)
    end,
    ["vehicle_delete"] = function()
        DelVeh(GetVehiclePedIsUsing(PlayerPedId()))
    end,
    ["vehicle_color"] = function()
        O.ThisIsSliders[7].value, O.ThisIsSliders[8].value, O.ThisIsSliders[9].value = ColorPicker()
        SetVehicleCustomPrimaryColour(
            GetVehiclePedIsUsing(PlayerPedId(-1)),
            O.ThisIsSliders[7].value,
            O.ThisIsSliders[8].value,
            O.ThisIsSliders[9].value
        )
        SetVehicleCustomSecondaryColour(
            GetVehiclePedIsUsing(PlayerPedId(-1)),
            O.ThisIsSliders[7].value,
            O.ThisIsSliders[8].value,
            O.ThisIsSliders[9].value
        )
    end,
    ["vehicle_finder"] = function()
        v("Check Console [F8]")
        print("^1----------- ^2Vehicle Finder ^1-----------")
        for o, p in pairs(O.CustomVs) do
            if IsModelValid(p.spawn) then
                print("^2Name: ^0" .. p.name .. "", "^1Spawn: ^0" .. p.spawn .. "")
            end
        end
        print("^1----------- ^2Vehicle Finder ^1-----------")
    end,
    ["vehicle_maxtun"] = function()
        at(Citizen.InvokeNative(0x6094AD011A2EA87D, PlayerPedId()))
    end,
    ["vehicle_unlock"] = function()
        for er in cw() do
            if Citizen.InvokeNative(0x7239B21A38F536BA, er) then
                Citizen.InvokeNative(0xB664292EAECF7FA6, er, 1)
                Citizen.InvokeNative(0x517AAF684BB50CD1, er, PlayerId(), false)
                Citizen.InvokeNative(0xA2F80B8D040727CC, er, false)
            end
        end
    end,
    ["vehicle_warp"] = function()
        local d7 = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if not DoesEntityExist(d7) then
            return
        end
        local es = -1
        TaskWarpPedIntoVehicle(PlayerPedId(), d7, es)
        Citizen.Wait(100)
        SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
        SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
        SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
        SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
    end,
    ["weapon_refill"] = function()
        for T = 1, #bV do
            AddAmmoToPed(PlayerPedId(), GetHashKey(bV[T]), 40)
        end
    end,
    [""] = function()
    end
}
cR["handle_dragging"] = function()
    cl.dragging.state = true
    if cl.dragging.state then
        cl.cursor.x, cl.cursor.y = ck.natives.GetNuiCursorPosition()
        cl[cl.vars.currentMenu].position.x = cl.cursor.x - 38
        cl[cl.vars.currentMenu].position.y = cl.cursor.y - 15
    end
    cl.dragging.state = false
end

--bäärs#3150
--discord.com/sPHW7CTTZj