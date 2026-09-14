Pickup()
{   
    // Dealership
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli Kendaraan", COLOR_WHITE, 686.477416, -1512.628051, 15.488567, 5.0);
    CreateDynamicPickup(1239, 23, 686.477416, -1512.628051, 15.488567, -1);

    // Hospital
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli Bandage", COLOR_WHITE, 1353.257080, 1535.184814, 23223.085937, 5.0);
    CreateDynamicPickup(1239, 23, 1353.257080, 1535.184814, 23223.085937, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buylockpick ] Untuk Membeli Lockpick Dengan Harga 10.000 Redmoney", COLOR_WHITE, 287.804656, -109.781715, 1001.515625, 5.0);
    CreateDynamicPickup(1239, 23, 287.804656, -109.781715, 1001.515625, -1);
    
    CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Gunakan {FFD700}/buytools{FFFFFF} untuk membeli peralatan", COLOR_WHITE, 291.664581, -83.417297, 1001.515625, 5.0);
	CreateDynamicPickup(1274, 23, 291.664581, -83.417297, 1001.515625, -1);
	
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buymedicine ] Untuk Membeli Medicine", COLOR_WHITE, 1355.643432, 1535.186767, 23223.085937, 5.0);
    CreateDynamicPickup(1239, 23, 1355.643432, 1535.186767, 23223.085937, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /listprice ] Untuk Melihat List Harga Di Hospital", COLOR_WHITE, 1345.861694, 1533.977294, 23223.095703, 5.0);
    CreateDynamicPickup(1239, 23, 1345.861694, 1533.977294, 23223.095703, -1);
    
    //kayu
    CreateDynamic3DTextLabel("{00D9FF}[ Kayu ]{FFFFFF} Gunakan {FFD700}/proseskayu{FFFFFF} untuk memproses kayu", COLOR_WHITE, -449.005279, -60.391090, 59.454174, 5.0);
	CreateDynamicPickup(1239, 23, -449.005279, -60.391090, 59.454174, -1);
	
	CreateDynamic3DTextLabel("{00D9FF}[ Kayu ]{FFFFFF} Gunakan {FFD700}/proseskayu{FFFFFF} untuk memproses kayu", COLOR_WHITE, -448.999298, -63.323993, 59.426368, 5.0);
	CreateDynamicPickup(1239, 23, -448.999298, -63.323993, 59.426368, -1);
	    
    // Bombomcar
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /rentkart ] Untuk Rental Bombomcar", COLOR_WHITE, 635.733764, -1839.101440, 6.610128, 5.0);
    CreateDynamicPickup(1239, 23, 635.733764, -1839.101440, 6.610128, -1);

    //sellilegal
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ ALT ] Untuk Menjual Hasil Rampok", COLOR_WHITE, -2877.800537, 690.952514, 23.453125, 5.0);
    CreateDynamicPickup(1239, 23, -2877.800537, 690.952514, 23.453125, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /rentkart ] Untuk Rental Bombomcar", COLOR_WHITE, 635.471923, -1830.723754, 6.620376, 5.0);
    CreateDynamicPickup(1239, 23, 635.471923, -1830.723754, 6.620376, -1);
    
    // UNLOAD CRATE
	CreateDynamic3DTextLabel("{5996FF}[ Unload Crate ]{FFFFFF}\nGunakan /unloadcrate untuk menurunkan crate", -1, 797.543029, -617.726867, 16.335937, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(2912, 23, 797.543029, -617.726867, 16.335937, -1);
	
	// GET CRATE  
	CreateDynamic3DTextLabel("{5996FF}[ Get Crate ]{FFFFFF}\nGunakan /getcrate untuk mengambil crate", -1, 393.366119, 907.326477, 23.770687, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(2912, 23, 393.366119, 907.326477, 23.770687, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ SAWIT ]{FFFFFF}\nGunakan /unloadsawit untuk menyetor sawit", -1, -398.690368, -1435.235717, 25.726562, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(2912, 23, -398.690368, -1435.235717, 25.726562, -1);
	
	// Titik 1
	CreateDynamic3DTextLabel("{5996FF}[ Tebang Kayu ]{FFFFFF}\nGunakan /tebang untuk menebang kayu", -1, -466.675445, -55.349975, 60.123210, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(19793, 23, -466.675445, -55.349975, 60.123210, -1);
	
	// Titik 2
	CreateDynamic3DTextLabel("{5996FF}[ Tebang Kayu ]{FFFFFF}\nGunakan /tebang untuk menebang kayu", -1, -476.524963, -45.917148, 59.994743, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(19793, 23, -476.524963, -45.917148, 59.994743, -1);
	
	// Titik 3
	CreateDynamic3DTextLabel("{5996FF}[ Tebang Kayu ]{FFFFFF}\nGunakan /tebang untuk menebang kayu", -1, -477.871856, -39.092891, 59.996166, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(19793, 23, -477.871856, -39.092891, 59.996166, -1);
	
	// Titik 4
	CreateDynamic3DTextLabel("{5996FF}[ Tebang Kayu ]{FFFFFF}\nGunakan /tebang untuk menebang kayu", -1, -486.550750, -38.113254, 60.020225, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(19793, 23, -486.550750, -38.113254, 60.020225, -1);
	
	// Titik 5
	CreateDynamic3DTextLabel("{5996FF}[ Tebang Kayu ]{FFFFFF}\nGunakan /tebang untuk menebang kayu", -1, -467.265838, -38.855442, 59.966270, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(19793, 23, -467.265838, -38.855442, 59.966270, -1);
			    
    // Job Sell Plant
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /sellplant ] Untuk Menjual Hasil Menanam", -1, -407.217987, -1426.373413, 26.316394, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1239, 23, -407.217987, -1426.373413, 26.316394, -1);
    
    // Miner
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /cucibatu ] Untuk Mencuci Batu", -1, 540.118774, 592.301330, 0.322248, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(3929, 23, 540.118774, 592.301330, 0.322248, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membuka Melebur Batu", -1, 2151.822998, -2262.609863, 13.297279, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(3929, 23, 2151.822998, -2262.609863, 13.297279, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Kerja Miner", -1, 678.169799, 895.661376, -40.125831, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 678.169799, 895.661376, -40.125831, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Selesai Kerja Miner", -1, 680.567504, 896.109497, -39.972244, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 680.567504, 896.109497, -39.972244, -1);

    // Titik Nambang
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Nambang", COLOR_WHITE, 700.753112, 897.196960, -37.445045, 5.0);
    CreateDynamicPickup(3929, 23, 700.753112, 897.196960, -37.445045, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Nambang", COLOR_WHITE, 699.648498, 887.328857, -37.498165, 5.0);
    CreateDynamicPickup(3929, 23, 699.648498, 887.328857, -37.498165, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Nambang", COLOR_WHITE, 700.008117, 892.716003, -38.445304, 5.0);
    CreateDynamicPickup(3929, 23, 700.008117, 892.716003, -38.445304, -1);
    
    // Packing Packet
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /jobpacking ] & [ /selesaipacking ] Untuk Kerja Packing Packet", -1, 5.918079, -777.143005, 12.071829, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 5.918079, -777.143005, 12.071829, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /getjobpenebang ] & [ /selesaipenebang] Untuk Kerja Penebang Pohon", -1, -446.181365, -67.273773, 59.325706, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, -446.181365, -67.273773, 59.325706, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Packet", -1, 3.248340, -775.368041, 13.183469, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(2654, 23, 3.248340, -775.368041, 12.183469, -1);
    
    // Titik Proses Packet (1, 2, 3)
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Memproses Packet", -1, -0.018112, -779.120910, 12.182211, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Memproses Packet", -1, 3.274085, -780.911926, 12.089029, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Memproses Packet", -1, 1.905131, -780.162841, 12.143553, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
        
    // ID Card
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /getidcard ] Untuk Mengambil Id Card", -1, 498.010192, -2248.751953, 790.022460, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1581, 23, 498.010192, -2248.751953, 790.022460, -1);
    
    // Job Ayam
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Job Ayam", -1, 389.002441, 103.731849, 6.601015, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 389.002441, 103.731849, 6.601015, -1); 

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menyelesaikan Job Ayam", -1, 387.952972, 105.139144, 6.612115, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 387.952972, 105.139144, 6.612115, -1); 

    // Titik Ambil Ayam (1 - 5)
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Ayam", -1, 401.707946, 119.969856, 6.617377, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(19137, 23, 401.707946, 119.969856, 6.617377, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Ayam", -1, 400.648590, 121.493133, 6.626113, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(19137, 23, 400.648590, 121.493133, 6.626113, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Ayam", -1, 399.259460, 122.928047, 6.663166, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(19137, 23, 399.259460, 122.928047, 6.663166, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Ayam", -1, 398.140075, 124.514999, 6.754801, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(19137, 23, 398.140075, 124.514999, 6.754801, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Ayam", -1, 397.275512, 124.581672, 6.776489, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(19137, 23, 397.275512, 124.581672, 6.776489, -1);
    
    // Titik Potong Ayam (1 - 3)
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Memotong Ayam", -1, 396.566894, 111.983230, 6.595726, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(2806, 23, 396.566894, 111.983230, 6.595726, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Memotong Ayam", -1, 398.105407, 110.060409, 6.609105, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(2806, 23, 398.105407, 110.060409, 6.609105, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Memotong Ayam", -1, 399.178558, 108.755386, 6.598413, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(2806, 23, 399.178558, 108.755386, 6.598413, -1);

    // Black Market & Cuci Uang
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /createweapon ] Untuk Membuat Senjata", COLOR_WHITE, 291.156524, -106.223526, 1001.515625, 5.0);
    CreateDynamicPickup(1239, 23, 291.156524, -106.223526, 1001.515625, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /createweaponfam ] Untuk Membuat Senjata", COLOR_WHITE, 290.258087, -109.781303, 1001.515625, 5.0);
    CreateDynamicPickup(1239, 23, 290.258087, -109.781303, 1001.515625, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /cuciuang ] Untuk Menukar Red Money Ke Green Money", COLOR_WHITE, 499.729705, -2640.717041, 9.416419, 5.0);
    CreateDynamicPickup(1578, 23, 499.729705, -2640.717041, 9.416419, -1);
    
    // LSPD
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /gunlspd ], [ /loadgunlspd ], & [ /pakaivest ] Untuk Perlengkapan", COLOR_WHITE, 846.539245, -2116.817871, 1003.500000, 5.0);
    CreateDynamicPickup(1239, 23, 846.539245, -2116.817871, 1003.500000, -1);

    // Job Petani Padi
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Job Petani", COLOR_WHITE, -1093.1405, -1614.1300, 76.3671, 5.0);
    CreateDynamicPickup(1275, 23, -1093.1405, -1614.1300, 76.3671, -1);
    CreateDynamicPickup(1239, 23, -1093.1405, -1614.1300, 76.3671, -1); 

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menyelesaikan Job Petani", COLOR_WHITE, -1097.0151, -1617.1059, 76.3671, 5.0);
    CreateDynamicPickup(1275, 23, -1097.0151, -1617.1059, 76.3671, -1);
    CreateDynamicPickup(1239, 23, -1097.0151, -1617.1059, 76.3671, -1); 
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Pupuk Padi", COLOR_WHITE, -1088.1015, -1614.3225, 76.3671, 5.0);
    CreateDynamicPickup(1239, 23, -1088.1015, -1614.3225, 76.3671, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menaruh Padi", COLOR_WHITE, -1116.1982, -1637.4880, 76.3671, 5.0);
    CreateDynamicPickup(1239, 23, -1116.1982, -1637.4880, 76.3671, -1);
    
    //SUSUNEW
    CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Tekan [ Alt ] Untuk Memeras Susu Sapi", COLOR_WHITE, 254.852752, 1139.438598, 11.019128, 5.0);
	CreateDynamicPickup(1239, 23, 254.852752, 1139.438598, 11.019128, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Tekan [ Alt ] Untuk Memeras Susu Sapi", COLOR_WHITE, 247.200607, 1126.874023, 10.971912, 5.0);
	CreateDynamicPickup(1239, 23, 247.200607, 1126.874023, 10.971912, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Tekan [ Alt ] Untuk Memeras Susu Sapi", COLOR_WHITE, 231.048141, 1131.676147, 12.095624, 5.0);
	CreateDynamicPickup(1239, 23, 231.048141, 1131.676147, 12.095624, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Tekan [ Alt ] Untuk Memeras Susu Sapi", COLOR_WHITE, 237.432617, 1145.303344, 12.111976, 5.0);
	CreateDynamicPickup(1239, 23, 237.432617, 1145.303344, 12.111976, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Tekan [ Alt ] Untuk Memeras Susu Sapi", COLOR_WHITE, 255.078155, 1149.986694, 11.391649, 5.0);
	CreateDynamicPickup(1239, 23, 255.078155, 1149.986694, 11.391649, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Gunakan [ /jobpemerassusu ] & [ /selesaijobsusu ] Untuk Kerja Packing Packet", -1, 313.687316, 1146.108032, 8.595958, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	CreateDynamicPickup(1275, 23, 313.687316, 1146.108032, 8.595958, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Gunakan [ /packingsusu ] Untuk Packing Susu", COLOR_WHITE, 312.712341, 1154.375854, 8.595958, 5.0);
	CreateDynamicPickup(1239, 23, 312.712341, 1154.375854, 8.595958, -1);
	
	CreateDynamic3DTextLabel("{5996FF}[ Info ]{FFFFFF} Gunakan [ /packingsusu ] Untuk Packing Susu", COLOR_WHITE, 317.520690, 1154.375122, 8.595958, 5.0);
	CreateDynamicPickup(1239, 23, 317.520690, 1154.375122, 8.595958, -1);
	    
    // Job Minyak
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Job Minyak", COLOR_WHITE, 415.430664, 1246.865478, 10.307685, 5.0);
    CreateDynamicPickup(1239, 23, 415.430664, 1246.865478, 10.307685, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Mengambil Minyak", COLOR_WHITE, 400.467498, 1277.114501, 23.217241, 5.0);
    CreateDynamicPickup(1239, 23, 400.467498, 1277.114501, 23.217241, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menyuling Minyak", COLOR_WHITE, 383.638763, 1265.927490, 23.059803, 5.0);
    CreateDynamicPickup(1239, 23, 383.638763, 1265.927490, 23.059803, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menyetor Minyak", COLOR_WHITE, -1003.564514, -696.228637, 32.007812, 5.0);
    CreateDynamicPickup(1239, 23, -1003.564514, -696.228637, 32.007812, -1);
    
    // Job Component
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Y ] Untuk Mengambil Bahan", COLOR_WHITE, 695.2648, -680.8773, 16.2610, 5.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Y ] Untuk Membuat Component", COLOR_WHITE, 726.2830, -658.6915, 16.4103, 5.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /mulaikerja ] & [ /selesaikerja ] Untuk Bekerja", COLOR_WHITE, 701.2686, -674.4711, 16.2457, 5.0);
    
    // Rent Boat
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buyboat ] Untuk Membeli Kapal (10.000$)", COLOR_WHITE, 132.767730, -1832.211181, 4.405970, 5.0);
    CreateDynamicPickup(1239, 23, 132.767730, -1832.211181, 4.405970, -1);
    
    // Job Packet Ilegal & Olah Kanabis
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /createpacket ] Untuk Membuat Packet Ilegal", COLOR_WHITE, 33.252960, -2649.920410, 40.728469, 5.0);
    CreateDynamicPickup(1239, 23, 33.252960, -2649.920410, 40.728469, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /packetsell ] Untuk Menjual Packet Ilegal", COLOR_WHITE, 484.555694, -2640.143554, 9.401593, 5.0);
    CreateDynamicPickup(1239, 23, 484.555694, -2640.143554, 9.401593, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /olahkanabis ] Untuk Mengolah Kanabis", COLOR_WHITE, 867.992370, -17.108974, 63.195312, 5.0);
    
    // Boxing
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /boxing ] Untuk Memulai Boxing", COLOR_WHITE, 756.233215, 5.046141, 1000.690002, 5.0);
    CreateDynamicPickup(1239, 23, 756.233215, 5.046141, 1000.690002, -1);
    
    // Beli Clip / Crack Pulau
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli Clip/Crack", COLOR_WHITE, 505.100463, -2637.634521, 9.401593, 5.0);
    CreateDynamicPickup(1239, 23, 505.100463, -2637.634521, 9.401593, -1);
    
    // Lockpick
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buylockpick ] Untuk Membeli Lockpick (15.000 Rm)", COLOR_WHITE, 1273.643066, 392.220306, 19.554687, 5.0);
    CreateDynamicPickup(1239, 23, 1273.643066, 392.220306, 19.554687, -1);
    
    // Balai Kota (License)
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli License", COLOR_WHITE, 497.035247, -2225.325683, 790.026550, 5.0);
    CreateDynamicPickup(1239, 23, 497.035247, -2225.325683, 790.026550, -1);
    
    // San News
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buyad ] Untuk Membuat Papan Iklan", COLOR_WHITE, 1956.191894, 1364.789916, 8001.085937, 5.0);
    CreateDynamicPickup(1239, 23, 1956.191894, 1364.789916, 8001.085937, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /ad ] Untuk Membuat Iklan", COLOR_WHITE, 1958.256103, 1364.840332, 8001.085937, 5.0);
    CreateDynamicPickup(1239, 23, 1958.256103, 1364.840332, 8001.085937, -1);

    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /ad ] Untuk Membuat Iklan", COLOR_WHITE, 1960.277465, 1364.790283, 8001.085937, 5.0);
    CreateDynamicPickup(1239, 23, 1960.277465, 1364.790283, 8001.085937, -1);
    
    // Ambil Pekerjaan
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /getjobilegal ] Untuk Mengambil Job Black Market", -1, 297.472167, -103.906494, 1001.515625, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 297.472167, -103.906494, 1001.515625, -1);
   
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /getjobpacket ] Untuk Mengambil Job Packet Ilegal", -1, 24.499187, -2646.627441, 40.463500, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 24.499187, -2646.627441, 40.463500, -1);
   
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /getjob ] Untuk Mengambil Pekerjaan", -1, 497.037872, -2227.982421, 790.026550, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
    CreateDynamicPickup(1275, 23, 497.037872, -2227.982421, 790.026550, -1);
    
    // Penukaran Red Money
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /tukaruang ] Untuk Menukar Uang Ke Red Money", COLOR_WHITE, 490.809234, -2642.806884, 9.536420, 5.0);
    CreateDynamicPickup(1580, 23, 490.809234, -2642.806884, 9.536420, -1);
    
    // Rp Quiz
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /rpquiz ] Untuk Memulai Rpquiz", COLOR_WHITE, 851.5891, -2101.9414, 1003.5, 5.0);
    CreateDynamicPickup(1239, 23, 851.5891, -2101.9414, 1003.5, -1);

    // Fraction: Pedagang
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /takestock ] Untuk Mengambil Stock", COLOR_WHITE, 2525.7197, -1548.9398, 24.2799, 5.0);
    CreateDynamicPickup(1582, 23, 2525.7197, -1548.9398, 24.2799, -1);
   
    // Kantor Polisi / Interior Lspd
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli Sim", COLOR_WHITE, 848.3489, -2101.8018, 1003.5000, 5.0);
    CreateDynamicPickup(1239, 23, 848.3489, -2101.8018, 1003.5000, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buyplate ] Untuk Membeli Plat Nomor", COLOR_WHITE, 845.512817, -2101.948730, 1003.500000, 5.0);
    CreateDynamicPickup(1239, 23, 845.512817, -2101.948730, 1003.500000, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /pjail ] Untuk Memasukan Tahanan", COLOR_WHITE, 878.6304, -2121.0102, 1003.5000, 5.0);
    
    // Job Pemancing
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli Alat Pancing", COLOR_WHITE, 144.3253, -1830.1682, 4.40597, 5.0);
    CreateDynamicPickup(1274, 23, 144.3253, -1830.1682, 4.40597, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membeli Umpan", COLOR_WHITE, 144.3289, -1825.9483, 4.4059, 5.0);
    CreateDynamicPickup(1274, 23, 144.3289, -1825.9483, 4.4059, -1);

    // Batu Giok & Beli Component
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membuka Batu Giok", COLOR_WHITE, 2151.3359, -2267.3532, 13.3069, 5.0);
    CreateDynamicPickup(2936, 23, 2151.3359, -2267.3532, 13.3069, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /buycompo ] Untuk Membeli Component", COLOR_WHITE, 854.6157, -604.3199, 18.4219, 5.0);
    CreateDynamicPickup(1274, 23, 854.6157, -604.3199, 18.4219, -1);
    
    // Hunter Rusa
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Gunakan [ /jualdagingrusa ] Untuk Menjual Daging Rusa", COLOR_WHITE, 2734.967041, -2550.335205, 13.648684, 5.0);
    CreateDynamicPickup(1239, 23, 2734.967041, -2550.335205, 13.648684, -1);

    // Titik Penjualan Barang
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menjual Padi", COLOR_WHITE, -392.201324, -1446.884277, 26.204948, 5.0);
    CreateDynamicPickup(1274, 23, -392.201324, -1446.884277, 26.204948, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menjual Ikan", COLOR_WHITE, -2057.474365, -2464.452392, 31.179687, 5.0);
    CreateDynamicPickup(1274, 23, -2057.474365, -2464.452392, 31.179687, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menjual Emas", COLOR_WHITE, 334.624389, 929.205932, 22.715999, 5.0);
    CreateDynamicPickup(1274, 23, 334.624389, 929.205932, 22.715999, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menjual Semen", COLOR_WHITE, -2091.624755, 168.752441, 35.054687, 5.0);
    CreateDynamicPickup(1274, 23, -2091.624755, 168.752441, 35.054687, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menjual Daging Ayam", COLOR_WHITE, -1425.638549, -1529.845092, 102.242187, 5.0);
    CreateDynamicPickup(1274, 23, -1425.638549, -1529.845092, 102.242187, -1);
    
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menjual Component", COLOR_WHITE, 356.013397, 884.003784, 22.715999, 5.0);
    CreateDynamicPickup(1274, 23, 356.013397, 884.003784, 22.715999, -1);

    // Bank System
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Akses Bank", COLOR_WHITE, 1015.4228, -1391.4718, -33.4288, 5.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Akses Pembayaran Pajak", COLOR_WHITE, 493.408599, -2233.454101, 790.024963, 5.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Hack Bank", COLOR_WHITE, 1017.3613, -1391.5568, -33.4295, 5.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Membobol Brankas", COLOR_WHITE, 985.8708, -1395.1484, -33.3876, 5.0);
    CreateDynamic3DTextLabel("{5996FF} [ Info ] {FFFFFF} Tekan [ Alt ] Untuk Menukarkan Tas Uang", COLOR_WHITE, 2847.500244, 983.778137, 10.750000, 5.0);

    // Mekanik Map Icon
    CreateDynamicMapIcon(1867.3232, -1782.5390, 13.5528, 27, -1, 0, -1, -1);
}