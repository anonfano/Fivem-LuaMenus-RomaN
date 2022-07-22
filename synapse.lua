-- #redENGINE Menu devs family top 1
-- do not try to attack our homies <3

local Kentas = {
	GlobalChat = {},
	GlobalChat2 = {},
    Static = {
        Scroll = 0,
		Scroll2 = 0,
    },
	Players = {},
	ConfigsTable = {},
	enabled = true,
    activemenu = 'main', 
    maxoptcount = 18,
    alpha = 0, 
    parentmenu = 'main',
    open = true,
    lastkey = 0,
}
Kentas.A = {}
Kentas.F = {
	Tracers = {},
	ColourAmmo = {},
	Ghost = 0,
	NNstyle = 'Kentas',
	Tabak = 0,
	AllIpls={{names={'bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo'},interiorsProps={'meth_lab_security_high','meth_lab_upgrade'},coords={{1009.5,-3196.6,-38.99682}}},{interiorsProps={'weed_drying','weed_production','weed_upgrade_equip','weed_growtha_stage3','weed_growthc_stage1','weed_growthd_stage1','weed_growthe_stage2','weed_growthf_stage2','weed_growthg_stage1','weed_growthh_stage3','weed_growthi_stage2','weed_hosea','weed_hoseb','weed_hosec','weed_hosed','weed_hosee','weed_hosef','weed_hoseg','weed_hoseh','weed_hosei','light_growtha_stage23_upgrade','light_growthb_stage23_upgrade','light_growthc_stage23_upgrade','light_growthc_stage23_upgrade','light_growthd_stage23_upgrade','light_growthe_stage23_upgrade','light_growthf_stage23_upgrade','light_growthg_stage23_upgrade','light_growthh_stage23_upgrade','light_growthi_stage23_upgrade','weed_security_upgrade','weed_chairs'},coords={{1051.491,-3196.536,-39.14842}}},{interiorsProps={'security_high','equipment_basic','equipment_upgrade','production_upgrade','table_equipment_upgrade','coke_press_upgrade','coke_cut_01','coke_cut_02','coke_cut_03','coke_cut_04','coke_cut_05'},coords={{1093.6,-3196.6,-38.99841}}},{interiorsProps={'Bunker_Style_C','upgrade_bunker_set','security_upgrade','Office_Upgrade_set','gun_wall_blocker','gun_range_lights','gun_locker_upgrade','Gun_schematic_set'},coords={{899.5518,-3246.038,-98.04907}}},{interiorsProps={'V_FIB03_door_light','V_FIB02_set_AH3b','V_FIB03_set_AH3b','V_FIB04_set_AH3b'},coords={{110.4,-744.2,45.7496}}},{interiorsProps={'counterfeit_cashpile10d','counterfeit_cashpile20d','counterfeit_cashpile100d','counterfeit_security','counterfeit_upgrade_equip','money_cutter','special_chairs','dryera_on','dryera_open','dryerb_on','dryerb_open','dryerc_on','dryerc_open','dryerd_on','dryerd_open'},coords={{1121.897,-3195.338,-40.4025}}},{interiorsProps={'cash_stash3','coke_stash3','counterfeit_stash3','weed_stash3','id_stash3','meth_stash3','decorative_02','furnishings_02','walls_02','mural_09','gun_locker','mod_booth'},coords={{1107.04,-3157.399,-37.51859}}},{interiorsProps={'cash_large','coke_large','counterfeit_large','id_large','meth_large','weed_large','decorative_02','furnishings_02','walls_02','lower_walls_default','gun_locker','mod_booth'},coords={{998.4809,-3164.711,-38.90733}}},{interiorsProps={'garage_decor_01','garage_decor_02','garage_decor_03','garage_decor_04','lighting_option01','lighting_option02','lighting_option03','lighting_option04','lighting_option05','lighting_option06','lighting_option07','lighting_option08','lighting_option09','numbering_style01_n3','numbering_style02_n3','numbering_style03_n3','numbering_style04_n3','numbering_style05_n3','numbering_style06_n3','numbering_style07_n3','numbering_style08_n3','numbering_style09_n3','floor_vinyl_01','floor_vinyl_02','floor_vinyl_03','floor_vinyl_04','floor_vinyl_05','floor_vinyl_06','floor_vinyl_07','floor_vinyl_08','floor_vinyl_09','floor_vinyl_10','floor_vinyl_11','floor_vinyl_12','floor_vinyl_13','floor_vinyl_14','floor_vinyl_15','floor_vinyl_16','floor_vinyl_17','floor_vinyl_18','floor_vinyl_19','urban_style_set','car_floor_hatch','door_blocker'},coords={{994.5925,-3002.594,-39.64699}}},{interiorsProps={'office_chairs','swag_art3','swag_counterfeit3','swag_jewelwatch2'},coords={{-141.1987,-620.913,168.8205},{-141.5429,-620.9524,168.8204},{-141.2896,-620.9618,168.8204},{-141.4966,-620.8292,168.8204},{-141.3997,-620.9006,168.8204},{-141.5361,-620.9186,168.8204},{-141.392,-621.0451,168.8204},{-141.1945,-620.8729,168.8204},{-141.4924,-621.0035,168.8205},{-75.8466,-826.9893,243.3859},{-75.49945,-827.05,243.386},{-75.49827,-827.1889,243.386},{-75.44054,-827.1487,243.3859},{-75.63942,-827.1022,243.3859},{-75.47446,-827.2621,243.386},{-75.56978,-827.1152,243.3859},{-75.51953,-827.0786,243.3859},{-75.41915,-827.1118,243.3858},{-1579.756,-565.0661,108.523},{-1579.678,-565.0034,108.5229},{-1579.583,-565.0399,108.5229},{-1579.702,-565.0366,108.5229},{-1579.643,-564.9685,108.5229},{-1579.681,-565.0003,108.523},{-1579.677,-565.0689,108.5229},{-1579.708,-564.9634,108.5229},{-1579.693,-564.8981,108.5229},{-1392.667,-480.4736,72.04217},{-1392.542,-480.4011,72.04211},{-1392.626,-480.4856,72.04212},{-1392.617,-480.6363,72.04208},{-1392.532,-480.7649,72.04207},{-1392.611,-480.5562,72.04214},{-1392.563,-480.549,72.0421},{-1392.528,-480.475,72.04206},{-1392.416,-480.7485,72.04207}}},{interiorsProps={'garage_decor_04','lighting_option09','numbering_style01_n1','numbering_style02_n1','numbering_style03_n1','numbering_style04_n1','numbering_style05_n1','numbering_style06_n1','numbering_style07_n1','numbering_style08_n1','numbering_style09_n1','basic_style_set'},coords={{795.75439453125,-2997.3317871094,-22.960731506348}}},{interiorsProps={'floor_vinyl_03'},coords={{730.63916015625,-2993.2373046875,-38.999904632568}}},{interiorsProps={'chair01','chair02','chair03','chair04','chair05','chair06','chair07','clutter','equipment_upgrade','interior_upgrade','production','security_high','set_up'},coords={{1163.842,-3195.7,-39.008}}},{interiorsProps={'set_int_02_decal_01','set_int_02_lounge1','set_int_02_cannon','set_int_02_clutter1','set_int_02_crewemblem','set_int_02_shell','set_int_02_security','set_int_02_sleep','set_int_02_trophy1','set_int_02_paramedic_complete','set_Int_02_outfit_paramedic','set_Int_02_outfit_serverfarm'},interiorsPropColors={{'set_int_02_decal_01',1},{'set_int_02_lounge1',1},{'set_int_02_cannon',1},{'set_int_02_clutter1',1},{'set_int_02_shell',1},{'set_int_02_security',1},{'set_int_02_sleep',1},{'set_int_02_trophy1',1},{'set_int_02_paramedic_complete',1},{'set_Int_02_outfit_paramedic',1},{'set_Int_02_outfit_serverfarm',1}},coords={{483.2,4810.5,-58.9}}},{interiorsProps={'set_lighting_hangar_a','set_tint_shell','set_bedroom_tint','set_crane_tint','set_modarea','set_lighting_tint_props','set_floor_1','set_floor_decal_1','set_bedroom_modern','set_office_modern','set_bedroom_blinds_open','set_lighting_wall_tint01'},interiorsPropColors={{'set_tint_shell',1},{'set_bedroom_tint',1},{'set_crane_tint',1},{'set_modarea',1},{'set_lighting_tint_props',1},{'set_floor_decal_1',1}},coords={{-1266.0,-3014.0,-47.0}}}},
	OnlinePlayers = {
		Splayer = 0,
		T = {},
	},
	holdtimer = 0,
	scrolly = 0.0,
	scrollyold = 0.0,
	IsCustomPropmen = 'random',
	IsCustomVehmen = 'random',
	IsCustomPedMen = 'random',
	IsCustomVehmen2 = 'random',
	AimbotKeybindl = "NONE",
	AimbotKeybindv = 0,
}
local cockmenyoo = 0
local timer = 0
local plustoscroll = 0.0
local loadt = 0 
local rctimer = 0
local __AATIMER__ = 0
local __EVENTTT__ = 0
local __WATERMARKALPHA__ = 0
local __WATERMARKALPHA__2 = 0
local quat = quat
local __CitIn__ = Citizen

local __KentasStrings__ = { 
	strings = {
		-- strings
		['string:upper'] = string.upper,
		['string:lower'] = string.lower,
		['string:format'] = string.format,
		['string:tonumber'] = tonumber,
		['string:tostring'] = tostring,
		['string:pairs'] = pairs,

		['string:find'] = string.find,
		['string:sub'] = string.sub,
		['string:gsub'] = string.gsub,
		['string:quat'] = quat,
		['string:vector3'] = vector3,
		['string:type'] = type,

		-- tables
		['table:unpack'] = table.unpack,
		['table:insert'] = table.insert,
		['table:remove'] = table.remove,

		
		-- msgpacks
		['msgpack:unpack'] = msgpack.unpack,
		['msgpack:pack'] = msgpack.pack,
		
		
	},
	math = {
		['math:rad'] = math.rad,
		['math:cos'] = math.cos,
		['math:sin'] = math.sin,
		['math:pi'] = math.pi,
		['math:abs'] = math.abs,
		['math:ceil'] = math.ceil,
		['math:random'] = math.random,
		['math:sqrt'] = math.sqrt,

		['math:floor'] = math.floor,
	},
}

function __KentasStrings__.strings:msgpackunpack(pack)
	return __KentasStrings__.strings['msgpack:unpack'](pack)
end
function __KentasStrings__.strings:msgpackpack(pack)
	return __KentasStrings__.strings['msgpack:pack'](pack)
end

function __KentasStrings__.strings:tableinsert(a, b)
	return __KentasStrings__.strings['table:insert'](a, b)
end
function __KentasStrings__.strings:tableremove(a, b)
	return __KentasStrings__.strings['table:remove'](a, b)
end

function __KentasStrings__.strings:tableunpack(table)
	return __KentasStrings__.strings['table:unpack'](table)
end
function __KentasStrings__.strings:upper(text)
	return __KentasStrings__.strings['string:upper'](text)
end
function __KentasStrings__.strings:lower(text)
	return __KentasStrings__.strings['string:lower'](text)
end
function __KentasStrings__.strings:format(p, v)
	return __KentasStrings__.strings['string:format'](p, v)
end
function __KentasStrings__.strings:tonumber(text)
	return __KentasStrings__.strings['string:tonumber'](text)
end
function __KentasStrings__.strings:tostring(text)
	return __KentasStrings__.strings['string:tostring'](text)
end
function __KentasStrings__.strings:floor(a)
	return __KentasStrings__.math['math:floor'](a)
end
function __KentasStrings__.strings:pairs(pair)
	return __KentasStrings__.strings['string:pairs'](pair)
end
function __KentasStrings__.strings:sqrt(A)
	return __KentasStrings__.math['math:sqrt'](A)
end
function __KentasStrings__.strings:rad(rot)
	return __KentasStrings__.math['math:rad'](rot)
end
function __KentasStrings__.strings:random(a, b)
	return __KentasStrings__.math['math:random'](a, b)
end
function __KentasStrings__.strings:cos(yaw)
	return __KentasStrings__.math['math:cos'](yaw)
end
function __KentasStrings__.strings:sin(yaw)
	return __KentasStrings__.math['math:sin'](yaw)
end
function __KentasStrings__.strings:abs(adjustedRotation)
	return __KentasStrings__.math['math:abs'](adjustedRotation)
end
function __KentasStrings__.strings:gsub(a, b, c)
	return __KentasStrings__.strings['string:gsub'](a, b, c)
end
function __KentasStrings__.strings:sub(a, b, c)
	return __KentasStrings__.strings['string:sub'](a, b, c)
end
function __KentasStrings__.strings:find(a, b)
	return __KentasStrings__.strings['string:find'](a, b)
end
function __KentasStrings__.strings:ceil(a)
	return __KentasStrings__.math['math:ceil'](a)
end
function __KentasStrings__.strings:quat(v2, v3)
	return __KentasStrings__.strings['string:quat'](v2, v3)
end
function __KentasStrings__.strings:vector3(x, y, z)
	return __KentasStrings__.strings['string:vector3'](x, y, z)
end
function __KentasStrings__.strings:type(type)
	return __KentasStrings__.strings['string:type'](type)
end

local AddonVehicles = {
	cars = {'adder', "gtr", "19dbs", "16challenger", "4490crf", "911", "amggtsprior", "lb750sv", "lp770", "weaponz", "c4cactus", "agera", "can", "cweapon1000", "db11", "divo", "f82", "fordh", "g63", "gt63", "rmodmustang", "rmodrs6", "fenyr", "pturismo", "bugatti", "huayrar", "r8ppis", "sc18", "patty", "californiat", "vantage", "04acuratsx", "180sx", "18performante", "2012leon", "504", "718b", "95stang", "999", "aaq4", "amggt", "audis32", "audis8om", "ben17", "bentaygast", "bgnx", "bmws", "c63w205", "c7", "camry55", "cayenne", "citroc4", "countach", "cyrus", "czr2", "dbs2009", "dbx", "demon", "eclipse", "evo9", "f150", "f812", "fairlane66", "fct", "fd3s", "fe86", "fiat600", "fz07", "g65amg", "gt17", "gto", "ibiza", "m3f80", "m4f82", "m5e60", "mgt", "monza", "p1", "passatb3", "prius17", "r6", "r8ppi", "raptor2017", "rav4", "rs7", "s500w222", "srt8", "str20", "supra2", "tahoe", "taycan", "teslax", "trossa", "urus", "w210", "x6m", "XADV", "z4bmw", "zl12017", "18Velar", "19gt500", "19ramoffroad", "650slw", "acsr", "amggtr", "amggtrr20", "aperta", "asrad", "audsq517", "avj", "avz", "battista", "bc", "bdivo", "bmm", "boss302", "weaponabus700", "bug09", "bugatticentodieci", "c8c", "chiron17", "db5", "demonhawk", "enzo", "explorer20", "f1", "f8t", "fc15", "fxxk2", "g63amg6x6", "gr1", "h6", "hyabusadrag", "it18", "jes", "kamswb", "ktklp7704", "lamboMurcielago", "lamtmc", "m5hamman", "mcvors", "mercxclass", "mlec", "mvisiongt", "nissantitan17", "one77", "p1lm", "q820", "raid", "regera", "rimac", "rmodlp770", "rmodmi8lb", "rxf7", "senna", "skyline", "sq72016", "superkart", "terzo", "titan17", "tr22", "vip8", "wraith", "zondar", "zx10r", 'rmodx6police', 'nspeedo', 'aimgainnsx', 'adCar', 'rmodmartin', 'ast', 'a6', 'r820', 'r8v10abt', 'rs318', 'rs4avant', 'rs6c8', 'rs7c8wb', 'b5s4', '2015s3', 'rmodbentleygt', 'contss18', 'rmodbentley1', '7449le', 'm3e30', 'e30t', 'm2f22', 'm6f30', 'm3e46', 'razor', 'm4c', 'm4', 'rmodm4gts', 'e34touring', 'e60', 'm516', 'pd_bmw', 'rmodbmwm8', 'rmodm8gte', 'm40i', 'weaponabus850', 'b63s', 'mweapona850', 'rmodchiron300', 'rmodbugatti', 'bvit', 'rmodzl1',}
}

Kentas.F.Tables = {
	CFGAccess = {
		0, 5468, 4
	},
	KnownEvents = {
		'screenshot_basic:requestScreenshot',
		'something',
		'somfing',
		'anticheat:kick',
		'anticheat:ban',
		'el_bwh:ban',
		'el_bwh:warn',
		'EasyAdmin:CaptureScreenshot',
		'EasyAdmin:CaptureScreenshot',
		'EasyAdmin:requestSpectate',
		'EasyAdmin:kickPlayer',
		'EasyAdmin:banPlayer',
		'EasyAdmin:TeleportAdminToPlayer',
		'EasyAdmin:SlapPlaye',
		'tigoanticheat:banPlayer',
		'tigoanticheat:logToConsole',
		"AntiCheese:RemoveInventoryWeapons",
	},
	CurrentShooting = 1,
		ShootingModes = {
			'weapon_rpg', 'weapon_pistol'
		},
		Textures = {
			Parts = {'uppr', 'jbib', 'lowr', 'accs', 'feet', 'berd', 'task', 'teef', 'head'},
			ChamTextures = {
				['casual'] = {'_a_uni','_b_uni','_c_uni','_d_uni','_e_uni','_f_uni','_g_uni','_h_uni','_i_uni','_j_uni','_k_uni','_l_uni','_m_uni','_n_uni','_o_uni','_p_uni','_q_uni','_r_uni','_s_uni','_t_uni','_u_uni','_v_uni','_w_uni','_x_uni','_y_uni','_z_uni','_a_whi','_b_whi','_c_whi','_d_whi','_e_whi','_f_whi','_g_whi','_h_whi','_i_whi','_j_whi','_k_whi','_l_whi','_m_whi','_n_whi','_o_whi','_p_whi','_q_whi','_r_whi','_s_whi','_t_whi','_u_whi','_v_whi','_w_whi','_x_whi','_y_whi','_z_whi',},['head'] = {'_a_uni','_b_uni','_c_uni','_d_uni','_e_uni','_f_uni','_g_uni','_h_uni','_i_uni','_j_uni','_k_uni','_l_uni','_m_uni','_n_uni','_o_uni','_p_uni','_q_uni','_r_uni','_s_uni','_t_uni','_u_uni','_v_uni','_w_uni','_x_uni','_y_uni','_z_uni','_a_whi','_b_whi','_c_whi','_d_whi','_e_whi','_f_whi','_g_whi','_h_whi','_i_whi','_j_whi','_k_whi','_l_whi','_m_whi','_n_whi','_o_whi','_p_whi','_q_whi','_r_whi','_s_whi','_t_whi','_u_whi','_v_whi','_w_whi','_x_whi','_y_whi','_z_whi','_a_bla','_b_bla','_c_bla','_d_bla','_e_bla','_f_bla','_g_bla','_h_bla','_i_bla','_j_bla','_k_bla','_l_bla','_m_bla','_n_bla','_o_bla','_p_bla','_q_bla','_r_bla','_s_bla','_t_bla','_u_bla','_v_bla','_w_bla','_x_bla','_y_bla','_z_bla','_a_lat','_b_lat','_c_lat','_d_lat','_e_lat','_f_lat','_g_lat','_h_lat','_i_lat','_j_lat','_k_lat','_l_lat','_m_lat','_n_lat','_o_lat','_p_lat','_q_lat','_r_lat','_s_lat','_t_lat','_u_lat','_v_lat','_w_lat','_x_lat','_y_lat','_z_lat','_a_chi','_b_chi','_c_chi','_d_chi','_e_chi','_f_chi','_g_chi','_h_chi','_i_chi','_j_chi','_k_chi','_l_chi','_m_chi','_n_chi','_o_chi','_p_chi','_q_chi','_r_chi','_s_chi','_t_chi','_u_chi','_v_chi','_w_chi','_x_chi','_y_chi','_z_chi','_a_pak','_b_pak','_c_pak','_d_pak','_e_pak','_f_pak','_g_pak','_h_pak','_i_pak','_j_pak','_k_pak','_l_pak','_m_pak','_n_pak','_o_pak','_p_pak','_q_pak','_r_pak','_s_pak','_t_pak','_u_pak','_v_pak','_w_pak','_x_pak','_y_pak','_z_pak','_a_ara','_b_ara','_c_ara','_d_ara','_e_ara','_f_ara','_g_ara','_h_ara','_i_ara','_j_ara','_k_ara','_l_ara','_m_ara','_n_ara','_o_ara','_p_ara','_q_ara','_r_ara','_s_ara','_t_ara','_u_ara','_v_ara','_w_ara','_x_ara','_y_ara','_z_ara',}
			},
			ChamNumbers = {
				['upper'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29, 0 .. 30, 0 .. 31, 0 .. 32, 0 .. 33, 0 .. 34, 0 .. 35, 0 .. 36, 0 .. 37, 0 .. 38, 0 .. 39, 0 .. 40, 0 .. 41, 0 .. 42, 0 .. 43, 0 .. 44, 0 .. 45, 0 .. 46, 0 .. 47, 0 .. 48, 0 .. 49, 0 .. 50, 0 .. 51, 0 .. 52, 0 .. 53, 0 .. 54, 0 .. 55, 0 .. 56, 0 .. 57, 0 .. 58, 0 .. 59, 0 .. 60, 0 .. 61, 0 .. 62, 0 .. 63, 0 .. 64, 0 .. 65, 0 .. 66, 0 .. 67, 0 .. 68, 0 .. 69, 0 .. 70, 0 .. 71, 0 .. 72, 0 .. 73, 0 .. 74, 0 .. 75, 0 .. 76, 0 .. 77, 0 .. 78, 0 .. 79, 0 .. 80 },['head'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29, 0 .. 30, 0 .. 31, 0 .. 32, 0 .. 33, 0 .. 34, 0 .. 35, 0 .. 36, 0 .. 37, 0 .. 38, 0 .. 39, 0 .. 40, 0 .. 41, 0 .. 42, 0 .. 43, 0 .. 44, 0 .. 45 },['teef'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29, 0 .. 30, 0 .. 31, 0 .. 32, 0 .. 33, 0 .. 34, 0 .. 35, 0 .. 36, 0 .. 37 },['rest'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29 }
			},
		},
		WepTextures = {
			'w_me_switchblade+hi','w_me_switchblade','w_me_switchblade_b+hi','w_me_switchblade_b','w_me_switchblade_g+hi','w_me_switchblade_g','w_pi_revolver+hi','w_pi_revolver','w_pi_revolver_b+hi','w_pi_revolver_b','w_pi_revolver_g+hi','w_pi_revolver_g','w_pi_revolver_mag1','w_ar_bp_mk2_barrel1','w_ar_bp_mk2_barrel2','w_ar_bullpupriflemk2','w_ar_bullpupriflemk2_camo1','w_ar_bullpupriflemk2_camo2','w_ar_bullpupriflemk2_camo3','w_ar_bullpupriflemk2_camo4','w_ar_bullpupriflemk2_camo5','w_ar_bullpupriflemk2_camo6','w_ar_bullpupriflemk2_camo7','w_ar_bullpupriflemk2_camo8','w_ar_bullpupriflemk2_camo9','w_ar_bullpupriflemk2_camo10','w_ar_bullpupriflemk2_camo_ind1','w_ar_bullpupriflemk2_mag1','w_ar_bullpupriflemk2_mag2','w_ar_bullpupriflemk2_mag_ap','w_ar_bullpupriflemk2_mag_fmj','w_ar_bullpupriflemk2_mag_inc','w_ar_bullpupriflemk2_mag_tr','w_ar_sc_barrel_1','w_ar_sc_barrel_2','w_ar_specialcarbinemk2','w_ar_specialcarbinemk2_camo1','w_ar_specialcarbinemk2_camo2','w_ar_specialcarbinemk2_camo3','w_ar_specialcarbinemk2_camo4','w_ar_specialcarbinemk2_camo5','w_ar_specialcarbinemk2_camo6','w_ar_specialcarbinemk2_camo7','w_ar_specialcarbinemk2_camo8','w_ar_specialcarbinemk2_camo9','w_ar_specialcarbinemk2_camo10','w_ar_specialcarbinemk2_camo_ind','w_ar_specialcarbinemk2_mag1','w_ar_specialcarbinemk2_mag2','w_ar_specialcarbinemk2_mag_ap','w_ar_specialcarbinemk2_mag_fmj','w_ar_specialcarbinemk2_mag_inc','w_ar_specialcarbinemk2_mag_tr','w_at_muzzle_8_xm17','w_at_muzzle_8_xm_l1','w_at_pi_comp_2','w_at_pi_comp_3','w_at_pi_rail_2','w_at_pi_snsmk2_flsh_1','w_ex_vehiclemissile_4','w_pi_revolvermk2','w_pi_revolvermk2_camo1','w_pi_revolvermk2_camo2','w_pi_revolvermk2_camo3','w_pi_revolvermk2_camo4','w_pi_revolvermk2_camo5','w_pi_revolvermk2_camo6','w_pi_revolvermk2_camo7','w_pi_revolvermk2_camo8','w_pi_revolvermk2_camo9','w_pi_revolvermk2_camo10','w_pi_revolvermk2_camo_ind','w_pi_revolvermk2_mag1','w_pi_revolvermk2_mag2','w_pi_revolvermk2_mag3','w_pi_revolvermk2_mag4','w_pi_revolvermk2_mag5','w_pi_revolvermk_l1','w_pi_sns_pistolmk2','w_pi_sns_pistolmk2_camo1','w_pi_sns_pistolmk2_camo2','w_pi_sns_pistolmk2_camo3','w_pi_sns_pistolmk2_camo4','w_pi_sns_pistolmk2_camo5','w_pi_sns_pistolmk2_camo6','w_pi_sns_pistolmk2_camo7','w_pi_sns_pistolmk2_camo8','w_pi_sns_pistolmk2_camo9','w_pi_sns_pistolmk2_camo10','w_pi_sns_pistolmk2_camo_ind1','w_pi_sns_pistolmk2_mag1','w_pi_sns_pistolmk2_mag2','w_pi_sns_pistolmk2_mag_fmj','w_pi_sns_pistolmk2_mag_hp','w_pi_sns_pistolmk2_mag_inc','w_pi_sns_pistolmk2_mag_tr','w_pi_sns_pistolmk2_sl_camo1','w_pi_sns_pistolmk2_sl_camo2','w_pi_sns_pistolmk2_sl_camo3','w_pi_sns_pistolmk2_sl_camo4','w_pi_sns_pistolmk2_sl_camo5','w_pi_sns_pistolmk2_sl_camo6','w_pi_sns_pistolmk2_sl_camo7','w_pi_sns_pistolmk2_sl_camo8','w_pi_sns_pistolmk2_sl_camo9','w_pi_sns_pistolmk2_sl_camo10','w_pi_sns_pistolmk2_sl_camo_ind1','w_pi_wep1_gun','w_pi_wep1_mag1','w_sg_pumpshotgunmk2+hi','w_sg_pumpshotgunmk2','w_sg_pumpshotgunmk2_camo1','w_sg_pumpshotgunmk2_camo2','w_sg_pumpshotgunmk2_camo3','w_sg_pumpshotgunmk2_camo4','w_sg_pumpshotgunmk2_camo5','w_sg_pumpshotgunmk2_camo6','w_sg_pumpshotgunmk2_camo7','w_sg_pumpshotgunmk2_camo8','w_sg_pumpshotgunmk2_camo9','w_sg_pumpshotgunmk2_camo10','w_sg_pumpshotgunmk2_camo_ind1','w_sg_pumpshotgunmk2_mag1','w_sg_pumpshotgunmk2_mag_ap','w_sg_pumpshotgunmk2_mag_exp','w_sg_pumpshotgunmk2_mag_hp','w_sg_pumpshotgunmk2_mag_inc','w_sr_marksmanriflemk2','w_sr_marksmanriflemk2_camo1','w_sr_marksmanriflemk2_camo2','w_sr_marksmanriflemk2_camo3','w_sr_marksmanriflemk2_camo4','w_sr_marksmanriflemk2_camo5','w_sr_marksmanriflemk2_camo6','w_sr_marksmanriflemk2_camo7','w_sr_marksmanriflemk2_camo8','w_sr_marksmanriflemk2_camo9','w_sr_marksmanriflemk2_camo10','w_sr_marksmanriflemk2_camo_ind','w_sr_marksmanriflemk2_mag1','w_sr_marksmanriflemk2_mag2','w_sr_marksmanriflemk2_mag_ap','w_sr_marksmanriflemk2_mag_fmj','w_sr_marksmanriflemk2_mag_inc','w_sr_marksmanriflemk2_mag_tr','w_sr_mr_mk2_barrel_1','w_sr_mr_mk2_barrel_2','w_ch_jerrycan',
			'w_pi_ceramic_mag1','w_pi_ceramic_pistol','w_pi_ceramic_supp','w_pi_wep2_gun','w_pi_wep2_gun_mag1','w_pi_wep2_gun_mag_l1','w_ar_advancedrifle_luxe','w_ar_advancedrifle_luxe_mag1','w_ar_advancedrifle_luxe_mag2',
			'w_ar_assaultrifle_luxe','w_ar_assaultrifle_luxe_mag1','w_ar_assaultrifle_luxe_mag2','w_ar_carbinerifle_luxe','w_ar_carbinerifle_luxe_mag1','w_ar_carbinerifle_luxe_mag2','w_at_ar_afgrip_luxe','w_at_ar_flsh_2','w_at_ar_flsh_luxe','w_at_ar_supp_luxe','w_at_ar_supp_luxe_02','w_at_pi_flsh_luxe','w_at_pi_supp_luxe','w_at_pi_supp_luxe_2','w_at_railcover_luxe_01','w_at_scope_large_luxe','w_at_scope_macro_02_luxe','w_at_scope_macro_luxe','w_at_scope_max_luxe','w_at_scope_medium_luxe','w_at_scope_small_02_luxe_l1','w_at_scope_small_luxe','w_at_scope_small_luxe_2','w_at_sr_supp_luxe','w_at_sr_supp_luxe_2','w_pi_appistol_luxe','w_pi_appistol_mag1_luxe','w_pi_appistol_mag2_luxe','w_pi_heavypistol_luxe','w_pi_heavypistol_luxe_mag1','w_pi_heavypistol_luxe_mag2','w_pi_pistol50_luxe','w_pi_pistol50_mag1_luxe','w_pi_pistol50_mag2_luxe','w_pi_pistol_luxe','w_pi_pistol_luxe_mag1','w_pi_pistol_luxe_mag2','w_sb_microsmg_luxe','w_sb_microsmg_mag1_luxe','w_sb_microsmg_mag2_luxe','w_sb_pdw+hi','w_sb_pdw','w_sb_pdw_mag1','w_sb_pdw_mag2','w_sb_smg_luxe','w_sb_smg_luxe_mag1','w_sb_smg_luxe_mag2','w_sg_sawnoff_luxe','w_sr_marksmanrifle_luxe','w_sr_marksmanrifle_luxe_mag1','w_sr_marksmanrifle_luxe_mag2','w_sr_sniperrifle_luxe','w_sr_sniperrifle_mag1_luxe','w_am_baseball','w_am_digiscanner+hi','w_am_digiscanner','w_am_fire_exting+hi','w_am_fire_exting','w_am_flare','w_ar_advancedrifle+hi','w_ar_advancedrifle','w_ar_advancedrifle_mag1+hi','w_ar_advancedrifle_mag1','w_ar_advancedrifle_mag2+hi','w_ar_advancedrifle_mag2','w_ar_assaultrifle+hi','w_ar_assaultrifle','w_ar_assaultrifle_mag1','w_ar_assaultrifle_mag2','w_ar_bullpuprifle+hi','w_ar_bullpuprifle','w_ar_bullpuprifle_mag1','w_ar_bullpuprifle_mag2','w_ar_carbinerifle+hi','w_ar_carbinerifle','w_ar_carbinerifle_mag1','w_ar_carbinerifle_mag2','w_ar_musket+hi','w_ar_musket','w_ar_railgun','w_ar_railgun_mag1','w_ar_specialcarbine+hi','w_ar_specialcarbine','w_ar_specialcarbine_mag1','w_ar_specialcarbine_mag2','w_at_ar_afgrip','w_at_ar_flsh','w_at_ar_supp','w_at_ar_supp_02','w_at_pi_flsh','w_at_pi_supp','w_at_pi_supp_2','w_at_railcover_01','w_at_scope_large+hi','w_at_scope_large','w_at_scope_macro+hi','w_at_scope_macro','w_at_scope_macro_2+hi','w_at_scope_macro_2','w_at_scope_max+hi','w_at_scope_max','w_at_scope_medium+hi','w_at_scope_medium','w_at_scope_small+hi','w_at_scope_small','w_at_scope_small_2+hi','w_at_scope_small_2','w_at_sr_supp','w_at_sr_supp_2','w_ex_apmine','w_ex_grenadefrag','w_ex_grenadesmoke','w_ex_molotov','w_ex_pe+hi','w_ex_pe','w_ex_snowball','w_lr_firework+hi','w_lr_firework','w_lr_firework_rocket','w_lr_grenadelauncher+hi','w_lr_grenadelauncher','w_lr_homing','w_lr_homing_rocket','w_lr_rpg+hi','w_lr_rpg','w_lr_rpg_rocket+hi','w_lr_rpg_rocket','w_me_bat','w_me_bottle+hi','w_me_bottle','w_me_crowbar','w_me_dagger+hi','w_me_dagger','w_me_gclub','w_me_hammer','w_me_hatchet+hi','w_me_hatchet','w_me_knife_01+hi','w_me_knife_01','w_me_nightstick','w_mg_combatmg+hi','w_mg_combatmg','w_mg_combatmg_mag1+hi','w_mg_combatmg_mag1','w_mg_combatmg_mag2+hi','w_mg_combatmg_mag2','w_mg_mg+hi','w_mg_mg','w_mg_mg_mag1+hi','w_mg_mg_mag1','w_mg_mg_mag2+hi','w_mg_mg_mag2','w_mg_minigun+hi','w_mg_minigun','w_pi_appistol+hi','w_pi_appistol','w_pi_appistol_mag1','w_pi_appistol_mag2','w_pi_combatpistol+hi','w_pi_combatpistol','w_pi_combatpistol_mag1','w_pi_combatpistol_mag2','w_pi_heavypistol+hi','w_pi_heavypistol','w_pi_heavypistol_mag1','w_pi_heavypistol_mag2','w_pi_pistol','w_pi_pistol50+hi','w_pi_pistol50','w_pi_pistol50_mag1','w_pi_pistol50_mag2','w_pi_pistol+hi','w_pi_pistol_mag1','w_pi_pistol_mag2','w_pi_sns_pistol+hi','w_pi_sns_pistol','w_pi_sns_pistol_mag1','w_pi_sns_pistol_mag2','w_pi_stungun+hi','w_pi_stungun','w_pi_vintage_pistol','w_pi_vintage_pistol_mag1','w_pi_vintage_pistol_mag2','w_sb_assaultsmg+hi','w_sb_assaultsmg','w_sb_assaultsmg_mag1','w_sb_assaultsmg_mag2','w_sb_gusenberg+hi','w_sb_gusenberg','w_sb_gusenberg_mag1','w_sb_gusenberg_mag2','w_sb_microsmg+hi','w_sb_microsmg',
			'w_sb_microsmg_mag1+hi','w_sb_microsmg_mag1','w_sb_microsmg_mag2+hi','w_sb_microsmg_mag2','w_sb_smg+hi','w_sb_smg','w_sb_smg_mag1','w_sb_smg_mag2','w_sg_assaultshotgun+hi','w_sg_assaultshotgun','w_sg_assaultshotgun_mag1+hi','w_sg_assaultshotgun_mag1','w_sg_assaultshotgun_mag2+hi','w_sg_assaultshotgun_mag2','w_sg_bullpupshotgun+hi','w_sg_bullpupshotgun','w_sg_heavyshotgun+hi','w_sg_heavyshotgun','w_sg_heavyshotgun_mag1','w_sg_heavyshotgun_mag2','w_sg_pumpshotgun+hi','w_sg_pumpshotgun','w_sg_sawnoff+hi','w_sg_sawnoff','w_sr_heavysniper+hi','w_sr_heavysniper','w_sr_heavysniper_mag1','w_sr_marksmanrifle+hi','w_sr_marksmanrifle','w_sr_marksmanrifle_mag1','w_sr_marksmanrifle_mag2','w_sr_sniperrifle+hi','w_sr_sniperrifle','w_sr_sniperrifle_mag1','w_ar_bp_mk2_barrel1','w_ar_bp_mk2_barrel2','w_ar_bullpupriflemk2','w_ar_bullpupriflemk2_camo1','w_ar_bullpupriflemk2_camo2','w_ar_bullpupriflemk2_camo3','w_ar_bullpupriflemk2_camo4','w_ar_bullpupriflemk2_camo5','w_ar_bullpupriflemk2_camo6','w_ar_bullpupriflemk2_camo7','w_ar_bullpupriflemk2_camo8','w_ar_bullpupriflemk2_camo9','w_ar_bullpupriflemk2_camo10','w_ar_bullpupriflemk2_camo_ind1','w_ar_bullpupriflemk2_mag1','w_ar_bullpupriflemk2_mag2','w_ar_bullpupriflemk2_mag_ap','w_ar_bullpupriflemk2_mag_fmj','w_ar_bullpupriflemk2_mag_inc','w_ar_bullpupriflemk2_mag_tr','w_ar_sc_barrel_1','w_ar_sc_barrel_2','w_ar_specialcarbinemk2','w_ar_specialcarbinemk2_camo1','w_ar_specialcarbinemk2_camo2','w_ar_specialcarbinemk2_camo3','w_ar_specialcarbinemk2_camo4','w_ar_specialcarbinemk2_camo5','w_ar_specialcarbinemk2_camo6','w_ar_specialcarbinemk2_camo7','w_ar_specialcarbinemk2_camo8','w_ar_specialcarbinemk2_camo9','w_ar_specialcarbinemk2_camo10','w_ar_specialcarbinemk2_camo_ind','w_ar_specialcarbinemk2_mag1','w_ar_specialcarbinemk2_mag2',
			'w_ar_specialcarbinemk2_mag_ap','w_ar_specialcarbinemk2_mag_fmj','w_ar_specialcarbinemk2_mag_inc','w_ar_specialcarbinemk2_mag_tr','w_at_muzzle_8_xm17','w_at_muzzle_8_xm_l1','w_at_pi_comp_2','w_at_pi_comp_3','w_at_pi_rail_2','w_at_pi_snsmk2_flsh_1','w_ex_vehiclemissile_4','w_pi_revolvermk2','w_pi_revolvermk2_camo1','w_pi_revolvermk2_camo2','w_pi_revolvermk2_camo3','w_pi_revolvermk2_camo4','w_pi_revolvermk2_camo5','w_pi_revolvermk2_camo6','w_pi_revolvermk2_camo7','w_pi_revolvermk2_camo8','w_pi_revolvermk2_camo9','w_pi_revolvermk2_camo10','w_pi_revolvermk2_camo_ind','w_pi_revolvermk2_mag1','w_pi_revolvermk2_mag2','w_pi_revolvermk2_mag3','w_pi_revolvermk2_mag4','w_pi_revolvermk2_mag5','w_pi_revolvermk_l1','w_pi_sns_pistolmk2','w_pi_sns_pistolmk2_camo1','w_pi_sns_pistolmk2_camo2','w_pi_sns_pistolmk2_camo3','w_pi_sns_pistolmk2_camo4','w_pi_sns_pistolmk2_camo5','w_pi_sns_pistolmk2_camo6','w_pi_sns_pistolmk2_camo7','w_pi_sns_pistolmk2_camo8','w_pi_sns_pistolmk2_camo9','w_pi_sns_pistolmk2_camo10','w_pi_sns_pistolmk2_camo_ind1','w_pi_sns_pistolmk2_mag1','w_pi_sns_pistolmk2_mag2','w_pi_sns_pistolmk2_mag_fmj','w_pi_sns_pistolmk2_mag_hp','w_pi_sns_pistolmk2_mag_inc','w_pi_sns_pistolmk2_mag_tr','w_pi_sns_pistolmk2_sl_camo1','w_pi_sns_pistolmk2_sl_camo2','w_pi_sns_pistolmk2_sl_camo3','w_pi_sns_pistolmk2_sl_camo4','w_pi_sns_pistolmk2_sl_camo5','w_pi_sns_pistolmk2_sl_camo6','w_pi_sns_pistolmk2_sl_camo7','w_pi_sns_pistolmk2_sl_camo8','w_pi_sns_pistolmk2_sl_camo9','w_pi_sns_pistolmk2_sl_camo10','w_pi_sns_pistolmk2_sl_camo_ind1','w_pi_wep1_gun','w_pi_wep1_mag1','w_sg_pumpshotgunmk2+hi','w_sg_pumpshotgunmk2','w_sg_pumpshotgunmk2_camo1','w_sg_pumpshotgunmk2_camo2','w_sg_pumpshotgunmk2_camo3','w_sg_pumpshotgunmk2_camo4','w_sg_pumpshotgunmk2_camo5','w_sg_pumpshotgunmk2_camo6','w_sg_pumpshotgunmk2_camo7','w_sg_pumpshotgunmk2_camo8','w_sg_pumpshotgunmk2_camo9','w_sg_pumpshotgunmk2_camo10','w_sg_pumpshotgunmk2_camo_ind1','w_sg_pumpshotgunmk2_mag1','w_sg_pumpshotgunmk2_mag_ap','w_sg_pumpshotgunmk2_mag_exp','w_sg_pumpshotgunmk2_mag_hp','w_sg_pumpshotgunmk2_mag_inc','w_sr_marksmanriflemk2','w_sr_marksmanriflemk2_camo1','w_sr_marksmanriflemk2_camo2','w_sr_marksmanriflemk2_camo3','w_sr_marksmanriflemk2_camo4','w_sr_marksmanriflemk2_camo5','w_sr_marksmanriflemk2_camo6','w_sr_marksmanriflemk2_camo7','w_sr_marksmanriflemk2_camo8','w_sr_marksmanriflemk2_camo9','w_sr_marksmanriflemk2_camo10','w_sr_marksmanriflemk2_camo_ind','w_sr_marksmanriflemk2_mag1','w_sr_marksmanriflemk2_mag2','w_sr_marksmanriflemk2_mag_ap','w_sr_marksmanriflemk2_mag_fmj','w_sr_marksmanriflemk2_mag_inc','w_sr_marksmanriflemk2_mag_tr','w_sr_mr_mk2_barrel_1','w_sr_mr_mk2_barrel_2', 
			'w_pi_vintage_pistol', 'w_pi_pistolmk2', 'w_pi_sns_pistol', 'w_pi_pistol', 'w_pi_combatpistol',
			'w_pi_vintage_pistol_s', 'w_pi_pistolmk2_s', 'w_pi_sns_pistol_s', 'w_pi_pistol_s', 'w_pi_combatpistol_s','w_ar_assaultrifle',
			'w_ar_assaultrifle_s',
			'w_ar_assaultrifle_n',
			'w_ar_carbinerifle',
			'w_ar_carbinerifle_s',
			'w_ar_carbinerifle_n',
		},
		A = {
			R = 255, 
			G = 255, 
			B = 255,
		},
		Friends = {},
		FriendsList = {},
		CustomKeysTable = {
			["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
			["9"] = 163, ["-"] = 84, ["="] = 83, ["q"] = 44, ["w"] = 32, ["e"] = 38, ["r"] = 45, ["t"] = 245,
			["y"] = 246, ["u"] = 303, ["p"] = 199, ["["] = 39, ["]"] = 40, ["a"] = 34, ["s"] = 8, ["d"] = 9,
			["f"] = 23, ["g"] = 47, ["h"] = 74, ["k"] = 311, ["l"] = 182, ["z"] = 20, ["x"] = 73, ["c"] = 26,
			["v"] = 0, ["b"] = 29, ["n"] = 249, ["m"] = 244, [","] = 82, ["."] = 81, ["`"] = 243,
		},
		Keys = {
			["BACKSPACE"] = 177, ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56,
			["F10"] = 57, ["F11"] = 344, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
			["9"] = 163, ["-"] = 84, ["="] = 83, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245,
			["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9,
			["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26,
			["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22,
			["RIGHTCTRL"] = 70, ["HOME"] = 213, ["INSERT"] = 121, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,["LEFT"] = 174,
			["RIGHT"] = 175, ["UP"] = 172, ["DOWN"] = 173,  ["MWHEELUP"] = 15, ["MWHEELDOWN"] = 14, ["N4"] = 108, ["N5"] = 110, ["N6"] = 107,
			["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 111, ["N9"] = 118, ["MOUSE1"] = 24, ["MOUSE2"] = 25, ["MOUSE3"] = 348, ["`"] = 243,
		},
        Lerp = function(a, b, c)
            if a > 1 then return c end
            if a < 0 then return b end
        
            return b + (c - b) * a
        end,
		WebReq = function(url)
			if Kentas.F.Funcs.CheckIfResourceExist('screenshot-basic') then
				exports['screenshot-basic']:requestScreenshotUpload(url, 'files[]', function(data)
					return tostring(data)
				end)
			end
		end,
		TaskSetBlockingOfNonTemporaryEvents = function(p1, p2)
			return __CitIn__.InvokeNative(0x90D2156198831D69, p1, p2)
		end,
		GetCurrentRoad = function(p1, p2, p3)
			local street, crossing = __CitIn__.InvokeNative(0x2EB41072B4C1E4C0, p1, p2, p3, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
			return __CitIn__.InvokeNative(0xD0EF8A959B8A4CB9, street, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		SetDuiUrl = function(p1, p2)
			return __CitIn__.InvokeNative(0xF761D9F3, p1, __KentasStrings__.strings:tostring(p2))
		end, 
		GetRegisteredCommands = function()
			return GetRegisteredCommands()
		end,
		StopCutscene = function(p1)
			return __CitIn__.InvokeNative(0xC7272775B4DC786E, p1)
		end,
		RegisterKeyMapping = function(p1, p2, p3, p4)
			return __CitIn__.InvokeNative(0xD7664FD1, p1, __KentasStrings__.strings:tostring(p2), p3, p4, __CitIn__.ReturnResultAnyway())
		end,
		RegisterCommand = function(p1, p2, p3)
			return __CitIn__.InvokeNative(0x5fa79b0f, p1, __CitIn__.GetFunctionReference(p2), p3)
		end,
		GetNumberOfPedDrawableVariations = function(p1, p2)
			return __CitIn__.InvokeNative(0x27561561732A7842, p1, p2, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetNumberOfPedPropDrawableVariations = function(p1, p2)
			return __CitIn__.InvokeNative(0x5FAF9754E789FB47, p1, p2, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DisableAllControlActions = function(a)
			return __CitIn__.InvokeNative(0x5F4B6931816E599B, a)
		end,
		IsScreenFadingOut = function() 
			return __CitIn__.InvokeNative(0x797AC7CB535BA28F, __CitIn__.ReturnResultAnyway()) 
		end,
		DoScreenFadeIn = function(p1) 
			return __CitIn__.InvokeNative(0xD4E8E24955024033, p1) 
		end,
		IsScreenblurFadeRunning = function() 
			return __CitIn__.InvokeNative(0x7B226C785A52A0A9, __CitIn__.ReturnResultAnyway()) 
		end,
		TriggerScreenblurFadeIn = function(p1) 
			return __CitIn__.InvokeNative(0xA328A24AAA6B7FDC, p1, __CitIn__.ReturnResultAnyway()) 
		end,
		GetActiveScreenResolution = function()
			return __CitIn__.InvokeNative(0x873C9F3104101DD3, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetFinalRenderedCamRot = function(p1)
			return __CitIn__.InvokeNative(0x5B4E4C817FCC2DFB, p1, __CitIn__.ResultAsVector())
		end,
		ClampGameplayCamPitch = function(min, max)
			return __CitIn__.InvokeNative(0x8F993D26E0CA5E8E, min, max, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsControlReleased = function(c1, c2)
			return __CitIn__.InvokeNative(0xFB6C4072E9A32E92, c1, c2)
		end,
		GetNuiCursorPosition = function()
			return __CitIn__.InvokeNative(0xbdba226f, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		SetTextFont = function(font)
			return __CitIn__.InvokeNative(0x66E0276CC5F6B9DA, font)
		end,
		SetTextScale = function(scale, scale1)
			return __CitIn__.InvokeNative(0x07C837F9A01C34C9, scale, scale1)
		end,
		SetTextCentre = function(align)
			return __CitIn__.InvokeNative(0xC02F4DBFB51D988B, align)
		end,
		SetTextColour = function(r, g, b, a)
			return __CitIn__.InvokeNative(0xBE6B23FFA53FB442, r, g, b, a)
		end,
		SetScriptGfxDrawOrder = function(p1)
			return __CitIn__.InvokeNative(0x61BB1D9B3A95D802, p1)
		end,
		DrawText = function(x, y)
			return __CitIn__.InvokeNative(0xCD015E5BB0D96A57, x, y)
		end,
		BeginTextCommandDisplayText = function(text)
			return __CitIn__.InvokeNative(0x25FBB336DF1804CB, __KentasStrings__.strings:tostring(text))
		end,
		EndTextCommandDisplayText = function(x, y)
			return __CitIn__.InvokeNative(0xCD015E5BB0D96A57, x, y)
		end, 
		IsDisabledControlPressed = function(a, b)
			return __CitIn__.InvokeNative(0xE2587F8CBBD87B1D, a, b, __CitIn__.ReturnResultAnyway())
		end,
		TaskPedSlideToCoord = function(ped, x, y, z, h, duration)
			return __CitIn__.InvokeNative(0xD04FE6765D990A06, ped, x, y, z, h, duration, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetWeaponDamage = function(weaponHash, componentHash) 
			return __CitIn__.InvokeNative(0x3133B907D8B32053, weaponHash, componentHash, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat()) 
		end,
		SetMouseCursorSprite = function(a)
			return __CitIn__.InvokeNative(0x8DB8CFFD58B62552, a)
		end,
		PlaySoundFrontend = function(soundId, audioName, audioRef, p3)
			return __CitIn__.InvokeNative(0x67C540AA08E4A6F5, soundId, __KentasStrings__.strings:tostring(audioName), __KentasStrings__.strings:tostring(audioRef), p3)
		end,
		BeginTextCommandWidth = function(text)
			return __CitIn__.InvokeNative(0x54CE8AC98E120CAB, __KentasStrings__.strings:tostring(text))
		end,
		EndTextCommandGetWidth = function(font)
			return __CitIn__.InvokeNative(0x85F061DA64ED2F67, font, __CitIn__.ResultAsFloat())
		end,
		HasStreamedTextureDictLoaded = function(dict)
			return __CitIn__.InvokeNative(0x0145F696AAAAD2E4, __KentasStrings__.strings:tostring(dict), __CitIn__.ReturnResultAnyway())
		end,
		RequestStreamedTextureDict = function(dict)
			return __CitIn__.InvokeNative(0xDFA2EF8E04127DD5, __KentasStrings__.strings:tostring(dict))
		end,
		GetGameBuildNumber = function()
			return __CitIn__.InvokeNative(0x804B9F7B, __CitIn__.ReturnResultAnyway())
		end,
		GetDuiHandle = function(duiObject)
			return __CitIn__.InvokeNative(0x1655d41d, duiObject, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
			return __CitIn__.InvokeNative(0xb135472b, txd, txn, __KentasStrings__.strings:tostring(duiHandle), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsLong())
		end,
		CreateRuntimeTxd = function(name)
			return __CitIn__.InvokeNative(0x1f3ac778, __KentasStrings__.strings:tostring(name), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsLong())
		end,
		CreateDui = function(url, width, height)
			return __CitIn__.InvokeNative(0x23eaf899, __KentasStrings__.strings:tostring(url), width, height, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsLong())
		end,
		SetEntityHealth = function(entity,health)
			return __CitIn__.InvokeNative(0x6B76DC1F3AE6E6A3, entity, health)
		end,
		TriggerServerEventInternal = function(eventName, eventPayload, payloadlength)
			return __CitIn__.InvokeNative(0x7FDD1128, __KentasStrings__.strings:tostring(eventName), __KentasStrings__.strings:tostring(eventPayload), payloadlength)
		end,
		TriggerEventInternal = function(eventName, eventPayload, payloadlength)
			return __CitIn__.InvokeNative(0x91310870, __KentasStrings__.strings:tostring(eventName), __KentasStrings__.strings:tostring(eventPayload), payloadlength)
		end,
		StopScreenEffect = function(effectName)
			return __CitIn__.InvokeNative(0x068E835A1D0DC0E3, __KentasStrings__.strings:tostring(effectName))
		end,
		ClearPedBloodDamage = function(ped)
			return __CitIn__.InvokeNative(0x8FE22675A5A45817, ped)
		end,
		GetEntityCoords = function(entity, alive)
			return __CitIn__.InvokeNative(0x3FEF770D40960D5A, entity, alive, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		DrawSpotLight = function(x, y, z, dx, dy, dz, r, g, b, dist, bright, hard, radius, falloff)
			return __CitIn__.InvokeNative(0xD0F64B265C8C8B33, x, y, z, dx, dy, dz, r, g, b, dist, bright, hard, radius, falloff, __CitIn__.ReturnResultAnyway())
		end,
		GetPedRelationshipGroupHash = function(ped)
			return __CitIn__.InvokeNative(0x7DBDD04862D95F04, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetPedAsGroupMember = function(ped, id)
			return __CitIn__.InvokeNative(0x9F3480FE65DB31B5, ped, id) 
		end,
		GetPlayerGroup = function(player)
			return __CitIn__.InvokeNative(0x0D127585F77030AF, player, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetPedNeverLeavesGroup = function(ped, toggle)
			return __CitIn__.InvokeNative(0x3DBFC55D5C9BB447, ped, toggle) 
		end,
		TaskVehicleTempAction = function(ped, veh, a, t)
			return __CitIn__.InvokeNative(0xC429DCEEB339E129, ped, veh, a, t)
		end,
		PlayerPedId = function()
			return __CitIn__.InvokeNative(0xD80958FC74E988A6, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetVehiclePedIsEntering = function(ped)
			return __CitIn__.InvokeNative(0xF92691AED837A5FC, ped, __CitIn__.ReturnResultAnyway())
		end,


		MakePedReload = function(ped)
			return __CitIn__.InvokeNative(0x20AE33F3AC9C0033, ped, __CitIn__.ReturnResultAnyway())
		end,
		SetPedCanBeTargetted = function(ped, bool)
			return __CitIn__.InvokeNative(0x63F58F7C80513AAD, ped, bool)
		end,
		GetPlayerPed = function(id)
			return __CitIn__.InvokeNative(0x43A66C31C68491C0, id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		NetworkResurrectLocalPlayer = function(p0, p1, p2, p3, p4, p5)
			return __CitIn__.InvokeNative(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5)
		end,
		SetEntityCoordsNoOffset = function(entity, X, Y, Z, p4, p5, p6)
			return __CitIn__.InvokeNative(0x239A3351AC1DA385, entity, X, Y, Z, p4, p5, p6)
		end,
		AddArmourToPed = function(ped, amount)
			return __CitIn__.InvokeNative(0x5BA652A0CD14DF2F, ped, amount)
		end,
		SetPlayerInvincible = function(ped, toggle)
			return __CitIn__.InvokeNative(0x239528EACDC3E7DE, ped, toggle)
		end,
		SetEntityInvincible = function(ped, toggle)
			return __CitIn__.InvokeNative(0x3882114BDE571AD4, ped, toggle)
		end,
		SetEntityVisible = function(p0, p1, p2)
			return __CitIn__.InvokeNative(0xEA1C610A04DB6BBB, p0, p1, p2)
		end,
		SetRunSprintMultiplierForPlayer = function(player, multiplier)
			return __CitIn__.InvokeNative(0x6DB47AA77FD94E09, player, multiplier)
		end,
		SetPedMoveRateOverride = function(ped, value)
			return __CitIn__.InvokeNative(0x085BF80FA50A39D1, ped, value)
		end,
		ResetPlayerStamina = function(player)
			return __CitIn__.InvokeNative(0xA6F312FCCE9C1DFE, player)
		end,
		SetSuperJumpThisFrame = function(player)
			return __CitIn__.InvokeNative(0x57FFF03E423A4C0B, player, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		PlayerId = function()
			return __CitIn__.InvokeNative(0x4F8644AF03D0E0D6, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetRedUid = function()
			return __CitIn__.InvokeNative(0x762376233638, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		RequestModel = function(model)
			return __CitIn__.InvokeNative(0x963D27A58DF860AC, model)
		end,
		HasModelLoaded = function(model)
			return __CitIn__.InvokeNative(0x98A4EB5D89A0C952, model, __CitIn__.ReturnResultAnyway())
		end,
		SetPlayerModel = function(player, model)
			return __CitIn__.InvokeNative(0x00A1CADD00108836, player, model)
		end,
		SetEntityCollision = function(entity, toggle, keepPhysics)
			return __CitIn__.InvokeNative(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
		end,
		SetTransitionTimecycleModifier = function(modifierName, transition)
			return __CitIn__.InvokeNative(0x3BCF567485E1971C, __KentasStrings__.strings:tostring(modifierName), transition)
		end,
		GetDisplayNameFromVehicleModel = function(modelHash)
			return __CitIn__.InvokeNative(0xB215AAC32D25D019, modelHash, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetVehicleEstimatedMaxSpeed = function(vehicle)
			return __CitIn__.InvokeNative(0x53AF99BAA671CA47, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetPlayerInvincible = function(player)
			return __CitIn__.InvokeNative(0xB721981B2B939E07, player, __CitIn__.ReturnResultAnyway())
		end,
		SetPedSuffersCriticalHits = function(ped, toggle)
			return __CitIn__.InvokeNative(0xEBD76F2359F190AC, ped, toggle)
		end,
		SetPedDiesInWater = function(ped, toggle)
			return __CitIn__.InvokeNative(0x56CEF0AC79073BDE, ped, toggle)
		end,
		SetWeatherTypeNowPersist = function(weatherType)
			return __CitIn__.InvokeNative(0xED712CA327900C8A, __KentasStrings__.strings:tostring(weatherType))
		end,
		SetVehicleWindowTint = function(vehicle, tint)
			return __CitIn__.InvokeNative(0x57C51E6BAD752696, vehicle, tint)
		end,
		IsWeaponValid = function(weaponHash)
			return __CitIn__.InvokeNative(0x937C71165CF334B3, __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(weaponHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), __CitIn__.ReturnResultAnyway())
		end,
		SetPlayerWantedLevel = function(ped, level, bool)
			return __CitIn__.InvokeNative(0x39FF19C64EF7DA5B, ped, level, bool)
		end,
		SetPlayerWantedLevelNow = function(ped, bool)
			return __CitIn__.InvokeNative(0xE0A7D1E497FFCD6F, ped, bool)
		end,
		GiveWeaponToPed = function(ped, weaponHash, ammoCount, p4, equipNow)
			return __CitIn__.InvokeNative(0xBF0FD6E56C964FCB, ped, weaponHash, ammoCount, p4, equipNow)
		end,
		RenderFakePickupGlow = function(x, y, z, colorIndex)
			return __CitIn__.InvokeNative(0xBF0FD6E56C964FCB, x, y, z, colorIndex, __CitIn__.ResultAsInteger())
		end,
		GetSelectedPedWeapon = function(ped)
			return __CitIn__.InvokeNative(0x0A6DB4965674D243, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetPedShootsAtCoord = function(ped, x, y, z, bool)
			return __CitIn__.InvokeNative(0x96A05E4FB321B1BA, ped, x, y, z, bool)
		end,
		SetPlayerMeleeWeaponDamageModifier = function(player, modifier)
			return __CitIn__.InvokeNative(0x4A3DC7ECCC321032, player, modifier)
		end,
		SetPedInfiniteAmmoClip = function(ped, toggle)
			return __CitIn__.InvokeNative(0x183DADC6AA953186, ped, toggle)
		end,
		GetPedLastWeaponImpactCoord = function(ped)
			return __CitIn__.InvokeNative(0x6C4D0409BA1A2BC2, ped, __CitIn__.PointerValueVector(), __CitIn__.ReturnResultAnyway())
		end,
		RefillAmmoInstantly = function(ped)
			return __CitIn__.InvokeNative(0x8C0D57EA686FAD87, ped)
		end,
		AddExplode = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
			return __CitIn__.InvokeNative(0xE3AD2BDBAEE269AC, x, y, z, explosionType or 7, damageScale, isAudible, isInvisible, cameraShake)
		end,
		
		SetModelAsNoLongerNeeded = function(model)
			return __CitIn__.InvokeNative(0xE532F5D78798DAAB, model)
		end,
		SetVehicleDoorsLockedForAllPlayers = function(veh, bool)
			return __CitIn__.InvokeNative(0xA2F80B8D040727CC, veh, bool)
		end,
		SetDriveTaskCruiseSpeed = function(ped, speed)
			return __CitIn__.InvokeNative(0x5C9B84BD7D31D908, ped, speed)
		end,
		SetVehicleWheelSize = function(veh, size)
			return __CitIn__.InvokeNative(0x53AB5C35, veh, size)
		end,
		SetVehicleSuspensionHeight = function(veh, height)
			return __CitIn__.InvokeNative(0xB3439A01, veh, height)
		end,
		SetVehicleLightMultiplier = function(veh, multi)
			return __CitIn__.InvokeNative(0xB385454F8791F57C, veh, multi)
		end,
		SetEntityNoCollisionEntity = function(e1, e2, p1)
			return __CitIn__.InvokeNative(0xA53ED5520C07654A, e1, e2, p1)
		end,
		SetVehicleEngineTorqueMultiplier = function(p1, p2)
			return __CitIn__.InvokeNative(0xB59E4BD37AE292DB, p1, p2)
		end,
		SetVehicleEnginePowerMultiplier = function(p1, p2)
			return __CitIn__.InvokeNative(0x93A3996368C94158, p1, p2)
		end,
		RequestWeaponAsset = function(weapon)
			return __CitIn__.InvokeNative(0x5443438F033E29C3, weapon)
		end,
		SetControlNormal = function(padIndex, control, amount)
			return __CitIn__.InvokeNative(0xE8A25867FBA3B05E, padIndex, control, amount, __CitIn__.ReturnResultAnyway())
		end,
		SetTextWrap = function(from, to)
			return __CitIn__.InvokeNative(0x63145D9C883A1A70, from, to)
		end,
		SetPedHeadBlendData = function(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
			return __CitIn__.InvokeNative(0x9414E18B9434C2FE, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
		end,
		SetPedHeadOverlay = function(ped, overlayID, index, opacity)
			return __CitIn__.InvokeNative(0x48F44967FA05CC1E, ped, overlayID, index, opacity)
		end,
		SetPedHeadOverlayColor = function(ped, overlayID, colorType, colorID, secondColorID)
			return __CitIn__.InvokeNative(0x497BF74A7B9CB952, ped, overlayID, colorType, colorID, secondColorID)
		end,
		SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId)
			return __CitIn__.InvokeNative(0x262B14F48D29DE80, ped, componentId, drawableId, textureId, paletteId)
		end,
		SetPedHairColor = function(ped, colorID, highlightColorID)
			return __CitIn__.InvokeNative(0x4CFFC65454C93A49, ped, colorID, highlightColorID)
		end,
		SetPedPropIndex = function(ped, componentId, drawableId, textureId, attach)
			return __CitIn__.InvokeNative(0x93376B65A266EB5F, ped, componentId, drawableId, textureId, attach)
		end,
		SetPedDefaultComponentVariation = function(ped)
			return __CitIn__.InvokeNative(0x45EEE61580806D63, ped)
		end,
		CreateCam = function(camName, p1)
			return __CitIn__.InvokeNative(0xC3981DCE61D9E13F, __KentasStrings__.strings:tostring(camName), p1, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		RenderScriptCams = function(render, ease, easeTime, p3, p4)
			return __CitIn__.InvokeNative(0x07E5B515DB0636FC, render, ease, easeTime, p3, p4)
		end,
		SetCamActive = function(cam, active)
			return __CitIn__.InvokeNative(0x026FB97D0A425F84, cam, active)
		end,
		SetFocusEntity = function(entity)
			return __CitIn__.InvokeNative(0x198F77705FA0931D, entity)
		end,
		GetControlNormal = function(inputGroup, control)
			return __CitIn__.InvokeNative(0xEC3C9B8D5327B563, inputGroup, control, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		SetCursorLocation = function(p0, p1)
			return __CitIn__.InvokeNative(0xFC695459D4D0E219, p0, p1, __CitIn__.ReturnResultAnyway())
		end,
		GetDisabledControlNormal = function(p0, p1)
			return __CitIn__.InvokeNative(0x11E65974A982637C, p0, p1, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetEntityRotation = function(entity, rotationOrder)
			return __CitIn__.InvokeNative(0xAFBD61CC738D9EB9, entity, rotationOrder, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetCamRot = function(cam, rotX, rotY, rotZ, p4)
			return __CitIn__.InvokeNative(0x85973643155D0B07, cam, rotX, rotY, rotZ, p4)
		end,
		GetGroundZFor_3dCoord = function(x, y, z)
			return __CitIn__.InvokeNative(0xC906A7DAB05C8D2B, x, y, z, __CitIn__.PointerValueFloat(), __CitIn__.ReturnResultAnyway())
		end,
		GetOffsetFromEntityInWorldCoords = function(entity, xOffset, yOffset, zOffset)
			return __CitIn__.InvokeNative(0x1899F328B0E12848, entity, xOffset, yOffset, zOffset, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetCamCoord = function(cam, posX, posY, posZ)
			return __CitIn__.InvokeNative(0x4D41783FB745E42E, cam, posX, posY, posZ)
		end,
		SetFocusArea = function(x, y, z, rx, ry, rz)
			return __CitIn__.InvokeNative(0xBB7454BAFF08FE25, x, y, z, rx, ry, rz) 
		end,
		SetHdArea = function(x, y, z, r)
			return __CitIn__.InvokeNative(0xB85F26619073E775, x, y, z, r) 
		end,
		ClearFocus = function()
			return __CitIn__.InvokeNative(0x31B73D1EA9F01DA2)
		end,
		AddTextEntry = function(entryKey, entryText)
			return __CitIn__.InvokeNative(0x32ca01c3, __KentasStrings__.strings:tostring(entryKey), __KentasStrings__.strings:tostring(entryText))
		end,
		DisplayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
			return __CitIn__.InvokeNative(0x00DC833F2568DBF6, p0, __KentasStrings__.strings:tostring(windowTitle), __KentasStrings__.strings:tostring(p2), __KentasStrings__.strings:tostring(defaultText), __KentasStrings__.strings:tostring(defaultConcat1), __KentasStrings__.strings:tostring(defaultConcat2), __KentasStrings__.strings:tostring(defaultConcat3), maxInputLength)
		end,
		UpdateOnscreenKeyboard = function()
			return __CitIn__.InvokeNative(0x0CF2B696BBF945AE, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetOnscreenKeyboardResult = function()
			return __CitIn__.InvokeNative(0x8362B09B91893647, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		EnableAllControlActions = function(index)
			return __CitIn__.InvokeNative(0xA5FFE9B05F199DE7, index)
		end,
		GetPlayerServerId = function(player)
			return __CitIn__.InvokeNative(0x4d97bcc7, player, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetGameplayCamCoords = function()
			return __CitIn__.InvokeNative(0xA200EB1EE790F448, __CitIn__.ReturnResultAnyway())
		end,
		GetFrameTime = function()
			return __CitIn__.InvokeNative(0x15C40837039FFAF7, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetPlayerFromServerId = function(player)
			return __CitIn__.InvokeNative(0x344ea166, player, __CitIn__.ResultAsInteger())
		end,
		GetPlayerName = function(player)
			return __CitIn__.InvokeNative(0x6D0DE6A7B5DA71F8, player, __CitIn__.ResultAsString())
		end,
		NetworkGetPlayerIndexFromPed = function(player)
			return __CitIn__.InvokeNative(0x6C0E2E0125610278, player, __CitIn__.ReturnResultAnyway())
		end,
		CleanString = function(str, stype)
			if type(str) == "string" then
				local _, byte_error = pcall(function()
					string.dump(string.byte)
				end)
				if byte_error then
					local kek = ""
					for i = 1, #str do
						if string.byte(string.sub(str, i, i)) ~= 240 and string.byte(string.sub(str, i, i)) ~= 226 then
							kek = kek .. string.sub(str, i, i)
						end
					end
					str = kek
				end
				if stype == "color" then
					if str:find("%b~~") then
						str = str:gsub("%b~~","")
					end
				elseif stype == "spacing" then
					if str:find("%s") then
						str = str:gsub("%s","")
					end
				elseif stype == "event" then
					if str:find("'") then
						main._a, main._b = string.find(str, "%b''")
						str = str:sub(main._a + 1, main._b - 1)
					elseif str:find('"') then
						main._a, main._b = string.find(str, '%b""')
						str = str:sub(main._a + 1, main._b - 1)
					end
				end
			end
			return str
		end,
		DestroyCam = function(cam)
			return __CitIn__.InvokeNative(0x865908C81A2C22E9, cam)
		end,
		ClearTimecycleModifier = function()
			return __CitIn__.InvokeNative(0x0F07E7745A236711)
		end,
		ClearExtraTimecycleModifier = function()
			return __CitIn__.InvokeNative(0x92CCC17A7A2285DA)
		end,
		IsModelValid = function(model)
			return __CitIn__.InvokeNative(0xC0296A2EDF545E92, model, __CitIn__.ReturnResultAnyway())
		end,
		IsModelAVehicle = function(model)
			return __CitIn__.InvokeNative(0x19AAC8F07BFEC53E, model, __CitIn__.ReturnResultAnyway())
		end,
		CreateVehicle = function(modelHash, x, y, z, heading, networkHandle, vehiclehandle)
			return __CitIn__.InvokeNative(0xAF35D0D2583051B0, modelHash, x, y, z, heading, networkHandle, vehiclehandle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetPedIntoVehicle = function(ped, vehicle, seatIndex)
			return __CitIn__.InvokeNative(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
		end,
		CreateObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
			return __CitIn__.InvokeNative(0x509D5878EB39E842, modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
			return __CitIn__.InvokeNative(0x867654CBC7606F2C, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
		end,
		RequestNamedPtfxAsset = function(assetName)
			return __CitIn__.InvokeNative(0xB80D8756B4668AB6, __KentasStrings__.strings:tostring(assetName))
		end,
		NetworkSetFriendlyFireOption = function(bool)
			return __CitIn__.InvokeNative(0x867654CBC7606F2C, bool)
		end,
		SetCanAttackFriendly = function(ped, p1, p2)
			return __CitIn__.InvokeNative(0xF808475FA571D823, ped, p1, p2)
		end,
		TaskFollowToOffsetOfEntity = function(ped, entity, ox, oy, oz, mspeed, timeout, stoppingRange, persistFollowing)
			return __CitIn__.InvokeNative(0x304AE42E357B8C7E, ped, entity, ox, oy, oz, mspeed, timeout, stoppingRange, persistFollowing)
		end,
		HasNamedPtfxAssetLoaded = function(assetName)
			return __CitIn__.InvokeNative(0x8702416E512EC454, __KentasStrings__.strings:tostring(assetName), __CitIn__.ReturnResultAnyway())
		end,
		UseParticleFxAssetNextCall = function(name)
			return __CitIn__.InvokeNative(0x6C38AF3693A69A91, __KentasStrings__.strings:tostring(name))
		end,
		StartNetworkedParticleFxNonLoopedAtCoord = function(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
			return __CitIn__.InvokeNative(0xF56B8137DF10135D, __KentasStrings__.strings:tostring(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, __CitIn__.ReturnResultAnyway())
		end,
		AttachEntityToEntity = function(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
			return __CitIn__.InvokeNative(0x6B9BBD38AB0796DF, entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
		end,
		GetPedBoneIndex = function(ped, boneId)
			return __CitIn__.InvokeNative(0x3F428D08BE5AAE31, ped, boneId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsPedInAnyVehicle = function(ped, atGetIn)
			return __CitIn__.InvokeNative(0x997ABD671D25CA0B, ped, atGetIn, __CitIn__.ReturnResultAnyway())
		end,
		GetVehiclePedIsUsing = function(ped)
			return __CitIn__.InvokeNative(0x6094AD011A2EA87D, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		ForceVehicleEngineAudio = function(veh, audio)
			return __CitIn__.InvokeNative(0x4F0C413926060B38, veh, __KentasStrings__.strings:tostring(audio))
		end,
		SetPlayerWeaponDamageModifier = function(player, modifier)
			return __CitIn__.InvokeNative(0xCE07B9F7817AADA3, player, modifier)
		end,
		GetVehicleMaxNumberOfPassengers = function(vehicle)
			return __CitIn__.InvokeNative(0xA7C4F2C6E744A550, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsVehicleSeatFree = function(vehicle, seatIndex)
			return __CitIn__.InvokeNative(0x22AC59A870E6A669, vehicle, seatIndex, __CitIn__.ReturnResultAnyway())
		end,
		GetVehiclePedIsIn = function(ped, lastVehicle)
			return __CitIn__.InvokeNative(0x9A9112A0FE9A4713, ped, lastVehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DisablePlayerFiring = function(player, toggle)
			return __CitIn__.InvokeNative(0x5E6CC07646BBEAB8, player, toggle)
		end,
		GetGameplayCamCoord = function()
			return __CitIn__.InvokeNative(0x14D6F5678D8F1B37, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		ClearPedTasks = function(ped)
			return __CitIn__.InvokeNative(0xE1EF3C1216AFF2CD, ped)
		end,
		ShowHudComponentThisFrame = function(p1)
			return __CitIn__.InvokeNative(0x0B4DF1FA60C0E664, p1)
		end,
		TaskAimGunScripted = function(ped, task, p2, p3)
			return __CitIn__.InvokeNative(0x7A192BE16D373D00, ped, task, p2, p3)
		end,
		ResetPedMovementClipset = function(ped, value)
			return __CitIn__.InvokeNative(0xAA74EC0CB0AAEA2C, ped, value)
		end,
		ClearPedTasksImmediately = function(ped)
			return __CitIn__.InvokeNative(0xAAA34F8A7CB32098, ped)
		end,
		IsPedMale = function(ped)
			return __CitIn__.InvokeNative(0x6D9F5FAA7488BA46, ped)
		end,
		CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
			return __CitIn__.InvokeNative(0xD49F9B0955C367DE, pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		FreezeEntityPosition = function(entity, toggle)
			return __CitIn__.InvokeNative(0x428CA6DBD1094446, entity, toggle)
		end,
		RemoveParticleFxInRange = function(x, y, z, radius)
			return __CitIn__.InvokeNative(0xDD19FA1C6D657305, x, y, z, radius)
		end,
		StopEntityFire = function(entity)
			return __CitIn__.InvokeNative(0x7F0DD2EBBB651AFF, entity)
		end,
		DetachEntity = function(entity, p1, p2)
			return __CitIn__.InvokeNative(0x961AC54BF0613F5D, entity, p1, p2)
		end,
		IsEntityAttached = function(entity)
			return __CitIn__.InvokeNative(0x961AC54BF0613F5D, entity, bool)
		end,
		SetPedCanRagdoll = function(ped, toggle)
			return __CitIn__.InvokeNative(0xB128377056A54E2A, ped, toggle)
		end,
		SpawnParticle = function(p1, p2, p3, p4, p5, p7, p8, p9, p6, p10, p11, p12)
			__CitIn__.CreateThread(function()
				__CitIn__.InvokeNative(0xB80D8756B4668AB6, __KentasStrings__.strings:tostring(p1))
				while not __CitIn__.InvokeNative(0x8702416E512EC454, __KentasStrings__.strings:tostring(p1), __CitIn__.ReturnResultAnyway()) do
					__CitIn__.Wait(100)
					__CitIn__.InvokeNative(0xB80D8756B4668AB6, __KentasStrings__.strings:tostring(p1))
				end
				__CitIn__.InvokeNative(0x6C38AF3693A69A91, __KentasStrings__.strings:tostring(p1))
				__CitIn__.InvokeNative(0xF56B8137DF10135D, __KentasStrings__.strings:tostring(p2), p3, p4, p5, p7, p8, p9, p6, p10, p11, p12, __CitIn__.ReturnResultAnyway())
				__CitIn__.InvokeNative(0x5F61EBBE1A00F96D, __KentasStrings__.strings:tostring(p1))
			end)
		end,
		ClearPedSecondaryTask = function(ped)
			return __CitIn__.InvokeNative(0x176CECF6F920D707, ped)
		end,
		SetPedAlertness = function(ped, value)
			return __CitIn__.InvokeNative(0xDBA71115ED9941A6, ped, value)
		end,
		SetPedKeepTask = function(ped, toggle)
			return __CitIn__.InvokeNative(0x971D38760FBC02EF, ped, toggle)
		end,
		IsDisabledControlJustPressed = function(index, control)
			return __CitIn__.InvokeNative(0x91AEF906BCA88877, index, control, __CitIn__.ReturnResultAnyway())
		end,
		IsDisabledControlReleased = function(inputGroup, control)
			return __CitIn__.InvokeNative(0xFB6C4072E9A32E92, inputGroup, control, __CitIn__.ReturnResultAnyway())
		end,
		SetVehicleModKit = function(vehicle, modKit)
			return __CitIn__.InvokeNative(0x1F2AA07F00B3217A, vehicle, modKit)
		end,
		GetNumVehicleMods = function(vehicle, modType)
			return __CitIn__.InvokeNative(0xE38E9162A2500646, vehicle, modType, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetModTextLabel = function(vehicle, modType, modValue)
			return __CitIn__.InvokeNative(0x8935624F8C5592CC, vehicle, modType, modValue, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetLabelText = function(labelName)
			return __CitIn__.InvokeNative(0x7B5280EBA9840C72, __KentasStrings__.strings:tostring(labelName), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		SetVehicleMod = function(vehicle, modType, modIndex, customTires)
			return __CitIn__.InvokeNative(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
		end,
		ToggleVehicleMod = function(vehicle, modType, toggle)
			return __CitIn__.InvokeNative(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
		end,
		SetVehicleGravityAmount = function(vehicle, gravity)
			return __CitIn__.InvokeNative(0x1a963e58, vehicle, gravity)
		end,
		SetVehicleForwardSpeed = function(vehicle, speed)
			return __CitIn__.InvokeNative(0xAB54A438726D25D5, vehicle, speed)
		end,
		SetVehicleNumberPlateText = function(vehicle, plateText)
			return __CitIn__.InvokeNative(0x95A88F0B409CDA47, vehicle, __KentasStrings__.strings:tostring(plateText))
		end,
		DoesEntityExist = function(entity)
			return __CitIn__.InvokeNative(0x7239B21A38F536BA, entity, __CitIn__.ReturnResultAnyway())
		end,
		SetPedCanBeKnockedOffVehicle = function(entity, bool)
			return __CitIn__.InvokeNative(0x7A6535691B477C48, entity, bool, __CitIn__.ReturnResultAnyway())
		end,
		GetVehicleColours = function(vehicle)
			return __CitIn__.InvokeNative(0xA19435F193E081AC, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetVehicleExtraColours = function(vehicle)
			return __CitIn__.InvokeNative(0x3BC4245933A166F7, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		DoesExtraExist = function(vehicle, extraId)
			return __CitIn__.InvokeNative(0x1262D55792428154, vehicle, extraId, __CitIn__.ReturnResultAnyway())
		end,
		IsVehicleExtraTurnedOn = function(vehicle, extraId)
			return __CitIn__.InvokeNative(0xD2E6822DBFD6C8BD, vehicle, extraId, __CitIn__.ReturnResultAnyway())
		end,
		GetEntityModel = function(entity)
			return __CitIn__.InvokeNative(0x9F47B058362C84B5, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetVehicleWheelType = function(vehicle)
			return __CitIn__.InvokeNative(0xB3ED1BFB4BE636DC, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetVehicleWindowTint = function(vehicle)
			return __CitIn__.InvokeNative(0x0EE21293DAD47C95, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsVehicleNeonLightEnabled = function(vehicle, index)
			return __CitIn__.InvokeNative(0x8C4B92553E4766A5, vehicle, index, __CitIn__.ReturnResultAnyway())
		end,
		DoesCamExist = function(cam)
			return __CitIn__.InvokeNative(0xA7A932170592B50E, cam, __CitIn__.ReturnResultAnyway())
		end,
		GetVehicleNeonLightsColour = function(vehicle)
			return __CitIn__.InvokeNative(0x7619EEE8C886757F, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetVehicleTyreSmokeColor = function(vehicle)
			return __CitIn__.InvokeNative(0xB635392A4938B3C3, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetVehicleMod = function(vehicle, modType)
			return __CitIn__.InvokeNative(0x772960298DA26FDB, vehicle, modType, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsToggleModOn = function(vehicle, modType)
			return __CitIn__.InvokeNative(0x84B233A8C8FC8AE7, vehicle, modType, __CitIn__.ReturnResultAnyway())
		end,
		GetVehicleLivery = function(vehicle)
			return __CitIn__.InvokeNative(0x2BB9230590DA5E8A, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetVehicleFixed = function(vehicle)
			return __CitIn__.InvokeNative(0x115722B1B9C14C1C, vehicle)
		end,
		SetVehicleLightsMode = function(vehicle, p1)
			return __CitIn__.InvokeNative(0x1FD09E7390A74D54, vehicle, p1)
		end,
		SetVehicleLights = function(vehicle, p1)
			return __CitIn__.InvokeNative(0x34E710FF01247C5A, vehicle, p1)
		end,
		SetVehicleBurnout = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0xFB8794444A7D60FB, vehicle, toggle)
		end,
		SetVehicleEngineHealth = function(vehicle, health)
			return __CitIn__.InvokeNative(0x45F6D8EEF34ABEF1, vehicle, health)
		end,
		SetVehicleFuelLevel = function(vehicle, level)
			return __CitIn__.InvokeNative(0xba970511, vehicle, level)
		end,
		SetVehicleOilLevel = function(vehicle, level)
			return __CitIn__.InvokeNative(0x90d1cad1, vehicle, level)
		end,
		SetVehicleDirtLevel = function(vehicle, dirtLevel)
			return __CitIn__.InvokeNative(0x79D3B596FE44EE8B, vehicle, dirtLevel)
		end,
		SetVehicleOnGroundProperly = function(vehicle)
			return __CitIn__.InvokeNative(0x49733E92263139D1, vehicle, __CitIn__.ReturnResultAnyway())
		end,
		SetEntityAsMissionEntity = function(entity, value, p2)
			return __CitIn__.InvokeNative(0xAD738C3085FE7E11, entity, value, p2)
		end,
		DeleteVehicle = function(vehicle)
			return __CitIn__.InvokeNative(0xEA386986E786A54F, __CitIn__.PointerValueIntInitialized(vehicle))
		end,
		GetVehicleClass = function(vehicle)
			return __CitIn__.InvokeNative(0x29439776AAA00A62, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetVehicleWheelType = function(vehicle, WheelType)
			return __CitIn__.InvokeNative(0x487EB21CC7295BA1, vehicle, WheelType, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetVehicleExtraColours = function(vehicle, pearlescentColor, wheelColor)
			return __CitIn__.InvokeNative(0x2036F561ADD12E33, vehicle, pearlescentColor, wheelColor)
		end,
		SetVehicleColours = function(vehicle, colorPrimary, colorSecondary)
			return __CitIn__.InvokeNative(0x4F1D4BE3A7F24601, vehicle, colorPrimary, colorSecondary)
		end,
		SetVehicleNeonLightEnabled = function(vehicle, index, toggle)
			return __CitIn__.InvokeNative(0x2AA720E4287BF269, vehicle, index, toggle)
		end,
		SetVehicleNeonLightsColour = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0x8E0A582209A62695, vehicle, r, g, b)
		end,
		TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
			return __CitIn__.InvokeNative(0xEA47FE3719165B94, ped, __KentasStrings__.strings:tostring(animDictionary), __KentasStrings__.strings:tostring(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
		end,
		ClearGpsMultiRoute = function()
			return __CitIn__.InvokeNative(0x67EEDEA1B9BAFD94, __CitIn__.ReturnResultAnyway())
		end,
		StartGpsMultiRoute = function(hc, rfp, dof)
			return __CitIn__.InvokeNative(0x3D3D15AF7BCAAF83, hc, rfp, dof, __CitIn__.ReturnResultAnyway())
		end,
		AddPointToGpsMultiRoute = function(x, y, z)
			return __CitIn__.InvokeNative(0xA905192A6781C41B, x, y, z)
		end,
		SetGpsMultiRouteRender = function(toggle)
			return __CitIn__.InvokeNative(0x3DDA37128DD1ACA8, toggle)
		end,
		DrawMarker = function(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
			return __CitIn__.InvokeNative(0x28477EC23D892089, type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
		end,
		NetworkIsPlayerActive = function(player)
			return __CitIn__.InvokeNative(0xB8DFD30D6973E135, player, __CitIn__.ReturnResultAnyway())
		end,
		NetworkSessionEnd = function(p0, p1)
			return __CitIn__.InvokeNative(0xA02E59562D711006, p0, p1, __CitIn__.ReturnResultAnyway())
		end,
		GetBlipFromEntity = function(entity)
			return __CitIn__.InvokeNative(0xBC8DBDCA2436F7E8, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		AddBlipForEntity = function(entity)
			return __CitIn__.InvokeNative(0x5CDE92C702A8FCE7, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetBlipSprite = function(blip, spriteId)
			return __CitIn__.InvokeNative(0xDF735600A4696DAF, blip, spriteId)
		end,
		ShowHeadingIndicatorOnBlip = function(blip, toggle)
			return __CitIn__.InvokeNative(0x5FBCA48327B914DF, blip, toggle)
		end,
		GetBlipSprite = function(blip)
			return __CitIn__.InvokeNative(0x1FC877464A04FC4F, blip, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetEntityHealth = function(entity)
			return __CitIn__.InvokeNative(0xEEF059FAD016D209, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		HideNumberOnBlip = function(blip)
			return __CitIn__.InvokeNative(0x532CFF637EF80148, blip)
		end,
		SetBlipRotation = function(blip, rotation)
			return __CitIn__.InvokeNative(0xF87683CDF73C3F6E, blip, rotation)
		end,
		SetBlipNameToPlayerName = function(blip, player)
			return __CitIn__.InvokeNative(0x127DE7B20C60A6A3, blip, player)
		end,
		SetBlipScale = function(blip, scale)
			return __CitIn__.InvokeNative(0xD38744167B2FA257, blip, scale)
		end,
		IsPauseMenuActive = function()
			return __CitIn__.InvokeNative(0xB0034A223497FFCB, __CitIn__.ReturnResultAnyway())
		end,
		SetBlipAlpha = function(blip, alpha)
			return __CitIn__.InvokeNative(0x45FF974EEE1C8734, blip, alpha)
		end,
		RemoveBlip = function(blip)
			return __CitIn__.InvokeNative(0x86A652570E5F25DD, __CitIn__.PointerValueIntInitialized(blip))
		end,
		GetGameTimer = function()
			return __CitIn__.InvokeNative(0x9CD27B0045628463, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetEntityAlpha = function(entity, alphaLevel, skin)
			return __CitIn__.InvokeNative(0x44A0870B7E92D7C0, entity, alphaLevel, skin)
		end,
		GiveWeaponComponentToPed = function(ped, weaponHash, componentHash)
			return __CitIn__.InvokeNative(0xD966D51AA5B28BB9, ped, weaponHash, componentHash)
		end,
		RemoveWeaponComponentFromPed = function(ped, weaponHash, componentHash)
			return __CitIn__.InvokeNative(0x1E8BE90C74FB4C09, ped, __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(weaponHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(componentHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()))
		end,
		AddAmmoToPed = function(ped, weaponHash, ammo)
			return __CitIn__.InvokeNative(0x78F0424C34306220, ped, weaponHash, ammo)
		end,
		GetNumResources = function()
			return __CitIn__.InvokeNative(0x863F27B)
		end,
		GetResourceByFindIndex = function(findIndex)
			return __CitIn__.InvokeNative(0x387246b7, findIndex, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetResourceState = function(resourceName)
			return __CitIn__.InvokeNative(0x4039b485, __KentasStrings__.strings:tostring(resourceName), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		CreateCamWithParams = function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
			return __CitIn__.InvokeNative(0xB51194800B257161, __KentasStrings__.strings:tostring(p1), p2, p3, p4, p5, p6, p7, p8, p9, p10, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetGameplayCamFov = function()
			return __CitIn__.InvokeNative(0x65019750A0324133, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetCamCoord = function(cam)
			return __CitIn__.InvokeNative(0xBAC038F7459AE5AE, cam, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		GetCamRot = function(cam, rotationOrder)
			return __CitIn__.InvokeNative(0x7D304C1C955E3E12, cam, rotationOrder, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		GetShapeTestResult = function(rayHandle)
			return __CitIn__.InvokeNative(0x3D87450E15D98694, rayHandle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueInt(), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8)
			return __CitIn__.InvokeNative(0x377906D8A31E5586, x1, y1, z1, x2, y2, z2, flags, entity, p8, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DisplayRadar = function(Toggle)
			return __CitIn__.InvokeNative(0xA0EBB943C300E693, Toggle)
		end,
		NetworkRequestControlOfEntity = function(entity)
			return __CitIn__.InvokeNative(0xB69317BF5E782347, entity, __CitIn__.ReturnResultAnyway())
		end,
		DeleteEEntity = function(entity)
			return __CitIn__.InvokeNative(0xAE3CBE5BF394C9C9, __CitIn__.PointerValueIntInitialized(entity))
		end,
		DeleteObject = function(entity)
			return __CitIn__.InvokeNative(0x539E0AE3E6634B9F, __CitIn__.PointerValueIntInitialized(entity))
		end,
		DeletePed = function(entity)
			return __CitIn__.InvokeNative(0x9614299DCB53E54B, __CitIn__.PointerValueIntInitialized(entity))
		end,
		SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
			return __CitIn__.InvokeNative(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
		end,
		SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5)
			return __CitIn__.InvokeNative(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
		end,
		GetGameplayCamRot = function(rotationOrder)
			return __CitIn__.InvokeNative(0x837765A25378F0BB, rotationOrder, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetEntityVelocity = function(entity, x, y, z)
			return __CitIn__.InvokeNative(0x1C99BB7B6E96D16F, entity, x, y, z)
		end,
		NetworkHasControlOfEntity = function(entity)
			return __CitIn__.InvokeNative(0x01BF60A500E28887, entity, __CitIn__.ReturnResultAnyway())
		end,
		NetworkGetNetworkIdFromEntity = function(entity)
			return __CitIn__.InvokeNative(0xA11700682F3AD45C, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedInVehicleSeat = function(vehicle, index)
			return __CitIn__.InvokeNative(0xBB40DD2270B65366, vehicle, index, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetEntityHeading = function(entity)
			return __CitIn__.InvokeNative(0xE83D4F9BA2A38914, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		PushScaleformMovieFunctionParameterBool = function(value)
			return __CitIn__.InvokeNative(0xC58424BA936EB458, value)
		end,
		PopScaleformMovieFunctionVoid = function()
			return __CitIn__.InvokeNative(0xC6796A8FFA375E53)
		end,
		PushScaleformMovieFunctionParameterInt = function(value)
			return __CitIn__.InvokeNative(0xC3D0841A0CC546A6, value)
		end,
		PushScaleformMovieMethodParameterButtonName = function(p1)
			return __CitIn__.InvokeNative(0xE83A3E3557A56640, __KentasStrings__.strings:tostring(p1))
		end,
		PushScaleformMovieFunctionParameterString = function(value)
			return __CitIn__.InvokeNative(0xBA7148484BD90365, __KentasStrings__.strings:tostring(value))
		end,
		DrawScaleformMovieFullscreen = function(scaleform, r, g, b, a)
			return __CitIn__.InvokeNative(0x0DF606929C105BE1, scaleform, r, g, b, a)
		end,
		GetFirstBlipInfoId = function(blipSprite)
			return __CitIn__.InvokeNative(0x1BEDE233E6CD2A1F, blipSprite, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DoesBlipExist = function(blip)
			return __CitIn__.InvokeNative(0xA6DB27D19ECBB7DA, blip, __CitIn__.ReturnResultAnyway())
		end,
		GetBlipInfoIdCoord = function(blip)
			return __CitIn__.InvokeNative(0xFA7C7F0AADF25D09, blip, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetPedCoordsKeepVehicle = function(ped, posX, posY, posZ)
			return __CitIn__.InvokeNative(0x9AFEFF481A85AB2E, ped, posX, posY, posZ)
		end,
		IsEntityInWater = function(entity)
			return __CitIn__.InvokeNative(0xCFB0A0D8EDD145A3, entity, __CitIn__.ReturnResultAnyway())
		end,
		EndFindPed = function(findHandle)
			return __CitIn__.InvokeNative(0x9615c2ad, findHandle)
		end,
		SetDrawOrigin = function(x, y, z, p3)
			return __CitIn__.InvokeNative(0xAA0008F3BBB8F416, x, y, z, p3)
		end,
		SetTextProportional = function(p0)
			return __CitIn__.InvokeNative(0x038C1F517D7FDCF8, p0)
		end,
		SetTextDropshadow = function(distance, r, g, b, a)
			return __CitIn__.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
		end,
		SetTextDropshadow = function(distance, r, g, b, a)
			return __CitIn__.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
		end,
		IsDisabledControlJustReleased = function(inputGroup, control)
			return __CitIn__.InvokeNative(0x305C8DCD79DA8B0F, inputGroup, control)
		end,
		SetTextEdge = function(p0,r,g,b,a)
			return __CitIn__.InvokeNative(0x441603240D202FA6, p0,r,g,b,a)
		end,
		SetTextOutline = function()
			return __CitIn__.InvokeNative(0x2513DFB0FB8400FE)
		end,
		SetTextEntry = function(text)
			return __CitIn__.InvokeNative(0x25FBB336DF1804CB, __KentasStrings__.strings:tostring(text))
		end,
		AddTextComponentString = function(text)
			return __CitIn__.InvokeNative(0x6C188BE134E074AA, __KentasStrings__.strings:tostring(text))
		end,
		BeginTextCommandLineCount = function(text)
			return __CitIn__.InvokeNative(0x521FB041D93DD0E4, __KentasStrings__.strings:tostring(text))
		end,
		EndTextCommandGetLineCount = function(x, y)
			return __CitIn__.InvokeNative(0x9040DFB09BE75706, x, y)
		end,
		ClearDrawOrigin = function()
			return __CitIn__.InvokeNative(0xFF0B610F6BE0D7AF)
		end,
		GetClosestVehicle = function(x, y, z, radius, modelHash, flags)
			return __CitIn__.InvokeNative(0xF73EB622C4F1689B, x, y, z, radius, __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(modelHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), flags, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetGameplayCamRelativeHeading = function()
			return __CitIn__.InvokeNative(0x743607648ADD4587, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetGameplayCamRelativePitch = function()
			return __CitIn__.InvokeNative(0x3A6867B4845BEDA2, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		TaskCombatPed = function(ped, targetPed, p2, p3)
			return __CitIn__.InvokeNative(0xF166E48407BAC484, ped, targetPed, p2, p3)
		end,
		IsPedDeadOrDying = function(ped, p1)
			return __CitIn__.InvokeNative(0x3317DEDB88C95038, ped, p1, __CitIn__.ReturnResultAnyway())
		end,
		TaskSmartFleeCoord = function(ped, x, y, z, distance, time, p6, p7)
			return __CitIn__.InvokeNative(0x94587F17E9C365D5, ped, x, y, z, distance, time, p6, p7)
		end,
		SetPedCombatAbility = function(ped, p1)
			return __CitIn__.InvokeNative(0xC7622C0D36B2FDA8, ped, p1)
		end,
		SetPedCombatMovement = function(ped, combatMovement)
			return __CitIn__.InvokeNative(0x4D9CA1009AFBD057, ped, combatMovement)
		end,
		SetCombatFloat = function(ped, combatType, p2)
			return __CitIn__.InvokeNative(0xFF41B4B141ED981C, ped, combatType, p2)
		end,
		SetPedAccuracy = function(ped, accuracy)
			return __CitIn__.InvokeNative(0x7AEFB85C1D49DEB6, ped, accuracy, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetPedFiringPattern = function(ped, patternHash)
			return __CitIn__.InvokeNative(0x9AC577F5A12AD8A9, ped, __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(patternHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()))
		end,
		GetClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
			return __CitIn__.InvokeNative(0xFF071FB798B803B0, x, y, z, __CitIn__.PointerValueVector(), __CitIn__.PointerValueFloat(), nodeType, p6, p7, __CitIn__.ReturnResultAnyway())
		end,
		CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
			return __CitIn__.InvokeNative(0x7DD959874C1FD534, vehicle, pedType, __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(modelHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), seat, isNetwork, netMissionEntity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		TaskVehicleDriveToCoordLongrange = function(ped, vehicle, x, y, z, speed, driveMode, stopRange)
			return __CitIn__.InvokeNative(0x158BB33F920D360C, ped, vehicle, x, y, z, speed, driveMode, stopRange)
		end,
		SetVehicleEngineOn = function(vehicle, value, instantly)
			return __CitIn__.InvokeNative(0x2497C4717C8B881E, vehicle, value, instantly)
		end,
		TriggerSiren = function(vehicle)
			return __CitIn__.InvokeNative(0x66C3FB05206041BA, vehicle)
		end,
		SetVehicleSiren = function(vehicle, bool)
			return __CitIn__.InvokeNative(0xF4924635A19EB37D, vehicle, bool)
		end,
		SetPedMaxTimeUnderwater = function(ped, value)
			return __CitIn__.InvokeNative(0x6BA428C528D9E522, ped, value)
		end,
		GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
			return __CitIn__.InvokeNative(0x17C07FC640E86B4E, ped, boneId, offsetX, offsetY, offsetZ, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, unknown)
			return __CitIn__.InvokeNative(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, unknown, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ)
			return __CitIn__.InvokeNative(0x34E82F05DF2974F5, worldX, worldY, worldZ, __CitIn__.PointerValueFloat(), __CitIn__.PointerValueFloat(), __CitIn__.ReturnResultAnyway())
		end,
		IsEntityDead = function(entity)
			return __CitIn__.InvokeNative(0x5F9532F3B5CC2551, entity, __CitIn__.ReturnResultAnyway())
		end,
		IsEntityVisible = function(entity)
			return __CitIn__.InvokeNative(0x47D6F43D77935C75, entity, __CitIn__.ReturnResultAnyway())
		end,
		IsPlayerFreeAiming = function(entity)
			return __CitIn__.InvokeNative(0x2E397FD2ECD37C87, entity, __CitIn__.ReturnResultAnyway())
		end,
		HasEntityClearLosToEntity = function(entity1, entity2, traceType)
			return __CitIn__.InvokeNative(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, __CitIn__.ReturnResultAnyway())
		end,
		ShakeGameplayCam = function(p1, p2)
			return __CitIn__.InvokeNative(0xFD55E49555E017CF, __KentasStrings__.strings:tostring(p1), p2, __CitIn__.ReturnResultAnyway())
		end,
		SetGameplayCamRelativePitch = function(p1, p2)
			return __CitIn__.InvokeNative(0x6D0858B8EDFD2B7D, p1, p2)
			
		end,
		IsPedShooting = function(ped)
			return __CitIn__.InvokeNative(0x34616828CD07F1A1, ped, __CitIn__.ReturnResultAnyway())
		end,
		IsEntityOnScreen = function(entity)
			return __CitIn__.InvokeNative(0xE659E47AF827484B, entity, __CitIn__.ReturnResultAnyway())
		end,
		FindFirstPed = function(outEntity)
			return __CitIn__.InvokeNative(0xfb012961, __CitIn__.PointerValueIntInitialized(outEntity), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		FindNextPed = function(findHandle, outEntity)
			return __CitIn__.InvokeNative(0xab09b548, findHandle, __CitIn__.PointerValueIntInitialized(outEntity), __CitIn__.ReturnResultAnyway())
		end,
		NetworkIsInSession = function()
			return __CitIn__.InvokeNative(0xCA97246103B63917, __CitIn__.ReturnResultAnyway())
		end,
		SetTextDropShadow = function(distance, r, g, b, a)
			return __CitIn__.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
		end,
		GetPedPropIndex = function(ped, componentId)
			return __CitIn__.InvokeNative(0x898CC20EA75BACD8, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedPropTextureIndex = function(ped, componentId)
			return __CitIn__.InvokeNative(0xE131A28626F81AB2, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedDrawableVariation = function(ped, componentId)
			return __CitIn__.InvokeNative(0x898CC20EA75BACD8, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedPaletteVariation = function(ped, componentId)
			return __CitIn__.InvokeNative(0xE3DD5F2A84B42281, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedTextureVariation = function(ped, componentId)
			return __CitIn__.InvokeNative(0x04A355E041E004E6, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DrawLightWithRangeAndShadow = function(x, y, z, r, g, b, range, intensity, shadow)
			return __CitIn__.InvokeNative(0xF49E9A9716A04595, x, y, z, r, g, b, range, intensity, shadow)
		end,
		IsControlJustPressed = function(padIndex, control)
			return __CitIn__.InvokeNative(0x580417101DDB492F, padIndex, control, __CitIn__.ReturnResultAnyway())
		end,
		IsControlJustPressed = function(padIndex, control)
			return __CitIn__.InvokeNative(0xF3A21BCD95725A4A, padIndex, control, __CitIn__.ReturnResultAnyway())
		end,
		GetNumResourceMetadata = function(resourceName, metadataKey)
			return __CitIn__.InvokeNative(0x776E864, __KentasStrings__.strings:tostring(resourceName), __KentasStrings__.strings:tostring(metadataKey), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetResourceMetadata = function(resourceName, metadataKey, index)
			return __CitIn__.InvokeNative(0x964BAB1D, __KentasStrings__.strings:tostring(resourceName), metadataKey, index, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		LoadResourceFile = function(resourceName, fileName)
			return __CitIn__.InvokeNative(0x76A9EE1F, __KentasStrings__.strings:tostring(resourceName), __KentasStrings__.strings:tostring(fileName), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetCurrentServerEndpoint = function()
			return __CitIn__.InvokeNative(0xEA11BFBA, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetCurrentResourceName = function()
			return __CitIn__.InvokeNative(0xE5E9EBBB, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		
		SetVehicleWheelieState = function(vehicle, state)
			return __CitIn__.InvokeNative(0xEAB8DB65, vehicle, state)
		end,
		GetHashKey = function(string)
			return __CitIn__.InvokeNative(0xD24D37CC275948CC, __KentasStrings__.strings:tostring(string), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetVehicleTyresCanBurst = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0xEB9DC3C7D8596C46, vehicle, toggle, __CitIn__.ReturnResultAnyway())
		end,
		SetVehicleNumberPlateTextIndex = function(vehicle, plateIndex)
			return __CitIn__.InvokeNative(0x9088EB5A43FFB0A1, vehicle, plateIndex, __CitIn__.ReturnResultAnyway())
		end,
		GetCurrentPedWeapon = function(ped, p2)
			return __CitIn__.InvokeNative(0x3A87E44BB9A01D54, ped, __CitIn__.PointerValueInt(), p2, __CitIn__.ReturnResultAnyway())
		end,
		GetWeaponClipSize = function(p1)
			return __CitIn__.InvokeNative(0x583BE370B1EC6EB4, p1, __CitIn__.ResultAsInteger())
		end,
		SetPedAmmo = function(ped, weaponHash, ammo)
			return __CitIn__.InvokeNative(0x14E56BC5B5DB6A19, ped, weaponHash, ammo, __CitIn__.ResultAsInteger())
		end,
		RemoveAllPedWeapons = function(ped, p1)
			return __CitIn__.InvokeNative(0xF25DF915FA38C5F3, ped, p1, __CitIn__.ResultAsInteger())
		end,
		RemoveWeaponFromPed = function(ped, weaponHash)
			return __CitIn__.InvokeNative(0xF25DF915FA38C5F3, ped, weaponHash)
		end,
		SetArtificialLightsState = function(state)
			return __CitIn__.InvokeNative(0x1268615ACE24D504, state)
		end,
		SetPedArmour = function(ped, amount)
			return __CitIn__.InvokeNative(0xCEA04D83135264CC, ped, amount, __CitIn__.ResultAsInteger())
		end,
		HasAnimDictLoaded = function(animDict)
			return __CitIn__.InvokeNative(0xD031A9162D01088C, animDict, __CitIn__.ResultAsInteger())
		end,
		RequestAnimDict = function(animDict)
			return __CitIn__.InvokeNative(0xD3BD40951412FEF6, animDict)
		end,
		SetEntityProofs = function(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
			return __CitIn__.InvokeNative(0x4899CB088EDF59B8, entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
		end,
		SetFollowPedCamViewMode = function(viewMode)
			return __CitIn__.InvokeNative(0x5A4F9EDF1673F704, viewMode)
		end,
		DisableFirstPersonCamThisFrame = function()
			return __CitIn__.InvokeNative(0xDE2EF5DA284CC8DF, __CitIn__.ReturnResultAnyway())
		end,
		SetFollowVehicleCamViewMode = function(viewMode)
			return __CitIn__.InvokeNative(0xAC253D7842768F48, viewMode)
		end,
		StatSetInt = function(statName, value, save)
			return __CitIn__.InvokeNative(0xB3271D7AB655B441,statName, value, save, __CitIn__.ReturnResultAnyway())
		end,
		ReplaceHudColourWithRgba = function(hudColorIndex, r, g, b, a)
			return __CitIn__.InvokeNative(0xF314CF4F0211894E, hudColorIndex, r, g, b, a)
		end,
		IsPedRagdoll = function(ped)
			return __CitIn__.InvokeNative(0x47E4E977581C5B55, ped)
		end,
		AnimpostfxStop = function(effectName)
			return __CitIn__.InvokeNative(0x068E835A1D0DC0E3, effectName)
		end,
		GetEntityVelocity = function(entity)
			return __CitIn__.InvokeNative(0x4805D2B1D8CF94A9, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetPoliceIgnorePlayer = function(player, toggle)
			return __CitIn__.InvokeNative(0x32C62AA929C2DA6A, player, toggle)
		end,
		SetPedCanRagdollFromPlayerImpact = function(ped, toggle)
			return __CitIn__.InvokeNative(0xDF993EE5E90ABA25, ped, toggle)
		end,
		DrawLine = function(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
			return __CitIn__.InvokeNative(0x6B7256074AE34680, x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
		end,
		SetEntityLocallyVisible = function(entity)
			return __CitIn__.InvokeNative(0x241E289B5C059EDC, entity)
		end,
		SetWeatherTypePersist = function(weatherType)
			return __CitIn__.InvokeNative(0x704983DF373B198F, weatherType)
		end,
		SetWeatherTypeNow = function(weatherType)
			return __CitIn__.InvokeNative(0x29B487C359E19889, weatherType)
		end,
		SetOverrideWeather = function(weatherType)
			return __CitIn__.InvokeNative(0xA43D5C6FE51ADBEF, weatherType)
		end,
		SetTimecycleModifier = function(modifierName)
			return __CitIn__.InvokeNative(0x2C933ABF17A1DF41, modifierName)
		end,
		NetworkIsPlayerTalking = function(weatherType)
			return __CitIn__.InvokeNative(0x031E11F3D447647E, weatherType)
		end,
		GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, useZ)
			return __CitIn__.InvokeNative(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, useZ, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetEntitySpeed = function(entity)
			return __CitIn__.InvokeNative(0xD5037BA82E12416F, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		IsPedAPlayer = function(ped)
			return __CitIn__.InvokeNative(0x12534C348C6CB68B, ped, __CitIn__.ReturnResultAnyway())
		end,
		GetEntityMaxHealth = function(entity)
			return __CitIn__.InvokeNative(0x15D757606D170C3C, entity)
		end,
		IsControlPressed = function(padIndex, control)
			return __CitIn__.InvokeNative(0xF3A21BCD95725A4A, padIndex, control)
		end,
		GetFinalRenderedCamCoord = function()
			return __CitIn__.InvokeNative(0xA200EB1EE790F448, __CitIn__.ResultAsVector())
		end,
		GetPedArmour = function(ped)
			return __CitIn__.InvokeNative(0x9483AF821605B1D8, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		ClearPlayerWantedLevel = function(player)
			return __CitIn__.InvokeNative(0xB302540597885499, player)
		end,
		GetEntityPlayerIsFreeAimingAt = function(player, entity)
			return __CitIn__.InvokeNative(0x2975C866E6713290, player, __CitIn__.PointerValueIntInitialized(entity), __CitIn__.ReturnResultAnyway())
		end,
		DestroyDui = function(duiObject)
			return __CitIn__.InvokeNative(0xA085CB10, duiObject)
		end,
		IsPedReloading = function(ped)
			return __CitIn__.InvokeNative(0x24B100C68C645951, ped)
		end,


		RequestIpl = function(iplName)
			return __CitIn__.InvokeNative(0x41B4893843BBDB74, iplName)
		end,
		GetInteriorAtCoords = function(x, y, z)
			return __CitIn__.InvokeNative(0xB0F7F8663821D9C3, x, y, z, __CitIn__.ReturnResultAnyway())
		end,
		IsValidInterior = function(iplName)
			return __CitIn__.InvokeNative(0x26B0E73D7EAAF4D3, __CitIn__.PointerValueIntInitialized(interior), __CitIn__.ReturnResultAnyway())
		end,
		PinInteriorInMemory = function(interior)
			return PinInteriorInMemory(interior)
		end,
		ActivateInteriorEntitySet = function(interior, entitySetName)
			return ActivateInteriorEntitySet(interior, entitySetName)
		end,
		SetInteriorEntitySetColor = function(interior, entitySetName, colour)
			return SetInteriorEntitySetColor(interior, entitySetName, colour)
		end,

		RefreshInterior = function(interiorID)
			return RefreshInterior(interiorID, __CitIn__.ReturnResultAnyway())
		end,


		ApplyForceToEntity = function(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
			return __CitIn__.InvokeNative(0xC5F68BE9613E2D18, entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
		end,
		TaskVehicleDriveWander = function(ped, veh, p1, p2)
			return __CitIn__.InvokeNative(0x480142959D337D00, ped, veh, p1, p2)
		end,
		TaskWanderStandard = function(ped, p1, p2)
			return __CitIn__.InvokeNative(0xBB9CE077274F6A1B, ped, p1, p2)
		end,
		SetVehicleReduceGrip = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0x222FF6A823D122E2, vehicle, toggle)
		end,
		SetBlipColour = function(blip, color)
			return __CitIn__.InvokeNative(0x03D7FB09E75D6B7E, blip, color)
		end,
		SetTimeScale = function(timeScale)
			return __CitIn__.InvokeNative(0x1D408577D440E81E, timeScale)
		end,
		GetCurrentPedWeaponEntityIndex = function(ped)
			return __CitIn__.InvokeNative(0x3B390A939AF0B5FC, ped)
		end,
		IsAimCamActive = function()
			return __CitIn__.InvokeNative(0x68EDDA28A5976D07)
		end,
		SetGameplayCamRelativeRotation = function(roll, pitch, yaw)
			return __CitIn__.InvokeNative(0x48608C3464F58AB4, roll, pitch, yaw)
		end,
		DisableControlAction = function(padIndex, control, disable)
			return __CitIn__.InvokeNative(0xFE99B66D079CF6BC, padIndex, control, disable)
		end,
		SetMouseCursorActiveThisFrame = function()
			return __CitIn__.InvokeNative(0xAAE7CE1D63167423)
		end,
		SetFocusPosAndVel = function(x, y, z, offsetX, offsetY, offsetZ)
			return __CitIn__.InvokeNative(0xBB7454BAFF08FE25, x, y, z, offsetX, offsetY, offsetZ)
		end,
		SetCamFov = function(cam, fieldOfView)
			return __CitIn__.InvokeNative(0xB13C14F66A00D047, cam, fieldOfView)
		end,
		GetCamMatrix = function(camera)
			return __CitIn__.InvokeNative(0x8F57A89D, camera, __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector())
		end,
		GetAspectRatio = function(b)
			return __CitIn__.InvokeNative(0xF1307EF624A80D87, b, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		UseParticleFxAsset = function(name)
			return __CitIn__.InvokeNative(0x6C38AF3693A69A91, __KentasStrings__.strings:tostring(name))
		end,
		IsEntityAPed = function(entity)
			return __CitIn__.InvokeNative(0x524AC5ECEA15343E, entity, __CitIn__.ReturnResultAnyway())
		end,
		SetVehicleUndriveable = function(vehicle, toggle)
   			 return __CitIn__.InvokeNative(0x8ABA6AF54B942B95, vehicle, toggle)
 		end,
		RestorePlayerStamina = function(player, p1) 
			return __CitIn__.InvokeNative(0xA352C1B864CAFD33, player, p1) 
		end,
		IsEntityInAir = function(entity) 
			return __CitIn__.InvokeNative(0x886E37EC497200B6, entity, __CitIn__.ReturnResultAnyway()) 
		end,
		SetPedToRagdoll = function(ped, time1, time2, ragdollType, p4, p5, p6) 
			return __CitIn__.InvokeNative(0xAE99FB955581844A, ped, time1, time2, ragdollType, p4, p5, p6, __CitIn__.ReturnResultAnyway()) 
		end,
		IsEntityAVehicle = function(entity) 
			return __CitIn__.InvokeNative(0x6AC7003FA6E5575E, entity, __CitIn__.ReturnResultAnyway()) 
		end,
		IsPedInVehicle = function(ped, vehicle, atGetIn) 
			return __CitIn__.InvokeNative(0xA3EE4A07279BB9DB, ped, vehicle, atGetIn, __CitIn__.ReturnResultAnyway()) 
		end,
		NetworkRegisterEntityAsNetworked = function(entity) 
			return __CitIn__.InvokeNative(0x06FAACD625D80CAA, entity) 
		end,
		NetworkSetNetworkIdDynamic = function(netID, toggle) 
			return __CitIn__.InvokeNative(0x2B1813ABA29016C5, netID, toggle) 
		end,
		SetNetworkIdCanMigrate = function(netId, toggle) 
			return __CitIn__.InvokeNative(0x299EEB23175895FC, netId, toggle)
		end,
		NetToPed = function(netHandle) 
			return __CitIn__.InvokeNative(0xBDCD95FC216A8B3E, netHandle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetPedCanSwitchWeapon = function(ped, toggle) 
			return __CitIn__.InvokeNative(0xED7F7EFE9FABF340, ped, toggle) 
		end,
		SetVehicleDoorsLocked = function(vehicle, doorLockStatus) 
			return __CitIn__.InvokeNative(0xB664292EAECF7FA6, vehicle, doorLockStatus) 
		end,
		SetPedRandomComponentVariation = function(ped, p1) 
			return __CitIn__.InvokeNative(0xC8A9481A01E63C28, ped, p1) 
		end,
		SetPedRandomProps = function(ped) 
			return __CitIn__.InvokeNative(0xC44AA05345C992C6, ped) 
		end,
		StartEntityFire = function(entity)
			return __CitIn__.InvokeNative(0xF6A9D9708F6F23DF, entity)
		end,
		SetPedConfigFlag = function(entity, flagId, value)
			return __CitIn__.InvokeNative(0x1913FE4CBF41C463, entity, flagId, value, __CitIn__.ReturnResultAnyway()) 
		end,
		TaskJump = function(ped, unused)
			return __CitIn__.InvokeNative(0x0AE4086104E067B1, ped, unused)
		end,
		SetPedCapsule = function(ped, value)
			return __CitIn__.InvokeNative(0x364DF566EC833DE2, ped, value)
		end,
		GivePlayerRagdollControl = function(player, toggle)
			return __CitIn__.InvokeNative(0x3C49C870E66F0A28, player, toggle)
		end,
		GiveDelayedWeaponToPed = function(ped, weaponHash, ammoCount, equipNow)
			return __CitIn__.InvokeNative(0xB282DC6EBD803C75, ped, weaponHash, ammoCount, equipNow)
		end,
		TaskGoStraightToCoord = function(ped, x, y, z,speed, timeout, targetHeading, distanceToSlide)
			return __CitIn__.InvokeNative(0xD76B57B44F1E6F8B, ped, x, y, z,speed, timeout, targetHeading, distanceToSlide)
		end,
		SetExtraTimecycleModifier = function(modifierName)
			return __CitIn__.InvokeNative(0x5096FD9CCB49056D, modifierName)
		end,
		SetVehicleDoorBroken = function(vehicle, doorIndex, deleteDoor)
			return __CitIn__.InvokeNative(0xD4D4F6A4AB575A33, vehicle, doorIndex, deleteDoor)
		end,
		ClonePed = function(ped, heading, isNetwork, netMissionEntity)
            return __CitIn__.InvokeNative(0xEF29A16337FACADB, ped, heading, isNetwork, netMissionEntity, __CitIn__.ResultAsInteger())
        end,
		ClonePedToTarget = function(ped, targetPed)
            return __CitIn__.InvokeNative(0xE952D6431689AD9A, ped, targetPed)
        end,
		SetNewWaypoint = function(x, y)
			return __CitIn__.InvokeNative(0xFE43368D2AA4F2FC, x, y)
		end,
     	ExecuteCommand = function(commandString)
            return __CitIn__.InvokeNative(0x561C060B, __KentasStrings__.strings:tostring(commandString))
        end,
  	 	AttachCamToEntity = function(cam, entity, xOffset, yOffset, zOffset, isRelative)
            return __CitIn__.InvokeNative(0xFEDB7D269E8C60E3, cam, entity, xOffset, yOffset, zOffset, isRelative)
        end,
		DetachCam = function(cam)
            return __CitIn__.InvokeNative(0xA2FABBE87F4BAD82, cam)
        end,
		SetVehicleTyreBurst = function(vehicle, index, onRim, p3)
			return __CitIn__.InvokeNative(0xEC6A202EE4960385, vehicle, index, onRim, p3)
		end,
		SmashVehicleWindow = function(vehicle, index)
			return __CitIn__.InvokeNative(0x9E5B5E4D2CCD2259, vehicle, index)
		end,
		StartVehicleAlarm = function(vehicle)
			return __CitIn__.InvokeNative(0xB8FF7AB45305C345, vehicle)
		end,
		DetachVehicleWindscreen = function(vehicle)
			return __CitIn__.InvokeNative(0x6D645D59FB5F5AD3, vehicle)
		end,
		SetVehicleDoorOpen = function(vehicle, index, loose, openInstantly)
			return __CitIn__.InvokeNative(0x7C65DAC73C35C862, vehicle, index, loose, openInstantly)
		end,
		SetVehicleDoorShut = function(vehicle, doorIndex, closeInstantly)
			return __CitIn__.InvokeNative(0x93D9BD300D7789E5, vehicle, doorIndex, closeInstantly)
		end,
		SetNetworkIdExistsOnAllMachines = function(netId, toggle)
			return __CitIn__.InvokeNative(0xE05E81A888FA63C8, netId, toggle)
		end,
		SetRelationshipBetweenGroups = function(relationship, group1, group2)
			return __CitIn__.InvokeNative(0xBF25EB89375A37AD, relationship, group1, group2)
		end,
		SetPedCanSwitchWeapon = function(ped, toggle)
			return __CitIn__.InvokeNative(0xED7F7EFE9FABF340, ped, toggle)
		end,
		SetVehicleAlarm = function(vehicle, state)
			return __CitIn__.InvokeNative(0xCDE5E70C1DDB954C, vehicle, state)
		end,
		SetVehicleNeedsToBeHotwired = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0xFBA550EA44404EE6, vehicle, toggle)
		end,
		TaskCombatHatedTargetsInArea = function(ped, x, y, z,radius, p5)
			return __CitIn__.InvokeNative(0x4CF5F55DAC3280A0, ped, x, y, z,radius, p5)
		end,
		SetVehicleCustomPrimaryColour = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0x7141766F91D15BEA, vehicle, r, g, b)
		end,
		SetVehicleCustomSecondaryColour = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0x36CED73BFED89754, vehicle, r, g, b)
		end,
		RemoveReplaceTexture = function(origTxd, origTxn)
			return __CitIn__.InvokeNative(0xA896B20A, origTxd, origTxn)
		end,
		AddReplaceTexture = function(origTxd, origTxn,newTxd, newTxn)
			return __CitIn__.InvokeNative(0xA66F8F75, origTxd, origTxn, newTxd, newTxn)
		end,
		ClearAllHelpMessages = function()
			return __CitIn__.InvokeNative(0x6178F68A87A4D3A0)
		end,

		TaskVehicleChase = function(driver, targetEnt)
			return __CitIn__.InvokeNative(0x3C08A8E30363B353, driver, targetEnt)
		end,
		ResetEntityAlpha = function(entity)
			return __CitIn__.InvokeNative(0x9B1E824FFBB7027A, entity)
		end,
		SetForceVehicleTrails = function(toggle)
			return __CitIn__.InvokeNative(0x4CC7F0FEA5283FE0, toggle)
		end,
		StatSetInt = function(statName, value, save)
			return __CitIn__.InvokeNative(0xB3271D7AB655B441, statName, value, save)
		end,
		SetTextRightJustify = function(bool)
			return __CitIn__.InvokeNative(0x6B3C4650BC8BEE47, bool)
		end,
		SetVehicleModColor_1 = function(vehicle, paintType, color, p3)
			return __CitIn__.InvokeNative(0x43FEB945EE7F85B8, vehicle, paintType, color, p3)
		end,
		SetVehicleModColor_2 = function(vehicle, paintType, color)
			return __CitIn__.InvokeNative(0x43FEB945EE7F85B8, vehicle, paintType, color)
		end,
		SetVehicleTyreSmokeColor = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0xB5BA80F839791C0F, vehicle, r, g, b)
		end,
		SetForcePedFootstepsTracks = function(toggle)
			return __CitIn__.InvokeNative(0xAEEDAD1420C65CC0, toggle)
		end,
		ClearPedProp = function(ped, index)
			return __CitIn__.InvokeNative(0x0943E5B8E078E76E, ped, index)
		end,
		PlaySoundFromCoord = function(soundId, audioName, x, y, z, audioRef, isNetwork, range, p8)
			return __CitIn__.InvokeNative(0x8D8686B622B88120, soundId, __KentasStrings__.strings:tostring(audioName), x, y, z, __KentasStrings__.strings:tostring(audioRef), isNetwork, range, p8)
		end,
		PlaySound = function(soundId, audioName, audioRef, p3)
			return __CitIn__.InvokeNative(0x7FF4944CC209192D, soundId, __KentasStrings__.strings:tostring(audioName), __KentasStrings__.strings:tostring(audioRef), p3)
		end,
		IsPedWalking = function(player)
			return __CitIn__.InvokeNative(0xDE4C184B2B9B071A, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedSwimming = function(player)
			return __CitIn__.InvokeNative(0x9DE327631295B4C2, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedJumping = function(player)
			return __CitIn__.InvokeNative(0xCEDABC5900A0BF97, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedFalling = function(player)
			return __CitIn__.InvokeNative(0xFB92A102F1C4DFA3, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedRunning = function(player)
			return __CitIn__.InvokeNative(0xC5286FFC176F28A2, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedStill = function(player)
			return __CitIn__.InvokeNative(0xAC29253EEF8F0180, player, __CitIn__.ReturnResultAnyway())
		end,
		GetPedType = function(player)
			return __CitIn__.InvokeNative(0xFF059E1E4C01E63C, player, __CitIn__.ResultAsInteger())
		end,
		GetEntityType = function(entity)
			return __CitIn__.InvokeNative(0xFF059E1E4C01E63C, entity, __CitIn__.ResultAsInteger())
		end,
		SetEntityHeading = function(entity1, entity2)
			return __CitIn__.InvokeNative(0x8E2530AA8ADA980E, entity1, entity2)
		end,
		ClearPedWetness = function(ped)
			return __CitIn__.InvokeNative(0x9C720776DAA43E7E, ped)
		end,
		NetworkOverrideClockTime = function(h, m, s)
			return __CitIn__.InvokeNative(0xE679E3E06E363892, h, m, s)
		end,
		GetLocalTime = function()
			return __CitIn__.InvokeNative(0x50C7A99057A69748, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetUtcTime = function()
			return __CitIn__.InvokeNative(0x8117E09A19EEF4D3, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		SetClockTime = function(h, m, s)
			return __CitIn__.InvokeNative(0x47C3B5848C3E45D8, h, m, s)
		end,
		SetWeatherTypePersist = function(type)
			return __CitIn__.InvokeNative(0x704983DF373B198F, type)
		end,
		mathsplit = function(math, split) 
			local lines = {} 
			for g in math:gmatch(split) do 
				lines[#lines + 1] = g 
			end
			return lines 
		end,
}
Kentas.F.Tables.RotToQuat = function(rot)
	local pitch = __KentasStrings__.strings:rad(rot.x)
	local roll = __KentasStrings__.strings:rad(rot.y)
	local yaw = __KentasStrings__.strings:rad(rot.z)
	local cy = __KentasStrings__.strings:cos(yaw * 0.5)
	local sy = __KentasStrings__.strings:sin(yaw * 0.5)
	local cr = __KentasStrings__.strings:cos(roll * 0.5)
	local sr = __KentasStrings__.strings:sin(roll * 0.5)
	local cp = __KentasStrings__.strings:cos(pitch * 0.5)
	local sp = __KentasStrings__.strings:sin(pitch * 0.5)
	return quat(cy * cr * cp + sy * sr * sp, cy * sp * cr - sy * cp * sr, cy * cp * sr + sy * sp * cr, sy * cr * cp - cy * sr * sp)
end
-- warv bypass
Kentas.F.Tables.AddTextEntry('WATAFAKMEN', '~a~')

Kentas.F.Tables.Functions = {
	ParticleSizel = 1.0,
	CheckFov = function(ped)
		local coords = Kentas.F.Tables.GetEntityCoords(ped)
		local _, sx, sy = Kentas.F.Tables.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
		local fovcheck = (Kentas.F.Sliders['aimbot-fov'].value / 1000)
		if ((((0.5 - sx)^2) / (fovcheck^2) + ((0.5-sy)^2) / ((fovcheck*1.8)^2))*4) <= 1 then
			return true
		else
			return false
		end
	end,
	AdvancedRot = function(ncoords)
		return __KentasStrings__.strings:vector3(math.deg(math.atan2(ncoords.z, #vector2(ncoords.x, ncoords.y))), 0.0, -math.deg(math.atan2(ncoords.x, ncoords.y)))
	end,
	BoneThruWall = function(vec, factor)
		local c = Kentas.F.Tables.GetFinalRenderedCamCoord()
		factor = (not factor or factor >= 1) and 0.83 or factor
		return vector3(c.x + (vec.x - c.x) * factor, c.y + (vec.y - c.y) * factor, c.z + (vec.z - c.z) * factor)
	end,
	GetMinVisualDistance = function(pos)
		local cam = Kentas.F.Tables.GetFinalRenderedCamCoord()
		local hray, hit, coords, surfaceNormal, ent = Kentas.F.Tables.GetShapeTestResult(Kentas.F.Tables.StartShapeTestRay(cam.x, cam.y, cam.z, pos.x, pos.y, pos.z, -1, Kentas.F.Tables.PlayerPedId(), 0))
		if hit then
			return #(cam - coords) / #(cam - pos) * 0.9
		end
	end,
	RayCastGCam = function(distance)
		local cameraCoord = Kentas.F.Tables.GetGameplayCamCoord(); local direction = Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetGameplayCamRot(0)); local dx, dy, dz = cameraCoord.x + direction.x * distance, cameraCoord.y + direction.y * distance, cameraCoord.z + direction.z * distance; local a, b, c, d, e = Kentas.F.Tables.GetShapeTestResult(Kentas.F.Tables.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, dx, dy, dz, -1, Kentas.F.Tables.PlayerPedId(), 1)); return c.x ~= 0 and c or vector3(dx, dy, dz), Kentas.F.Tables.IsEntityAPed(e) and e or nil
	end,
	WaterMark = function(alpha)
		timer = timer + 1
		if timer > 5 then 
			Kentas.F.Tables.fps = nil
			timer = 0
		end
		local nKDX, nKDY = Kentas.F.Checks.KeyboardDragX, Kentas.F.Checks.KeyboardDragY
		--if not Kentas.F.Tables.fps then 
			Kentas.F.Tables.fps = __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.0f", 1.0 / Kentas.F.Tables.GetFrameTime()))
		--end
	
		Kentas.F.Tables.DrawRect_U(0.9+nKDX, 0.03+0.014+nKDY, 0.18, 0.025, 19, 21, 22, alpha)
		Kentas.F.Tables.DrawRect_U(0.9+nKDX, 0.0315+nKDY, 0.18, 0.0015, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, alpha)

		if Kentas.F.NNstyle == 'Kentas' then
			nwatermark = '~c~[<FONT COLOR="#6464ff">Ken~w~tas~c~] ~w~| '
		elseif Kentas.F.NNstyle == 'Kentas' then
			nwatermark = '~c~[<FONT COLOR="#52FF00">Ken~w~tas~c~] ~w~| '
		end

		local pname = Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.PlayerId())
		local pid = Kentas.F.Tables.GetPlayerServerId(Kentas.F.Tables.PlayerId())
		local puid = Kentas.F.Tables.GetRedUid()
		local __string__ = nwatermark..pname.. ' | ID: ' ..pid.. ' | UID: ' ..puid.. ' | FPS: ' ..Kentas.F.Tables.fps
		Kentas.F.Tables.Functions.DrawTxt('', 0.811+nKDX, 0.03+nKDY, 0.38, 0.3, {r = 255, g = 255, b = 255, a = alpha}, false)
		Kentas.F.Tables.Functions.DrawTxt(__string__, 0.811+nKDX, 0.0325+nKDY, 0.38, 0.3, {r = 255, g = 255, b = 255, a = alpha}, false)
		local y = 0.072+nKDY
		local y2 = 0.0615+nKDY
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local pPed = Kentas.F.Tables.GetPlayerPed(v)
		--for pPed in Kentas.F.Tables.Functions.EnumeratePeds() do
			if pPed ~= Kentas.F.Tables.PlayerPedId() then
				local coords = Kentas.F.Tables.GetEntityCoords(pPed)
	
				local ground, groundPos = Kentas.F.Tables.GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, 0)
				if ground and (groundPos + 3.0 < coords.z or coords.z < groundPos - 2.0) and #(coords - Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())) <= 5.0 or ground and (groundPos - 3.0 < coords.z or coords.z < groundPos - 2.0) and #(coords - Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())) <= 5.0 then
					Kentas.F.Tables.DrawRect_U(0.9+nKDX, y, 0.18, 0.025, 19, 21, 22, alpha)
					Kentas.F.Tables.DrawRect_U(0.9+nKDX, y-0.012, 0.18, 0.0015, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, alpha)
					local ntext = "["..Kentas.F.Tables.GetPlayerServerId(v).."]"..' '..Kentas.F.Tables.GetPlayerName(v)
					Kentas.F.Tables.Functions.DrawTxt(nwatermark..ntext, 0.812+nKDX, y2, 0.38, 0.3, {r = 255, g = 255, b = 255, a = alpha}, false)
					y = y + 0.03
					y2 = y2 + 0.03
				end
			end
		end

		if Kentas.F.OpenMenu and Kentas.F.Checks['TGMouse'] and Kentas.F.Tables.Functions.CreateZone(0.9+nKDX, 0.03+nKDY, 0.18, 0.025) then
			if Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
				Kentas.F.Tables.wmmark = not Kentas.F.Tables.wmmark
			end
		end
		
		if Kentas.F.Tables.wmmark then
			if __WATERMARKALPHA__2 < 255 then
				__WATERMARKALPHA__2 = __WATERMARKALPHA__2 + 5
			end
		else
			if __WATERMARKALPHA__2 > 0 then
				__WATERMARKALPHA__2 = __WATERMARKALPHA__2 - 5
			end
		end
		
		Kentas.F.Tables.DrawRect_U(0.77+nKDX, 0.08+nKDY, 0.06, 0.1, 19, 21, 22, __WATERMARKALPHA__2)
		Kentas.F.Tables.DrawRect_U(0.77+nKDX, 0.03+nKDY, 0.06, 0.0015, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, __WATERMARKALPHA__2)
	
		Kentas.F.Tables.Functions.DrawTxt('Easter Egg\nSoon there will be \nsomething cool', 0.74+nKDX, 0.03+nKDY, 0.38, 0.3, {r = 255, g = 255, b = 255, a = __WATERMARKALPHA__2}, false)
		
	
	
		if Kentas.F.Checks['TGMouse'] then
			local c_x, c_y = Kentas.F.Tables.GetNuiCursorPosition() 
			local widht, height = Kentas.F.Tables.GetActiveScreenResolution()
			
			c_x = c_x / widht
			c_y = c_y / height 
		
			if Kentas.F.Tables.wmmark then
				if Kentas.F.Tables.Functions.CreateZone(0.77+nKDX, 0.08+nKDY, 0.06, 0.1) and Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
					_x = Kentas.F.Checks.KeyboardDragX - c_x
					_y = Kentas.F.Checks.KeyboardDragY - c_y
					Kentas.F.Tables.AlreadyDraging = true
				elseif Kentas.F.Tables.IsControlReleased(0, 24) then
					Kentas.F.Tables.AlreadyDraging = false
				end
			end
	
			if Kentas.F.Tables.Functions.CreateZone(0.9+nKDX, 0.03+nKDY, 0.18, 0.025) and Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
				_x = Kentas.F.Checks.KeyboardDragX - c_x
				_y = Kentas.F.Checks.KeyboardDragY - c_y
				Kentas.F.Tables.AlreadyDraging = true
			elseif Kentas.F.Tables.IsControlReleased(0, 24) then
				Kentas.F.Tables.AlreadyDraging = false
			end
			if Kentas.F.Tables.AlreadyDraging then
				Kentas.F.Checks.KeyboardDragX = c_x + _x
				Kentas.F.Checks.KeyboardDragY = c_y + _y
			end
		end
	
	end,
	FreecamMode = 1,
        FreecamModes = {
            "Look Around", "Teleporting", "Player Bug", 
			"Shooting", "Taze", "RPG", "Fire", "Props", "Vehicles", "Vehicles Spammer", "Ped Spawning", "Ped Spammer",
			"Ptfx Spammer", "Entity Deleter", "Freezer", "Explosions", "Shoot vehicles", "Car stealer",
        },
		PropsSpawnerMode = 1,
        PropsSpawnerModes = {
            "prop_atm_01", "prop_tree_olive_cr2", "prop_a4_sheet_03",
			"prop_byard_ramp", "prop_abat_roller_static", "p_stinger_04",
			"prop_byard_rampold", "prop_afsign_vbike", 
			"prop_jetski_ramp_01", "prop_aircon_l_02",
			"prop_air_chock_04", "prop_battery_01",
			"prop_bar_napkindisp", "prop_bar_pump_04",
			"prop_billboard_07", "prop_box_ammo07b",
        },
		VehiclesSpawnerMode = 1,
		VehiclesSpawnerModes = {
			"adder", "banshee", "nero", "nero2", "deluxo", "dominator", "bati", "ruffian", "rumpo", "Zentorno",
			"Futo", "Feltzer", "Jester", "Stinger", "Akuma", "Sandking", "blimp"
		},
		PedsSpawnerModes = {
			"a_f_m_beach_01", "a_f_m_bevhills_01", "a_f_m_bevhills_02", "a_f_m_bodybuild_01", "a_f_m_business_02", "a_f_m_downtown_01", "a_f_m_eastsa_01", "a_f_m_eastsa_02", "a_f_m_fatbla_01", "a_f_m_fatcult_01", "a_f_m_fatwhite_01", "a_f_m_ktown_01", "a_f_m_ktown_02", "a_f_m_prolhost_01", "a_f_m_salton_01", "a_f_m_skidrow_01", "a_f_m_soucent_01", "a_f_m_soucent_02", "a_f_m_soucentmc_01", "a_f_m_tourist_01", "a_f_m_tramp_01", "a_f_m_trampbeac_01", "a_f_o_genstreet_01", "a_f_o_indian_01", "a_f_o_ktown_01", "a_f_o_salton_01", "a_f_o_soucent_01", "a_f_o_soucent_02", "a_f_y_beach_01", "a_f_y_bevhills_01", "a_f_y_bevhills_02", "a_f_y_bevhills_03", "a_f_y_bevhills_04", "a_f_y_business_01", "a_f_y_business_02", "a_f_y_business_03", "a_f_y_business_04", "a_f_y_clubcust_01", "a_f_y_clubcust_02", "a_f_y_clubcust_03", "a_f_y_eastsa_01", "a_f_y_eastsa_02", "a_f_y_eastsa_03", "a_f_y_epsilon_01", "a_f_y_femaleagent", "a_f_y_fitness_01", "a_f_y_fitness_02", "a_f_y_genhot_01", "a_f_y_golfer_01", "a_f_y_hiker_01", "a_f_y_hippie_01", "a_f_y_hipster_01", "a_f_y_hipster_02", "a_f_y_hipster_03", "a_f_y_hipster_04", "a_f_y_indian_01", "a_f_y_juggalo_01", "a_f_y_runner_01", "a_f_y_rurmeth_01", "a_f_y_scdressy_01", "a_f_y_skater_01", "a_f_y_soucent_01", "a_f_y_soucent_02", "a_f_y_soucent_03",  "a_f_y_tennis_01", "a_f_y_topless_01", "a_f_y_tourist_01", "a_f_y_tourist_02", "a_f_y_yoga_01", "a_f_y_gencaspat_01",
			"a_m_m_acult_01", "a_m_m_afriamer_01", "a_m_m_beach_01", "a_m_m_beach_02", "a_m_m_bevhills_01", "a_m_m_bevhills_02", "a_m_m_business_01", "a_m_m_eastsa_01", "a_m_m_eastsa_02", "a_m_m_farmer_01", "a_m_m_fatlatin_01", "a_m_m_genfat_01", "a_m_m_genfat_02", "a_m_m_golfer_01", "a_m_m_hasjew_01", "a_m_m_hillbilly_01", "a_m_m_hillbilly_02", "a_m_m_indian_01", "a_m_m_ktown_01", "a_m_m_malibu_01", "a_m_m_mexcntry_01", "a_m_m_mexlabor_01", "a_m_m_og_boss_01", "a_m_m_paparazzi_01", "a_m_m_polynesian_01", "a_m_m_prolhost_01", "a_m_m_rurmeth_01", "a_m_m_salton_01", "a_m_m_salton_02", "a_m_m_salton_03", "a_m_m_salton_04", "a_m_m_skater_01", "a_m_m_skidrow_01", "a_m_m_socenlat_01", "a_m_m_soucent_01", "a_m_m_soucent_02", "a_m_m_soucent_03", "a_m_m_soucent_04", "a_m_m_stlat_02", "a_m_m_tennis_01", "a_m_m_tourist_01", "a_m_m_tramp_01", "a_m_m_trampbeac_01", "a_m_m_tranvest_01", "a_m_m_tranvest_02", "a_m_o_acult_01", "a_m_o_acult_02", "a_m_o_beach_01", "a_m_o_genstreet_01", "a_m_o_ktown_01", "a_m_o_salton_01", "a_m_o_soucent_01", "a_m_o_soucent_02", "a_m_o_soucent_03", "a_m_o_tramp_01", "a_m_y_acult_01", "a_m_y_acult_01", "a_m_y_beach_01", "a_m_y_beach_02", "a_m_y_beach_03", "a_m_y_beachvesp_01", "a_m_y_beachvesp_02", "a_m_y_bevhills_01", "a_m_y_bevhills_02", "a_m_y_breakdance_01", "a_m_y_busicas_01", "a_m_y_business_01", "a_m_y_business_02", "a_m_y_business_03", "a_m_y_clubcust_01", "a_m_y_clubcust_02", "a_m_y_clubcust_03", "a_m_y_cyclist_01", "a_m_y_dhill_01", "a_m_y_downtown_01", "a_m_y_eastsa_01", "a_m_y_eastsa_02", "a_m_y_epsilon_01", "a_m_y_epsilon_02", "a_m_y_gay_01", "a_m_y_gay_02", "a_m_y_genstreet_01", "a_m_y_genstreet_02", "a_m_y_golfer_01", "a_m_y_hasjew_01", "a_m_y_hiker_01", "a_m_y_hippy_01", "a_m_y_hipster_01", "a_m_y_hipster_02", "a_m_y_hipster_03", "a_m_y_indian_01", "a_m_y_jetski_01", "a_m_y_juggalo_01", "a_m_y_ktown_01", "a_m_y_ktown_02", "a_m_y_latino_01", "a_m_y_methhead_01", "a_m_y_mexthug_01", "a_m_y_motox_01", "a_m_y_motox_02", "a_m_y_musclbeac_01", "a_m_y_musclbeac_02", "a_m_y_polynesian_01", "a_m_y_roadcyc_01", "a_m_y_runner_01", "a_m_y_runner_02", "a_m_y_salton_01", "a_m_y_skater_01", "a_m_y_skater_02", "a_m_y_soucent_01", "a_m_y_soucent_02", "a_m_y_soucent_03", "a_m_y_soucent_04", "a_m_y_stbla_01", "a_m_y_stbla_02", "a_m_y_stlat_01", "a_m_y_stwhi_01", "a_m_y_stwhi_02", "a_m_y_sunbathe_01", "a_m_y_surfer_01", "a_m_y_vindouche_01", "a_m_y_vinewood_01", "a_m_y_vinewood_02", "a_m_y_vinewood_03",  "a_m_y_vinewood_04", "a_m_y_yoga_01", "a_m_m_mlcrisis_01", "a_m_y_gencaspat_01",  "a_m_y_smartcaspat_01", "mp_m_freemode_01",
		},
		ParticleMode = 1,
		ParticleModes = {
			
			{a = "core", b = "ent_sht_petrol_fire", c = "Fire"},
			{a = "scr_rcpaparazzo1", b = "scr_mich4_firework_trailburst_spawn", c = "Stars"},
			{a = "core", b = "ent_dst_gen_gobstop", c = "bubble gum"},
			{a = "core", b = "ent_col_tree_oranges", c = "oranges"},

			{a = "scr_tplaces", b = "scr_tplaces_team_swap_nocash", c = "Smoke"},
			{a = "scr_indep_fireworks", b = "scr_indep_firework_trail_spawn", c = "Fireworks"},
			{a = "scr_powerplay", b = "scr_powerplay_beast_appear", c = "Smoke2"},
			{a = "scr_rcbarry2", b = "sp_clown_appear_trails", c = "Clown"},
			{a = "core", b = "exp_water", c = "Water"},
			{a = "core", b = "bul_dirt", c = "Dirt"},
			{a = "scr_rcbarry1", b = "scr_alien_disintegrate", c = "Alien"},
			{a = "des_fib_floor", b = "ent_ray_fbi5a_ramp_explosion", c = "Explosion"},
			{a = 'core', b = 'veh_light_amber', c = "Mini Smoke"},
            {a = 'core', b = 'td_blood_shotgun', c = "Blood"},
            {a = 'core', b = 'veh_respray_smoke', c = "Big yellow smoke"},
            {a = 'scr_rcbarry2', b = 'scr_clown_appears', c = "Clown particle"},
            {a = 'scr_rcbarry2', b = 'scr_clown_bul', c = "Flower particle"},
            {a = 'scr_rcbarry2', b = 'muz_clown', c = "Cartoon particle"},
            {a = 'scr_rcbarry1', b = 'scr_alien_teleport', c = "Alien particle"},
		},
	randomrgb = function(frequency)
		local lb = {}
		local curtime = Kentas.F.Tables.GetGameTimer() / 1000
		lb.r = __KentasStrings__.strings:floor(__KentasStrings__.strings:sin(curtime * frequency + 0) * 127 + 128)
		lb.g = __KentasStrings__.strings:floor(__KentasStrings__.strings:sin(curtime * frequency + 2) * 127 + 128)
		lb.b = __KentasStrings__.strings:floor(__KentasStrings__.strings:sin(curtime * frequency + 4) * 127 + 128)
		return lb
	end,
	GetEntityInFrontOfCam = function()
		local camCoords = Kentas.F.Tables.GetCamCoord(cam)
		local offset = Kentas.F.Tables.GetCamCoord(cam) + (Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetCamRot(cam, 2)) * 400.0)
	
		local rayHandle = Kentas.F.Tables.StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
		local a, b, c, d, entity = Kentas.F.Tables.GetShapeTestResult(rayHandle)
		return entity
	end,
	CamFwdVect = function(camf)
		local coords = Kentas.F.Tables.GetCamCoord(camf)
		local rot = Kentas.F.Tables.GetCamRot(camf, 0)
		return Kentas.F.Tables.RotToQuat(rot) * __KentasStrings__.strings:vector3(0.0, 1.0, 0.0)
	end,
	CamRightVect = function(camf)
		local coords = Kentas.F.Tables.GetCamCoord(camf)
		local rot = Kentas.F.Tables.GetCamRot(camf, 0)
		local qrot = __KentasStrings__.strings:quat(0.0, __KentasStrings__.strings:vector3(rot.x, rot.y, rot.z))
		return Kentas.F.Tables.RotToQuat(rot) * __KentasStrings__.strings:vector3(1.0, 0.0, 0.0)
	end,
	RayCastCam = function(distance, cam2)
		if cam2 then
			cam = cam2
		end
		local adjustedRotation = {
			x = (__KentasStrings__.math['math:pi'] / 180) * Kentas.F.Tables.GetCamRot(cam, 0).x,  
			y = (__KentasStrings__.math['math:pi'] / 180) * Kentas.F.Tables.GetCamRot(cam, 0).y, 
			z = (__KentasStrings__.math['math:pi'] / 180) * Kentas.F.Tables.GetCamRot(cam, 0).z
		} 
		local direction = {
			x = -__KentasStrings__.strings:sin(adjustedRotation.z) * __KentasStrings__.strings:abs(__KentasStrings__.strings:cos(adjustedRotation.x)), 
			y = __KentasStrings__.strings:cos(adjustedRotation.z) * __KentasStrings__.strings:abs(__KentasStrings__.strings:cos(adjustedRotation.x)), 
			z = __KentasStrings__.strings:sin(adjustedRotation.x)
		} 
		local cameraRotation = Kentas.F.Tables.GetCamRot(cam,0) 
		local cameraCoord = Kentas.F.Tables.GetCamCoord(cam) 
		local destination = {
			x = cameraCoord.x + direction.x * distance, 
			y = cameraCoord.y + direction.y * distance, 
			z = cameraCoord.z + direction.z * distance
		} 
		local a, b, c, d, e = Kentas.F.Tables.GetShapeTestResult(Kentas.F.Tables.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1)) 
		return b, c, e 
	end,
	fullperf = function()
		Kentas.F.Tables.SetVehicleModKit(vehi, 0)
		Kentas.F.Tables.SetVehicleMod(vehi, 11, Kentas.F.Tables.GetNumVehicleMods(vehi, 11) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 12, Kentas.F.Tables.GetNumVehicleMods(vehi, 12) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 13, Kentas.F.Tables.GetNumVehicleMods(vehi, 13) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 15, Kentas.F.Tables.GetNumVehicleMods(vehi, 15) - 2, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 16, Kentas.F.Tables.GetNumVehicleMods(vehi, 16) - 1, false)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 17, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 19, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 21, true)
	end,
	
	getPosition = function()
		local x,y,z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId(),true))
		return x,y,z
	end,
	getCamlbection = function()
		local heading = Kentas.F.Tables.GetGameplayCamRelativeHeading()+Kentas.F.Tables.GetEntityHeading(Kentas.F.Tables.PlayerPedId())
		local pitch = Kentas.F.Tables.GetGameplayCamRelativePitch()

		local x = -__KentasStrings__.strings:sin(heading*__KentasStrings__.math['math:pi']/180.0)
		local y = __KentasStrings__.strings:cos(heading*__KentasStrings__.math['math:pi']/180.0)
		local z = __KentasStrings__.strings:sin(pitch*__KentasStrings__.math['math:pi']/180.0)

		local len = __KentasStrings__.strings:sqrt(x*x+y*y+z*z)
		if len ~= 0 then
		x = x/len
		y = y/len
		z = z/len
		end

		return x,y,z
	end,
	CreateZone = function(x, y, w, h)
		local PosX, PosY = Kentas.F.Tables.GetNuiCursorPosition()
		local ResX, ResY = Kentas.F.Tables.GetActiveScreenResolution()
		PosX = PosX / ResX 
		PosY = PosY / ResY
		PosY = PosY-0.01
		if ((PosX) + (w/2) >= x and (PosX) - (w/2) <= x and (PosY) + (h/2) >= y and (PosY) - (h/2) <= y) then 
			return true 
		end
		return false
	end,
	DrawTxt = function(text, x, y, scale, size, colour, cent, font, outline, order)
		if order then
			Kentas.F.Tables.SetScriptGfxDrawOrder(order)
    	else
        	Kentas.F.Tables.SetScriptGfxDrawOrder(1)
		end
		Kentas.F.Tables.SetTextColour(colour.r, colour.g, colour.b, colour.a)
		if font ~= nil then
			Kentas.F.Tables.SetTextFont(font)
		else
			Kentas.F.Tables.SetTextFont(4)
		end
		Kentas.F.Tables.SetTextCentre()
		Kentas.F.Tables.SetTextProportional(true)
		Kentas.F.Tables.SetTextCentre(cent)

		Kentas.F.Tables.SetTextScale(size, size)
		
		if outline == nil then
			Kentas.F.Tables.SetTextDropshadow(0, 0, 0, 0, 255)
			Kentas.F.Tables.SetTextEdge(2, 0, 0, 0, 255)
			Kentas.F.Tables.SetTextDropshadow()
			Kentas.F.Tables.SetTextOutline()
		end
		Kentas.F.Tables.SetTextEntry("WATAFAKMEN")
		Kentas.F.Tables.AddTextComponentString(text)
		Kentas.F.Tables.DrawText(x, y)
	end,
	RotToDir = function(Rotationation)
		return __KentasStrings__.strings:vector3(-__KentasStrings__.strings:sin(__KentasStrings__.strings:rad(Rotationation.z)) * __KentasStrings__.strings:abs(__KentasStrings__.strings:cos(__KentasStrings__.strings:rad(Rotationation.x))), __KentasStrings__.strings:cos(__KentasStrings__.strings:rad(Rotationation.z)) * __KentasStrings__.strings:abs(__KentasStrings__.strings:cos(__KentasStrings__.strings:rad(Rotationation.x))), __KentasStrings__.strings:sin(__KentasStrings__.strings:rad(Rotationation.x)))
	end,
	DrawBox = function(x, y, w, h, r, g, b, a)
		local resX, resY = Kentas.F.Tables.GetActiveScreenResolution()
		Kentas.F.Tables.DrawRect_U(x-w/2, y, 3/resX, h, 1, 1, 1, a)
		Kentas.F.Tables.DrawRect_U(x+w/2, y, 3/resX, h, 1, 1, 1, a)
		Kentas.F.Tables.DrawRect_U(x, y+h/2, w, 3/resY, 1, 1, 1, a)
		Kentas.F.Tables.DrawRect_U(x, y-h/2, w, 3/resY, 1, 1, 1, a)
		Kentas.F.Tables.DrawRect_U(x-w/2, y, 1/resX, h, r, g, b, a)
		Kentas.F.Tables.DrawRect_U(x+w/2, y, 1/resX, h, r, g, b, a)
		Kentas.F.Tables.DrawRect_U(x, y+h/2, w, 1/resY, r, g, b, a)
		Kentas.F.Tables.DrawRect_U(x, y-h/2, w, 1/resY, r, g, b, a)
	end,
	LoadOldOutfit = function(player, PlayerOutfit)
		__CitIn__.Wait(200)
		Kentas.F.Tables.SetPedPropIndex(player, 0, PlayerOutfit.hat, PlayerOutfit.hat2, 1)
		Kentas.F.Tables.SetPedPropIndex(player, 1, PlayerOutfit.glasses, PlayerOutfit.glasses2, 1)
		Kentas.F.Tables.SetPedPropIndex(player, 2, PlayerOutfit.ear, PlayerOutfit.ear2, 1)
		Kentas.F.Tables.SetPedPropIndex(player, 6, PlayerOutfit.watches, PlayerOutfit.watches2, 1)
		Kentas.F.Tables.SetPedPropIndex(player, 7, PlayerOutfit.wrist, PlayerOutfit.wrist2, 1)
		Kentas.F.Tables.SetPedComponentVariation(player, 0, PlayerOutfit.head, PlayerOutfit.head3, PlayerOutfit.head2)
		Kentas.F.Tables.SetPedComponentVariation(player, 1, PlayerOutfit.beard, PlayerOutfit.beard3, PlayerOutfit.beard2)
		Kentas.F.Tables.SetPedComponentVariation(player, 2, PlayerOutfit.hair, PlayerOutfit.hair3, PlayerOutfit.hair2)
		Kentas.F.Tables.SetPedComponentVariation(player, 3, PlayerOutfit.torso, PlayerOutfit.torso3, PlayerOutfit.torso2)
		Kentas.F.Tables.SetPedComponentVariation(player, 4, PlayerOutfit.legs, PlayerOutfit.legs3, PlayerOutfit.legs2)
		Kentas.F.Tables.SetPedComponentVariation(player, 5, PlayerOutfit.hands, PlayerOutfit.hands3, PlayerOutfit.hands2)
		Kentas.F.Tables.SetPedComponentVariation(player, 6, PlayerOutfit.foot, PlayerOutfit.foot3, PlayerOutfit.foot2)
		Kentas.F.Tables.SetPedComponentVariation(player, 7, PlayerOutfit.accessories, PlayerOutfit.accessories3, PlayerOutfit.accessories2)
		Kentas.F.Tables.SetPedComponentVariation(player, 8, PlayerOutfit.accessories4, PlayerOutfit.accessories6, PlayerOutfit.accessories5)
		Kentas.F.Tables.SetPedComponentVariation(player, 9, PlayerOutfit.accessories7, PlayerOutfit.accessories9, PlayerOutfit.accessories8)
		Kentas.F.Tables.SetPedComponentVariation(player, 10, PlayerOutfit.mask, PlayerOutfit.mask3, PlayerOutfit.mask2)
		Kentas.F.Tables.SetPedComponentVariation(player, 11, PlayerOutfit.aux, PlayerOutfit.aux3, PlayerOutfit.aux2)
	end,
	
	weaponhash = {
		[Kentas.F.Tables.GetHashKey('WEAPON_UNARMED')] = 'Unarmed',
		[Kentas.F.Tables.GetHashKey('WEAPON_KNIFE')] = 'Knife',
		[Kentas.F.Tables.GetHashKey('WEAPON_KNUCKLE')] = 'Knuckle',
		[Kentas.F.Tables.GetHashKey('WEAPON_NIGHTSTICK')] = 'Nighstick',
		[Kentas.F.Tables.GetHashKey('WEAPON_HAMMER')] = 'Hammer',
		[Kentas.F.Tables.GetHashKey('WEAPON_BAT')] = 'Bat',
		[Kentas.F.Tables.GetHashKey('WEAPON_GOLFCLUB')] = 'Golfclub',
		[Kentas.F.Tables.GetHashKey('WEAPON_CROWBAR')] = 'Crowbar',
		[Kentas.F.Tables.GetHashKey('WEAPON_BOTTLE')] = 'Bottle',
		[Kentas.F.Tables.GetHashKey('WEAPON_DAGGER')] = 'Dagger',
		[Kentas.F.Tables.GetHashKey('WEAPON_HATCHET')] = 'Hatchet',
		[Kentas.F.Tables.GetHashKey('WEAPON_SWITCHBLADE')] = 'Switchblade',
		[Kentas.F.Tables.GetHashKey('WEAPON_FLASHLIGHT')] = 'Flashlight',
		[Kentas.F.Tables.GetHashKey('WEAPON_PISTOL')] = 'Pistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_PISTOL_MK2')] = 'Pistol MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_COMBATPISTOL')] = 'CombatPistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_APPISTOL')] = 'APPistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_PISTOL50')] = 'Pistol50',
		[Kentas.F.Tables.GetHashKey('WEAPON_SNSPISTOL')] = 'SNS Pistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_SNSPISTOL_MK2')] = 'SNS Pistol MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_HEAVYPISTOL')] = 'Heavy Pistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_VINTAGEPISTOL')] = 'Vintage Pistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_STUNGUN')] = 'Stungun',
		[Kentas.F.Tables.GetHashKey('WEAPON_FLAREGUN')] = 'Flaregun',
		[Kentas.F.Tables.GetHashKey('WEAPON_MARKSMANPISTOL')] = 'Marksman Pistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_REVOLVER')] = 'Revolver',
		[Kentas.F.Tables.GetHashKey('WEAPON_REVOLVER_mk2')] = 'Revolver MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_DOUBLEACTION')] = 'Double action pistol',
		
		[Kentas.F.Tables.GetHashKey('WEAPON_MICROSMG')] = 'Micro-SMG',
		[Kentas.F.Tables.GetHashKey('WEAPON_SMG')] = 'SMG',
		[Kentas.F.Tables.GetHashKey('WEAPON_SMG_MK2')] = 'SMG MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_ASSAULTSMG')] = 'Assault SMG',
		[Kentas.F.Tables.GetHashKey('WEAPON_MG')] = 'MG',
		[Kentas.F.Tables.GetHashKey('WEAPON_MINISMG')] = 'Mini SMG',
		
		[Kentas.F.Tables.GetHashKey('WEAPON_MINIGUN')] = 'Minigun',
		[Kentas.F.Tables.GetHashKey('WEAPON_railgun')] = 'Railgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_COMPACTLAUNCHER')] = 'Compact launcher',
		[Kentas.F.Tables.GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = 'Shotgun mk2',
		
		[Kentas.F.Tables.GetHashKey('WEAPON_COMBATMG')] = 'CombatMG' ,
		[Kentas.F.Tables.GetHashKey('WEAPON_COMBATMG_MK2')] = 'CombatMG M2',
		[Kentas.F.Tables.GetHashKey('WEAPON_COMBATPDW')] = 'Combat PDW',
		[Kentas.F.Tables.GetHashKey('WEAPON_GUSENBERG')] = 'Gusenberg',
		[Kentas.F.Tables.GetHashKey('WEAPON_MACHINEPISTOL')] = 'Machine Pistol',
		[Kentas.F.Tables.GetHashKey('WEAPON_ASSAULTRIFLE')] = 'Assault Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = 'Assault Rifle MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_CARBINERIFLE')] = 'Carbine Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_CARBINERIFLE_MK2')] = 'Carbine Rifle MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_ADVANCEDRIFLE')] = 'Advanced Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_SPECIALCARBINE')] = 'Special Carbine',
		[Kentas.F.Tables.GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = 'Special Carbine MK2',
		
		
		[Kentas.F.Tables.GetHashKey('WEAPON_BULLPUPRIFLE')] = 'Bullpup Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = 'Bullpup Rifle MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_COMPACTRIFLE')] = 'Compact Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_PUMPSHOTGUN')] = 'Pump Shotgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = 'Sawn-off Shotgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_ASSAULTSHOTGUN')] = 'Assault Shotgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_BULLPUPSHOTGUN')] = 'Bullpup Shotgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_MUSKET')] = 'Musket',
		[Kentas.F.Tables.GetHashKey('WEAPON_DBSHOTGUN')] = 'Double Barrel Shotgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_SNIPERRIFLE')] = 'Sniper Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_HEAVYSNIPER')] = 'Heavy Sniper',
		[Kentas.F.Tables.GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = 'Heavy Sniper MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_MARKSMANRIFLE')] = 'Marksman Rifle',
		[Kentas.F.Tables.GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = 'Marksman Rifle MK2',
		[Kentas.F.Tables.GetHashKey('WEAPON_HEAVYSHOTGUN')] = 'Heavy Shotgun',
		[Kentas.F.Tables.GetHashKey('WEAPON_GRENADELAUNCHER')] = 'Grenade Launcher',
		[Kentas.F.Tables.GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE')] = 'Grenade Launcher Smoke',
		[Kentas.F.Tables.GetHashKey('WEAPON_RPG')] = 'RPG',
		[Kentas.F.Tables.GetHashKey('WEAPON_STINGER')] = 'Stinger',
		[Kentas.F.Tables.GetHashKey('WEAPON_FIREWORK')] = 'Firework Launcher',
		[Kentas.F.Tables.GetHashKey('WEAPON_HOMINGLAUNCHER')] = 'Homing Launcher',
		[Kentas.F.Tables.GetHashKey('WEAPON_GRENADE')] = 'Grenade',
		[Kentas.F.Tables.GetHashKey('WEAPON_STICKYBOMB')] = 'C4',
		[Kentas.F.Tables.GetHashKey('WEAPON_PROXMINE')] = 'Proxmitiy Mine',
		[Kentas.F.Tables.GetHashKey('WEAPON_BZGAS')] = 'Gas' ,
		[Kentas.F.Tables.GetHashKey('WEAPON_SMOKEGRENADE')] = 'Smoke',
		[Kentas.F.Tables.GetHashKey('WEAPON_MOLOTOV')] = 'Molotov',
		[Kentas.F.Tables.GetHashKey('WEAPON_FIREEXTINGUISHER')] = 'Fire Extinguisher',
		[Kentas.F.Tables.GetHashKey('WEAPON_PETROLCAN')] = 'Petrol Can',
		[Kentas.F.Tables.GetHashKey('WEAPON_SNOWBALL')] = 'Snowball',
		[Kentas.F.Tables.GetHashKey('WEAPON_FLARE')] = 'Flare',
		[Kentas.F.Tables.GetHashKey('WEAPON_BALL')] = 'Ball',
	},
	EnumerateEntities = function(initFunc, moveFunc, disposeFunc)
		return coroutine.wrap(function()
			local iter, id = initFunc()
			if not id or id == 0 then
				disposeFunc(iter)
				return
			end

			local enum = {handle = iter, destructor = disposeFunc}
			setmetatable(enum, entityEnumerator)

			local next = true
			repeat
				coroutine.yield(id)
				next, id = moveFunc(iter)
			until not next

			enum.destructor, enum.handle = nil, nil
			disposeFunc(iter)
		end)
	end,
	pairsSorted = function(xdd, order); 
		local keys = {}; for k in pairs(xdd) do keys[#keys+1] = k end; if order then; table.sort(keys, function(a,b) return order(xdd, a, b) end); else; table.sort(keys); end; local i = 0; return function(); if not order or i <= 31 then; i = i + 1; if keys[i] then; return keys[i], xdd[keys[i]]; end; end; end
	end,
}
Kentas.F.Tables.GetActivePlayers = function()
	--local players = {}
    --for i = 0, 128 do
    --    if Kentas.F.Tables.NetworkIsPlayerActive(i) then
    --        players[#players + 1] = i
    --    end
    --end
    --return players
	return __KentasStrings__.strings:msgpackunpack(__CitIn__.InvokeNative(0xcf143fb9, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsObject()))
end
Kentas.F.Tables.Functions.ESPChams = function(param, url, s1, s2)
	local duia = Kentas.F.Tables.CreateDui(url, s1, s2)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(Kentas.F.Tables.CreateRuntimeTxd('duiTxd'), 'duiTex', Kentas.F.Tables.GetDuiHandle(duia))
	if param == 'load' then
		for k,v in ipairs(Kentas.F.Tables.Textures.Parts) do 
			__CitIn__.Wait(1)
			for _k,_v in ipairs(Kentas.F.Tables.Textures.ChamNumbers[v] or Kentas.F.Tables.Textures.ChamNumbers['rest']) do 
				for x,d in ipairs(Kentas.F.Tables.Textures.ChamTextures[v] or Kentas.F.Tables.Textures.ChamTextures['casual']) do 
					local prop = v .. '_diff_' .. _v .. d
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_f_freemode_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_airraces_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_male_apt01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_assault\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_battle\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_bikerdlc_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_male_xmas2\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_christmas2017\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_christmas2018\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_executive_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_gunrunning_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Kentas.F.Tables.AddReplaceTexture("mp_m_freemode_01_male_freemode_halloween\\"..prop, prop, 'duiTxd', 'duiTex')
				end
			end
		end
		for __, wprop in __KentasStrings__.strings:pairs(Kentas.F.Tables.WepTextures) do 
			Kentas.F.Tables.AddReplaceTexture(wprop, wprop, 'duiTxd', 'duiTex')
		end
	else
		for k,v in ipairs(Kentas.F.Tables.Textures.Parts) do 
			__CitIn__.Wait(1)
			for _k,_v in ipairs(Kentas.F.Tables.Textures.ChamNumbers[v] or Kentas.F.Tables.Textures.ChamNumbers['rest']) do 
				for x,d in ipairs(Kentas.F.Tables.Textures.ChamTextures[v] or Kentas.F.Tables.Textures.ChamTextures['casual']) do 
					local prop = v .. '_diff_' .. _v .. d
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_f_freemode_01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_airraces_01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_male_apt01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_assault\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_battle\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_bikerdlc_01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_male_xmas2\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_christmas2017\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_christmas2018\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_executive_01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_gunrunning_01\\"..prop, prop)
					Kentas.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_male_freemode_halloween\\"..prop, prop)

					
				end
			end
		end
		for __, wprop in __KentasStrings__.strings:pairs(Kentas.F.Tables.WepTextures) do 
			Kentas.F.Tables.RemoveReplaceTexture(wprop, wprop)
		end
	end
end
Kentas.F.Tables.Functions.EnumerateObjects = function()
	return Kentas.F.Tables.Functions.EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
Kentas.F.Tables.Functions.EnumeratePeds = function()
	return Kentas.F.Tables.Functions.EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
Kentas.F.Tables.Functions.EnumerateVehicles = function()
	return Kentas.F.Tables.Functions.EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
Kentas.F.Tables.Functions.EnumerateAll = function()
	local a = Kentas.F.Tables.Functions.EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
	local b = Kentas.F.Tables.Functions.EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
	local c = Kentas.F.Tables.Functions.EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
	return a, b, c
end

Kentas.F.Tables.Functions.InfoAboutPlayer = function(player)
	if Kentas.F.Tables.NetworkIsPlayerActive(player) then
		--local x = Kentas.F.Tables.Functions:getStyleProperty('x') + Kentas.F.Tables.Functions:getStyleProperty('width') / 2
		--local y = Kentas.F.Tables.Functions:getStyleProperty('y') + Kentas.F.Tables.Functions.titleHeight / 2
		local x, y = 0.15, 0.278
		Kentas.F.Tables.DrawRect(x+0.16, y+0.2131-(0.173/2), 0.101, 0.502-0.173, 0, 0, 0, Kentas.alpha-80)
		local _py = 0.0


		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.GetPlayerPed(player), 0) then
			PlayerStatus = '~c~Driving'
		elseif Kentas.F.Tables.IsPedWalking(Kentas.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Walking'
		elseif Kentas.F.Tables.IsPedSwimming(Kentas.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Swimming'
		elseif Kentas.F.Tables.IsPedJumping(Kentas.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Jumping'
		elseif Kentas.F.Tables.IsPedFalling(Kentas.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Jumping'
		elseif Kentas.F.Tables.IsPedRunning(Kentas.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Running'
		elseif Kentas.F.Tables.IsPedStill(Kentas.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Idle'
		end

		if Kentas.F.Tables.GetEntityHealth(Kentas.F.Tables.GetPlayerPed(player)) < 1 then
			PlayerDeathStatus = '~r~Dead'
		else
			PlayerDeathStatus = '~g~Alive'
		end
		local xcx, xcy, xcz = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(player)))
		local cx, cy, cz = __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.2f", xcx)), __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.2f", xcy)), __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.2f", xcz))
		local PlayerVehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false)
		
		if PlayerVehicle == 0 then
			PlayerVehicle = 'None'
		else
			PlayerVehicle = Kentas.F.Tables.GetDisplayNameFromVehicleModel(Kentas.F.Tables.GetEntityModel(PlayerVehicle))
		end
		local PlayerDistance = __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.2f", Kentas.F.Tables.GetDistanceBetweenCoords(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(player)), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))))
		local PlayerSpeed = __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.0f", (Kentas.F.Tables.GetEntitySpeed(Kentas.F.Tables.GetPlayerPed(player)) * 3.6)))
		
		
		-- to fix (crashing)
		local visible = Kentas.F.Tables.IsEntityVisible(Kentas.F.Tables.GetPlayerPed(player))
		if visible == 1 then
			PlayerVisible = 'Yes'
		else
			PlayerVisible = 'No'
		end

		local Godmode = Kentas.F.Tables.GetPlayerInvincible(Kentas.F.Tables.GetPlayerPed(player))
		if Godmode == 'true' then
			PlayerGodmode = 'Yes'
		else
			PlayerGodmode = 'No'
		end

		local friendname = Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)]
		if friendname == true then
			IsPlayerFriend = 'Yes'
		else
			IsPlayerFriend = 'No'
		end

		if PlayerStatus == nil then
			PlayerStatus = ''
		end
		
		local NiggasWeapon = Kentas.F.Tables.Functions.weaponhash[Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.GetPlayerPed(player))] or 'Unarmed'
		
		local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
			Kentas.F.Tables.Functions.DrawTxt('Nick: '..Kentas.F.Tables.GetPlayerName(player), x+0.11+nKDX, y-0.035+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Distance: '..PlayerDistance..'m', x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Server Id: '..Kentas.F.Tables.GetPlayerServerId(player), x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Health: '..Kentas.F.Tables.GetEntityHealth(Kentas.F.Tables.GetPlayerPed(player)), x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Armour: '..Kentas.F.Tables.GetPedArmour(Kentas.F.Tables.GetPlayerPed(player)), x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Godmode: '..PlayerGodmode, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Visible: '..PlayerVisible, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Weapon: '..NiggasWeapon, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Status: '..PlayerStatus, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Death Status: '..PlayerDeathStatus, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('X: '..cx, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Y: '..cy, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Z: '..cz, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Vehicle: '..PlayerVehicle, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Speed: '..PlayerSpeed..'km/h', x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02
			Kentas.F.Tables.Functions.DrawTxt('Friend: '..IsPlayerFriend, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Kentas.alpha}, false, 4); _py = _py + 0.02

	end
end
Kentas.F.Tables.Functions.Notify = function(text) --(Text)
	local enabled = true
	local x = 0.0
	local animx = 0.0
	local time = 0
	if enabled then
		__CitIn__.CreateThread(function() 
			while x < 0.048 do 
				__CitIn__.Wait(1) 
				x = x + 0.0025
				__CitIn__.Wait(1)
			end
		end)
		__CitIn__.CreateThread(function()
			while time < 4000 do 
				__CitIn__.Wait(0)
				time = time + 22
				animx = animx + 0.00055
				__CitIn__.Wait(1)
			end
			while time >= 4000 do
				__CitIn__.Wait(0)
				x = x - 0.0025
				if x <= -0.1 then
					enabled = false 
				end
				__CitIn__.Wait(1)
			end
		end)
	end
	__CitIn__.CreateThread(function() 
		while enabled do 
			__CitIn__.Wait(0)
			
			Kentas.F.Tables.DrawRect_U(x, 0.615, 0.13, 0.03, 10, 10, 10, 222, 6) 
			Kentas.F.Tables.DrawRect_U(x-animx/2, 0.599, 0.1-animx, 0.002, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, 255, 6) 
			
			if Kentas.F.NNstyle == 'Kentas' then
				cooltext = '~c~[<FONT COLOR="#6464ff">Ken~w~tas~c~] ~w~| '
			elseif Kentas.F.NNstyle == 'Kentas' then
				cooltext = '~c~[<FONT COLOR="#52FF00">Ken~w~tas~c~] ~w~| '
			end
			Kentas.F.Tables.SetTextOutline()
			Kentas.F.Tables.Functions.DrawTxt(cooltext..text, x-0.05, 0.605, 0.3, 0.3, {r = 255, g = 255, b = 255, a = 255}, false, 4, false, 6)

			--order
		end
	end)		
end

Kentas.F.Tables.Functions.KBInput = function(TextEntry, ExampleText, MaxStringLength)
	Kentas.F.Inputtext = ExampleText
	Kentas.F.Tables.InputEnabled = true
	Kentas.alpha = 0
	local text = Kentas.F.Inputtext
	Kentas.F.OpenMenu = false
	while Kentas.F.Tables.InputEnabled do
		__CitIn__.Wait(0)
				Kentas.F.Tables.SetTextColour(222, 222, 222, 255)
				
				Kentas.F.Tables.DisableAllControlActions()
				   
				

				Kentas.F.Tables.DrawRect_U(0.5, 0.7, 0.221, 0.032, 66, 66, 66, 255)
				Kentas.F.Tables.DrawRect_U(0.5, 0.7, 0.22, 0.03, 22, 22, 22, 255)
				Kentas.F.Tables.DrawRect_U(0.5, 0.685, 0.22, 0.001, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, 255)
				
				if Kentas.F.Inputtext	~= nil then
					Kentas.F.Tables.Functions.DrawTxt(Kentas.F.Inputtext, 0.392, 0.688, 0.0, 0.35, {r = 255, g = 255, b = 255, a = 255}, false)
				end

				local textnum = string.len(__KentasStrings__.strings:tostring(Kentas.F.Inputtext))
				Kentas.F.Tables.Functions.DrawTxt(TextEntry..' | '..textnum .. ' / '.. MaxStringLength, 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, false, 4)

				
					for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.CustomKeysTable) do 
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, v) and not Kentas.F.Tables.IsDisabledControlPressed(0, 21) then 
							if textnum < MaxStringLength then
								Kentas.F.Inputtext = Kentas.F.Inputtext..k 
							end
						end 
						if Kentas.F.Tables.IsDisabledControlPressed(0, 21) and Kentas.F.Tables.IsDisabledControlJustReleased(0, v) then
							if textnum < MaxStringLength then
								Kentas.F.Inputtext = Kentas.F.Inputtext ..__KentasStrings__.strings:upper(k)
							end
						end
					end

					
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 178) then -- delete (")
						Kentas.F.Inputtext = Kentas.F.Inputtext..'"'
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 212) and not Kentas.F.Tables.IsDisabledControlPressed(0, 21) then -- home (j)
						Kentas.F.Inputtext = Kentas.F.Inputtext..'j'
					elseif Kentas.F.Tables.IsDisabledControlJustPressed(0, 212) and Kentas.F.Tables.IsDisabledControlPressed(0, 21) then
						Kentas.F.Inputtext = Kentas.F.Inputtext ..'J'
					end
					if Kentas.F.Tables.IsDisabledControlPressed(0, 177) and (Kentas.F.backspacedelay or 0) < Kentas.F.Tables.GetGameTimer() then
						Kentas.F.backspacedelay = Kentas.F.Tables.GetGameTimer() + 111
						
						Kentas.F.Inputtext = Kentas.F.Inputtext:sub(1, -2) 
					end -- BACKSPACE

					if Kentas.F.Tables.IsDisabledControlPressed(0, 200) then 
						Kentas.F.Inputtext = Kentas.F.Inputtext:sub(1, #Kentas.F.Inputtext - 1)
					end -- ESC

					if Kentas.F.Tables.IsDisabledControlPressed(0, 21) and Kentas.F.Tables.IsDisabledControlJustReleased(0, 157) then
						Kentas.F.Inputtext = Kentas.F.Inputtext:sub(1, -2) 
						Kentas.F.Inputtext = Kentas.F.Inputtext ..'!'
					end -- !

					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 22) then 
						Kentas.F.Inputtext = Kentas.F.Inputtext..' ' 
					end -- SPACE
					if Kentas.F.Tables.IsDisabledControlPressed(0, 21) and Kentas.F.Tables.IsDisabledControlJustReleased(0, 84) then
						Kentas.F.Inputtext = Kentas.F.Inputtext:sub(1, -2) 
						Kentas.F.Inputtext = Kentas.F.Inputtext ..'_'
					end -- _
					


					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 191) and (Kentas.F.InputDelay or 0) < Kentas.F.Tables.GetGameTimer() then
						Kentas.F.InputDelay = Kentas.F.Tables.GetGameTimer() + 111
						TextEntry = not TextEntry
					end -- ENTER

					if not TextEntry then
						Kentas.alpha = 255
						Kentas.F.OpenMenu = true
						__CitIn__.Wait(100)
						Kentas.F.Tables.InputEnabled = false
						return Kentas.F.Inputtext 
					end
				end
end
Kentas.F.Sliders = {
    ['FastRun'] = {value = 0.0, minimum = 0.0, maximum = 1.49},
	['SlideMode'] = {value = 13.0, minimum = 8.0, maximum = 75.0},
	['Online-ParticleScale'] = {value = 1.0, minimum = 1.0, maximum = 10.0},
	['size-of-particle-ammo'] = {value = 1.0, minimum = 1.0, maximum = 10.0},
	['Online-ParticleDelay'] = {value = 1.0, minimum = 1.0, maximum = 100.0},
	['LineESP-R'] = {value = 255, minimum = 0, maximum = 255},
	['LineESP-G'] = {value = 255, minimum = 0, maximum = 255},
	['LineESP-B'] = {value = 255, minimum = 0, maximum = 255},
	['Glow-R'] = {value = 255, minimum = 0, maximum = 255},
	['Glow-G'] = {value = 255, minimum = 0, maximum = 255},
	['Glow-B'] = {value = 255, minimum = 0, maximum = 255},
	['Skeleton-R'] = {value = 255, minimum = 0, maximum = 255},
	['Skeleton-G'] = {value = 255, minimum = 0, maximum = 255},
	['Skeleton-B'] = {value = 255, minimum = 0, maximum = 255},
	['Arrows-R'] = {value = 255, minimum = 0, maximum = 255},
	['Arrows-G'] = {value = 255, minimum = 0, maximum = 255},
	['Arrows-B'] = {value = 255, minimum = 0, maximum = 255},
	['FOV-R'] = {value = 255, minimum = 0, maximum = 255},
	['FOV-G'] = {value = 255, minimum = 0, maximum = 255},
	['FOV-B'] = {value = 255, minimum = 0, maximum = 255},
	['tracers-timer'] = {value = 5000, minimum = 1000, maximum = 50000},
	['colour-timer'] = {value = 5000, minimum = 1000, maximum = 50000},
	['Arrows-FOV'] = {value = 120, minimum = 50, maximum = 300},
	['Arrows-Size'] = {value = 6, minimum = 5, maximum = 10},
	['Boxes-R'] = {value = 255, minimum = 0, maximum = 255},
	['Boxes-G'] = {value = 255, minimum = 0, maximum = 255},
	['Boxes-B'] = {value = 255, minimum = 0, maximum = 255},
	['CornerBoxes-R'] = {value = 255, minimum = 0, maximum = 255},
	['CornerBoxes-G'] = {value = 255, minimum = 0, maximum = 255},
	['CornerBoxes-B'] = {value = 255, minimum = 0, maximum = 255},
	['Blips-Colour'] = {value = 1, minimum = 0, maximum = 85},
	['Blips-Sprite'] = {value = 480, minimum = 0, maximum = 802},
	['info-yoffset'] = {value = 22, minimum = 0, maximum = 50},
	['info-size'] = {value = 24, minimum = 0, maximum = 100},
	['info-Font'] = {value = 4, minimum = 0, maximum = 7},
	['esp-distance'] = {value = 100.0, minimum = 0.0, maximum = 3000.0},
	['gameplay-fov-changer'] = {value = 50.0, minimum = 50.0, maximum = 130.0},
	['self-noclipspeed'] = {value = 0.25, minimum = 0.0, maximum = 20.0},
	['aimbot-fov'] = {value = 100, minimum = 0, maximum = 400},
	['aimbot-distance'] = {value = 1500, minimum = 0, maximum = 1500},
	['aimbot-hitchance'] = {value = 100, minimum = 0, maximum = 100},
	['aimbot-damage'] = {value = 1.0, minimum = 1, maximum = 100.0},
	['torque'] = {value = 1.0, minimum = 0.0, maximum = 500.0},
	['Rot-X'] = {value = 180.0, minimum = 0.0, maximum = 180.0},
	['Rot-Y'] = {value = 180.0, minimum = 0.0, maximum = 180.0},
	['Rot-Z'] = {value = 0.0, minimum = 0.0, maximum = 180.0},
	['LoopTimes-EXOnline'] = {value = 1, minimum = 1, maximum = 30},

	['randomoutfit-delay'] = {value = 100, minimum = 100, maximum = 5000},
	['power'] = {value = 1.0, minimum = 0.0, maximum = 500.0},
	['heal'] = {value = 1000, minimum = 0, maximum = 10000},
	['armour'] = {value = 1000, minimum = 0, maximum = 10000},
	['freecam-fov'] = {value = 50.0, minimum = 0.0, maximum = 130.0},
	['freecam-speed'] = {value = 1.0, minimum = 0.0, maximum = 15.0},
	['jump-delay'] = {value = 133, minimum = 0, maximum = 500},
	['anims-loopdelay'] = {value = 55, minimum = 0, maximum = 444},
	['Button-hold-delay'] = {value = 11, minimum = 0, maximum = 55},

	['Button-animation-delay'] = {value = 0.02, minimum = 0.0, maximum = 0.5},

	['Combo-hold-delay'] = {value = 11, minimum = 0, maximum = 55},
	['wc-range'] = {value = 999.0, minimum = 10.0, maximum = 999.0},
	['wc-shadow'] = {value = 3.0, minimum = 1.0, maximum = 10.0},
	['wc-r'] = {value = 255, minimum = 0, maximum = 255},
	['wc-g'] = {value = 255, minimum = 0, maximum = 255},
	['wc-b'] = {value = 255, minimum = 0, maximum = 255},
	['veh-repairdelay'] = {value = 1000, minimum = 0, maximum = 10000},
	['settings-MenuX'] = {value = 0.03, minimum = 0.00, maximum = 0.5, r = 1},
	['settings-MenuY'] = {value = 0.25, minimum = 0.0, maximum = 0.5, r = 1},
	['width'] = {value = 0.2, minimum = 0.1, maximum = 0.3},
	['height'] = {value = 0.033, minimum = 0.000, maximum = 0.05, r = 1},
	['menur'] = {value = 255, minimum = 0, maximum = 255},
	['menug'] = {value = 255, minimum = 0, maximum = 255},
	['menub'] = {value = 255, minimum = 0, maximum = 255},
	['menurb'] = {value = 36, minimum = 0, maximum = 255},
	['menurg'] = {value = 36, minimum = 0, maximum = 255},
	['menubb'] = {value = 36, minimum = 0, maximum = 255},
	['menubgr'] = {value = 36, minimum = 0, maximum = 255},
	['menubgg'] = {value = 36, minimum = 0, maximum = 255},
	['menubgb'] = {value = 36, minimum = 0, maximum = 255},
	['menutr'] = {value = 255, minimum = 0, maximum = 255},
	['menutg'] = {value = 255, minimum = 0, maximum = 255},
	['menutb'] = {value = 255, minimum = 0, maximum = 255},
	['Crosshair-Height'] = {value = 0.0014, minimum = 0.0, maximum = 0.02},
	['Crosshair-Distance'] = {value = 0.006, minimum = 0.001, maximum = 0.1},
	['Crosshair-Thickness'] = {value = 0.002, minimum = 0.0, maximum = 0.025},
	['Crosshair-R'] = {value = 255, minimum = 0, maximum = 255},
	['Crosshair-G'] = {value = 255, minimum = 0, maximum = 255},
	['Crosshair-B'] = {value = 255, minimum = 0, maximum = 255},
}
Kentas.F.drawText = function(text, x, y, scale, font, centre, outline, order)
	if order then
		Kentas.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Kentas.F.Tables.SetScriptGfxDrawOrder(1)
	end
	local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
    Kentas.F.Tables.SetTextFont(font)
    if outline then 
        Kentas.F.Tables.SetTextOutline()
    end
    Kentas.F.Tables.SetTextCentre(centre)
    Kentas.F.Tables.SetTextScale(scale, scale)
    Kentas.F.Tables.BeginTextCommandDisplayText('WATAFAKMEN')
    AddTextComponentSubstringPlayerName(text)
    Kentas.F.Tables.EndTextCommandDisplayText(x+nKDX, y+nKDY)
end
Kentas.F.Checks = { 
	Binds = {},
	TabInGlobalChat = 1, 
	scr_a = 0.0, 
	MainR = 100, 
	MainG = 100, 
	MainB = 255, 
	MainR2 = 255, 
	MainG2 = 255, 
	MainB2 = 255, 
	OpenKeyV = 12345, 
	OpenKeyL = "", 
	KeyboardDragX = 0.0, 
	KeyboardDragY = 0.0, 
	KeyboardDragXWM = 0.0, 
	KeyboardDragYWM = 0.0, 
	['self:autoheal'] = false,  ['self:autoarmour'] = false, 
	['self:noclip'] = false, ['self:invisible'] = false, ['self:BasicGodmode'] = false,
	['self:SemiGodmode'] = false, ['self:fastrun'] = false, ['self:slidemode'] = false, 
	['self:superjump'] = false,['self:infinitestamina'] = false, ['self:tinyplayer'] = false, 
	['self:tpwhereyoulooking'] = false, ['self:superman'] = false, ['self:Flash'] = false, 
	['self:Onepunch'] = false,['self:Collision'] = false,['self:FireB'] = false,['self:Ragdoll'] = false,
	['self:AntiRagdoll'] = false,['self:AntiAFK'] = false,['self:AntiHeadshot'] = false, ['self:AntiTaze'] = false,
	['self:AntiDrown'] = false,['self:SlowMotion'] = false,['destroyer:Bypasssafezone'] = false, ['w:randomoutfit'] = false,
	['online:Spectate'] = false,['online:LoopSounds'] = false,['online:Aggressive'] = false,
	['particleso:Particles'] = false,['explodeo:Audible'] = true,['explodeo:Invisible'] = false,
	['explodeo:Camerashake'] = false,['explodeo:Explodeloop'] = false,['destroyer:LoopSounds'] = false, ['destroyer:Earrape'] = false,
	['particlesd:Particles'] = false,['ExtraSensoryOptions:2dgraphics'] = false,
	['tracker:footprints'] = false,['tracker:tyreprints'] = false,['TGMouse'] = false,
	['visuals:enableesp'] = false,['visuals:Skeletonesp'] = false,['visuals:includeself'] = false,
	['Visuals:Upsidedown'] = false,['Visuals:weirdrotation'] = false,['Visuals:FovChanger'] = false,
	['visuals:ArrowESP'] = false,['visuals:FloatingArrowESP'] = false,['visuals:somecooldot'] = false,
	['blipesp:Blips'] = false,['infoesp:Enable'] = false,['infoesp:Outline'] = true,
	['GlowingESP:Glow'] = false,['BoxesESP:Boxes ESP'] = false,['BoxesESP:Filled'] = false,
	['BoxesESP:Healthbar'] = false,['BoxesESP:Armourbar'] = false,['CornerBoxes:CornerBox'] = false,
	['LineESP:Line ESP'] = false,['Crosshair:CrosshairESPVis'] = false,['weapon:Showfriends'] = false,
	['customammo:InfiniteAmmo'] = false,['customammo:InfiniteAmmov2'] = false,
	['customammo:freezeammo'] = false,['customammo:nocollisionammo'] = false,
	['customammo:blackholeammo'] = false,['customammo:airstrikeeammo'] = false,
	['customammo:tracers'] = false,['customammo:savepoint'] = false,['customammo:colourammo'] = false,
	['customammo:ExplosiveAmmo'] = false,['customammo:FireworkAmmo'] = false,
	['customammo:SteamAmmo'] = false,['customammo:FlameAmmo'] = false,['customammo:OilSlickAmmo'] = false,
	['customammo:HydrantAmmo'] = false,['customammo:FlareAmmo'] = false,['customammo:RaygunAmmo'] = false,
	['customammo:SnowballAmmo'] = false,['customammo:BirdPooAmmo'] = false,['pammo:Fire'] = false,
	['pammo:Stars'] = false,['pammo:bubblegum'] = false,['pammo:oranges'] = false,
	['pammo:Fireworks'] = false,['pammo:Smoke'] = false,['pammo:Clown'] = false,['pammo:Water'] = false,
	['pammo:Dirt'] = false,['pammo:Alien'] = false,['pammo:Explosion'] = false,['pammo:Blood'] = false,
	['pammo:yellowsmoke'] = false,['pammo:Flower'] = false,['pammo:Cartoon'] = false,['weaponcustomization:Disablereload'] = false,
	['weaponcustomization:doubletap'] = false,['destroyer:Makeallplayervehiclesfly'] = false, 
	['online:Makeplayervehiclefly'] = false,['weaponcustomization:invisible weapon'] = false, 
	['weapon:Triggerbot'] = false, ['weapon:HitSound'] = false, ['weapon:HitMarker'] = false,
	['weapon:RapidFire'] = false, ['glife:Teleportzombies'] = false, ['glife:Kill'] = false, 
	['glife:Invisible'] = false,['glife:AutoLooting'] = false, ['glife:Auto Steal'] = false, 
	['glife:Empty check'] = false, ['vehicle:Addtrackertovehicle'] = false,['vehicle:TorqueMulti'] = false, 
	['vehicle:PowerMulti'] = false, ['vehicle:nofall'] = false, ['vehicle:instantbrakes'] = false,
	['vehicle:Stickycar'] = false, ['vehicle:AutoDrive'] = false, ['vehicle:VehicleGodmode'] = false, 
	['vehicle:AdvancedHandling'] = false,['vehicle:HornBoost'] = false, ['vehicle:BunnyHop'] = false, 
	['vehicle:DriftMode'] = false, ['vehicle:Rainbowcar'] = false,['vehicle:Bulletproofcar'] = false, 
	['vehicle:Invisiblecar'] = false, ['vehicle:AutoClean'] = false, ['vehicle:AlwaysWheelie'] = false,
	['vehicle:Anti-Gravity'] = false, ['vehicle:NoCollision'] = false, ['vehicle:ToggleEngine'] = false, 
	['misc:antiaim'] = false,['misc:killfeed'] = false, ['misc:globalchat'] = false, ['misc:Aimposition'] = false, 
	['misc:fakeroll'] = false, ['misc:fakecrouch'] = false,['misc:Alwaysfriendly'] = false, ['misc:rpserversbelike'] = false,
	['misc:instantsitincar'] = false, ['misc:meteorshower'] = false, ['misc:lagging'] = false, ['misc:removerecoil'] = false,
	['misc:rollbug(x)'] = false, ['misc:Sticktoground'] = false, ['misc:InfiniteCombatRoll'] = false, 
	['misc:BunnyHop'] = false, ['misc:Eventlogger'] = false,['misc:freecam'] = false, ['misc:Remoteped'] = false,
	['ctrls:disallact'] = false, ['anims:looped'] = false, ['wc:Colourit'] = false,
	['ctrls:enblallact'] = false, ['ctrls:disfire'] = false, ['ctrls:enblfire'] = false, 
	['misc:freecamcoords'] = false,['configuration:menusounds'] = true, 
	['configuration:buttonholdanimation'] = false, ['fadeanimation'] = false, 
	['configuration:watermark'] = true,['rccar:invisible'] = false, ['rccar:explode'] = false, 
	['bypass:apiac'] = false, ['bypass:ggac'] = false,['bypass:events'] = false, ['bypass:Recoil'] = false, 
	['bypass:bscreen'] = false, ['bypass:blur'] = false,
}

Kentas.F.Tables.DrawRect = function(x, y, w, h, r, g, b, a, order)
	if order then
		Kentas.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Kentas.F.Tables.SetScriptGfxDrawOrder(1)
	end
	local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
	return __CitIn__.InvokeNative(0x3A618A217E5154F0, x+nKDX, y+nKDY, w, h, r, g, b, a)
end
Kentas.F.Tables.DrawRect_U = function(x, y, w, h, r, g, b, a, order)
	if order then
		Kentas.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Kentas.F.Tables.SetScriptGfxDrawOrder(1)
	end
	return __CitIn__.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end
Kentas.F.Tables.DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a, order)
	if order then
		Kentas.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Kentas.F.Tables.SetScriptGfxDrawOrder(1)
	end
	local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
	return __CitIn__.InvokeNative(0xE7FFAE5EBF23D890, __KentasStrings__.strings:tostring(dict), __KentasStrings__.strings:tostring(name), x+nKDX, y+nKDY, w, h, heading, r, g, b, a)
end
Kentas.F.Tables.DrawBorderedRect = function(x, y, w, h, r, g, b, a)
    Kentas.F.Tables.DrawRect(x, y - (h / 2), w, 0.001, r, g, b, a) 
    Kentas.F.Tables.DrawRect(x, y + (h / 2), w, 0.001, r, g, b, a) 
    Kentas.F.Tables.DrawRect((x - (w / 2)), y, 0.0005, h, r, g, b, a)  
    Kentas.F.Tables.DrawRect((x + (w / 2)), y, 0.0005, h, r, g, b, a) 
end
Kentas.F.Tables.Anim = {}

Kentas.F.Combos = {
	['Strength-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Stamina-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Lung-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Shooting-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Wheelie-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Driving-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Flying-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['RampProp'] = {
		a = 1,
		b = {'prop_jetski_ramp_01', 'lts_prop_lts_ramp_01', 'lts_prop_lts_ramp_02', 'lts_prop_lts_ramp_03', 'prop_mp_ramp_01_tu', 'prop_mp_ramp_03', 'prop_water_ramp_03'},
	},
	['EngineSound'] = {
		a = 1,
		b = {'Dinghy', 'Dinghy2', 'Dinghy3', 'Dingh4', 'Jetmax', 'Marquis', 'Seashark', 'Seashark2', 'Seashark3', 'Speeder', 'Speeder2', 'Squalo', 'Submersible', 'Submersible2', 'Suntrap', 'Toro', 'Toro2', 'Tropic', 'Tropic2', 'Tug', 'Benson', 'Biff', 'Cerberus', 'Cerberus2', 'Cerberus3', 'Hauler', 'Hauler2', 'Mule', 'Mule2', 'Mule3', 'Mule4', 'Packer', 'Phantom', 'Phantom2', 'Phantom3', 'Pounder', 'Pounder2', 'Stockade', 'Stockade3', 'Terbyte', 'Asbo', 'Blista', 'Brioso', 'Dilettante', 'Dilettante2', 'Kanjo', 'Issi2', 'Issi3', 'Issi4', 'Iss5', 'Issi6', 'Panto', 'Prarire', 'Rhapsody', 'Cogcabrio', 'Exemplar', 'F620', 'Felon', 'Felon2', 'Jackal', 'Oracle', 'Oracle2', 'Sentinel', 'Sentinel2', 'Windsor', 'Windsor2', 'Zion', 'Zion2', 'Bmx', 'Cruiser', 'Fixter', 'Scorcher', 'Tribike', 'Tribike2', 'Tribike3', 'Ambulance', 'Fbi', 'Fbi2', 'Firetruk', 'Lguard', 'Pbus', 'Police', 'Police2', 'Police3', 'Police4', 'Policeold1', 'Policeold2', 'Policet', 'Policeb', 'Polmav', 'Pranger', 'Predator', 'Riot', 'Riot2', 'Sheriff', 'Sheriff2', 'Akula', 'Annihilator', 'Buzzard', 'Buzzard2', 'Cargobob', 'Cargobob2', 'Cargobob3', 'Cargobob4', 'Frogger', 'Frogger2', 'Havok', 'Hunter', 'Maverick', 'Savage', 'Seasparrow', 'Skylift', 'Supervolito', 'Supervolito2', 'Swift', 'Swift2', 'Valkyrie', 'Valkyrie2', 'Volatus', 'Bulldozer', 'Cutter', 'Dump', 'Flatbed', 'Guardian', 'Handler', 'Mixer', 'Mixer2', 'Rubble', 'Tiptruck', 'Tiptruck2', 'Apc', 'Barracks', 'Barracks2', 'Barracks3', 'Barrage', 'Chernobog', 'Crusader', 'Halftrack', 'Khanjali', 'Minitank', 'Rhino', 'Scarab', 'Scarab2', 'Scarab3', 'Thruster', 'Trailersmall2', 'Akuma', 'Avarus', 'Bagger', 'Bati', 'Bati2', 'BF400', 'Carbonrs', 'Chimera', 'Cliffhanger', 'Daemon', 'Daemon2', 'Defiler', 'Deathbike', 'Deathbike2', 'Deathbike3', 'Diablous', 'Diablous2', 'Double', 'Enduro', 'Esskey', 'Faggio', 'Faggio2', 'Faggio3', 'Fcr', 'Fcr2', 'Gargoyle', 'Hakuchou', 'Hakuchou2', 'Hexer', 'Innovation', 'Lectro', 'Manchez', 'Nemesis', 'Nightblade', 'Oppressor', 'Oppressor2', 'Pcj', 'Rrocket', 'Ratbike', 'Ruffian', 'Sanchez', 'Sanchez2', 'Sanctus', 'Shotaro', 'Sovereign', 'Stryder', 'Thrust', 'Vader', 'Vindicator', 'Vortex', 'Wolfsbane', 'Zombiea', 'Zombieb', 'Blade', 'Buccaneer', 'Buccaneer2', 'Chino', 'Chino2', 'Clique', 'Coquette3', 'Deviant', 'Dominator', 'Dominator2', 'Dominator3', 'Dominator4', 'Dominator5', 'Dominator6', 'Dukes', 'Dukes2', 'Ellie', 'Faction', 'Faction2', 'Faction3', 'Gauntlet', 'Gauntlet2', 'Gauntlet3', 'Gauntlet4', 'Hermes', 'Hotknife', 'Hustler', 'Impaler', 'Impaler2', 'Impaler3', 'Impaler4', 'Imperator', 'Imperator2', 'Imperator3', 'Lurcher', 'Moonbeam', 'Moonbeam2', 'Nightshade', 'Peyote2', 'Phoenix', 'Picador', 'Ratloader', 'RatLoader2', 'Ruiner', 'Ruiner2', 'Ruiner3', 'Sabregt', 'Sabregt2', 'Slamvan', 'Slamvan2', 'Slamvan3', 'Slamvan4', 'Slamvan5', 'Slamvan6', 'Stalion', 'Stalion2', 'Tampa', 'Tampa3', 'Tulip', 'Vamos,', 'Vigero', 'Virgo', 'Virgo2', 'Virgo3', 'Voodoo', 'Voodoo2', 'Yosemite', 'Yosemite2', 'Bfinjection', 'Bifta', 'Blazer', 'Blazer2', 'Blazer3', 'Blazer4', 'Blazer5', 'Bohdi', 'Brawler', 'Bruiser', 'Bruiser2', 'Bruiser3', 'Brutus', 'Brutus2', 'Brutus3', 'Caracara', 'Caracara2', 'Dloader', 'Dubsta3', 'Dune', 'Dune2', 'Dune3', 'Dune4', 'Dune5', 'Everon', 'Freecrawler', 'Hellion', 'Insurgent', 'Insurgent2', 'Insurgent3', 'Kalahari', 'Kamacho', 'Marshall', 'Menacer', 'Outlaw', 'Mesa3', 'Monster', 'Monster3', 'Monster4', 'Monster5', 'Nightshark', 'Rancherxl', 'Rancherxl2', 'Rebel', 'Rebel2', 'Rcbandito', 'Riata', 'Sandking', 'Sandking2', 'Technical', 'Technical2', 'Technical3', 'Trophytruck', 'Trophytruck2', 'Vagrant', 'Zhaba', 'Alphaz1', 'Avenger', 'Avenger2', 'Besra', 'Blimp', 'Blimp2', 'Blimp3', 'Bombushka', 'Cargoplane', 'Cuban800', 'Dodo', 'Duster', 'Howard', 'Hydra', 'Jet', 'Lazer', 'Luxor', 'Luxor2', 'Mammatus', 'Microlight', 'Miljet', 'Mogul', 'Molotok', 'Nimbus', 'Nokota', 'Pyro', 'Rogue', 'Seabreeze', 'Shamal', 'Starling', 'Striekforce', 'Stunt', 'Titan', 'Tula', 'Velum', 'Velum2', 'Vestra', 'Volatol', 'Bjxl', 'Baller', 'Baller2', 'Baller3', 'Baller4', 'Baller5', 'Baller6', 'Cavalcade', 'Cavalcade2', 'Contender', 'Dubsta', 'Dubsta2', 'Fq2', 'Granger', 'Gresley', 'Habanero', 'Huntley', 'Landstalker', 'Mesa', 'Mesa2', 'Novak', 'Patriot', 'Patriot2', 'Radi', 'Rebla', 'Rocoto', 'Seminole', 'Serrano', 'Toros', 'Xls', 'Xls2', 'Asea', 'Asea2', 'Asterope', 'Cog55', 'Cogg552', 'Cognoscenti', 'Cognoscenti2', 'Emperor', 'Emperor2', 'Emperor3', 'Fugitive', 'Glendale', 'Ingot', 'Intruder', 'Limo2', 'Premier', 'Primo', 'Primo2', 'Regina', 'Romero', 'Stafford', 'Stanier', 'Stratum', 'Stretch', 'Superd', 'Surge', 'Tailgater', 'Warrener', 'Washington', 'Airbus', 'Brickade', 'Bus', 'Coach', 'Pbus2', 'Rallytruck', 'Rentalbus', 'Taxi', 'Tourbus', 'Trash', 'Trash2', 'Wastelander', 'Alpha', 'Banshee', 'Bestiagts', 'Blista2', 'Blista3', 'Buffalo', 'Buffalo2', 'Buffalo3', 'Carbonizzare', 'Comet2', 'Comet3', 'Comet4', 'Comet5', 'Coquette', 'Drafter', 'Deveste', 'Elegy', 'Elegy2', 'Feltzer2', 'FlashGT', 'Furoregt', 'Fusilade', 'Futo', 'Gb200', 'Hotring', 'Komoda', 'Imorgon', 'Issi7', 'Italigto', 'Jester', 'Jester2', 'Jester3', 'Jugular', 'Khamelion', 'Kuruma', 'Kuruma2', 'Locust', 'Lynx', 'Massacro', 'Massacro2', 'Neo', 'Neon', 'Ninef', 'Ninef2', 'Omnis', 'Paragon', 'Paragon2', 'Pariah', 'Penumbra', 'Raiden', 'Rapidgt', 'Rapidgt2', 'Raptor', 'Revolter', 'Ruston', 'Schafter2', 'Schafter3', 'Schafter4', 'Schafter5', 'Schafter6', 'Schlagen', 'Schwarzer', 'Sentinel3', 'Seven70', 'Specter', 'Specter2', 'Streiter', 'Sugoi', 'Sultan', 'Sultan2', 'Surano', 'Tampa2', 'Tropos', 'Verlierer2', 'Vstr', 'Zr380', 'Zr3802', 'Zr3803', 'Ardent', 'Btype', 'Btype2', 'Btype3', 'Casco', 'Cheetah2', 'Cheburek', 'Coquette2', 'Deluxo', 'Dynasty', 'Fagaloa', 'Feltzer3', 'Gt500', 'Infernus2', 'Jb700', 'Jb7002', 'Mamba', 'Manana', 'Michelli', 'Monroe', 'Nebula', 'Peyote', 'Pigalle', 'Rapidgt3', 'Retinue', 'Retinue2', 'Savestra', 'Stinger', 'Stingergt', 'Stromberg', 'Swinger', 'Torero', 'Tornado', 'Tornado2', 'Tornado3', 'Tornado4', 'Tornado5', 'Tornado6', 'Turismo2', 'Viseris', 'Z190', 'Ztype', 'Zion3', 'Adder', 'Autarch', 'Banshee2', 'Bullet', 'Cheetah', 'Cyclone', 'Entity2', 'Entityxf', 'Emerus', 'Fmj', 'Gp1', 'Infernus', 'Italigtb', 'Italigtb2', 'Krieger', 'Le7b', 'Nero', 'Nero2', 'Osiris', 'Penetrator', 'Pfister811', 'Prototipo', 'Reaper', 'S80', 'Sc1', 'Scramjet', 'Sheava', 'SultanRS', 'T20', 'Taipan', 'Tempesta', 'Tezeract', 'Thrax', 'Turismor', 'Tyrant', 'Tyrus', 'Vacca', 'Vagner', 'Vigilante', 'Visione', 'Voltic', 'Voltic2', 'Zentorno', 'Xa21', 'Zorrusso', 'Armytanker', 'Armytrailer', 'Armytrailer2', 'Baletrailer', 'Boattrailer', 'Cablecar', 'Docktrailer', 'Freighttrailer', 'Graintrailer', 'Proptrailer', 'Raketailer', 'Tr2', 'Tr3', 'Tr4', 'Trflat', 'Tvtrailer', 'Tanker', 'Tanker2', 'Trailerlarge', 'Trailerlogs', 'Trailersmall', 'Trailers', 'Trailers2', 'Trailers3', 'Trailers4', 'Freight', 'Freightcar', 'Freightcont1', 'Freightcont2', 'Freightgrain', 'Metrotrain', 'Tankercar', 'Airtug', 'Caddy', 'Caddy2', 'Caddy3', 'Docktug', 'Forklift', 'Mower', 'Ripley', 'Sadler', 'Sadler2', 'Scrap', 'Towrruck', 'Towtruck2', 'Tractor', 'Tractor2', 'Tractor3', 'Utillitruck', 'Utillitruck3', 'Utillitruck2', 'Bison', 'Bison2', 'Bison3', 'Bobcatxl', 'Boxville', 'Boxville2', 'Boxville3', 'Boxville4', 'Boxville5', 'Burrito', 'Burrito2', 'Burrito3', 'Burrito4', 'Burrito5', 'Camper', 'Gburrito', 'Gburrito2', 'Journey', 'Minivan', 'Minivan2', 'Paradise', 'Pony', 'Pony2', 'Rumpo', 'Rumpo2', 'Rumpo3', 'Speedo', 'Speedo2', 'Speedo4', 'Surfer', 'Surfer2', 'Taco', 'Youga', 'Youga2'},
	},
	['time-hours'] = {
		a = 12,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23},
	},
	['Taze-Time'] = {
		a = 50,
		b = {100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000, 3100, 3200, 3300, 3400, 3500, 3600, 3700, 3800, 3900, 4000, 4100, 4200, 4300, 4400, 4500, 4600, 4700, 4800, 4900, 5000},
	},
	['aimnaimation'] = {
		a = 1,
		b = {'sit', 'upside down', 'sit 2', 'normal'},
		c = {'SCRIPTED_GUN_TASK_PRONE_BACK_RIFLE', 'SCRIPTED_GUN_TASK_HANGING_UPSIDE_DOWN', 'SCRIPTED_GUN_TASK_DINGY_RPG', ''}
	},
	['time-minute'] = {
		a = 15,
		b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59},
	},
	['time-Seconds'] = {
		a = 37,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59},
	},
	['vehiclemaxspeed'] = {
		a = 1,
		b = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000},
	},
	['Menu-Style'] = {
		a = 1,
		b = {'Kentas', 'Kentas'}
	},
	['maxoptcountonscreen'] = {
		a = 8,
		b = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40}
	},
	['ArmourPos'] = {
		a = 1,
		b = {'left', 'right'},
	},
	['HealthPos'] = {
		a = 1,
		b = {'left', 'right'},
	},
	['Animations'] = {
		a = 1,
		b = {
			{lib = "gestures@m@standing@casual", anim = "gesture_hello", name = 'Hello'},
			{lib = "gestures@m@standing@casual", anim = "gesture_point", name = 'Point'},
			{lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on", name = 'Bring it on'},
			{lib = "gestures@m@standing@casual", anim = "gesture_me", name = 'Me'},
			{lib = "gestures@m@standing@casual", anim = "gesture_easy_now", name = 'Easy'},
			{lib = "gestures@m@standing@casual", anim = "gesture_damn", name = 'Damn'},
			{lib = "rcmpaparazzo_2", anim = "shag_loop_poppy", name = 'Get sex'},
			{lib = "rcmpaparazzo_2", anim = "shag_loop_a", name = 'Do sex'},
			{lib = "oddjobs@taxi@tie", anim = "vomit_outside", name = 'Taxi tie'},
			{lib = "mp_ped_interaction", anim = "handshake_guy_a", name = 'Handshake'},
			{lib = "mp_ped_interaction", anim = "hugs_guy_a", name = 'Hug'},
			{lib = "mp_ped_interaction", anim = "kisses_guy_a", name = 'Hug 2'},
			{lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute", name = 'Salut'},
			{lib = "random@arrests@busted", anim = "idle_c", name = 'Arrest 1'},
			{lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f", name = 'Police investigate'},
			{lib = "random@arrests", anim = "generic_radio_chatter", name = 'Radio speaking'},
			{lib = "mini@repair", anim = "fixing_a_ped", name = 'Repairing'},
			{lib = "oddjobs@taxi@driver", anim = "leanover_idle", name = 'Taxi driver'},
			{lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger", name = 'Taxi passenger'},
			{lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper", name = 'Shopkeeper'},
			{lib = "mini@drinking", anim = "shots_barman_b", name = 'Barman'},
			{lib = "mp_action", anim = "thanks_male_06", name = 'Thanks M'},
			{lib = "anim@am_hold_up@male", anim = "shoplift_high", name = 'Shoplift'},
			{lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm", name = 'Face palm'},
			{lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a", name = 'Reaction: Big'},
			{lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right", name = 'React cowering'},
			{lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter", name = 'Fuck you'},
			{lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01", name = 'Upper wank'},
			{lib = "mp_suicide", anim = "pistol", name = 'Suicide'},
			{lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base", name = 'Muscle flex'},
			{lib = "amb@world_human_push_ups@male@base", anim = "base", name = 'Push ups'},
			{lib = "amb@world_human_sit_ups@male@base", anim = "base", name = 'Sit'},
			{lib = "amb@world_human_yoga@male@base", anim = "base_a", name = 'Yoga'},
			{lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a", name = 'Coffee'},
			{lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female", name = 'T-Pose'},
			{lib = "mini@safe_cracking", anim = "idle_base", name = 'Safe crack'}, 
			{lib = "oddjobs@towing", anim = "m_blow_job_loop", name = 'M Blow job'},
			{lib = "oddjobs@towing", anim = "f_blow_job_loop", name = 'F Blow job'},
			{lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player", name = 'Car sex 1'},
			{lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female", name = 'Car sex 2'},
			{lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02", name = 'Stripper dance'},
			{lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2", name = 'Private dance 2'},
			{lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3", name = 'Private dance 3'},
		},
	},
	['RampStyle'] = {
		a = 1,
		b = {"Bumper"},
	},
	['Aimbot type'] = {
		a = 1,
		b = {'Normal', 'Aimlock', 'Ragebot'},
	},
	['Bone'] = {
		a = 1,
		b = {'Head', 'Neck', 'Torso', 'Left-Hand', 'Right-Hand', 'Pelvis', 'Left-Knee', 'Right-Knee'},
		c = {31086, 39317, 0, 18905, 57005, 11816, 46078, 16335},
	},
	
	['Melees'] = {
		a = 1,
		b = {"Knife", "Dagger", "Switchblade", "Hatchet", "Machete", "Bat",  "Golfclub", "Poolcue", "Nightstick", "Crowbar", "Pipewrench", "Hammer", "Flashlight", "Knuckle", "Bottle"},
		c = {
			['Knife'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a7/Knife-GTAV.png/revision/latest/scale-to-width-down/310?cb=20130920185917',
			['Dagger'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ce/AntiqueCavalryDagger-GTAV.png/revision/latest/scale-to-width-down/310?cb=20140617174635',
			['Switchblade'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/Switchblade-GTAV.png/revision/latest/scale-to-width-down/310?cb=20161021210105',
			['Hatchet'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/9/94/Hatchet-GTAV.png/revision/latest/scale-to-width-down/310?cb=20150314101925',
			['Machete'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/4/44/Machete-GTAV.png/revision/latest/scale-to-width-down/310?cb=20160627121720',
			['Bat'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/5/59/BaseballBat-GTAV.png/revision/latest/scale-to-width-down/309?cb=20160612221707',
			['Golfclub'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/9/97/GolfClub-GTAV.png/revision/latest/scale-to-width-down/310?cb=20131004164724',
			['Poolcue'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/PoolCue-GTAV.png/revision/latest/scale-to-width-down/310?cb=20161004162043',
			['Nightstick'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/1/19/Nightstick-GTAV.png/revision/latest/scale-to-width-down/310?cb=20130920191745',
			['Crowbar'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6d/Crowbar-GTAV.png/revision/latest/scale-to-width-down/350?cb=20131017171932',
			['Pipewrench'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/64/PipeWrench-GTAV.png/revision/latest/scale-to-width-down/350?cb=20161004164114',
			['Hammer'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/8/88/Hammer-GTAV.png/revision/latest/scale-to-width-down/310?cb=20150521154405',
			['Flashlight'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/8/88/Flashlight-GTAO.png/revision/latest/scale-to-width-down/310?cb=20151029165843',
			['Knuckle'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b7/BrassKnuckles-GTAV.png/revision/latest/scale-to-width-down/310?cb=20150708153813',
			['Bottle'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ce/Bottle-GTAV.png/revision/latest/scale-to-width-down/350?cb=20140207082902',
		},
	},
	['Handguns'] = {
		a = 1,
		b = {"PISTOL", "PISTOL_MK2", "COMBATPISTOL", "APPISTOL", "PISTOL50", "SNSPISTOL", "SNSPISTOL_MK2", "HEAVYPISTOL", "VINTAGEPISTOL", "STUNGUN", "FLAREGUN"},
		c = {
			['PISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/f/f4/Pistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211628", 
			['PISTOL_MK2'] = "https://vignette.wikia.nocookie.net/gtawiki/images/4/46/PistolMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210825", 
			['COMBATPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/8/87/CombatPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204417", 
			['APPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/3/34/APPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203433", 
			['PISTOL50'] = "https://vignette.wikia.nocookie.net/gtawiki/images/e/e6/Pistol.50-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210758", 
			['SNSPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/1/17/SNSPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211527", 
			['SNSPISTOL_MK2'] = "https://vignette.wikia.nocookie.net/gtawiki/images/0/01/SNSPistolMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211544", 
			['HEAVYPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/1/1f/HeavyPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204936", 
			['VINTAGEPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/5/5c/VintagePistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211655", 
			['STUNGUN'] = "https://vignette.wikia.nocookie.net/gtawiki/images/8/86/StunGun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211633", 
			['FLAREGUN'] = "https://vignette.wikia.nocookie.net/gtawiki/images/c/c0/FlareGun-GTAO.png/revision/latest/scale-to-width-down/350?cb=20180108204710"
		},
	},
	['SMG'] = {
		a = 1,
		b = {"MICROSMG", "MINISMG", "SMG", "SMG_MK2", "ASSAULTSMG", "COMBATPDW", "GUSENBERG", "MACHINEPISTOL", "MG", "COMBATMG", "COMBATMG_MK2"},
		c = {
			["MICROSMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/72/MicroSMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210032', 
			["MINISMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/60/MiniSMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210116',
			["SMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/SMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195433', 
			["SMG_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9e/SMGMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195635',
			["ASSAULTSMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/0/08/AssaultSMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195945', 
			["COMBATPDW"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/2/25/CombatPDW-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200353',
			['GUSENBERG'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/74/GusenbergSweeper-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204918',
			["MACHINEPISTOL"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c4/MachinePistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195137',
			["MG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/7c/MG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108205933',
			["COMBATMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c4/CombatMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204317',
			["COMBATMG_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/cc/CombatMGMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204355',
		},
	},
	['Rifle'] = {
		a = 1,
		b = {"ASSAULTRIFLE", "ASSAULTRIFLE_MK2", "CARBINERIFLE", "CARBINERIFLE_MK2", "ADVANCEDRIFLE", "SPECIALCARBINE", "SPECIALCARBINE_MK2", "BULLPUPRIFLE", "BULLPUPRIFLE_MK2", "COMPACTRIFLE"},
		c = {
			["ASSAULTRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e6/AssaultRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203942',
			["ASSAULTRIFLE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5f/AssaultRifleMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203958',
			["CARBINERIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e1/CarbineRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204035',
			["CARBINERIFLE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/78/CarbineRifleMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204036',
			["ADVANCEDRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/AdvancedRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200521', 
			["SPECIALCARBINE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e8/SpecialCarbine-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200839',
			["SPECIALCARBINE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/b/bd/SpecialCarbineMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200905',
			["BULLPUPRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d2/BullpupRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108201107',
			["BULLPUPRIFLE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5e/BullpupRifleMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108201133',
			["COMPACTRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8c/CompactRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108201447',
		},
	},
	['Shotguns'] = {
		a = 1,
		b = {"PUMPSHOTGUN", "PUMPSHOTGUN_MK2", "SWEEPERSHOTGUN", "SAWNOFFSHOTGUN", "BULLPUPSHOTGUN","ASSAULTSHOTGUN", "MUSKET", "HEAVYSHOTGUN", "DBSHOTGUN"},
		c = {
			["PUMPSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6f/PumpShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202354',
			["PUMPSHOTGUN_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/1/14/PumpShotgunMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202428',
			["SWEEPERSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/d/dc/SweeperShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203310',
			["SAWNOFFSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e4/SawedOffShotgun-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108202444',
			["BULLPUPSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/d/dc/BullpupShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202503',
			["ASSAULTSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/ef/AssaultShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202910',
			["MUSKET"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/Musket-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202945', 
			["HEAVYSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/0/0a/HeavyShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202953', 
			["DBSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b3/DoubleBarrelShotgun-GTAO.png/revision/latest/scale-to-width-down/350?cb=20180108203004',
		},
	},
	['Heavy'] = {
		a = 1,
		b = {"CompactGrenadeLauncher", "FireworkLauncher", "GrenadeLauncher", "HomingLauncher", "Minigun", "Railgun",  "RPG"},
		c = {
			['CompactGrenadeLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/6/61/CompactGrenadeLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108203355',
			['FireworkLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/01/FireworkLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108203338',
			['GrenadeLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/9/98/GrenadeLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108204737',
			['HomingLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/8/8a/HomingLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108205802',
			['Minigun'] = 'https://static.wikia.nocookie.net/gtawiki/images/5/5c/Minigun-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108210056',
			['Railgun'] = 'https://static.wikia.nocookie.net/gtawiki/images/2/2e/Railgun-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108210857',
			['RPG'] = 'https://static.wikia.nocookie.net/gtawiki/images/2/24/RPG-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108210919',
		},
	},
	['Snipers'] = {
		a = 1,
		b = {"HeavySniper", "HeavySniper_MK2", "MarksmanRifle", "MarksmanRifle_MK2", "SniperRifle"},
		c = {
			['HeavySniper'] = 'https://static.wikia.nocookie.net/gtawiki/images/7/71/HeavySniper-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201619',
			['HeavySniper_MK2'] = 'https://static.wikia.nocookie.net/gtawiki/images/f/f9/HeavySniperMkII-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201713',
			['MarksmanRifle'] = 'https://static.wikia.nocookie.net/gtawiki/images/5/5c/MarksmanRifle-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201724',
			['MarksmanRifle_MK2'] = 'https://static.wikia.nocookie.net/gtawiki/images/3/33/MarksmanRifleMkII-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201720',
			['SniperRifle'] = 'https://static.wikia.nocookie.net/gtawiki/images/6/6e/SniperRifle-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201526',
		},
	},
	['SetHP'] = {
		a = 101,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100},
	},
	['SetArmour'] = {
		a = 101,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100},
	},
	['Throwable'] = {
		a = 1,
		b = {
			"Flare", "Grenade", "PipeBomb", "Snowball", "StickyBomb", "TearGas",
		},
		c = { 
			['Flare'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/00/Flare-GTAV.png/revision/latest/scale-to-width-down/350?cb=20210115143539',
			['Grenade'] = 'https://static.wikia.nocookie.net/gtawiki/images/5/52/Grenade-GTAV.png/revision/latest/scale-to-width-down/350?cb=20190809090848',
			['PipeBomb'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/08/PipeBomb-GTAV.png/revision/latest/scale-to-width-down/350?cb=20161004161717',
			['Snowball'] = 'https://static.wikia.nocookie.net/gtawiki/images/b/bd/Snowball-GTAO.png/revision/latest/scale-to-width-down/300?cb=20161222143911',
			['StickyBomb'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/09/StickyBomb-GTAV.png/revision/latest/scale-to-width-down/350?cb=20130929074646',
			['TearGas'] = 'https://static.wikia.nocookie.net/gtawiki/images/a/af/TearGas-GTAV.png/revision/latest/scale-to-width-down/350?cb=20140204074533',
		},
	},
	['wardrobe-hat'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-mask'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-glasses'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-Torso'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-TSHIRT'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-Shoes'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-Pants'] = {
		a = 1,
		b = {1},
	},
	
	
	

	

	['Male'] = {
		a = 1,
		b = {"a_m_m_acult_01", "a_m_m_afriamer_01", "a_m_m_beach_01", "a_m_m_beach_02", "a_m_m_bevhills_01", "a_m_m_bevhills_02", "a_m_m_business_01", "a_m_m_eastsa_01", "a_m_m_eastsa_02", "a_m_m_farmer_01", "a_m_m_fatlatin_01", "a_m_m_genfat_01", "a_m_m_genfat_02", "a_m_m_golfer_01", "a_m_m_hasjew_01", "a_m_m_hillbilly_01", "a_m_m_hillbilly_02", "a_m_m_indian_01", "a_m_m_ktown_01", "a_m_m_malibu_01", "a_m_m_mexcntry_01", "a_m_m_mexlabor_01", "a_m_m_og_boss_01", "a_m_m_paparazzi_01", "a_m_m_polynesian_01", "a_m_m_prolhost_01", "a_m_m_rurmeth_01", "a_m_m_salton_01", "a_m_m_salton_02", "a_m_m_salton_03", "a_m_m_salton_04", "a_m_m_skater_01", "a_m_m_skidrow_01", "a_m_m_socenlat_01", "a_m_m_soucent_01", "a_m_m_soucent_02", "a_m_m_soucent_03", "a_m_m_soucent_04", "a_m_m_stlat_02", "a_m_m_tennis_01", "a_m_m_tourist_01", "a_m_m_tramp_01", "a_m_m_trampbeac_01", "a_m_m_tranvest_01", "a_m_m_tranvest_02", "a_m_o_acult_01", "a_m_o_acult_02", "a_m_o_beach_01", "a_m_o_genstreet_01", "a_m_o_ktown_01", "a_m_o_salton_01", "a_m_o_soucent_01", "a_m_o_soucent_02", "a_m_o_soucent_03", "a_m_o_tramp_01", "a_m_y_acult_01", "a_m_y_acult_01", "a_m_y_beach_01", "a_m_y_beach_02", "a_m_y_beach_03", "a_m_y_beachvesp_01", "a_m_y_beachvesp_02", "a_m_y_bevhills_01", "a_m_y_bevhills_02", "a_m_y_breakdance_01", "a_m_y_busicas_01", "a_m_y_business_01", "a_m_y_business_02", "a_m_y_business_03", "a_m_y_clubcust_01", "a_m_y_clubcust_02", "a_m_y_clubcust_03", "a_m_y_cyclist_01", "a_m_y_dhill_01", "a_m_y_downtown_01", "a_m_y_eastsa_01", "a_m_y_eastsa_02", "a_m_y_epsilon_01", "a_m_y_epsilon_02", "a_m_y_gay_01", "a_m_y_gay_02", "a_m_y_genstreet_01", "a_m_y_genstreet_02", "a_m_y_golfer_01", "a_m_y_hasjew_01", "a_m_y_hiker_01", "a_m_y_hippy_01", "a_m_y_hipster_01", "a_m_y_hipster_02", "a_m_y_hipster_03", "a_m_y_indian_01", "a_m_y_jetski_01", "a_m_y_juggalo_01", "a_m_y_ktown_01", "a_m_y_ktown_02", "a_m_y_latino_01", "a_m_y_methhead_01", "a_m_y_mexthug_01", "a_m_y_motox_01", "a_m_y_motox_02", "a_m_y_musclbeac_01", "a_m_y_musclbeac_02", "a_m_y_polynesian_01", "a_m_y_roadcyc_01", "a_m_y_runner_01", "a_m_y_runner_02", "a_m_y_salton_01", "a_m_y_skater_01", "a_m_y_skater_02", "a_m_y_soucent_01", "a_m_y_soucent_02", "a_m_y_soucent_03", "a_m_y_soucent_04", "a_m_y_stbla_01", "a_m_y_stbla_02", "a_m_y_stlat_01", "a_m_y_stwhi_01", "a_m_y_stwhi_02", "a_m_y_sunbathe_01", "a_m_y_surfer_01", "a_m_y_vindouche_01", "a_m_y_vinewood_01", "a_m_y_vinewood_02", "a_m_y_vinewood_03",  "a_m_y_vinewood_04", "a_m_y_yoga_01", "a_m_m_mlcrisis_01", "a_m_y_gencaspat_01",  "a_m_y_smartcaspat_01", "mp_m_freemode_01"},
	},
	['Female'] = {
		a = 1,
		b = {"a_f_m_beach_01", "a_f_m_bevhills_01", "a_f_m_bevhills_02", "a_f_m_bodybuild_01", "a_f_m_business_02", "a_f_m_downtown_01", "a_f_m_eastsa_01", "a_f_m_eastsa_02", "a_f_m_fatbla_01", "a_f_m_fatcult_01", "a_f_m_fatwhite_01", "a_f_m_ktown_01", "a_f_m_ktown_02", "a_f_m_prolhost_01", "a_f_m_salton_01", "a_f_m_skidrow_01", "a_f_m_soucent_01", "a_f_m_soucent_02", "a_f_m_soucentmc_01", "a_f_m_tourist_01", "a_f_m_tramp_01", "a_f_m_trampbeac_01", "a_f_o_genstreet_01", "a_f_o_indian_01", "a_f_o_ktown_01", "a_f_o_salton_01", "a_f_o_soucent_01", "a_f_o_soucent_02", "a_f_y_beach_01", "a_f_y_bevhills_01", "a_f_y_bevhills_02", "a_f_y_bevhills_03", "a_f_y_bevhills_04", "a_f_y_business_01", "a_f_y_business_02", "a_f_y_business_03", "a_f_y_business_04", "a_f_y_clubcust_01", "a_f_y_clubcust_02", "a_f_y_clubcust_03", "a_f_y_eastsa_01", "a_f_y_eastsa_02", "a_f_y_eastsa_03", "a_f_y_epsilon_01", "a_f_y_femaleagent", "a_f_y_fitness_01", "a_f_y_fitness_02", "a_f_y_genhot_01", "a_f_y_golfer_01", "a_f_y_hiker_01", "a_f_y_hippie_01", "a_f_y_hipster_01", "a_f_y_hipster_02", "a_f_y_hipster_03", "a_f_y_hipster_04", "a_f_y_indian_01", "a_f_y_juggalo_01", "a_f_y_runner_01", "a_f_y_rurmeth_01", "a_f_y_scdressy_01", "a_f_y_skater_01", "a_f_y_soucent_01", "a_f_y_soucent_02", "a_f_y_soucent_03",  "a_f_y_tennis_01", "a_f_y_topless_01", "a_f_y_tourist_01", "a_f_y_tourist_02", "a_f_y_yoga_01", "a_f_y_gencaspat_01"},
	},
	['Effects'] = {
		a = 1,
		b = {"mp_lad_day","mp_lad_judgment","mp_lad_night","AirRaceBoost01","AirRaceBoost02","AmbientPUSH","AP1_01_B_IntRefRange","AP1_01_C_NoFog","ArenaEMP","ArenaEMP_Blend","ArenaWheelPurple01","ArenaWheelPurple02","Bank_HLWD","Barry1_Stoned","BarryFadeOut","baseTONEMAPPING","BeastIntro01","BeastIntro02","BeastLaunch01","BeastLaunch02","BikerFilter","BikerForm01","BikerFormFlash","Bikers","BikersSPLASH","blackNwhite","BlackOut","BleepYellow01","BleepYellow02","Bloom","BloomLight","BloomMid","BombCam01","BombCamFlash","Broken_camera_fuzz","buggy_shack","buildingTOP","BulletTimeDark","BulletTimeLight","CAMERA_BW","CAMERA_secuirity","CAMERA_secuirity_FUZZ","canyon_mission","carMOD_underpass","carpark","carpark_dt1_02","carpark_dt1_03","Carpark_MP_exit","cashdepot","cashdepotEMERGENCY","casino_brightroom","casino_mainfloor","casino_mainWhiteFloor","casino_managementlobby","casino_managementOff","casino_managersoffice","CasinoBathrooms","cBank_back","cBank_front","ch2_tunnel_whitelight","CH3_06_water","CHOP","cinema","cinema_001","cops","CopsSPLASH","crane_cam","crane_cam_cinematic","CrossLine01","CrossLine02","CS1_railwayB_tunnel","CS3_rail_tunnel","CUSTOM_streetlight","damage","DeadlineKentas01","default","DefaultColorCode","dlc_casino_carpark","DLC_Casino_Garage","DONT_overide_sunpos","Dont_tazeme_bro","dont_tazeme_bro_b","downtown_FIB_cascades_opt","DrivingFocusDark","DrivingFocusLight","Drone_FishEye_Lens","DRUG_2_drive","Drug_deadman","Drug_deadman_blend","drug_drive_blend01","drug_drive_blend02","drug_flying_01","drug_flying_02","drug_flying_base","DRUG_gas_huffin","drug_wobbly","Drunk","dying","eatra_bouncelight_beach","epsilion","exile1_exit","exile1_plane","ExplosionJosh","EXT_FULLAmbientmult_art","ext_int_extlight_large","EXTRA_bouncelight","eyeINtheSKY","Facebook_NEW","facebook_serveroom","FIB_5","FIB_6","FIB_A","FIB_B","FIB_interview","FIB_interview_optimise","FinaleBank","FinaleBankexit","FinaleBankMid","fireDEPT","FORdoron_delete","Forest","fp_vig_black","fp_vig_blue","fp_vig_brown","fp_vig_gray","fp_vig_green","fp_vig_red","FrankilinsHOUSEhills","frankilnsAUNTS_new","frankilnsAUNTS_SUNdir","FRANKLIN","FranklinColorCode","FranklinColorCodeBasic","FranklinColorCodeBright","FullAmbientmult_interior","gallery_refmod","garage","gen_bank","glasses_black","Glasses_BlackOut","glasses_blue","glasses_brown","glasses_Darkblue","glasses_green","glasses_orange","glasses_pink","glasses_purple","glasses_red","glasses_Scuba","glasses_VISOR","glasses_yellow","gorge_reflection_gpu","gorge_reflectionoffset","gorge_reflectionoffset2","graveyard_shootout","grdlc_int_02","grdlc_int_02_trailer_cave","gunclub","gunclubrange","gunshop","gunstore","half_direct","hangar_lightsmod","Hanger_INTmods","heathaze","heist_boat","heist_boat_engineRoom","heist_boat_norain","helicamfirst","heliGunCam","Hicksbar","HicksbarNEW","hillstunnel","Hint_cam","hitped","hud_def_blur","hud_def_blur_switch","hud_def_colorgrade","hud_def_desat_cold","hud_def_desat_cold_kill","hud_def_desat_Franklin","hud_def_desat_Michael","hud_def_desat_Neutral","hud_def_desat_switch","hud_def_desat_Trevor","hud_def_desatcrunch","hud_def_flash","hud_def_focus","hud_def_Franklin","hud_def_lensdistortion","hud_def_lensdistortion_subtle","hud_def_Michael","hud_def_Trevor","ImpExp_Interior_01","IMpExt_Interior_02","IMpExt_Interior_02_stair_cage","InchOrange01","InchOrange02","InchPickup01","InchPickup02","InchPurple01","InchPurple02","INT_FullAmbientmult","INT_FULLAmbientmult_art","INT_FULLAmbientmult_both","INT_garage","INT_mall","INT_NO_fogALPHA","INT_NoAmbientmult","INT_NoAmbientmult_art","INT_NoAmbientmult_both","INT_NOdirectLight","INT_nowaterREF","INT_posh_hairdresser","INT_smshop","INT_smshop_indoor_bloom","INT_smshop_inMOD","INT_smshop_outdoor_bloom","INT_streetlighting","INT_trailer_cinema","id1_11_tunnel","impexp_interior_01_lift","int_amb_mult_large","int_arena_01","int_arena_Mod","int_arena_Mod_garage","int_arena_VIP","int_Barber1","int_carmod_small","int_carrier_control","int_carrier_control_2","int_carrier_hanger","int_carrier_rear","int_carrier_stair","int_carshowroom","int_chopshop","int_clean_extlight_large","int_clean_extlight_none","int_clean_extlight_small","int_ClothesHi","int_clotheslow_large","int_cluckinfactory_none","int_cluckinfactory_small","int_ControlTower_none","int_ControlTower_small","int_dockcontrol_small","int_extlght_sm_cntrst","int_extlight_large","int_extlight_large_fog","int_extlight_none","int_extlight_none_dark","int_extlight_none_dark_fog","int_extlight_none_fog","int_extlight_small","int_extlight_small_clipped","int_extlight_small_fog","int_Farmhouse_none","int_Farmhouse_small","int_FranklinAunt_small","int_GasStation","int_hanger_none","int_hanger_small","int_Hospital_Blue","int_Hospital_BlueB","int_hospital_dark","int_Hospital_DM","int_hospital_small","int_Hospital2_DM","int_lesters","int_Lost_none","int_Lost_small","int_methlab_small","int_motelroom","int_office_Lobby","int_office_LobbyHall","int_tattoo","int_tattoo_B","int_tunnel_none_dark","interior_WATER_lighting","introblue","jewel_gas","jewel_optim","jewelry_entrance","jewelry_entrance_INT","jewelry_entrance_INT_fog","Kifflom","KT_underpass","lab_none","lab_none_dark","lab_none_dark_fog","lab_none_dark_OVR","lab_none_exit","lab_none_exit_OVR","LectroDark","LectroLight","LIGHTSreduceFALLOFF","li","LifeInvaderLOD","lightning","lightning_cloud","lightning_strong","lightning_weak","LightPollutionHills","lightpolution","LODmult_global_reduce","LODmult_global_reduce_NOHD","LODmult_HD_orphan_LOD_reduce","LODmult_HD_orphan_reduce","LODmult_LOD_reduce","LODmult_SLOD1_reduce","LODmult_SLOD2_reduce","LODmult_SLOD3_reduce","lodscaler","LostTimeDark","LostTimeFlash","LostTimeLight","maxlodscaler","metro","METRO_platform","METRO_Tunnels","METRO_Tunnels_entrance","MichaelColorCode","MichaelColorCodeBasic","MichaelColorCodeBright","MichaelsDarkroom","MichaelsDirectional","MichaelsNODirectional","micheal","micheals_lightsOFF","michealspliff","michealspliff_blend","michealspliff_blend02","militarybase_nightlight","mineshaft","morebloom","morgue_dark","morgue_dark_ovr","Mp_apart_mid","MP_Arena_theme_atlantis","MP_Arena_theme_evening","MP_Arena_theme_hell","MP_Arena_theme_midday","MP_Arena_theme_morning","MP_Arena_theme_night","MP_Arena_theme_saccharine","MP_Arena_theme_sandstorm","MP_Arena_theme_scifi_night","MP_Arena_theme_storm","MP_Arena_theme_toxic","MP_Arena_VIP","mp_battle_int01","mp_battle_int01_dancefloor","mp_battle_int01_dancefloor_OFF","mp_battle_int01_entry","mp_battle_int01_garage","mp_battle_int01_office","mp_battle_int02","mp_battle_int03","mp_battle_int03_tint1","mp_battle_int03_tint2","mp_battle_int03_tint3","mp_battle_int03_tint4","mp_battle_int03_tint5","mp_battle_int03_tint6","mp_battle_int03_tint7","mp_battle_int03_tint8","mp_battle_int03_tint9","mp_bkr_int01_garage","mp_bkr_int01_small_rooms","mp_bkr_int01_transition","mp_bkr_int02_garage","mp_bkr_int02_hangout","mp_bkr_int02_small_rooms","mp_bkr_ware01","mp_bkr_ware02_dry","mp_bkr_ware02_standard","mp_bkr_ware02_upgrade","mp_bkr_ware03_basic","mp_bkr_ware03_upgrade","mp_bkr_ware04","mp_bkr_ware05","MP_Bull_tost","MP_Bull_tost_blend","MP_casino_apartment_bar","MP_casino_apartment_barPARTY","MP_casino_apartment_barPARTY_0","MP_casino_apartment_barPARTY_01","MP_casino_apartment_barPARTY_2","MP_casino_apartment_Bath","MP_casino_apartment_changing","MP_casino_apartment_cinema","MP_casino_apartment_colour0","MP_casino_apartment_colour1","MP_casino_apartment_colour2","MP_casino_apartment_exec","MP_casino_apartment_lobby","MP_casino_apartment_lounge","MP_casino_apartment_MBed","MP_casino_apartment_office","MP_casino_apartment_spa","MP_corona_heist","MP_corona_heist_blend","MP_corona_heist_BW","MP_corona_heist_BW_night","MP_corona_heist_DOF","MP_corona_heist_night","MP_corona_heist_night_blend","MP_corona_selection","MP_corona_switch","MP_corona_tournament","MP_corona_tournament_DOF","MP_death_grade","MP_death_grade_blend01","MP_death_grade_blend02","MP_deathfail_night","mp_exec_office_01","mp_exec_office_02","mp_exec_office_03","mp_exec_office_03_blue","mp_exec_office_03C","mp_exec_office_04","mp_exec_office_05","mp_exec_office_06","mp_exec_warehouse_01","MP_Garage_L","mp_gr_int01_black","mp_gr_int01_grey","mp_gr_int01_white","MP_H_01_Bathroom","MP_H_01_Bedroom","MP_H_01_New","MP_H_01_New_Bathroom","MP_H_01_New_Bedroom","MP_H_01_New_Study","MP_H_01_Study","MP_H_02","MP_H_04","mp_h_05","MP_H_06","mp_h_07","mp_h_08","MP_heli_cam","mp_imx_intwaremed","mp_imx_intwaremed_office","mp_imx_mod_int_01","MP_intro_logo","MP_job_end_night","MP_job_load","MP_job_load_01","MP_job_load_02","MP_job_lose","MP_job_preload","MP_job_preload_blend","MP_job_preload_night","MP_job_win","MP_Killstreak","MP_Killstreak_blend","MP_Loser","MP_Loser_blend","MP_lowgarage","MP_MedGarage","mp_nightshark_shield_fp","MP_Powerplay","MP_Powerplay_blend","MP_race_finish","MP_select","mp_smg_int01_han","mp_smg_int01_han_blue","mp_smg_int01_han_red","mp_smg_int01_han_yellow","Mp_Stilts","Mp_Stilts_gym","Mp_Stilts_gym2","Mp_Stilts2","Mp_Stilts2_bath","MP_Studio_Lo","mp_x17dlc_base","mp_x17dlc_base_dark","mp_x17dlc_base_darkest","mp_x17dlc_facility","mp_x17dlc_facility_conference","mp_x17dlc_facility2","mp_x17dlc_in_sub","mp_x17dlc_in_sub_no_reflection","mp_x17dlc_int_01","mp_x17dlc_int_01_tint1","mp_x17dlc_int_01_tint2","mp_x17dlc_int_01_tint3","mp_x17dlc_int_01_tint4","mp_x17dlc_int_01_tint5","mp_x17dlc_int_01_tint6","mp_x17dlc_int_01_tint7","mp_x17dlc_int_01_tint8","mp_x17dlc_int_01_tint9","mp_x17dlc_int_02","mp_x17dlc_int_02_hangar","mp_x17dlc_int_02_outdoor_intro_camera","mp_x17dlc_int_02_tint1","mp_x17dlc_int_02_tint2","mp_x17dlc_int_02_tint3","mp_x17dlc_int_02_tint4","mp_x17dlc_int_02_tint5","mp_x17dlc_int_02_tint6","mp_x17dlc_int_02_tint7","mp_x17dlc_int_02_tint8","mp_x17dlc_int_02_tint9","mp_x17dlc_int_02_vehicle_avenger_camera","mp_x17dlc_int_02_vehicle_workshop_camera","mp_x17dlc_int_02_weapon_avenger_camera","mp_x17dlc_int_silo","mp_x17dlc_int_silo_escape","mp_x17dlc_lab","mp_x17dlc_lab_loading_bay","MPApart_H_01","MPApart_H_01_gym","MPApartHigh","MPApartHigh_palnning","mugShot","mugShot_lineup","Multipayer_spectatorCam","multiplayer_ped_fight","nervousRON_fog","NeutralColorCode","NeutralColorCodeBasic","NeutralColorCodeBright","NeutralColorCodeLight","NEW_abattoir","new_bank","NEW_jewel","NEW_jewel_EXIT","NEW_lesters","new_MP_Garage_L","NEW_ornate_bank","NEW_ornate_bank_entrance","NEW_ornate_bank_office","NEW_ornate_bank_safe","New_sewers","NEW_shrinksOffice","NEW_station_unfinished","new_stripper_changing","NEW_trevorstrailer","NEW_tunnels","NEW_tunnels_ditch","new_tunnels_entrance","NEW_tunnels_hole","NEW_yellowtunnels","NewMicheal","NewMicheal_night","NewMicheal_upstairs","NewMichealgirly","NewMichealstoilet","NewMichealupstairs","NewMod","nextgen","NG_blackout","NG_deathfail_BW_base","NG_deathfail_BW_blend01","NG_deathfail_BW_blend02","NG_filmic01","NG_filmic02","NG_filmic03","NG_filmic04","NG_filmic05","NG_filmic06","NG_filmic07","NG_filmic08","NG_filmic09","NG_filmic10","NG_filmic11","NG_filmic12","NG_filmic13","NG_filmic14","NG_filmic15","NG_filmic16","NG_filmic17","NG_filmic18","NG_filmic19","NG_filmic20","NG_filmic21","NG_filmic22","NG_filmic23","NG_filmic24","NG_filmic25","NG_filmnoir_BW01","NG_filmnoir_BW02","NG_first","nightvision","NO_coronas","NO_fog_alpha","NO_streetAmbient","NO_weather","NoAmbientmult","NoAmbientmult_interior","NOdirectLight","NoPedLight","NOrain","OrbitalCannon","overwater","Paleto","paleto_nightlight","paleto_opt","PennedInDark","PennedInLight","PERSHING_water_reflect","phone_cam","phone_cam1","phone_cam10","phone_cam11","phone_cam12","phone_cam13","phone_cam2","phone_cam3","phone_cam3_REMOVED","phone_cam4","phone_cam5","phone_cam6","phone_cam7","phone_cam8","phone_cam8_REMOVED","phone_cam9","plane_inside_mode","player_transition","player_transition_no_scanlines","player_transition_scanlines","PlayerSwitchNeutralFlash","PlayerSwitchPulse","plaza_carpark","PoliceStation","PoliceStationDark","polluted","poolsidewaterreflection2","PORT_heist_underwater","powerplant_nightlight","powerstation","PPFilter","PPGreen01","PPGreen02","PPOrange01","PPOrange02","PPPink01","PPPink02","PPPurple01","PPPurple02","prison_nightlight","projector","prologue","prologue_ending_fog","prologue_ext_art_amb","prologue_reflection_opt","prologue_shootout","Prologue_shootout_opt","pulse","RaceTurboDark","RaceTurboFlash","RaceTurboLight","ranch","REDMIST","REDMIST_blend","ReduceDrawDistance","ReduceDrawDistanceMAP","ReduceDrawDistanceMission","reducelightingcost","ReduceSSAO","reducewaterREF","refit","reflection_correct_ambient","RemixDrone","RemoteSniper","resvoire_reflection","rply_brightness","rply_brightness_neg","rply_contrast","rply_contrast_neg","rply_motionblur","rply_saturation","rply_saturation_neg","rply_vignette","rply_vignette_neg","SALTONSEA","sandyshore_nightlight","SAWMILL","scanline_cam","scanline_cam_cheap","scope_zoom_in","scope_zoom_out","secret_camera","services_nightlight","shades_pink","shades_yellow","SheriffStation","ship_explosion_underwater","ship_explosion_underwater","ship_lighting","Shop247","Shop247_none","sleeping","SmugglerCheckpoint01","SmugglerCheckpoint02","SmugglerFlash","Sniper","SP1_03_drawDistance","spectator1","spectator10","spectator2","spectator3","spectator4","spectator5","spectator6","spectator7","spectator8","spectator9","StadLobby","stc_coroners","stc_deviant_bedroom","stc_deviant_lounge","stc_franklinsHouse","stc_trevors","stoned","stoned_aliens","stoned_cutscene","stoned_monkeys","StreetLighting","StreetLightingJunction","StreetLightingtraffic","STRIP_changing","STRIP_nofog","STRIP_office","STRIP_stage","StuntFastDark","StuntFastLight","StuntSlowDark","StuntSlowLight","subBASE_water_ref","sunglasses","superDARK","switch_cam_1","switch_cam_2","telescope","TinyGreen01","TinyGreen02","TinyPink01","TinyPink02","TinyRacerMoBlur","torpedo","traffic_skycam","trailer_explosion_optimise","TransformFlash","TransformRaceFlash","TREVOR","TrevorColorCode","TrevorColorCodeBasic","TrevorColorCodeBright","Trevors_room","trevorspliff","trevorspliff_blend","trevorspliff_blend02","Tunnel","tunnel_entrance","tunnel_entrance_INT","TUNNEL_green","TUNNEL_green_ext","Tunnel_green1","tunnel_id1_11","TUNNEL_orange","TUNNEL_orange_exterior","TUNNEL_white","TUNNEL_yellow","TUNNEL_yellow_ext","ufo","ufo_deathray","underwater","underwater_deep","underwater_deep_clear","v_abattoir","V_Abattoir_Cold","v_bahama","v_cashdepot","V_CIA_Facility","v_dark","V_FIB_IT3","V_FIB_IT3_alt","V_FIB_IT3_alt5","V_FIB_stairs","v_foundry","v_janitor","v_jewel2","v_metro","V_Metro_station","V_Metro2","v_michael","v_michael_lounge","V_Office_smoke","V_Office_smoke_ext","V_Office_smoke_Fire","v_recycle","V_recycle_dark","V_recycle_light","V_recycle_mainroom","v_rockclub","V_Solomons","V_strip_nofog","V_strip_office","v_strip3","v_strpchangerm","v_sweat","v_sweat_entrance","v_sweat_NoDirLight","v_torture","Vagos","vagos_extlight_small","VAGOS_new_garage","VAGOS_new_hangout","VagosSPLASH","VC_tunnel_entrance","vehicle_subint","venice_canal_tunnel","vespucci_garage","VolticBlur","VolticFlash","VolticGold","warehouse","WAREHOUSE","WarpCheckpoint","WATER _lab_cooling","WATER_CH2_06_01_03","WATER_CH2_06_02","WATER_CH2_06_04","WATER_cove","WATER_hills","WATER_ID2_21","WATER_lab","WATER_lab_cooling","WATER_militaryPOOP","WATER_muddy","WATER_port","WATER_REF_malibu","WATER_refmap_high","WATER_refmap_hollywoodlake","WATER_refmap_low","WATER_refmap_med","WATER_refmap_off","WATER_refmap_poolside","WATER_refmap_silverlake","WATER_refmap_venice","WATER_refmap_verylow","WATER_resevoir","WATER_RichmanStuntJump","WATER_river","WATER_salton","WATER_salton_bottom","WATER_shore","WATER_silty","WATER_silverlake","WeaponUpgrade","whitenightlighting","WhiteOut","winning_room","yacht_DLC","yell_tunnel_nodirect"},
	},
	['CustomLocation'] = {
		a = 1,
		b = {"Ammunation", "Clothes Store", "BarberShop", "Car Dealer"},
	},
	['wantedlevel'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5},
	},
	['ChamsType'] = {
		a = 1,
		b = {'white', 'red', 'green', 'blue', 'galaxy1', 'galaxy2', 'lightning', 'clean'},
	},
	['ParticlesBone'] = {
		a = 1,
		b = {'Head', 'Neck', 'Torso', 'Left-Hand', 'Right-Hand', 'Pelvis', 'Left-Knee', 'Right-Knee'},
		c = {31086, 39317, 0, 18905, 57005, 11816, 46078, 16335},
	},
	['ParticlesOnl'] = {
		a = 1,
		b = {'Fire', 'Smoke', 'Fireworks', 'Smoke2', 'Clown', 'Water', 'Dirt', 'Alien', 'Explosion', "Stars", "bubble gum", "oranges"},
		c = {'core', 'scr_tplaces', 'scr_indep_fireworks', 'scr_powerplay', 'scr_rcbarry2', 'core', 'core', 'scr_rcbarry1', 'des_fib_floor', "scr_rcpaparazzo1", "core", "core"},
		d = {'ent_sht_petrol_fire', 'scr_tplaces_team_swap_nocash',  'scr_indep_firework_trail_spawn', 'scr_powerplay_beast_appear', 'sp_clown_appear_trails', 'exp_water', 'bul_dirt', 'scr_alien_disintegrate', 'ent_ray_fbi5a_ramp_explosion', "scr_mich4_firework_trailburst_spawn", "ent_dst_gen_gobstop", "ent_col_tree_oranges"},
	},
	['ExplodeTypeOnl'] = {
		a = 7,
		b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43},
	},
	['DoorsOnl'] = {
		a = 1,
		b = {"lock", "unlock", "open all", "close all", 'open front left', 'open front right', 'open left rear', 'open right rear', 'open mask', 'open trunk', 'close front left', 'close front right', 'close left rear', 'close right rear', 'close mask', 'close trunk'}
	},
	['SoundsOnl'] = {
		a = 1,
		b = {'Buldozer', 'End call', 'Beep', 'Beep2', 'Beep3', 'Beep4', 'Beep5', 'Power down', 'Explode'},
		c = {'DiggerRevOneShot', 'Hang_Up', 'PIN_BUTTON', 'Crash', 'Beep_Green', 'Power_Down', '3_2_1', 'ATM_WINDOW', 'Boss_Blipped'},
		d = {'BulldozerDefault', 'Phone_SoundSet_Michael', 'ATM_SOUNDS', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', 'HUD_MINI_GAME_SOUNDSET', 'HUD_FRONTEND_DEFAULT_SOUNDSET', 'GTAO_Magnate_Hunt_Boss_SoundSet'},
	},
	['KillUsingWeaponOnline'] = {
		a = 1,
		b = {"PISTOL", "PISTOL_MK2", "COMBATPISTOL", "APPISTOL", "REVOLVER", "REVOLVER_MK2","DOUBLEACTION","PISTOL50", "SNSPISTOL", "SNSPISTOL_MK2", "HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL","KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE", "DAGGER","HATCHET", "MACHETE", "FLASHLIGHT", "SWITCHBLADE","POOLCUE","PIPEWRENCH", "MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2","ASSAULTRIFLE","ASSAULTRIFLE_MK2", "CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE","PUMPSHOTGUN","PUMPSHOTGUN_MK2", "SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN","SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE", "MARKSMANRIFLE_MK2","GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB", "PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL"},
	},
	['RambyvehicleOnline'] = {
		a = 1,
		b = {'adder', 'banshee', 'rumpo', 'bus', 'banshee', 'bmx', 'pounder', 'Submersible', 'cutter'},
	},
	['AttachOnl'] = {
		a = 1,
		b = {"prop_beach_fire", "prop_alien_egg_01", "prop_barrel_exp_01c", "dt1_tc_ufocore", "stt_prop_stunt_track_straight", "stt_prop_stunt_bowling_ball", "prop_atm_01", "prop_atm_02"},
	},
	
	
	
	
}

Kentas.F.Tables.DeleteEntity = function(entity)
	if not Kentas.F.Tables.DoesEntityExist(entity) then 
        return 
    end
    Kentas.F.Tables.NetworkRequestControlOfEntity(entity) 
	Kentas.F.Tables.SetEntityAsMissionEntity(entity, true, true)
    Kentas.F.Tables.DeletePed(entity)
    Kentas.F.Tables.DeleteEEntity(entity)
    Kentas.F.Tables.DeleteObject(entity)
    Kentas.F.Tables.DeleteVehicle(entity)
    return true
end

Kentas.F.Funcs = {
	SpawnAddonVeh = function(v)
		local spawnname = Kentas.F.Tables.GetHashKey(v)
		Kentas.F.Tables.RequestModel(spawnname)
		while not Kentas.F.Tables.HasModelLoaded(spawnname) do
			__CitIn__.Wait(30)
		end
		local veh = Kentas.F.Tables.CreateVehicle(spawnname, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
		Kentas.F.Tables.Functions.Notify('Vehicle Spawned')
	end,
	ExtraSensoryOptions = function(effect)
		Kentas.F.Tables.SetExtraTimecycleModifier(effect)
	end,
	Binding = function(textb)
		Kentas.F.Tables.InputEnabled = true
		local clicked = nil
		while Kentas.F.Tables.InputEnabled do
			Kentas.F.OpenMenu = false
			Kentas.alpha = 0
			__CitIn__.Wait(0)
			Kentas.F.Tables.DisableAllControlActions()
			if textb ~= nil then
				Kentas.F.Tables.Functions.DrawTxt(textb..' | '..string.len(__KentasStrings__.strings:tostring(text)), 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, false)
			else
				Kentas.F.Tables.Functions.DrawTxt('Open key | '..string.len(__KentasStrings__.strings:tostring(text)), 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, false)
			end
			
			Kentas.F.Tables.DrawRect_U(0.5, 0.7, 0.221, 0.032, 66, 66, 66, 255)
			Kentas.F.Tables.DrawRect_U(0.5, 0.7, 0.22, 0.03, 22, 22, 22, 255)
			Kentas.F.Tables.DrawRect_U(0.5, 0.685, 0.22, 0.001, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, 255)
			
			

			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.Keys) do
				if Kentas.F.Tables.IsDisabledControlPressed(0, v) then
					clicked = v
					textxd = k
				end
			end
			if textxd ~= nil then
				Kentas.F.Tables.Functions.DrawTxt(textxd, 0.392, 0.688, 0.0, 0.35, {r = 255, g = 255, b = 255, a = 255}, false)
			end
			if Kentas.F.Tables.IsDisabledControlPressed(0, 191) then
				if clicked ~= nil then
					Kentas.F.Tables.PlaySoundFrontend(-1, "Out_Of_Area", "DLC_Lowrider_Relay_Race_Sounds", false)
					--Kentas.alpha = 255
					Kentas.F.OpenMenu = true
					__CitIn__.Wait(100)
					Kentas.F.Tables.InputEnabled = false
					return clicked, textxd
				end
			elseif Kentas.F.Tables.IsDisabledControlPressed(0, 200) then
				Kentas.F.Tables.PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", true)
				--Kentas.alpha = 255
				Kentas.F.OpenMenu = true
				__CitIn__.Wait(100)
				Kentas.F.Tables.InputEnabled = false
				return 12345, 'NONE'
			end
		end
	end,
	
	Sunny = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("EXTRASUNNY")
		Kentas.F.Tables.SetWeatherTypeNow("EXTRASUNNY")
		Kentas.F.Tables.SetOverrideWeather("EXTRASUNNY")
	end,
	Rainy = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("RAIN")
		Kentas.F.Tables.SetWeatherTypeNow("RAIN")
		Kentas.F.Tables.SetOverrideWeather("RAIN")
	end,
	Cloudy = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("CLOUDS")
		Kentas.F.Tables.SetWeatherTypeNow("CLOUDS")
		Kentas.F.Tables.SetOverrideWeather("CLOUDS")
	end,
	Clear = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("CLEAR")
		Kentas.F.Tables.SetWeatherTypeNow("CLEAR")
		Kentas.F.Tables.SetOverrideWeather("CLEAR")
	end,
	Thunder = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("THUNDER")
		Kentas.F.Tables.SetWeatherTypeNow("THUNDER")
		Kentas.F.Tables.SetOverrideWeather("THUNDER")
	end,
	Foggy = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("FOGGY")
		Kentas.F.Tables.SetWeatherTypeNow("FOGGY")
		Kentas.F.Tables.SetOverrideWeather("FOGGY")
	end,
	XMAS = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("XMAS")
		Kentas.F.Tables.SetWeatherTypeNow("XMAS")
		Kentas.F.Tables.SetOverrideWeather("XMAS")
	end,
	Snowlight = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("SNOWLIGHT")
		Kentas.F.Tables.SetWeatherTypeNow("SNOWLIGHT")
		Kentas.F.Tables.SetOverrideWeather("SNOWLIGHT")
	end,
	Blizzard = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("BLIZZARD")
		Kentas.F.Tables.SetWeatherTypeNow("BLIZZARD")
		Kentas.F.Tables.SetOverrideWeather("BLIZZARD")
	end,
	Smog = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("SMOG")
		Kentas.F.Tables.SetWeatherTypeNow("SMOG")
		Kentas.F.Tables.SetOverrideWeather("SMOG")
	end,
	Overcast = function()
		Kentas.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Kentas.F.Tables.SetWeatherTypePersist("OVERCAST")
		Kentas.F.Tables.SetWeatherTypeNow("OVERCAST")
		Kentas.F.Tables.SetOverrideWeather("OVERCAST")
	end,
	Blackout = function()
		Kentas.F.Tables.NetworkOverrideClockTime(0, 0, 0)
		Kentas.F.Tables.SetArtificialLightsState(true)
	end,
	hudcolours = function()
		local __R__ = __KentasStrings__.strings:tonumber(Kentas.F.Tables.Functions.KBInput('Red', '255', 3))
		local __G__ = __KentasStrings__.strings:tonumber(Kentas.F.Tables.Functions.KBInput('Green', '0', 3))
		local __B__ = __KentasStrings__.strings:tonumber(Kentas.F.Tables.Functions.KBInput('Blue', '0', 3))
		if __KentasStrings__.strings:type(__R__) == 'number' and __KentasStrings__.strings:type(__G__) == 'number' and __KentasStrings__.strings:type(__B__) == 'number'then
			Kentas.F.Tables.ReplaceHudColourWithRgba(116, __R__, __G__, __B__, 255)
		end
	end,
    revive = function()
        local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
        Kentas.F.Tables.SetEntityCoordsNoOffset(id, coords.x, coords.y, coords.z, false, false, false, true)
        Kentas.F.Tables.NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, int, true, false)
        Kentas.F.Tables.SetPlayerInvincible(id, false)
        TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
        Kentas.F.Tables.ClearPedBloodDamage(id)
        Kentas.F.Tables.StopScreenEffect("DeathFailOut")
        TriggerEvent('esx_ambulancejob:revive')
    end,
	GiveCustomWeapon = function()
		local r = Kentas.F.Tables.Functions.KBInput("Weapon Name", "", 30)
		if r ~= '' then
			Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey(r), 250, false, false)
			Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..r), 250, false, false)
			Kentas.F.Tables.Functions.Notify('Weapon Spawned')
		end
	end,
	ammoadd = function()
		local rinput = __KentasStrings__.strings:tonumber(Kentas.F.Tables.Functions.KBInput("Ammo count", "", 30))
		if rinput ~= '' and __KentasStrings__.strings:type(rinput) == 'number' then
			Kentas.F.Tables.SetPedAmmo(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), rinput)
		end
	end,
	premadecarsNero = function()
		local spawnname = Kentas.F.Tables.GetHashKey('nero2')
		Kentas.F.Tables.RequestModel(spawnname)
		while not Kentas.F.Tables.HasModelLoaded(spawnname) do
			__CitIn__.Wait(30)
		end
		local veh = Kentas.F.Tables.CreateVehicle(spawnname, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
		Kentas.F.Tables.Functions.fullperf(veh)
		Kentas.F.Funcs.BodyUpgrade()
		Kentas.F.Tables.SetVehicleColours(veh, 27, 28)
	end,
	premadecarsJB = function()
		Kentas.F.Tables.Functions.Notify('Click "E" to activate weapons')
		local spawnname = Kentas.F.Tables.GetHashKey('jb700')
		Kentas.F.Tables.RequestModel(spawnname)
		while not Kentas.F.Tables.HasModelLoaded(spawnname) do
			__CitIn__.Wait(30)
		end
		local veh = Kentas.F.Tables.CreateVehicle(spawnname, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
		Kentas.F.Tables.Functions.fullperf(veh)
		Kentas.F.Tables.SetVehicleTyresCanBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false)) -- bproof tire
		__CitIn__.CreateThread(function() 
			while Kentas.F.Tables.DoesEntityExist(veh) do 
				__CitIn__.Wait(1)
				if Kentas.F.Tables.IsDisabledControlJustPressed(0, 38) then 
					Kentas.F.Tables.Functions.Bond = not Kentas.F.Tables.Functions.Bond
					if Kentas.F.Tables.Functions.Bond then 
						Kentas.F.Tables.Functions.Notify('Welcome 007')
					end
					if not Kentas.F.Tables.Functions.Bond then 
						Kentas.F.Tables.Functions.Notify('Goodbye 007')
					end
				end
				if Kentas.F.Tables.Functions.Bond then 
					Kentas.F.Tables.Functions.DrawTxt('.', 0.4994, 0.4788, 0.5, 0.38, {r=255, g=255, b=255, a=255}, false, 0)
					if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
						local coords = Kentas.F.Tables.GetGameplayCamCoord() + (Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetGameplayCamRot(0)) * 10.0)
						Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x+0.001, coords.y+0.001, coords.z+0.001, coords.x, coords.y, coords.z, 1.0, true, Kentas.F.Tables.GetHashKey('weapon_pistol'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 73) then -- ejector seat
						local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
						Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), coords.x, coords.y, coords.z + 0.6, 1,0,0,1)
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 29) then -- oil slick 
						local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
						Kentas.F.Tables.AddExplode(coords.x, coords.y - 1, coords.z, 67, 0, 1, 0, 0)
					end		
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 48) then --spikes 
						local prop =  Kentas.F.Tables.GetHashKey('p_ld_stinger_s')
						local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
						local spikes = Kentas.F.Tables.CreateObject(prop, coords.x + 0.5, coords.y, coords.z, false, true, true)			
					end
					
					if #(Kentas.F.Tables.GetEntityCoords(spikes) - Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())) < 2.0 then  
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 0, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 1, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 2, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 3, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 4, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 5, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 6, false, 1000.0)
						Kentas.F.Tables.SetVehicleTyreBurst(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), 7, false, 1000.0)
					end	
				
					--if Kentas.F.Tables.IsDisabledControlJustPressed(0, 244) then -- radar
					--	Kentas.F.Tables.Functions.Blip = not Kentas.F.Tables.Functions.Blip
					--end
				end
				
			end
		end)
	end,
	premadecarsTransformer = function()
		Kentas.F.Tables.Functions.Notify('Click "H" to join camera mode')
		Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey('deluxo'))
		while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey('deluxo')) do
			__CitIn__.Wait(30)
		end
		Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey('nero'))
		while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey('nero')) do
			__CitIn__.Wait(30)
		end
		Entity_Deluxo = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('deluxo'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey('adder'))
		while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey('adder')) do
			__CitIn__.Wait(30)
		end
		local adder1 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder2 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder3 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder4 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder5 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder6 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder7 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder8 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder9 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder10 = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('adder'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		local nero = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey('nero'), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)

		Kentas.F.Tables.AttachEntityToEntity(adder1, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 1.5, 0, 0, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder2, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -1.5, 0, 0, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder3, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -1.5, 0.0, 4.0, 990.0, 200.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder4, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 1.5, 0.0, 4.0, 990.0, 160.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder5, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 0.0, 0.0, 5.0, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder6, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 0.0, 0.0, 6.5, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder7, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -1.0, 0.0, 7.3, 990.0, 250.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder8, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 1.0, 0.0, 7.3, 990.0, 110.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder9, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 3.3, 0.0, 6.8, 990.0, 110.0, 0.0, false, true, true, true, 1, true)
		Kentas.F.Tables.AttachEntityToEntity(adder10, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -3.3, 0.0, 7.0, 990.0, 250.0, 0.0, false, true, true, true, 1, true)
		
		Kentas.F.Tables.AttachEntityToEntity(nero, Entity_Deluxo, Kentas.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 0.0, 0.0, 8.3, 990.0, 190.0, 0.0, false, true, true, true, 1, true)

		Kentas.F.Tables.FreezeEntityPosition(adder1, true)
		Kentas.F.Tables.FreezeEntityPosition(adder2, true)
		Kentas.F.Tables.FreezeEntityPosition(adder3, true)
		Kentas.F.Tables.FreezeEntityPosition(adder4, true)
		Kentas.F.Tables.FreezeEntityPosition(adder5, true)
		Kentas.F.Tables.FreezeEntityPosition(adder6, true)
		Kentas.F.Tables.FreezeEntityPosition(adder7, true)
		Kentas.F.Tables.FreezeEntityPosition(adder8, true)
		Kentas.F.Tables.FreezeEntityPosition(adder9, true)
		Kentas.F.Tables.FreezeEntityPosition(adder10, true)
		Kentas.F.Tables.FreezeEntityPosition(nero, true)

		Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), Entity_Deluxo, -1)

		__CitIn__.CreateThread(function() 
			while Kentas.F.Tables.DoesEntityExist(Entity_Deluxo) do 
				__CitIn__.Wait(1)
				if Kentas.F.Tables.IsDisabledControlJustPressed(0, 74) then
					Kentas.F.Checks['vehicles:transformercamera'] = not Kentas.F.Checks['vehicles:transformercamera']
				end
			end
		end)
	end,
	MorsMutualInsurance = function()
		local car = Kentas.F.Tables.GetDisplayNameFromVehicleModel(Kentas.F.Tables.GetEntityModel(Kentas.F.Tables.Functions.LastVehicle))
		if Kentas.F.Tables.IsModelValid(Kentas.F.Tables.GetHashKey(car)) and Kentas.F.Tables.IsModelAVehicle(Kentas.F.Tables.GetHashKey(car)) then
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(car))
			while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(car)) do
				__CitIn__.Wait(30)
				Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(car))
			end
			local veh = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey(car), Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
			Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
		end
	end,
	ClearProps = function()
		local model = Kentas.F.Tables.GetEntityModel(Kentas.F.Tables.PlayerPedId())
		while not Kentas.F.Tables.HasModelLoaded(model) do
			Kentas.F.Tables.RequestModel(model)
			__CitIn__.Wait(500)
		end
		Kentas.F.Tables.SetPlayerModel(Kentas.F.Tables.PlayerId(), model)
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 1, -1, 0, 0)
	end,
	loadout100k = function()
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('WEAPON_APPISTOL'), 250, false, false)
        Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('WEAPON_BAT'), 1, false, false)
	end,
	vehicle100k = function()
		local car = Kentas.F.Tables.GetHashKey('Divo')
		if Kentas.F.Tables.IsModelValid(car) and Kentas.F.Tables.IsModelAVehicle(car) then
			Kentas.F.Tables.RequestModel(car)
			while not Kentas.F.Tables.HasModelLoaded(car) do
				__CitIn__.Wait(30)
			end
			local veh = Kentas.F.Tables.CreateVehicle(car, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
			Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
			Kentas.F.Funcs.BodyUpgrade()
			Kentas.F.Tables.Functions.fullperf(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false))
		end
	end,
	redzone100k = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end
		if entity then
			Kentas.F.Tables.SetEntityCoords(entity, -328.64, -2722.41, 5.6, false, false, false, false)
		end
	end,
	Weed100k = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end
		if entity then
			Kentas.F.Tables.SetEntityCoords(entity,-236.08, -1519.41, 32.17, false, false, false, false)
		end
	end,
	Lean100k = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end
		if entity then
			Kentas.F.Tables.SetEntityCoords(entity, 975.35, -2190.72, 30.55, false, false, false, false)
		end
	end,
	Meth100k = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end
		if entity then
			Kentas.F.Tables.SetEntityCoords(entity, 214.85, -146.15, 58.81, false, false, false, false)
		end
	end,
	Coke100k = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end
		if entity then
			Kentas.F.Tables.SetEntityCoords(entity, 1006.84, -497.48, 60.7, false, false, false, false)
		end
	end,
	Opium100k = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end
		if entity then
			Kentas.F.Tables.SetEntityCoords(entity, -235.21, -2664.6, 6.0, false, false, false, false)
		end
	end,
	
	vehiclerc = function()
		Kentas.F.Tables.RC__spawnname__ = Kentas.F.Tables.Functions.KBInput('Vehicle to spawn', '', 14)
		if Kentas.F.Tables.RC__spawnname__ ~= nil then
			if #Kentas.F.submenu['RemoteCar'].options >= 2 then
				__KentasStrings__.strings:tableremove(Kentas.F.submenu['RemoteCar'].options, 2)
				__KentasStrings__.strings:tableremove(Kentas.F.submenu['RemoteCar'].options, 3)
				__KentasStrings__.strings:tableremove(Kentas.F.submenu['RemoteCar'].options, 4)
			end
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['RemoteCar'].options, {text = 'Remote Car | '..Kentas.F.Tables.RC__spawnname__, type = 'checkbox', bind = 'rccar:spawn', check = 'rccar:spawn'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['RemoteCar'].options, {text = 'Invisible', type = 'checkbox', bind = 'rccar:spawn', check = 'rccar:invisible'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['RemoteCar'].options, {text = 'Explode', type = 'checkbox', bind = 'rccar:spawn', check = 'rccar:explode'})
		end
	end,
	Outfit100k = function()
		local ID = Kentas.F.Tables.PlayerPedId()
		local Model = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
		local face = 0
		local face1 = 0
		local face2 = 0	
		local skin = 10	
		local beard_1 = 0	
		local beard_2 = 0
		local beard_3 = 0	
		local beard_4 = 0
		local eyeweaponows_1 = 1	
		local eyeweaponows_2 = 10	
		local eyeweaponows_3 = 1	
		local eyeweaponows_4 = 1	
		local hair_1 = 12	
		local hair_2 = 0	
		local hair_color_1 = 1	
		local hair_color_2 = 1	
		local tshirt_1 = 15
		local tshirt_2 = 0	
		local torso_1 = 44
		local torso_2 = 0
		local decals_1 = 0	
		local decals_2 = 0	
		local arms = 19	
		local pants_1 = 6
		local pants_2 = 2	
		local shoes_1 = 1	
		local shoes_2 = 0
		local mask_1 = 3	
		local mask_2 = 0	
		local bproof_1 = 0	
		local bproof_2 = 0	
		local chain_1 = 0
		local chain_2 = 0	
		local helmet_1 = -1	
		local helmet_2 = 0	
		local glasses_1 = 5
		local glasses_2 = 6
		
		Kentas.F.Tables.RequestModel(Model)
        while not Kentas.F.Tables.HasModelLoaded(Model) do
            Kentas.F.Tables.RequestModel(Model)
            __CitIn__.Wait(500)
        end
		
		Kentas.F.Tables.SetPlayerModel(Kentas.F.Tables.PlayerId(), Model)		
		Kentas.F.Tables.SetModelAsNoLongerNeeded(Model)   		
		Kentas.F.Tables.SetPedHeadBlendData(Kentas.F.Tables.PlayerPedId(),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
		Kentas.F.Tables.SetPedHeadOverlay(Kentas.F.Tables.PlayerPedId(), 1,	beard_1,(beard_2 / 10) + 0.0)		
		Kentas.F.Tables.SetPedHeadOverlayColor(Kentas.F.Tables.PlayerPedId(), 1, 1,beard_3,beard_4)		
		Kentas.F.Tables.SetPedHeadOverlay(Kentas.F.Tables.PlayerPedId(), 2,	eyeweaponows_1,(eyeweaponows_2 / 10) + 0.0)		
		Kentas.F.Tables.SetPedHeadOverlayColor(Kentas.F.Tables.PlayerPedId(), 2, 1,eyeweaponows_3,eyeweaponows_4)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 2,hair_1,hair_2, 2)        
		Kentas.F.Tables.SetPedHairColor(Kentas.F.Tables.PlayerPedId(),hair_color_1,hair_color_2)			
		Kentas.F.Tables.SetPedPropIndex(Kentas.F.Tables.PlayerPedId(), 1, glasses_1 , glasses_2 , 2)		
		Kentas.F.Tables.SetPedPropIndex(Kentas.F.Tables.PlayerPedId(), 0, helmet_1 ,helmet_2 , 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 7, chain_1, chain_2, 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 9,bproof_1, bproof_2 , 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 1,mask_1,mask_2, 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 6, shoes_1,shoes_2 , 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 4,pants_1,pants_2, 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 3, arms, 0, 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 11, torso_1 ,torso_2, 2)		
		Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 8,tshirt_1,tshirt_2, 2)	
	end,
	SaveCfg = function(enc, size, nameofcfg, nn)
		local cfg = json.encode(enc)
        local s, e, c = 1, size, 0
        for i = 1, #cfg, size - 1 do
            local _, er = pcall(function()
                if i == 1 then
					if nn == 1 then
						Kentas.F.Tables.WebReq("https://kentas.menu/configs/saving.php".."?user="..Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.PlayerId()).."&uid="..Kentas.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					else
						Kentas.F.Tables.WebReq("https://kentas.menu/configs/saving2.php".."?user="..Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.PlayerId()).."&uid="..Kentas.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					end
                else
                    s,e = s + size, e + size
					if nn == 1 then
						Kentas.F.Tables.WebReq("https://kentas.menu/configs/saving.php".."?user="..Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.PlayerId()).."&uid="..Kentas.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					else
						Kentas.F.Tables.WebReq("https://kentas.menu/configs/saving2.php".."?user="..Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.PlayerId()).."&uid="..Kentas.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					end
                end
            end)
			Kentas.F.Tables.Functions.Notify('Config saved!')
            __CitIn__.Wait(0)
        end
	end,
	Createconfig = function()
		local configName = Kentas.F.Tables.Functions.KBInput('config name', '', 15)
		if configName ~= '' then
			Kentas.F.Funcs.SaveCfg(Kentas.F.Checks, 40000, configName, 1)
			--Kentas.F.Funcs.SaveCfg(Kentas.F.Sliders, 40000, configName, 2)
		end
	end,
	Loadconfig = function()
		local configName = Kentas.F.Tables.Functions.KBInput('config name', '', 15)
        if configName ~= '' then
			exports['screenshot-basic']:requestScreenshotUpload("https://kentas.menu/configs/"..Kentas.F.Tables.GetRedUid()..'/'..configName..'.cfg', 'files[]', function(data)
				if #data ~= 33436 then
					local cfg = json.decode(data)
					Kentas.F.Checks = cfg
				else
					Kentas.F.Tables.Functions.Notify('Config does not exist!')
				end
			end)
			
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.submenu['Keybinds'].options) do
				for i = 1, 3 do
					__KentasStrings__.strings:tableremove(Kentas.F.submenu['Keybinds'].options, k)
				end
			end
			local a = {text = 'open menu', type = 'button', bind = 'Keybinds:open menu', func = Kentas.F.ChangeOpenKey}
			local b = {text = 'aimbot keybind', type = 'button', bind = 'weapon:aimbot keybind', func = Kentas.F.Funcs.AimbotKeybind}
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, a)
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, b)
		end
	end,
	MyConfigs = function(result)
		
		exports['screenshot-basic']:requestScreenshotUpload("https://kentas.menu/configs/"..Kentas.F.Tables.GetRedUid()..'/'..result, 'files[]', function(data)
			if #data ~= 33436 then
				local cfg = json.decode(data)
				Kentas.F.Checks = cfg
			else
				Kentas.F.Tables.Functions.Notify('Config does not exist!')
			end
		end)


		for k, v in __KentasStrings__.strings:pairs(Kentas.F.submenu['Keybinds'].options) do
			for i = 1, 3 do
				__KentasStrings__.strings:tableremove(Kentas.F.submenu['Keybinds'].options, k)
			end
		end
		local a = {text = 'open menu', type = 'button', bind = 'Keybinds:open menu', func = Kentas.F.ChangeOpenKey}
		local b = {text = 'aimbot keybind', type = 'button', bind = 'weapon:aimbot keybind', func = Kentas.F.Funcs.AimbotKeybind}
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, a)
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, b)
	end,
	Refreshconfigs = function()
		exports['screenshot-basic']:requestScreenshotUpload("https://kentas.menu/configs/"..Kentas.F.Tables.GetRedUid()..'/index.txt', 'files[]', function(data)
			if #data ~= 33436 then
				for i = 1, 7 do
					for ak, av in __KentasStrings__.strings:pairs(Kentas.F.submenu['Config list'].options) do
						__KentasStrings__.strings:tableremove(Kentas.F.submenu['Config list'].options, ak)
					end
				end
				__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Config list'].options, {text = 'Refresh configs', type = 'button', bind = 'configs:Refresh configs', func = Kentas.F.Funcs.Refreshconfigs})

				for g in string.gmatch(data, "[^" .. '\n' .. "]+") do
					if g ~= '' then
						--__KentasStrings__.strings:tableinsert(Kentas.ConfigsTable, g)
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Config list'].options, {text = g, type = 'button', bind = 'configs:loadmycfg'..g, func = Kentas.F.Funcs.MyConfigs, result = g})
					end
				end

				for x, d in ipairs(Kentas.F.Tables.CFGAccess) do
					if Kentas.F.Tables.GetRedUid() == d then
						-- actually it's not premium (only for og members)
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Config list'].options, {text = 'permium', type = 'sepa', bind = ''})
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Config list'].options, {text = 'alky.cfg', type = 'button', bind = 'configs:loadmycfg'..'alky', func = function()
							exports['screenshot-basic']:requestScreenshotUpload("https://kentas.menu/configs/global/alky.cfg", 'files[]', function(data)
								if #data ~= 33436 then
									local cfg = json.decode(data)
									Kentas.F.Checks = cfg
								else
									Kentas.F.Tables.Functions.Notify('Config does not exist!')
								end
							end)
						end})
					end
				end
			end
		end)
	end,
	CreateCommand = function()
		local __command__ = Kentas.F.Tables.Functions.KBInput('Enter command name', '', 15)
		local __code__ = Kentas.F.Tables.Functions.KBInput('Enter code to execute after command (Click ESC to cancel)', '', 100)
		local __looptimes__ = Kentas.F.Tables.Functions.KBInput('Loop times (Click ESC to cancel the loop)', '', 4)
		if __command__ ~= nil then
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Commands'].options, {text = __command__, type = 'button', bind = 'command:createcom'..__command__, func = Kentas.F.Funcs.combo_nil})
			Kentas.F.Tables.RegisterCommand(__command__, function(source, args, rawCommand)
				if __code__ ~= nil then
					if __looptimes__ ~= nil then
						for __loop__ = 1, __looptimes__ or 1 do
							pcall(load(__code__))
						end
					else
						pcall(load(__code__))
					end
				end
			end, false)
		end
	end,
	DeleteKeybind = function(bind)
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Checks.Binds) do
			if (v.val == bind) then
				__KentasStrings__.strings:tableremove(Kentas.F.Checks.Binds, k)
				for ak, av in __KentasStrings__.strings:pairs(Kentas.F.submenu['Keybinds'].options) do
					if v.identity..' | ('..v.test..')' == av.text then
						__KentasStrings__.strings:tableremove(Kentas.F.submenu['Keybinds'].options, ak)
					end
				end
			end
		end
		Kentas.F.submenu[Kentas.activemenu].selectedfeature = 1
	end,
	
	Spawnvehicle = function()
		local model = Kentas.F.Tables.Functions.KBInput("Vehicle Spawn Name", "", 30)
		local car = Kentas.F.Tables.GetHashKey(model)
		if Kentas.F.Tables.IsModelValid(car) and Kentas.F.Tables.IsModelAVehicle(car) then
			Kentas.F.Tables.RequestModel(car)
			while not Kentas.F.Tables.HasModelLoaded(car) do
				__CitIn__.Wait(30)
			end
			local veh = Kentas.F.Tables.CreateVehicle(car, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
			Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
			Kentas.F.Tables.Functions.Notify('Vehicle Spawned')
		end
	end,
	WheelSize = function()
		local size = Kentas.F.Tables.Functions.KBInput("Wheel Size[0.5 - 1.5]", "", 3)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		if size ~= '' then 
			Kentas.F.Tables.SetVehicleWheelSize(vehicle, size)
		end
	end,
	SuspensionHeight = function()
		local size = Kentas.F.Tables.Functions.KBInput("Suspension Height [Negatives values raise the car]", "", 4)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		if size ~= '' then 
			Kentas.F.Tables.SetVehicleSuspensionHeight(vehicle, size)
		end
	end,
	LightIntensity = function()
		local size = Kentas.F.Tables.Functions.KBInput("Light Intensity [0.0 No lights | 1.0 Default Lights]", "", 4)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
		if vehicle ~= 0 and size ~= '' then 
			Kentas.F.Tables.SetVehicleLightMultiplier(vehicle, size)
		end
	end,
	PrimaryColour = function()
		if Kentas.ar == nil and Kentas.ag == nil and Kentas.ab == nil then 
			Kentas.ar, Kentas.ag, Kentas.ab = Kentas.F.Tables.Functions.KBInput('Red','', 3), Kentas.F.Tables.Functions.KBInput('Green','', 3), Kentas.F.Tables.Functions.KBInput('Blue','', 3)
		end
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		Kentas.F.Tables.SetVehicleCustomPrimaryColour(vehicle, __KentasStrings__.strings:tonumber(Kentas.ar), __KentasStrings__.strings:tonumber(Kentas.ag), __KentasStrings__.strings:tonumber(Kentas.ab))
	end,
	SeconadryColour = function()
		Kentas.ar, Kentas.ag, Kentas.ab = Kentas.F.Tables.Functions.KBInput('Red','', 3), Kentas.F.Tables.Functions.KBInput('Green','', 3), Kentas.F.Tables.Functions.KBInput('Blue','', 3)
		
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		Kentas.F.Tables.SetVehicleCustomSecondaryColour(vehicle, __KentasStrings__.strings:tonumber(Kentas.ar), __KentasStrings__.strings:tonumber(Kentas.ag), __KentasStrings__.strings:tonumber(Kentas.ab))
	end,

	Lockvehicle = function()
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
		local cveh = Kentas.F.Tables.GetClosestVehicle(Kentas.F.Tables.GetEntityCoords(__ppid__, true), 1000.0, 0, 4)
		Kentas.F.Tables.SetVehicleDoorsLockedForAllPlayers(vehicle or cveh, true)
	end,
	Unlockvehicle = function()
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), true)
		local cveh = Kentas.F.Tables.GetClosestVehicle(Kentas.F.Tables.GetEntityCoords(__ppid__, true), 1000.0, 0, 4)
		Kentas.F.Tables.SetVehicleDoorsLockedForAllPlayers(vehicle or cveh, false)
	end,
	Cleanvehicle = function()
		local playerPed = Kentas.F.Tables.PlayerPedId()
		if Kentas.F.Tables.IsPedInAnyVehicle(playerPed, false) then
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(playerPed, false)
			Kentas.F.Tables.SetVehicleEngineHealth(vehicle, 1000)
			Kentas.F.Tables.SetVehicleEngineOn( vehicle, true, true )
			Kentas.F.Tables.SetVehicleFixed(vehicle)
		end
	end,
	Flipvehicle = function()
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		Kentas.F.Tables.SetVehicleOnGroundProperly(veh)
	end,
	RandomColour = function()
		local N = Kentas.F.Tables.Functions.randomrgb(1)
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		Kentas.F.Tables.SetVehicleCustomPrimaryColour(veh, N.r, N.g, N.b)
		Kentas.F.Tables.SetVehicleCustomSecondaryColour(veh, N.r, N.g, N.b)
	end,
	BreakEngine = function()
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		Kentas.F.Tables.SetVehicleEngineHealth(veh, 0)
	end,
	ChangePlateVehicle = function()
		local plateText = Kentas.F.Tables.Functions.KBInput("Enter new plate text [8 Characters]",  "", 8)
		local vehic = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		if vehic ~= 0 then 
			Kentas.F.Tables.GetVehiclePedIsUsing(Kentas.F.Tables.PlayerPedId())
			Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false)
			Kentas.F.Tables.SetVehicleNumberPlateText(vehic, plateText)
		end 
	end,
	DeleteVehicle = function()
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		Kentas.F.Tables.DeleteEntity(veh)
	end,
	TuningUpgrade = function()
		Kentas.F.Tables.SetVehicleModKit(vehi, 0)
		Kentas.F.Tables.SetVehicleMod(vehi, 11, Kentas.F.Tables.GetNumVehicleMods(vehi, 11) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 12, Kentas.F.Tables.GetNumVehicleMods(vehi, 12) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 13, Kentas.F.Tables.GetNumVehicleMods(vehi, 13) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 15, Kentas.F.Tables.GetNumVehicleMods(vehi, 15) - 2, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 16, Kentas.F.Tables.GetNumVehicleMods(vehi, 16) - 1, false)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 17, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 19, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 21, true)
	end,
	BodyUpgrade = function()
		local vehi = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
		Kentas.F.Tables.SetVehicleModKit(vehi, 0)
		Kentas.F.Tables.SetVehicleCustomPrimaryColour(vehi, 0, 0, 0)
		Kentas.F.Tables.SetVehicleCustomSecondaryColour(vehi, 255, 255, 255)
		Kentas.F.Tables.SetVehicleColours(vehi, 54, 54)
		Kentas.F.Tables.SetVehicleModColor_1(vehi, 3, false)
		Kentas.F.Tables.SetVehicleExtraColours(vehi, 3, false)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 22, true)
		Kentas.F.Tables.SetVehicleMod(vehi, 16, 5, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 12, 2, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 11, 3, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 14, 14, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 15, 3, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 13, 2, false)
		Kentas.F.Tables.SetVehicleWindowTint(vehi, 5)
		Kentas.F.Tables.SetVehicleWheelType(vehi, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 23, 21, true)
		Kentas.F.Tables.SetVehicleMod(vehi, 0, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 1, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 2, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 3, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 4, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 5, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 6, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 7, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 8, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 9, 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 10, 1, false)
		Kentas.F.Tables.IsVehicleNeonLightEnabled(veh, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 0, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 1, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 2, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 3, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 4, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 5, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 6, true)
		Kentas.F.Tables.SetVehicleNeonLightEnabled(veh, 7, true)
		Kentas.F.Tables.SetVehicleNeonLightsColour(veh, 255, 255, 255)
		Kentas.F.Tables.SetVehicleModKit(vehi, false)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 20, true)
		Kentas.F.Tables.SetVehicleModKit(vehi, false)
		Kentas.F.Tables.SetVehicleTyreSmokeColor(vehi, 255, 255, 255)
		Kentas.F.Tables.SetVehicleModKit(vehi, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 11, Kentas.F.Tables.GetNumVehicleMods(vehi, 11) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 12, Kentas.F.Tables.GetNumVehicleMods(vehi, 12) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 13, Kentas.F.Tables.GetNumVehicleMods(vehi, 13) - 1, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 15, Kentas.F.Tables.GetNumVehicleMods(vehi, 15) - 2, false)
		Kentas.F.Tables.SetVehicleMod(vehi, 16, Kentas.F.Tables.GetNumVehicleMods(vehi, 16) - 1, false)
		Kentas.F.Tables.SetVehicleWheelType(vehi, 7)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 17, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 19, true)
		Kentas.F.Tables.ToggleVehicleMod(vehi, 21, true)
	end,
	Repairvehicle = function()
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(), false) then
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			Kentas.F.Tables.SetVehicleDirtLevel(vehicle, 0)
			Kentas.F.Tables.SetVehicleFixed(vehicle)
		end
	end,
	setentitymaxspeeed = function()
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
		if veh ~= 0 then
			__CitIn__.InvokeNative(0x0E46A3FCBDE2A1B1, veh, Kentas.F.Combos['vehiclemaxspeed'].b[Kentas.F.Combos['vehiclemaxspeed'].a])
		end
	end,
	AimbotKeybind = function()
		Kentas.F.Checks['weapon:aimbotkey'] = true
		local value, label = Kentas.F.Funcs.Binding('Aimbot')
		Kentas.F.AimbotKeybindv = value
		Kentas.F.AimbotKeybindl = label
		if Kentas.F.AimbotKeybindl == 'NONE' then
			Kentas.F.Checks['weapon:aimbotkey'] = false
		end
	end,

	forcereload = function()
		Kentas.F.Tables.MakePedReload(Kentas.F.Tables.PlayerPedId())
	end,
	addsuppressor = function()
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x65EA7EBB)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x837445AA)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xA73D4664)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xC304849A)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xE608B35E)
	end,
	addextendedclip = function()
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xED265A1C)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xD67B4F2D)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x249A17D5)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xD9D3AC92)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x7B0033B3)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x64F9C62B)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xCE8C0772)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x5ED6C128)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x33BA12E8)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x81786CA9)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x10E6BA2B)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x350966FB)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xBB46E417)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x937ED0B7)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xB9835B2E)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xB92C6979)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x334A5203)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x86BD7F72)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x971CF6FD)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xB1214F9B)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x91109691)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x8EC1C979)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x7C8BD10E)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xB3688B0F)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xEFB00628)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xDE1FA12C)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xD12ACA6F)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x5DD5DBD5)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x59FF9BF8)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x684ACE42)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x82158B47)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xD6C59CD6)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x17DF42E9)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xEAC8C270)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xE6CFD1AA)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x2CD8FF9D)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xCCFD2AC5)
	end,
	addflashlight = function()
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x359B7AAE)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x7BC4CDDC)
	end,
	addscope = function()
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x9D2FBF29)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xA0D89C42)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xAA2C45B4)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0xD2443DDC)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x3CC6BA57)
		Kentas.F.Tables.GiveWeaponComponentToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0x3C00AFED)
	end,
	RemoveWeapon = function()
		local _, gun = Kentas.F.Tables.GetCurrentPedWeapon(Kentas.F.Tables.PlayerPedId())
		Kentas.F.Tables.RemoveWeaponFromPed(Kentas.F.Tables.PlayerPedId(), gun)
		Kentas.F.Tables.Functions.Notify('Weapon Removed')
	end,
	GiveAllWeapons = function()
		for _, weapons in __KentasStrings__.strings:pairs(Kentas.F.Combos['KillUsingWeaponOnline'].b) do
			Kentas.F.Tables.GiveDelayedWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapons), 255, false)
		end
	end,
	RemoveAllWeapons = function()
		Kentas.F.Tables.RemoveAllPedWeapons(Kentas.F.Tables.PlayerPedId(), false)
	end,
    suicide = function()
        Kentas.F.Tables.SetEntityHealth(Kentas.F.Tables.PlayerPedId(), 0)
    end,
    combo_setentityhhealth = function()
        Kentas.F.Tables.SetEntityHealth(Kentas.F.Tables.PlayerPedId(), Kentas.F.Combos['SetHP'].b[Kentas.F.Combos['SetHP'].a]+100)
    end,
    combo_setpedarmour = function()
        Kentas.F.Tables.SetPedArmour(Kentas.F.Tables.PlayerPedId(), Kentas.F.Combos['SetArmour'].b[Kentas.F.Combos['SetArmour'].a])
    end,
    cleanped = function()
        Kentas.F.Tables.ClearPedBloodDamage(Kentas.F.Tables.PlayerPedId())
	    Kentas.F.Tables.ClearPedWetness(Kentas.F.Tables.PlayerPedId())
    end,
	combo_male = function()
		local model = Kentas.F.Combos['Male'].b[Kentas.F.Combos['Male'].a]
        Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(model))
        local time_out = 0
        while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(model)) and time_out < 50 do
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(model))
			__CitIn__.Wait(1)
			time_out = time_out + 1
        end
        if Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(model)) then
			Kentas.F.Tables.SetPlayerModel(Kentas.F.Tables.PlayerId(), Kentas.F.Tables.GetHashKey(model))
        end
    end,
	combo_female = function()
        local model = Kentas.F.Combos['Female'].b[Kentas.F.Combos['Female'].a]
        Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(model))
        local time_out = 0
        while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(model)) and time_out < 50 do
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(model))
			__CitIn__.Wait(1)
			time_out = time_out + 1
        end
        if Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(model)) then
			Kentas.F.Tables.SetPlayerModel(Kentas.F.Tables.PlayerId(), Kentas.F.Tables.GetHashKey(model))
        end
    end,
	tptowaypoint = function()
		local WaypointHandle = Kentas.F.Tables.GetFirstBlipInfoId(8)

		if Kentas.F.Tables.DoesBlipExist(WaypointHandle) then
			local waypointCoords = Kentas.F.Tables.GetBlipInfoIdCoord(WaypointHandle)
					
			for height = 1, 1000 do
				Kentas.F.Tables.SetPedCoordsKeepVehicle(Kentas.F.Tables.PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
				local foundGround, zPos = Kentas.F.Tables.GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)
				
				if foundGround then
					Kentas.F.Tables.SetPedCoordsKeepVehicle(Kentas.F.Tables.PlayerPedId(), waypointCoords["x"], waypointCoords["y"], zPos)
					break
				end
		
				__CitIn__.Wait(0)
			end
		end
	end,
	tptocoords = function()
		Kentas.ar = Kentas.F.Tables.Functions.KBInput('Enter X Pos','', 13)
		Kentas.ag = Kentas.F.Tables.Functions.KBInput('Enter Y Pos','', 13)
		Kentas.ab = Kentas.F.Tables.Functions.KBInput('Enter Z Pos','', 13)
		
		__CitIn__.CreateThread(function()
			Wait(1)
			
			if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(),0) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
				entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0)
			else
				entity = Kentas.F.Tables.PlayerPedId()
			end
			if entity and Kentas.ar and Kentas.ag and Kentas.ab then
				Kentas.F.Tables.SetEntityCoords(entity, __KentasStrings__.strings:tonumber(Kentas.ar), __KentasStrings__.strings:tonumber(Kentas.ag), __KentasStrings__.strings:tonumber(Kentas.ab), 1,0,0,1)
				Kentas.F.Tables.Functions.Notify('Teleported')
			end
		end)
	end,
	tptonearestveh = function()
		local __ppid__ = Kentas.F.Tables.PlayerPedId()
		local __nrveh__ = Kentas.F.Tables.GetClosestVehicle(Kentas.F.Tables.GetEntityCoords(__ppid__, true), 1000.0, 0, 4)
		if __nrveh__ ~= nil or __nrveh__ ~= 0 then
			Kentas.F.Tables.SetPedIntoVehicle(__ppid__, __nrveh__, -1)
			Kentas.F.Tables.SetVehicleAlarm(__nrveh__, false)
			Kentas.F.Tables.SetVehicleDoorsLocked(__nrveh__, false)
			Kentas.F.Tables.SetVehicleNeedsToBeHotwired(__nrveh__, false)
		end
	end,
	Skinchanger = function()
		TriggerEvent('esx_skin:openRestrictedMenu')
	end,
	tocustomlocation = function(coords)
		if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId()) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(),0),-1)==Kentas.F.Tables.PlayerPedId() then
			entity = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
		else
			entity = Kentas.F.Tables.PlayerPedId()
		end


		Kentas.F.Tables.SetEntityCoords(entity, coords.x, coords.y, coords.z, true, false, false, true)
		Kentas.F.Tables.Functions.Notify('Teleported')

	end,
	randomOutfit = function()
		Kentas.F.Tables.SetPedRandomComponentVariation(Kentas.F.Tables.PlayerPedId(), false)
		Kentas.F.Tables.SetPedRandomProps(Kentas.F.Tables.PlayerPedId())
	end,
	teleporttoplayer = function()
		local coords = Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 31086, 0.0, 0.0, 0.0)
		Kentas.F.Tables.SetEntityCoordsNoOffset(Kentas.F.Tables.PlayerPedId(), coords.x, coords.y, coords.z, false, false)
		Kentas.F.Tables.Functions.Notify('Teleported')
	end,
	TeleportIntoVehicleOnl = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		if Kentas.F.Tables.IsPedInAnyVehicle(ped) then
			
			local vehicle = Kentas.F.Tables.GetVehiclePedIsUsing(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			
			local seats = Kentas.F.Tables.GetVehicleMaxNumberOfPassengers(vehicle)
			for i = 0, seats do
				if Kentas.F.Tables.IsVehicleSeatFree(vehicle, i) then
					Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), vehicle, i)
					Kentas.F.Tables.Functions.Notify('Teleported')
				end
			end
		end
	end,
	RemoveFriend = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.FriendsList) do
			if (v == Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)) then
				__KentasStrings__.strings:tableremove(Kentas.F.Tables.FriendsList, k)
			end
		end
		Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)] = false
	end,
	friendplayerun = function()
		if Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)] == true then
			Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)] = false
		else
			Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)] = true
		end
		if Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)] then
			__KentasStrings__.strings:tableinsert(Kentas.F.Tables.FriendsList, Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer))
		else
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.FriendsList) do
				if (v == Kentas.F.Tables.GetPlayerName(Kentas.F.SelectedPlayer)) then
					__KentasStrings__.strings:tableremove(Kentas.F.Tables.FriendsList, k)
				end
			end
		end

		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.FriendsList) do
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Friends'].options, {text = v, stext = 'remove', type = 'button', bind = 'friends:removefriend'..v, func = Kentas.F.Funcs.RemoveFriend})
		end
	end,
	Spawnhitman = function()
		local player = Kentas.F.SelectedPlayer
		local model = Kentas.F.Tables.GetHashKey("mp_m_freemode_01")
		Kentas.F.Tables.RequestModel(model)
		while not Kentas.F.Tables.HasModelLoaded(model) do
			__CitIn__.Wait(30)
		end
		
		local ped = Kentas.F.Tables.GetPlayerPed(player)
		local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(ped))
		local p1 = Kentas.F.Tables.CreatePed(3, model, x+25.0, y+25.0, z, 1, true, true)
		Kentas.F.Tables.TaskFollowToOffsetOfEntity(p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
		Kentas.F.Tables.SetPedKeepTask(p1, true)
		Kentas.F.Tables.GiveWeaponToPed(p1, Kentas.F.Tables.GetHashKey('weapon_heavysniper_mk2'), 111, true, true)
		
		Kentas.F.Tables.TaskCombatPed(p1, ped, 0,16)
	end,
	PPonhead = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(ped, true))
	
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 2.5, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -2.5, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 2.5, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 5.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 7.5, 0, 90, 0, false, false, false, false, 2, true)
	end,
	Aggressivebolivanos = function()
		local onplayer = Kentas.F.SelectedPlayer
		for s = 0, 2 do
			local ped = Kentas.F.Tables.GetHashKey('u_m_y_mani')
			Kentas.F.Tables.RequestModel(ped)
			while not Kentas.F.Tables.HasModelLoaded(ped) do
				__CitIn__.Wait(30)
				Kentas.F.Tables.RequestModel(ped)
			end
			local ped_2 = Kentas.F.Tables.CreatePed(31, ped, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(onplayer)), 0.0, true, true)
	
			Kentas.F.Tables.GiveWeaponToPed(ped_2, Kentas.F.Tables.GetHashKey('weapon_combatpistol'), 999, true, true)
			Kentas.F.Tables.TaskCombatPed(ped_2, Kentas.F.Tables.GetPlayerPed(onplayer), 0,16)
		end
	end,
	Sirensonplayer = function()
		__CitIn__.CreateThread(function()
			local player = Kentas.F.SelectedPlayer
			local kx = Kentas.F.Tables.GetHashKey('police')
			Kentas.F.Tables.RequestModel(kx)
			while not Kentas.F.Tables.HasModelLoaded(kx) do 
				__CitIn__.Wait(0) 
			end
			local k = Kentas.F.Tables.CreateVehicle(kx, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(player)), 1, 1, 1)
			while true do
				__CitIn__.Wait(0)
				local PoliceAnnoying = true
				if PoliceAnnoying then
					local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(player))
					Kentas.F.Tables.SetEntityVisible(k, false, false)
					Kentas.F.Tables.SetEntityCoords(k, coords.x, coords.y, coords.z + 5)
					Kentas.F.Tables.SetVehicleEngineOn(k, true, true, true)
					Kentas.F.Tables.TriggerSiren(k)
					Kentas.F.Tables.SetVehicleSiren(k, true)
				end
			end
		end)
	end,
	Drawwaypointtoplayer = function()
		local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
		Kentas.F.Tables.SetNewWaypoint(coords.x, coords.y)
	end,
	StealvehicleThisPlayer = function()
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), false)
		if veh ~= 0 then
			
			local car = Kentas.F.Tables.GetEntityModel(veh)
			if Kentas.F.Tables.IsModelValid(car) and Kentas.F.Tables.IsModelAVehicle(car) then
				Kentas.F.Tables.RequestModel(car)
				while not Kentas.F.Tables.HasModelLoaded(car) do
					__CitIn__.Wait(30)
				end
			end
			local vehxd = Kentas.F.Tables.CreateVehicle(car, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), Kentas.F.Tables.GetEntityHeading(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), 1, 1)
			Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), vehxd, -1)
			Kentas.F.Tables.SetVehicleEngineOn(vehxd, 10, true, false)
			Kentas.F.Tables.DeleteEntity(veh)
		end
	end,
	Copyoutfitplayer = function()
		local model = Kentas.F.Tables.GetEntityModel(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
		Kentas.F.Tables.SetPlayerModel(Kentas.F.Tables.PlayerId(), model)
		Kentas.F.Tables.ClonePedToTarget(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), Kentas.F.Tables.PlayerPedId())
	end,
	CopyVehicleplayer = function()
		local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), false)
		local car = Kentas.F.Tables.GetEntityModel(veh)
		if Kentas.F.Tables.IsModelValid(car) and Kentas.F.Tables.IsModelAVehicle(car) then
			Kentas.F.Tables.RequestModel(car)
			while not Kentas.F.Tables.HasModelLoaded(car) do
				__CitIn__.Wait(30)
			end
		end
		local veh = Kentas.F.Tables.CreateVehicle(car, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
		Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), veh, -1)
	end,
	BugVehiclePlayer = function()
		local prop1 = Kentas.F.Tables.GetHashKey('prop_atm_01')
		local player = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		while not Kentas.F.Tables.HasModelLoaded(prop1) do
			__CitIn__.Wait(0) 
			Kentas.F.Tables.RequestModel(prop1)
		end
		local prop2 = Kentas.F.Tables.CreateObject(prop1, 0, 0, 0, true, true, false)
		Kentas.F.Tables.SetEntityVisible(prop2, false, 0)
		Kentas.F.Tables.AttachEntityToEntity(prop2, player, Kentas.F.Tables.GetPedBoneIndex(player, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
	end,
	SpawnBodyguardsPlayer = function()
		local player = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		for bb = 1, 4 do
			local __bodyguard__ = Kentas.F.Tables.GetHashKey('ig_fbisuit_01')
			Kentas.F.Tables.RequestModel(__bodyguard__)
			while not Kentas.F.Tables.HasModelLoaded(__bodyguard__) do
				__CitIn__.Wait(0) 
				Kentas.F.Tables.RequestModel(__bodyguard__)
			end
			local __ped__ = Kentas.F.Tables.CreatePed(21, __bodyguard__, Kentas.F.Tables.GetEntityCoords(player), 0, true, true)
			local __group__ = Kentas.F.Tables.GetHashKey(Kentas.F.Tables.GetPedRelationshipGroupHash(__ped__))
			Kentas.F.Tables.SetPedAsGroupMember(__ped__, Kentas.F.Tables.GetPlayerGroup(player))
			Kentas.F.Tables.SetPedNeverLeavesGroup(__ped__, true)
			Kentas.F.Tables.SetRelationshipBetweenGroups(0, Kentas.F.Tables.GetHashKey("PLAYER"), __group__)
			Kentas.F.Tables.SetRelationshipBetweenGroups(0, __group__, Kentas.F.Tables.GetHashKey("PLAYER"))
			Kentas.F.Tables.SetRelationshipBetweenGroups(1, Kentas.F.Tables.GetHashKey("PLAYER"), __group__)
			Kentas.F.Tables.SetRelationshipBetweenGroups(1, __group__, Kentas.F.Tables.GetHashKey("PLAYER"))
			Kentas.F.Tables.SetCanAttackFriendly(__ped__, false, false)
			Kentas.F.Tables.TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
		end
	end,
	CageThisPlayer = function()
		local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0.0, 0.0, -1.0)
		Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey('prop_container_ld_pu'), c.x, c.y, c.z, true, false, true) 
	end,
	ExplodeThisPlayer = function()
		Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), 7, 1.0, true, false, 0.0)
	end,
	CrushThisPlayer = function()
		__CitIn__.CreateThread(function()
			local vehicle = Kentas.F.Tables.Functions.KBInput('Vehicle Name', 'dump', 10)
			local VehicleHash = Kentas.F.Tables.GetHashKey(vehicle)
			Kentas.F.Tables.RequestModel(VehicleHash)
			local coords = (Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)))
	
			while not Kentas.F.Tables.HasModelLoaded(VehicleHash) do
				Kentas.F.Tables.RequestModel(VehicleHash)
				__CitIn__.Wait(15)
			end
	
			local SpawnedVeh = Kentas.F.Tables.CreateVehicle(VehicleHash, coords.x, coords.y, coords.z + 5.0, 0.0, true, false)
		end)
	end,
	SwastikaThisPlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(ped, true))
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)        
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)       
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)      
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)    
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
		Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
	end,
	LaunchThisPlayer = function()
		Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), 7, 0.1, false, true, 0.0)
	end,
	CrashGameThisPlayer = function()
		local __ped__ = Kentas.F.Tables.GetHashKey("mp_m_freemode_01")
		Kentas.F.Tables.RequestModel(__ped__)
		while not Kentas.F.Tables.HasModelLoaded(__ped__) do
			__CitIn__.Wait(1) 
			Kentas.F.Tables.RequestModel(__ped__)
		end 
		for i = 1, 69 do 
			for i = 1, 3 do 
				__CitIn__.Wait(1)
				local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
				__oped__ = Kentas.F.Tables.CreatePed(21, __ped__, coords.x, coords.y, coords.z+0.1, 1, 1, 1)
				Kentas.F.Tables.GiveWeaponToPed(__oped__, Kentas.F.Tables.GetHashKey('weapon_pistol'), 69, true, true)
				Kentas.F.Tables.TaskCombatPed(__oped__, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
			end
		end
	end,
	HeliDrivebyThisPlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local coords = Kentas.F.Tables.GetEntityCoords(ped)
		
		local pedmodel = "a_m_m_eastsa_01"
		local heli = "frogger"
			
		Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(pedmodel))
		Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(heli))
			
		local loadattemps = 0
			
		while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(pedmodel)) do
			loadattemps = loadattemps + 1
			__CitIn__.Wait(1)
			if loadattemps > 10000 then
				break
			end
		end
			
		while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(heli)) and loadattemps < 10000 do
			__CitIn__.Wait(500)
		end
		local nped = Kentas.F.Tables.CreatePed(31, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)
		local veh = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey(heli), coords.x, coords.y + 15.0, coords.z + 40.0, Kentas.F.Tables.GetEntityHeading(ped), 1, 1)		
		local nped2 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 0, true, true)
		local nped3 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 1, true, true)
		local nped4 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)
		local nped5 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)		
		Kentas.F.Tables.ClearPedTasks(nped)	
		Kentas.F.Tables.SetPedIntoVehicle(nped, veh, -1)
		Kentas.F.Tables.SetPedIntoVehicle(nped2, veh, 0)
		Kentas.F.Tables.SetPedIntoVehicle(nped3, veh, 1)
		Kentas.F.Tables.SetPedIntoVehicle(nped4, veh, 2)
		Kentas.F.Tables.SetPedIntoVehicle(nped5, veh, 3)	
		Kentas.F.Tables.GiveWeaponToPed(nped2, "weapon_assaultrifle", 9999, false, true)
		Kentas.F.Tables.GiveWeaponToPed(nped3, "weapon_assaultrifle", 9999, false, true)
		Kentas.F.Tables.GiveWeaponToPed(nped4, "weapon_assaultrifle", 9999, false, true)
		Kentas.F.Tables.GiveWeaponToPed(nped5, "weapon_assaultrifle", 9999, false, true)		
		Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(ped), Kentas.F.Tables.GetHashKey(nped))
		Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(nped), Kentas.F.Tables.GetHashKey(ped))
		Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(ped), Kentas.F.Tables.GetHashKey(nped2))
		Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(nped2), Kentas.F.Tables.GetHashKey(ped))
		Kentas.F.Tables.SetVehicleEngineOn(veh, 10, true, false)
		Kentas.F.Tables.TaskVehicleChase(nped, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
		Kentas.F.Tables.SetPedKeepTask(nped, true)
		Kentas.F.Tables.SetPedCanSwitchWeapon(nped2, true)
		Kentas.F.Tables.SetPedCanSwitchWeapon(nped3, true)
		Kentas.F.Tables.SetPedCanSwitchWeapon(nped4, true)
		Kentas.F.Tables.SetPedCanSwitchWeapon(nped5, true)
		Kentas.F.Tables.SetEntityInvincible(nped, true)
		Kentas.F.Tables.SetEntityInvincible(nped2, true)
		Kentas.F.Tables.SetEntityInvincible(nped3, true)
		Kentas.F.Tables.SetEntityInvincible(nped2, true)
		Kentas.F.Tables.SetEntityInvincible(nped5, true)
		Kentas.F.Tables.TaskCombatPed(nped2, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
		Kentas.F.Tables.TaskCombatPed(nped3, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
		Kentas.F.Tables.TaskCombatPed(nped4, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
		Kentas.F.Tables.TaskCombatPed(nped5, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
		Kentas.F.Tables.SetPedKeepTask(nped, true)
		Kentas.F.Tables.SetPedKeepTask(nped2, true)
		Kentas.F.Tables.SetPedKeepTask(nped3, true)
		Kentas.F.Tables.SetPedKeepTask(nped4, true)
		Kentas.F.Tables.SetPedKeepTask(nped5, true)
		Kentas.F.Tables.SetRelationshipBetweenGroups(5,Kentas.F.Tables.GetHashKey("PLAYER"),Kentas.F.Tables.GetHashKey(pedmodel))
		Kentas.F.Tables.SetRelationshipBetweenGroups(5,Kentas.F.Tables.GetHashKey(pedmodel),Kentas.F.Tables.GetHashKey("PLAYER"))
	end,
	HoodattackThisPlayer = function()
		local attacker = "g_m_y_famca_01"
		local weapon = "WEAPON_PISTOL"
		for i = 0, 10 do
			local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(attacker))
			__CitIn__.Wait(50)
			if Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(attacker)) then
				local ped =
					Kentas.F.Tables.CreatePed(21, Kentas.F.Tables.GetHashKey(attacker), coords.x + i, coords.y - i, coords.z, 0, true, true) and
					Kentas.F.Tables.CreatePed(21, Kentas.F.Tables.GetHashKey(attacker), coords.x - i, coords.y + i, coords.z, 0, true, true)
					Kentas.F.Tables.NetworkRegisterEntityAsNetworked(ped)
				if Kentas.F.Tables.DoesEntityExist(ped) and not Kentas.F.Tables.IsEntityDead(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)) then
					local net = PedToNet(ped)
					Kentas.F.Tables.NetworkSetNetworkIdDynamic(net, false)
					Kentas.F.Tables.SetNetworkIdCanMigrate(net, true)
					Kentas.F.Tables.SetNetworkIdExistsOnAllMachines(net, true)
					__CitIn__.Wait(50)
					Kentas.F.Tables.NetToPed(net)
					Kentas.F.Tables.GiveWeaponToPed(ped, Kentas.F.Tables.GetHashKey(weapon), 9999, 1, 1)
					Kentas.F.Tables.SetEntityInvincible(ped, true)
					Kentas.F.Tables.SetPedCanSwitchWeapon(ped, true)
					Kentas.F.Tables.TaskCombatPed(ped, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
				elseif Kentas.F.Tables.IsEntityDead(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)) then
					Kentas.F.Tables.TaskCombatHatedTargetsInArea(ped, coords.x, coords.y, coords.z, 500)
				else
					__CitIn__.Wait(0)
				end
			end
		end
	end,
	DeleteVehicleThisPlayer = function()
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
		Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle)
		Kentas.F.Tables.DeleteEntity(vehicle)
	end,
	TpAllVehsThisPlayer = function()
		for veh in Kentas.F.Tables.Functions.EnumerateVehicles() do
			if Kentas.F.Tables.DoesEntityExist(veh) then
				Kentas.F.Tables.SetEntityCoords(veh, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)))
			end
		end
	end,
	RemoveAllVehDoorsPlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)	
		Kentas.F.Tables.NetworkRequestControlOfEntity(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.SelectedPlayer))	
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
	end,
	BreakVehicleEnginePlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)
		Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle)
		Kentas.F.Tables.SetVehicleUndriveable(vehicle,true)
		Kentas.F.Tables.SetVehicleEngineHealth(vehicle, 100)
	end,
	RapeVehiclePlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)		
		Kentas.F.Tables.NetworkRequestControlOfEntity(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.SelectedPlayer))
		Kentas.F.Tables.StartVehicleAlarm(vehicle)
		Kentas.F.Tables.DetachVehicleWindscreen(vehicle)
		Kentas.F.Tables.SmashVehicleWindow(vehicle, 0)
		Kentas.F.Tables.SmashVehicleWindow(vehicle, 1)
		Kentas.F.Tables.SmashVehicleWindow(vehicle, 2)
		Kentas.F.Tables.SmashVehicleWindow(vehicle, 3)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 0, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 1, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 2, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 3, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 5, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
		Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 7, true, 1000.0)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
		Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
		Kentas.F.Tables.SetVehicleLights(vehicle, 1)
		Kentas.F.Tables.SetVehicleLightsMode(vehicle, 1)
		Kentas.F.Tables.SetVehicleNumberPlateTextIndex(vehicle, 5)
		Kentas.F.Tables.SetVehicleNumberPlateText(vehicle, "SYNTAX")
		Kentas.F.Tables.SetVehicleDirtLevel(vehicle, 10.0)
		Kentas.F.Tables.SetVehicleModColor_1(vehicle, 1)
		Kentas.F.Tables.SetVehicleModColor_2(vehicle, 1)
		Kentas.F.Tables.SetVehicleCustomPrimaryColour(vehicle, 255, 51, 255)
		Kentas.F.Tables.SetVehicleCustomSecondaryColour(vehicle, 255, 51, 255)
		Kentas.F.Tables.SetVehicleBurnout(vehicle, true)
	end,
	LaunchVehiclePlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped)
		if vehicle ~= 0 then
			Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle)
			Kentas.F.Tables.ApplyForceToEntity(vehicle, 1, 0.0, 0.0, 5000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
		end
	end,
	GiveweaponPlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local r =  Kentas.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
		Kentas.F.Tables.NetworkRequestControlOfEntity(ped)
		if r ~= '' then
			Kentas.F.Tables.GiveWeaponToPed(ped, Kentas.F.Tables.GetHashKey(r), 250, false, false)
		end
	end,
	RemoveweaponPlayer = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local r =  Kentas.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
		Kentas.F.Tables.NetworkRequestControlOfEntity(ped)
		if r ~= '' then
			Kentas.F.Tables.RemoveWeaponFromPed(ped, r)
		end
	end,
	GiveweaponDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local r =  Kentas.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
			Kentas.F.Tables.NetworkRequestControlOfEntity(ped)
			if r ~= '' then
				Kentas.F.Tables.GiveWeaponToPed(ped, Kentas.F.Tables.GetHashKey(r), 250, false, false)
			end
		end
	end,
	RemoveweaponDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
			local r =  Kentas.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
			Kentas.F.Tables.NetworkRequestControlOfEntity(ped)
			if r ~= '' then
				Kentas.F.Tables.RemoveWeaponFromPed(ped, r)
			end
		end
	end,
	TpAllPedsThisPlayer = function()
		for peds in Kentas.F.Tables.Functions.EnumeratePeds() do
			if Kentas.F.Tables.DoesEntityExist(peds) then
				Kentas.F.Tables.SetEntityCoords(peds, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)))
			end
		end
	end,
	TpAllObjectsThisPlayer = function()
		for Objects in Kentas.F.Tables.Functions.EnumerateObjects() do
			if Objects ~= nil then
				if Kentas.F.Tables.DoesEntityExist(Objects) then
					Kentas.F.Tables.SetEntityCoords(Objects, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)))
				end
			end
		end
	end,
	combo_killusingweapononline = function()
		local wep = Kentas.F.Combos['KillUsingWeaponOnline'].b[Kentas.F.Combos['KillUsingWeaponOnline'].a]
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local coords = Kentas.F.Tables.GetEntityCoords(ped)
		local pedd = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
		Kentas.F.Tables.RequestModel(pedd)
		while not Kentas.F.Tables.HasModelLoaded(pedd) do
			__CitIn__.Wait(0)
			Kentas.F.Tables.RequestModel(pedd)
		end	
		local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(Kentas.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, 1, 1)
		Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1.0, true, Kentas.F.Tables.GetHashKey('WEAPON_'..wep), __SPAWNINGPED__, true, false, -1.0)
		Kentas.F.Tables.DeleteEntity(__SPAWNINGPED__)
	end,
	taze_online = function()
		local ped = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		local coords = Kentas.F.Tables.GetEntityCoords(ped)
		local pedd = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
		--if not Kentas.F.Tables.DoesEntityExist(__SPAWNINGPED__) then
			Kentas.F.Tables.RequestModel(pedd)
			while not Kentas.F.Tables.HasModelLoaded(pedd) do
				__CitIn__.Wait(0)
				Kentas.F.Tables.RequestModel(pedd)
			end	
			local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(Kentas.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
			Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1, true, Kentas.F.Tables.GetHashKey("WEAPON_STUNGUN"), __SPAWNINGPED__, true, false, -1.0)
			Kentas.F.Tables.DeleteEntity(__SPAWNINGPED__)
		--end
	end,
	taze_dest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local coords = Kentas.F.Tables.GetEntityCoords(ped)
			local pedd = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
			--if not Kentas.F.Tables.DoesEntityExist(__SPAWNINGPED__) then
				Kentas.F.Tables.RequestModel(pedd)
				while not Kentas.F.Tables.HasModelLoaded(pedd) do
					__CitIn__.Wait(0)
					Kentas.F.Tables.RequestModel(pedd)
				end	
				local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(Kentas.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
				Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1, true, Kentas.F.Tables.GetHashKey("WEAPON_STUNGUN"), __SPAWNINGPED__, true, false, -1.0)
				Kentas.F.Tables.DeleteEntity(__SPAWNINGPED__)
			--end
		end
	end,
	combo_killusingweapondest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local wep = Kentas.F.Combos['KillUsingWeaponOnline'].b[Kentas.F.Combos['KillUsingWeaponOnline'].a]
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local coords = Kentas.F.Tables.GetEntityCoords(ped)
			local pedd = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
			Kentas.F.Tables.RequestModel(pedd)
			while not Kentas.F.Tables.HasModelLoaded(pedd) do
				__CitIn__.Wait(0)
				Kentas.F.Tables.RequestModel(pedd)
			end	
			local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(Kentas.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
			Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1.0, true, Kentas.F.Tables.GetHashKey('WEAPON_'..wep), __SPAWNINGPED__, true, false, -1.0)
			Kentas.F.Tables.DeleteEntity(__SPAWNINGPED__)
		end
	end,
	combo_RambyvehicleOnline = function()
		local custom_vehicle = Kentas.F.Combos['RambyvehicleOnline'].b[Kentas.F.Combos['RambyvehicleOnline'].a]
		Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(custom_vehicle))
		while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(custom_vehicle)) do
			__CitIn__.Wait(0)
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(custom_vehicle))
		end	
                
		local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
		local veh = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
		local rotation = Kentas.F.Tables.GetEntityRotation(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
                
		Kentas.F.Tables.SetVehicleEngineOn(veh, true, true, true)
		Kentas.F.Tables.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
		Kentas.F.Tables.SetVehicleForwardSpeed(veh, 100.0)
	end,
	combo_Attachdest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local prop = Kentas.F.Tables.GetHashKey(Kentas.F.Combos['AttachOnl'].b[Kentas.F.Combos['AttachOnl'].a])
			Kentas.F.Tables.RequestModel(prop)
			while not Kentas.F.Tables.HasModelLoaded(prop) do
				__CitIn__.Wait(0)
				Kentas.F.Tables.RequestModel(prop)
			end
			local object = Kentas.F.Tables.CreateObject(prop, 0, 0, 0, true, true, true)
			Kentas.F.Tables.AttachEntityToEntity(object, Kentas.F.Tables.GetPlayerPed(v), Kentas.F.Tables.GetPedBoneIndex(Kentas.F.Tables.GetPlayerPed(v), 0), 0, 0, 0.3, 0.0, 0.0, 0, true, true, false, true, 1, true)
		end
	end,
	combo_AttachOnl = function()
		local prop = Kentas.F.Tables.GetHashKey(Kentas.F.Combos['AttachOnl'].b[Kentas.F.Combos['AttachOnl'].a])
		Kentas.F.Tables.RequestModel(prop)
		while not Kentas.F.Tables.HasModelLoaded(prop) do
			__CitIn__.Wait(0)
			Kentas.F.Tables.RequestModel(prop)
		end
		local object = Kentas.F.Tables.CreateObject(prop, 0, 0, 0, true, true, true)
		Kentas.F.Tables.AttachEntityToEntity(object, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), Kentas.F.Tables.GetPedBoneIndex(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0), 0, 0, 0.3, 0.0, 0.0, 0, true, true, false, true, 1, true)
	end,
	combo_chams = function()
		local chams = Kentas.F.Combos['ChamsType'].b[Kentas.F.Combos['ChamsType'].a]
		if chams == 'white' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/white.png', 1608, 1468)
		elseif chams == 'red' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/red.png', 1608, 1468)
		elseif chams == 'green' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/green.png', 1608, 1468)
		elseif chams == 'blue' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/blue.png', 1608, 1468)
		elseif chams == 'galaxy1' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/galaxy1.gif', 300, 300)
		elseif chams == 'galaxy2' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/galaxy2.gif', 680, 383)
		elseif chams == 'lightning' then; Kentas.F.Tables.Functions.ESPChams('load', 'https://kentas.menu/skins/chams/lightning.gif', 480, 480)
		elseif chams == 'clean' then; Kentas.F.Tables.Functions.ESPChams('remove', '', 1, 1)
		end
	end,
	combo_spawnmelee = function()
		local weapon = Kentas.F.Combos['Melees'].b[Kentas.F.Combos['Melees'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnhandgun = function()
		local weapon = Kentas.F.Combos['Handguns'].b[Kentas.F.Combos['Handguns'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnSMG = function()
		local weapon = Kentas.F.Combos['SMG'].b[Kentas.F.Combos['SMG'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnRifle = function()
		local weapon = Kentas.F.Combos['Rifle'].b[Kentas.F.Combos['Rifle'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnShotguns = function()
		local weapon = Kentas.F.Combos['Shotguns'].b[Kentas.F.Combos['Shotguns'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnHeavy = function()
		local weapon = Kentas.F.Combos['Heavy'].b[Kentas.F.Combos['Heavy'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnSnipers = function()
		local weapon = Kentas.F.Combos['Snipers'].b[Kentas.F.Combos['Snipers'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnThrowable = function()
		local weapon = Kentas.F.Combos['Throwable'].b[Kentas.F.Combos['Throwable'].a]
		Kentas.F.Tables.GiveWeaponToPed(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_setwantedlevel = function()
		Kentas.F.Tables.SetPlayerWantedLevel(Kentas.F.Tables.PlayerId(), Kentas.F.Combos['wantedlevel'].b[Kentas.F.Combos['wantedlevel'].a], false)
		Kentas.F.Tables.SetPlayerWantedLevelNow(Kentas.F.Tables.PlayerId(), false)
	end,
	
	combo_soundsonline = function()
		Kentas.F.Tables.PlaySoundFromCoord(-1, Kentas.F.Combos['SoundsOnl'].c[Kentas.F.Combos['SoundsOnl'].a], Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), Kentas.F.Combos['SoundsOnl'].d[Kentas.F.Combos['SoundsOnl'].a], true, 1.0, true)
	end,
	onlineattachme = function()
		if Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer) ~= Kentas.F.Tables.PlayerPedId() then
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), Kentas.F.Tables.GetPedBoneIndex(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 57005), 0, 0, 0.0, 0, 0, 0, false, true, true, true, 1, true)
		end
	end,
	onlineattachpeds = function()
		local currentped = Kentas.F.Tables.Functions.PedsSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.PedsSpawnerModes)]
		local __pedmodel__ = Kentas.F.Tables.GetHashKey(currentped)
		Kentas.F.Tables.RequestModel(__pedmodel__)
		while not Kentas.F.Tables.HasModelLoaded(__pedmodel__) do
			__CitIn__.Wait(10)
			Kentas.F.Tables.RequestModel(__pedmodel__)
		end	
		local _p1 = Kentas.F.Tables.CreatePed(21, __pedmodel__, 0.0, 0.0, 0.0, 0.0, true, true)
		Kentas.F.Tables.AttachEntityToEntity(_p1, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), Kentas.F.Tables.GetPedBoneIndex(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 57005), 0, 0, 0.0, 0, 0, 0, false, true, true, true, 1, true)
	end,
	onlineattachprops = function()
		local currentprop = Kentas.F.Tables.Functions.PropsSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.PropsSpawnerModes)]
		local __prophash__ = Kentas.F.Tables.GetHashKey(currentprop)
		local _p1 = Kentas.F.Tables.CreateObject(__prophash__, 0.0, 0.0, 0.0, 1, 1, 1)
		Kentas.F.Tables.AttachEntityToEntity(_p1, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), Kentas.F.Tables.GetPedBoneIndex(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 57005), 0, 0, 0.0, 0, 0, 0, false, true, true, true, 1, true)
	end,
	combo_soundsdest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			Kentas.F.Tables.PlaySoundFromCoord(-1, Kentas.F.Combos['SoundsOnl'].c[Kentas.F.Combos['SoundsOnl'].a], Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v)), Kentas.F.Combos['SoundsOnl'].d[Kentas.F.Combos['SoundsOnl'].a], true, 1.0, true)
		end
	end,
	combo_Rambyvehicledest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local custom_vehicle = Kentas.F.Combos['RambyvehicleOnline'].b[Kentas.F.Combos['RambyvehicleOnline'].a]
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(custom_vehicle))
			while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(custom_vehicle)) do
				__CitIn__.Wait(0)
				Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(custom_vehicle))
			end	
					
			local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
			local veh = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
			local rotation = Kentas.F.Tables.GetEntityRotation(Kentas.F.Tables.GetPlayerPed(v))
					
			Kentas.F.Tables.SetVehicleEngineOn(veh, true, true, true)
			Kentas.F.Tables.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
			Kentas.F.Tables.SetVehicleForwardSpeed(veh, 100.0)
		end
	end,
	solosessionself = function()
		Kentas.F.Tables.NetworkSessionEnd(0, 1)
	end,
	RemoveVoiceProximityself = function()
		NetworkClearVoiceProximityOverride() 
	end,
	FuckVoiceChatself = function()
		NetworkSessionVoiceSetTimeout(30000) 
	end,
	FreezeMicrophoneself = function()
		FreezeMicrophone()
	end,
	DestroyserverDest = function()
		for _Ai = 1, 6 do
			__lastcoords__ = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
			__CitIn__.CreateThread(function()
				local prprops = {'hw1_lod_08_09_16_17_18', 'cs4_lod_01_slod3', 'apa_mp_apa_yacht', 'ap1_01_a_ap1_gm_grnd012', 'ap1_01_a_ap1_gm_grnd013', 'dt1_21_slod', 'dt1_11_dt1_tower_lod', 'id2_lod_00_ab_slod2', 'dt1_lod_03_04_05_11', 'gr_prop_gr_ramproof_gate', 'stt_prop_ramp_adj_loop', 'stt_prop_ramp_jump_xl', 'stt_prop_ramp_multi_loop_rb', 'stt_prop_ramp_spiral_l', 'stt_prop_ramp_spiral_xxl', 'stt_prop_stunt_ramp', 'stt_prop_ramp_spiral_s'}
				local hash = prprops[__KentasStrings__.strings:random(1, #prprops)]
				local _c = Kentas.F.Tables.GetHashKey(hash)
				Kentas.F.Tables.RequestModel(_c)
				while not Kentas.F.Tables.HasModelLoaded(_c) do
					__CitIn__.Wait(1)
					Kentas.F.Tables.RequestModel(_c)
				end
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -101.63, -512.04, 30.56, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -101.63, -512.04, 30.56, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 277.90, -582.25, 43.13, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 277.90, -582.25, 43.13, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 138.59, -908.78, 30.37, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 138.59, -908.78, 30.37, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 303.31, -1070.71, 29.44, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 303.31, -1070.71, 29.44, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 420.48, -1021.47, 29.00, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 420.48, -1021.47, 29.00, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 432.09, -981.42, 30.71, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 432.09, -981.42, 30.71, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 500.3759, -825.49, 24.92, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 500.3759, -825.49, 24.92, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 374.54, -599.47, 28.81, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 374.54, -599.47, 28.81, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 292.13, -847.28, 29.09, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 292.13, -847.28, 29.09, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), 400.23, -126.82, 64.97, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, 400.23, -126.82, 64.97, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -96.42, 91.52, 71.84, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -96.42, 91.52, 71.84, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -367.30, -129.63, 38.69, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -367.30, -129.63, 38.69, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -540.24, -212.94, 37.64, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -540.24, -212.94, 37.64, true, true, true); __CitIn__.Wait(1)
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -1333.81, -1545.114, 4.34, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -1333.81, -1545.114, 4.34, true, true, true); __CitIn__.Wait(1) 
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -802.72, 4145.72, 210.51, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -802.72, 4145.72, 210.51, true, true, true); __CitIn__.Wait(1) 
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -515.15, 4422.49, 89.05, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -515.15, 4422.49, 89.05, true, true, true); __CitIn__.Wait(1) 
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), -515.15, 4422.49, 89.05, 1, 0, 0, 1); __CitIn__.Wait(1); Kentas.F.Tables.CreateObject(_c, -233.20, -4226.212, 44.82, true, true, true); __CitIn__.Wait(1); 
				Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), __lastcoords__, 1, 0, 0, 1)
				__CitIn__.Wait(1); 
				for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
					local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
					for ha = 1, 30 do
						Kentas.F.Tables.CreateObject(_c, coords.x+ha/100, coords.y+ha/100, coords.z, true, true, false)
						Kentas.F.Tables.CreateObject(_c, coords.x-ha/100, coords.y-ha/100, coords.z, true, true, false)
					end
				end

			end)
		end
	end,
	LegionBlockDest = function()
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 107.68, -1041.62, 29.37, true, true, false)
		local fuck1 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  107.68, -990.57, 29.41, true, true, false)
		local fuck2 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 219.54,  -1043.56, 29.41, true, true, false)
		local fuck3 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  219.54, -1043.56, 29.41, true, true, false)
		local fuck4 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  287.65, -860.3, 29.35, true, true, false)
		local fuck5 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  287.65, -860.3, 29.35, true, true, false)
		local fuck6 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  175.63, -819.8, 31.18, true, true, false)
		local fuck7 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  175.63, -819.8, 31.18, true, true, false)
		Kentas.F.Tables.FreezeEntityPosition(fuck, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck1, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck2, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck3, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck4, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck5, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck6, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck7, true)
	end,
	LSPDBlockDest = function()
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 498.79, -1057.48, 28.56, true, true, false)
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 498.79, -1057.48, 28.56, true, true, false)
		local fuck2 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 494.96, -956.29, 27.12, true, true, false)
		local fuck3 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 494.96, -956.29, 27.12, true, true, false)
		local fuck4 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  404.26, -955.44, 29.43, true, true, false)
		local fuck5 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  404.26, -955.44, 29.43, true, true, false)
		local fuck6 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  398.27, -1027.65, 29.44, true, true, false)
		local fuck7 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  398.27, -1027.65, 29.44, true, true, false)
		Kentas.F.Tables.FreezeEntityPosition(fuck, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck1, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck2, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck3, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck4, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck5, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck6, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck7, true)
	end,
	CarDealerBlockDest = function()
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', -20.59, -1120.57, 26.91, true, true, false)
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', -20.59, -1120.57, 26.91, true, true, false)
		local fuck2 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', -66.75, -1104.18, 26.1, true, true, false)
		local fuck3 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', -66.75, -1104.18, 26.1, true, true, false)
		local fuck4 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  -55.87, -1076.53, 27.02, true, true, false)
		local fuck5 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  -55.87, -1076.53, 27.02, true, true, false)
		Kentas.F.Tables.FreezeEntityPosition(fuck, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck1, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck2, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck3, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck4, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck5, true)
	end,
	GroveStreetBlockDest = function()
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 69.26, -1893.45, 21.71, true, true, false)
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 69.26, -1893.45, 21.71, true, true, false)
		local fuck2 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', -26.4, -1814.42, 26.1, true, true, false)
		local fuck3 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', -26.4, -1814.42, 26.1, true, true, false)
		local fuck4 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  -71.52, -1790.09, 27.92, true, true, false)
		local fuck5 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  -71.52, -1790.09, 27.92, true, true, false)
		Kentas.F.Tables.FreezeEntityPosition(fuck, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck1, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck2, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck3, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck4, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck5, true)
	end,
	AmmunationBlockDest = function()
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 52.14, -1121.64, 29.25, true, true, false)
		local fuck = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 52.14, -1121.64, 29.25, true, true, false)
		local fuck2 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 38.8, -1133.74, 29.2, true, true, false)
		local fuck3 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15', 38.8, -1133.74, 29.2, true, true, false)
		local fuck4 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  -14.84, -1135.42, 27.36, true, true, false)
		local fuck5 = Kentas.F.Tables.CreateObject('stt_prop_stunt_jump15',  -14.84, -1135.42, 27.36, true, true, false)
		Kentas.F.Tables.FreezeEntityPosition(fuck, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck1, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck2, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck3, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck4, true)
		Kentas.F.Tables.FreezeEntityPosition(fuck5, true)
	end,
	RemoveAllVehDoorsDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)	
			Kentas.F.Tables.NetworkRequestControlOfEntity(Kentas.F.Tables.GetVehiclePedIsIn(v))	
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
		end
	end,
	BreakVehicleEngineDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)
			Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle)
			Kentas.F.Tables.SetVehicleUndriveable(vehicle,true)
			Kentas.F.Tables.SetVehicleEngineHealth(vehicle, 100)
		end
	end,
	RapeVehicleDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped, 0)		
			Kentas.F.Tables.NetworkRequestControlOfEntity(Kentas.F.Tables.GetVehiclePedIsIn(v))
			Kentas.F.Tables.StartVehicleAlarm(vehicle)
			Kentas.F.Tables.DetachVehicleWindscreen(vehicle)
			Kentas.F.Tables.SmashVehicleWindow(vehicle, 0)
			Kentas.F.Tables.SmashVehicleWindow(vehicle, 1)
			Kentas.F.Tables.SmashVehicleWindow(vehicle, 2)
			Kentas.F.Tables.SmashVehicleWindow(vehicle, 3)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 0, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 1, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 2, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 3, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 5, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
			Kentas.F.Tables.SetVehicleTyreBurst(vehicle, 7, true, 1000.0)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
			Kentas.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
			Kentas.F.Tables.SetVehicleLights(vehicle, 1)
			Kentas.F.Tables.SetVehicleLightsMode(vehicle, 1)
			Kentas.F.Tables.SetVehicleNumberPlateTextIndex(vehicle, 5)
			Kentas.F.Tables.SetVehicleNumberPlateText(vehicle, "SYNTAX")
			Kentas.F.Tables.SetVehicleDirtLevel(vehicle, 10.0)
			Kentas.F.Tables.SetVehicleModColor_1(vehicle, 1)
			Kentas.F.Tables.SetVehicleModColor_2(vehicle, 1)
			Kentas.F.Tables.SetVehicleCustomPrimaryColour(vehicle, 255, 51, 255)
			Kentas.F.Tables.SetVehicleCustomSecondaryColour(vehicle, 255, 51, 255)
			Kentas.F.Tables.SetVehicleBurnout(vehicle, true)
		end
	end,
	LaunchVehicleDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(ped)
			if vehicle ~= 0 then
				Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle)
				Kentas.F.Tables.ApplyForceToEntity(vehicle, 1, 0.0, 0.0, 5000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
			end
		end
	end,

	PedModelOnl = function()
		__CitIn__.CreateThread(function()
			Kentas.F.PedOnline = Kentas.F.Tables.Functions.KBInput('Ped spawn name','', 23)
			--return Kentas.F.PedOnline
		end)
	end,
	PedWeaponOnl = function()
		Kentas.F.PedWeaponOnline = Kentas.F.Tables.Functions.KBInput('Enter weapon name','', 23)
		return Kentas.F.PedWeaponOnline
	end,
	ClonePlayerOnl = function()
		Kentas.F.Tables.ClonePed(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), true, false, true)
	end,
	SpawnPedOnl = function()
		local __pedmodel__ = Kentas.F.Tables.GetHashKey(Kentas.F.PedOnline)		
		Kentas.F.Tables.RequestModel(__pedmodel__)
		while not Kentas.F.Tables.HasModelLoaded(__pedmodel__) do
			__CitIn__.Wait(10)
			Kentas.F.Tables.RequestModel(__pedmodel__)
		end	
		local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(Kentas.F.Tables.GetPedType(__pedmodel__), __pedmodel__, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), 0.0, true, true)
		if Kentas.F.PedWeaponOnline ~= nil then
			Kentas.F.Tables.GiveWeaponToPed(__SPAWNINGPED__, Kentas.F.Tables.GetHashKey(Kentas.F.PedWeaponOnline), 100, false, true)
		end

		if Kentas.F.Checks['online:Aggressive'] then
			Kentas.F.Tables.TaskCombatPed(__SPAWNINGPED__, Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), 0, 16)
		end
	end,
	SpawnBlimp = function()
		local __MODEL__ = Kentas.F.Tables.GetHashKey("BLIMP")
		Kentas.F.Tables.RequestModel(__MODEL__)
		while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Kentas.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnJet = function()
		local __MODEL__ = Kentas.F.Tables.GetHashKey("JET")
		Kentas.F.Tables.RequestModel(__MODEL__)
		while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Kentas.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnTitan = function()
		local __MODEL__ = Kentas.F.Tables.GetHashKey("TITAN")
		Kentas.F.Tables.RequestModel(__MODEL__)
		while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Kentas.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnRhino = function()
		local __MODEL__ = Kentas.F.Tables.GetHashKey("RHINO")
		Kentas.F.Tables.RequestModel(__MODEL__)
		while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Kentas.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnBlimpD = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Kentas.F.Tables.GetHashKey("BLIMP")
			Kentas.F.Tables.RequestModel(__MODEL__)
			while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Kentas.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
				Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	SpawnJetD = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Kentas.F.Tables.GetHashKey("JET")
			Kentas.F.Tables.RequestModel(__MODEL__)
			while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Kentas.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
				Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	SpawnTitanD = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Kentas.F.Tables.GetHashKey("TITAN")
			Kentas.F.Tables.RequestModel(__MODEL__)
			while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Kentas.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
				Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	SpawnRhinoD = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Kentas.F.Tables.GetHashKey("RHINO")
			Kentas.F.Tables.RequestModel(__MODEL__)
			while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Kentas.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Kentas.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
				Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	combo_doorsplayer = function()
		local __action__ = Kentas.F.Combos['DoorsOnl'].b[Kentas.F.Combos['DoorsOnl'].a]
		local player = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
		if Kentas.F.Tables.IsPedInAnyVehicle(player) then
			local playerveh = Kentas.F.Tables.GetVehiclePedIsIn(player)
			--Kentas.F.Tables.NetworkRequestControlOfEntity(playerveh)
			if __action__ == "lock" then
				Kentas.F.Tables.SetVehicleAlarm(playerveh, true)
				Kentas.F.Tables.SetVehicleDoorsLocked(playerveh, true)
				Kentas.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, true)
			elseif __action__ == "unlock" then
				Kentas.F.Tables.SetVehicleAlarm(playerveh, false)
				Kentas.F.Tables.SetVehicleDoorsLocked(playerveh, false)
				Kentas.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, false)
			elseif __action__ == "open all" then
				for door = 0, 7 do
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, door, false, false)
				end
			elseif __action__ == "close all" then
				for door = 0, 7 do
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, door, false)
				end
			elseif __action__ == "open front left" then
				Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 0, false, false)
			elseif __action__ == "open front right" then
				Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 1, false, false)
			elseif __action__ == 'open left rear' then
				Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 2, false, false)
			elseif __action__ == 'open right rear' then
				Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 3, false, false)
			elseif __action__ == 'open mask' then
				Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 4, false, false)
			elseif __action__ == 'open trunk' then
				Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 5, false, false)
			elseif __action__ == "close front left" then
				Kentas.F.Tables.SetVehicleDoorShut(playerveh, 0, false, false)
			elseif __action__ == "close front right" then
				Kentas.F.Tables.SetVehicleDoorShut(playerveh, 1, false, false)
			elseif __action__ == 'close left rear' then
				Kentas.F.Tables.SetVehicleDoorShut(playerveh, 2, false, false)
			elseif __action__ == 'close right rear' then
				Kentas.F.Tables.SetVehicleDoorShut(playerveh, 3, false, false)
			elseif __action__ == 'close mask' then
				Kentas.F.Tables.SetVehicleDoorShut(playerveh, 4, false, false)
			elseif __action__ == 'close trunk' then
				Kentas.F.Tables.SetVehicleDoorShut(playerveh, 5, false, false)
			end
		else
			Kentas.F.Tables.Functions.Notify('Player must sit in vehicle!')
		end
	end,
	combo_doorsdest = function()
		local __action__ = Kentas.F.Combos['DoorsOnl'].b[Kentas.F.Combos['DoorsOnl'].a]
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local player = Kentas.F.Tables.GetPlayerPed(v)
			if Kentas.F.Tables.IsPedInAnyVehicle(player) then
				local playerveh = Kentas.F.Tables.GetVehiclePedIsIn(player)
				Kentas.F.Tables.NetworkRequestControlOfEntity(playerveh)
				if __action__ == "lock" then
					Kentas.F.Tables.SetVehicleAlarm(playerveh, true)
					Kentas.F.Tables.SetVehicleDoorsLocked(playerveh, true)
					Kentas.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, true)
				elseif __action__ == "unlock" then
					Kentas.F.Tables.SetVehicleAlarm(playerveh, false)
					Kentas.F.Tables.SetVehicleDoorsLocked(playerveh, false)
					Kentas.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, false)
				elseif __action__ == "open all" then
					for door = 0, 7 do
						Kentas.F.Tables.SetVehicleDoorOpen(playerveh, door, false, false)
					end
				elseif __action__ == "close all" then
					for door = 0, 7 do
						Kentas.F.Tables.SetVehicleDoorShut(playerveh, door, false)
					end
				elseif __action__ == "open front left" then
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 0, false, false)
				elseif __action__ == "open front right" then
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 1, false, false)
				elseif __action__ == 'open left rear' then
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 2, false, false)
				elseif __action__ == 'open right rear' then
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 3, false, false)
				elseif __action__ == 'open mask' then
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 4, false, false)
				elseif __action__ == 'open trunk' then
					Kentas.F.Tables.SetVehicleDoorOpen(playerveh, 5, false, false)
				elseif __action__ == "close front left" then
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, 0, false, false)
				elseif __action__ == "close front right" then
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, 1, false, false)
				elseif __action__ == 'close left rear' then
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, 2, false, false)
				elseif __action__ == 'close right rear' then
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, 3, false, false)
				elseif __action__ == 'close mask' then
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, 4, false, false)
				elseif __action__ == 'close trunk' then
					Kentas.F.Tables.SetVehicleDoorShut(playerveh, 5, false, false)
				end
			else
				Kentas.F.Tables.Functions.Notify('Player must sit in vehicle!')
			end
		end
	end,
	combo_Strength = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_STRENGTH'), Kentas.F.Combos['Strength-stat'].b[Kentas.F.Combos['Strength-stat'].a]-1, true)
	end,
	combo_Stamina = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_STAMINA'), Kentas.F.Combos['Stamina-stat'].b[Kentas.F.Combos['Stamina-stat'].a]-1, true)
	end,
	combo_Lung = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_LUNG_CAPACITY'), Kentas.F.Combos['Lung-stat'].b[Kentas.F.Combos['Lung-stat'].a]-1, true)
	end,
	combo_Shooting = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_SHOOTING_ABILITY'), Kentas.F.Combos['Shooting-stat'].b[Kentas.F.Combos['Shooting-stat'].a]-1, true)
	end,
	combo_Wheelie = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_WHEELIE_ABILITY'), Kentas.F.Combos['Wheelie-stat'].b[Kentas.F.Combos['Wheelie-stat'].a]-1, true)
	end,
	combo_Driving = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_DRIVING_ABILITY'), Kentas.F.Combos['Driving-stat'].b[Kentas.F.Combos['Driving-stat'].a]-1, true)
	end,
	combo_Flying = function()
		Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey('MP0_FLYING_ABILITY'), Kentas.F.Combos['Flying-stat'].b[Kentas.F.Combos['Flying-stat'].a]-1, true)
	end,
	combo_nil = function()
	end,
	CreateExplosion = function()
		if Kentas.F.Checks['explodeo:Camerashake'] then
			shakeshitok = 1230.0
		else
			shakeshitok = 0.0
		end
		Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), Kentas.F.Combos['ExplodeTypeOnl'].b[Kentas.F.Combos['ExplodeTypeOnl'].a], 1.0, Kentas.F.Checks['explodeo:Audible'], Kentas.F.Checks['explodeo:Invisible'], shakeshitok)
	end,
	combo_setenginesound = function()
		local vehicle = Kentas.F.Tables.GetVehiclePedIsUsing(Kentas.F.Tables.PlayerPedId())
		if vehicle ~= 0 then
			Kentas.F.Tables.ForceVehicleEngineAudio(vehicle, Kentas.F.Combos['EngineSound'].b[Kentas.F.Combos['EngineSound'].a])
		end
	end,
	combo_spawnramp = function()
		local __style__ = Kentas.F.Combos['RampStyle'].b[Kentas.F.Combos['RampStyle'].a]
		local currentramp = Kentas.F.Combos['RampProp'].b[Kentas.F.Combos['RampProp'].a]
		if __style__== "Bumper" then
			local vehicle = Kentas.F.Tables.GetVehiclePedIsUsing(Kentas.F.Tables.PlayerPedId())
			local prop = Kentas.F.Tables.GetHashKey(currentramp)
			local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(vehicle, true))
			Kentas.F._p1 = Kentas.F.Tables.CreateObject(prop, x, y, z, true, true, false)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F._p1, vehicle, Kentas.F.Tables.GetPedBoneIndex(vehicle, 0), 0.0, 2.5, 0.5, 180.0, 180.0, 0.0, false, true, true, false, 2, true)
		--[[
		elseif __style__== "Custom rot" then
			local vehicle = Kentas.F.Tables.GetVehiclePedIsUsing(Kentas.F.Tables.PlayerPedId())
			local prop = Kentas.F.Tables.GetHashKey(currentramp)
			local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(vehicle, true))
			Kentas.F._p = Kentas.F.Tables.CreateObject(prop, x, y, z, true, true, false)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F._p, vehicle, Kentas.F.Tables.GetPedBoneIndex(vehicle, 0), 0.0, 2.5, 0.5, Kentas.F.Sliders['Rot-X'].value, Kentas.F.Sliders['Rot-Y'].value, Kentas.F.Sliders['Rot-Z'].value, false, true, true, false, 2, true)]]
		end
	end,
	rampsdetach = function()
		if Kentas.F._p ~= nil then
			Kentas.F.Tables.DetachEntity(Kentas.F._p, true, false)
		end
		if Kentas.F._p1 ~= nil then
			Kentas.F.Tables.DetachEntity(Kentas.F._p1, true, false)
		end
	end,
	BugAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local player = Kentas.F.Tables.GetPlayerPed(v)
			local prop1 = Kentas.F.Tables.GetHashKey('prop_atm_01')
			while not Kentas.F.Tables.HasModelLoaded(prop1) do
				__CitIn__.Wait(0) 
				Kentas.F.Tables.RequestModel(prop1)
			end
			local prop2 = Kentas.F.Tables.CreateObject(prop1, 0, 0, 0, true, true, false)
			Kentas.F.Tables.SetEntityVisible(prop2, false, 0)
			Kentas.F.Tables.AttachEntityToEntity(prop2, player, Kentas.F.Tables.GetPedBoneIndex(player, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
		end
	end,
	CageAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.GetPlayerPed(v), 0.0, 0.0, -1.0)
			Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey('prop_container_ld_pu'), c.x, c.y, c.z, true, true, true) 
		end
	end,

	ExplodeAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v)), 7, 1.0, true, false, 0.0)
		end
	end,
	CrushAllPlayersDest = function()
		__CitIn__.CreateThread(function()
			local vehicle = Kentas.F.Tables.Functions.KBInput('Enter vehicle spawn name','dump', 20)
			local VehicleHash = Kentas.F.Tables.GetHashKey(vehicle)
			Kentas.F.Tables.RequestModel(VehicleHash)
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
				local coords = (Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v)))
				
				while not Kentas.F.Tables.HasModelLoaded(VehicleHash) do
					Kentas.F.Tables.RequestModel(VehicleHash)
					__CitIn__.Wait(15)
				end
				Kentas.F.Tables.CreateVehicle(VehicleHash, coords.x, coords.y, coords.z + 5.0, 0.0, true, false)
			end
		end)
	end,
	SwastikaAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(ped, true))
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)        
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)       
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)      
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)    
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
			Kentas.F.Tables.AttachEntityToEntity(Kentas.F.Tables.CreateObject(Kentas.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Kentas.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
		end
	end,
	LaunchAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v)), 7, 1.0, false, true, 0.0)
		end
	end,
	CrashAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
			Kentas.F.Tables.RequestModel(ped)
			while not Kentas.F.Tables.HasModelLoaded(ped) do
				__CitIn__.Wait(0)
				Kentas.F.Tables.RequestModel(ped)
			end
			for i = 1, 33 do
				for a = 1, 3 do
					local pea = Kentas.F.Tables.CreatePed(31, ped, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v)), 0.0, true, true)
					Kentas.F.Tables.GiveWeaponToPed(pea, Kentas.F.Tables.GetHashKey('weapon_rpg'), 222, false, true)
				end
			end
		end
	end,
	Deleteallplayervehicles = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local playerveh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(v))
			Kentas.F.Tables.DeleteEntity(playerveh)
		end
	end,
	--[[Airstrikeallplayervehicles = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(v))
			if vehicle ~= 0 then
				local coords = Kentas.F.Tables.GetEntityCoords(vehicle)
				local pedd = `mp_m_freemode_01`
				Kentas.F.Tables.RequestModel(pedd)
				while not Kentas.F.Tables.HasModelLoaded(pedd) do
					__CitIn__.Wait(0)
					Kentas.F.Tables.RequestModel(pedd)
				end	
				local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(21, pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
				Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z + 55.55, coords.x, coords.y, coords.z, 100.0, true, Kentas.F.Tables.GetHashKey('weapon_hominglauncher'), __SPAWNINGPED__, true, false, 1000.0)
			end
		end
		
	end,]]
	helidrivebyAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local ped = Kentas.F.Tables.GetPlayerPed(v)
			local coords = Kentas.F.Tables.GetEntityCoords(ped)
	
			local pedmodel = "a_m_m_eastsa_01"
			local heli = "frogger"
		
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(pedmodel))
			Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(heli))
		
			local loadattemps = 0
		
			while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(pedmodel)) do
				loadattemps = loadattemps + 1
				__CitIn__.Wait(1)
				if loadattemps > 10000 then
					break
				end
			end
		
			while not Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(heli)) and loadattemps < 10000 do
				__CitIn__.Wait(500)
			end
			local nped = Kentas.F.Tables.CreatePed(31, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)
			local veh = Kentas.F.Tables.CreateVehicle(Kentas.F.Tables.GetHashKey(heli), coords.x, coords.y + 15.0, coords.z + 40.0, Kentas.F.Tables.GetEntityHeading(ped), 1, 1)		
			local nped2 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 0, true, true)
			local nped3 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 1, true, true)
			local nped4 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)
			local nped5 = Kentas.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)	
			Kentas.F.Tables.ClearPedTasks(nped)	
			Kentas.F.Tables.SetPedIntoVehicle(nped, veh, -1)
			Kentas.F.Tables.SetPedIntoVehicle(nped2, veh, 0)
			Kentas.F.Tables.SetPedIntoVehicle(nped3, veh, 1)
			Kentas.F.Tables.SetPedIntoVehicle(nped4, veh, 2)
			Kentas.F.Tables.SetPedIntoVehicle(nped5, veh, 3)	
			Kentas.F.Tables.GiveWeaponToPed(nped2, "WEAPON_ASSAULTRIFLE", 9999, false, true)
			Kentas.F.Tables.GiveWeaponToPed(nped3, "WEAPON_ASSAULTRIFLE", 9999, false, true)
			Kentas.F.Tables.GiveWeaponToPed(nped4, "WEAPON_ASSAULTRIFLE", 9999, false, true)		
			Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(ped), Kentas.F.Tables.GetHashKey(nped))
			Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(nped), Kentas.F.Tables.GetHashKey(ped))
			Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(ped), Kentas.F.Tables.GetHashKey(nped2))
			Kentas.F.Tables.SetRelationshipBetweenGroups(5, Kentas.F.Tables.GetHashKey(nped2), Kentas.F.Tables.GetHashKey(ped))
			Kentas.F.Tables.SetVehicleEngineOn(veh, 10, true, false)
			Kentas.F.Tables.TaskVehicleChase(nped, Kentas.F.Tables.GetPlayerPed(v))
			Kentas.F.Tables.SetPedKeepTask(nped, true)
			Kentas.F.Tables.SetPedCanSwitchWeapon(nped2, true)
			Kentas.F.Tables.SetPedCanSwitchWeapon(nped3, true)
			Kentas.F.Tables.SetPedCanSwitchWeapon(nped4, true)
			Kentas.F.Tables.SetPedCanSwitchWeapon(nped5, true)
			Kentas.F.Tables.SetEntityInvincible(nped, true)
			Kentas.F.Tables.SetEntityInvincible(nped2, true)
			Kentas.F.Tables.SetEntityInvincible(nped3, true)
			Kentas.F.Tables.SetEntityInvincible(nped2, true)
			Kentas.F.Tables.SetEntityInvincible(nped5, true)
			Kentas.F.Tables.TaskCombatPed(nped2, Kentas.F.Tables.GetPlayerPed(v), 0, 16)
			Kentas.F.Tables.TaskCombatPed(nped3, Kentas.F.Tables.GetPlayerPed(v), 0, 16)
			Kentas.F.Tables.TaskCombatPed(nped4, Kentas.F.Tables.GetPlayerPed(v), 0, 16)
			Kentas.F.Tables.TaskCombatPed(nped5, Kentas.F.Tables.GetPlayerPed(v), 0, 16)
			Kentas.F.Tables.SetPedKeepTask(nped, true)
			Kentas.F.Tables.SetPedKeepTask(nped2, true)
			Kentas.F.Tables.SetPedKeepTask(nped3, true)
			Kentas.F.Tables.SetPedKeepTask(nped4, true)
			Kentas.F.Tables.SetPedKeepTask(nped5, true)
			Kentas.F.Tables.SetRelationshipBetweenGroups(5,Kentas.F.Tables.GetHashKey("PLAYER"),Kentas.F.Tables.GetHashKey(pedmodel))
			Kentas.F.Tables.SetRelationshipBetweenGroups(5,Kentas.F.Tables.GetHashKey(pedmodel),Kentas.F.Tables.GetHashKey("PLAYER"))
		end
	end,
	hoodattackAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local attacker = "g_m_y_famca_01"
			local weapon = "WEAPON_PISTOL"
			for i = 0, 10 do
				local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
				Kentas.F.Tables.RequestModel(Kentas.F.Tables.GetHashKey(attacker))
				__CitIn__.Wait(50)
				if Kentas.F.Tables.HasModelLoaded(Kentas.F.Tables.GetHashKey(attacker)) then
					local ped =
						Kentas.F.Tables.CreatePed(21, Kentas.F.Tables.GetHashKey(attacker), coords.x + i, coords.y - i, coords.z, 0, true, true) and
						Kentas.F.Tables.CreatePed(21, Kentas.F.Tables.GetHashKey(attacker), coords.x - i, coords.y + i, coords.z, 0, true, true)
						Kentas.F.Tables.NetworkRegisterEntityAsNetworked(ped)
					if Kentas.F.Tables.DoesEntityExist(ped) and not Kentas.F.Tables.IsEntityDead(Kentas.F.Tables.GetPlayerPed(v)) then
						local net = PedToNet(ped)
						Kentas.F.Tables.NetworkSetNetworkIdDynamic(net, false)
						Kentas.F.Tables.SetNetworkIdCanMigrate(net, true)
						Kentas.F.Tables.SetNetworkIdExistsOnAllMachines(net, true)
						__CitIn__.Wait(50)
						Kentas.F.Tables.NetToPed(net)
						Kentas.F.Tables.GiveWeaponToPed(ped, Kentas.F.Tables.GetHashKey(weapon), 9999, 1, 1)
						Kentas.F.Tables.SetEntityInvincible(ped, true)
						Kentas.F.Tables.SetPedCanSwitchWeapon(ped, true)
						Kentas.F.Tables.TaskCombatPed(ped, Kentas.F.Tables.GetPlayerPed(v), 0, 16)
					elseif Kentas.F.Tables.IsEntityDead(Kentas.F.Tables.GetPlayerPed(v)) then
						Kentas.F.Tables.TaskCombatHatedTargetsInArea(ped, coords.x, coords.y, coords.z, 500)
					else
						__CitIn__.Wait(0)
					end
				end
			end
		end
	end,
	deletevehiclesAllPlayersDest = function()
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(v))
			Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle)
			Kentas.F.Tables.DeleteEntity(vehicle)
		end
	end,
	customacdis = function()
		__CitIn__.CreateThread(function()
			local input = Kentas.F.Tables.Functions.KBInput('Input key (only key codes)','121', 30)
			Kentas.F.Tables.DisableControlAction(0, input, true)
		end)
	end,
	customacenbl = function()
		__CitIn__.CreateThread(function()
			local input = Kentas.F.Tables.Functions.KBInput('Input key (only key codes)','121', 30)
			Kentas.F.Tables.EnableAllControlActions(0, input, true)
		end)
	end,
	ResetMenu = function()
		Kentas.F.Checks.KeyboardDragXWM = 0.0
		Kentas.F.Checks.KeyboardDragYWM = 0.0
		--for i = 1, #Kentas.F.submenu do 
		--	Kentas.F.submenu[i].selectedfeature = 1
		--end
		Kentas.maxoptcount = 18
		Kentas.F.Combos['maxoptcountonscreen'].a = 8
	end,
	ChangeMenuStyle = function()
		local style = Kentas.F.Combos['Menu-Style'].b[Kentas.F.Combos['Menu-Style'].a]
		if style == 'Kentas' then
			Kentas.F.NNstyle = 'Kentas'
			Kentas.F.Checks.MainR = 100
			Kentas.F.Checks.MainG = 100
			Kentas.F.Checks.MainB = 255
			Kentas.F.Checks.MainR2, Kentas.F.Checks.MainG2, Kentas.F.Checks.MainB2 = 255, 255, 255
			if Kentas.F.ImageUrlStyle ~= 'https://cdn.discordapp.com/attachments/826526555693645895/884445819254734918/Comp_1.gif' then
				Kentas.F.ImageUrlStyle = 'https://cdn.discordapp.com/attachments/826526555693645895/884445819254734918/Comp_1.gif'
				Kentas.F.Tables.SetDuiUrl(Kentas.F.banner_dui1, Kentas.F.ImageUrlStyle)
			end
		elseif style == 'Kentas' then
			Kentas.F.NNstyle = 'Kentas'
			Kentas.F.Checks.MainR = 25
			Kentas.F.Checks.MainG = 255
			Kentas.F.Checks.MainB = 25
			Kentas.F.Checks.MainR2, Kentas.F.Checks.MainG2, Kentas.F.Checks.MainB2 = 255, 255, 255
			if Kentas.F.ImageUrlStyle ~= 'https://media.discordapp.net/attachments/826518016569114634/902995421671067718/Comp_1.gif' then
				Kentas.F.ImageUrlStyle = 'https://media.discordapp.net/attachments/826518016569114634/902995421671067718/Comp_1.gif'
				Kentas.F.Tables.SetDuiUrl(Kentas.F.banner_dui1, Kentas.F.ImageUrlStyle)
			end
		end
	end,
	ServerIP = function()
		Kentas.F.Tables.Functions.Notify('Server IP: '.. Kentas.F.Tables.GetCurrentServerEndpoint())
	end,
	KillMenu = function()
		Kentas.enabled = false
	end,
	CrashMenu = function()
		______________________________Kentas_________________________._______FUNCS________.CrashMenu()
	end,
	playanimation = function()
		local animation = Kentas.F.Combos['Animations'].b[Kentas.F.Combos['Animations'].a]
		Kentas.F.Tables.RequestAnimDict(animation.lib)
		Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), animation.lib, animation.anim, 8.0, -8.0, -1, 0, 0, false, false, false)
	end,
	Stopanimations = function()
		Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId())
		Kentas.F.Tables.ResetPedMovementClipset(Kentas.F.Tables.PlayerPedId(), 0.0)
	end,
	wotwar = function()
		local player = Kentas.F.Tables.PlayerPedId()
		local coords = Kentas.F.Tables.GetEntityCoords(player)
		local wotteam = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
		Kentas.F.Tables.RequestModel(wotteam)
		while not Kentas.F.Tables.HasModelLoaded(wotteam) do
			__CitIn__.Wait(0) 
			Kentas.F.Tables.RequestModel(wotteam)
		end
		local wotteam2 = Kentas.F.Tables.GetHashKey('rhino')
		Kentas.F.Tables.RequestModel(wotteam2)
		while not Kentas.F.Tables.HasModelLoaded(wotteam2) do
			__CitIn__.Wait(0) 
			Kentas.F.Tables.RequestModel(wotteam2)
		end
		local __veh__2 = Kentas.F.Tables.CreateVehicle(wotteam2, coords.x, coords.y, coords.z, Kentas.F.Tables.GetEntityHeading(ped), 1, 1)
		Kentas.F.Tables.SetPedIntoVehicle(player, __veh__2, -1)
		for bb = 1, 7 do
			local __ped__ = Kentas.F.Tables.CreatePed(21, wotteam, coords.x, coords.y, coords.z, 0, true, true)
			local foundGround, zPos = Kentas.F.Tables.GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, 1)
			if foundGround then
				local random = math.random(5.0, 25.0)
				local __veh__ = Kentas.F.Tables.CreateVehicle(wotteam2, coords.x+random+0.0, coords.y+random+0.0, zPos, Kentas.F.Tables.GetEntityHeading(ped), 1, 1)
				Kentas.F.Tables.SetPedIntoVehicle(__ped__, __veh__, -1)
				Kentas.F.Tables.TaskCombatPed(__ped__, player, 0, 16)
			end
		end
	end,
	ClearPeds = function()
		for peds in Kentas.F.Tables.Functions.EnumeratePeds() do
			Kentas.F.Tables.DeleteEntity(peds)
		end
	end,
	ClearVehs = function()
		for vehicles in Kentas.F.Tables.Functions.EnumerateVehicles() do
			Kentas.F.Tables.DeleteEntity(vehicles)
		end
	end,
	stopcutscene = function()
		Kentas.F.Tables.StopCutscene(true)
	end,
	--setsnowlevel = function()
	--	SetSnowLevel(1.0)
	--end,
	ClearObjects = function()
		for objects in Kentas.F.Tables.Functions.EnumerateObjects() do
			Kentas.F.Tables.DeleteEntity(objects)
		end
	end,
	recruitk9 = function()
		local player = Kentas.F.Tables.PlayerPedId()
		local swatteam = Kentas.F.Tables.GetHashKey('a_c_chop')
		Kentas.F.Tables.RequestModel(swatteam)
		while not Kentas.F.Tables.HasModelLoaded(swatteam) do
			__CitIn__.Wait(0) 
			Kentas.F.Tables.RequestModel(swatteam)
		end
		local __ped__ = Kentas.F.Tables.CreatePed(0, swatteam, Kentas.F.Tables.GetEntityCoords(player), 0, true, true)
		local __group__ = Kentas.F.Tables.GetHashKey(Kentas.F.Tables.GetPedRelationshipGroupHash(__ped__))
		Kentas.F.Tables.SetPedAsGroupMember(__ped__, Kentas.F.Tables.GetPlayerGroup(player))
		Kentas.F.Tables.SetPedNeverLeavesGroup(__ped__, true)
		Kentas.F.Tables.SetRelationshipBetweenGroups(0, Kentas.F.Tables.GetHashKey("PLAYER"), __group__)
		Kentas.F.Tables.SetRelationshipBetweenGroups(0, __group__, Kentas.F.Tables.GetHashKey("PLAYER"))
		Kentas.F.Tables.SetRelationshipBetweenGroups(1, Kentas.F.Tables.GetHashKey("PLAYER"), __group__)
		Kentas.F.Tables.SetRelationshipBetweenGroups(1, __group__, Kentas.F.Tables.GetHashKey("PLAYER"))
		Kentas.F.Tables.SetCanAttackFriendly(__ped__, false, false)
		Kentas.F.Tables.TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
		Kentas.F.Tables.NetworkRegisterEntityAsNetworked(ped)
	end,
	setthistime = function()
		local h, m, s = Kentas.F.Combos['time-hours'].b[Kentas.F.Combos['time-hours'].a], Kentas.F.Combos['time-minute'].b[Kentas.F.Combos['time-minute'].a], Kentas.F.Combos['time-Seconds'].b[Kentas.F.Combos['time-Seconds'].a]
		Kentas.F.Tables.NetworkOverrideClockTime(h, m, s)
		Kentas.F.Tables.SetClockTime(h, m, s)
	end,
	synchronizetime = function()
		local year, month, day, hour, min, sec = Kentas.F.Tables.GetLocalTime()
		Kentas.F.Tables.NetworkOverrideClockTime(hour, min, sec)
		Kentas.F.Tables.SetClockTime(hour, min, sec)
	end,
	getownped = function()
		local m1 = Kentas.F.Tables.Functions.KBInput('Ped spawn name','', 30)
		local model = Kentas.F.Tables.GetHashKey(m1)
		Kentas.F.Tables.RequestModel(model)
		while not Kentas.F.Tables.HasModelLoaded(model) do
			__CitIn__.Wait(0) 
			Kentas.F.Tables.RequestModel(model)
		end
		local ped = Kentas.F.Tables.PlayerPedId()
		local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(ped))
		local p1 = Kentas.F.Tables.CreatePed(3, model, x, y, z, 1, true, true)
		Kentas.F.Tables.TaskFollowToOffsetOfEntity(p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
		Kentas.F.Tables.SetPedKeepTask(p1, true)
	end,
	recruitswatteam = function()
		local player = Kentas.F.Tables.PlayerPedId()
		for bb = 1, 4 do
			local swatteam = Kentas.F.Tables.GetHashKey('s_m_y_swat_01')
			Kentas.F.Tables.RequestModel(swatteam)
			while not Kentas.F.Tables.HasModelLoaded(swatteam) do
				__CitIn__.Wait(0) 
				Kentas.F.Tables.RequestModel(swatteam)
			end
			local __ped__ = Kentas.F.Tables.CreatePed(21, swatteam, Kentas.F.Tables.GetEntityCoords(player), 0, true, true)
			local __group__ = Kentas.F.Tables.GetHashKey(Kentas.F.Tables.GetPedRelationshipGroupHash(__ped__))
			Kentas.F.Tables.SetPedAsGroupMember(__ped__, Kentas.F.Tables.GetPlayerGroup(player))
			Kentas.F.Tables.SetPedNeverLeavesGroup(__ped__, true)
			Kentas.F.Tables.SetRelationshipBetweenGroups(0, Kentas.F.Tables.GetHashKey("PLAYER"), __group__)
			Kentas.F.Tables.SetRelationshipBetweenGroups(0, __group__, Kentas.F.Tables.GetHashKey("PLAYER"))
			Kentas.F.Tables.SetRelationshipBetweenGroups(1, Kentas.F.Tables.GetHashKey("PLAYER"), __group__)
			Kentas.F.Tables.SetRelationshipBetweenGroups(1, __group__, Kentas.F.Tables.GetHashKey("PLAYER"))
			Kentas.F.Tables.SetCanAttackFriendly(__ped__, false, false)
			Kentas.F.Tables.TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
			Kentas.F.Tables.NetworkRegisterEntityAsNetworked(ped)
			Kentas.F.Tables.GiveWeaponToPed(__ped__, Kentas.F.Tables.GetHashKey('weapon_carbinerifle'), 9999, 1, 1)
		end
	end,
}
Kentas.F.Funcs.RequestIpls = function()
	Kentas.F.Tables.RequestIpl('shr_int')Kentas.F.Tables.RequestIpl('TrevorsTrailerTrash')Kentas.F.Tables.RequestIpl('post_hiest_unload')Kentas.F.Tables.RequestIpl('refit_unload')Kentas.F.Tables.RequestIpl('FINBANK')Kentas.F.Tables.RequestIpl('Coroner_Int_on')Kentas.F.Tables.RequestIpl('coronertrash')Kentas.F.Tables.RequestIpl('CS1_02_cf_onmission1')Kentas.F.Tables.RequestIpl('CS1_02_cf_onmission2')Kentas.F.Tables.RequestIpl('CS1_02_cf_onmission3')Kentas.F.Tables.RequestIpl('CS1_02_cf_onmission4')Kentas.F.Tables.RequestIpl('farm')Kentas.F.Tables.RequestIpl('farmint')Kentas.F.Tables.RequestIpl('farm_lod')Kentas.F.Tables.RequestIpl('farm_props')Kentas.F.Tables.RequestIpl('des_farmhouse')Kentas.F.Tables.RequestIpl('FIBlobby')Kentas.F.Tables.RequestIpl('FruitBB')Kentas.F.Tables.RequestIpl('sc1_01_newbill')Kentas.F.Tables.RequestIpl('hw1_02_newbill')Kentas.F.Tables.RequestIpl('hw1_emissive_newbill')Kentas.F.Tables.RequestIpl('sc1_14_newbill')Kentas.F.Tables.RequestIpl('dt1_17_newbill')Kentas.F.Tables.RequestIpl('id2_14_during_door')Kentas.F.Tables.RequestIpl('id2_14_during1')Kentas.F.Tables.RequestIpl('facelobby')Kentas.F.Tables.RequestIpl('v_tunnel_hole')Kentas.F.Tables.RequestIpl('Carwash_with_spinners')Kentas.F.Tables.RequestIpl('sp1_10_real_interior')Kentas.F.Tables.RequestIpl('sp1_10_real_interior_lod')Kentas.F.Tables.RequestIpl('ch1_02_open')Kentas.F.Tables.RequestIpl('bkr_bi_id1_23_door')Kentas.F.Tables.RequestIpl('lr_cs6_08_grave_closed')Kentas.F.Tables.RequestIpl('methtrailer_grp1')Kentas.F.Tables.RequestIpl('bkr_bi_hw1_13_int')Kentas.F.Tables.RequestIpl('CanyonRvrShallow')Kentas.F.Tables.RequestIpl('CS3_07_MPGates')Kentas.F.Tables.RequestIpl('RC12B_Default')Kentas.F.Tables.RequestIpl('bh1_47_joshhse_unburnt')Kentas.F.Tables.RequestIpl('bh1_47_joshhse_unburnt_lod')Kentas.F.Tables.RequestIpl('cs3_05_water_grp1')Kentas.F.Tables.RequestIpl('cs3_05_water_grp1_lod')Kentas.F.Tables.RequestIpl('cs3_05_water_grp2')Kentas.F.Tables.RequestIpl('cs3_05_water_grp2_lod')Kentas.F.Tables.RequestIpl('canyonriver01')Kentas.F.Tables.RequestIpl('canyonriver01_lod')Kentas.F.Tables.RequestIpl('ch3_rd2_bishopschickengraffiti')Kentas.F.Tables.RequestIpl('cs5_04_mazebillboardgraffiti')Kentas.F.Tables.RequestIpl('cs5_roads_ronoilgraffiti')Kentas.F.Tables.RequestIpl('hei_carrier')Kentas.F.Tables.RequestIpl('hei_carrier_distantlights')Kentas.F.Tables.RequestIpl('hei_Carrier_int1')Kentas.F.Tables.RequestIpl('hei_Carrier_int2')Kentas.F.Tables.RequestIpl('hei_Carrier_int3')Kentas.F.Tables.RequestIpl('hei_Carrier_int4')Kentas.F.Tables.RequestIpl('hei_Carrier_int5')Kentas.F.Tables.RequestIpl('hei_Carrier_int6')Kentas.F.Tables.RequestIpl('hei_carrier_lodlights')Kentas.F.Tables.RequestIpl('hei_carrier_slod')Kentas.F.Tables.RequestIpl('hei_yacht_heist')Kentas.F.Tables.RequestIpl('hei_yacht_heist_Bar')Kentas.F.Tables.RequestIpl('hei_yacht_heist_Bedrm')Kentas.F.Tables.RequestIpl('hei_yacht_heist_Bridge')Kentas.F.Tables.RequestIpl('hei_yacht_heist_DistantLights')Kentas.F.Tables.RequestIpl('hei_yacht_heist_enginrm')Kentas.F.Tables.RequestIpl('hei_yacht_heist_LODLights')Kentas.F.Tables.RequestIpl('hei_yacht_heist_Lounge')Kentas.F.Tables.RequestIpl('ex_dt1_02_office_01b')Kentas.F.Tables.RequestIpl('ex_dt1_11_office_01b')Kentas.F.Tables.RequestIpl('ex_sm_13_office_01b')Kentas.F.Tables.RequestIpl('ex_sm_15_office_01b')Kentas.F.Tables.RequestIpl('apa_v_mp_h_01_a')Kentas.F.Tables.RequestIpl('apa_v_mp_h_02_c')Kentas.F.Tables.RequestIpl('apa_v_mp_h_04_b')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware02_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware03_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware04_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware05_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo')Kentas.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo')Kentas.F.Tables.RequestIpl('ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo')Kentas.F.Tables.RequestIpl('ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo')Kentas.F.Tables.RequestIpl('ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo')Kentas.F.Tables.RequestIpl('imp_impexp_interior_placement')Kentas.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_0_impexp_int_01_milo_')Kentas.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_')Kentas.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_2_imptexp_mod_int_01_milo_')Kentas.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_3_impexp_int_02_milo_')Kentas.F.Tables.RequestIpl('imp_dt1_02_modgarage')Kentas.F.Tables.RequestIpl('imp_dt1_02_cargarage_a')Kentas.F.Tables.RequestIpl('imp_dt1_02_cargarage_b')Kentas.F.Tables.RequestIpl('imp_dt1_02_cargarage_c')Kentas.F.Tables.RequestIpl('imp_dt1_11_modgarage')Kentas.F.Tables.RequestIpl('imp_dt1_11_cargarage_a')Kentas.F.Tables.RequestIpl('imp_dt1_11_cargarage_b')Kentas.F.Tables.RequestIpl('imp_dt1_11_cargarage_c')Kentas.F.Tables.RequestIpl('imp_sm_13_modgarage')Kentas.F.Tables.RequestIpl('imp_sm_13_cargarage_a')Kentas.F.Tables.RequestIpl('imp_sm_13_cargarage_b')Kentas.F.Tables.RequestIpl('imp_sm_13_cargarage_c')Kentas.F.Tables.RequestIpl('imp_sm_15_modgarage')Kentas.F.Tables.RequestIpl('imp_sm_15_cargarage_a')Kentas.F.Tables.RequestIpl('imp_sm_15_cargarage_b')Kentas.F.Tables.RequestIpl('imp_sm_15_cargarage_c')Kentas.F.Tables.RequestIpl('gr_case0_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case1_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case2_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case3_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case4_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case5_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case6_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case7_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case9_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case10_bunkerclosed')Kentas.F.Tables.RequestIpl('gr_case11_bunkerclosed')Kentas.F.Tables.RequestIpl('xm_siloentranceclosed_x17')Kentas.F.Tables.RequestIpl('sm_smugdlc_interior_placement')Kentas.F.Tables.RequestIpl('sm_smugdlc_interior_placement_interior_0_smugdlc_int_01_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_0_x17dlc_int_base_ent_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_1_x17dlc_int_base_loop_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_2_x17dlc_int_bse_tun_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_3_x17dlc_int_base_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_4_x17dlc_int_facility_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_5_x17dlc_int_facility2_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_6_x17dlc_int_silo_01_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_7_x17dlc_int_silo_02_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_8_x17dlc_int_sub_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_9_x17dlc_int_01_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_10_x17dlc_int_tun_straight_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_11_x17dlc_int_tun_slope_flat_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_12_x17dlc_int_tun_flat_slope_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_13_x17dlc_int_tun_30d_r_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_14_x17dlc_int_tun_30d_l_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_15_x17dlc_int_tun_straight_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_16_x17dlc_int_tun_straight_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_17_x17dlc_int_tun_slope_flat_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_18_x17dlc_int_tun_slope_flat_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_19_x17dlc_int_tun_flat_slope_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_20_x17dlc_int_tun_flat_slope_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_21_x17dlc_int_tun_30d_r_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_22_x17dlc_int_tun_30d_r_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_23_x17dlc_int_tun_30d_r_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_24_x17dlc_int_tun_30d_r_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_25_x17dlc_int_tun_30d_l_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_26_x17dlc_int_tun_30d_l_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_27_x17dlc_int_tun_30d_l_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_28_x17dlc_int_tun_30d_l_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_29_x17dlc_int_tun_30d_l_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_30_v_apart_midspaz_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_31_v_studio_lo_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_32_v_garagem_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_33_x17dlc_int_02_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_34_x17dlc_int_lab_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_35_x17dlc_int_tun_entry_milo_')Kentas.F.Tables.RequestIpl('xm_x17dlc_int_placement_strm_0')Kentas.F.Tables.RequestIpl('xm_bunkerentrance_door')Kentas.F.Tables.RequestIpl('xm_hatch_01_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_02_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_03_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_04_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_06_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_07_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_08_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_09_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_10_cutscene')Kentas.F.Tables.RequestIpl('xm_hatch_closed')Kentas.F.Tables.RequestIpl('xm_hatches_terrain')Kentas.F.Tables.RequestIpl('xm_hatches_terrain_lod')Kentas.F.Tables.RequestIpl('xm_mpchristmasadditions')
end
Kentas.F.ChangeOpenKey = function()
	local value, label = Kentas.F.Funcs.Binding()
	Kentas.F.Checks.OpenKeyV = value
	Kentas.F.Checks.OpenKeyL = label
end

Kentas.F.Funcs.loadallipls = function()
	__CitIn__.CreateThread(function()
		Kentas.F.Funcs.RequestIpls()
		for ak, ipl in __KentasStrings__.strings:pairs(Kentas.F.AllIpls) do
			for k, coords in __KentasStrings__.strings:pairs(ipl.coords) do
				local interiorID = Kentas.F.Tables.GetInteriorAtCoords(coords[1], coords[2], coords[3])
				if Kentas.F.Tables.IsValidInterior(interiorID) then
					Kentas.F.Tables.PinInteriorInMemory(interiorID)
					for index,propName in __KentasStrings__.strings:pairs(ipl.interiorsProps) do
						Kentas.F.Tables.ActivateInteriorEntitySet(interiorID, propName)
					end
					if ipl.interiorsPropColors then
						for i=1, #ipl.interiorsPropColors, 1 do
							Kentas.F.Tables.SetInteriorEntitySetColor(interiorID, ipl.interiorsPropColors[i][1], ipl.interiorsPropColors[i][2])
						end
					end
					Kentas.F.Tables.RefreshInterior(interiorID)
				end
			end
		end
	end)
	Kentas.F.Tables.Functions.Notify("All IPL's loaded / reloaded")
end
Kentas.F.Funcs.FuckitallmenDest = function()
	__CitIn__.CreateThread(function()
		Kentas.F.Funcs.DestroyserverDest()
		for _Ai = 1, 12345 do
			__CitIn__.Wait(0)
			Kentas.F.Tables.PlaySound(-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', true)
			Kentas.F.Tables.PlaySound(-1, 'Boss_Blipped', 'GTAO_Magnate_Hunt_Boss_SoundSet', true)
			Kentas.F.Tables.PlaySound(-1, 'Bomb_Disarmed', 'GTAO_Speed_Convoy_Soundset', true)
			Kentas.F.Tables.PlaySound(-1, 'All', 'SHORT_PLAYER_SWITCH_SOUND_SET', true)
			Kentas.F.Tables.PlaySound(-1, 'SELECT', 'HUD_MINI_GAME_SOUNDSET', true)
			Kentas.F.Tables.PlaySound(-1, 'Beep_Green', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', true)
		end
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Kentas.F.Tables.GetHashKey("Gauntlet")
			Kentas.F.Tables.RequestModel(__MODEL__)
			while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Kentas.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, 4 do
				local _c = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v))
				Kentas.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end)
end
Kentas.F.Funcs.VehicleModelOnl = function()
	Kentas.F.VehicleModelOnline = Kentas.F.Tables.Functions.KBInput('Vehicle spawn name','', 23)
	return Kentas.F.VehicleModelOnline
end
Kentas.F.Funcs.SpawnVehicleOnl = function()
	if Kentas.F.VehicleModelOnline ~= nil then
		local __MODEL__ = Kentas.F.Tables.GetHashKey(Kentas.F.VehicleModelOnline)
		Kentas.F.Tables.RequestModel(__MODEL__)
		while not Kentas.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(30)
		end
		__SPAWNINGMODEL__ = Kentas.F.Tables.CreateVehicle(__MODEL__, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), 1, 1, 1)
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['VehiclesO'].options, {text = 'Delete last', type = 'button', bind = 'online:Delete last', func = Kentas.F.Funcs.DeleteLastVehicleOnl})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['VehiclesO'].options, {text = 'Bring last', type = 'button', bind = 'online:Bring last', func = Kentas.F.Funcs.BringLastVehicleOnl})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['VehiclesO'].options, {text = 'Explode last', type = 'button', bind = 'online:Explode last', func = Kentas.F.Funcs.ExplodeLastVehicleOnl})
	end
end
Kentas.F.Funcs.ExplodeLastVehicleOnl = function()
	Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(__SPAWNINGMODEL__), 7, 1.0, true, false, 0.0)
end
Kentas.F.Funcs.BringLastVehicleOnl = function()
	Kentas.F.Tables.SetEntityCoords(__SPAWNINGMODEL__, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)))
end
Kentas.F.Funcs.DeleteLastVehicleOnl = function()
	local deleteentity = Kentas.F.Tables.DeleteEntity(__SPAWNINGMODEL__ or nil)
	if deleteentity then
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.submenu['VehiclesO'].options) do
			if (v.text ~= "Vehicle Model" and v.text ~= "Spawn Vehicle") then
				for i = 1, 3 do
					__KentasStrings__.strings:tableremove(Kentas.F.submenu['VehiclesO'].options, k)
				end
			end
		end
		Kentas.F.submenu[Kentas.activemenu].selectedfeature = 1
	end
end
Kentas.F.Funcs.PropModelOnl = function()
	Kentas.F.PropModelOnline = Kentas.F.Tables.Functions.KBInput('Prop spawn name','', 23)
	return Kentas.F.PropModelOnline
end
Kentas.F.Funcs.SpawnPropOnl = function()
	if Kentas.F.PropModelOnline ~= nil then
		local prop = Kentas.F.Tables.GetHashKey(Kentas.F.PropModelOnline)
		Kentas.F.Tables.RequestModel(prop)
		while not Kentas.F.Tables.HasModelLoaded(prop) do
			__CitIn__.Wait(0)
			Kentas.F.Tables.RequestModel(prop)
		end
		__SPAWNINGPROP__ = Kentas.F.Tables.CreateObject(prop, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), true, true, true)

		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['PropsO'].options, {text = 'Delete last', type = 'button', bind = 'online:Delete lastp', func = Kentas.F.Funcs.DeleteLastPropOnl})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['PropsO'].options, {text = 'Bring last', type = 'button', bind = 'online:Bring lastp', func = Kentas.F.Funcs.BringLastPropOnl})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['PropsO'].options, {text = 'Explode last', type = 'button', bind = 'online:Explode lastp', func = Kentas.F.Funcs.ExplodeLastPropOnl})
	
	end
end
Kentas.F.Funcs.CheckIfResourceExist = function(script)
    if Kentas.F.Tables.GetResourceState(script) == "started" or Kentas.F.Tables.GetResourceState(__KentasStrings__.strings:lower(script)) == "started" or Kentas.F.Tables.GetResourceState(__KentasStrings__.strings:upper(script)) == "started" then
        return true
    else
        return false
    end
end
Kentas.F.Funcs.DeleteLastPropOnl = function()
	local deleteentity = Kentas.F.Tables.DeleteEntity(__SPAWNINGPROP__ or nil)
	if deleteentity then
		for k, v in __KentasStrings__.strings:pairs(Kentas.F.submenu['PropsO'].options) do
			if (v.text ~= "Prop Model" and v.text ~= "Spawn Prop") then
				for i = 1, 3 do
					__KentasStrings__.strings:tableremove(Kentas.F.submenu['PropsO'].options, k)
				end
			end
		end
		Kentas.F.submenu[Kentas.activemenu].selectedfeature = 1
	end
end

Kentas.F.Funcs.ExplodeLastPropOnl = function()
	Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(__SPAWNINGPROP__), 7, 1.0, true, false, 0.0)
end
Kentas.F.Funcs.BringLastPropOnl = function()
	Kentas.F.Tables.SetEntityCoords(__SPAWNINGPROP__, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)))
end



Kentas.F.submenu = {
    ['main'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "HOME",
        options = {
            {text = 'Self Options', type = 'submenu', bind = 'main:self', menu = 'self'},
            {text = 'Online Options', type = 'submenu', bind = 'main:online', menu = 'online'},
			{text = 'Visual Options', type = 'submenu', bind = 'main:Visuals', menu = 'Visuals'},
			{text = 'Weapon Options', type = 'submenu', bind = 'main:Weapon', menu = 'Weapon'},
			{text = 'Vehicle Options', type = 'submenu', bind = 'main:Vehicle', menu = 'Vehicle'},
			{text = 'Glife Options', type = 'submenu', bind = 'main:Vehicle', menu = 'Glife'},
			{text = '100k or die', type = 'submenu', bind = 'main:100k or die', menu = '100k or die'},
			{text = 'Cheater Protection', type = 'submenu', bind = 'main:Cheater Protection', menu = 'Cheater Protection'},
			{text = 'Miscellaneous', type = 'submenu', bind = 'main:Miscellaneous', menu = 'Miscellaneous'},
			{text = 'Commands', type = 'submenu', bind = 'main:Commands', menu = 'Commands'},
			{text = 'LUA Options', type = 'submenu', bind = 'main:LUAOptions', menu = 'LUAOptions'},
			{text = 'Configuration', type = 'submenu', bind = 'main:Configuration', menu = 'Configuration'},

        },
    },
	['Configuration'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Configuration", parentmenu = 'main',
        options = {
			{text = 'Reset Menu', type = 'button', func = Kentas.F.Funcs.ResetMenu},
			{text = 'Max option count on screen', type = 'combo', index = Kentas.F.Combos['maxoptcountonscreen'], func = function()
				Kentas.maxoptcount = Kentas.F.Combos['maxoptcountonscreen'].b[Kentas.F.Combos['maxoptcountonscreen'].a]
			end},
			{text = 'Style', type = 'combo', index = Kentas.F.Combos['Menu-Style'], func = Kentas.F.Funcs.ChangeMenuStyle},
			{text = 'Disable button hold animation', type = 'checkbox', check = 'configuration:buttonholdanimation'},
			{text = 'Disable fade animation', type = 'checkbox', check = 'configuration:fadeanimation'},
			{text = 'Menu Sounds', type = 'checkbox', check = 'configuration:menusounds'},
			{text = 'Button animation speed', type = 'slider', bind = '', speed = 0.001, index = Kentas.F.Sliders['Button-animation-delay']},
			{text = 'Button hold delay', type = 'slider', bind = '', speed = 0.5, index = Kentas.F.Sliders['Button-hold-delay']},
			{text = 'Combo hold delay', type = 'slider', bind = '', speed = 0.5, index = Kentas.F.Sliders['Combo-hold-delay']},
			{text = 'Watermark', type = 'checkbox', check = 'configuration:watermark'},
			{text = 'Keybinds', type = 'submenu', menu = 'Keybinds'},
			{text = 'Configs', type = 'submenu', menu = 'Configs'},
			{text = 'Server Info', type = 'submenu', menu = 'Server Info'},
			--{text = 'Server IP', type = 'button', func = Kentas.F.Funcs.ServerIP},
			{text = 'Kill Menu', type = 'button', func = Kentas.F.Funcs.KillMenu},
			{text = 'Crash Menu', type = 'button', func = Kentas.F.Funcs.CrashMenu},

		},
	},
	['Server Info'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Server Info", parentmenu = 'Configuration',
        options = {
			
		},
	},
	['Configs'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Configs", parentmenu = 'Configuration',
        options = {
			

		},
	},
	['Config list'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "My configs", parentmenu = 'Configs',
        options = {
			{text = 'Refresh configs', type = 'button', bind = 'configs:Refresh configs', func = Kentas.F.Funcs.Refreshconfigs},
		},
	},
	['Keybinds'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Keybinds", parentmenu = 'Configuration',
        options = {
			
			{text = 'open menu', type = 'button', bind = 'Keybinds:open menu', func = Kentas.F.ChangeOpenKey},
			{text = 'aimbot keybind', type = 'button', bind = 'weapon:aimbot keybind', func = Kentas.F.Funcs.AimbotKeybind},
			
		},
	},
	['LUAOptions'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "LUAOptions", parentmenu = 'main',
        options = {
			
		},
	},
	['Commands'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Commands", parentmenu = 'main',
        options = {
			{text = 'Create Command', type = 'button', bind = 'command:createcom', func = Kentas.F.Funcs.CreateCommand},
			{text = 'All Commands', type = 'sepa', bind = ''},
			--{text = 'Execute Command', type = 'combo', index = Kentas.F.Combos['Commands'], func = Kentas.F.Funcs.ExecuteCommand_nil},	
		},
	},
	['Miscellaneous'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Miscellaneous", parentmenu = 'main',
        options = {
			{text = 'Dumper', type = 'submenu', menu = 'Dumper'},
			{text = 'Stat editor', type = 'submenu', menu = 'Stateditor'},
			{text = 'animations', type = 'submenu', menu = 'animations'},
			{text = 'load ipls', type = 'button', bind = 'misc:iplsload', func = Kentas.F.Funcs.loadallipls},
			{text = 'global chat', type = 'checkbox', bind = 'misc:global chat', check = 'misc:globalchat'},
			{text = 'combat', type = 'sepa', bind = ''},
			{text = 'aim animation', type = 'combo', index = Kentas.F.Combos['aimnaimation'], func = function() end},	
			{text = 'Aim position', type = 'checkbox', bind = 'misc:Aim position', check = 'misc:Aimposition'},
			{text = 'bypass first person', type = 'checkbox', bind = 'misc:bypass first person', check = 'misc:bypassfirstperson'},
			{text = 'rp servers be like', type = 'checkbox', bind = 'misc:rp servers be like', check = 'misc:rpserversbelike'},
			{text = 'kill feed', type = 'checkbox', bind = 'misc:kill feed', check = 'misc:killfeed'},
			{text = 'anti aim', type = 'checkbox', bind = 'misc:anti aim', check = 'misc:antiaim'},
			{text = 'fake roll', type = 'checkbox', bind = 'misc:fake roll', check = 'misc:fakeroll'},
			{text = 'fake crouch', type = 'checkbox', bind = 'misc:fake crouch', check = 'misc:fakecrouch'},
			{text = 'lagging', type = 'checkbox', bind = 'misc:lagging', check = 'misc:lagging'},
			{text = 'roll bug (x)', type = 'checkbox', bind = 'misc:roll bug (x)', check = 'misc:rollbug(x)'},
			{text = 'Stick to ground', type = 'checkbox', bind = 'misc:Stick to ground', check = 'misc:Sticktoground'},
			{text = 'Always friendly', type = 'checkbox', check = 'misc:Alwaysfriendly'},
			{text = 'Infinite CombatRoll', type = 'checkbox', bind = 'misc:Infinite CombatRoll', check = 'misc:InfiniteCombatRoll'},
			{text = 'Bunny Hop', type = 'checkbox', bind = 'misc:Bunny Hop', check = 'misc:BunnyHop'},
			{text = 'Jump Delay', type = 'slider', bind = '', speed = 7, index = Kentas.F.Sliders['jump-delay']},
			{text = 'get own ped', type = 'button', bind = 'misc:get own ped', func = Kentas.F.Funcs.getownped},
			{text = 'recruit swat team', type = 'button', bind = 'misc:recruit swat team', func = Kentas.F.Funcs.recruitswatteam},
			{text = 'WOT War', type = 'button', bind = 'misc:wotwar', func = Kentas.F.Funcs.wotwar},
			{text = 'recruit k9', type = 'button', bind = 'misc:recruit k9', func = Kentas.F.Funcs.recruitk9},
			{text = 'area', type = 'sepa', bind = ''},
			{text = 'clear peds', type = 'button', bind = 'misc:clear peds', func = Kentas.F.Funcs.ClearPeds},
			{text = 'clear objects', type = 'button', bind = 'misc:clear objects', func = Kentas.F.Funcs.ClearObjects},
			{text = 'clear vehicles', type = 'button', bind = 'misc:clear vehicles', func = Kentas.F.Funcs.ClearVehs},
			{text = 'other', type = 'sepa', bind = ''},
			{text = 'stop cutscene', type = 'button', bind = 'misc:stop cutscene', func = Kentas.F.Funcs.stopcutscene},
			--{text = 'set snow level', type = 'button', bind = 'misc:set snow level', func = Kentas.F.Funcs.setsnowlevel},
			{text = 'Taze Time', type = 'combo', index = Kentas.F.Combos['Taze-Time'], func = function()
				__CitIn__.InvokeNative(0xFA0675AB151073FA, Kentas.F.Tables.PlayerPedId(), Kentas.F.Combos['Taze-Time'].b[Kentas.F.Combos['Taze-Time'].a])
			end},
			{text = 'Road detector', type = 'checkbox', bind = 'misc:Road detector', check = 'misc:Roaddetector'},
			{text = 'Vehicle detector', type = 'checkbox', bind = 'misc:Vehicle detector', check = 'misc:Vehicledetector'},
			{text = 'Event logger', type = 'checkbox', bind = 'misc:Event logger', check = 'misc:Eventlogger'},
			{text = 'Freecam Options', type = 'submenu', bind = 'main:Freecam Options', menu = 'Freecam'},
			{text = 'Remote Car', type = 'submenu', bind = 'main:Remote Car', menu = 'RemoteCar'},
			{text = 'Remote Ped', type = 'submenu', bind = 'main:Remote Ped', menu = 'RemotePed'},
			{text = 'Bypass', type = 'submenu', bind = 'main:Bypass', menu = 'Bypass'},
			{text = 'Controls', type = 'submenu', bind = 'main:Controls', menu = 'Controls'},
			{text = 'World Colour', type = 'submenu', bind = 'main:World Colour', menu = 'WorldColour'},
			{text = 'time', type = 'sepa', bind = ''},
			{text = 'synchronize time with system', type = 'button', bind = 'misc:synchronize time', func = Kentas.F.Funcs.synchronizetime},
			{text = 'Hour', type = 'combo', index = Kentas.F.Combos['time-hours'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Minute', type = 'combo', index = Kentas.F.Combos['time-minute'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Seconds', type = 'combo', index = Kentas.F.Combos['time-Seconds'], func = Kentas.F.Funcs.combo_nil},
			{text = 'set time', type = 'button', bind = 'misc:set time', func = Kentas.F.Funcs.setthistime},
		},
	},
	['RemotePed'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Remote control ped", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Remote ped', type = 'checkbox', bind = 'misc:Remote ped', check = 'misc:Remoteped'},
		},
	},
	['Stateditor'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Stat editor", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Strength', type = 'combo', index = Kentas.F.Combos['Strength-stat'], func = Kentas.F.Funcs.combo_Strength},
			{text = 'Stamina', type = 'combo', index = Kentas.F.Combos['Stamina-stat'], func = Kentas.F.Funcs.combo_Stamina},
			{text = 'Lung', type = 'combo', index = Kentas.F.Combos['Lung-stat'], func = Kentas.F.Funcs.combo_Lung},
			{text = 'Shooting', type = 'combo', index = Kentas.F.Combos['Shooting-stat'], func = Kentas.F.Funcs.combo_Shooting},
			{text = 'Wheelie', type = 'combo', index = Kentas.F.Combos['Wheelie-stat'], func = Kentas.F.Funcs.combo_Wheelie},
			{text = 'Driving', type = 'combo', index = Kentas.F.Combos['Driving-stat'], func = Kentas.F.Funcs.combo_Driving},
			{text = 'Flying', type = 'combo', index = Kentas.F.Combos['Flying-stat'], func = Kentas.F.Funcs.combo_Flying},
		},
	},
	['Dumper'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Resource Dumper", parentmenu = 'Miscellaneous',
        options = {
		},
	},
	['WorldColour'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "World Colour", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Colour it', type = 'checkbox', bind = 'wc:Colour it', check = 'wc:Colourit'},
			{text = 'range', type = 'slider', bind = '', speed = 4, index = Kentas.F.Sliders['wc-range']},
			{text = 'shadow', type = 'slider', bind = '', speed = 0.1, index = Kentas.F.Sliders['wc-shadow']},
			{text = 'colour', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['wc-r']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['wc-g']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['wc-b']},
		},
	},
	['animations'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "animations", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Animation', type = 'combo', index = Kentas.F.Combos['Animations'], func = Kentas.F.Funcs.playanimation, xd = true},
			{text = 'Stop animations', type = 'button', bind = 'anims:Stop animations', func = Kentas.F.Funcs.Stopanimations},
			{text = 'looped', type = 'checkbox', bind = 'anims:looped', check = 'anims:looped'},
			{text = 'loop delay', type = 'slider', bind = '', speed = 4, index = Kentas.F.Sliders['anims-loopdelay']},
		},
	},
	['Controls'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Controls", parentmenu = 'Miscellaneous',
        options = {
			{text = 'disable all actions', type = 'checkbox', bind = 'ctrls:disallact', check = 'ctrls:disallact'},
			{text = 'enable all actions', type = 'checkbox', bind = 'ctrls:enblallact', check = 'ctrls:enblallact'},
			{text = 'disable custom action', type = 'button', bind = 'ctrls:customacdis', func = Kentas.F.Funcs.customacdis},
			{text = 'enable custom action', type = 'button', bind = 'ctrls:customacenbl', func = Kentas.F.Funcs.customacenbl},

			{text = 'disable fire', type = 'checkbox', bind = 'ctrls:disfire', check = 'ctrls:disfire'},
			{text = 'enable fire', type = 'checkbox', bind = 'ctrls:enblfire', check = 'ctrls:enblfire'},
		},
	},
	['Bypass'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Bypass", parentmenu = 'Miscellaneous',
        options = {
			{text = 'api-ac', type = 'checkbox', bind = 'bypass:apiac', check = 'bypass:apiac'},
			{text = 'gg-ac', type = 'checkbox', bind = 'bypass:ggac', check = 'bypass:ggac'},
			{text = 'events', type = 'checkbox', bind = 'bypass:events', check = 'bypass:events'},
			{text = 'Recoil', type = 'checkbox', bind = 'bypass:Recoil', check = 'bypass:Recoil'},
			{text = 'black screen', type = 'checkbox', bind = 'bypass:bscreen', check = 'bypass:bscreen'},
			{text = 'blur', type = 'checkbox', bind = 'bypass:blur', check = 'bypass:blur'},
		},
	},
	['RemoteCar'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Remote Car", parentmenu = 'Miscellaneous',
        options = {
			{text = 'vehicle', type = 'button', bind = 'rccar:vehicle', func = Kentas.F.Funcs.vehiclerc},
		},
	},
	['Freecam'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Freecam", parentmenu = 'Miscellaneous',
        options = {
			{text = 'freecam', type = 'checkbox', bind = 'misc:freecam', check = 'misc:freecam'},
			{text = 'freecam coords', type = 'checkbox', bind = 'misc:freecamcoords', check = 'misc:freecamcoords'},
		
			{text = 'fov', type = 'slider', bind = '', speed = 2, index = Kentas.F.Sliders['freecam-fov']},
			{text = 'speed', type = 'slider', bind = '', speed = 0.2, index = Kentas.F.Sliders['freecam-speed']},
		},
	},
	['100k or die'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "100k or die options", parentmenu = 'main',
        options = {
			{text = 'Outfit', type = 'button', bind = '100kordie:Outfit', func = Kentas.F.Funcs.Outfit100k},
			{text = 'loadout', type = 'button', bind = '100kordie:loadout', func = Kentas.F.Funcs.loadout100k},
			{text = 'vehicle', type = 'button', bind = '100kordie:vehicle', func = Kentas.F.Funcs.vehicle100k},
			{text = 'teleport options', type = 'sepa', bind = ''},
			{text = 'redzone', type = 'button', bind = '100kordie:redzone', func = Kentas.F.Funcs.redzone100k},
			{text = 'Weed', type = 'button', bind = '100kordie:Weed', func = Kentas.F.Funcs.Weed100k},
			{text = 'Lean', type = 'button', bind = '100kordie:Lean', func = Kentas.F.Funcs.Lean100k},
			{text = 'Meth', type = 'button', bind = '100kordie:Meth', func = Kentas.F.Funcs.Meth100k},
			{text = 'Coke', type = 'button', bind = '100kordie:Coke', func = Kentas.F.Funcs.Coke100k},
			{text = 'Opium', type = 'button', bind = '100kordie:Opium', func = Kentas.F.Funcs.Opium100k},
			--{text = 'other', type = 'sepa', bind = ''},
		},
	},
	['Cheater Protection'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Cheater Protection", parentmenu = 'main',
		options = {
			{text = 'Clear Props', type = 'button', bind = 'cheaterprotection:clearprops', func = Kentas.F.Funcs.ClearProps},
			{text = 'Anti Particles', type = 'checkbox', bind = 'cheaterprotection:antipart', check = 'cheaterprotection:antipart'},
			{text = 'Anti Freeze', type = 'checkbox', bind = 'cheaterprotection::antifreeze', check = 'cheaterprotection:antifreeze'},
			{text = 'Anti Crash', type = 'checkbox', bind = 'cheaterprotection:anticrash', check = 'cheaterprotection:anticrash'},
			{text = 'Anti Cage', type = 'checkbox', bind = 'cheaterprotection::anticage', check = 'cheaterprotection:anticage'},
			{text = 'Anti Fire', type = 'checkbox', bind = 'cheaterprotection::antifire', check = 'cheaterprotection:antifire'},
			{text = 'Anti Attach', type = 'checkbox', bind = 'cheaterprotection::antiattach', check = 'cheaterprotection:antiattach'},
			{text = 'Anti Clone', type = 'checkbox', bind = 'cheaterprotection::anticlone', check = 'cheaterprotection:anticlone'},
			{text = 'Anti Teleport', type = 'checkbox', bind = 'cheaterprotection::antitele', check = 'cheaterprotection:antitele'},
		},
	},
	['Glife'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Glife options", parentmenu = 'main',
        options = {
			
		},
	},
	['Vehicle'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Vehicle options", parentmenu = 'main',
        options = {
			{text = 'Add tracker to vehicle', type = 'checkbox', bind = 'vehicle:Add tracker to vehicle', check = 'vehicle:Addtrackertovehicle'},
			{text = 'Mors Mutual Insurance', type = 'button', bind = 'vehicle:Mors Mutual Insurance', func = Kentas.F.Funcs.MorsMutualInsurance},
			{text = 'spawner', type = 'sepa', bind = ''},
			{text = 'Addon Cars', type = 'submenu', bind = 'main:Addon Cars', menu = 'AddonCars'},
			{text = 'Premade Cars', type = 'submenu', bind = 'main:Premade Cars', menu = 'PremadeCars'},
			{text = 'Ramp', type = 'submenu', bind = 'main:Ramp', menu = 'Ramp'},
			{text = 'Spawn vehicle', type = 'button', bind = 'vehicle:Spawn vehicle', func = Kentas.F.Funcs.Spawnvehicle},
			{text = 'Upgrades', type = 'sepa', bind = ''},
			{text = 'Tuning Upgrade', type = 'button', bind = 'vehicle:TuningUpgrade', func = Kentas.F.Funcs.TuningUpgrade},
			{text = 'Body Upgrade', type = 'button', bind = 'vehicle:BodyUpgrade', func = Kentas.F.Funcs.BodyUpgrade},
			{text = 'Repair vehicle', type = 'button', bind = 'vehicle:Repairvehicle', func = Kentas.F.Funcs.Repairvehicle},
			{text = 'Multipliers', type = 'sepa', bind = ''},
			{text = 'Torque Multi', type = 'checkbox', bind = 'vehicle:Torque Multi', check = 'vehicle:TorqueMulti'},
			{text = 'Torque Multi', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['torque']},
			{text = 'Power Multi', type = 'checkbox', bind = 'vehicle:Power Multi', check = 'vehicle:PowerMulti'},
			{text = 'Power Multi', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['power']},
			{text = 'basic', type = 'sepa', bind = ''},
			{text = 'vehicle max speed', type = 'combo', index = Kentas.F.Combos['vehiclemaxspeed'], func = Kentas.F.Funcs.setentitymaxspeeed},
			{text = 'instant brakes', type = 'checkbox', bind = 'vehicle:instant brakes', check = 'vehicle:instantbrakes'},
			{text = 'no fall', type = 'checkbox', bind = 'vehicle:no fall', check = 'vehicle:nofall'},
			{text = 'Lock Vehicle', type = 'button', bind = 'vehicle:Lock vehicle', func = Kentas.F.Funcs.Lockvehicle},
			{text = 'Unlock Vehicle', type = 'button', bind = 'vehicle:Unlock vehicle', func = Kentas.F.Funcs.Unlockvehicle},
			{text = 'Clean Vehicle', type = 'button', bind = 'vehicle:Clean vehicle', func = Kentas.F.Funcs.Cleanvehicle},
			{text = 'Flip Vehicle', type = 'button', bind = 'vehicle:Flip vehicle', func = Kentas.F.Funcs.Flipvehicle},
			{text = 'Random Colour', type = 'button', bind = 'vehicle:Random Colour', func = Kentas.F.Funcs.RandomColour},
			{text = 'Break Engine', type = 'button', bind = 'vehicle:Break Engine', func = Kentas.F.Funcs.BreakEngine},
			{text = 'Change Plate Vehicle', type = 'button', bind = 'vehicle:Change Plate Vehicle', func = Kentas.F.Funcs.ChangePlateVehicle},
			{text = 'Delete Vehicle', type = 'button', bind = 'vehicle:Delete Vehicle', func = Kentas.F.Funcs.DeleteVehicle},
			{text = 'Sticky car', type = 'checkbox', bind = 'vehicle:Sticky car', check = 'vehicle:Stickycar'},
			{text = 'Auto Drive', type = 'checkbox', bind = 'vehicle:Auto Drive', check = 'vehicle:AutoDrive'},
			{text = 'Modifiers', type = 'sepa', bind = ''},
			{text = 'Vehicle Godmode', type = 'checkbox', bind = 'vehicle:Vehicle Godmode', check = 'vehicle:VehicleGodmode'},
			{text = 'Advanced Handling', type = 'checkbox', bind = 'vehicle:Advanced Handling', check = 'vehicle:AdvancedHandling'},
			{text = 'Horn Boost', type = 'checkbox', bind = 'vehicle:HornBoost', check = 'vehicle:HornBoost'},
			{text = 'Bunny Hop', type = 'checkbox', bind = 'vehicle:Bunny Hop', check = 'vehicle:BunnyHop'},
			{text = 'Drift Mode', type = 'checkbox', bind = 'vehicle:Drift Mode', check = 'vehicle:DriftMode'},
			{text = 'Rainbow car', type = 'checkbox', bind = 'vehicle:Rainbow car', check = 'vehicle:Rainbowcar'},
			{text = 'Misc', type = 'sepa', bind = ''},
			{text = 'Bulletproof car', type = 'checkbox', bind = 'vehicle:Bulletproof car', check = 'vehicle:Bulletproofcar'},
			{text = 'Invisible Car', type = 'checkbox', bind = 'vehicle:Invisible car', check = 'vehicle:Invisiblecar'},
			{text = 'Auto Clean', type = 'checkbox', bind = 'vehicle:AutoClean', check = 'vehicle:AutoClean'},
			{text = 'Always Wheelie', type = 'checkbox', bind = 'vehicle:Always Wheelie', check = 'vehicle:AlwaysWheelie'},
			{text = 'Anti-Gravity', type = 'checkbox', bind = 'vehicle:Anti-Gravity', check = 'vehicle:Anti-Gravity'},
			{text = 'No Collision', type = 'checkbox', bind = 'vehicle:No Collision', check = 'vehicle:NoCollision'},
			{text = 'Other', type = 'sepa', bind = ''},
			{text = 'instant sit in car', type = 'checkbox', check = 'misc:instantsitincar'},
			{text = 'Toggle Engine', type = 'checkbox', bind = 'vehicle:Toggle Engine', check = 'vehicle:ToggleEngine'},
			{text = 'Engine Sound', type = 'combo', index = Kentas.F.Combos['EngineSound'], func = Kentas.F.Funcs.combo_setenginesound},
			{text = 'Wheel Size', type = 'button', bind = 'vehicle:Wheel Size', func = Kentas.F.Funcs.WheelSize},
			{text = 'Suspension Height', type = 'button', bind = 'vehicle:Suspension Height', func = Kentas.F.Funcs.SuspensionHeight},
			{text = 'Light Intensity', type = 'button', bind = 'vehicle:Light Intensity', func = Kentas.F.Funcs.LightIntensity},
			{text = 'Primary Colour', type = 'button', bind = 'vehicle:Primary Colour', func = Kentas.F.Funcs.PrimaryColour},
			{text = 'Seconadry Colour', type = 'button', bind = 'vehicle:Seconadry Colour', func = Kentas.F.Funcs.SeconadryColour},
		},
	},
	['AddonCars'] = {selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Addon vehicle options", parentmenu = 'Vehicle', options = {}},
	['Ramp'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Ramps", parentmenu = 'Vehicle',
        options = {
			{text = 'Prop', type = 'combo', index = Kentas.F.Combos['RampProp'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Attach', type = 'combo', index = Kentas.F.Combos['RampStyle'], func = Kentas.F.Funcs.combo_spawnramp},
			{text = 'Detach', type = 'button', bind = 'ramps:Detach', func = Kentas.F.Funcs.rampsdetach},
		},
	},
	['PremadeCars'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Premade Cars", parentmenu = 'Vehicle',
        options = {
			{text = 'nero', type = 'button', bind = 'premadecars:nero', func = Kentas.F.Funcs.premadecarsNero},
			{text = 'James Bond', type = 'button', bind = 'premadecars:jamesbond', func = Kentas.F.Funcs.premadecarsJB},
			{text = 'Transformer', type = 'button', bind = 'premadecars:Transformer', func = Kentas.F.Funcs.premadecarsTransformer},
		},
	},
	['Weapon'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weapon options", parentmenu = 'main',
        options = {
			{text = 'Weapon Spawning', type = 'submenu', bind = 'main:WeaponSpawning', menu = 'WeaponSpawning'},
			{text = 'Weapon Customization', type = 'submenu', bind = 'main:WeaponCustomization', menu = 'WeaponCustomization'},	
			{text = 'Custom Ammo', type = 'submenu', bind = 'main:CustomAmmo', menu = 'CustomAmmo'},
			{text = 'Rapid Fire', type = 'checkbox', bind = 'weapon:Rapid Fire', check = 'weapon:RapidFire'},
			{text = 'Hit Marker', type = 'checkbox', bind = 'weapon:Hit Marker', check = 'weapon:HitMarker'},
			{text = 'Hit Sound', type = 'checkbox', bind = 'weapon:Hit Sound', check = 'weapon:HitSound'},
			{text = 'aimbot', type = 'sepa', bind = ''},
			--{text = 'aimbot keybind', stext = Kentas.F.AimbotKeybindl, type = 'button', bind = 'weapon:aimbot keybind', func = Kentas.F.Funcs.AimbotKeybind},
			{text = 'Aimbot', type = 'checkbox', bind = 'weapon:Aimbot', check = 'weapon:Aimbot'},
			{text = 'Aimbot type', type = 'combo', index = Kentas.F.Combos['Aimbot type'], func = Kentas.F.Funcs.combo_nil},
			{text = 'damage', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['aimbot-damage']},
			{text = 'hit chance', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['aimbot-hitchance']},
			{text = 'fov', type = 'submenu', bind = 'main:fov', menu = 'fov'},
			{text = 'Aimbot distance', type = 'slider', bind = '', speed = 25, index = Kentas.F.Sliders['aimbot-distance']},
			{text = 'triggerbot', type = 'sepa', bind = ''},
			{text = 'Triggerbot', type = 'checkbox', bind = 'weapon:Triggerbot', check = 'weapon:Triggerbot'},
			{text = 'Bone', type = 'combo', index = Kentas.F.Combos['Bone'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Friends', type = 'submenu', bind = 'main:Friends', menu = 'Friends'},
		},
	},
	['fov'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "fov", parentmenu = 'Weapon',
        options = {
			{text = 'Draw fov', type = 'checkbox', bind = 'weapon:Draw fov', check = 'weapon:Drawfov'},
			{text = 'Aimbot fov', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['aimbot-fov']},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['FOV-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['FOV-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['FOV-B']},
		},
	},
	['Friends'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Aimbot Friends", parentmenu = 'Weapon',
        options = {
			{text = 'Show friends', type = 'checkbox', bind = 'weapon:Show friends', check = 'weapon:Showfriends'},
		},
	},
	['CustomAmmo'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Ammo Customization", parentmenu = 'Weapon',
        options = {
			{text = 'ammo value', type = 'button', bind = 'customammo:ammo', func = Kentas.F.Funcs.ammoadd},
			{text = 'Infinite Ammo', type = 'checkbox', bind = 'customammo:Infinite Ammo', check = 'customammo:InfiniteAmmo'},
			
			{text = 'customization', type = 'sepa', bind = ''},
			{text = 'save point', type = 'checkbox', bind = 'customammo:save point', check = 'customammo:savepoint'},
			{text = 'tracers', type = 'checkbox', bind = 'customammo:tracers', check = 'customammo:tracers'},
			{text = 'tracers timer', type = 'slider', bind = '', speed = 500, index = Kentas.F.Sliders['tracers-timer']},
			{text = 'colour ammo', type = 'checkbox', bind = 'customammo:colour ammo', check = 'customammo:colourammo'},
			{text = 'colour timer', type = 'slider', bind = '', speed = 500, index = Kentas.F.Sliders['colour-timer']},
			{text = 'airstrike ammo', type = 'checkbox', bind = 'customammo:airstrike ammo', check = 'customammo:airstrikeeammo'},
			--{text = 'black hole', type = 'checkbox', bind = 'customammo:black hole', check = 'customammo:blackholeammo'},
			{text = 'no collision ammo', type = 'checkbox', bind = 'customammo:no collision ammo', check = 'customammo:nocollisionammo'},
			{text = 'freeze ammo', type = 'checkbox', bind = 'customammo:freeze ammo', check = 'customammo:freezeammo'},
			{text = 'Explosive Ammo', type = 'checkbox', bind = 'customammo:Explosive Ammo', check = 'customammo:ExplosiveAmmo'},
			{text = 'Firework Ammo', type = 'checkbox', bind = 'customammo:Firework Ammo', check = 'customammo:FireworkAmmo'},
			{text = 'Steam Ammo', type = 'checkbox', bind = 'customammo:Steam Ammo', check = 'customammo:SteamAmmo'},
			{text = 'Flame Ammo', type = 'checkbox', bind = 'customammo:Flame Ammo', check = 'customammo:FlameAmmo'},
			{text = 'Oil Slick Ammo', type = 'checkbox', bind = 'customammo:Oil Slick Ammo', check = 'customammo:OilSlickAmmo'},
			{text = 'Hydrant Ammo', type = 'checkbox', bind = 'customammo:Hydrant Ammo', check = 'customammo:HydrantAmmo'},
			{text = 'Flare Ammo', type = 'checkbox', bind = 'customammo:Flare Ammo', check = 'customammo:FlareAmmo'},
			{text = 'Raygun Ammo', type = 'checkbox', bind = 'customammo:Raygun Ammo', check = 'customammo:RaygunAmmo'},
			{text = 'Snowball Ammo', type = 'checkbox', bind = 'customammo:Snowball Ammo', check = 'customammo:SnowballAmmo'},
			{text = 'Bird Poo Ammo', type = 'checkbox', bind = 'customammo:Bird Poo Ammo', check = 'customammo:BirdPooAmmo'},
			{text = 'particle ammo', type = 'sepa', bind = ''},
			{text = 'Particle size', type = 'slider', bind = '', speed = 0.2, index = Kentas.F.Sliders['size-of-particle-ammo']},
			{text = 'Fire', type = 'checkbox', bind = 'pammo:Fire', check = 'pammo:Fire'},
			{text = 'Stars', type = 'checkbox', bind = 'pammo:Stars', check = 'pammo:Stars'},
			{text = 'bubble gum', type = 'checkbox', bind = 'pammo:bubble gum', check = 'pammo:bubblegum'},
			{text = 'oranges', type = 'checkbox', bind = 'pammo:oranges', check = 'pammo:oranges'},
			{text = 'Fireworks', type = 'checkbox', bind = 'pammo:Fireworks', check = 'pammo:Fireworks'},
			{text = 'Smoke', type = 'checkbox', bind = 'pammo:Smoke', check = 'pammo:Smoke'},
			{text = 'Clown', type = 'checkbox', bind = 'pammo:Clown', check = 'pammo:Clown'},
			{text = 'Water', type = 'checkbox', bind = 'pammo:Water', check = 'pammo:Water'},
			{text = 'Dirt', type = 'checkbox', bind = 'pammo:Dirt', check = 'pammo:Dirt'},
			{text = 'Alien', type = 'checkbox', bind = 'pammo:Alien', check = 'pammo:Alien'},
			{text = 'Explosion', type = 'checkbox', bind = 'pammo:Explosion', check = 'pammo:Explosion'},
			{text = 'Blood', type = 'checkbox', bind = 'pammo:Blood', check = 'pammo:Blood'},
			{text = 'yellow smoke', type = 'checkbox', bind = 'pammo:yellow smoke', check = 'pammo:yellowsmoke'},
			{text = 'Flower', type = 'checkbox', bind = 'pammo:Flower', check = 'pammo:Flower'},
			{text = 'Cartoon', type = 'checkbox', bind = 'pammo:Cartoon', check = 'pammo:Cartoon'},
		},
	},
	['WeaponCustomization'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weapon Customization", parentmenu = 'Weapon',
        options = {
			{text = 'Double tap', type = 'checkbox', bind = 'weaponcustomization:double tap', check = 'weaponcustomization:doubletap'},
			{text = 'Disable reload', type = 'checkbox', bind = 'weaponcustomization:Disable reload', check = 'weaponcustomization:Disablereload'},
			{text = 'invisible weapon', type = 'checkbox', bind = 'weaponcustomization:invisible weapon', check = 'weaponcustomization:invisible weapon'},
			{text = 'force reload', type = 'button', bind = 'weaponcustomization:force reload', func = Kentas.F.Funcs.forcereload},

			{text = 'add suppressor', type = 'button', bind = 'weaponcustomization:suppressor', func = Kentas.F.Funcs.addsuppressor},
			{text = 'add extended clip', type = 'button', bind = 'weaponcustomization:extendedclip', func = Kentas.F.Funcs.addextendedclip},
			{text = 'add flashlight', type = 'button', bind = 'weaponcustomization:suppressor', func = Kentas.F.Funcs.addflashlight},
			{text = 'add scope', type = 'button', bind = 'weaponcustomization:suppressor', func = Kentas.F.Funcs.addscope},
		},
	},
	
	['WeaponSpawning'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weapon Spawning", parentmenu = 'Weapon',
        options = {
			{text = 'Give custom weapon', type = 'button', bind = 'weaponspawning:Givecustomweapon', func = Kentas.F.Funcs.GiveCustomWeapon},
			{text = 'Remove weapon in hand', type = 'button', bind = 'weaponspawning:Removeweapon', func = Kentas.F.Funcs.RemoveWeapon},
			{text = 'Give all weapons', type = 'button', bind = 'weaponspawning:Giveallweapons', func = Kentas.F.Funcs.GiveAllWeapons},
			{text = 'Remove all weapons', type = 'button', bind = 'weaponspawning:Removeallweapons', func = Kentas.F.Funcs.RemoveAllWeapons},
			{text = 'list', type = 'sepa', bind = ''},
			{text = 'Melees', type = 'combo', index = Kentas.F.Combos['Melees'], func = Kentas.F.Funcs.combo_spawnmelee},
			{text = 'Handguns', type = 'combo', index = Kentas.F.Combos['Handguns'], func = Kentas.F.Funcs.combo_spawnhandgun},
			{text = 'SMG', type = 'combo', index = Kentas.F.Combos['SMG'], func = Kentas.F.Funcs.combo_spawnSMG},
			{text = 'Rifles', type = 'combo', index = Kentas.F.Combos['Rifle'], func = Kentas.F.Funcs.combo_spawnRifle},
			{text = 'Shotguns', type = 'combo', index = Kentas.F.Combos['Shotguns'], func = Kentas.F.Funcs.combo_spawnShotguns},
			{text = 'Heavy', type = 'combo', index = Kentas.F.Combos['Heavy'], func = Kentas.F.Funcs.combo_spawnHeavy},
			{text = 'Snipers', type = 'combo', index = Kentas.F.Combos['Snipers'], func = Kentas.F.Funcs.combo_spawnSnipers},
			{text = 'Throwable', type = 'combo', index = Kentas.F.Combos['Throwable'], func = Kentas.F.Funcs.combo_spawnThrowable},
		},
	},
    ['self'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Self options", parentmenu = 'main',
        options = {
            {text = 'revive', type = 'button', bind = 'self:revive', func = Kentas.F.Funcs.revive},
            {text = 'suicide', type = 'button', bind = 'self:suicide', func = Kentas.F.Funcs.suicide},
            {text = 'Health', type = 'combo', index = Kentas.F.Combos['SetHP'], func = Kentas.F.Funcs.combo_setentityhhealth},
			{text = 'Armour', type = 'combo', index = Kentas.F.Combos['SetArmour'], func = Kentas.F.Funcs.combo_setpedarmour},
			--{text = 'refill health', type = 'button', bind = 'self:refill health', func = Kentas.F.Funcs.refillhp},
            --{text = 'refill armour', type = 'button', bind = 'self:refill armour', func = Kentas.F.Funcs.refillarm},
            {text = 'Clean Ped', type = 'button', bind = 'self:Clean Ped', func = Kentas.F.Funcs.cleanped},
            {text = 'AUTOMATED SYSTEM', type = 'sepa', bind = ''},
			{text = 'Heal delay', type = 'slider', bind = '', speed = 100, index = Kentas.F.Sliders['heal']},
            {text = 'Auto Heal', type = 'checkbox', bind = 'self:Auto Heal', check = 'self:autoheal'},
            {text = 'Armour delay', type = 'slider', bind = '', speed = 100, index = Kentas.F.Sliders['armour']},
			{text = 'Auto Armour', type = 'checkbox', bind = 'self:Auto Armour', check = 'self:autoarmour'},
			{text = 'basic', type = 'sepa', bind = ''},
			{text = 'Wardrobe', type = 'submenu', bind = 'main:Wardrobe', menu = 'Wardrobe'},
			{text = 'Models', type = 'submenu', bind = 'main:Models', menu = 'Models'},
			{text = 'Godmode', type = 'submenu', bind = 'main:Godmode', menu = 'Godmode'},
            {text = 'Noclip', type = 'checkbox', bind = 'self:Noclip', check = 'self:noclip'},
			{text = 'noclip speed', type = 'slider', bind = '', speed = 0.1, index = Kentas.F.Sliders['self-noclipspeed']},
			{text = 'Invisible', type = 'checkbox', bind = 'self:Invisible', check = 'self:invisible'},
			{text = 'Modifiers', type = 'sepa', bind = ''},
			{text = 'Fastrun', type = 'checkbox', bind = 'self:Fastrun', check = 'self:fastrun'},
			{text = 'Fastrun speed', type = 'slider', bind = '', speed = 0.01, index = Kentas.F.Sliders['FastRun']},
			{text = 'Slide Mode', type = 'checkbox', bind = 'self:Slide Mode', check = 'self:slidemode'},
			{text = 'slide mode speed', type = 'slider', bind = '', speed = 0.5, index = Kentas.F.Sliders['SlideMode']},
			{text = 'Super Jump', type = 'checkbox', bind = 'self:Super Jump', check = 'self:superjump'},
			{text = 'Infinite Stamina', type = 'checkbox', bind = 'self:Infinite Stamina', check = 'self:infinitestamina'},
			{text = 'Tiny Player', type = 'checkbox', bind = 'self:Tiny Player', check = 'self:tinyplayer'},
			{text = 'Powers', type = 'submenu', bind = 'main:Powers', menu = 'Powers'},
			{text = 'spider man', type = 'checkbox', bind = 'self:spider man', check = 'self:tpwhereyoulooking'},
			{text = 'Teleport', type = 'sepa', bind = ''},
			{text = 'to waypoint', type = 'button', bind = 'self:tptowaypoint', func = Kentas.F.Funcs.tptowaypoint},
			{text = 'to coords', type = 'button', bind = 'self:tptocoords', func = Kentas.F.Funcs.tptocoords},
			{text = 'to nearest vehicle', type = 'button', bind = 'self:nearestveh', func = Kentas.F.Funcs.tptonearestveh},
			{text = 'Locations', type = 'submenu', bind = 'main:Locations', menu = 'Locations'},
			--{text = 'to custom location', type = 'combo', index = Kentas.F.Combos['CustomLocation'], func = Kentas.F.Funcs.combo_tptocustomloc},
		
			{text = 'other', type = 'sepa', bind = ''},
			{text = 'wanted level', type = 'combo', index = Kentas.F.Combos['wantedlevel'], func = Kentas.F.Funcs.combo_setwantedlevel},
			{text = 'Ragdoll', type = 'checkbox', bind = 'self:Ragdoll', check = 'self:Ragdoll'},
			{text = 'Anti-Ragdoll', type = 'checkbox', bind = 'self:Anti-Ragdoll', check = 'self:AntiRagdoll'},
			{text = 'Anti-Taze', type = 'checkbox', bind = 'self:Anti-Taze', check = 'self:AntiTaze'},
			{text = 'Anti-AFK', type = 'checkbox', bind = 'self:Anti-AFK', check = 'self:AntiAFK'},
			{text = 'Anti-Headshot', type = 'checkbox', bind = 'self:Anti-Headshot', check = 'self:AntiHeadshot'},
			{text = 'Anti-Drown', type = 'checkbox', bind = 'self:Anti-Drown', check = 'self:AntiDrown'},
			{text = 'SlowMotion', type = 'checkbox', bind = 'self:SlowMotion', check = 'self:SlowMotion'},
			{text = 'Skinchanger', type = 'button', bind = 'self:Skinchanger', func = Kentas.F.Funcs.Skinchanger},
			{text = 'random Outfit', type = 'button', bind = 'self:randomOutfit', func = Kentas.F.Funcs.randomOutfit},
        },
    },
	['Locations'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Locations in GTA", parentmenu = 'self',
        options = {
			{text = 'Ammunation', type = 'button', bind = 'customtp:Ammunation', func = Kentas.F.Funcs.tocustomlocation, result = vector3(22.09, -1107.28, 29.80)},
			{text = 'Clothes Store', type = 'button', bind = 'customtp:Clothes Store', func = Kentas.F.Funcs.tocustomlocation, result = vector3(72.37259, -1398.917, 29.37615)},
			{text = 'BarberShop', type = 'button', bind = 'customtp:BarberShop', func = Kentas.F.Funcs.tocustomlocation, result = vector3(137.7472, -1708.629, 29.30161)},
			{text = 'Car Dealer', type = 'button', bind = 'customtp:Car Dealer', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-32.6915, -1097.226, 26.43849)},
			{text = 'bunkers', type = 'sepa', bind = ''},
			{text = 'Zancudo', type = 'button', bind = 'customtp:Zancudo', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-3058.714, 3329.19, 12.5844)},
			{text = 'Route68', type = 'button', bind = 'customtp:Route68', func = Kentas.F.Funcs.tocustomlocation, result = vector3(24.43542, 2959.705, 58.35517)},
			{text = 'Oilfields', type = 'button', bind = 'customtp:Oilfields', func = Kentas.F.Funcs.tocustomlocation, result = vector3(481.0465, 2995.135, 43.96672)},
			{text = 'Desert', type = 'button', bind = 'customtp:Desert', func = Kentas.F.Funcs.tocustomlocation, result = vector3(848.6175, 2996.567, 45.81612)},
			{text = 'SmokeTree', type = 'button', bind = 'customtp:SmokeTree', func = Kentas.F.Funcs.tocustomlocation, result = vector3(2126.785, 3335.04, 48.21422)},
			{text = 'Scrapyard', type = 'button', bind = 'customtp:Scrapyard', func = Kentas.F.Funcs.tocustomlocation, result = vector3(2493.654, 3140.399, 51.28789)},
			{text = 'Grapeseed', type = 'button', bind = 'customtp:Grapeseed', func = Kentas.F.Funcs.tocustomlocation, result = vector3(1823.961, 4708.14, 42.4991)},
			{text = 'Palleto', type = 'button', bind = 'customtp:Palleto', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-783.0755, 5934.686, 24.31475)},
			{text = 'Route1', type = 'button', bind = 'customtp:Route1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-3180.466, 1374.192, 19.9597)},
			{text = 'Farmhouse', type = 'button', bind = 'customtp:Farmhouse', func = Kentas.F.Funcs.tocustomlocation, result = vector3(1570.372, 2254.549, 78.89397)},
			{text = 'RatonCanyon', type = 'button', bind = 'customtp:RatonCanyon', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-391.3216, 4363.728, 58.65862)},
			{text = 'Apartments', type = 'sepa', bind = ''},
			{text = 'Modern 1', type = 'button', bind = 'customtp:Modern 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.8663, 315.7642, 217.6385)},
			{text = 'Modern 2', type = 'button', bind = 'customtp:Modern 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.9563, 315.6229, 187.9136)},
			{text = 'Modern 3', type = 'button', bind = 'customtp:Modern 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-774.0126, 342.0428, 196.6864)},
			{text = 'Mody 1', type = 'button', bind = 'customtp:Mody 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.0749, 315.8198, 217.6386)},
			{text = 'Mody 2', type = 'button', bind = 'customtp:Mody 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.8195, 315.5634, 187.9137)},
			{text = 'Mody 3', type = 'button', bind = 'customtp:Mody 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-774.1382, 342.0316, 196.6864)},
			{text = 'Vibrant 1', type = 'button', bind = 'customtp:Vibrant 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.6245, 315.6175, 217.6385)},
			{text = 'Vibrant 2', type = 'button', bind = 'customtp:Vibrant 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.9584, 315.7974, 187.9135)},
			{text = 'Vibrant 3', type = 'button', bind = 'customtp:Vibrant 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-774.0223, 342.1718, 196.6863)},
			{text = 'Sharp 1', type = 'button', bind = 'customtp:Sharp 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.0902, 315.7039, 217.6384)},
			{text = 'Sharp 2', type = 'button', bind = 'customtp:Sharp 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.0155, 315.7071, 187.9135)},
			{text = 'Sharp 3', type = 'button', bind = 'customtp:Sharp 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-773.8976, 342.1525, 196.6863)},
			{text = 'Monochrome 1', type = 'button', bind = 'customtp:Monochrome 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.9887, 315.7393, 217.6386)},
			{text = 'Monochrome 2', type = 'button', bind = 'customtp:Monochrome 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.8809, 315.6634, 187.9136)},
			{text = 'Monochrome 3', type = 'button', bind = 'customtp:Monochrome 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-774.0675, 342.0773, 196.6864)},
			{text = 'Seductive 1', type = 'button', bind = 'customtp:Seductive 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.1423, 315.6943, 217.6384)},
			{text = 'Seductive 2', type = 'button', bind = 'customtp:Seductive 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.0961, 315.815, 187.9135)},
			{text = 'Seductive 3', type = 'button', bind = 'customtp:Seductive 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-773.9552, 341.9892, 196.6862)},
			{text = 'Regal 1', type = 'button', bind = 'customtp:Regal 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.029, 315.7113, 217.6385)},
			{text = 'Regal 2', type = 'button', bind = 'customtp:Regal 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-787.0574, 315.6567, 187.9135)},
			{text = 'Regal 3', type = 'button', bind = 'customtp:Regal 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-774.0109, 342.0965, 196.6863)},
			{text = 'Aqua 1', type = 'button', bind = 'customtp:Aqua 1', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.9469, 315.5655, 217.6383)},
			{text = 'Aqua 2', type = 'button', bind = 'customtp:Aqua 2', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-786.9756, 315.723, 187.9134)},
			{text = 'Aqua 3', type = 'button', bind = 'customtp:Aqua 3', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-774.0349, 342.0296, 196.6862)},
			{text = 'Maze bank', type = 'sepa', bind = ''},
			{text = 'Executive Rich', type = 'button', bind = 'customtp:Executive Rich', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.667, -480.4736, 72.04217)},
			{text = 'Executive Cool', type = 'button', bind = 'customtp:Executive Cool', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.542, -480.4011, 72.04211)},
			{text = 'Executive Contrast', type = 'button', bind = 'customtp:Executive Contrast', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.626, -480.4856, 72.04212)},
			{text = 'Old Spice Warm', type = 'button', bind = 'customtp:Old Spice Warm', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.617, -480.6363, 72.04208)},
			{text = 'Old Spice Classical', type = 'button', bind = 'customtp:Old Spice Classical', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.532, -480.7649, 72.04207)},
			{text = 'Old Spice Vintage', type = 'button', bind = 'customtp:Old Spice Vintage', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.611, -480.5562, 72.04214)},
			{text = 'Power Broker Ice', type = 'button', bind = 'customtp:Power Broker Ice', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.563, -480.549, 72.0421)},
			{text = 'Power Broker Convservative', type = 'button', bind = 'customtp:Power Broker Convservative', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.528, -480.475, 72.04206)},
			{text = 'Power Broker Polished', type = 'button', bind = 'customtp:Power Broker Polished', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1392.416, -480.7485, 72.04207)},

			{text = 'Special', type = 'sepa', bind = ''},
			{text = 'Cargo Ship', type = 'button', bind = 'customtp:Cargo Ship', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-163.3628, -2385.161, 5.999994)},
			{text = 'Red Carpet', type = 'button', bind = 'customtp:Red Carpet', func = Kentas.F.Funcs.tocustomlocation, result = vector3(300.5927, 300.5927, 104.3776)},
			{text = 'Rekt Stilthouse', type = 'button', bind = 'customtp:Rekt Stilthouse', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-1020.518, 663.27, 153.5167)},
			{text = 'Union Depository', type = 'button', bind = 'customtp:Union Depository', func = Kentas.F.Funcs.tocustomlocation, result = vector3(2.6968, -667.0166, 16.13061)},
			{text = 'Trevors Trailer', type = 'button', bind = 'customtp:Trevors Trailer', func = Kentas.F.Funcs.tocustomlocation, result = vector3(1975.552, 3820.538, 33.44833)},
			{text = 'Stadium', type = 'button', bind = 'customtp:Stadium', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-248.6731, -2010.603, 30.14562)},
			{text = 'Max Renda Shop', type = 'button', bind = 'customtp:Max Renda Shop', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-585.8247, -282.72, 35.45475)},
			{text = 'Jewel Store', type = 'button', bind = 'customtp:Jewel Store', func = Kentas.F.Funcs.tocustomlocation, result = vector3(-630.07, -236.332, 38.05704)},
			{text = 'FIB Lobby', type = 'button', bind = 'customtp:FIB Lobby', func = Kentas.F.Funcs.tocustomlocation, result = vector3(110.4, -744.2, 45.7496)},
		},
	},
	['Visuals'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Visuals Options", parentmenu = 'main',
        options = {
			{text = 'Enable esp', type = 'checkbox', bind = 'visuals:Enable esp', check = 'visuals:enableesp'},
			{text = 'include self', type = 'checkbox', bind = 'visuals:include self', check = 'visuals:includeself'},
			{text = 'ESP Distance', type = 'slider', bind = '', speed = 25, index = Kentas.F.Sliders['esp-distance']},
			{text = 'Extra Sensory Options', type = 'submenu', bind = 'main:ExtraSensoryOptions', menu = 'ExtraSensoryOptions'},
			{text = 'Crosshair', type = 'submenu', bind = 'main:Crosshair', menu = 'Crosshair'},
			{text = 'Line ESP', type = 'submenu', bind = 'main:Line ESP', menu = 'LineESP'},
			{text = 'Boxes ESP', type = 'submenu', bind = 'main:Boxes ESP', menu = 'BoxesESP'},
			{text = 'Skeleton ESP', type = 'submenu', bind = 'main:Skeleton ESP', menu = 'SkeletonESP'},
			{text = 'Arrow ESP', type = 'submenu', bind = 'main:Arrow ESP', menu = 'ArrowESP'},
			{text = 'Glowing ESP', type = 'submenu', bind = 'main:Glowing ESP', menu = 'GlowingESP'},
			{text = 'Info ESP', type = 'submenu', bind = 'main:Info ESP', menu = 'InfoESP'},
			{text = 'Blip ESP', type = 'submenu', bind = 'main:Blip ESP', menu = 'BlipESP'},
			{text = 'Chams', type = 'submenu', bind = 'main:Chams', menu = 'Chams'},
			{text = 'Weather', type = 'submenu', bind = 'main:Weather', menu = 'Weather'},
			{text = 'Hud colours', type = 'button', bind = 'Visuals:hudcolours', func = Kentas.F.Funcs.hudcolours},
			{text = 'Upside down', type = 'checkbox', bind = 'Visuals:Upside down', check = 'Visuals:Upsidedown'},
			{text = 'weird rotation', type = 'checkbox', bind = 'Visuals:weird rotation', check = 'Visuals:weirdrotation'},
			{text = 'Fov Changer', type = 'checkbox', bind = 'Visuals:Fov Changer', check = 'Visuals:FovChanger'},
			{text = 'FOV', type = 'slider', bind = '', speed = 1.0, index = Kentas.F.Sliders['gameplay-fov-changer']},
		},
	},
	
	['ArrowESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "ArrowESP ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Arrow ESP', type = 'checkbox', bind = 'visuals:ArrowESP', check = 'visuals:ArrowESP'},
			{text = 'Floating arrows', type = 'checkbox', bind = 'visuals:FloatingArrowESP', check = 'visuals:FloatingArrowESP'},
			{text = 'some cool dot', type = 'checkbox', bind = 'visuals:some cool dot', check = 'visuals:somecooldot'},
			{text = 'FOV', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Arrows-FOV']},
			{text = 'Size', type = 'slider', bind = '', speed = 0.25, index = Kentas.F.Sliders['Arrows-Size']},

			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Arrows-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Arrows-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Arrows-B']},
		},
	},
	['SkeletonESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Skeleton ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Skeleton', type = 'checkbox', bind = 'visuals:Skeletonesp', check = 'visuals:Skeletonesp'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Skeleton-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Skeleton-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Skeleton-B']},
		},
	},
	['Weather'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weather", parentmenu = 'Visuals',
        options = {
			{text = 'Sunny', type = 'button', bind = 'weather:Sunny', func = Kentas.F.Funcs.Sunny},
			{text = 'Rainy', type = 'button', bind = 'weather:Rainy', func = Kentas.F.Funcs.Rainy},
			{text = 'Cloudy', type = 'button', bind = 'weather:Cloudy', func = Kentas.F.Funcs.Cloudy},
			{text = 'Clear', type = 'button', bind = 'weather:Clear', func = Kentas.F.Funcs.Clear},
			{text = 'Thunder', type = 'button', bind = 'weather:Thunder', func = Kentas.F.Funcs.Thunder},
			{text = 'Foggy', type = 'button', bind = 'weather:Foggy', func = Kentas.F.Funcs.Foggy},
			{text = 'XMAS', type = 'button', bind = 'weather:XMAS', func = Kentas.F.Funcs.XMAS},
			{text = 'Snowlight', type = 'button', bind = 'weather:Snowlight', func = Kentas.F.Funcs.Snowlight},
			{text = 'Blizzard', type = 'button', bind = 'weather:Blizzard', func = Kentas.F.Funcs.Blizzard},
			{text = 'Smog', type = 'button', bind = 'weather:Smog', func = Kentas.F.Funcs.Smog},
			{text = 'Overcast', type = 'button', bind = 'weather:Overcast', func = Kentas.F.Funcs.Overcast},
			{text = 'Blackout', type = 'button', bind = 'weather:Blackout', func = Kentas.F.Funcs.Blackout},
		},
	},
	['Chams'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Chams", parentmenu = 'Visuals',
        options = {
			{text = 'Chams type', type = 'combo', index = Kentas.F.Combos['ChamsType'], func = Kentas.F.Funcs.combo_chams},
		},
	},
	['BlipESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Blip ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Blips', type = 'checkbox', bind = 'blipesp:Blips', check = 'blipesp:Blips'},
			{text = 'Sprite', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Blips-Sprite']},
			{text = 'Colour', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Blips-Colour']},
		},
	},
	['InfoESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Info ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Enable', type = 'checkbox', bind = 'infoesp:Enable', check = 'infoesp:Enable'},
			{text = 'Font', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['info-Font']},
			{text = 'Size', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['info-size']},
			{text = 'Y offset', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['info-yoffset']},
			{text = 'Outline', type = 'checkbox', bind = 'infoesp:Outline', check = 'infoesp:Outline'},
		},
	},
	['GlowingESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Glow ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Glow', type = 'checkbox', bind = 'GlowingESP:Glow', check = 'GlowingESP:Glow'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Glow-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Glow-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Glow-B']},
		},
	},
	['BoxesESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Boxes ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Boxes ESP', type = 'checkbox', bind = 'BoxesESP:Boxes ESP', check = 'BoxesESP:Boxes ESP'},
			{text = 'Filled', type = 'checkbox', bind = 'BoxesESP:Filled', check = 'BoxesESP:Filled'},
			{text = 'Health bar', type = 'checkbox', bind = 'BoxesESP:Health bar', check = 'BoxesESP:Healthbar'},
			{text = 'Health bar position', type = 'combo', index = Kentas.F.Combos['HealthPos'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Armour bar', type = 'checkbox', bind = 'BoxesESP:Armour bar', check = 'BoxesESP:Armourbar'},
			{text = 'armour bar position', type = 'combo', index = Kentas.F.Combos['ArmourPos'], func = Kentas.F.Funcs.combo_nil},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Boxes-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Boxes-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Boxes-B']},
			{text = 'Corner Boxes', type = 'submenu', bind = 'main:Corner Boxes', menu = 'CornerBoxes'},
		},
	},
	['CornerBoxes'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Cornerboxes ESP", parentmenu = 'BoxesESP',
        options = {
			{text = 'Corner Box', type = 'checkbox', bind = 'CornerBoxes:CornerBox', check = 'CornerBoxes:CornerBox'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['CornerBoxes-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['CornerBoxes-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['CornerBoxes-B']},
		},
	},
	['LineESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Line ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Line ESP', type = 'checkbox', bind = 'LineESP:Line ESP', check = 'LineESP:Line ESP'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['LineESP-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['LineESP-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['LineESP-B']},
		},
	},
	['Crosshair'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Crosshair", parentmenu = 'Visuals',
        options = {
			{text = 'Crosshair', type = 'checkbox', bind = 'Crosshair:CrosshairESPVis', check = 'Crosshair:CrosshairESPVis'},


			{text = 'Height', type = 'slider', bind = '', speed = 0.0002, index = Kentas.F.Sliders['Crosshair-Height']},
			{text = 'Distance', type = 'slider', bind = '', speed = 0.0005, index = Kentas.F.Sliders['Crosshair-Distance']},
			{text = 'Thickness', type = 'slider', bind = '', speed = 0.0002, index = Kentas.F.Sliders['Crosshair-Thickness']},
			
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Crosshair-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Crosshair-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Kentas.F.Sliders['Crosshair-B']},
		},
	},
	['ExtraSensoryOptions'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Extra Sensory Options", parentmenu = 'Visuals',
        options = {
			{text = 'TRACKER', type = 'submenu', bind = 'main:TRACKER', menu = 'TRACKER'},
			{text = '2D Graphics', type = 'checkbox', bind = 'ExtraSensoryOptions:2D Graphics', check = 'ExtraSensoryOptions:2dgraphics'},
			
			{text = 'Clear effects', type = 'button', bind = 'ExtraSensoryOptions:Clear effects', func = function() Kentas.F.Tables.ClearTimecycleModifier() Kentas.F.Tables.ClearExtraTimecycleModifier() end},
			{text = 'All effects', type = 'sepa', bind = ''},
		


			
		},
	},
	['TRACKER'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Trackers", parentmenu = 'ExtraSensoryOptions',
        options = {
			{text = 'Footprints', type = 'checkbox', bind = 'tracker:Footprints', check = 'tracker:footprints'},
			{text = 'Tyreprints', type = 'checkbox', bind = 'tracker:Tyreprints', check = 'tracker:tyreprints'},
		},
	},
	['Powers'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Godmode Customisations", parentmenu = 'self',
        options = {
			{text = 'Superman', type = 'checkbox', bind = 'self:Superman', check = 'self:superman'},
			--{text = 'Ghost rider', type = 'checkbox', bind = 'self:Ghost rider', check = 'self:Ghostrider'},
			{text = 'The Flash', type = 'checkbox', bind = 'self:The Flash', check = 'self:Flash'},
			{text = 'Onepunch Man', type = 'checkbox', bind = 'self:Onepunch Man', check = 'self:Onepunch'},
			{text = 'No Collision', type = 'checkbox', bind = 'self:No Collision', check = 'self:Collision'},
			{text = 'Fire Breath', type = 'checkbox', bind = 'self:Fire Breath', check = 'self:FireB'},
		},
	},
	['Godmode'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Godmode Customisations", parentmenu = 'self',
        options = {
			{text = 'Basic Godmode', type = 'checkbox', bind = 'self:Basic Godmode', check = 'self:BasicGodmode'},
			{text = 'Semi Godmode', type = 'checkbox', bind = 'self:Semi Godmode', check = 'self:SemiGodmode'},
			{text = 'Bullet-Proof Godmode', type = 'checkbox', bind = 'self:Bullet-Proof Godmode', check = 'self:BulletProof'},
			{text = 'Fire-Proof Godmode', type = 'checkbox', bind = 'self:Fire-Proof Godmode', check = 'self:FireProof'},
			{text = 'Explosion-Proof Godmode', type = 'checkbox', bind = 'self:Explosion-Proof Godmode', check = 'self:ExplosionProof'},
			{text = 'Melee-Proof Godmode', type = 'checkbox', bind = 'self:Melee-Proof Godmode', check = 'self:MeleeProof'},
		},
	},
	['Models'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Model changer", parentmenu = 'self',
        options = {
			{text = 'Male', type = 'combo', index = Kentas.F.Combos['Male'], func = Kentas.F.Funcs.combo_male},
			{text = 'Female', type = 'combo', index = Kentas.F.Combos['Female'], func = Kentas.F.Funcs.combo_female},
		},
	},
	['Wardrobe'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Wardrobe maker", parentmenu = 'self',
        options = {
			{text = 'Hat', type = 'combo', index = Kentas.F.Combos['wardrobe-hat'], func = function()
				Kentas.F.Tables.SetPedPropIndex(Kentas.F.Tables.PlayerPedId(), 0, Kentas.F.Combos['wardrobe-hat'].b[Kentas.F.Combos['wardrobe-hat'].a], 1, 1)
			end},
			{text = 'mask', type = 'combo', index = Kentas.F.Combos['wardrobe-mask'], func = function()
				Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 1, Kentas.F.Combos['wardrobe-mask'].b[Kentas.F.Combos['wardrobe-mask'].a], 1, 1)
			end},
			{text = 'glasses', type = 'combo', index = Kentas.F.Combos['wardrobe-glasses'], func = function()
				Kentas.F.Tables.SetPedPropIndex(Kentas.F.Tables.PlayerPedId(), 1, Kentas.F.Combos['wardrobe-glasses'].b[Kentas.F.Combos['wardrobe-glasses'].a], 1, 1)
			end},
			{text = 'Torso', type = 'combo', index = Kentas.F.Combos['wardrobe-Torso'], func = function()
				Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 11, Kentas.F.Combos['wardrobe-Torso'].b[Kentas.F.Combos['wardrobe-Torso'].a], 1, 1)
			end},
			{text = 'TSHIRT', type = 'combo', index = Kentas.F.Combos['wardrobe-TSHIRT'], func = function()
				Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 8, Kentas.F.Combos['wardrobe-TSHIRT'].b[Kentas.F.Combos['wardrobe-TSHIRT'].a], 1, 1)
			end},
			{text = 'Pants', type = 'combo', index = Kentas.F.Combos['wardrobe-Pants'], func = function()
				Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 4, Kentas.F.Combos['wardrobe-Pants'].b[Kentas.F.Combos['wardrobe-Pants'].a], 1, 1)
			end},
			{text = 'Shoes', type = 'combo', index = Kentas.F.Combos['wardrobe-Shoes'], func = function()
				Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 6, Kentas.F.Combos['wardrobe-Shoes'].b[Kentas.F.Combos['wardrobe-Shoes'].a], 1, 1)
			end},
			{text = 'random outfit', type = 'checkbox', bind = 'w:random outfit', check = 'w:randomoutfit'},
			{text = 'delay', type = 'slider', bind = '', speed = 10, index = Kentas.F.Sliders['randomoutfit-delay']},
		},
    },
    ['online'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online players", parentmenu = 'main',
        options = {

        },
    },
	['Destroyer'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'online',
        options = {
			{text = 'Particles', type = 'submenu', bind = 'main:ParticlesD', menu = 'ParticlesD'},
			{text = 'crashers', type = 'sepa', bind = ''},
			{text = 'Solo session (self)', type = 'button', bind = 'destroyer:Solo session (self)', func = Kentas.F.Funcs.solosessionself},
			{text = 'Remove Voice Proximity (self)', type = 'button', bind = 'destroyer:Remove Voice Proximity (self)', func = Kentas.F.Funcs.RemoveVoiceProximityself},
			{text = 'Fuck Voice Chat (self)', type = 'button', bind = 'destroyer:Fuck Voice Chat (self)', func = Kentas.F.Funcs.FuckVoiceChatself},
			{text = 'Freeze Microphone (self)', type = 'button', bind = 'destroyer:Freeze Microphone (self)', func = Kentas.F.Funcs.FreezeMicrophoneself},
			{text = 'meteor shower', type = 'checkbox', check = 'misc:meteorshower'},
			{text = 'Destroy server', type = 'button', bind = 'destroyer:Destroy server', func = Kentas.F.Funcs.DestroyserverDest},
			{text = 'Destroy baltarusia', type = 'button', bind = 'destroyer:Fuck it all men', func = Kentas.F.Funcs.FuckitallmenDest},
			{text = 'Bypass safezone', type = 'checkbox', bind = 'destroyer:Bypass safezone', check = 'destroyer:Bypasssafezone'},
			{text = 'Troll', type = 'sepa', bind = ''},
			{text = 'Exploits', type = 'submenu', bind = 'destroyer:Exploits', menu = 'ExploitsD'},
			{text = 'Sounds', type = 'submenu', bind = 'destroyer:Sounds', menu = 'SoundsD'},
			{text = 'Bug all players', type = 'button', bind = 'destroyer:Bug all players', func = Kentas.F.Funcs.BugAllPlayersDest},
			{text = 'uzdaryti all players', type = 'button', bind = 'destroyer:Cage all players', func = Kentas.F.Funcs.CageAllPlayersDest},
			{text = 'Explode all players', type = 'button', bind = 'destroyer:Explode all players', func = Kentas.F.Funcs.ExplodeAllPlayersDest},
			{text = 'Crush all players', type = 'button', bind = 'destroyer:Crush all players', func = Kentas.F.Funcs.CrushAllPlayersDest},
			{text = 'Swastika all players', type = 'button', bind = 'destroyer:Swastika all players', func = Kentas.F.Funcs.SwastikaAllPlayersDest},
			{text = 'Launch all players', type = 'button', bind = 'destroyer:Launch all players', func = Kentas.F.Funcs.LaunchAllPlayersDest},
			{text = 'Crash all players', type = 'button', bind = 'destroyer:Crash all players', func = Kentas.F.Funcs.CrashAllPlayersDest},
			{text = 'Delete all player vehicles', type = 'button', bind = 'destroyer:Delete all player vehicles', func = Kentas.F.Funcs.Deleteallplayervehicles},
			{text = 'Make all player vehicles fly', type = 'checkbox', bind = 'destroyer:Make all player vehicles fly', check = 'destroyer:Makeallplayervehiclesfly'},
			
			{text = 'Kill using weapon', type = 'combo', index = Kentas.F.Combos['KillUsingWeaponOnline'], func = Kentas.F.Funcs.combo_killusingweapondest},
			{text = 'Taze', type = 'button', bind = 'destroyer:taze destroyer', func = Kentas.F.Funcs.taze_dest},
			{text = 'Ram by vehicle', type = 'combo', index = Kentas.F.Combos['RambyvehicleOnline'], func = Kentas.F.Funcs.combo_Rambyvehicledest},
			{text = 'heli driveby all players', type = 'button', bind = 'destroyer:heli driveby all players', func = Kentas.F.Funcs.helidrivebyAllPlayersDest},
			{text = 'hood attack all players', type = 'button', bind = 'destroyer:hood attack all players', func = Kentas.F.Funcs.hoodattackAllPlayersDest},
			{text = 'delete vehicle all players', type = 'button', bind = 'destroyer:delete vehicle all players', func = Kentas.F.Funcs.deletevehiclesAllPlayersDest},
			{text = 'Attach', type = 'combo', index = Kentas.F.Combos['AttachOnl'], func = Kentas.F.Funcs.combo_Attachdest},

			{text = 'Prop Blocker', type = 'sepa', bind = ''},
			{text = 'Legion', type = 'button', bind = 'destroyer:Legion', func = Kentas.F.Funcs.LegionBlockDest},
			{text = 'LSPD', type = 'button', bind = 'destroyer:LSPD', func = Kentas.F.Funcs.LSPDBlockDest},
			{text = 'Car Dealer', type = 'button', bind = 'destroyer:Car Dealer', func = Kentas.F.Funcs.CarDealerBlockDest},
			{text = 'Grove Street', type = 'button', bind = 'destroyer:Grove Street', func = Kentas.F.Funcs.GroveStreetBlockDest},
			{text = 'Ammunation', type = 'button', bind = 'destroyer:Ammunation', func = Kentas.F.Funcs.AmmunationBlockDest},

			{text = 'vehicle', type = 'sepa', bind = ''},
			{text = 'Doors', type = 'combo', index = Kentas.F.Combos['DoorsOnl'], func = Kentas.F.Funcs.combo_doorsdest},
			{text = 'Remove doors', type = 'button', bind = 'destroyer:Remove doors', func = Kentas.F.Funcs.RemoveAllVehDoorsDest},
			{text = 'Break engine', type = 'button', bind = 'destroyer:Break engine', func = Kentas.F.Funcs.BreakVehicleEngineDest},
			{text = 'Rape Vehicle', type = 'button', bind = 'destroyer:Rape Vehicle', func = Kentas.F.Funcs.RapeVehicleDest},
			{text = 'Launch Vehicle', type = 'button', bind = 'destroyer:Launch Vehicle', func = Kentas.F.Funcs.LaunchVehicleDest},

			{text = 'Weapon', type = 'sepa', bind = ''},
			{text = 'Give weapon', type = 'button', bind = 'destroyer:Give weapon', func = Kentas.F.Funcs.GiveweaponDest},
			{text = 'Remove weapon', type = 'button', bind = 'destroyer:Remove weapon', func = Kentas.F.Funcs.RemoveweaponDest},

		},
	},
	['onlineOptions'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'online',
        options = {
			{text = 'Spectate', type = 'checkbox', bind = 'online:Spectate', check = 'online:Spectate'},

			{text = 'Teleport', type = 'button', bind = 'online:Teleport', func = Kentas.F.Funcs.teleporttoplayer},
			{text = 'Teleport into vehicle', type = 'button', bind = 'online:Teleport into vehicle', func = Kentas.F.Funcs.TeleportIntoVehicleOnl},
			{text = 'Friend / Unfriend', type = 'button', bind = 'online:Teleport', func = Kentas.F.Funcs.friendplayerun},

			{text = 'BASIC', type = 'sepa', bind = ''},
			{text = 'Sirens on player', type = 'button', bind = 'online:Sirens on player', func = Kentas.F.Funcs.Sirensonplayer},
			{text = 'Aggressive bolivanos', type = 'button', bind = 'online:Aggressive bolivanos', func = Kentas.F.Funcs.Aggressivebolivanos},
			{text = 'PP on head', type = 'button', bind = 'online:PP on head', func = Kentas.F.Funcs.PPonhead},
			{text = 'Spawn hitman', type = 'button', bind = 'online:Spawn hitman', func = Kentas.F.Funcs.Spawnhitman},
			{text = 'Draw waypoint to', type = 'button', bind = 'online:Draw waypoint to', func = Kentas.F.Funcs.Drawwaypointtoplayer},
			{text = 'Steal vehicle', type = 'button', bind = 'online:Steal vehicle', func = Kentas.F.Funcs.StealvehicleThisPlayer},
			{text = 'Copy outfit', type = 'button', bind = 'online:Copy outfit', func = Kentas.F.Funcs.Copyoutfitplayer},

			{text = 'Copy Vehicle', type = 'button', bind = 'online:Copy Vehicle', func = Kentas.F.Funcs.CopyVehicleplayer},

			{text = 'Particles', type = 'submenu', bind = 'main:Particles', menu = 'ParticlesO'},

			{text = 'TROLL', type = 'sepa', bind = ''},
			
			{text = 'Sounds', type = 'submenu', bind = 'online:Sounds', menu = 'SoundsO'},
			{text = 'Peds', type = 'submenu', bind = 'online:Peds', menu = 'PedsO'},
			{text = 'Vehicles', type = 'submenu', bind = 'online:Vehicles', menu = 'VehiclesO'},
			{text = 'Props', type = 'submenu', bind = 'online:Props', menu = 'PropsO'},
			{text = 'Exploits', type = 'submenu', bind = 'online:Exploits', menu = 'ExploitsO'},
			{text = 'Explosions', type = 'submenu', bind = 'online:Explosions', menu = 'ExplosionsO'},
			{text = 'Attacher', type = 'submenu', bind = 'online:Attacher', menu = 'AttacherO'},


			{text = 'Bug Player', type = 'button', bind = 'online:Bug Player', func = Kentas.F.Funcs.BugVehiclePlayer},
			{text = 'Spawn Bodyguards', type = 'button', bind = 'online:Spawn Bodyguards', func = Kentas.F.Funcs.SpawnBodyguardsPlayer},
			{text = 'Cage player', type = 'button', bind = 'online:Cage player', func = Kentas.F.Funcs.CageThisPlayer},
			--{text = 'Explode player', type = 'button', bind = 'online:Explode player', func = Kentas.F.Funcs.ExplodeThisPlayer},
			{text = 'Crush player', type = 'button', bind = 'online:Crush player', func = Kentas.F.Funcs.CrushThisPlayer},
			{text = 'Swastika player', type = 'button', bind = 'online:Swastika player', func = Kentas.F.Funcs.SwastikaThisPlayer},
			{text = 'Launch player', type = 'button', bind = 'online:Launch player', func = Kentas.F.Funcs.LaunchThisPlayer},
			{text = 'Crash game', type = 'button', bind = 'online:Crash game', func = Kentas.F.Funcs.CrashGameThisPlayer},
			{text = 'Kill using weapon', type = 'combo', index = Kentas.F.Combos['KillUsingWeaponOnline'], func = Kentas.F.Funcs.combo_killusingweapononline},
			{text = 'Taze', type = 'button', bind = 'destroyer:taze online', func = Kentas.F.Funcs.taze_online},
			{text = 'Ram by vehicle', type = 'combo', index = Kentas.F.Combos['RambyvehicleOnline'], func = Kentas.F.Funcs.combo_RambyvehicleOnline},
			{text = 'Heli Driveby', type = 'button', bind = 'online:Heli Driveby', func = Kentas.F.Funcs.HeliDrivebyThisPlayer},
			{text = 'Hood attack', type = 'button', bind = 'online:Hood attack', func = Kentas.F.Funcs.HoodattackThisPlayer},
			{text = 'Delete Vehicle', type = 'button', bind = 'online:Delete Vehicle', func = Kentas.F.Funcs.DeleteVehicleThisPlayer},
			{text = 'Attach', type = 'combo', index = Kentas.F.Combos['AttachOnl'], func = Kentas.F.Funcs.combo_AttachOnl},
			{text = 'Make player vehicle fly', type = 'checkbox', bind = 'online:Makeplayervehiclefly', check = 'online:Makeplayervehiclefly'},
			

			{text = 'TP All Vehicles on player', type = 'button', bind = 'online:TP All Vehicles on player', func = Kentas.F.Funcs.TpAllVehsThisPlayer},
			{text = 'TP All Peds on player', type = 'button', bind = 'online:TP All Peds on player', func = Kentas.F.Funcs.TpAllPedsThisPlayer},
			{text = 'TP All Objects on player', type = 'button', bind = 'online:TP All Objects on player', func = Kentas.F.Funcs.TpAllObjectsThisPlayer},

			{text = 'vehicle', type = 'sepa', bind = ''},
			{text = 'Doors', type = 'combo', index = Kentas.F.Combos['DoorsOnl'], func = Kentas.F.Funcs.combo_doorsplayer},
			{text = 'Remove doors', type = 'button', bind = 'online:Remove doors', func = Kentas.F.Funcs.RemoveAllVehDoorsPlayer},
			{text = 'Break engine', type = 'button', bind = 'online:Break engine', func = Kentas.F.Funcs.BreakVehicleEnginePlayer},
			{text = 'Rape Vehicle', type = 'button', bind = 'online:Rape Vehicle', func = Kentas.F.Funcs.RapeVehiclePlayer},
			{text = 'Launch Vehicle', type = 'button', bind = 'online:Launch Vehicle', func = Kentas.F.Funcs.LaunchVehiclePlayer},

			{text = 'Weapon', type = 'sepa', bind = ''},
			{text = 'Give weapon', type = 'button', bind = 'online:Give weapon', func = Kentas.F.Funcs.GiveweaponPlayer},
			{text = 'Remove weapon', type = 'button', bind = 'online:Remove weapon', func = Kentas.F.Funcs.RemoveweaponPlayer},


		},
    },
	
	['AttacherO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'attach me', type = 'button', bind = 'online:attach me', func = Kentas.F.Funcs.onlineattachme},
			{text = 'attach peds', type = 'button', bind = 'online:attach peds', func = Kentas.F.Funcs.onlineattachpeds},
			{text = 'attach props', type = 'button', bind = 'online:attach props', func = Kentas.F.Funcs.onlineattachprops},
		},
	},
	['SoundsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Sound', type = 'combo', index = Kentas.F.Combos['SoundsOnl'], func = Kentas.F.Funcs.combo_soundsonline},
			{text = 'Loop sound', type = 'checkbox', bind = 'online:Loop sound', check = 'online:LoopSounds'},
		},
	},
	['PedsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Ped Model', type = 'button', bind = 'online:Ped Model', func = Kentas.F.Funcs.PedModelOnl},
			{text = 'Ped Weapon', type = 'button', bind = 'online:Ped Weapon', func = Kentas.F.Funcs.PedWeaponOnl},
			{text = 'Aggressive', type = 'checkbox', bind = 'online:Aggressive', check = 'online:Aggressive'},
			{text = 'Spawn Ped', type = 'button', bind = 'online:Spawn Ped', func = Kentas.F.Funcs.SpawnPedOnl},
			{text = 'Clone Player', type = 'button', bind = 'online:Clone Player', func = Kentas.F.Funcs.ClonePlayerOnl},
		},
	},
	['VehiclesO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Vehicle Model', type = 'button', bind = 'online:Vehicle Model', func = Kentas.F.Funcs.VehicleModelOnl},
			{text = 'Spawn Vehicle', type = 'button', bind = 'online:Spawn Vehicle', func = Kentas.F.Funcs.SpawnVehicleOnl},
		},
	},
	['PropsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Prop Model', type = 'button', bind = 'online:Prop Model', func = Kentas.F.Funcs.PropModelOnl},
			{text = 'Spawn Prop', type = 'button', bind = 'online:Spawn Vehicle', func = Kentas.F.Funcs.SpawnPropOnl},
		},
	},
	['ExplosionsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Type', type = 'combo', index = Kentas.F.Combos['ExplodeTypeOnl'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Audible', type = 'checkbox', bind = 'explodeo:Audible', check = 'explodeo:Audible'},
			{text = 'Invisible', type = 'checkbox', bind = 'explodeo:Invisible', check = 'explodeo:Invisible'},
			{text = 'Camera shake', type = 'checkbox', bind = 'explodeo:Camera shake', check = 'explodeo:Camerashake'},

			{text = 'Explode', type = 'sepa', bind = ''},
			{text = 'Create Explosion', type = 'button', bind = 'online:Create Explosion', func = Kentas.F.Funcs.CreateExplosion},
			{text = 'Explode loop', type = 'checkbox', bind = 'explodeo:Explode loop', check = 'explodeo:Explodeloop'},
		},
	},
	['ExploitsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Loop times', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['LoopTimes-EXOnline']},
			{text = 'Spawn Blimp', type = 'button', bind = 'online:Spawn Blimp', func = Kentas.F.Funcs.SpawnBlimp},
			{text = 'Spawn Jet', type = 'button', bind = 'online:Spawn Jet', func = Kentas.F.Funcs.SpawnJet},
			{text = 'Spawn Titan', type = 'button', bind = 'online:Spawn Titan', func = Kentas.F.Funcs.SpawnTitan},
			{text = 'Spawn Rhino', type = 'button', bind = 'online:Spawn Rhino', func = Kentas.F.Funcs.SpawnRhino},
		},
	},
	['ParticlesO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Particles', type = 'checkbox', bind = 'particleso:Particles', check = 'particleso:Particles'},
			{text = 'Particle', type = 'combo', index = Kentas.F.Combos['ParticlesOnl'], func = Kentas.F.Funcs.combo_nil},
			{text = 'BONE', type = 'combo', index = Kentas.F.Combos['ParticlesBone'], func = Kentas.F.Funcs.combo_nil},
			{text = 'Particle scale', type = 'slider', bind = '', speed = 0.2, index = Kentas.F.Sliders['Online-ParticleScale']},
			{text = 'Particle delay', type = 'slider', bind = '', speed = 0.5, index = Kentas.F.Sliders['Online-ParticleDelay']},
		},
	},

	['SoundsD'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'Destroyer',
        options = {
			{text = 'Sound', type = 'combo', index = Kentas.F.Combos['SoundsOnl'], func = Kentas.F.Funcs.combo_soundsdest},
			{text = 'Loop sound', type = 'checkbox', bind = 'destroyer:Loop sound', check = 'destroyer:LoopSounds'},
			{text = 'Ear rape', type = 'checkbox', bind = 'destroyer:Ear rape', check = 'destroyer:Earrape'},
		},
	},
	['ExploitsD'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'Destroyer',
        options = {
			{text = 'Loop times', type = 'slider', bind = '', speed = 1, index = Kentas.F.Sliders['LoopTimes-EXOnline']},
			{text = 'Spawn Blimp', type = 'button', bind = 'online:Spawn Blimp', func = Kentas.F.Funcs.SpawnBlimpD},
			{text = 'Spawn Jet', type = 'button', bind = 'online:Spawn Jet', func = Kentas.F.Funcs.SpawnJetD},
			{text = 'Spawn Titan', type = 'button', bind = 'online:Spawn Titan', func = Kentas.F.Funcs.SpawnTitanD},
			{text = 'Spawn Rhino', type = 'button', bind = 'online:Spawn Rhino', func = Kentas.F.Funcs.SpawnRhinoD},
		},
	},
	['ParticlesD'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'Destroyer',
        options = {
			{text = 'Particles', type = 'checkbox', bind = 'particlesd:Particles', check = 'particlesd:Particles'},
			{text = 'BONE', type = 'combo', index = Kentas.F.Combos['ParticlesBone'], func = Kentas.F.Funcs.combo_nil},

			{text = 'Particle', type = 'combo', index = Kentas.F.Combos['ParticlesOnl'], func = Kentas.F.Funcs.combo_nil},

			{text = 'Particle scale', type = 'slider', bind = '', speed = 0.2, index = Kentas.F.Sliders['Online-ParticleScale']},
			{text = 'Particle delay', type = 'slider', bind = '', speed = 0.5, index = Kentas.F.Sliders['Online-ParticleDelay']},
		},
	},
}

function Kentas.F.Tables.Functions.LoadGifPed()
	Kentas.F.PedsDuibanner = Kentas.F.Tables.CreateDui('https://docs.fivem.net/peds/a_m_m_acult_01.webp', 150, 333)
	Kentas.F.WepDuibanner = Kentas.F.Tables.CreateDui("https://vignette.wikia.nocookie.net/gtawiki/images/f/f4/Pistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211628", 310, 174)

	local runtime_txd1111 = Kentas.F.Tables.CreateRuntimeTxd("LoadGifPed")
	local b_dui12313 = Kentas.F.Tables.GetDuiHandle(Kentas.F.PedsDuibanner)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd1111, "LoadGifPed_s", b_dui12313)

	local runtime_txd1111xd = Kentas.F.Tables.CreateRuntimeTxd("LoadGifWep")
	local b_dui12313xd = Kentas.F.Tables.GetDuiHandle(Kentas.F.WepDuibanner)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd1111xd, "LoadGifWep_s", b_dui12313xd)
end

function Kentas.F.Tables.Functions.LoadGif()
	local runtime_txd = Kentas.F.Tables.CreateRuntimeTxd("KentasMenu")
	Kentas.F.banner_dui1 = Kentas.F.Tables.CreateDui("https://cdn.discordapp.com/attachments/826526555693645895/884445819254734918/Comp_1.gif", 400, 102)
	local b_dui = Kentas.F.Tables.GetDuiHandle(Kentas.F.banner_dui1)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd, "menu_gif", b_dui)
	local runtime_txd3 = Kentas.F.Tables.CreateRuntimeTxd("thefov")
	local banner_dui3 = Kentas.F.Tables.CreateDui("http://site15115.web1.titanaxe.com/pngs/circle2.html", 1000, 1000)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd3, "sdjcircle", Kentas.F.Tables.GetDuiHandle(banner_dui3))
	local runtime_txd5 = Kentas.F.Tables.CreateRuntimeTxd('hitmarker')
	local banner_dui5 = Kentas.F.Tables.CreateDui("https://kentas.menu/fuckmarkerlol.html", 400, 400)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd5, 'hitmarker_a', Kentas.F.Tables.GetDuiHandle(banner_dui5))
	local runtime_txd6 = Kentas.F.Tables.CreateRuntimeTxd('BonePed')
	local banner_dui6 = Kentas.F.Tables.CreateDui("https://kentas.menu/visualsped.html", 200, 500)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd6, 'BonePed_a', Kentas.F.Tables.GetDuiHandle(banner_dui6))
	local arrowfov1 = Kentas.F.Tables.CreateRuntimeTxd('arrowfov')
	local arrowfov2 = Kentas.F.Tables.CreateDui("http://site15115.web1.titanaxe.com/pngs/circle2.html", 80, 80)
	Kentas.F.Tables.CreateRuntimeTextureFromDuiHandle(arrowfov1, 'arrowfov_a', Kentas.F.Tables.GetDuiHandle(arrowfov2))
end

Kentas.F.Tables.Functions.LoadGifPed()
Kentas.F.Tables.Functions.LoadGif()


function Kentas.F.Tables.Functions.GetResources()
	local resources = {}
	for i = 0, Kentas.F.Tables.GetNumResources() do
		resources[i] = Kentas.F.Tables.GetResourceByFindIndex(i)
	end
	return resources
end
function Kentas.F.Tables.Functions.FindTriggers(content, method)
	local s, l = __KentasStrings__.strings:find(content, method.."%b()")
	local tosub = '"'
	
	if s == nil then
		return
	end
	local scriptt = __KentasStrings__.strings:sub(content, s, l)
	local takeidpls, _ = __KentasStrings__.strings:gsub(scriptt, method, "")
	local takeidpls, _ = __KentasStrings__.strings:gsub(takeidpls, "'", "")
	local takeidpls, _ = __KentasStrings__.strings:gsub(takeidpls, '"', "")
	local takeidpls, _ = __KentasStrings__.strings:gsub(takeidpls, "%(", "")
	local takeidpls, _ = __KentasStrings__.strings:gsub(takeidpls, "%)", "")
	

	return __KentasStrings__.strings:tostring(takeidpls)
end
function Kentas.F.Tables.GetAllCommmandsOnServer(_thisshit_)
	local finded, _ = __KentasStrings__.strings:gsub(_thisshit_, '{'..'"name":"', "")
	local nfinded, _ = __KentasStrings__.strings:gsub(finded, '"}', "")

	return __KentasStrings__.strings:tostring(nfinded)
end
function Kentas.F.Tables.Functions.TriggerFinder(content)
	for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.Functions.GetResources()) do
		return Kentas.F.Tables.Functions.FindTriggers(content, 'TriggerServerEvent')
	end
end
function Kentas.F.Tables.Functions.NetEventFinder(content)
	for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.Functions.GetResources()) do
		return Kentas.F.Tables.Functions.FindTriggers(content, 'TriggerServerEvent')
	end
end
function Kentas.F.Tables.Functions.TriggerEventFinder(content)
	for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.Functions.GetResources()) do
		return Kentas.F.Tables.Functions.FindTriggers(content, 'TriggerEvent')
	end
end

__CitIn__.CreateThread(function()
	Kentas.F.Tables.RegisterKeyMapping('suscommand_o', 'do not change it okay?', 'keyboard', 'o')
	Kentas.F.Tables.RegisterKeyMapping('suscommand_0', 'do not change it okay?', 'keyboard', '0')
	Kentas.F.Tables.RegisterKeyMapping('suscommand_i', 'do not change it okay?', 'keyboard', 'i')

	Kentas.F.Tables.RegisterCommand('suscommand_o', function()
		Kentas.F.Inputtext = Kentas.F.Inputtext..'o'
	end, false)
	Kentas.F.Tables.RegisterCommand('suscommand_0', function()
		Kentas.F.Inputtext = Kentas.F.Inputtext..'0'
	end, false)
	Kentas.F.Tables.RegisterCommand('suscommand_i', function()
		Kentas.F.Inputtext = Kentas.F.Inputtext..'i'
	end, false)


	local year, month, day, hour, min, sec = Kentas.F.Tables.GetLocalTime()
	if hour < 10 then
		hour = '0'..hour
	end
	if min < 10 then
		min = '0'..min
	end
	if sec < 10 then
		sec = '0'..sec
	end
	Kentas.F.InjectionTime = hour..':'..min..'.'..sec
	__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Server Info'].options, {text = 'IP: '..Kentas.F.Tables.GetCurrentServerEndpoint(), type = 'button', bind = 'ip:serverip', func = function() end})
	
	
	
	for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.Functions.GetResources()) do
		Kentas.F.Tabak = #v
		local res = 'dumper:'..v
		local t = {text = v, type = 'submenu', bind = 'dumper:'..v, menu = res}
		if v ~= 'yarn' and v ~= 'fivem' and v ~= 'webpack' and v ~= '_cfx_internal' then
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Dumper'].options, t)
		end
		Kentas.F.submenu[res] = {selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = v, parentmenu = 'Dumper', options = {}}
		
		for i = 0, Kentas.F.Tables.GetNumResourceMetadata(v, "client_script")-1 do
			local data = Kentas.F.Tables.GetResourceMetadata(v, "client_script", i)
			local script = Kentas.F.Tables.LoadResourceFile(v, data)
			if script ~= nil then
				__KentasStrings__.strings:tableinsert(Kentas.F.submenu[res].options, 
				{text = data, type = 'button', bind = 'dumper:'..data, func = function()
					Kentas.F.WorkingDumper = not Kentas.F.WorkingDumper
					__CitIn__.CreateThread(function()
						while Kentas.F.WorkingDumper do
							__CitIn__.Wait(0)
							local GetAllLines = Kentas.F.Tables.mathsplit(script, "[^\n]+")
							Kentas.F.Tables.DrawRect(0.39, 0.488, 0.25, 0.5, 1, 1, 1, 180)
							
							local scroll = 0.235 + Kentas.F.Checks.scr_a
							
							--if Kentas.F.Tables.Functions.CreateZone(0.39+Kentas.F.Checks.KeyboardDragXWM, 0.488+Kentas.F.Checks.KeyboardDragYWM, 0.25, 0.5) then
								if Kentas.F.Tables.IsDisabledControlPressed(0, 14) and scroll > (0.235 - ((#GetAllLines-33) * 0.015)) then
									Kentas.F.Checks.scr_a = Kentas.F.Checks.scr_a - 0.015
								end
								if Kentas.F.Tables.IsDisabledControlPressed(0, 15) and scroll ~= 0.235 then
									Kentas.F.Checks.scr_a = Kentas.F.Checks.scr_a + 0.015
								end
							--end
	
							for ak, ag in __KentasStrings__.strings:pairs(GetAllLines) do
								if scroll >= 0.235 and scroll <= 0.74 - 0.015 then
									Kentas.F.Tables.Functions.DrawTxt(ag, 0.265+Kentas.F.Checks.KeyboardDragXWM, scroll+Kentas.F.Checks.KeyboardDragYWM, 0.3, 0.3, {r=255, g=255, b=255, a=255}, false, 4)
									--_wWlCT._GlobFunc.DrawText(ag, 0.654, scroll, true, 0.3, 4, false)
								end scroll = scroll + 0.015
							end
	
							if Kentas.activemenu ~= 'dumper:'..v then
								Kentas.F.WorkingDumper = false
								Kentas.F.Checks.scr_a = 0.0
							end
						end
					end)
				end})
	
				local TriggerData = Kentas.F.Tables.Functions.TriggerFinder(script)
				local EventTriggerData = Kentas.F.Tables.Functions.TriggerEventFinder(script)
				local NetFinder = Kentas.F.Tables.Functions.NetEventFinder(script)
				if TriggerData ~= nil then
					__KentasStrings__.strings:tableinsert(Kentas.F.submenu['LUAOptions'].options, {text = TriggerData, type = 'button', bind = 'lua:trigger'..TriggerData, func = Kentas.F.Funcs.combo_nil})
					if NetFinder ~= nil then
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['LUAOptions'].options, {text = NetFinder, type = 'button', bind = 'lua:trigger'..NetFinder, func = Kentas.F.Funcs.combo_nil})
					end
					if EventTriggerData ~= nil then
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['LUAOptions'].options, {text = EventTriggerData, type = 'button', bind = 'lua:trigger'..EventTriggerData, func = Kentas.F.Funcs.combo_nil})
					end
				end
			end
		end
	end
	if Kentas.F.Funcs.CheckIfResourceExist('screenshot-basic') then
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Configs'].options, {text = 'Create config', type = 'button', bind = 'configs:Create config', func = Kentas.F.Funcs.Createconfig})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Configs'].options, {text = 'Load config', type = 'button', bind = 'configs:Load config', func = Kentas.F.Funcs.Loadconfig})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Configs'].options, {text = 'Config list', type = 'submenu', bind = 'main:Config list', menu = 'Config list'})
	else
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Configs'].options, {text = 'This server build does not support configs! | '..Kentas.F.Tables.GetGameBuildNumber(), type = 'button', bind = 'configs:xddd', func = function() end})
	end
	if Kentas.F.Tabak ~= nil then
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Server Info'].options, {text = 'Resource count: '..Kentas.F.Tabak, type = 'button', bind = 'ip:resources', func = function() end})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Server Info'].options, {text = 'Server build: '..Kentas.F.Tables.GetGameBuildNumber(), type = 'button', bind = 'ip:currentres', func = function() end})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Server Info'].options, {text = 'Injected in: '..Kentas.F.Tables.GetCurrentResourceName(), type = 'button', bind = 'ip:currentres', func = function() end})
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Server Info'].options, {text = 'Injection time: '..Kentas.F.InjectionTime, type = 'button', bind = 'ip:currentres', func = function() end})
	end
	for k, v in __KentasStrings__.strings:pairs(AddonVehicles.cars) do
		if Kentas.F.Tables.IsModelValid(Kentas.F.Tables.GetHashKey(v)) then
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['AddonCars'].options, {text = v, type = 'button', bind = 'vehicle:addonveh'..v, func = Kentas.F.Funcs.SpawnAddonVeh, result = v})
		end
	end
	for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetRegisteredCommands()) do
		local __name__ = Kentas.F.Tables.GetAllCommmandsOnServer(json.encode(v))
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Commands'].options, {text = __name__, type = 'button', bind = 'command:createcom', func = Kentas.F.Funcs.combo_nil, index = __name__})
	end
	for k, v in __KentasStrings__.strings:pairs(Kentas.F.Combos['Effects'].b) do
		__KentasStrings__.strings:tableinsert(Kentas.F.submenu['ExtraSensoryOptions'].options, {text = v, type = 'button', bind = 'extrasensory:extrasensory', func = Kentas.F.Funcs.ExtraSensoryOptions, result = v})
	end
		
	
	
	while Kentas.enabled do
		__CitIn__.Wait(0)
		local value, label = Kentas.F.Funcs.Binding()
		Kentas.F.Checks.OpenKeyV = value
		Kentas.F.Checks.OpenKeyL = label
		break
	end

    while Kentas.enabled do 
        __CitIn__.Wait(0)

		if Kentas.F.Tables.IsDisabledControlJustPressed(0, Kentas.F.Checks.OpenKeyV) then 
            Kentas.F.OpenMenu = not Kentas.F.OpenMenu 
			if Kentas.F.OpenMenu then
				if Kentas.F.Checks['configuration:menusounds'] then
					Kentas.F.Tables.PlaySoundFrontend(-1, "Boss_Message_Orange", "GTAO_Boss_Goons_FM_Soundset", 0)
				end
			else
				if Kentas.F.Checks['configuration:menusounds'] then
					Kentas.F.Tables.PlaySoundFrontend(-1, 'BACK', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
				end
			end
        end

        if Kentas.F.Checks['self:autoheal'] then
            __CitIn__.CreateThread(function()
				__CitIn__.Wait(Kentas.F.Sliders['heal'].value)
				Kentas.F.Tables.SetEntityHealth(Kentas.F.Tables.PlayerPedId(), 200)
			end)
        end
        if Kentas.F.Checks['self:autoarmour'] then
            __CitIn__.CreateThread(function()
				__CitIn__.Wait(Kentas.F.Sliders['armour'].value)
				Kentas.F.Tables.SetPedArmour(Kentas.F.Tables.PlayerPedId(), 200)
			end)
        end
		if Kentas.F.Checks['self:noclip'] then
			local noclip_speed = Kentas.F.Sliders['self-noclipspeed'].value
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			local x,y,z = Kentas.F.Tables.Functions.getPosition()
			local dx,dy,dz = Kentas.F.Tables.Functions.getCamlbection()
			local speed = noclip_speed
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			--Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.PlayerPedId(), false, false)
			--Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.PlayerPedId(), false);
		
		
			if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId(), 0) then
				ped = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			else
				ped = Kentas.F.Tables.PlayerPedId()
			end 
		
			Kentas.F.Tables.SetEntityCollision(Kentas.F.Tables.PlayerPedId(), true, true)
			Kentas.F.Tables.ResetEntityAlpha(Kentas.F.Tables.PlayerPedId())
			Kentas.F.Tables.ResetEntityAlpha(veh)
			Kentas.F.Tables.DisableControlAction(0, 85, false)
		
			Kentas.F.Tables.SetEntityVelocity(ped, 0.0001, 0.0001, 0.0001)
				  if Kentas.F.Sliders['self-noclipspeed'] then
				  speed = speed
				  end
		
				if Kentas.F.Tables.IsDisabledControlPressed(0, 19) then
				  speed = speed
				elseif Kentas.F.Tables.IsDisabledControlPressed(0, 21) then
					speed = speed*4
				end
				if Kentas.F.Tables.IsDisabledControlPressed(0,32) then -- MOVE UP
				  x = x + speed * dx
				  y = y + speed * dy
				  z = z + speed * dz
				end
		
				if Kentas.F.Tables.IsDisabledControlPressed(0,269) then -- MOVE DOWN
				  x = x - speed * dx
				  y = y - speed * dy
				  z = z - speed * dz
				end

				
		
				if Kentas.F.Tables.IsDisabledControlPressed(0, 22) then -- MOVE UP
					z = z + speed
				end
		
				if Kentas.F.Tables.IsDisabledControlPressed(0, 36) then -- MOVE DOWN
					z = z - speed
				end
				
				if Kentas.F.Tables.SetEntityCoordsNoOffset(ped,x,y,z,true,true,true) then
			else
				Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(-1), true, false))
		
			end
		--else
			--Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.PlayerPedId(), true);
		end
		if Kentas.F.Checks['self:invisible'] then
			Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.PlayerPedId(), false, 0)
			Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId()), false, 0, false)
		elseif not Kentas.F.Checks['self:invisible'] then
			Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.PlayerPedId(), true, 0)
			Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId()), true, 0, false)
		end
		
		if Kentas.F.Checks['self:BasicGodmode'] then
			Kentas.F.Tables.SetEntityInvincible(Kentas.F.Tables.PlayerPedId(), true)
			Kentas.F.Tables.SetPlayerInvincible(Kentas.F.Tables.PlayerId(), true)
		else
			Kentas.F.Tables.SetEntityInvincible(Kentas.F.Tables.PlayerPedId(), false)
			Kentas.F.Tables.SetPlayerInvincible(Kentas.F.Tables.PlayerId(), false)
		end
		
		if Kentas.F.Checks['self:SemiGodmode'] then
			Kentas.F.Tables.SetEntityHealth(Kentas.F.Tables.PlayerPedId(), 200)
		end

		Kentas.F.Tables.SetEntityProofs(Kentas.F.Tables.PlayerPedId(), Kentas.F.Checks['self:BulletProof'], Kentas.F.Checks['self:FireProof'], Kentas.F.Checks['self:ExplosionProof'], false, Kentas.F.Checks['self:MeleeProof'], false, 1, false)
        

		if Kentas.F.Checks['self:fastrun'] then
			Kentas.F.Tables.SetRunSprintMultiplierForPlayer(Kentas.F.Tables.PlayerId(-1), __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.2f", Kentas.F.Sliders['FastRun'].value)))
		end

		if Kentas.F.Checks['self:slidemode'] then
			if Kentas.F.Tables.IsDisabledControlPressed(0, 34) or Kentas.F.Tables.IsDisabledControlPressed(0, 33) or Kentas.F.Tables.IsDisabledControlPressed(0, 32) or Kentas.F.Tables.IsDisabledControlPressed(0, 35) then
				if not Kentas.F.Tables.IsPedRagdoll(Kentas.F.Tables.PlayerPedId()) then
					Kentas.F.Tables.SetEntityVelocity(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.PlayerPedId(), 0.0, Kentas.F.Sliders['SlideMode'].value+0.0, Kentas.F.Tables.GetEntityVelocity(Kentas.F.Tables.PlayerPedId()).z) - Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))
				end
			end
		end
		if Kentas.F.Checks['self:superjump'] then
			if Kentas.F.Tables.IsDisabledControlJustPressed(0, 22) then
				Kentas.F.Tables.ApplyForceToEntity(Kentas.F.Tables.PlayerPedId(), 3, 0.0, 0.0, 30.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
			end
            SetBeastModeActive(Kentas.F.Tables.PlayerId())
		end

		if Kentas.F.Checks['self:infinitestamina'] then
			Kentas.F.Tables.ResetPlayerStamina(Kentas.F.Tables.PlayerId(), 1.0)
		end
		if Kentas.F.Checks['self:tinyplayer'] then
			Kentas.F.Tables.SetPedConfigFlag(Kentas.F.Tables.PlayerPedId(), 223, true)
		else
			Kentas.F.Tables.SetPedConfigFlag(Kentas.F.Tables.PlayerPedId(), 223, false)
		end
		if Kentas.F.Checks['self:tpwhereyoulooking'] then
			--local coords = Kentas.F.Tables.GetGameplayCamCoord() + (Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetGameplayCamRot(0)) * 33.33)
			local coords, a = Kentas.F.Tables.Functions.RayCastGCam(400.0)
			Kentas.F.Tables.DrawLine(Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.PlayerPedId(), 57005, 0.0, 0.0, 0.0), coords, 255, 255, 255, 255)
            Kentas.F.Tables.DrawMarker(28, coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, 255, 255, 255, 255, false, true, 2, nil, nil, false)
			if Kentas.F.Tables.IsDisabledControlJustPressed(0, 38) then
				Kentas.F.Tables.SetEntityCoordsNoOffset(Kentas.F.Tables.PlayerPedId(), coords, true, true, true)
			end
		end
		
		--if Kentas.F.Checks['self:Ghostrider'] then
		--	if Kentas.F.Ghost < 1 then
		--		
		--		Kentas.F.Ghost = Kentas.F.Ghost + 1
		--	end
		--end
		if Kentas.F.Checks['self:superman'] then
			Kentas.F.Tables.GivePlayerRagdollControl(Kentas.F.Tables.PlayerId(), true)
			Kentas.F.Tables.SetPedCanRagdoll(Kentas.F.Tables.PlayerPedId(), false)
			Kentas.F.Tables.GiveDelayedWeaponToPed(Kentas.F.Tables.PlayerPedId(), 0xFBAB5776, 1, 0)
			local up, forward = Kentas.F.Tables.IsDisabledControlPressed(0, 22), Kentas.F.Tables.IsDisabledControlPressed(0, 32)
			if up or forward then
				if up then
					Kentas.F.Tables.ApplyForceToEntity(Kentas.F.Tables.PlayerPedId(), 1, 0.0, 0.0, 9999999.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
				elseif Kentas.F.Tables.IsEntityInAir(Kentas.F.Tables.PlayerPedId()) then
					Kentas.F.Tables.ApplyForceToEntity(Kentas.F.Tables.PlayerPedId(), 1, 0.0, 9999999.0, 0.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
				end
			else
				Kentas.F.Tables.GivePlayerRagdollControl(Kentas.F.Tables.PlayerId(), false)
				Kentas.F.Tables.SetPedCanRagdoll(Kentas.F.Tables.PlayerPedId(), true)
			end
		end
		if Kentas.F.Checks['self:Flash'] then
			Kentas.F.Tables.SetPedMoveRateOverride(Kentas.F.Tables.PlayerPedId(), 9.0)
		end
		if Kentas.F.Checks['self:Onepunch'] then
			Kentas.F.Tables.SetEntityInvincible(Kentas.F.Tables.PlayerPedId(), true, 0)
			Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 7, 0.15, 0, 1, 0.0)	
		end
		if Kentas.F.Checks['self:Collision'] then
			Kentas.F.Tables.SetPedCapsule(Kentas.F.Tables.PlayerPedId(), 0.000000001) 
		end
		if Kentas.F.Checks['self:FireB'] then
			local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.PlayerPedId(), 31086, 0.0, 0.75, 0.0))
			Kentas.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z, 90.0, 90.0, 0, 0.7 ,0,0,0)
			--Kentas.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z-2.5,0,0,0, 0.7,0,0,0)	
			--Kentas.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z-3.5,0,0,0, 0.7,0,0,0)		
			--Kentas.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z-4.5,0,0,0, 0.7,0,0,0)
		end


		if Kentas.F.Checks['self:Ragdoll'] then
			Kentas.F.Tables.SetPedToRagdoll(Kentas.F.Tables.PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
		end
		if Kentas.F.Checks['self:AntiRagdoll'] then
			Kentas.F.Tables.SetPedCanRagdoll(Kentas.F.Tables.PlayerPedId(), false)
		else
			Kentas.F.Tables.SetPedCanRagdoll(Kentas.F.Tables.PlayerPedId(), true)
		end
		if Kentas.F.Checks['self:AntiTaze'] then
			Kentas.F.Tables.SetPedCanRagdollFromPlayerImpact(Kentas.F.Tables.PlayerPedId(), false)
		else
			Kentas.F.Tables.SetPedCanRagdollFromPlayerImpact(Kentas.F.Tables.PlayerPedId(), true)
		end
		

		if Kentas.F.Checks['self:AntiAFK'] and not walking then
			walking = true
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
		
			if Kentas.F.Tables.DoesEntityExist(veh) then
				Kentas.F.Tables.TaskVehicleDriveWander(Kentas.F.Tables.PlayerPedId(), veh, 40.0, 0)
			else
				Kentas.F.Tables.TaskWanderStandard(Kentas.F.Tables.PlayerPedId(), 10.0, 10)
			end
		end
		
		if not Kentas.F.Checks['self:AntiAFK'] and walking then
			Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId())
			walking = false
		end

		if Kentas.F.Checks['self:AntiHeadshot'] then
			Kentas.F.Tables.SetPedSuffersCriticalHits(Kentas.F.Tables.PlayerPedId(), false)
        else
            Kentas.F.Tables.SetPedSuffersCriticalHits(Kentas.F.Tables.PlayerPedId(), true)
		end

		if Kentas.F.Checks['self:AntiDrown'] then
			Kentas.F.Tables.SetPedDiesInWater(Kentas.F.Tables.PlayerPedId(), false)
		end
		if Kentas.F.Checks['self:SlowMotion'] then
			Kentas.F.Tables.SetTimeScale(0.3)
		else
			Kentas.F.Tables.SetTimeScale(1.0)
		end
		if Kentas.F.Checks['online:LoopSounds'] then
			Kentas.F.Tables.PlaySoundFromCoord(-1, Kentas.F.Combos['SoundsOnl'].c[Kentas.F.Combos['SoundsOnl'].a], Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)), Kentas.F.Combos['SoundsOnl'].d[Kentas.F.Combos['SoundsOnl'].a], true, 1.0, true)
		end
		if Kentas.F.Checks['destroyer:LoopSounds'] then
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
				Kentas.F.Tables.PlaySoundFromCoord(-1, Kentas.F.Combos['SoundsOnl'].c[Kentas.F.Combos['SoundsOnl'].a], Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(v)), Kentas.F.Combos['SoundsOnl'].d[Kentas.F.Combos['SoundsOnl'].a], true, 1.0, true)
			end
		end
		if Kentas.F.Checks['destroyer:Earrape'] then
			Kentas.F.Tables.PlaySound(-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', true)
        	Kentas.F.Tables.PlaySound(-1, 'Boss_Blipped', 'GTAO_Magnate_Hunt_Boss_SoundSet', true)
        	Kentas.F.Tables.PlaySound(-1, 'Bomb_Disarmed', 'GTAO_Speed_Convoy_Soundset', true)
        	Kentas.F.Tables.PlaySound(-1, 'All', 'SHORT_PLAYER_SWITCH_SOUND_SET', true)
        	Kentas.F.Tables.PlaySound(-1, 'SELECT', 'HUD_MINI_GAME_SOUNDSET', true)
			
        	Kentas.F.Tables.PlaySound(-1, 'Beep_Green', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', true)
		end
		
		if Kentas.F.Checks['destroyer:Bypasssafezone'] then
			Kentas.F.Tables.NetworkSetFriendlyFireOption(true)
            Kentas.F.Tables.SetCanAttackFriendly(Kentas.F.Tables.PlayerPedId(), true, true)
			Kentas.F.Tables.EnableAllControlActions(0)
			Kentas.F.Tables.EnableAllControlActions(1)
			Kentas.F.Tables.DisablePlayerFiring(Kentas.F.Tables.PlayerPedId(), false)
		end

		if Kentas.F.Checks['w:randomoutfit'] and (Kentas.F.Randomoutfitdelay or 0) <= Kentas.F.Tables.GetGameTimer() then
			Kentas.F.Randomoutfitdelay = Kentas.F.Tables.GetGameTimer() + Kentas.F.Sliders['randomoutfit-delay'].value
			Kentas.F.Funcs.randomOutfit()
		end

		if Kentas.F.Checks['online:Spectate'] then
			__CitIn__.CreateThread(function()
				local camerat = camerat
				if not camerat ~= nil then
					camerat = Kentas.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
				end
				
				Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Kentas.F.Tables.SetCamActive(camerat, true)
				local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
				Kentas.F.Tables.SetCamCoord(camerat, coords.x, coords.y, coords.z + 3)

				while Kentas.F.Tables.DoesCamExist(camerat) do
					__CitIn__.Wait(0)
					if not Kentas.F.Checks['online:Spectate'] then
						Kentas.F.Tables.DestroyCam(camerat, false)
						Kentas.F.Tables.ClearTimecycleModifier()
						Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
						break
					end
					local playerPed = Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer)
					local playerRot = Kentas.F.Tables.GetEntityRotation(playerPed, 2)
			

					local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetCamCoord(camerat))

					local x2, y2, z2 = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetPedBoneCoords(playerPed, 31086, 0.0, 0.0, 0.0))
					Kentas.F.Tables.DrawMarker(0, x2, y2, z2+0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, 255, 255, 255, 255, true, true, 2, nil, nil, false)


					Kentas.F.Tables.SetCamCoord(camerat, x2+1.5, y2+1.5, z2+0.5)---Kentas.F.Tables.GetGameplayCamCoord())
					
					if not Displayed then
						Kentas.F.Tables.SetFocusArea(Kentas.F.Tables.GetCamCoord(camerat).x, Kentas.F.Tables.GetCamCoord(camerat).y, Kentas.F.Tables.GetCamCoord(camerat).z,0.0,0.0,0.0)
						Kentas.F.Tables.SetCamRot(camerat, Kentas.F.Tables.GetGameplayCamRot(2), 2)
					end
				end
			end)
		end

		if Kentas.F.Checks['explodeo:Explodeloop'] then
			Kentas.F.Funcs.CreateExplosion()
		end

		if Kentas.F.Checks['particleso:Particles'] then
			__CitIn__.CreateThread(function()
				local coords = Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer), Kentas.F.Combos['ParticlesBone'].c[Kentas.F.Combos['ParticlesBone'].a], 0.0, 0.0, 0.0)
				local dict = Kentas.F.Combos['ParticlesOnl'].c[Kentas.F.Combos['ParticlesOnl'].a]
				local dict2 = Kentas.F.Combos['ParticlesOnl'].d[Kentas.F.Combos['ParticlesOnl'].a]

				Kentas.F.Tables.SpawnParticle(dict, dict2,coords.x,coords.y,coords.z,0,0,0,Kentas.F.Sliders['Online-ParticleScale'].value/10,0,0,0)
				__CitIn__.Wait(Kentas.F.Sliders['Online-ParticleDelay'].value)
			end)
		end
		if Kentas.F.Checks['particlesd:Particles'] then
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
				__CitIn__.CreateThread(function()
					local coords = Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.GetPlayerPed(v), Kentas.F.Combos['ParticlesBone'].c[Kentas.F.Combos['ParticlesBone'].a], 0.0, 0.0, 0.0)
					local dict = Kentas.F.Combos['ParticlesOnl'].c[Kentas.F.Combos['ParticlesOnl'].a]
					local dict2 = Kentas.F.Combos['ParticlesOnl'].d[Kentas.F.Combos['ParticlesOnl'].a]

					Kentas.F.Tables.SpawnParticle(dict, dict2,coords.x,coords.y,coords.z,0,0,0,Kentas.F.Sliders['Online-ParticleScale'].value/10,0,0,0)
					__CitIn__.Wait(Kentas.F.Sliders['Online-ParticleDelay'].value)
				end)
			end
		end

		
		if Kentas.F.Checks['tracker:footprints'] then
			Kentas.F.Tables.SetForcePedFootstepsTracks(true)
		else
			Kentas.F.Tables.SetForcePedFootstepsTracks(false)
		end
		if Kentas.F.Checks['tracker:tyreprints'] then
			Kentas.F.Tables.SetForceVehicleTrails(true)
		else
			Kentas.F.Tables.SetForceVehicleTrails(false)
		end

		if Kentas.F.Checks['Crosshair:CrosshairESPVis'] then
			local r, g, b = Kentas.F.Sliders['Crosshair-R'].value, Kentas.F.Sliders['Crosshair-G'].value, Kentas.F.Sliders['Crosshair-B'].value
			-- outline
			Kentas.F.Tables.DrawRect_U(0.5 - (Kentas.F.Sliders['Crosshair-Distance'].value / 2.1) - ((Kentas.F.Sliders['Crosshair-Height'].value * 1.8) / 2), 0.5 , Kentas.F.Sliders['Crosshair-Height'].value * 1.8+ 0.001, (Kentas.F.Sliders['Crosshair-Thickness'].value)+ 0.0018, 0, 0, 0, 255)
			Kentas.F.Tables.DrawRect_U(0.5 + (Kentas.F.Sliders['Crosshair-Distance'].value / 2.1) + ((Kentas.F.Sliders['Crosshair-Height'].value * 1.8) / 2), 0.5 , Kentas.F.Sliders['Crosshair-Height'].value * 1.8+ 0.001, (Kentas.F.Sliders['Crosshair-Thickness'].value) + 0.0018, 0, 0, 0, 255)
			Kentas.F.Tables.DrawRect_U(0.5, 0.5 - (Kentas.F.Sliders['Crosshair-Distance'].value/1.1) + 0.0018 - ((Kentas.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Kentas.F.Sliders['Crosshair-Thickness'].value) / 1.8+ 0.001, Kentas.F.Sliders['Crosshair-Height'].value * 2.8+ 0.002, 0, 0, 0, 255)
			Kentas.F.Tables.DrawRect_U(0.5, 0.5 + (Kentas.F.Sliders['Crosshair-Distance'].value/1.1) - 0.0018 + ((Kentas.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Kentas.F.Sliders['Crosshair-Thickness'].value) / 1.8+ 0.001, Kentas.F.Sliders['Crosshair-Height'].value * 2.8+ 0.002, 0, 0, 0, 255)
						
			-- crosshair
			Kentas.F.Tables.DrawRect_U(0.5 - (Kentas.F.Sliders['Crosshair-Distance'].value / 2.1) - ((Kentas.F.Sliders['Crosshair-Height'].value * 1.8) / 2) , 0.5 , Kentas.F.Sliders['Crosshair-Height'].value * 1.8, (Kentas.F.Sliders['Crosshair-Thickness'].value), r, g, b, 255)
			Kentas.F.Tables.DrawRect_U(0.5 + (Kentas.F.Sliders['Crosshair-Distance'].value / 2.1) + ((Kentas.F.Sliders['Crosshair-Height'].value * 1.8) / 2), 0.5 , Kentas.F.Sliders['Crosshair-Height'].value * 1.8, (Kentas.F.Sliders['Crosshair-Thickness'].value) , r, g, b, 255)
			Kentas.F.Tables.DrawRect_U(0.5, 0.5 - (Kentas.F.Sliders['Crosshair-Distance'].value/1.1) + 0.0018 - ((Kentas.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Kentas.F.Sliders['Crosshair-Thickness'].value) / 1.8 , Kentas.F.Sliders['Crosshair-Height'].value * 2.8, r, g, b, 255)
			Kentas.F.Tables.DrawRect_U(0.5, 0.5 + (Kentas.F.Sliders['Crosshair-Distance'].value/1.1) - 0.0018 + ((Kentas.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Kentas.F.Sliders['Crosshair-Thickness'].value) / 1.8 , Kentas.F.Sliders['Crosshair-Height'].value * 2.8, r, g, b, 255)
			
		end
	
		if Kentas.F.Checks['visuals:enableesp'] then
			--for id in Kentas.F.Tables.Functions.EnumeratePeds() do
				
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
				local id = Kentas.F.Tables.GetPlayerPed(v)
				if Kentas.F.Checks['visuals:includeself'] then
					includeself = nil 
				else 
					includeself = Kentas.F.Tables.PlayerPedId()
				end
				local resX, resY = Kentas.F.Tables.GetActiveScreenResolution()
				local dist = Kentas.F.Tables.GetDistanceBetweenCoords(Kentas.F.Tables.GetFinalRenderedCamCoord(), Kentas.F.Tables.GetEntityCoords(id), true)
				local rightHand = Kentas.F.Tables.GetPedBoneCoords(id, 64112, 0.0, 0.0, 0.0)
				local leftHand = Kentas.F.Tables.GetPedBoneCoords(id, 4185, 0.0, 0.0, 0.0)
				local backBody = Kentas.F.Tables.GetPedBoneCoords(id, 57597, 0.0, 0.0, 0.0) -- spine3
				local frontBack = Kentas.F.Tables.GetPedBoneCoords(id, 57597, 0.0, 0.0, 0.0) -- spine3
				local head = Kentas.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, 1.0)
				local down = Kentas.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, -1.0)
		
				local rightToe = Kentas.F.Tables.GetPedBoneCoords(id, 20781, 0.0, 0.0, 0.0)
				local leftToe = Kentas.F.Tables.GetPedBoneCoords(id, 2108, 0.0, 0.0, 0.0)
				local tail = Kentas.F.Tables.GetPedBoneCoords(id, 20781, 0.0, 0.0, 0.0)
				local lOnScreen, lx, ly = Kentas.F.Tables.GetScreenCoordFromWorldCoord(leftHand.x, leftHand.y, leftHand.z)
				local rOnScreen, rx, ry = Kentas.F.Tables.GetScreenCoordFromWorldCoord(rightHand.x, rightHand.y, rightHand.z)
				local aOnScreen, bbx, bby = Kentas.F.Tables.GetScreenCoordFromWorldCoord(backBody.x, backBody.y, backBody.z)
				local bOnScreen, fbx, fby = Kentas.F.Tables.GetScreenCoordFromWorldCoord(frontBack.x, frontBack.y, frontBack.z)
				local abOnScreen, hx, hy = Kentas.F.Tables.GetScreenCoordFromWorldCoord(head.x, head.y, head.z)
				local bbOnScreen, dx, dy = Kentas.F.Tables.GetScreenCoordFromWorldCoord(down.x, down.y, down.z)
				local width = 0.3
				if lOnScreen and rOnScreen and aOnScreen and bOnScreen then
					lrWidth = math.abs(rx-lx)
					fbWidth = math.abs(bbx-fbx)
					width = lrWidth > fbWidth and lrWidth or fbWidth
				else
					width = 0
				end
				
				
				

				local height = math.abs(hy-dy)
				if Kentas.F.Checks['visuals:ArrowESP'] then
					local size = Kentas.F.Sliders['Arrows-Size'].value 
					local r, g, b = Kentas.F.Sliders['Arrows-R'].value, Kentas.F.Sliders['Arrows-G'].value, Kentas.F.Sliders['Arrows-B'].value
					local fov = Kentas.F.Sliders['Arrows-FOV'].value 
					local dist = Kentas.F.Tables.GetDistanceBetweenCoords(Kentas.F.Tables.GetFinalRenderedCamCoord(), Kentas.F.Tables.GetEntityCoords(id), true)
					local rot, ab = Kentas.F.Tables.RotToQuat(Kentas.F.Tables.GetFinalRenderedCamRot(2)) * vector3(1, 0, 0), Kentas.F.Tables.RotToQuat(Kentas.F.Tables.GetFinalRenderedCamRot(2)) * vector3(0, 1, 0) 
					
					local a = (Kentas.F.Tables.GetEntityCoords(id)-Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))
					local isInfront = (math.deg(math.acos(((a.x * ab.x + a.y * ab.y) / (math.sqrt(a.x * a.x + a.y * a.y) * math.sqrt(ab.x * ab.x + ab.y * ab.y))))) ) > 90 and 0 or 1 
					local angle = math.deg(math.acos(((a.x * rot.x + a.y * rot.y) / (math.sqrt(a.x * a.x + a.y * a.y) * math.sqrt(rot.x * rot.x + rot.y * rot.y))))) 
					angle = (isInfront == 1 and 360 - angle or angle)
					
					if not Kentas.F.Checks['visuals:somecooldot'] then
						if not Kentas.F.Checks['visuals:FloatingArrowESP'] then
							x, y = ((math.cos(math.rad(angle)) / resX)*(fov)+0.5), ((math.sin(math.rad(angle))/resY)*(fov)+0.5)
						else
							x, y = ((math.cos(math.rad((isInfront==1 and 360-angle or angle)))/resX)*(fov)+0.5), ((math.sin(math.rad((isInfront==1 and 360-angle or angle)))/resY)*(fov)+0.5)
						end
						if dist > 255 then 
							dist = 255 
						elseif dist < 0 then 
							dist = 0
						end
						local alpha = math.ceil(255-dist)
						
						
						Kentas.F.Tables.DrawSprite('arrowfov', 'arrowfov_a', x, y, 0.0025 * size/1.4, 0.004 * size/1.4, (angle-180*1.5), r, g, b, alpha, true)
					else
						Kentas.F.Tables.DrawRect_U(0.5, 0.01, 0.151, 0.012, 1, 1, 1, 255)
						Kentas.F.Tables.DrawRect_U(0.5, 0.01, 0.15, 0.01, 40, 40, 40, 255)
						Kentas.F.Tables.DrawRect_U(0.5, 0.01, 0.149, 0.0085, 60, 60, 60, 255)

						x, y = ((math.cos(math.rad(angle)) / resX)*(50)+0.5), ((math.sin(math.rad(angle))/resY)*(50)+0.5)

					end
					
				end

				if Kentas.F.Tables.GetDistanceBetweenCoords(Kentas.F.Tables.GetFinalRenderedCamCoord(), Kentas.F.Tables.GetEntityCoords(id), true) < Kentas.F.Sliders['esp-distance'].value and id ~= includeself then
					if Kentas.F.Checks['infoesp:Enable'] then
						--if Kentas.F.Checks['infoesp:NameESP'] then
						--	name = Kentas.F.Tables.GetPlayerName(v)
						--end
						--if Kentas.F.Checks['infoesp:IDESP'] then
						--	id = Kentas.F.Tables.GetPlayerServerId(v)
						--end

						if abOnScreen and bbOnScreen then 
							Kentas.F.Tables.SetDrawOrigin(Kentas.F.Tables.GetPedBoneCoords(id, 0))
							if width ~= 0 then
								Kentas.F.Tables.SetTextCentre(true)
								--if name ~= nil then
									local name = Kentas.F.Tables.GetPlayerName(v)
									local id = Kentas.F.Tables.GetPlayerServerId(v)
									

									Kentas.F.drawText(name..' | '..id, 0.0-Kentas.F.Checks.KeyboardDragXWM, (-height/2-Kentas.F.Sliders['info-yoffset'].value/resY)-Kentas.F.Checks.KeyboardDragYWM, Kentas.F.Sliders['info-size'].value/100, Kentas.F.Sliders['info-Font'].value, true, Kentas.F.Checks['infoesp:Outline'])

									--Kentas.F.Tables.Functions.DrawTxt(name..' | '..id, 0.0, -height/2-22/resY, 0.0, 0.24, {r=255, g=255, b=255, a=255}, false)
								--end

								
							end
							Kentas.F.Tables.ClearDrawOrigin()
						end
					end
					if Kentas.F.Checks['blipesp:Blips'] then
						local playerblip = Kentas.F.Tables.GetBlipFromEntity(id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
						if not Kentas.F.Tables.DoesBlipExist(playerblip, __CitIn__.ReturnResultAnyway()) then
							playerblip = Kentas.F.Tables.AddBlipForEntity(id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
							Kentas.F.Tables.SetBlipSprite(playerblip, Kentas.F.Sliders['Blips-Sprite'].value)
							Kentas.F.Tables.ShowHeadingIndicatorOnBlip(playerblip, true)
							Kentas.F.Tables.SetBlipNameToPlayerName(playerblip, v)
							Kentas.F.Tables.SetBlipScale(playerblip, 0.80)
							Kentas.F.Tables.SetBlipColour(playerblip, Kentas.F.Sliders['Blips-Colour'].value)
						end
					else
						local playerblip = Kentas.F.Tables.GetBlipFromEntity(id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
						if Kentas.F.Tables.DoesBlipExist(playerblip) then
							Kentas.F.Tables.RemoveBlip(playerblip)
						end
					end
					
					
					if Kentas.F.Tables.IsEntityOnScreen(id) then
						if Kentas.F.Checks['visuals:Skeletonesp'] then
							local r, g, b, a =  Kentas.F.Sliders['Skeleton-R'].value, Kentas.F.Sliders['Skeleton-G'].value, Kentas.F.Sliders['Skeleton-B'].value, 255
							local mindistance = Kentas.F.Tables.Functions.GetMinVisualDistance(Kentas.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, 0.0), mindistance)
		
							local rightknee = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x3FCF, 0.0, 0.0, 0.0), mindistance)
							local leftknee = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0xB3FE, 0.0, 0.0, 0.0), mindistance)
							local neck = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x9995, 0.0, 0.0, 0.0), mindistance)
							local head = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x796E, 0.0, 0.0, 0.0), mindistance)
							local pelvis = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x2E28, 0.0, 0.0, 0.0), mindistance)
							local rightFoot = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0xCC4D, 0.0, 0.0, 0.0), mindistance)
							local leftFoot = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x3779, 0.0, 0.0, 0.0), mindistance)
							local rightUpperArm = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x9D4D, 0.0, 0.0, 0.0), mindistance)
							local leftUpperArm = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0xB1C5, 0.0, 0.0, 0.0), mindistance)
							local rightForeArm = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x6E5C, 0.0, 0.0, 0.0), mindistance)
							local leftForeArm = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0xEEEB, 0.0, 0.0, 0.0), mindistance)
							local rightHand = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0xDEAD, 0.0, 0.0, 0.0), mindistance)
							local leftHand = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0x49D9, 0.0, 0.0, 0.0), mindistance)
							
							Kentas.F.Tables.DrawLine(head, neck, r, g, b, a)
							Kentas.F.Tables.DrawLine(neck, pelvis, r, g, b, a)
							Kentas.F.Tables.DrawLine(pelvis, rightknee, r, g, b, a)
							Kentas.F.Tables.DrawLine(pelvis, leftknee, r, g, b, a)
							Kentas.F.Tables.DrawLine(rightknee, rightFoot, r, g, b, a)
							Kentas.F.Tables.DrawLine(leftknee, leftFoot, r, g, b, a)
							Kentas.F.Tables.DrawLine(neck, rightUpperArm, r, g, b, a)
							Kentas.F.Tables.DrawLine(neck, leftUpperArm, r, g, b, a)
							Kentas.F.Tables.DrawLine(rightUpperArm, rightForeArm, r, g, b, a)
							Kentas.F.Tables.DrawLine(leftUpperArm, leftForeArm, r, g, b, a)
							Kentas.F.Tables.DrawLine(rightForeArm, rightHand, r, g, b, a)
							Kentas.F.Tables.DrawLine(leftForeArm, leftHand, r, g, b, a)
						end
						if Kentas.F.Checks['LineESP:Line ESP'] then
							local pelvis = Kentas.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, 0.0)
							Kentas.F.Tables.DrawLine(pelvis, Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.PlayerPedId(), 0x0, 0.0, 0.0, 0.0), Kentas.F.Sliders['LineESP-R'].value, Kentas.F.Sliders['LineESP-G'].value, Kentas.F.Sliders['LineESP-B'].value, 255)
						end
						if Kentas.F.Checks['GlowingESP:Glow'] then
							local r, g, b = Kentas.F.Sliders['Glow-R'].value, Kentas.F.Sliders['Glow-G'].value, Kentas.F.Sliders['Glow-B'].value 
							local coords = Kentas.F.Tables.GetEntityCoords(id)
							Kentas.F.Tables.DrawSpotLight(coords.x, coords.y, coords.z + 9.10, 0.0, 0.0, -1000.0, r, g, b, 10.0, 111.0, 0.0, 2.5, 0.0)
						end
						
						Kentas.F.Tables.SetDrawOrigin(Kentas.F.Tables.GetEntityCoords(id), 0)
						if Kentas.F.Checks['CornerBoxes:CornerBox'] then
							local dist = Kentas.F.Tables.GetDistanceBetweenCoords(Kentas.F.Tables.GetFinalRenderedCamCoord(), Kentas.F.Tables.GetEntityCoords(id), true)
							local X, Y = Kentas.F.Tables.GetActiveScreenResolution()
														
							Kentas.F.Tables.DrawRect_U(-0.23/dist, -0.945/dist, 1 / X, 0.1/dist, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
							Kentas.F.Tables.DrawRect_U(-0.23/dist, 0.945/dist, 1 / X, 0.1/dist, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
							Kentas.F.Tables.DrawRect_U(0.23/dist, -0.945/dist, 1 / X, 0.1/dist, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
							Kentas.F.Tables.DrawRect_U(0.23/dist, 0.945/dist, 1 / X, 0.1/dist, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
														
							Kentas.F.Tables.DrawRect_U(-0.205/dist, -0.994/dist, 0.05/dist, 1 / Y, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
							Kentas.F.Tables.DrawRect_U(0.205/dist, -0.994/dist, 0.05/dist, 1 / Y, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
							Kentas.F.Tables.DrawRect_U(0.205/dist, 0.994/dist, 0.05/dist, 1 / Y, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
							Kentas.F.Tables.DrawRect_U(-0.205/dist, 0.994/dist, 0.05/dist, 1 / Y, Kentas.F.Sliders['CornerBoxes-R'].value, Kentas.F.Sliders['CornerBoxes-G'].value, Kentas.F.Sliders['CornerBoxes-B'].value, 255)
						end
						Kentas.F.Tables.ClearDrawOrigin()



						if Kentas.F.Checks['BoxesESP:Boxes ESP'] then
							local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetFinalRenderedCamCoord())
							local x1, y1, z1 = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(id))
							local dist = Kentas.F.Tables.GetDistanceBetweenCoords(x, y, z, x1, y1, z1, true)
							
							if abOnScreen and bbOnScreen then 
								Kentas.F.Tables.SetDrawOrigin(Kentas.F.Tables.GetPedBoneCoords(id, 0))
								if width ~= 0 then
									if width < 0.044 then
										width = 0.044
									end
									--if HasEntityClearLosToEntityInFront(Kentas.F.Tables.PlayerPedId(), id) and id ~= Kentas.F.Tables.PlayerPedId() then
									--	Kentas.F.Tables.Functions.DrawTxt('HIT', 0.0, 0.0, 0.0, 0.24, {r=255, g=255, b=0, a=255}, true)
									--end
								
									
									Kentas.F.Tables.Functions.DrawBox(0.0, 0.0, width/(dist/4.5), height, Kentas.F.Sliders['Boxes-R'].value, Kentas.F.Sliders['Boxes-G'].value, Kentas.F.Sliders['Boxes-B'].value, 255)
									if Kentas.F.Checks['BoxesESP:Filled'] then
										Kentas.F.Tables.DrawRect_U(0.0, 0.0, width/(dist/4.5), height, 0, 0, 0, 100)
										
									end
								end
								
								local w, h = 0.45, 2.0
								Kentas.F.Tables.ClearDrawOrigin()
								
							end
						end
					end
					if abOnScreen and bbOnScreen then 
						Kentas.F.Tables.SetDrawOrigin(Kentas.F.Tables.GetPedBoneCoords(id, 0))
						if Kentas.F.Checks['BoxesESP:Healthbar'] then
							local health = Kentas.F.Tables.GetEntityHealth(id)-100
							local max = Kentas.F.Tables.GetEntityMaxHealth(id)-100
							
							local h = health/(max/height)
							if health > max then
								health = max
							end
							if h > height then
								h = height
							end
							if h < 0 then
								h = 0
							end
							local r, g, b = 200-(health*(255/max)), health*(255/max), 0
							if g > 255 then 
								g = 255 
							end
							if health <= 20 then
								r, g, b = 255, 25, 25
							end
							--255, 153, 0
							local position = Kentas.F.Combos['HealthPos'].b[Kentas.F.Combos['HealthPos'].a]
							if position == 'left' then
								Kentas.F.Tables.DrawRect_U(-width/(dist/4.5)/2-4/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Kentas.F.Tables.DrawRect_U(-width/(dist/4.5)/2-4/resX, height/2-h/2, 1/resX, h, r, g, b, 255)
							elseif position == 'right' then
								Kentas.F.Tables.DrawRect_U(width/(dist/4.5)/2-4/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Kentas.F.Tables.DrawRect_U(width/(dist/4.5)/2-4/resX, height/2-h/2, 1/resX, h, r, g, b, 255)
							end
						end
						if Kentas.F.Checks['BoxesESP:Armourbar'] then
							local armor = Kentas.F.Tables.GetPedArmour(id)
							local max = 100
							local h = armor/(max/height)
							if armor > max then
								armor = max
							end

							local position = Kentas.F.Combos['ArmourPos'].b[Kentas.F.Combos['ArmourPos'].a]
							if position == 'left' then
								Kentas.F.Tables.DrawRect_U(-width/(dist/4.5)/2-9/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Kentas.F.Tables.DrawRect_U(-width/(dist/4.5)/2-9/resX, height/2-h/2, 1/resX, h, 30, 127, 255, 255)
							elseif position == 'right' then
								Kentas.F.Tables.DrawRect_U(width/(dist/4.5)/2-9/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Kentas.F.Tables.DrawRect_U(width/(dist/4.5)/2-9/resX, height/2-h/2, 1/resX, h, 30, 127, 255, 255)
							end
						end
						Kentas.F.Tables.ClearDrawOrigin()
					end
				end
			end
		end

		if Kentas.F.Checks['Visuals:Upsidedown'] then
			Kentas.F.Tables.SetEntityRotation(Kentas.F.Tables.PlayerPedId(), 180.0, 0.0, 0.0, true)
		end
		if Kentas.F.Checks['Visuals:weirdrotation'] then
			Kentas.F.Tables.SetEntityRotation(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetGameplayCamRot(0), true)
		end
		
		if Kentas.F.Checks['customammo:InfiniteAmmo'] then
			Kentas.F.Tables.SetPedInfiniteAmmoClip(Kentas.F.Tables.PlayerPedId(), true)
		else
			Kentas.F.Tables.SetPedInfiniteAmmoClip(Kentas.F.Tables.PlayerPedId(), false)
		end
		if Kentas.F.Checks['customammo:InfiniteAmmov2'] then
			local _, gun = Kentas.F.Tables.GetCurrentPedWeapon(Kentas.F.Tables.PlayerPedId())
            if gun then
                Kentas.F.Tables.SetPedAmmo(Kentas.F.Tables.PlayerPedId(), gun, Kentas.F.Tables.GetWeaponClipSize(gun))
            end
		end
		
		if Kentas.F.Checks['customammo:freezeammo'] then
			local _, target = Kentas.F.Tables.GetEntityPlayerIsFreeAimingAt(Kentas.F.Tables.PlayerId())
			if _ and Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) and Kentas.F.Tables.HasEntityClearLosToEntity(target, Kentas.F.Tables.PlayerPedId(), 17) and Kentas.F.Tables.IsPedAPlayer(target) then
				Kentas.F.Tables.FreezeEntityPosition(target, true)
			end
		end
		if Kentas.F.Checks['customammo:nocollisionammo'] then
			local _, target = Kentas.F.Tables.GetEntityPlayerIsFreeAimingAt(Kentas.F.Tables.PlayerId())
			if _ and Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) and Kentas.F.Tables.HasEntityClearLosToEntity(target, Kentas.F.Tables.PlayerPedId(), 17) and Kentas.F.Tables.IsPedAPlayer(target) then
				Kentas.F.Tables.SetEntityCollision(target, false, false)
			end
		end
		--if Kentas.F.Checks['customammo:blackholeammo'] then
		--	
		--	local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
		--	if shot then
		--		Kentas.F.BlackHole = true
		--		Kentas.F.BlackHoleCoords = coords
		--	end
		--else
		--	Kentas.F.BlackHole = false
		--end

		--if Kentas.F.BlackHole then
		--	for e1, e2, e3 in Kentas.F.Tables.Functions.EnumerateVehicles() do
		--		if #(Kentas.F.BlackHoleCoords - Kentas.F.Tables.GetEntityCoords(e1)) <= 5.0 then
		--			Kentas.F.Tables.DeleteEntity(e1)
		--		end
		--		if #(Kentas.F.BlackHoleCoords - Kentas.F.Tables.GetEntityCoords(e2)) <= 5.0 then
		--			Kentas.F.Tables.DeleteEntity(e2)
		--		end
		--		if #(Kentas.F.BlackHoleCoords - Kentas.F.Tables.GetEntityCoords(e3)) <= 5.0 then
		--			Kentas.F.Tables.DeleteEntity(e3)
		--		end
		--	end

		--	Kentas.F.Tables.DrawMarker(1, Kentas.F.BlackHoleCoords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10.0, 1.0, 0, 0, 0, 255, true, true, 2, nil, nil, false)
		--end
		
		
		if Kentas.F.Checks['customammo:airstrikeeammo'] then
			__CitIn__.CreateThread(function()
				local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
				if shot then
					local pedd = Kentas.F.Tables.GetHashKey("mp_m_freemode_01")
					Kentas.F.Tables.RequestModel(pedd)
					while not Kentas.F.Tables.HasModelLoaded(pedd) do
						__CitIn__.Wait(0)
						Kentas.F.Tables.RequestModel(pedd)
					end	
					local __SPAWNINGPED__ = Kentas.F.Tables.CreatePed(21, pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
					for i = 1, 10 do
						__CitIn__.Wait(10)
						Kentas.F.Tables.ShootSingleBulletBetweenCoords(coords.x+0.001, coords.y+0.001, coords.z + 55.55, coords.x, coords.y, coords.z, 100.0, true, Kentas.F.Tables.GetHashKey('weapon_hominglauncher'), __SPAWNINGPED__, true, false, 1000.0)
					end
				end
			end)
		end
		if Kentas.F.Checks['customammo:savepoint'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				ncoords = vector3(coords)
				Kentas.F.Tables.SpawnPointLmao = coords
				Kentas.F.Tables.Functions.Notify("Spawnpoint set, hold ['E'] to respawn")
			end

			if ncoords ~= nil then
				Kentas.F.Tables.DrawMarker(0, ncoords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1000.0, 255, 255, 255, 255, false, true, 2, nil, nil, false)
				Kentas.F.Tables.SetNewWaypoint(ncoords.x, ncoords.y)
			end

			if Kentas.F.Tables.IsDisabledControlPressed(0, 38) then
				Kentas.F.holdtimer = Kentas.F.holdtimer + 2
				if Kentas.F.holdtimer >= 300 and Kentas.F.Tables.SpawnPointLmao ~= nil then
					Kentas.F.Funcs.revive()
					Kentas.F.Tables.SetEntityCoordsNoOffset(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.SpawnPointLmao, true, true, true)
					Kentas.F.holdtimer = 0
				end
			else
				Kentas.F.holdtimer = 0
			end
		end
		
		if Kentas.F.Checks['customammo:colourammo'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
                __KentasStrings__.strings:tableinsert(Kentas.F.ColourAmmo, {c = coords, t = Kentas.F.Tables.GetGameTimer(), r = r, g = g, b = b})
			end
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.ColourAmmo) do 
				Kentas.F.Tables.DrawSpotLight(v.c.x, v.c.y, v.c.z + 9.10, 0.0, 0.0, -1000.0, v.r, v.g, v.b, 10.0, 100.0, 0.0, 2.5, 0.0)
				if Kentas.F.Tables.GetGameTimer() - v.t >= Kentas.F.Sliders['colour-timer'].value then 
					__KentasStrings__.strings:tableremove(Kentas.F.ColourAmmo, k)
				end
			end
		end
		if Kentas.F.Checks['customammo:tracers'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
                __KentasStrings__.strings:tableinsert(Kentas.F.Tracers, {c = coords, c2 = Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.PlayerPedId(), 57005, 0.0, 0.0, 0.0), t = Kentas.F.Tables.GetGameTimer(), r = r, g = g, b = b})
			end
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tracers) do 
				Kentas.F.Tables.DrawLine(v.c2.x, v.c2.y, v.c2.z, v.c.x, v.c.y, v.c.z, v.r, v.g, v.b, 255)
				Kentas.F.Tables.DrawMarker(28, v.c.x, v.c.y, v.c.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.05, 0.05, 0.05, v.r, v.g, v.b, 255, false, true, 2, nil, nil, false)
				if Kentas.F.Tables.GetGameTimer() - v.t >= Kentas.F.Sliders['tracers-timer'].value then 
					__KentasStrings__.strings:tableremove(Kentas.F.Tracers, k)
				end
			end
		end

		if Kentas.F.Checks['customammo:ExplosiveAmmo'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 7, 10.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:FireworkAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 38, 10.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:SteamAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 11, 10.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:FlameAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 12, 10.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:OilSlickAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 67, 10.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:HydrantAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 13, 100.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:FlareAmmo'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 22, 100.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:RaygunAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 70, 100.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:SnowballAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 39, 100.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:BirdPooAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 35, 100.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['customammo:BirdPooAmmo'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				Kentas.F.Tables.AddExplode(coords.x, coords.y, coords.z, 35, 100.0, true, false, 0.0)
			end
		end
		if Kentas.F.Checks['pammo:Fire'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "ent_sht_petrol_fire"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:Stars'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcpaparazzo1", "scr_mich4_firework_trailburst_spawn"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:bubblegum'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "ent_dst_gen_gobstop"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:oranges'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "ent_col_tree_oranges"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:Fireworks'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_indep_fireworks", "scr_indep_firework_trail_spawn"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:Smoke'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_powerplay", "scr_powerplay_beast_appear"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:Clown'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry2", "sp_clown_appear_trails"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:Water'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "exp_water"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:Dirt'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "bul_dirt"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:Alien'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry1", "scr_alien_disintegrate"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Kentas.F.Checks['pammo:Explosion'] then
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "des_fib_floor", "ent_ray_fbi5a_ramp_explosion"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:Blood'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "td_blood_shotgun"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:yellowsmoke'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "veh_respray_smoke"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:Flower'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry2", "scr_clown_bul"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Kentas.F.Checks['pammo:Cartoon'] then 
			local shot, coords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry2", "muz_clown"
				Kentas.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Kentas.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		
		if Kentas.F.Checks['weaponcustomization:invisible weapon'] then 
			Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), false)
			Kentas.F.Tables.SetEntityAlpha(Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 0)
		end
		if Kentas.F.Checks['weaponcustomization:Disablereload'] then 
			Kentas.F.Tables.RefillAmmoInstantly(Kentas.F.Tables.PlayerPedId())
		end
		if Kentas.F.Checks['weaponcustomization:doubletap'] then 
			if Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) then
				if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) or Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
					__CitIn__.CreateThread(function()
						__CitIn__.Wait(100)
						local coords, a = Kentas.F.Tables.Functions.RayCastGCam(400.0)
						local c2 = Kentas.F.Tables.Functions.RayCastGCam(1.0)
						Kentas.F.Tables.ShootSingleBulletBetweenCoords(c2, coords, 1.0, 1, Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
					end)
				end
			end
		end
		
		if Kentas.F.Checks['weapon:RapidFire'] then 
			Kentas.F.Tables.DisablePlayerFiring(Kentas.F.Tables.PlayerPedId(), true)
			if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) or Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
				local coords, a = Kentas.F.Tables.Functions.RayCastGCam(400.0)
				local c2 = Kentas.F.Tables.Functions.RayCastGCam(1.0)
				Kentas.F.Tables.ShootSingleBulletBetweenCoords(c2, coords, 1, 1, Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
			end
		end
		if Kentas.F.Checks['weapon:HitMarker'] then 
			__CitIn__.CreateThread(function()
				local _, target = Kentas.F.Tables.GetEntityPlayerIsFreeAimingAt(Kentas.F.Tables.PlayerId())
				if _ and Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) and Kentas.F.Tables.HasEntityClearLosToEntity(target, Kentas.F.Tables.PlayerPedId(), 17) then
					local shot, lcoords = Kentas.F.Tables.GetPedLastWeaponImpactCoord(Kentas.F.Tables.PlayerPedId())
					for i = 1, 55 do
						__CitIn__.Wait(0)
						local lOnScreen, rx, ry = Kentas.F.Tables.GetScreenCoordFromWorldCoord(lcoords.x, lcoords.y, lcoords.z)
						if lOnScreen then
							Kentas.F.Tables.DrawSprite("hitmarker","hitmarker_a", rx, ry, 0.01, 0.02, 0.0, 255, 255, 255, 255)
						end
					end
				end
			end)
		end
		if Kentas.F.Checks['weapon:HitSound'] then 
			local _, target = Kentas.F.Tables.GetEntityPlayerIsFreeAimingAt(Kentas.F.Tables.PlayerId())
			if _ and Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) and Kentas.F.Tables.HasEntityClearLosToEntity(target, Kentas.F.Tables.PlayerPedId(), 17) then
				local a = Kentas.F.Tables.CreateDui('https://kentas.menu/music/hitsound.mp3', 1, 1)
				Kentas.F.Tables.DestroyDui(a)
			end
		end

		if Kentas.F.Checks['weapon:Triggerbot'] then
			local _, target = Kentas.F.Tables.GetEntityPlayerIsFreeAimingAt(Kentas.F.Tables.PlayerId())
			if _ and Kentas.F.Tables.HasEntityClearLosToEntity(target, Kentas.F.Tables.PlayerPedId(), 17) and Kentas.F.Tables.IsEntityAPed(target) then
				Kentas.F.Tables.SetControlNormal(0, 24, 1.0)
			end
		end
		if Kentas.F.Checks['destroyer:Makeallplayervehiclesfly'] then
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
				local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(v))
				if vehicle ~= 0 then
					if Kentas.F.Tables.DoesEntityExist(vehicle) then 
						Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle) 
						Kentas.F.Tables.SetEntityAsMissionEntity(vehicle, true, true)
						Kentas.F.Tables.ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
					end
				end
			end
		end
		if Kentas.F.Checks['online:Makeplayervehiclefly'] then
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.GetPlayerPed(Kentas.F.SelectedPlayer))
			if vehicle ~= 0 then
				if Kentas.F.Tables.DoesEntityExist(vehicle) then 
					Kentas.F.Tables.NetworkRequestControlOfEntity(vehicle) 
					Kentas.F.Tables.SetEntityAsMissionEntity(vehicle, true, true)
					Kentas.F.Tables.ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
			end
		end
		
		if Kentas.F.Checks['weapon:Showfriends'] then 
			Kentas.F.Tables.DrawRect(0.87+0.08, 0.45, 0.065, 0.01, 0, 0, 0, 240)
			Kentas.F.Tables.DrawRect(0.87+0.08, 0.49, 0.065, 0.08, 0, 0, 0, 111)
			local y = 0.455
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.FriendsList) do
				Kentas.F.Tables.Functions.DrawTxt(json.encode(v), 0.84+0.08, y, 0.35, 0.25, {r=255, g=255, b=255, a=255}, false)
				y = y + 0.013
			end
		end
		if Kentas.F.Checks['weapon:Drawfov'] then 
			local fovn = (Kentas.F.Sliders['aimbot-fov'].value / 1000)
			local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
			Kentas.F.Tables.DrawSprite("thefov", "sdjcircle", 0.5-nKDX, 0.5-nKDY, fovn, fovn * 1.8, 0.0, Kentas.F.Sliders['FOV-R'].value, Kentas.F.Sliders['FOV-G'].value, Kentas.F.Sliders['FOV-B'].value, 255)
		end

		
		if Kentas.F.Checks['vehicle:Addtrackertovehicle'] then
			local playerPed = Kentas.F.Tables.PlayerPedId()
			if Kentas.F.Tables.IsPedInAnyVehicle(playerPed, true) then
				local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(playerPed, false)
				local coords = Kentas.F.Tables.GetEntityCoords(vehicle)
				local blip = Kentas.F.Tables.GetBlipFromEntity(vehicle)
				if not Kentas.F.Tables.DoesBlipExist(blip) then
					local bool = Kentas.F.Tables.AddBlipForEntity(vehicle)
					Kentas.F.Tables.SetBlipColour(bool, 20)
				end
				local heading = Kentas.F.Tables.GetEntityHeading(vehicle)
				Kentas.F.Tables.SetBlipRotation(blip, __KentasStrings__.strings:floor(heading))
				Kentas.F.Tables.SetBlipScale(blip, 1.0)
				Kentas.F.Tables.SetBlipSprite(blip, 326)
			end
		else
			Kentas.F.Tables.RemoveBlip(Kentas.F.Tables.GetBlipFromEntity(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), true)))
		end

		if Kentas.F.Checks['vehicle:TorqueMulti'] then 
			if Kentas.F.Sliders['torque'] then 
				local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
				if Kentas.F.Tables.IsDisabledControlPressed(0, 34) or Kentas.F.Tables.IsDisabledControlPressed(0, 33) or Kentas.F.Tables.IsDisabledControlPressed(0, 32) or Kentas.F.Tables.IsDisabledControlPressed(0, 35) then
					Kentas.F.Tables.SetVehicleEngineTorqueMultiplier(vehicle, Kentas.F.Sliders['torque'].value)
				end 
			end	
		end
		if Kentas.F.Checks['vehicle:PowerMulti'] then 
			if Kentas.F.Sliders['power'] then 
				local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
				if Kentas.F.Tables.IsDisabledControlPressed(0, 34) or Kentas.F.Tables.IsDisabledControlPressed(0, 33) or Kentas.F.Tables.IsDisabledControlPressed(0, 32) or Kentas.F.Tables.IsDisabledControlPressed(0, 35) then
					Kentas.F.Tables.SetVehicleEnginePowerMultiplier(vehicle, Kentas.F.Sliders['power'].value)
				end 
			end	
		end
		if Kentas.F.Checks['vehicle:Stickycar'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			if Kentas.F.Tables.DoesEntityExist(veh) then
				Kentas.F.Tables.ApplyForceToEntity(veh, 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
			end
		end
		if Kentas.F.Checks['vehicle:nofall'] then 
			Kentas.F.Tables.SetPedCanBeKnockedOffVehicle(Kentas.F.Tables.PlayerPedId(), true)
		elseif not Kentas.F.Checks['vehicle:nofall'] then 
			Kentas.F.Tables.SetPedCanBeKnockedOffVehicle(Kentas.F.Tables.PlayerPedId(), false)
		end
		if Kentas.F.Checks['vehicle:instantbrakes'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= 0 and Kentas.F.Tables.IsDisabledControlJustPressed(0, 8) or Kentas.F.Tables.IsDisabledControlJustPressed(0, 22) then
				Kentas.F.Tables.SetEntityCoordsNoOffset(veh, Kentas.F.Tables.GetEntityCoords(veh), true, true, true)
			end
		end
		if Kentas.F.Checks['vehicle:AutoDrive'] and not driving then
			driving = true
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			if Kentas.F.Tables.DoesEntityExist(veh) then
				Kentas.F.Tables.TaskVehicleDriveWander(Kentas.F.Tables.PlayerPedId(), veh, 40.0, 0)
			end
		end
		if not Kentas.F.Checks['vehicle:AutoDrive'] and driving then
			Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId())
			driving = false
		end
		if Kentas.F.Checks['vehicle:VehicleGodmode'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			Kentas.F.Tables.SetVehicleFixed(veh)
		end
		if Kentas.F.Checks['vehicle:AdvancedHandling'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			Kentas.F.Tables.SetVehicleGravityAmount(veh, 60.0)
		else
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Kentas.F.Tables.SetVehicleGravityAmount(veh, 9.8)
			end
		end
		if Kentas.F.Checks['vehicle:HornBoost'] then
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if Kentas.F.Tables.IsDisabledControlPressed(0, 38) then
				Kentas.F.Tables.SetVehicleForwardSpeed(veh, 70.0)
			elseif Kentas.F.Tables.IsDisabledControlPressed(0, 38) then
				Kentas.F.Tables.SetVehicleForwardSpeed(veh, 0.0)
			end 
		end
		if Kentas.F.Checks['vehicle:BunnyHop'] then 
			local __vehicle__ = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if __vehicle__ ~= 0 then
				if Kentas.F.Tables.IsDisabledControlJustPressed(0, 22) then
					Kentas.F.Tables.ApplyForceToEntity(__vehicle__, 3, 0.0, 0.0, 8.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
				end
			end
		end
		if Kentas.F.Checks['vehicle:DriftMode'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			if Kentas.F.Tables.IsControlJustPressed(1, 36) then
				Kentas.F.Tables.SetVehicleReduceGrip(Kentas.F.Tables. GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), true)
			elseif Kentas.F.Tables.IsControlJustPressed(1, 21) then 
				Kentas.F.Tables.SetVehicleReduceGrip(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), false)
			end
		end
		if Kentas.F.Checks['vehicle:Rainbowcar'] then 
			local N = Kentas.F.Tables.Functions.randomrgb(1)
			Kentas.F.Tables.SetVehicleCustomPrimaryColour(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0), N.r, N.g, N.b)
			Kentas.F.Tables.SetVehicleCustomSecondaryColour(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0), N.r, N.g, N.b)
		end
		if Kentas.F.Checks['vehicle:Bulletproofcar'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			Kentas.F.Tables.SetVehicleTyresCanBurst(veh, false)
		end
		if Kentas.F.Checks['vehicle:Invisiblecar'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Kentas.F.Tables.SetEntityVisible(veh, false)
			end
		else
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Kentas.F.Tables.SetEntityVisible(veh, true)
			end
		end
		if Kentas.F.Checks['vehicle:AutoClean'] then 
			Kentas.F.Tables.SetVehicleDirtLevel(Kentas.F.Tables.GetVehiclePedIsUsing(Kentas.F.Tables.PlayerPedId()), 0.0)
		end
		if Kentas.F.Checks['vehicle:AlwaysWheelie'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), 0)
			if Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId()) and Kentas.F.Tables.GetPedInVehicleSeat(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId()), -1) == Kentas.F.Tables.PlayerPedId() then
				Kentas.F.Tables.SetVehicleWheelieState(veh, 129)
			end
		end
		if Kentas.F.Checks['vehicle:Anti-Gravity'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Kentas.F.Tables.SetVehicleGravityAmount(veh, -1)
			end
		elseif not Kentas.F.Checks['vehicle:Anti-Gravity'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Kentas.F.Tables.SetVehicleGravityAmount(veh, 9.8)
			end
		end
		if Kentas.F.Checks['vehicle:NoCollision'] then
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
		
			for vehicles in Kentas.F.Tables.Functions.EnumerateVehicles() do
				Kentas.F.Tables.SetEntityNoCollisionEntity(vehicles, veh, true)
			end
			for peds in Kentas.F.Tables.Functions.EnumeratePeds() do
				Kentas.F.Tables.SetEntityNoCollisionEntity(peds, veh, true)
			end
			for objects in Kentas.F.Tables.Functions.EnumerateObjects() do
				Kentas.F.Tables.SetEntityNoCollisionEntity(objects, veh, true)
			end
		end
		if Kentas.F.Checks['vehicle:ToggleEngine'] then 
			local veh = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
			if veh ~= nil then
				Kentas.F.Tables.SetVehicleEngineOn(veh, true, true, true)
			end
		end
		if Kentas.F.Checks['glife:AutoLooting'] then
			Kentas.F.Tables.SetControlNormal(0, 355, 1.0)
			Kentas.F.Tables.SetControlNormal(0, 356, 1.0)
			Kentas.F.Tables.SetControlNormal(0, 86, 1.0)
		end
		if Kentas.F.Checks['glife:Auto Steal'] then
			Kentas.F.Tables.SetControlNormal(0, 311, 1.0)
		end

		if Kentas.F.Checks['glife:Teleportzombies'] then
			for GlifePeds in Kentas.F.Tables.Functions.EnumeratePeds() do
				if GlifePeds ~= Kentas.F.Tables.PlayerPedId() then
					local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))
					local x2, y2, z2 = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(GlifePeds))
					Kentas.F.Tables.SetEntityCoordsNoOffset(GlifePeds, x+1.2, y+1.2, z, false, false, false, false)
					if Kentas.F.Checks['glife:Invisible'] then
						Kentas.F.Tables.SetEntityVisible(GlifePeds, false, 0)
					else
						Kentas.F.Tables.SetEntityVisible(GlifePeds, true, 0)
					end
					
					if Kentas.F.Tables.GetEntityHealth(GlifePeds) > 1 then
						if Kentas.F.Checks['glife:Kill'] then
							__CitIn__.CreateThread(function()
								if Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()) ~= -1569615261 then
									Kentas.F.Tables.SetPedShootsAtCoord(Kentas.F.Tables.PlayerPedId(), x2, y2, z2, true)
									__CitIn__.Wait(0)
								else
									Kentas.F.Tables.SetEntityHealth(GlifePeds, 0)
								end
							end)
						end
					end
				end
			end
		end

		if Kentas.F.Checks['cheaterprotection:antipart'] then
			Kentas.F.Tables.RemoveParticleFxInRange(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 10.0)
		end
		
		if Kentas.F.Checks['cheaterprotection:antifreeze'] then
			Kentas.F.Tables.FreezeEntityPosition(Kentas.F.Tables.PlayerPedId(), false)
		end
		
		
		if Kentas.F.Checks['misc:Alwaysfriendly'] then
			Kentas.F.Tables.SetPedCanBeTargetted(Kentas.F.Tables.PlayerPedId(), false)
		else
			Kentas.F.Tables.SetPedCanBeTargetted(Kentas.F.Tables.PlayerPedId(), true)
		end
		if Kentas.F.Checks['misc:instantsitincar'] then
			local thisveh = Kentas.F.Tables.GetVehiclePedIsEntering(Kentas.F.Tables.PlayerPedId())
			if thisveh ~= 0 then
				Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), thisveh, -1)
			end
		end

		if Kentas.F.Checks['misc:meteorshower'] and (Kentas.F.MetheorDelay or 0) < Kentas.F.Tables.GetGameTimer() then
			Kentas.F.MetheorDelay = Kentas.F.Tables.GetGameTimer() + 500

			local model = Kentas.F.Tables.GetHashKey("prop_asteroid_01")
			if not Kentas.F.Tables.HasModelLoaded(model) then
				Kentas.F.Tables.RequestModel(model)
				while not Kentas.F.Tables.HasModelLoaded(model) do
					__CitIn__.Wait(0)
					Kentas.F.Tables.RequestModel(model)
				end	
			end
			local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
			local x, y, z = coords.x+math.random(0.0, 150.0), coords.y-math.random(0.0, 150.0), coords.z+math.random(0.0, 150.0)
			local obj = Kentas.F.Tables.CreateObject(model, x+0.0, y+0.0, z + 100, true, true, false)
            Kentas.F.Tables.ApplyForceToEntity(obj, 1, 0.0, 3.0, -100.0, -1.0, 0.0, 0.0, 1, false, true, false, false)
            Kentas.F.Tables.ApplyForceToEntity(obj, 1, 0.0, 3.0, -100.0, -1.0, 0.0, 0.0, 1, false, true, false, false)

		end

		
		if Kentas.F.Checks['misc:fakeroll'] and Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) and not Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId()) then
			__CitIn__.CreateThread(function()
				Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_bwd_p1_-135', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_bwd_p1_135', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_fwd_p1_90', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_fwd_p1_-45', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId(), true)
			end)
		end
		if Kentas.F.Checks['misc:fakecrouch'] and Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) and not Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId()) then
			__CitIn__.CreateThread(function()
				Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_crouch_proto', 'rstart_l_-90', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_crouch_proto', 'run_turn_180_r', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_crouch_proto', 'rstart_l_-90', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_crouch_proto', 'run_turn_180_r', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId(), true)
			end)
		end
		if Kentas.F.Checks['misc:antiaim'] and not Kentas.F.Tables.IsPedInAnyVehicle(Kentas.F.Tables.PlayerPedId()) then
			__CitIn__.CreateThread(function()
				if Kentas.F.Tables.IsDisabledControlPressed(0, Kentas.F.Tables.Keys["W"]) or Kentas.F.Tables.IsDisabledControlPressed(0, Kentas.F.Tables.Keys["A"]) or Kentas.F.Tables.IsDisabledControlPressed(0, Kentas.F.Tables.Keys["S"]) or Kentas.F.Tables.IsDisabledControlPressed(0, Kentas.F.Tables.Keys["D"]) then
					if __AATIMER__< 10 then
						Kentas.F.Tables.RequestAnimDict('move_strafe@roll_fps')
						Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_fwd_p1_-45', 0, 16.0, -1, 46, 1.0, false, false, false)
						__AATIMER__ = __AATIMER__ + 1
					end

					if __AATIMER__ >= 10 then
						Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId(), true)
						__CitIn__.Wait(300)
						__AATIMER__ = 0
					end
				end
			end)
		end
		if Kentas.F.Checks['misc:lagging'] then
			local check = Kentas.F.Tables.IsPedWalking(Kentas.F.Tables.PlayerPedId()) or Kentas.F.Tables.IsPedRunning(Kentas.F.Tables.PlayerPedId()) or Kentas.F.Tables.IsPedJumping(Kentas.F.Tables.PlayerPedId())
			if check and (Kentas.F.LaggingDelay or 0) < Kentas.F.Tables.GetGameTimer() then
				Kentas.F.LaggingDelay = Kentas.F.Tables.GetGameTimer() + 888
				local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.PlayerPedId(), 0.0, -0.5, 0.0)
				Kentas.F.Tables.SetEntityCoordsNoOffset(Kentas.F.Tables.PlayerPedId(), c.x, c.y, c.z, true, true, true)
				
			end
		end
	
		
		if Kentas.F.Checks['misc:globalchat'] then
			if Kentas.F.Funcs.CheckIfResourceExist('screenshot-basic') then
				local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
				local name =  Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.PlayerId())
				local reuid = 0
				local year, month, day, hour, minute, second = Kentas.F.Tables.GetUtcTime()
				if day < 10 then
					day = '0'..day
				end
				if hour < 10 then
					hour = '0'..hour
				end
				if minute < 10 then
					minute = '0'..minute
				end
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.205, 0.205*1.8, 1, 1, 1, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.204, 0.204*1.8, 60, 60, 60, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.203, 0.203*1.8, 40, 40, 40, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.201, 0.201*1.8, 60, 60, 60, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27-nKDX, 0.5-nKDY, 0.2, 0.2*1.8, 0, 0, 0, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.192, 0.192*1.8, 1, 1, 1, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.191, 0.191*1.8, 40, 40, 40, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.19, 0.19*1.8, 23, 23, 23, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.5+0.27-nKDX, 0.3225-nKDY, 0.199, 0.0015, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, Kentas.alpha)
			
			
				
				-- tabs
				Kentas.F.Tables.DrawRect_U(0.82+0.005, 0.665, 0.026, 0.0112*1.8, 0, 0, 0, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.82+0.005, 0.665, 0.025, 0.01*1.8, 25, 22, 19, Kentas.alpha-50)
				
				
				Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
				Kentas.F.drawText('S & FS', 0.82+0.005-nKDX, 0.654-nKDY, 0.3, 4, true, true)


				Kentas.F.Tables.DrawRect_U(0.82+0.033, 0.665, 0.026, 0.0112*1.8, 0, 0, 0, Kentas.alpha)
				Kentas.F.Tables.DrawRect_U(0.82+0.033, 0.665, 0.025, 0.01*1.8, 25, 22, 19, Kentas.alpha-50)
				

				Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
				Kentas.F.drawText('S', 0.82+0.033-nKDX, 0.654-nKDY, 0.3, 4, true, true)
				Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
				Kentas.F.drawText('TAB - Send message, F5 - Refresh', 0.72-nKDX, 0.652-nKDY, 0.3, 4, true, true)

				if Kentas.F.Tables.Functions.CreateZone(0.8197+0.005, 0.66495-0.01, 0.0262, 0.0115*1.8) and Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
					Kentas.F.Checks.TabInGlobalChat = 1
					Kentas.Static.Scroll = 0
				end
				if Kentas.F.Tables.Functions.CreateZone(0.8197+0.033, 0.66495-0.01, 0.0262, 0.0115*1.8) and Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
					Kentas.F.Checks.TabInGlobalChat = 2
					Kentas.Static.Scroll = 0
				end
				if Kentas.F.Checks.TabInGlobalChat == 1 then
					Kentas.F.Tables.DrawRect_U(0.82+0.005, 0.665, 0.025, 0.01*1.8, 100, 100, 100, Kentas.alpha-90)
				elseif Kentas.F.Checks.TabInGlobalChat == 2 then
					Kentas.F.Tables.DrawRect_U(0.82+0.033, 0.665, 0.025, 0.01*1.8, 100, 100, 100, Kentas.alpha-90)
				end

				if Kentas.F.Checks.TabInGlobalChat == 1 then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 167) then
						__CitIn__.CreateThread(function()
							Kentas.F.Tables.WebReq("https://kentas.menu/configs/globalchat.php".."?msg=nil"..'&file=chat.txt&clear=true')
							for i = 1, 5 do
								for ak, av in __KentasStrings__.strings:pairs(Kentas.GlobalChat) do
									__KentasStrings__.strings:tableremove(Kentas.GlobalChat, ak)
								end
							end
							__CitIn__.Wait(1000)
							local newmsg2 = '~r~SYSTEM ~s~Chat cleared by: ~b~'..name..' ~s~| '..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							Kentas.F.Tables.WebReq("https://kentas.menu/configs/globalchat.php".."?msg="..newmsg2..'&file=chat.txt&clear=false')
						end)
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 37) then
						local message = Kentas.F.Tables.Functions.KBInput('Message to send', '', 30120)
						
						if message ~= nil then
							local currentname = '~p~Cocco~s~'
							local newmsg = '['..currentname.. '] '.. name .. ': ' .. message .. ' | ' ..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							Kentas.F.Tables.WebReq("https://kentas.menu/configs/globalchat.php".."?msg="..newmsg..'&file=chat.txt&clear=false')
						end
					end
							
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 166) then
						exports['screenshot-basic']:requestScreenshotUpload("https://kentas.menu/configs/chat.txt", 'files[]', function(data)
							if data then
								for i = 1, 5 do
									for ak, av in __KentasStrings__.strings:pairs(Kentas.GlobalChat) do
										__KentasStrings__.strings:tableremove(Kentas.GlobalChat, ak)
									end
								end
								for g in string.gmatch(data, "[^" .. '\n' .. "]+") do
									__KentasStrings__.strings:tableinsert(Kentas.GlobalChat, g)
								end
							end
						end)
					end
					local drawnFeature = 0 
					for k, v in __KentasStrings__.strings:pairs(Kentas.GlobalChat) do
						if k > Kentas.Static.Scroll and drawnFeature < 16 then 
							drawnFeature = drawnFeature + 1 
							Kentas.F.Tables.Functions.DrawTxt(v, 0.406+0.27, 0.31 + (drawnFeature * 0.02), 0.3, 0.3, {r=255, g=255, b=255, a=Kentas.alpha}, false)
						end
					end

					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 14) then 
						Kentas.Static.Scroll = Kentas.Static.Scroll + 1
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 15) then 
						Kentas.Static.Scroll = Kentas.Static.Scroll - 1
					end
				elseif Kentas.F.Checks.TabInGlobalChat == 2 then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 167) then
						__CitIn__.CreateThread(function()
							Kentas.F.Tables.WebReq("https://kentas.menu/configs/globalchat.php".."?msg=nil"..'&file=chat2.txt&clear=true')
							for i = 1, 5 do
								for ak, av in __KentasStrings__.strings:pairs(Kentas.GlobalChat2) do
									__KentasStrings__.strings:tableremove(Kentas.GlobalChat2, ak)
								end
							end
							__CitIn__.Wait(1000)
							local newmsg2 = '~r~SYSTEM ~s~Chat cleared by: ~b~'..name..' ~s~| '..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							Kentas.F.Tables.WebReq("https://kentas.menu/configs/globalchat.php".."?msg="..newmsg2..'&file=chat2.txt&clear=false')
						end)
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 37) then
						local message = Kentas.F.Tables.Functions.KBInput('Message to send', '', 30120)
						
						if message ~= nil then
							if Kentas.F.Tables.GetRedUid() == 0 then
								currentname = '~o~localhost~s~'
							elseif Kentas.F.Tables.GetRedUid() == 5468 then
								currentname = '~b~Dev~s~'
							elseif Kentas.F.Tables.GetRedUid() == 4 then
								currentname = '~r~Owner~s~'
							elseif Kentas.F.Tables.GetRedUid() == 2061 then
								currentname = '~b~Dev~s~'
							else
								currentname = ''
							end
							local newmsg = '['..currentname.. '] '.. name .. ': ' .. message .. ' | ' ..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							
							Kentas.F.Tables.WebReq("https://kentas.menu/configs/globalchat.php".."?msg="..newmsg..'&file=chat2.txt&clear=false')
						end
					end
							
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 166) then
						exports['screenshot-basic']:requestScreenshotUpload("https://kentas.menu/configs/chat2.txt", 'files[]', function(data)
							if data then
								for i = 1, 5 do
									for ak, av in __KentasStrings__.strings:pairs(Kentas.GlobalChat2) do
										__KentasStrings__.strings:tableremove(Kentas.GlobalChat2, ak)
									end
								end
								for g in string.gmatch(data, "[^" .. '\n' .. "]+") do
									__KentasStrings__.strings:tableinsert(Kentas.GlobalChat2, g)
								end
							end
						end)
					end
					local drawnFeature = 0 
					for k, v in __KentasStrings__.strings:pairs(Kentas.GlobalChat2) do
						if k > Kentas.Static.Scroll and drawnFeature < 16 then 
							drawnFeature = drawnFeature + 1 
							Kentas.F.Tables.Functions.DrawTxt(v, 0.406+0.27, 0.31 + (drawnFeature * 0.02), 0.3, 0.3, {r=255, g=255, b=255, a=Kentas.alpha}, false)
						end
					end

					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 14) then 
						Kentas.Static.Scroll = Kentas.Static.Scroll + 1
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 15) then 
						Kentas.Static.Scroll = Kentas.Static.Scroll - 1
					end
				end
			end
		end
		if Kentas.F.Checks['misc:bypassfirstperson'] then
			Kentas.F.Tables.SetFollowPedCamViewMode(1)
			Kentas.F.Tables.DisableFirstPersonCamThisFrame()
		end
		if Kentas.F.Checks['misc:rpserversbelike'] then
			if Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) then 
				Kentas.F.Tables.ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.2)
				local p = Kentas.F.Tables.GetGameplayCamRelativePitch()
				Kentas.F.Tables.SetGameplayCamRelativePitch(p+4.0, 0.2)
			end
			if Kentas.F.Tables.IsPlayerFreeAiming(Kentas.F.Tables.PlayerId()) then
				Kentas.F.Tables.SetFollowPedCamViewMode(4)
			else
				Kentas.F.Tables.SetFollowPedCamViewMode(1)
			end
		end
		if Kentas.F.Checks['misc:Aimposition'] and Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
			Kentas.F.Tables.TaskAimGunScripted(Kentas.F.Tables.PlayerPedId(), Kentas.F.Tables.GetHashKey(Kentas.F.Combos['aimnaimation'].c[Kentas.F.Combos['aimnaimation'].a]), true, true)
			if Kentas.F.Combos['aimnaimation'].b[Kentas.F.Combos['aimnaimation'].a] == 'normal' then
				Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId(), true)
				Kentas.F.Checks['misc:Aimposition'] = false
			end
		end
		if Kentas.F.Checks['misc:killfeed'] then
			if __EVENTTT__ < 1 then
				AddEventHandler("gameEventTriggered", function(en, ea)
					if en == "CEventNetworkEntityDamage" then
						local self = Kentas.F.Tables.CleanString(Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.NetworkGetPlayerIndexFromPed(Kentas.F.Tables.GetPlayerPed())), "color")
						local n1 = Kentas.F.Tables.CleanString(Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.NetworkGetPlayerIndexFromPed(ea[1])), "color")
						local n2 = Kentas.F.Tables.CleanString(Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.NetworkGetPlayerIndexFromPed(ea[2])), "color")
						if n1 == "**Invalid**" then n1 = "AI" end
						if n2 == "**Invalid**" then n2 = "AI" end
						
						local isFatal = ea[4]
						local headshot = ea[9]
						if isFatal == 1 and n1 ~= 'AI' then
							isFatal = "    ~r~killed~s~    "
							Kentas.F.Tables.Functions.Notify(n2 .. isFatal .. n1)
						end
					end
				end)
				__EVENTTT__ = __EVENTTT__ + 1
			end
		end
		if Kentas.F.Checks['misc:rollbug(x)'] and Kentas.F.Tables.IsDisabledControlPressed(0, 73) or Kentas.F.Tables.IsDisabledControlPressed(0, 348) then
			Kentas.F.Tables.ClearPedTasks(Kentas.F.Tables.PlayerPedId())
		end
		
		if Kentas.F.Checks['misc:Sticktoground'] then
			Kentas.F.Tables.ApplyForceToEntity(Kentas.F.Tables.PlayerPedId(), 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
		end
		if Kentas.F.Checks['misc:InfiniteCombatRoll'] then
			for shit = 0, 3 do
				Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey("mp" .. shit .. "_shooting_ability"), 9999, true)
				Kentas.F.Tables.StatSetInt(Kentas.F.Tables.GetHashKey("sp" .. shit .. "_shooting_ability"), 9999, true)
			end
		end
		if Kentas.F.Checks['cheaterprotection:anticrash'] then
			__CitIn__.CreateThread(function()
				local PedsAm = 0
				local PropsAm = 0
				for peds in Kentas.F.Tables.Functions.EnumeratePeds() do
					__CitIn__.Wait(0)
					PedsAm = PedsAm + 1
					if peds ~= Kentas.F.Tables.PlayerPedId() and PedsAm <= 8 then
						Kentas.F.Tables.DeleteEntity(peds)
					end
				end
				for objects in Kentas.F.Tables.Functions.EnumerateObjects() do
					__CitIn__.Wait(0)
					PropsAm = PropsAm + 1
					if PropsAm <= 3 then
						Kentas.F.Tables.DeleteEntity(objects)
					end
				end
			end)
		end

		if Kentas.F.Checks['cheaterprotection:anticage'] then
				for object in Kentas.F.Tables.Functions.EnumerateObjects() do
					local objects = Kentas.F.Tables.GetEntityModel(object)
					if objects == Kentas.F.Tables.GetHashKey('imp_prop_impexp_boxpile_01') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_container_ld_pu') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_container_01a') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_container_05a') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_const_fence03b_cr') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_fnclink_03gate5') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_arm_gate_l') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_facgate_01') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_doghouse_01') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('prop_rub_cage01b') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('bkr_prop_bkr_cashpile_07') then
						Kentas.F.Tables.DeleteEntity(object)
					elseif objects == Kentas.F.Tables.GetHashKey('hei_prop_heist_apecrate') then
						Kentas.F.Tables.DeleteEntity(object)
					end
				end
			end

			if Kentas.F.Checks['cheaterprotection:antifire'] then
				Kentas.F.Tables.StopEntityFire(Kentas.F.Tables.PlayerPedId())
			end

			if Kentas.F.Checks['cheaterprotection:antiattach'] then
				if 	Kentas.F.Tables.IsEntityAttached(Kentas.F.Tables.PlayerPedId()) then
					Kentas.F.Tables.DetachEntity(Kentas.F.Tables.PlayerPedId(), true, true)
				end
			end

			if Kentas.F.Checks['cheaterprotection:anticlone'] then
				for peds in Kentas.F.Tables.Functions.EnumeratePeds() do
					local __pedcoords__ = Kentas.F.Tables.GetEntityCoords(peds)
					local __selfcoords__ = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
					if __pedcoords__ == __selfcoords__ and peds ~= Kentas.F.Tables.PlayerPedId() then
						Kentas.F.Tables.DeleteEntity(peds)
					end
				end
			end

			if Kentas.F.Checks['cheaterprotection:antitele'] then
				for peds in Kentas.F.Tables.Functions.EnumeratePeds() do
					local __pedcoords__ = Kentas.F.Tables.GetEntityCoords(peds)
					local __selfcoords__ = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
					local distt = #(__selfcoords__ - __pedcoords__)
					if distt <= 0.5 and peds ~= Kentas.F.Tables.PlayerPedId() then
						local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))
						local __random__ = __KentasStrings__.strings:random(0, 400)
						local foundGround, zPos = Kentas.F.Tables.GetGroundZFor_3dCoord(x+__random__+0.0, y+__random__+0.0, z + 0.0)
						if foundGround then
							Kentas.F.Tables.SetEntityCoordsNoOffset(Kentas.F.Tables.PlayerPedId(), x+__random__+0.0, y+__random__+0.0, zPos, false, false, false, true)
						end
					end
				end
			end

			if Kentas.F.Checks['bypass:apiac'] then
				if not cotuwidzisz then 
					CreateThread = CreateThread;
					__CitIn__.CreateThread = CreateThread;
					Citizen = Citizen;
				end
			end
			if Kentas.F.Checks['bypass:ggac'] then
				local a = [[
				_G.GetUsingnightvision() = function(...)
					return false
				end
				_G.GetUsingseethrough() = function(...)
					return false
				end
				_G.IsPedDoingBeastJump = function(...)
					return false
				end

				GetUsingnightvision() = function(...)
					return false
				end
				GetUsingseethrough() = function(...)
					return false
				end
				IsPedDoingBeastJump = function(...)
					return false
				end
				]]
				pcall(load(a))
			end
			if Kentas.F.Checks['bypass:events'] then
				for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.KnownEvents) do
					RegisterNetEvent(v)
					AddEventHandler(v, function()
						CancelEvent()
						print("Event founded and cancelled: "..v)
					end)
				end
				_G.TriggerEvent = function(...)
					local a = __KentasStrings__.strings:tableunpack({...}) 
					print("Prevented game event from beeing executed: "..a)
				end
				_G.TriggerServerEvent = function(...)
					CancelEvent()
					local a = __KentasStrings__.strings:tableunpack({...}) 
					print("Prevented server event from beeing executed: "..a)					
				end
				TriggerEvent = function(...)
					CancelEvent()
					local a = __KentasStrings__.strings:tableunpack({...}) 
					print("Prevented game event from beeing executed: "..a)
				end
				TriggerServerEvent = function(...)
					CancelEvent()
					local a = __KentasStrings__.strings:tableunpack({...}) 
					print("Prevented server event from beeing executed: "..a)
				end
			end
			if Kentas.F.Checks['bypass:Recoil'] then
				local trash = [[
					_G.ClampGameplayCamPitch = function(...)
					end
					_G.SetGameplayCamRawPitch = function(...)
					end
					_G.IsPedShooting = function(...)
					end
					_G.ShakeGameplayCam = function(...)
					end
					_G.SetGameplayCamRelativePitch = function(...)
					end

					ClampGameplayCamPitch = function(...)
					end
					SetGameplayCamRawPitch = function(...)
					end
					IsPedShooting = function(...)
					end
					ShakeGameplayCam = function(...)
					end
					SetGameplayCamRelativePitch = function(...)
					end
				]]
				pcall(load(trash))
			end
			if Kentas.F.Checks['bypass:bscreen'] then
				if Kentas.F.Tables.IsScreenFadingOut() then
					Kentas.F.Tables.DoScreenFadeIn(0)
				end
			end
			if Kentas.F.Checks['bypass:blur'] then
				if Kentas.F.Tables.IsScreenblurFadeRunning() then
					Kentas.F.Tables.TriggerScreenblurFadeIn(0)
				end
			end
			if Kentas.F.Checks['ctrls:disallact'] then
				Kentas.F.Tables.DisableAllControlActions()
			end
			if Kentas.F.Checks['anims:looped'] and (Kentas.F.AnimsDelay or 0) <= Kentas.F.Tables.GetGameTimer() then
				Kentas.F.AnimsDelay = Kentas.F.Tables.GetGameTimer() + (Kentas.F.Sliders['anims-loopdelay'].value * 10)
				local animation = Kentas.F.Combos['Animations'].b[Kentas.F.Combos['Animations'].a]
				Kentas.F.Tables.RequestAnimDict(animation.lib)
				Kentas.F.Tables.TaskPlayAnim(Kentas.F.Tables.PlayerPedId(), animation.lib, animation.anim, 8.0, -8.0, -1, 0, 0, false, false, false)
			end
			if Kentas.F.Checks['wc:Colourit'] then
				local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId())
				Kentas.F.Tables.DrawLightWithRangeAndShadow(coords.x, coords.y, coords.z + 3.0, Kentas.F.Sliders['wc-r'].value, Kentas.F.Sliders['wc-g'].value, Kentas.F.Sliders['wc-b'].value, Kentas.F.Sliders['wc-range'].value+0.0, Kentas.F.Sliders['wc-shadow'].value+0.0)
			end
			
			if Kentas.F.Checks['ctrls:enblallact'] then
				Kentas.F.Tables.EnableAllControlActions(0)
				Kentas.F.Tables.EnableAllControlActions(1)
			end
			if Kentas.F.Checks['ctrls:disfire'] then
				Kentas.F.Tables.DisablePlayerFiring(Kentas.F.Tables.PlayerPedId(), true)
			end
			if Kentas.F.Checks['ctrls:enblfire'] then
				
			end

			if Kentas.F.Checks['configuration:watermark'] then
				if __WATERMARKALPHA__ < 255 then
					__WATERMARKALPHA__ = __WATERMARKALPHA__ + 5
				end
				Kentas.F.Tables.Functions.WaterMark(__WATERMARKALPHA__)
			else
				if __WATERMARKALPHA__ > 0 then
					__WATERMARKALPHA__ = __WATERMARKALPHA__ - 5
				end
				Kentas.F.Tables.Functions.WaterMark(__WATERMARKALPHA__)
			end
		
			--print(Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(v)])
		if Kentas.F.Checks['weapon:Aimbot'] then 
			for k, v in __KentasStrings__.strings:pairs(Kentas.F.Tables.GetActivePlayers()) do
				local id = Kentas.F.Tables.GetPlayerPed(v)
			--for id in Kentas.F.Tables.Functions.EnumeratePeds() do
				local coords = Kentas.F.Tables.GetEntityCoords(id)
				local MaxDistance = Kentas.F.Sliders['aimbot-distance'].value
				local _, s_x, s_y = Kentas.F.Tables.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
				local distace = #(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()) - coords)
				local Bone = Kentas.F.Tables.GetPedBoneCoords(id, Kentas.F.Combos['Bone'].c[Kentas.F.Combos['Bone'].a], 0, 0, 0)
				local Direct = Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetEntityRotation(id))
				local hitchance = __KentasStrings__.strings:random(0, 100)
				local CheckFov = Kentas.F.Tables.Functions.CheckFov(id)
				local currentaimbot = Kentas.F.Combos['Aimbot type'].b[Kentas.F.Combos['Aimbot type'].a]
				if not Kentas.F.Tables.IsEntityDead(id) and Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(v)] == false then
					if currentaimbot == 'Ragebot' then
						__CitIn__.CreateThread(function()
							if not Kentas.F.Tables.IsEntityDead(id) and id ~= Kentas.F.Tables.PlayerPedId() then
								Kentas.F.Tables.ShootSingleBulletBetweenCoords((Bone.x + Direct.x), (Bone.y + Direct.y), (Bone.z + Direct.z), Bone.x, Bone.y, Bone.z, Kentas.F.Tables.GetWeaponDamage(Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 1), false, Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), Kentas.F.Tables.PlayerPedId(), true, false, 1000.0)
								__CitIn__.Wait(0)
							end
						end)
					end
				end
				if distace < MaxDistance and not Kentas.F.Tables.Friends[Kentas.F.Tables.GetPlayerName(v)] then
					if CheckFov and not Kentas.F.Tables.IsEntityDead(id) then
						local mindistance1 = Kentas.F.Tables.Functions.GetMinVisualDistance(Kentas.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, 0.0))
						local body1 = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(id, 0, 0.0, 0.0, 0.0), mindistance1)
						local mindistance2 = Kentas.F.Tables.Functions.GetMinVisualDistance(Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.PlayerPedId(), 0x0, 0.0, 0.0, 0.0))
						local body2 = Kentas.F.Tables.Functions.BoneThruWall(Kentas.F.Tables.GetPedBoneCoords(Kentas.F.Tables.PlayerPedId(), 0, 0.0, 0.0, 0.0), mindistance2)

						Kentas.F.Tables.DrawLine(body1, body2, 0, 0, 0, 255)

						if Kentas.F.Checks['weapon:aimbotkey'] == true then
							Kentas.F.Tables.Functions.UseAimbotKey = Kentas.F.Tables.IsDisabledControlPressed(0, Kentas.F.AimbotKeybindv)
						else
							Kentas.F.Tables.Functions.UseAimbotKey = true
						end	
						if currentaimbot == 'Normal' then
							if Kentas.F.Tables.Functions.UseAimbotKey then
								if Kentas.F.Tables.IsPedShooting(Kentas.F.Tables.PlayerPedId()) then
									if hitchance <= Kentas.F.Sliders['aimbot-hitchance'].value then
										Kentas.F.Tables.ShootSingleBulletBetweenCoords((Bone.x + Direct.x), (Bone.y + Direct.y), (Bone.z + Direct.z), Bone.x, Bone.y, Bone.z, Kentas.F.Tables.GetWeaponDamage(Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), 1), false, Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId()), Kentas.F.Tables.PlayerPedId(), true, false, 1000.0)
									end
								end
							end
						elseif currentaimbot == 'Aimlock' then
							if Kentas.F.Tables.Functions.UseAimbotKey and Kentas.F.Tables.IsAimCamActive() and Kentas.F.Tables.HasEntityClearLosToEntity(id, Kentas.F.Tables.PlayerPedId(), 17) then
								local ncoords = Kentas.F.Tables.GetPedBoneCoords(id, Kentas.F.Combos['Bone'].c[Kentas.F.Combos['Bone'].a], 0, 0, -0.01) - Kentas.F.Tables.GetGameplayCamCoord()
								local TRot = Kentas.F.Tables.Functions.AdvancedRot(ncoords)
								local PRot = Kentas.F.Tables.GetEntityRotation(Kentas.F.Tables.PlayerPedId(), 2)
								Kentas.F.Tables.SetGameplayCamRelativeRotation(TRot.z - PRot.z, TRot.x, 1.0)
							end
						end
					end
				end
			end
		end


		if Kentas.F.Checks['vehicles:transformercamera'] then
			--__CitIn__.CreateThread(function()
				if not cam ~= nil then
					cam = Kentas.F.Tables.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				end
				if not cam ~= nil then
					cam = Kentas.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
					Transformercam = cam
				end
				
				Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Kentas.F.Tables.SetCamActive(cam, true)
					
				Kentas.F.Tables.SetCamCoord(cam, Kentas.F.Tables.GetEntityCoords(Entity_Deluxo))
				Kentas.F.Tables.AttachCamToEntity(cam, Entity_Deluxo, 0.0, 1.0, 10.0, false)

				Kentas.F.Tables.SetEntityVisible(Entity_Deluxo, false, false)
				--Kentas.F.Tables.SetCamCoord(cam, xx, yy-1.0, zz+0.5)
				local offsetRotX = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0
				
				while Kentas.F.Tables.DoesCamExist(cam) do
					__CitIn__.Wait(0)
					Kentas.F.Tables.SetCamCoord(cam, Kentas.F.Tables.GetEntityCoords(Entity_Deluxo))
					if not Kentas.F.Checks['vehicles:transformercamera'] then
						Kentas.F.Tables.DestroyCam(cam)
						Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
						Kentas.F.Tables.SetEntityVisible(Entity_Deluxo, true, false)
						break
					end
	
						local playerPed = Kentas.F.Tables.PlayerPedId()
						local playerRot = Kentas.F.Tables.GetEntityRotation(playerPed, 2)
								
						local rotX = playerRot.x
						local rotY = playerRot.y
						local rotZ = playerRot.z
						offsetRotX = offsetRotX - (Kentas.F.Tables.GetDisabledControlNormal(1, 2) * 8.0)
						offsetRotZ = offsetRotZ - (Kentas.F.Tables.GetDisabledControlNormal(1, 1) * 8.0)
						if (offsetRotX > 30.0) then
							offsetRotX = 30.0
						elseif (offsetRotX < -30.0) then
							offsetRotX = -30.0
						end
						if (offsetRotY > 30.0) then
							offsetRotY = 30.0
						elseif (offsetRotY < -30.0) then
							offsetRotY = -30.0
						end
						if (offsetRotZ > 44.0) then
							offsetRotZ = offsetRotZ - 44.0
						elseif (offsetRotZ < -44.0) then
							offsetRotZ = offsetRotZ + 44.0 
						end
						--Kentas.F.Tables.RequestWeaponAsset(Kentas.F.Tables.GetHashKey('weapon_rpg'))
						local hit, xddd = Kentas.F.Tables.Functions.RayCastCam(15000.0) 
						
						
						
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 14) then
							Kentas.F.Tables.CurrentShooting = Kentas.F.Tables.CurrentShooting + 1
							if Kentas.F.Tables.CurrentShooting > #Kentas.F.Tables.ShootingModes then
								Kentas.F.Tables.CurrentShooting = 1
							end
						end
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 15) then
							Kentas.F.Tables.CurrentShooting = Kentas.F.Tables.CurrentShooting - 1
							if Kentas.F.Tables.CurrentShooting < 1 then
								Kentas.F.Tables.CurrentShooting = #Kentas.F.Tables.ShootingModes
							end
						end

						local currentweapon = Kentas.F.Tables.GetHashKey(Kentas.F.Tables.ShootingModes[Kentas.F.Tables.CurrentShooting])

						if Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
							local hit, xddd = Kentas.F.Tables.Functions.RayCastCam(15000.0) 
							if hit then
								Kentas.F.Tables.ShootSingleBulletBetweenCoords(xddd.x+0.001, xddd.y+0.001, xddd.z+0.001, xddd.x, xddd.y, xddd.z, 1.0, true, currentweapon, Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
								__CitIn__.Wait(0)
							end
						end
						
						local camCoords       = Kentas.F.Tables.GetCamCoord(cam)			
						local v3, forward  = Kentas.F.Tables.Functions.CamRightVect(cam), Kentas.F.Tables.Functions.CamFwdVect(cam)
						
						Kentas.F.Tables.Functions.DrawTxt('Weapon: '..Kentas.F.Tables.ShootingModes[Kentas.F.Tables.CurrentShooting], 0.5, 0.957, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true)

						Kentas.F.Tables.Functions.DrawTxt('+', 0.4994, 0.4788, 0.5, 0.38, {r=0, g=0, b=0, a=255}, false, 0)
						--Kentas.F.Tables.SetTextOutline()
						Kentas.F.Tables.Functions.DrawTxt('+', 0.5, 0.482, 0.5, 0.3, {r=255, g=255, b=255, a=255}, false, 0)
								
						Kentas.F.Tables.SetHdArea(camCoords.x, camCoords.y, camCoords.z, 50.0)			
						--Kentas.F.Tables.DisableControlAction(0, 32, true) Kentas.F.Tables.DisableControlAction(0, 31, true) Kentas.F.Tables.DisableControlAction(0, 30, true) Kentas.F.Tables.DisableControlAction(0, 34, true) Kentas.F.Tables.DisableControlAction(0, 22, true) Kentas.F.Tables.DisableControlAction(0, 34, true)  Kentas.F.Tables.DisableControlAction(0, 69, true) Kentas.F.Tables.DisableControlAction(0, 70, true) Kentas.F.Tables.DisableControlAction(0, 92, true) Kentas.F.Tables.DisableControlAction(0, 114, true) Kentas.F.Tables.DisableControlAction(0, 257, true) Kentas.F.Tables.DisableControlAction(0, 263, true) Kentas.F.Tables.DisableControlAction(0, 264, true) Kentas.F.Tables.DisableControlAction(0, 331, true) Kentas.F.Tables.DisableControlAction(0, 24, true) Kentas.F.Tables.DisableControlAction(0, 25, true)
						
						Kentas.F.Tables.SetFocusArea(Kentas.F.Tables.GetCamCoord(cam).x, Kentas.F.Tables.GetCamCoord(cam).y, Kentas.F.Tables.GetCamCoord(cam).z, 0.0, 0.0, 0.0)
						Kentas.F.Tables.SetCamRot(cam, offsetRotX, offsetRotY, offsetRotZ, 2)
					end
			--end)
		end

		if Kentas.F.Tables.IsDisabledControlJustPressed(0, 47) then
			Kentas.F.Checks['TGMouse'] = not Kentas.F.Checks['TGMouse']
		end

		if Kentas.F.Checks['TGMouse'] and Kentas.F.OpenMenu then
			Kentas.F.Tables.SetMouseCursorActiveThisFrame()
			local c_x, c_y = Kentas.F.Tables.GetNuiCursorPosition() 
			local widht, height = Kentas.F.Tables.GetActiveScreenResolution()
			c_x = c_x / widht
			c_y = c_y / height 
			Kentas.F.Tables.DisableControlAction(0, 1, true) 
			Kentas.F.Tables.DisableControlAction(0, 2, true) 
			Kentas.F.Tables.DisableControlAction(0, 257, true)
			Kentas.F.Tables.DisableControlAction(0, 24, true)
			
			local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM


			if Kentas.F.Tables.Functions.CreateZone(0.15+nKDX, 0.265+nKDY, 0.2, 0.07) and Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
				_x = Kentas.F.Checks.KeyboardDragXWM - c_x
				_y = Kentas.F.Checks.KeyboardDragYWM - c_y
				Kentas.F.Checks.AlreadyDraging2 = true
			elseif Kentas.F.Tables.IsControlReleased(0, 24) then
				Kentas.F.Checks.AlreadyDraging2 = false
			end
			if Kentas.F.Checks.AlreadyDraging2 then
				Kentas.F.Checks.KeyboardDragXWM = c_x + _x
				Kentas.F.Checks.KeyboardDragYWM = c_y + _y
			end

			if Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
				__CitIn__.CreateThread(function()
					if Kentas.activemenu == 'main' then
						Kentas.F.OpenMenu = false
					else
						Kentas.activemenu = Kentas.F.submenu[Kentas.activemenu].parentmenu
						__CitIn__.Wait(1)
					end
				end)
			end
		end

		
		if Kentas.F.Checks['configuration:fadeanimation'] then
			if Kentas.F.OpenMenu then 
				Kentas.alpha = 255
			else
				Kentas.alpha = 0
			end
		end

        if Kentas.F.OpenMenu then 
            if Kentas.alpha < 255 then 
                Kentas.alpha = Kentas.alpha + 5 
            end
        else
            if Kentas.alpha > 0 then 
                Kentas.alpha = Kentas.alpha - 5
            end
        end


        if Kentas.alpha > 0 then 
            local CurrentFeature = 0
			local CurrentFeature2 = 0
            local x = 0.13
            local buttonheight = 0.022
            local buttonwidth = 0.15

            Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
            Kentas.F.drawText((Kentas.F.submenu[Kentas.activemenu].subtext):upper(), 0.147, 0.308, 0.33, 4, true, false)
		
			if #Kentas.F.submenu[Kentas.activemenu].options >= 2 and Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll ~= nil and Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].type ~= nil then
				if Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].type == "checkbox" then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 57) then
						local a = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].text
						local text, value = Kentas.F.Funcs.Binding(a.. ' Keybind')
						local bool = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].check
						Kentas.F.Checks[bool..'-keybind'] = text
						__KentasStrings__.strings:tableinsert(Kentas.F.Checks.Binds, {type = 'checkbox', val = Kentas.F.Checks[bool..'-keybind'], t = bool, identity = a, test = value})
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, {text = a..' | ('..value..')', type = 'button', func = Kentas.F.Funcs.DeleteKeybind, result = Kentas.F.Checks[bool..'-keybind']})
					end
				elseif Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].type == "button" then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 57) then
						local a = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].text
						local text, value = Kentas.F.Funcs.Binding(a.. ' Keybind')
						local bool = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].func
						local result = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].result
						if result ~= nil then
							__KentasStrings__.strings:tableinsert(Kentas.F.Checks.Binds, {type = 'button', val = text, t = bool, identity = a, test = value, r = result})
						else
							__KentasStrings__.strings:tableinsert(Kentas.F.Checks.Binds, {type = 'button', val = text, t = bool, identity = a, test = value, r = nil})
						end
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, {text = a..' | ('..value..')', type = 'button', func = Kentas.F.Funcs.DeleteKeybind, result = bool})
					end
				elseif Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].type == "submenu" then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 57) then
						local a = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].text
						local text, value = Kentas.F.Funcs.Binding(a.. ' Keybind')
						local bool = Kentas.F.submenu[Kentas.activemenu].options[Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll].menu
						__KentasStrings__.strings:tableinsert(Kentas.F.Checks.Binds, {type = 'submenu', val = text, t = bool, identity = a, test = value})
						__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Keybinds'].options, {text = a..' | ('..value..')', type = 'button', func = Kentas.F.Funcs.DeleteKeybind, result = bool})
					end
				end

			end
			if not Kentas.F.Checks['configuration:buttonholdanimation'] then
				if not Kentas.F.submenu[Kentas.activemenu].selectedfeature2 then
					Kentas.F.submenu[Kentas.activemenu].selectedfeature2 = 0
				end
			end
			
			if not Kentas.F.Checks['configuration:buttonholdanimation'] then
				Kentas.F.submenu[Kentas.activemenu].selectedfeature2 = Kentas.F.Tables.Lerp(Kentas.F.Sliders['Button-animation-delay'].value*2.5, Kentas.F.submenu[Kentas.activemenu].selectedfeature2, Kentas.F.submenu[Kentas.activemenu].selectedfeature)
			end
			
			__CitIn__.CreateThread(function()
				if Kentas.F.Tables.IsDisabledControlPressed(0, 173) and (Kentas.F.ButtonDelay or 0) < Kentas.F.Tables.GetGameTimer() then
					Kentas.F.ButtonDelay = Kentas.F.Tables.GetGameTimer() + Kentas.F.Sliders['Button-hold-delay'].value*10
					Kentas.lastkey = "down"
					if Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll) == #Kentas.F.submenu[Kentas.activemenu].options then
						Kentas.F.submenu[Kentas.activemenu].scroll=0
						Kentas.F.submenu[Kentas.activemenu].selectedfeature=1
					elseif Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll) == Kentas.maxoptcount+(Kentas.F.submenu[Kentas.activemenu].scroll) then
						Kentas.F.submenu[Kentas.activemenu].scroll=Kentas.F.submenu[Kentas.activemenu].scroll+1
					else
						Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature+1
					end
					if Kentas.F.Checks['configuration:menusounds'] then
						Kentas.F.Tables.PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
					end
				end
				if Kentas.F.Tables.IsDisabledControlPressed(0, 188) and (Kentas.F.ButtonDelay or 0) < Kentas.F.Tables.GetGameTimer() then
					Kentas.F.ButtonDelay = Kentas.F.Tables.GetGameTimer() + Kentas.F.Sliders['Button-hold-delay'].value*10
					Kentas.lastkey = "up"
					if Kentas.F.submenu[Kentas.activemenu].selectedfeature == 1 and Kentas.F.submenu[Kentas.activemenu].scroll > 0 then
						Kentas.F.submenu[Kentas.activemenu].scroll=Kentas.F.submenu[Kentas.activemenu].scroll-1
					elseif Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll-1) > 0 then
						Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature-1 
					elseif #Kentas.F.submenu[Kentas.activemenu].options > Kentas.maxoptcount then
						Kentas.F.submenu[Kentas.activemenu].scroll = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.maxoptcount
						Kentas.F.submenu[Kentas.activemenu].selectedfeature = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.F.submenu[Kentas.activemenu].scroll
					else
						Kentas.F.submenu[Kentas.activemenu].selectedfeature = #Kentas.F.submenu[Kentas.activemenu].options
					end

					if Kentas.F.Checks['configuration:menusounds'] then
						Kentas.F.Tables.PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
					end
				end
			end)

			
			--local a = #Kentas.F.submenu['ParticlesD'].options+#Kentas.F.submenu['ExploitsD'].options+#Kentas.F.submenu['SoundsD'].options+#Kentas.F.submenu['ParticlesO'].options+#Kentas.F.submenu['ExploitsO'].options+#Kentas.F.submenu['PropsO'].options+#Kentas.F.submenu['VehiclesO'].options+#Kentas.F.submenu['PedsO'].options+#Kentas.F.submenu['SoundsO'].options+#Kentas.F.submenu['AttacherO'].options+#Kentas.F.submenu['onlineOptions'].options+#Kentas.F.submenu['Destroyer'].options+#Kentas.F.submenu['Wardrobe'].options+#Kentas.F.submenu['Models'].options+#Kentas.F.submenu['Godmode'].options+#Kentas.F.submenu['Powers'].options+#Kentas.F.submenu['TRACKER'].options+#Kentas.F.submenu['ExtraSensoryOptions'].options+#Kentas.F.submenu['Crosshair'].options+#Kentas.F.submenu['LineESP'].options+#Kentas.F.submenu['CornerBoxes'].options+#Kentas.F.submenu['BoxesESP'].options+#Kentas.F.submenu['GlowingESP'].options+#Kentas.F.submenu['InfoESP'].options+#Kentas.F.submenu['BlipESP'].options+#Kentas.F.submenu['Chams'].options+#Kentas.F.submenu['Weather'].options+#Kentas.F.submenu['SkeletonESP'].options+#Kentas.F.submenu['ArrowESP'].options+#Kentas.F.submenu['Visuals'].options+#Kentas.F.submenu['Locations'].options+#Kentas.F.submenu['self'].options+#Kentas.F.submenu['WeaponSpawning'].options+#Kentas.F.submenu['WeaponCustomization'].options+#Kentas.F.submenu['CustomAmmo'].options+#Kentas.F.submenu['Friends'].options+#Kentas.F.submenu['Weapon'].options+#Kentas.F.submenu['Ramp'].options+#Kentas.F.submenu['PremadeCars'].options+#Kentas.F.submenu['AddonCars'].options+#Kentas.F.submenu['Vehicle'].options+#Kentas.F.submenu['Glife'].options+#Kentas.F.submenu['Cheater Protection'].options+#Kentas.F.submenu['100k or die'].options+#Kentas.F.submenu['Freecam'].options+#Kentas.F.submenu['RemoteCar'].options+#Kentas.F.submenu['Bypass'].options+#Kentas.F.submenu['Controls'].options+#Kentas.F.submenu['animations'].options+#Kentas.F.submenu['WorldColour'].options+#Kentas.F.submenu['Miscellaneous'].options+#Kentas.F.submenu['Commands'].options+#Kentas.F.submenu['LUAOptions'].options+#Kentas.F.submenu['Keybinds'].options+#Kentas.F.submenu['Config list'].options+#Kentas.F.submenu['Configs'].options+#Kentas.F.submenu['Configuration'].options+#Kentas.F.submenu['main'].options
			--print('options: '.. a)

            for i = 1, #Kentas.F.submenu[Kentas.activemenu].options do 
                
				
				if i > Kentas.F.submenu[Kentas.activemenu].scroll and CurrentFeature < Kentas.maxoptcount then 
                    CurrentFeature = CurrentFeature + 1


					

                    if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
                        
						Kentas.F.Tables.SetTextColour(1, 1, 1, Kentas.alpha)
						if Kentas.F.submenu[Kentas.activemenu].options[i].type ~= "sepa" then
							text = "> "..Kentas.F.submenu[Kentas.activemenu].options[i].text
						end
						
                    else
                        Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
                        text = Kentas.F.submenu[Kentas.activemenu].options[i].text
                    end
                    local y = 0.31 + (CurrentFeature * buttonheight) 
					
                    if Kentas.F.submenu[Kentas.activemenu].options[i].type == "sepa" then
                        if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
                            if Kentas.lastkey == "up" then
                                if Kentas.F.submenu[Kentas.activemenu].selectedfeature == 1 and Kentas.F.submenu[Kentas.activemenu].scroll > 0 then
                                    Kentas.F.submenu[Kentas.activemenu].scroll=Kentas.F.submenu[Kentas.activemenu].scroll-1
                                elseif Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll-1) > 0 then
                                    Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature-1
                                elseif #Kentas.F.submenu[Kentas.activemenu].options > Kentas.maxoptcount then
                                    Kentas.F.submenu[Kentas.activemenu].scroll = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.maxoptcount
                                    Kentas.F.submenu[Kentas.activemenu].selectedfeature = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.F.submenu[Kentas.activemenu].scroll
                                else
                                    Kentas.F.submenu[Kentas.activemenu].selectedfeature = #Kentas.F.submenu[Kentas.activemenu].options
                                end
                            elseif Kentas.lastkey == "down" then
                                if Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll) == #Kentas.F.submenu[Kentas.activemenu].options then
                                    Kentas.F.submenu[Kentas.activemenu].scroll=0
                                    Kentas.F.submenu[Kentas.activemenu].selectedfeature=1
                                elseif Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll) == Kentas.maxoptcount+(Kentas.F.submenu[Kentas.activemenu].scroll) then
                                    Kentas.F.submenu[Kentas.activemenu].scroll=Kentas.F.submenu[Kentas.activemenu].scroll+1
                                else
                                    Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature+1
                                end
							else
								Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature-1 
                            end
                        end
                        Kentas.F.drawText((text):upper(), x-buttonwidth/2+0.09, y-0.002, 0.33, 4, true, false, 5)
					elseif Kentas.F.submenu[Kentas.activemenu].options[i].type == "slider" then
						Kentas.F.drawText((text..' value: '.. Kentas.F.submenu[Kentas.activemenu].options[i].index.value):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
					elseif Kentas.F.submenu[Kentas.activemenu].options[i].type == "button" and Kentas.F.submenu[Kentas.activemenu].options[i].stext ~= nil then
						local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
						Kentas.F.drawText((text):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
							Kentas.F.Tables.SetTextColour(1, 1, 1, Kentas.alpha)
						else
							Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
						end
						Kentas.F.Tables.SetTextRightJustify(true)
						local nx = (x-buttonwidth/2+0.035)+nKDX
						Kentas.F.Tables.SetTextWrap(nx, nx+buttonwidth-0.002)
						Kentas.F.drawText((Kentas.F.submenu[Kentas.activemenu].options[i].stext):upper(), nx, y-0.002, 0.33, 4, false, false, 5)
					elseif Kentas.F.submenu[Kentas.activemenu].options[i].type == "combo" then
						if Kentas.F.submenu[Kentas.activemenu].options[i].xd then
							local animation = Kentas.F.submenu[Kentas.activemenu].options[i].index.b[Kentas.F.submenu[Kentas.activemenu].options[i].index.a]
							selectedIndex = '- '..animation.name..' -'
						else
							selectedIndex = '- '..Kentas.F.submenu[Kentas.activemenu].options[i].index.b[Kentas.F.submenu[Kentas.activemenu].options[i].index.a]..' -'
						end
						--normaltext
						Kentas.F.drawText((text):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						--subtext
						if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
							Kentas.F.Tables.SetTextColour(1, 1, 1, Kentas.alpha)
						else
							Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
						end
						
						local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
						Kentas.F.Tables.SetTextRightJustify(true)
						local nx = (x-buttonwidth/2+0.035)+nKDX
						Kentas.F.Tables.SetTextWrap(nx, nx+buttonwidth-0.002)
						Kentas.F.drawText((selectedIndex):upper(), nx, y-0.002, 0.33, 4, false, false, 5)

						
					else
						if Kentas.activemenu ~= 'LUAOptions' then
                        	Kentas.F.drawText((text):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						else
							Kentas.F.drawText(text, x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						end
                    end
                end
            end
			

			if Kentas.F.Checks['TGMouse'] and Kentas.F.OpenMenu then
				local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
				for i = 1, Kentas.maxoptcount do
					if i <= #Kentas.F.submenu[Kentas.activemenu].options then
						if Kentas.F.Tables.Functions.CreateZone(0.15+nKDX, (0.31 + i*buttonheight)+nKDY, buttonwidth+0.05, buttonheight) then
							Kentas.F.submenu[Kentas.activemenu].selectedfeature = i
							Kentas.F.submenu[Kentas.activemenu].selectedfeature2 = Kentas.F.submenu[Kentas.activemenu].selectedfeature
						end
					end
				end
				
				if not Kentas.F.Checks['misc:globalchat'] then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 14) then -- sc down
						Kentas.lastkey = "down"
						if Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll) == #Kentas.F.submenu[Kentas.activemenu].options then
							Kentas.F.submenu[Kentas.activemenu].scroll=0
							Kentas.F.submenu[Kentas.activemenu].selectedfeature=1
							Kentas.F.submenu[Kentas.activemenu].selectedfeature2=Kentas.F.submenu[Kentas.activemenu].selectedfeature
						elseif Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll) == Kentas.maxoptcount+(Kentas.F.submenu[Kentas.activemenu].scroll) then
							Kentas.F.submenu[Kentas.activemenu].scroll=Kentas.F.submenu[Kentas.activemenu].scroll+1
						else
							Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature+1
							Kentas.F.submenu[Kentas.activemenu].selectedfeature2=Kentas.F.submenu[Kentas.activemenu].selectedfeature
						end
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 15) then -- sc up
						Kentas.lastkey = "up"
						if Kentas.F.submenu[Kentas.activemenu].selectedfeature == 1 and Kentas.F.submenu[Kentas.activemenu].scroll > 0 then
							Kentas.F.submenu[Kentas.activemenu].scroll=Kentas.F.submenu[Kentas.activemenu].scroll-1
						elseif Kentas.F.submenu[Kentas.activemenu].selectedfeature+(Kentas.F.submenu[Kentas.activemenu].scroll-1) > 0 then
							Kentas.F.submenu[Kentas.activemenu].selectedfeature=Kentas.F.submenu[Kentas.activemenu].selectedfeature-1 
							Kentas.F.submenu[Kentas.activemenu].selectedfeature2=Kentas.F.submenu[Kentas.activemenu].selectedfeature
						elseif #Kentas.F.submenu[Kentas.activemenu].options > Kentas.maxoptcount then
							Kentas.F.submenu[Kentas.activemenu].scroll = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.maxoptcount
							Kentas.F.submenu[Kentas.activemenu].selectedfeature = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.F.submenu[Kentas.activemenu].scroll
							Kentas.F.submenu[Kentas.activemenu].selectedfeature2 = Kentas.F.submenu[Kentas.activemenu].selectedfeature
						else
							Kentas.F.submenu[Kentas.activemenu].selectedfeature = #Kentas.F.submenu[Kentas.activemenu].options
							Kentas.F.submenu[Kentas.activemenu].selectedfeature2 = Kentas.F.submenu[Kentas.activemenu].selectedfeature
						end
					end
				end
				
			end
            
            local y = 0.5 + (1 * 0.02) 
            local buttonheight = CurrentFeature*0.022
			local y_scrollbar = (0.3238 + (1 * 0.02))
			local a = #Kentas.F.submenu[Kentas.activemenu].options > Kentas.maxoptcount and math.abs(#Kentas.F.submenu[Kentas.activemenu].options-(CurrentFeature or Kentas.maxoptcount)) or 0
			local min = 0.0*a
			local add = 0.015*Kentas.F.submenu[Kentas.activemenu].scroll
			local nyyy = 0.34-0.022/2+min/2+add

			if not ShitHeight then
				ShitHeight = {
					h = 0.0,
					h2 = 0.33,
				}
			end

			--0.046+nKDX, (0.331+adding+ShitHeight.h/2)+nKDY, 0.005, ShitHeight.h

			local maxscroll1 = #Kentas.F.submenu[Kentas.activemenu].options-Kentas.maxoptcount
			local height = CurrentFeature*0.022
			local odejmnik = 0.002
			local math1 = height - odejmnik * maxscroll1
			local adding = Kentas.F.submenu[Kentas.activemenu].scroll*odejmnik
			

			local c_yn = Kentas.F.Tables.GetDisabledControlNormal(0, 240)
			if Kentas.F.Checks['TGMouse'] and Kentas.F.OpenMenu then
				local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM

				if Kentas.F.Tables.Functions.CreateZone(0.046+nKDX, (0.331+adding+ShitHeight.h/2)+nKDY, 0.005, ShitHeight.h) and Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
					Kentas.F._ocy = c_yn
					Kentas.F.holdingth = true
				elseif Kentas.F.Tables.IsControlReleased(0, 24) then
					Kentas.F.holdingth = false
				end
				if Kentas.F.holdingth and (Kentas.F.SlideDelayXD or 0) <= Kentas.F.Tables.GetGameTimer() then
					Kentas.F.SlideDelayXD = Kentas.F.Tables.GetGameTimer() + 50
					if Kentas.F._ocy <= c_yn then
						if c_yn > Kentas.F._ocy and #Kentas.F.submenu[Kentas.activemenu].options > Kentas.maxoptcount then
							Kentas.lastkey = "down"
							Kentas.F.submenu[Kentas.activemenu].selectedfeature = 1
							Kentas.F.submenu[Kentas.activemenu].scroll = Kentas.F.submenu[Kentas.activemenu].scroll+1
						end
					elseif Kentas.F._ocy >= c_yn then
						if c_yn < Kentas.F._ocy and Kentas.F.submenu[Kentas.activemenu].scroll > 0 then
							Kentas.lastkey = "up"
							Kentas.F.submenu[Kentas.activemenu].selectedfeature = 1
							Kentas.F.submenu[Kentas.activemenu].scroll = Kentas.F.submenu[Kentas.activemenu].scroll - 1
						end
					end
				end
			end

			local resX, resY = Kentas.F.Tables.GetActiveScreenResolution()

			if nyyy < 0.34 then
				nyyy = 0.34
			end

			if Kentas.F.submenu[Kentas.activemenu].scroll > a then
				Kentas.F.submenu[Kentas.activemenu].scroll = a
			end
			
			




			

            Kentas.F.Tables.DrawRect(0.15, 0.33+buttonheight/2, 0.2, buttonheight, 0, 0, 0, Kentas.alpha-95, 4)
            Kentas.F.Tables.DrawSprite('KentasMenu', 'menu_gif', 0.15, 0.275, 0.2, 0.07, 0.0, 255, 255, 255, Kentas.alpha)
            Kentas.F.Tables.DrawRect(0.15, 0.32, 0.2, 0.02, 0, 0, 0, Kentas.alpha)

			if Kentas.F.Checks['TGMouse'] and Kentas.F.OpenMenu then
				local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
				if Kentas.F.Tables.Functions.CreateZone(0.15+nKDX, (0.33+(CurrentFeature*0.021)/2)+nKDY, 0.201, (CurrentFeature*0.023)) then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
						Kentas.F.Tables.SetControlNormal(0, 191, 1.0)
					end
				end
			end

            local x = 0.15 
            local buttonheight = 0.022
            local buttonwidth = 0.2
			
			
			if not Kentas.F.Checks['configuration:buttonholdanimation'] then
				if Kentas.F.submenu[Kentas.activemenu].selectedfeature2 < 1 then
					Kentas.F.submenu[Kentas.activemenu].selectedfeature2 = 1
				end
				yy = 0.31 + ((Kentas.F.submenu[Kentas.activemenu].selectedfeature2 > Kentas.maxoptcount and Kentas.maxoptcount or Kentas.F.submenu[Kentas.activemenu].selectedfeature2) * buttonheight)  
			else
				yy = 0.31 + ((Kentas.F.submenu[Kentas.activemenu].selectedfeature > Kentas.maxoptcount and Kentas.maxoptcount or Kentas.F.submenu[Kentas.activemenu].selectedfeature) * buttonheight)  
			end
			
			Kentas.F.Tables.DrawRect(x, yy+buttonheight/2, buttonwidth, buttonheight, Kentas.F.Checks.MainR2, Kentas.F.Checks.MainG2, Kentas.F.Checks.MainB2, Kentas.alpha, 5)
			
			--Kentas.F.Tables.DrawBorderedRect(x, yy+buttonheight/2, buttonwidth+0.001, buttonheight, 0, 0, 0, Kentas.alpha)

            -- bottom
            local yy2 = 0.308 + ((#Kentas.F.submenu[Kentas.activemenu].options < Kentas.maxoptcount and #Kentas.F.submenu[Kentas.activemenu].options + 1 or Kentas.maxoptcount + 1)*buttonheight)
            Kentas.F.Tables.DrawRect(x, yy2+buttonheight/2, buttonwidth, buttonheight, 0, 0, 0, Kentas.alpha, 5)

			
			
			
	
			Kentas.F.Tables.SetTextRightJustify(true)
			local nx = (x-buttonwidth/2+0.184)
			Kentas.F.Tables.SetTextWrap(nx, nx+buttonwidth-0.002)
			Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
			local year, month, day, hour, min, sec = Kentas.F.Tables.GetLocalTime()
			
			Kentas.F.Tables.SetTextColour(255, 255, 255, Kentas.alpha)
			Kentas.F.drawText((Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll .. ' / ' .. #Kentas.F.submenu[Kentas.activemenu].options):upper(), nx, yy2, 0.33, 4, true, false, 5)

			if hour < 10 then
				hour = '0'..hour
			end
			if min < 10 then
				min = '0'..min
			end
			Kentas.F.drawText(('Time: '..hour..':'..min):upper(), (x-buttonwidth/2+0.184)-0.165, yy2, 0.33, 4, true, false, 5)
			
            for i = 1, #Kentas.F.submenu[Kentas.activemenu].options do 
                if i > Kentas.F.submenu[Kentas.activemenu].scroll and CurrentFeature2 < Kentas.maxoptcount then 
                    CurrentFeature2 = CurrentFeature2 + 1
                
					local y = 0.31 + (CurrentFeature2 * buttonheight) 
					
					


					if Kentas.F.submenu[Kentas.activemenu].options[i].type == "slider" then
						local SliderIndex = Kentas.F.submenu[Kentas.activemenu].options[i].index
						local SliderIndex2 = Kentas.F.submenu[Kentas.activemenu].options[i]
						if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then
							
							if SliderIndex.r ~= nil then
								newtext = __KentasStrings__.strings:tostring(__KentasStrings__.strings:format("%.2f", SliderIndex.value))
							else
								newtext = __KentasStrings__.strings:tostring(SliderIndex.value)
							end
							
							if Kentas.F.Tables.IsDisabledControlPressed(0, 19) and Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
								local __NVALUE__ = __KentasStrings__.strings:tonumber(Kentas.F.Tables.Functions.KBInput('Set custom value', '', 10))
								if __KentasStrings__.strings:type(__NVALUE__) == 'number' then
									SliderIndex.value = __NVALUE__
								end
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 189) and not Kentas.F.Tables.IsDisabledControlJustPressed(0, 189)then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.05
									end
								end
							elseif Kentas.F.Tables.IsDisabledControlJustPressed(0, 189) and not Kentas.F.Tables.IsDisabledControlPressed(0, 189) then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.05
									end
								end
							elseif Kentas.F.Tables.IsDisabledControlPressed(0, 190) and not Kentas.F.Tables.IsDisabledControlJustPressed(0, 190) then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 0.05
									end
								end
							elseif Kentas.F.Tables.IsDisabledControlJustPressed(0, 190) and not Kentas.F.Tables.IsDisabledControlPressed(0, 190) then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 0.05
									end
								end
							end

							--if Kentas.activemenu == "Wardrobe" then
							--	Kentas.F.Tables.SetPedPropIndex(Kentas.F.Tables.PlayerPedId(), 0, Kentas.F.Sliders['Wardrobe-Self-Hat'].value, Kentas.F.Sliders['Wardrobe-Self-Hat2'].value, 1)
							--	Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 1, Kentas.F.Sliders['Wardrobe-Self-Mask'].value, Kentas.F.Sliders['Wardrobe-Self-Mask2'].value, 1)
							--	Kentas.F.Tables.SetPedPropIndex(Kentas.F.Tables.PlayerPedId(), 1, Kentas.F.Sliders['Wardrobe-Self-Glasses'].value, Kentas.F.Sliders['Wardrobe-Self-Glasses2'].value, 1)
							--	Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 11, Kentas.F.Sliders['Wardrobe-Self-Torso'].value, Kentas.F.Sliders['Wardrobe-Self-Torso2'].value, 1)
							--	Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 8, Kentas.F.Sliders['Wardrobe-Self-TSHIRT'].value, Kentas.F.Sliders['Wardrobe-Self-TSHIRT2'].value, 1)
							--	Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 4, Kentas.F.Sliders['Wardrobe-Self-Pants'].value, Kentas.F.Sliders['Wardrobe-Self-Pants2'].value, 1)
							--	Kentas.F.Tables.SetPedComponentVariation(Kentas.F.Tables.PlayerPedId(), 6, Kentas.F.Sliders['Wardrobe-Self-Shoes'].value, Kentas.F.Sliders['Wardrobe-Self-Shoes2'].value, 1)
							--end

						end

						if SliderIndex.value > SliderIndex.maximum then
							SliderIndex.value = SliderIndex.maximum
						elseif SliderIndex.value < SliderIndex.minimum then
							SliderIndex.value = SliderIndex.minimum
						end

						local resX, resY = Kentas.F.Tables.GetActiveScreenResolution()
						if Kentas.F.Checks['TGMouse'] and Kentas.F.OpenMenu then
							local nKDX, nKDY = Kentas.F.Checks.KeyboardDragXWM, Kentas.F.Checks.KeyboardDragYWM
							local c_x = Kentas.F.Tables.GetDisabledControlNormal(0, 239)
							local c_y = Kentas.F.Tables.GetDisabledControlNormal(0, 240)
							local Vzs_x, dry_r = ((0.23 - 0.019) - (0.2095 - 0.1854))+nKDX, ((0.23 - 0.019) + (0.2364 - 0.2095))+nKDX
							if Kentas.F.Tables.Functions.CreateZone((0.23 - 0.019)+nKDX, y+nKDY, 0.05, 10/resY) then
								if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
									--Kentas.F.Tables.SetCursorLocation(Kentas.F.Tables.GetDisabledControlNormal(0, 239), (y+0.01)+nKDY)
									SliderIndex.value = math.floor((((c_x) - (Vzs_x)) / (dry_r - Vzs_x) ) * (SliderIndex.maximum - SliderIndex.minimum) - SliderIndex.minimum)
								end
							end
						end

						
						


						

                    elseif Kentas.F.submenu[Kentas.activemenu].options[i].type == "combo" then
						if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
							local selectedIndex = Kentas.F.submenu[Kentas.activemenu].options[i].index.b[Kentas.F.submenu[Kentas.activemenu].options[i].index.a]
							local itemsCount = #Kentas.F.submenu[Kentas.activemenu].options[i].index.b
							
							if Kentas.F.submenu[Kentas.activemenu].options[i].text == 'Bone' then
								local x = 0.32
								local y = 0.35
								Kentas.F.Tables.DrawSprite("BonePed", "BonePed_a", x, y, 0.1, 0.23, 0.0, 255, 255, 255, 255)

								local currentbone = Kentas.F.Combos['Bone'].b[Kentas.F.Combos['Bone'].a]
								if currentbone == "Head" then
									nx, ny = x-0.003-0.003, y-0.01-0.095
									nx2, ny2 = x-0.003, y-0.095
								elseif currentbone == "Neck" then
									nx, ny = x-0.003-0.003, y-0.01-0.08
									nx2, ny2 = x-0.003, y-0.08
								elseif currentbone == "Torso" then
									nx, ny = x-0.003-0.003, y-0.01-0.08+0.03
									nx2, ny2 = x-0.003, y-0.08+0.03
								elseif currentbone == "Left-Hand" then
									nx = x-0.041
									ny = y-0.015
									nx2 = x-0.038
									ny2 = y-0.005
								elseif currentbone == "Right-Hand" then
									nx = x-0.041+0.073
									ny = y-0.015
									nx2 = x-0.038+0.073
									ny2 = y-0.005
								elseif currentbone == "Pelvis" then
									nx = x-0.041+0.035
									ny = y-0.015
									nx2 = x-0.038+0.035
									ny2 = y-0.005
								elseif currentbone == "Left-Knee" then
									nx = x-0.041+0.023
									ny = y-0.015+0.04
									nx2 = x-0.038+0.023
									ny2 = y-0.005+0.04
								elseif currentbone == "Right-Knee" then
									nx = x-0.041+0.055
									ny = y-0.015+0.04
						
									nx2 = x-0.038+0.055
									ny2 = y-0.005+0.04
								end

								Kentas.F.Tables.Functions.DrawTxt('+', nx+Kentas.F.Checks.KeyboardDragXWM, ny+Kentas.F.Checks.KeyboardDragYWM, 0.35, 0.25, {r=255, g=255, b=255, a=255}, false, 0, true)
							end
							
							if Kentas.F.Tables.IsDisabledControlPressed(0, 189) and (Kentas.F.ComboDelay or 0) <= Kentas.F.Tables.GetGameTimer() then -- left
								Kentas.F.ComboDelay = Kentas.F.Tables.GetGameTimer() + Kentas.F.Sliders['Combo-hold-delay'].value*10
								if Kentas.F.Checks['configuration:menusounds'] then
									Kentas.F.Tables.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
								end
								if Kentas.F.submenu[Kentas.activemenu].options[i].index.a > 1 then 
									Kentas.F.submenu[Kentas.activemenu].options[i].index.a = Kentas.F.submenu[Kentas.activemenu].options[i].index.a - 1 
								else 
									Kentas.F.submenu[Kentas.activemenu].options[i].index.a = itemsCount 
								end
							elseif Kentas.F.Tables.IsDisabledControlPressed(0, 190) and (Kentas.F.ComboDelay or 0) <= Kentas.F.Tables.GetGameTimer() then -- right
								Kentas.F.ComboDelay = Kentas.F.Tables.GetGameTimer() + Kentas.F.Sliders['Combo-hold-delay'].value*10
								if Kentas.F.Checks['configuration:menusounds'] then
									Kentas.F.Tables.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
								end
								if Kentas.F.submenu[Kentas.activemenu].options[i].index.a < itemsCount then 
									Kentas.F.submenu[Kentas.activemenu].options[i].index.a = Kentas.F.submenu[Kentas.activemenu].options[i].index.a + 1 
								else 
									Kentas.F.submenu[Kentas.activemenu].options[i].index.a = 1 
								end
							end


							
							if Kentas.F.submenu[Kentas.activemenu].options[i].text == "Handguns" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Handguns'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Handguns'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Handguns'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Melees" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Melees'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Melees'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Melees'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "SMG" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['SMG'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['SMG'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['SMG'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Rifles" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Rifle'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Rifle'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Rifle'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Shotguns" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Shotguns'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Shotguns'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Shotguns'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Heavy" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Heavy'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Heavy'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Heavy'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Snipers" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Snipers'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Snipers'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Snipers'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Throwable" then
								local _ccur = selectedIndex	
								local link = Kentas.F.Combos['Throwable'].c[_ccur]
								if Kentas.F.ImageUrl ~= Kentas.F.Combos['Throwable'].c[_ccur] then
									Kentas.F.ImageUrl = Kentas.F.Combos['Throwable'].c[_ccur]
									Kentas.F.Tables.SetDuiUrl(Kentas.F.WepDuibanner, Kentas.F.ImageUrl)
								end
							end

							if Kentas.F.submenu[Kentas.activemenu].options[i].text == "Male" then
								local _ccur = selectedIndex
								Kentas.F.lastselectedped = selectedIndex
								if Kentas.F.ImageUrl ~= 'https://docs.fivem.net/peds/'.._ccur..'.webp' then
									Kentas.F.ImageUrl = 'https://docs.fivem.net/peds/'.._ccur..'.webp'
									Kentas.F.Tables.SetDuiUrl(Kentas.F.PedsDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Female" then
								local _ccur = selectedIndex
								Kentas.F.lastselectedped = selectedIndex
								if Kentas.F.ImageUrl ~= 'https://docs.fivem.net/peds/'.._ccur..'.webp' then
									Kentas.F.ImageUrl = 'https://docs.fivem.net/peds/'.._ccur..'.webp'
									Kentas.F.Tables.SetDuiUrl(Kentas.F.PedsDuibanner, Kentas.F.ImageUrl)
								end
							elseif Kentas.F.submenu[Kentas.activemenu].options[i].text == "Animals" then
								local _ccur = selectedIndex
								Kentas.F.lastselectedped = selectedIndex
								if Kentas.F.ImageUrl ~= 'https://docs.fivem.net/peds/'.._ccur..'.webp' then
									Kentas.F.ImageUrl = 'https://docs.fivem.net/peds/'.._ccur..'.webp'
									Kentas.F.Tables.SetDuiUrl(Kentas.F.PedsDuibanner, Kentas.F.ImageUrl)
								end
							end

							

							if Kentas.activemenu == "Models" then
								Kentas.F.Tables.DrawRect(0.28, y+0.061, 0.05, 0.05*2.5, 22, 22, 19, 255)
								Kentas.F.Tables.DrawSprite('LoadGifPed', 'LoadGifPed_s', 0.28, y+0.061, 0.05, 0.05*2.5, 0.0, 255, 255, 255, 255)
							end
							if Kentas.activemenu == "WeaponSpawning" then
								Kentas.F.Tables.DrawRect(0.31, y+0.054, 0.1, 0.05*2.2, 22, 22, 19, 255)
								Kentas.F.Tables.DrawSprite('LoadGifWep', 'LoadGifWep_s', 0.31, y+0.054, 0.1, 0.05*2.2, 0.0, 255, 255, 255, 255)
							end
						end
						
					
					elseif Kentas.F.submenu[Kentas.activemenu].options[i].type == "sepa" then	
                        if not Kentas.F.Tables.HasStreamedTextureDictLoaded('mpentry') then
                            Kentas.F.Tables.RequestStreamedTextureDict('mpentry')
                        end
						
                        Kentas.F.Tables.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.15, y+0.02, buttonwidth+0.07, 0.0015, 0.0, Kentas.F.Checks.MainR, Kentas.F.Checks.MainG, Kentas.F.Checks.MainB, 255, 4)
                    elseif Kentas.F.submenu[Kentas.activemenu].options[i].type == "checkbox" then
                        if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
                            if Kentas.F.Tables.IsDisabledControlJustPressed(0, 191) and not Kentas.F.Tables.InputEnabled then 
                                --Kentas.F.Checked = not Kentas.F.Checked
                                if Kentas.F.Checks[Kentas.F.submenu[Kentas.activemenu].options[i].check] then 
                                    Kentas.F.Checks[Kentas.F.submenu[Kentas.activemenu].options[i].check] = false
                                elseif not Kentas.F.Checks[Kentas.F.submenu[Kentas.activemenu].options[i].check] then 
                                    Kentas.F.Checks[Kentas.F.submenu[Kentas.activemenu].options[i].check] = true
                                end
								--Kentas.F.Tables.PlaySoundFrontend(-1, 'WAYPOINT_SET', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                            end
                        end
                        if not Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check] then
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check] = {
                                r = 0,
                                g = 0,
                                b = 0,
                                x = 0.224,
                            }
                        end
                        if Kentas.F.Checks[Kentas.F.submenu[Kentas.activemenu].options[i].check] then
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].r = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].r, 25)
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].g = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].g, 255)
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].b = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].b, 25)
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].x = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].x, 0.224+0.011)
                        else
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].r = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].r, 255) 
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].g = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].g, 25)
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].b = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].b, 25)
                            
                            Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].x = Kentas.F.Tables.Lerp(0.04, Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].x, 0.224)
                        end
                        

                        local resX, resY = Kentas.F.Tables.GetActiveScreenResolution()
	                    Kentas.F.Tables.DrawRect(0.23, y+0.011, 27/resX, 3/resY, 0, 0, 0, Kentas.alpha, 5)
                        Kentas.F.Tables.DrawSprite('KentasCheckboxDict', 'KentasCheckbox', Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].x, y+0.011, 0.007, 0.007 * Kentas.F.Tables.GetAspectRatio(), 0.0, math.ceil(Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].r), math.ceil(Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].g), math.ceil(Kentas.F.Tables.Anim[Kentas.F.submenu[Kentas.activemenu].options[i].check].b), Kentas.alpha, 5)
                    end
                    
                    if Kentas.F.Tables.IsDisabledControlJustPressed(0, 191) and not Kentas.F.Tables.InputEnabled then 
                        if Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then
                            __CitIn__.CreateThread(function()
								local submen = Kentas.F.submenu[Kentas.activemenu].options[i].type
								if submen ~= nil and submen == "submenu" or submen == "checkbox" or submen == "button" or submen == "slider" or submen == "combo" then
									if submen == "button" and Kentas.F.submenu[Kentas.activemenu].options[i].result ~= nil then
										Kentas.F.submenu[Kentas.activemenu].options[i].func(Kentas.F.submenu[Kentas.activemenu].options[i].result)
									end
									if Kentas.activemenu ~= "Keybinds" then
										if submen == "submenu" then
											if Kentas.activemenu == 'online' then
												Kentas.F.SelectedPlayer = Kentas.F.submenu[Kentas.activemenu].options[i].player
											end
											Kentas.parentmenu = Kentas.activemenu 
											Kentas.activemenu = Kentas.F.submenu[Kentas.activemenu].options[i].menu
											__CitIn__.Wait(1)
										end
										if Kentas.F.Checks['configuration:menusounds'] then
											Kentas.F.Tables.PlaySoundFrontend(-1, 'WAYPOINT_SET', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
										end
										if submen == "button" and Kentas.F.submenu[Kentas.activemenu].options[i].result == nil or submen == "combo" then
											Kentas.F.submenu[Kentas.activemenu].options[i].func()
										end
									end
									if #Kentas.F.submenu[Kentas.activemenu].options >= 2 and Kentas.F.submenu[Kentas.activemenu].options[i] then
										if Kentas.F.submenu[Kentas.activemenu].options[i].text == "aimbot keybind" then
											Kentas.F.submenu[Kentas.activemenu].options[i].func()
										end
										if Kentas.F.submenu[Kentas.activemenu].options[i].text == "open menu" then
											Kentas.F.submenu[Kentas.activemenu].options[i].func()
										end
									end
									
								end
							
							end)
                        end
						
						
                    end
                    if Kentas.F.Tables.IsDisabledControlJustPressed(0, 194) and Kentas.F.submenu[Kentas.activemenu].selectedfeature+Kentas.F.submenu[Kentas.activemenu].scroll == i then 
                        __CitIn__.CreateThread(function()
							if Kentas.F.Checks['configuration:menusounds'] then
								Kentas.F.Tables.PlaySoundFrontend(-1, 'BACK', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
							end
                            if Kentas.activemenu == 'main' then
                                Kentas.F.OpenMenu = not Kentas.F.OpenMenu 
                            else
                                Kentas.activemenu = Kentas.F.submenu[Kentas.activemenu].parentmenu
                                __CitIn__.Wait(1)
                            end
                        end)
                    end
                end
            end
        end
		

		if Kentas.activemenu == 'onlineOptions' then
			Kentas.F.Tables.Functions.InfoAboutPlayer(Kentas.F.SelectedPlayer)
		elseif Kentas.activemenu == 'Wardrobe' then
			for i = 1, Kentas.F.Tables.GetNumberOfPedDrawableVariations(Kentas.F.Tables.PlayerPedId(), 0) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-hat'].b, i)
			end
			for ia = 1, Kentas.F.Tables.GetNumberOfPedDrawableVariations(Kentas.F.Tables.PlayerPedId(), 1) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-mask'].b, ia)
			end
			for ib = 1, Kentas.F.Tables.GetNumberOfPedPropDrawableVariations(Kentas.F.Tables.PlayerPedId(), 1) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-glasses'].b, ib)
			end
			for ib = 1, Kentas.F.Tables.GetNumberOfPedDrawableVariations(Kentas.F.Tables.PlayerPedId(), 3) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-Torso'].b, ib)
			end
			for ib = 1, Kentas.F.Tables.GetNumberOfPedDrawableVariations(Kentas.F.Tables.PlayerPedId(), 8) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-TSHIRT'].b, ib)
			end
			for ib = 1, Kentas.F.Tables.GetNumberOfPedDrawableVariations(Kentas.F.Tables.PlayerPedId(), 4) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-Pants'].b, ib)
			end
			for ib = 1, Kentas.F.Tables.GetNumberOfPedDrawableVariations(Kentas.F.Tables.PlayerPedId(), 6) do
				__KentasStrings__.strings:tableinsert(Kentas.F.Combos['wardrobe-Shoes'].b, ib)
			end
		elseif Kentas.activemenu == 'Glife' then
			Kentas.F.submenu['Glife'].options = {}
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Infinite Ammo', type = 'checkbox', bind = 'customammo:Infinite Ammov2', check = 'customammo:InfiniteAmmov2'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Teleport zombies', type = 'checkbox', bind = 'glife:Teleport zombies', check = 'glife:Teleportzombies'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Looting custom', type = 'sepa', bind = ''})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Kill', type = 'checkbox', bind = 'glife:Kill', check = 'glife:Kill'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Invisible', type = 'checkbox', bind = 'glife:Invisible', check = 'glife:Invisible'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Auto Looting', type = 'checkbox', bind = 'glife:Auto Looting', check = 'glife:AutoLooting'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Vehicle stealer', type = 'sepa', bind = ''})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Auto Steal', type = 'checkbox', bind = 'glife:Auto Steal', check = 'glife:Auto Steal'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'Empty check', type = 'checkbox', bind = 'glife:Empty check', check = 'glife:Empty check'})
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = 'all vehicles', type = 'sepa', bind = ''})

			if #Kentas.F.submenu['Glife'].options > Kentas.maxoptcount then
				if Kentas.F.submenu['Glife'].scroll > #Kentas.F.submenu['Glife'].options-Kentas.maxoptcount then
				  	Kentas.F.submenu['Glife'].scroll = #Kentas.F.submenu['Glife'].options-Kentas.maxoptcount
				end
			end


			for vehicles in Kentas.F.Tables.Functions.EnumerateVehicles() do
				if vehicles ~= nil then
					__KentasStrings__.strings:tableinsert(Kentas.F.submenu['Glife'].options, {text = Kentas.F.Tables.GetDisplayNameFromVehicleModel(Kentas.F.Tables.GetEntityModel(vehicles)), bind = 'glife:'..vehicles, type = 'button', func = function() 
						local seats = Kentas.F.Tables.GetVehicleMaxNumberOfPassengers(vehicles)
						for i = 0, seats do
							if Kentas.F.Tables.IsVehicleSeatFree(vehicles, i) then
								Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), vehicles, i)
							end
						end
					end})
				end
			end
			
		elseif Kentas.activemenu == 'online' then
			--[[local players = Kentas.F.Tables.GetActivePlayers()
			if Kentas.F.allplayers ~= #players then
				Kentas.F.submenu['online'].options = {}
				Kentas.F.OnlinePlayers.T = {}

				for k, v in __KentasStrings__.strings:pairs(players) do
					__KentasStrings__.strings:tableinsert(Kentas.F.OnlinePlayers.T, Kentas.F.Tables.GetPlayerServerId(v))
				end


				__KentasStrings__.strings:tableinsert(Kentas.F.submenu['online'].options, {text = 'Destroyer', type = 'submenu', bind = 'main:Destroyer', menu = 'Destroyer', player = nil})
				for k,v in Kentas.F.Tables.Functions.pairsSorted(Kentas.F.OnlinePlayers.T) do
					__KentasStrings__.strings:tableinsert(Kentas.F.submenu['online'].options, {text = '[' .. v .. '] ' .. Kentas.F.Tables.GetPlayerName(Kentas.F.Tables.GetPlayerFromServerId(v)), bind = v..':playergay', type = 'submenu', menu = 'onlineOptions', player = Kentas.F.Tables.GetPlayerFromServerId(v), func = function() end})
				end
				Kentas.F.allplayers = #players
			end]]
			if #Kentas.F.submenu['online'].options > Kentas.maxoptcount then
				if Kentas.F.submenu['online'].scroll > #Kentas.F.submenu['online'].options-Kentas.maxoptcount then
				  	Kentas.F.submenu['online'].scroll = #Kentas.F.submenu['online'].options-Kentas.maxoptcount
				end
			end

		
			
			local players = Kentas.F.Tables.GetActivePlayers()
			Kentas.F.submenu['online'].options = {}
			__KentasStrings__.strings:tableinsert(Kentas.F.submenu['online'].options, {text = 'Destroyer', type = 'submenu', bind = 'main:Destroyer', menu = 'Destroyer', player = nil})
			for k, v in __KentasStrings__.strings:pairs(players) do
				__KentasStrings__.strings:tableinsert(Kentas.F.submenu['online'].options, {text = '[' .. Kentas.F.Tables.GetPlayerServerId(v) .. '] ' .. Kentas.F.Tables.GetPlayerName(v), bind = v..':playergay', type = 'submenu', menu = 'onlineOptions', player = v, func = function() end})
			end
		end

		for k, v in __KentasStrings__.strings:pairs(Kentas.F.Checks.Binds) do
			if v.val ~= 12345 then
				if v.type == "checkbox" then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, v.val) then
						if Kentas.F.Checks[__KentasStrings__.strings:tostring(v.t)] then 
							Kentas.F.Checks[__KentasStrings__.strings:tostring(v.t)] = false
						elseif not Kentas.F.Checks[__KentasStrings__.strings:tostring(v.t)] then 
							Kentas.F.Checks[__KentasStrings__.strings:tostring(v.t)] = true
						end
					end
				elseif v.type == "button" then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, v.val) then
						if v.r ~= nil then
							v.t(v.r)
						else
							v.t(v.r)
						end
					end
				elseif v.type == "submenu" then
					if Kentas.F.Tables.IsDisabledControlJustPressed(0, v.val) then
						Kentas.activemenu = v.t
					end
				end
			end
		end

		Kentas.F.Tables.Functions.LastVehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), true)
    end
end)

__CitIn__.CreateThread(function()
	while Kentas.enabled do
		__CitIn__.Wait(1)
		if Kentas.F.Checks['misc:freecam'] then
			if Kentas.F.ThisCamFromFreecam == nil then
				Kentas.F.ThisCamFromFreecam = Kentas.F.Tables.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				cam = Kentas.F.ThisCamFromFreecam
			end

			Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
			Kentas.F.Tables.SetCamActive(Kentas.F.ThisCamFromFreecam, true)
			Kentas.F.Tables.SetCamCoord(Kentas.F.ThisCamFromFreecam, Kentas.F.Tables.GetGameplayCamCoord())
			
			local offsetRotX = Kentas.F.Tables.GetGameplayCamRot(2).x
			local offsetRotY = Kentas.F.Tables.GetGameplayCamRot(2).y
			local offsetRotZ = Kentas.F.Tables.GetGameplayCamRot(2).z
			
			
			while Kentas.F.Tables.DoesCamExist(Kentas.F.ThisCamFromFreecam) do
				__CitIn__.Wait(0)
				
				if not Kentas.F.Checks['misc:freecam'] then
					Kentas.F.Tables.DestroyCam(Kentas.F.ThisCamFromFreecam)
					Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
					Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
					Kentas.F.Tables.FreezeEntityPosition(Kentas.F.Tables.PlayerPedId(), false)
					Kentas.F.ThisCamFromFreecam = nil
					break
				end
					local playerRot = Kentas.F.Tables.GetEntityRotation(Kentas.F.Tables.PlayerPedId(), 2)
							
					local rotX = playerRot.x
					local rotY = playerRot.y
					local rotZ = playerRot.z
					offsetRotX = offsetRotX - (Kentas.F.Tables.GetDisabledControlNormal(1, 2) * 8.0)
					offsetRotZ = offsetRotZ - (Kentas.F.Tables.GetDisabledControlNormal(1, 1) * 8.0)
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
					local x, y, z = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam))
					local camCoords = Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam)			
					local v3, forward = Kentas.F.Tables.Functions.CamRightVect(Kentas.F.ThisCamFromFreecam), Kentas.F.Tables.Functions.CamFwdVect(Kentas.F.ThisCamFromFreecam)
					local speedMultiplier = nil	
					local currentmode = Kentas.F.Tables.Functions.FreecamModes[Kentas.F.Tables.Functions.FreecamMode]
					local xspeed = Kentas.F.Sliders['freecam-speed'].value
					local currenttext = currentmode..' | Speed: '..xspeed..' | ('..Kentas.F.Tables.Functions.FreecamMode..' / '..#Kentas.F.Tables.Functions.FreecamModes..')'
					Kentas.F.Tables.Functions.DrawTxt(currenttext, 0.5, 0.957, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true)
					Kentas.F.Tables.SetTextOutline()
					Kentas.F.Tables.Functions.DrawTxt('+', 0.5, 0.487, 0.5, 0.3, {r=255, g=255, b=255, a=255}, true, 0)
					Kentas.F.Tables.SetCamFov(Kentas.F.ThisCamFromFreecam, Kentas.F.Sliders['freecam-fov'].value+0.0)
					Kentas.F.Tables.SetHdArea(camCoords.x, camCoords.y, camCoords.z, 50.0)			
					Kentas.F.Tables.DisableAllControlActions()
					Kentas.F.Tables.FreezeEntityPosition(Kentas.F.Tables.PlayerPedId(), true)
					if Kentas.F.Tables.IsDisabledControlPressed(0, 21) then					
						speedMultiplier = 3.0*xspeed
					elseif Kentas.F.Tables.IsDisabledControlPressed(0, 36) then					
						speedMultiplier = 0.025*xspeed			
					else					
						speedMultiplier = 0.25*xspeed			
					end					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 32)  then					
						local newCamPos = camCoords + forward * speedMultiplier					
						Kentas.F.Tables.SetCamCoord(Kentas.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end							
					if Kentas.F.Tables.IsDisabledControlPressed(0, 33)  then					
						local newCamPos = camCoords + forward * -speedMultiplier					
						Kentas.F.Tables.SetCamCoord(Kentas.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end							
					if Kentas.F.Tables.IsDisabledControlPressed(0, 34)  then
						local newCamPos = camCoords + v3 * -speedMultiplier					
						Kentas.F.Tables.SetCamCoord(Kentas.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end							
					if Kentas.F.Tables.IsDisabledControlPressed(0, 30)  then					
						local newCamPos = camCoords + v3 * speedMultiplier					
						Kentas.F.Tables.SetCamCoord(Kentas.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end		
			
					if (Kentas.F.Tables.IsDisabledControlPressed(1, 21)) then -- SHIFT
						z = z + (0.1 * 2.5)
					end
					if (Kentas.F.Tables.IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
						z = z - (0.1 * 0.5)
					end
					Kentas.F.Tables.SetFocusArea(Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam).x, Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam).y, Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam).z, 0.0, 0.0, 0.0)
					Kentas.F.Tables.SetCamRot(Kentas.F.ThisCamFromFreecam, offsetRotX, offsetRotY, offsetRotZ, 2)
					local entity = Kentas.F.Tables.Functions.GetEntityInFrontOfCam()
					local hit, Markerloc = Kentas.F.Tables.Functions.RayCastCam(15000.0) 
		
					if Kentas.F.Tables.IsDisabledControlJustPressed(1, 14) then
						Kentas.F.Tables.Functions.FreecamMode = Kentas.F.Tables.Functions.FreecamMode + 1
						if Kentas.F.Tables.Functions.FreecamMode > #Kentas.F.Tables.Functions.FreecamModes then
							Kentas.F.Tables.Functions.FreecamMode = 1
						end
					end
					if Kentas.F.Tables.IsDisabledControlJustPressed(1, 15) then
						Kentas.F.Tables.Functions.FreecamMode = Kentas.F.Tables.Functions.FreecamMode - 1
						if Kentas.F.Tables.Functions.FreecamMode < 1 then
							Kentas.F.Tables.Functions.FreecamMode = #Kentas.F.Tables.Functions.FreecamModes
						end
					end
					
					if Kentas.F.Checks['misc:freecamcoords'] then
						Kentas.F.Tables.SetTextCentre(true)
						local xx2 = __KentasStrings__.strings:tonumber(__KentasStrings__.strings:format("%.2f", Markerloc.x))
						local yy2 = __KentasStrings__.strings:tonumber(__KentasStrings__.strings:format("%.2f", Markerloc.y))
						local zz2 = __KentasStrings__.strings:tonumber(__KentasStrings__.strings:format("%.2f", Markerloc.z))
						if xx2 == 0.0 or yy2 == 0.0 or zz2 == 0.0 then
							text = 'Not found!'
						else
							text = 'X: '..xx2..' Y: '..yy2..' Z: '..zz2
						end 
						Kentas.F.Tables.Functions.DrawTxt(text, 0.5035, 0.501, 0.5, 0.25, {r=255, g=255, b=255, a=255}, false, 4)
					end
		
					if currentmode == 'Look Around' then
						if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
							if entity ~= nil then
								if not Kentas.F.Tables.Functions.Hovering then
									nentity = entity
								end
							end
							
							Kentas.F.Tables.Functions.Hovering = true
						else
							Kentas.F.Tables.Functions.Hovering = false
						end
						if Kentas.F.Tables.DoesEntityExist(nentity) then
							if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
								Kentas.F.Tables.Functions.Hovering = true
							else
								Kentas.F.Tables.Functions.Hovering = false
							end
						end
						if Kentas.F.Tables.Functions.Hovering then
							local coords = Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam) + (Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetCamRot(Kentas.F.ThisCamFromFreecam, 2)) * 15)
							Kentas.F.Tables.NetworkHasControlOfEntity(nentity)
							Kentas.F.Tables.SetEntityCoords(nentity, coords)
						end
					elseif currentmode == 'Teleporting' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Kentas.F.Tables.SetEntityCoords(Kentas.F.Tables.PlayerPedId(), Markerloc.x, Markerloc.y, Markerloc.z)
						end
					elseif currentmode == 'Player Bug' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if entity ~= 0 and Kentas.F.Tables.DoesEntityExist(entity) and Kentas.F.Tables.GetEntityType(entity) ~= 0 or nil then
								local prop = Kentas.F.Tables.GetHashKey('prop_atm_01')
								while not Kentas.F.Tables.HasModelLoaded(prop) do
									__CitIn__.Wait(0) 
									Kentas.F.Tables.RequestModel(prop)
								end
								local prop = Kentas.F.Tables.CreateObject(prop, 0, 0, 0, true, true, false)
								Kentas.F.Tables.SetEntityVisible(prop, 0, 0)
								Kentas.F.Tables.AttachEntityToEntity(prop, entity, Kentas.F.Tables.GetPedBoneIndex(entity, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
							end
						end
					elseif currentmode == 'Shooting' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Kentas.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1.0, true, Kentas.F.Tables.GetHashKey('weapon_combatpistol'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
						elseif Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
							Kentas.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1.0, true, Kentas.F.Tables.GetHashKey('weapon_combatpistol'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
						end
					elseif currentmode == 'Taze' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							
							Kentas.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Kentas.F.Tables.GetHashKey('weapon_stungun'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
						elseif Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
							Kentas.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Kentas.F.Tables.GetHashKey('weapon_stungun'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
						end
					elseif currentmode == 'RPG' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Kentas.F.Tables.RequestWeaponAsset(Kentas.F.Tables.GetHashKey('weapon_rpg'))
							Kentas.F.Tables.ShootSingleBulletBetweenCoords(Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam) + (Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetCamRot(Kentas.F.ThisCamFromFreecam, 2)) * 15), Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Kentas.F.Tables.GetHashKey('weapon_rpg'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
						elseif Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
							Kentas.F.Tables.RequestWeaponAsset(Kentas.F.Tables.GetHashKey('weapon_rpg'))
							Kentas.F.Tables.ShootSingleBulletBetweenCoords(Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam) + (Kentas.F.Tables.Functions.RotToDir(Kentas.F.Tables.GetCamRot(Kentas.F.ThisCamFromFreecam, 2)) * 15), Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Kentas.F.Tables.GetHashKey('weapon_rpg'), Kentas.F.Tables.PlayerPedId(), true, false, -1.0)
						end
					elseif currentmode == 'Fire' then
						if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
							Kentas.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire", Markerloc.x, Markerloc.y, Markerloc.z, 0, 0, 0, 0.3, 0, 0, 0)
						end	
					elseif currentmode == 'Props' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if Kentas.F.IsCustomPropmen == 'random' then
								currentprop = Kentas.F.Tables.Functions.PropsSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.PropsSpawnerModes)]
							else
								currentprop = Kentas.F.IsCustomPropmen
							end
							local __prophash__ = Kentas.F.Tables.GetHashKey(currentprop)
							Kentas.F.Tables.CreateObject(__prophash__, Markerloc.x, Markerloc.y, Markerloc.z, 1, 1, 1)
						end
						
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Kentas.F.Tables.Functions.KBInput('prop to select', '', 25)
							Kentas.F.IsCustomPropmen = __NVALUE__
						end

						Kentas.F.Tables.Functions.DrawTxt('RMB To select prop | '..Kentas.F.IsCustomPropmen, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
					elseif currentmode == 'Ped Spawning' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Kentas.F.Tables.Functions.KBInput('vehicle to select', '', 25)
							Kentas.F.IsCustomPedMen = __NVALUE__
						end

						Kentas.F.Tables.Functions.DrawTxt('RMB To select ped | '..Kentas.F.IsCustomPedMen, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								if Kentas.F.IsCustomPedMen == 'random' then
									currentped = Kentas.F.Tables.Functions.PedsSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.PedsSpawnerModes)]
								else
									currentped = Kentas.F.IsCustomPedMen
								end
								local __pedmodel__ = Kentas.F.Tables.GetHashKey(currentped)		
								Kentas.F.Tables.RequestModel(__pedmodel__)
								while not Kentas.F.Tables.HasModelLoaded(__pedmodel__) do
									__CitIn__.Wait(10)
									Kentas.F.Tables.RequestModel(__pedmodel__)
								end	
								Kentas.F.Tables.CreatePed(21, __pedmodel__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, true)
							end)
						end
					elseif currentmode == 'Vehicles Spammer' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								for i = 1, 10 do
									local currentveh = Kentas.F.Tables.Functions.VehiclesSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.VehiclesSpawnerModes)]
									local __VehicleHash__ = Kentas.F.Tables.GetHashKey(currentveh)
									Kentas.F.Tables.RequestModel(__VehicleHash__)
									while not Kentas.F.Tables.HasModelLoaded(__VehicleHash__) do
										__CitIn__.Wait(0)
									end
									Kentas.F.Tables.CreateVehicle(__VehicleHash__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
								end
							end)
						end
					elseif currentmode == 'Ped Spammer' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								for i = 1, 10 do
									local currentped = Kentas.F.Tables.Functions.PedsSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.PedsSpawnerModes)]
									local __pedmodel__ = Kentas.F.Tables.GetHashKey(currentped)		
									Kentas.F.Tables.RequestModel(__pedmodel__)
									while not Kentas.F.Tables.HasModelLoaded(__pedmodel__) do
										__CitIn__.Wait(10)
										Kentas.F.Tables.RequestModel(__pedmodel__)
									end	
									Kentas.F.Tables.CreatePed(21, __pedmodel__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, true)
								end
							end)
						end
					elseif currentmode == 'Ptfx Spammer' then
						--local p1 = Kentas.F.Tables.Functions.ParticleModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.ParticleModes)]
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 190) then
							Kentas.F.Tables.Functions.ParticleMode = Kentas.F.Tables.Functions.ParticleMode + 1
							if Kentas.F.Tables.Functions.ParticleMode > #Kentas.F.Tables.Functions.ParticleModes then
								Kentas.F.Tables.Functions.ParticleMode = 1
							end
						end
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 189) then
							Kentas.F.Tables.Functions.ParticleMode = Kentas.F.Tables.Functions.ParticleMode - 1
							if Kentas.F.Tables.Functions.ParticleMode < 1 then
								Kentas.F.Tables.Functions.ParticleMode = #Kentas.F.Tables.Functions.ParticleModes
							end
						end
						
						if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
							__CitIn__.CreateThread(function()
								Kentas.F.Tables.SpawnParticle(Kentas.F.Tables.Functions.ParticleModes[Kentas.F.Tables.Functions.ParticleMode].a, Kentas.F.Tables.Functions.ParticleModes[Kentas.F.Tables.Functions.ParticleMode].b, Markerloc.x, Markerloc.y, Markerloc.z, 0, 0, 0, Kentas.F.Tables.Functions.ParticleSizel+0.0, 0, 0, 0)
							end)
						end
						if Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
							local nsize = __KentasStrings__.strings:tonumber(Kentas.F.Tables.Functions.KBInput('Size', '', 25))
							if __KentasStrings__.strings:type(nsize) == 'number' then
								Kentas.F.Tables.Functions.ParticleSizel = nsize+0.0
							end
						end
						Kentas.F.Tables.Functions.DrawTxt('~c~Particle: ~o~'..Kentas.F.Tables.Functions.ParticleModes[Kentas.F.Tables.Functions.ParticleMode].c .. ' ~c~| ~o~('..Kentas.F.Tables.Functions.ParticleSizel..') ~c~| ~o~RMB to change', 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						
					
					elseif currentmode == 'Vehicles' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Kentas.F.Tables.Functions.KBInput('vehicle to select', '', 25)
							Kentas.F.IsCustomVehmen = __NVALUE__
						end
						Kentas.F.Tables.Functions.DrawTxt('RMB To select vehicle | '..Kentas.F.IsCustomVehmen, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								if Kentas.F.IsCustomVehmen == 'random' then
									currentveh = Kentas.F.Tables.Functions.VehiclesSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.VehiclesSpawnerModes)]
								else
									currentveh = Kentas.F.IsCustomVehmen
								end
								local __VehicleHash__ = Kentas.F.Tables.GetHashKey(currentveh)
								Kentas.F.Tables.RequestModel(__VehicleHash__)
								while not Kentas.F.Tables.HasModelLoaded(__VehicleHash__) do
									__CitIn__.Wait(0)
								end
								Kentas.F.Tables.CreateVehicle(__VehicleHash__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
							end)
						end
					elseif currentmode == 'Entity Deleter' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if entity ~= nil then
								Kentas.F.Tables.DeleteEntity(entity)
							end
						end
					elseif currentmode == 'Freezer' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if entity ~= nil then
								Kentas.F.Tables.FreezeEntityPosition(entity, true)
							end
						end
					elseif currentmode == 'Explosions' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Kentas.F.Tables.AddExplode(Markerloc.x, Markerloc.y, Markerloc.z, 7, 1234.0, true, false, 0.0)
						end
					elseif currentmode == 'Car stealer' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) and Kentas.F.Tables.DoesEntityExist(entity) and Kentas.F.Tables.IsEntityAVehicle(entity) then
							Kentas.F.Tables.NetworkRequestControlOfEntity(entity)
							Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), entity, 4)
							Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), entity, 3)
							Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), entity, 2)
							Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), entity, 1)
							Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), entity, 0)
							Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.PlayerPedId(), entity, -1)
						end
					elseif currentmode == 'Shoot vehicles' then
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Kentas.F.Tables.Functions.KBInput('vehicle to select', '', 25)
							Kentas.F.IsCustomVehmen2 = __NVALUE__
						end
						Kentas.F.Tables.Functions.DrawTxt('RMB To select vehicle | '..Kentas.F.IsCustomVehmen2, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						
						if Kentas.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if Kentas.F.IsCustomVehmen2 == 'random' then
								currentveh = Kentas.F.Tables.Functions.VehiclesSpawnerModes[__KentasStrings__.strings:random(1, #Kentas.F.Tables.Functions.VehiclesSpawnerModes)]
							else
								currentveh = Kentas.F.IsCustomVehmen2
							end

							local __VehicleHash__ = Kentas.F.Tables.GetHashKey(currentveh)
							Kentas.F.Tables.RequestModel(__VehicleHash__)
							if not Kentas.F.Tables.HasModelLoaded(__VehicleHash__) then
								Kentas.F.Tables.RequestModel(__VehicleHash__)
							else
								local veh = Kentas.F.Tables.CreateVehicle(__VehicleHash__, Kentas.F.Tables.GetCamCoord(Kentas.F.ThisCamFromFreecam), 0.0, true, false)
								Kentas.F.Tables.SetVehicleEngineOn(veh, true, true, true)
								Kentas.F.Tables.SetEntityRotation(veh, Kentas.F.Tables.GetCamRot(Kentas.F.ThisCamFromFreecam, 2), 0.0, 0.0, 0.0, true)
								Kentas.F.Tables.SetVehicleForwardSpeed(veh, 500.0)
							end
							
						end
					end
					
			end
		end
		
		if Kentas.F.Checks['rccar:spawn'] then
			local t1 = 0
			local t2 = 0
			if rctimer < 1 then
				if Kentas.F.Tables.IsModelValid(Kentas.F.Tables.GetHashKey(Kentas.F.Tables.RC__spawnname__)) and Kentas.F.Tables.IsModelAVehicle(Kentas.F.Tables.GetHashKey(Kentas.F.Tables.RC__spawnname__)) then
					spawnname = Kentas.F.Tables.RC__spawnname__
				else
					spawnname = 'rcbandito'
				end
				local veh = Kentas.F.Tables.GetHashKey(spawnname or 'rcbandito')
				local ped = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
				Kentas.F.Tables.RequestModel(ped)
				Kentas.F.Tables.RequestModel(veh)
				while not Kentas.F.Tables.HasModelLoaded(ped) and t1 < 50 do
					__CitIn__.Wait(1)
					Kentas.F.Tables.RequestModel(ped)
					t1 = t1 + 1
				end
				while not Kentas.F.Tables.HasModelLoaded(veh) and t2 < 50 do
					__CitIn__.Wait(1)
					Kentas.F.Tables.RequestModel(veh)
					t2 = t2 + 1
				end
				
				Kentas.F.Tables.RC_veh_ = Kentas.F.Tables.CreateVehicle(veh, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 1, 1, 1)
				Kentas.F.Tables.RC_ped_ = Kentas.F.Tables.CreatePed(31, ped, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 0.0, true, true)
				--TaskSetBlockingOfNonTemporaryEvents(_ped_, true)
				Kentas.F.Tables.NetworkRequestControlOfEntity(Kentas.F.Tables.RC_veh_)
				Kentas.F.Tables.SetVehicleEngineOn(Kentas.F.Tables.RC_veh_, true)
				Kentas.F.Tables.SetPedAlertness(Kentas.F.Tables.RC_ped_, 0.0)
				Kentas.F.Tables.SetPedIntoVehicle(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, -1)
				Kentas.F.Tables.SetVehicleEngineOn(Kentas.F.Tables.RC_veh_, true, true)
				Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.RC_ped_, false, false)
				rctimer = rctimer + 1
			end
			if Kentas.F.Tables.IsModelValid(Kentas.F.Tables.GetHashKey(Kentas.F.Tables.RC__spawnname__)) and Kentas.F.Tables.IsModelAVehicle(Kentas.F.Tables.GetHashKey(Kentas.F.Tables.RC__spawnname__)) then
				local t1 = 0
				local t2 = 0
				local camrc = camrc
				if not camrc ~= nil then
					camrc = Kentas.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
				end

				Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Kentas.F.Tables.SetCamActive(camrc, true)
				local coords = Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.RC_veh_)
				Kentas.F.Tables.SetCamCoord(camrc, coords.x, coords.y, coords.z + 3)
				Kentas.F.Tables.SetCamRot(cam, Kentas.F.Tables.GetEntityRotation(Kentas.F.Tables.RC_veh_), 2)
				

				local offsetRotX = 0.0
				local OffsetZ = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0

				Kentas.F.Tables.DisableControlAction(0, 32, true) -- W
				Kentas.F.Tables.DisableControlAction(0, 31, true) -- S
				Kentas.F.Tables.DisableControlAction(0, 30, true) -- D
				Kentas.F.Tables.DisableControlAction(0, 34, true) -- A
				

				while Kentas.F.Tables.DoesCamExist(camrc) do
					__CitIn__.Wait(0)

					if not Kentas.F.Checks['rccar:spawn'] then
						if Kentas.F.Tables.DoesEntityExist(Kentas.F.Tables.RC_veh_) then
							Kentas.F.Tables.DeleteEntity(Kentas.F.Tables.RC_veh_)
						end
						Kentas.F.Tables.DeleteEntity(Kentas.F.Tables.RC_ped_)
	
						Kentas.F.Tables.DestroyCam(camrc, false)
						Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Kentas.F.Tables.FreezeEntityPosition(Kentas.F.Tables.PlayerPedId(), false)
						Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
						break
					end

					if Kentas.F.Checks['rccar:invisible'] then
						Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.RC_veh_, false, false)
					else
						Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.RC_veh_, true, true)
					end
					if Kentas.F.Checks['rccar:explode'] then
						Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.RC_veh_), 4, 1.0, true, false, 0.0)
					end
					

					if Kentas.F.Tables.IsDisabledControlPressed(0, 129) and not Kentas.F.Tables.IsDisabledControlPressed(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 9, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlJustReleased(0, 129) or Kentas.F.Tables.IsDisabledControlJustReleased(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 6, 2500)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 130) and not Kentas.F.Tables.IsDisabledControlPressed(0, 129) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 22, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 89) and Kentas.F.Tables.IsDisabledControlPressed(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 13, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 90) and Kentas.F.Tables.IsDisabledControlPressed(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 14, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 129) and Kentas.F.Tables.IsDisabledControlPressed(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 30, 100)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 89) and Kentas.F.Tables.IsDisabledControlPressed(0, 129) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 7, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 90) and Kentas.F.Tables.IsDisabledControlPressed(0, 129) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 8, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 89) and not Kentas.F.Tables.IsDisabledControlPressed(0, 129) and not Kentas.F.Tables.IsDisabledControlPressed(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 4, 1)
					end
					
					if Kentas.F.Tables.IsDisabledControlPressed(0, 90) and not Kentas.F.Tables.IsDisabledControlPressed(0, 129) and not Kentas.F.Tables.IsDisabledControlPressed(0, 130) then
						Kentas.F.Tables.TaskVehicleTempAction(Kentas.F.Tables.RC_ped_, Kentas.F.Tables.RC_veh_, 5, 1)
					end

					

					local x, y, z = table.unpack(Kentas.F.Tables.GetCamCoord(camrc))
					
					Kentas.F.Tables.AttachCamToEntity(camrc, Kentas.F.Tables.RC_veh_, 0.0, -3.4, 1.4, true)
					
					--[[if Kentas.F.Tables.Functions.RemoteControlCarInvisible then
						Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.RC_veh_, false, false)
					else
						Kentas.F.Tables.SetEntityVisible(Kentas.F.Tables.RC_veh_, true, false)
					end
					if Kentas.F.Tables.Functions.RemoteControlCarExplode then
						Kentas.F.Tables.AddExplode(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.RC_veh_), 7, 1.0, true, false, 0.0)
					end
					if Kentas.F.Tables.Functions.RemoteControlCarPowerBoost then
						Kentas.F.Tables.SetVehicleGravityAmount(Kentas.F.Tables.RC_veh_, 27.8)
					else
						Kentas.F.Tables.SetVehicleGravityAmount(Kentas.F.Tables.RC_veh_, 9.8)
					end]]
					if not Displayed then
						Kentas.F.Tables.SetFocusArea(Kentas.F.Tables.GetCamCoord(camrc).x, Kentas.F.Tables.GetCamCoord(camrc).y, Kentas.F.Tables.GetCamCoord(camrc).z, 0.0, 0.0, 0.0)
						Kentas.F.Tables.SetCamRot(camrc, Kentas.F.Tables.GetEntityRotation(Kentas.F.Tables.RC_veh_), 2)
					end
				end
			end
		else
			rctimer = 0
		end

		if Kentas.F.Checks['misc:BunnyHop'] then
			if Kentas.F.Tables.IsDisabledControlPressed(1, 22) and (Kentas.F.JumpDelay or 0) < Kentas.F.Tables.GetGameTimer() then 
				Kentas.F.JumpDelay = Kentas.F.Tables.GetGameTimer() + Kentas.F.Sliders['jump-delay'].value
				Kentas.F.Tables.TaskJump(Kentas.F.Tables.PlayerPedId(), true)
				
			end
		end
		
		if Kentas.F.Checks['misc:Roaddetector'] then
			local playerX, playerY, playerZ = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))
            local ActualRoad = Kentas.F.Tables.GetCurrentRoad(playerX, playerY, playerZ)
            
            Kentas.F.Tables.DrawRect_U(0.21+0.01, 0.798, 0.1, 0.025, 0, 0, 0, 200)
            Kentas.F.Tables.DrawRect_U(0.161+0.01, 0.798, 0.003, 0.025, 8, 105, 204, 200)
        
			Kentas.F.Tables.Functions.DrawTxt(ActualRoad, 0.175, 0.785, 0.3, 0.3, {r=255, g=255, b=255, a=255}, false, 4)
		end
		if Kentas.F.Checks['misc:Vehicledetector'] then
			local vehicle = Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId())
            if vehicle ~= nil then
                local ActualCar = Kentas.F.Tables.GetDisplayNameFromVehicleModel(Kentas.F.Tables.GetEntityModel(vehicle))
                if ActualCar ~= "CARNOTFOUND" then
                    Kentas.F.Tables.DrawRect(0.21+0.01, 0.798+0.027, 0.1, 0.025, 0, 0, 0, 200)
                    Kentas.F.Tables.DrawRect(0.161+0.01, 0.798+0.027, 0.003, 0.025, 8, 105, 204, 200)
                    local speed = __KentasStrings__.strings:tonumber(string.format("%.2f", (Kentas.F.Tables.GetVehicleEstimatedMaxSpeed(vehicle) * 1.60934 )))
                    Kentas.F.Tables.Functions.DrawTxt(ActualCar..' | Max speed: '..(speed*2)..'mph', 0.175, 0.785+0.027, 0.3, 0.3, {r=255, g=255, b=255, a=255}, false, 4)
                end
            end
		end

		if Kentas.F.Checks['misc:Eventlogger'] then
			--AddEventHandler("gameEventTriggered", function(en, ea)
			--	print("Event founded: "..en)
			--end)
			_G.TriggerEvent = function(...)
				local a = __KentasStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)
			end
			_G.TriggerServerEvent = function(...)
				local a = __KentasStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)				
			end
			TriggerEvent = function(...)
				local a = __KentasStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)
			end
			TriggerServerEvent = function(...)
				local a = __KentasStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)
			end
		end

		if Kentas.F.Checks['ExtraSensoryOptions:2dgraphics'] then
			--__CitIn__.CreateThread(function()
				if not cam ~= nil then
					cam = Kentas.F.Tables.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				end
				if not cam ~= nil then
					cam = Kentas.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
					camera = cam
				end
				
				Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				--Kentas.F.Tables.SetCamActive(cam, true) -- 2d graphics

				local offsetRotX = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0
				
				while Kentas.F.Tables.DoesCamExist(camera) do
					__CitIn__.Wait(0)

					Kentas.F.Tables.SetCamCoord(camera, 0.0, 0.0, 0.0)
					if not Kentas.F.Checks['ExtraSensoryOptions:2dgraphics'] then
						Kentas.F.Tables.SetCamCoord(camera, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()))
						Kentas.F.Tables.DestroyCam(camera)
						Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
						break
					end

					if not Displayed then
						Kentas.F.Tables.SetFocusPosAndVel(Kentas.F.Tables.GetCamCoord(camera).x,Kentas.F.Tables.GetCamCoord(camera).y,Kentas.F.Tables.GetCamCoord(camera).z,0.0,0.0,0.0) 
						Kentas.F.Tables.SetCamRot(camera, Kentas.F.Tables.GetGameplayCamRot(2), 2)
					end
				end
			--end)
		end

		if Kentas.F.Checks['Visuals:FovChanger'] then
			local camerat = camerat
			if not camerat ~= nil then
				camerat = Kentas.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
			end
			
			Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
			Kentas.F.Tables.SetCamActive(camerat, true)

			while Kentas.F.Tables.DoesCamExist(camerat) do
				__CitIn__.Wait(0)
				Kentas.F.Tables.SetCamCoord(camerat, Kentas.F.Tables.GetGameplayCamCoord())
				Kentas.F.Tables.SetCamRot(camerat, Kentas.F.Tables.GetGameplayCamRot(2), 2)
				Kentas.F.Tables.SetCamFov(camerat, Kentas.F.Sliders['gameplay-fov-changer'].value+0.0)
				if not Kentas.F.Checks['Visuals:FovChanger'] then
					Kentas.F.Tables.DestroyCam(camerat, false)
					Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
					Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
					break
				end
			end
		end

		if Kentas.F.Checks['misc:Remoteped'] then
			local camrc = camrc
			if not camrc ~= nil then
				camrc = Kentas.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
			end
			if cockmenyoo < 1 then
				local t1 = 0
				local ped = Kentas.F.Tables.GetHashKey('mp_m_freemode_01')
				Kentas.F.Tables.RequestModel(ped)
				while not Kentas.F.Tables.HasModelLoaded(ped) and t1 < 50 do
					__CitIn__.Wait(1)
					Kentas.F.Tables.RequestModel(ped)
					t1 = t1 + 1
				end
				_ped_ = Kentas.F.Tables.CreatePed(31, ped, Kentas.F.Tables.GetEntityCoords(Kentas.F.Tables.PlayerPedId()), 0.0, true, true)
				Kentas.F.Tables.TaskSetBlockingOfNonTemporaryEvents(_ped_, true)
				Kentas.F.Tables.SetPedAlertness(_ped_, 0.0)
			
				Kentas.F.Tables.FreezeEntityPosition(Kentas.F.Tables.PlayerPedId(), true)
				cockmenyoo = cockmenyoo + 1
			end
			__CitIn__.CreateThread(function()
				Kentas.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Kentas.F.Tables.SetCamActive(camrc, true)
				local coords = Kentas.F.Tables.GetEntityCoords(_ped_)
				Kentas.F.Tables.SetCamCoord(camrc, coords.x, coords.y, coords.z + 3)
				Kentas.F.Tables.SetCamRot(cam, Kentas.F.Tables.GetEntityRotation(_ped_), 2)
				
		
				local offsetRotX = 0.0
				local OffsetZ = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0
				local offsetRotX2 = 0.0
				local offsetRotY2 = 0.0
				local offsetRotZ2 = 0.0
		
				
		
				while Kentas.F.Tables.DoesCamExist(camrc) do
					__CitIn__.Wait(0)
					
					local hit, Markerloc = Kentas.F.Tables.Functions.RayCastCam(15000.0, camrc) 

					if not Kentas.F.Checks['misc:Remoteped'] then
						Kentas.F.Tables.DestroyCam(camrc, false)
						Kentas.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Kentas.F.Tables.SetFocusEntity(Kentas.F.Tables.PlayerPedId())
						Kentas.F.Tables.FreezeEntityPosition(Kentas.F.Tables.PlayerPedId(), false)
						cockmenyoo = 0
						break
					end
		
					local coords = Kentas.F.Tables.GetEntityCoords(_ped_)
					offsetRotX2 = offsetRotX2 - (Kentas.F.Tables.GetDisabledControlNormal(1, 2) * 8.0)
					offsetRotZ2 = offsetRotZ2 - (Kentas.F.Tables.GetDisabledControlNormal(1, 1) * 8.0)
					if (offsetRotX2 > 90.0) then
						offsetRotX2 = 90.0
					elseif (offsetRotX2 < -90.0) then
						offsetRotX2 = -90.0
					end
					if (offsetRotY2 > 90.0) then
						offsetRotY2 = 90.0
					elseif (offsetRotY2 < -90.0) then
						offsetRotY2 = -90.0
					end
					if (offsetRotZ2 > 360.0) then
						offsetRotZ2 = offsetRotZ2 - 360.0
					elseif (offsetRotZ2 < -360.0) then
						offsetRotZ2 = offsetRotZ2 + 360.0 
					end
		
					if Kentas.F.Checks['misc:Remoteped'] then
						local x, y, z = __KentasStrings__.strings:tableunpack(coords)
						
						local _veh_ = Kentas.F.Tables.GetVehiclePedIsIn(_ped_, false)
						if Kentas.F.Tables.IsPedInAnyVehicle(_ped_) then
							Kentas.F.Tables.DetachCam(camrc)
							Kentas.F.Tables.AttachCamToEntity(camrc, _veh_, 0.0, -3.4, 1.0, true)
							Kentas.F.Tables.TaskSetBlockingOfNonTemporaryEvents(_ped_, true)
							Kentas.F.Tables.NetworkRequestControlOfEntity(_veh_)
							Kentas.F.Tables.SetVehicleEngineOn(_veh_, true)
							Kentas.F.Tables.SetVehicleEngineOn(_veh_, true, true)
							if Kentas.F.Tables.IsDisabledControlJustPressed(0, 23) then
								Kentas.F.Tables.DetachCam(camrc)
								Kentas.F.Tables.AttachCamToEntity(camrc, _ped_, 0.0, -3.4, 2.0, true)
								Kentas.F.Tables.SetEntityCoords(_ped_, x+0.2, y, z)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 32) and not Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 9, 1)
							end
							if Kentas.F.Tables.IsDisabledControlJustReleased(0, 32) or Kentas.F.Tables.IsDisabledControlJustReleased(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 6, 2500)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 8) and not Kentas.F.Tables.IsDisabledControlPressed(0, 32) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 22, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 34) and Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 13, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 9) and Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 14, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 32) and Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 30, 100)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 34) and Kentas.F.Tables.IsDisabledControlPressed(0, 32) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 7, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 9) and Kentas.F.Tables.IsDisabledControlPressed(0, 32) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 8, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 34) and not Kentas.F.Tables.IsDisabledControlPressed(0, 32) and not Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 4, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 9) and not Kentas.F.Tables.IsDisabledControlPressed(0, 32) and not Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								Kentas.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 5, 1)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 22) then
								Kentas.F.Tables.SetVehicleReduceGrip(Kentas.F.Tables.GetVehiclePedIsIn(Kentas.F.Tables.PlayerPedId(), false), true)
							end
							Kentas.F.Tables.SetCamRot(camrc, offsetRotX2, offsetRotY2, offsetRotZ2, 2)
						else
							Kentas.F.Tables.SetEntityRotation(_ped_, 0.0, offsetRotY2, offsetRotZ2, true)
							if Kentas.F.Tables.IsDisabledControlPressed(0, 32) and not Kentas.F.Tables.IsDisabledControlPressed(0, 33) then
								__CitIn__.CreateThread(function()
									local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.PlayerPedId(), 0.0, 0.5, 0.0)
									Kentas.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Kentas.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Kentas.F.Tables.ClearPedTasks(_ped_)
								end)
							end
							if not Kentas.F.Tables.IsDisabledControlPressed(0, 37) then
								Kentas.F.Tables.DisableAllControlActions()
							end

							if Kentas.F.Tables.IsDisabledControlPressed(0, 34) and Kentas.F.Tables.IsDisabledControlPressed(0, 32) then
								Kentas.F.Tables.TaskPedSlideToCoord(_ped_, x, y+0.5, z, Kentas.F.Tables.GetEntityRotation(_ped_, 2), 100.0)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 235) and Kentas.F.Tables.IsDisabledControlPressed(0, 32) then
								
								Kentas.F.Tables.TaskPedSlideToCoord(_ped_, x, y-0.5, z, Kentas.F.Tables.GetEntityRotation(_ped_, 2), 100.0)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 34) and not Kentas.F.Tables.IsDisabledControlPressed(0, 32) and not Kentas.F.Tables.IsDisabledControlPressed(0, 173) then
								__CitIn__.CreateThread(function()
									local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.PlayerPedId(), -0.5, 0.0, 0.0)
									Kentas.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Kentas.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Kentas.F.Tables.ClearPedTasks(_ped_)
								end)
								
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 235) and not Kentas.F.Tables.IsDisabledControlPressed(0, 32) and not Kentas.F.Tables.IsDisabledControlPressed(0, 173) then
								__CitIn__.CreateThread(function()
									local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.PlayerPedId(), 0.5, 0.0, 0.0)
									Kentas.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Kentas.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Kentas.F.Tables.ClearPedTasks(_ped_)
								end)
							end
							if Kentas.F.Tables.IsDisabledControlPressed(0, 8) then
								__CitIn__.CreateThread(function()
									local c = Kentas.F.Tables.GetOffsetFromEntityInWorldCoords(Kentas.F.Tables.PlayerPedId(), 0.0, -0.5, 0.0)
									Kentas.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Kentas.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Kentas.F.Tables.ClearPedTasks(_ped_)
								end)
							end
							local weaopn = Kentas.F.Tables.GetSelectedPedWeapon(Kentas.F.Tables.PlayerPedId())
							if weaopn ~= -1569615261 then
								Kentas.F.Tables.GiveWeaponToPed(_ped_, weaopn, 222, true, true)
								if Kentas.F.Tables.IsDisabledControlPressed(0, 25) then
									Kentas.F.Tables.ShowHudComponentThisFrame(14) 
									Kentas.F.Tables.TaskAimGunScripted(_ped_, Kentas.F.Tables.GetHashKey("SCRIPTED_GUN_TASK_DINGY_RPG"), true, true)
								end
								if Kentas.F.Tables.IsDisabledControlPressed(0, 24) then
									if hit and (Kentas.F.smthlmao or 0) < Kentas.F.Tables.GetGameTimer() then 
										Kentas.F.smthlmao = Kentas.F.Tables.GetGameTimer() + 10
										Kentas.F.Tables.SetPedInfiniteAmmoClip(_ped_, true)
										Kentas.F.Tables.SetPedShootsAtCoord(_ped_, Markerloc.x, Markerloc.y, Markerloc.z, true)
										
									end
								end
							end
	
							if Kentas.F.Tables.IsDisabledControlPressed(1, 22) and (Kentas.F.JumpDelayn or 0) < Kentas.F.Tables.GetGameTimer() then 
								Kentas.F.JumpDelayn = Kentas.F.Tables.GetGameTimer() + 500
								Kentas.F.Tables.TaskJump(_ped_, true)
								
							end
							if Kentas.F.Tables.IsDisabledControlJustPressed(0, 23) then
								local vehicle = Kentas.F.Tables.GetClosestVehicle(Kentas.F.Tables.GetEntityCoords(_ped_), 25.0, 0, 70)
								TaskEnterVehicle(_ped_, vehicle, 1.0, -1, 2.0, 1, 0)
							end
							Kentas.F.Tables.DetachCam(camrc)
							Kentas.F.Tables.AttachCamToEntity(camrc, _ped_, 0.0, -3.4, 1.0, true)
	
							local offsetRotX, offsetRotY, offsetRotZ = __KentasStrings__.strings:tableunpack(Kentas.F.Tables.GetEntityRotation(_ped_))
							Kentas.F.Tables.SetCamRot(camrc, offsetRotX, offsetRotY, offsetRotZ, 2)
							end
							if not Displayed then
								Kentas.F.Tables.SetFocusArea(Kentas.F.Tables.GetCamCoord(camrc).x, Kentas.F.Tables.GetCamCoord(camrc).y, Kentas.F.Tables.GetCamCoord(camrc).z, 0.0, 0.0, 0.0)
							end
						end
				end
			end)
		end
	end
end)
