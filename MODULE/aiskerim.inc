#include <a_samp>
// ================= [ COMMANDS / PERINTAH ] =================

// Perintah untuk Pembeli (Di luar kendaraan)
CMD:buyfood(playerid, params[]) {
    new found_vehicle = INVALID_VEHICLE_ID;
    
    // PERBAIKAN: Menggunakan variabel terpisah, bukan array
    new Float:pX, Float:pY, Float:pZ; 

    // Ambil posisi koordinat player saat ini
    GetPlayerPos(playerid, pX, pY, pZ);

    // Mencari kendaraan Mr. Whoopee (423) terdekat radius 6 meter
    for(new v = 1; v < MAX_VEHICLES; v++) {
        if(GetVehicleModel(v) == 423) {
            // PERBAIKAN: Memasukkan variabel pX, pY, pZ yang baru
            if(GetVehicleDistanceFromPoint(v, pX, pY, pZ) <= 6.0) { // <- Ini udah bener, 6.0 = float
                found_vehicle = v;
                break;
            }
        }
    }

    if(found_vehicle == INVALID_VEHICLE_ID) {
        return SendClientMessage(playerid, 0xFF0000FF, "{ff0000}ERROR: {ffffff}Anda tidak berada di dekat kendaraan Mr. Whoopee!");
    }

    PlayerBuyingTruck[playerid] = found_vehicle;

    new str[512];
    format(str, sizeof(str), "Menu Makanan\tHarga\n\
        {ffffff}Ice Cream\t{2ecc71}$100\n\
        {ffffff}Sprunk\t{2ecc71}$50\n\
        {ffffff}Cake\t{2ecc71}$50\n\
        {ffffff}Susu\t{2ecc71}$50");

    new title[64];
    format(title, sizeof(title), "Stock Food ( %d )", VehicleFoodStock[found_vehicle]);
    ShowPlayerDialog(playerid, DIALOG_BUY_FOOD, DIALOG_STYLE_TABLIST_HEADERS, title, str, "Beli", "Batal");
    return 1;
}

// Perintah Supir: Cek Sisa Stok Makanan
CMD:foodstock(playerid, params[]) {
    new vehicleid = GetPlayerVehicleID(playerid);
    if(vehicleid == 0 || GetVehicleModel(vehicleid) != 423 || GetPlayerVehicleSeat(playerid) != 0) {
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Anda harus menyetir kendaraan Mr. Whoopee (ID 423)!");
    }

    new str[128];
    format(str, sizeof(str), "{3498db}[FOOD TRUCK] {ffffff}Stok makanan di kendaraan Anda saat ini: {e67e22}%d unit.", VehicleFoodStock[vehicleid]);
    SendClientMessage(playerid, -1, str);
    return 1;
}

// Perintah Supir: Isi Ulang Stok Jadi 100 seharga $2,000
CMD:stockfood(playerid, params[]) {
    new vehicleid = GetPlayerVehicleID(playerid);
    if(vehicleid == 0 || GetVehicleModel(vehicleid) != 423 || GetPlayerVehicleSeat(playerid) != 0) {
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Anda harus menyetir kendaraan Mr. Whoopee (ID 423)!");
    }

    if(GetPlayerMoneyEx(playerid) < 2000) {
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Uang cash Anda tidak cukup $2,000 untuk isi ulang stok.");
    }

    pData[playerid][pCash] -= 2000; 
    VehicleFoodStock[vehicleid] = 100;

    // SAVE KE DATABASE SQL (ON DUPLICATE KEY UPDATE)
    new sql_query[256];
    mysql_format(mMysql, sql_query, sizeof(sql_query), 
        "INSERT INTO `food_trucks` (`veh_id`, `stock`) VALUES (%d, 100) ON DUPLICATE KEY UPDATE `stock` = 100", 
        VehicleSQLID[vehicleid]);
    mysql_tquery(mMysql, sql_query);

    SendClientMessage(playerid, -1, "{2ecc71}Berhasil: {ffffff}Berhasil mengisi ulang stok makanan menjadi 100 unit seharga $2,000.");
    return 1;
}