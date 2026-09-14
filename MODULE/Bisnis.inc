#define MAX_BISNIS 100

enum bzInfo {
    bzID,
    bzType,
    bzPrice,
    Float:bzX,
    Float:bzY,
    Float:bzZ,
    bzOwner[MAX_PLAYER_NAME],
    bzName[64],
    bzStock,
    bool:bzOwned,
    Float:bzIntX,
    Float:bzIntY,
    Float:bzZIntZ,
    bzInt,
    bzVW,
    bzPickup,
    Text3D:bzLabel,
    bzIntPickup,
    Text3D:bzIntLabel,
    Float:bzPointX,
    Float:bzPointY,
    Float:bzPointZ,
    bzVault,
    bzPointPickup,
    Text3D:bzPointLabel,
    bool:bzLocked,
    bzMapIcon
}
new BisnisData[MAX_BISNIS][bzInfo];
new TotalBisnis = 0;

stock GetBisnisType(type) {
    new name[24];
    switch(type) {
        case 1: name = "Electronic";
        case 2: name = "Fast Food";
        case 3: name = "Equipment";
        case 4: name = "Market";
        default: name = "Unknown";
    }
    return name;
}

stock GetBisnisIcon(type) {
    switch(type) {
        case 1: return 8;
        case 2: return 10;
        case 3: return 25;
        case 4: return 17;
    }
    return 0;
}
forward UpdateBisnisLabel(id);
public UpdateBisnisLabel(id) {
    new str[512];
    new status[20];
    status = (BisnisData[id][bzLocked]) ? ("{ff0000}Locked") : ("{2ecc71}Unlocked");

    if(!BisnisData[id][bzOwned]) { 
        format(str, sizeof(str), "{ffff00}ID: %d\n{0576FF}Bisnis Ini Dijual\n{ffffff}Type: %s\nStatus: %s\nPrice: {2ecc71}%s\n{ffffff}Location: %s\nStock: %d\nTekan Tombol {0576FF}ENTER {ffffff}Untuk Mengakses Bisnis\n{0576FF}/buybisz {ffffff}Untuk Membeli Bisnis",
            BisnisData[id][bzID], GetBisnisType(BisnisData[id][bzType]), status, FormatMoney(BisnisData[id][bzPrice]), GetLocation(BisnisData[id][bzX], BisnisData[id][bzY], BisnisData[id][bzZ]), BisnisData[id][bzStock]);
    } else {
        format(str, sizeof(str), "{ffff00}ID: %d\n{0576FF}%s\n{ffffff}Type: %s\nStatus: %s\n{ffffff}Owner Name: {2ecc71}%s\n{ffffff}Location: %s\nStock: %d\nTekan Tombol {0576FF}ENTER {ffffff}Untuk Mengakses Bisnis",
            BisnisData[id][bzID], BisnisData[id][bzName], GetBisnisType(BisnisData[id][bzType]), status, BisnisData[id][bzOwner], GetLocation(BisnisData[id][bzX], BisnisData[id][bzY], BisnisData[id][bzZ]), BisnisData[id][bzStock]);
    }

    if(IsValidDynamic3DTextLabel(BisnisData[id][bzLabel])) UpdateDynamic3DTextLabelText(BisnisData[id][bzLabel], -1, str);
    else BisnisData[id][bzLabel] = CreateDynamic3DTextLabel(str, -1, BisnisData[id][bzX], BisnisData[id][bzY], BisnisData[id][bzZ], 15.0);

    format(str, sizeof(str), "{ffffff}[BIZ: %d]\nTekan {0576FF}ENTER {ffffff}Untuk Keluar Dari Bisnis", BisnisData[id][bzID]);
    
    if(IsValidDynamic3DTextLabel(BisnisData[id][bzIntLabel])) UpdateDynamic3DTextLabelText(BisnisData[id][bzIntLabel], -1, str);
    else BisnisData[id][bzIntLabel] = CreateDynamic3DTextLabel(str, -1, BisnisData[id][bzIntX], BisnisData[id][bzIntY], BisnisData[id][bzZIntZ], 5.0, .worldid = BisnisData[id][bzVW], .interiorid = BisnisData[id][bzInt]);

    return 1;
}
forward LoadBisnis();
public LoadBisnis() {
    new rows = cache_num_rows();
    if(rows > 0) {
        for(new i = 0; i < rows && i < MAX_BISNIS; i++) {
            cache_get_value_name_int(i, "id", BisnisData[i][bzID]);
            cache_get_value_name_int(i, "type", BisnisData[i][bzType]);
            cache_get_value_name_int(i, "price", BisnisData[i][bzPrice]);
            cache_get_value_name_float(i, "posX", BisnisData[i][bzX]);
            cache_get_value_name_float(i, "posY", BisnisData[i][bzY]);
            cache_get_value_name_float(i, "posZ", BisnisData[i][bzZ]);
            cache_get_value_name(i, "owner", BisnisData[i][bzOwner], 24);
            cache_get_value_name(i, "name", BisnisData[i][bzName], 64);
            cache_get_value_name_int(i, "stock", BisnisData[i][bzStock]);
            cache_get_value_name_int(i, "vault", BisnisData[i][bzVault]);

            cache_get_value_name_float(i, "intX", BisnisData[i][bzIntX]);
            cache_get_value_name_float(i, "intY", BisnisData[i][bzIntY]);
            cache_get_value_name_float(i, "intZ", BisnisData[i][bzZIntZ]);
            cache_get_value_name_int(i, "intID", BisnisData[i][bzInt]);
            cache_get_value_name_int(i, "virtualWorld", BisnisData[i][bzVW]);
            cache_get_value_name_float(i, "pointX", BisnisData[i][bzPointX]);
            cache_get_value_name_float(i, "pointY", BisnisData[i][bzPointY]);
            cache_get_value_name_float(i, "pointZ", BisnisData[i][bzPointZ]);

            new isLocked;
            cache_get_value_name_int(i, "locked", isLocked);
            BisnisData[i][bzLocked] = (isLocked == 1) ? true : false;

            if(BisnisData[i][bzPointX] != 0.0) {
                BisnisData[i][bzPointPickup] = CreateDynamicPickup(1274, 23, 
                    BisnisData[i][bzPointX], BisnisData[i][bzPointY], BisnisData[i][bzPointZ], 
                    BisnisData[i][bzVW], BisnisData[i][bzInt]);
                
                BisnisData[i][bzPointLabel] = CreateDynamic3DTextLabel("Untuk Membeli Product\nTekan Tombol {9b59b6}[Y]", -1, 
                    BisnisData[i][bzPointX], BisnisData[i][bzPointY], BisnisData[i][bzPointZ], 5.0, .worldid = BisnisData[i][bzVW], .interiorid = BisnisData[i][bzInt]);
            }

            new isOwned;
            cache_get_value_name_int(i, "owned", isOwned);
            BisnisData[i][bzOwned] = (isOwned == 1) ? true : false;

            BisnisData[i][bzPickup] = CreateDynamicPickup(19133, 23, BisnisData[i][bzX], BisnisData[i][bzY], BisnisData[i][bzZ], 0, 0);
            BisnisData[i][bzIntPickup] = CreateDynamicPickup(19133, 23, BisnisData[i][bzIntX], BisnisData[i][bzIntY], BisnisData[i][bzZIntZ], BisnisData[i][bzVW], BisnisData[i][bzInt]);

            if(BisnisData[i][bzMapIcon] != 0) DestroyDynamicMapIcon(BisnisData[i][bzMapIcon]);

            BisnisData[i][bzMapIcon] = CreateDynamicMapIcon(
                BisnisData[i][bzX], 
                BisnisData[i][bzY], 
                BisnisData[i][bzZ], 
                GetBisnisIcon(BisnisData[i][bzType]), 
                -1,
                0,
                0,
                -1,
                100.0
            );
            UpdateBisnisLabel(i);
            TotalBisnis++;
        }
        printf("[MySQL] Berhasil memuat %d Bisnis MayoW.", TotalBisnis);
    }
    return 1;
}

CMD:createbisnis(playerid, params[]) {
    if(admin_level[playerid] < 7) return PermissionError(playerid);

    new type, price;
    if(sscanf(params, "dd", type, price)) return SendClientMessage(playerid, -1, "Gunakan: /createbisnis [type 1-4] [price]");
    if(type < 1 || type > 4) return SendClientMessage(playerid, -1, "Type: 1:Elec, 2:Food, 3:Equip, 4:Market");

    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);

    new query[256];
    mysql_format(mMysql, query, sizeof(query), "INSERT INTO `bisnis` (`type`, `price`, `posX`, `posY`, `posZ`) VALUES (%d, %d, '%f', '%f', '%f')", type, price, x, y, z);
    mysql_tquery(mMysql, query, "OnBisnisInserted", "ddfff", type, price, x, y, z);

    SendClientMessage(playerid, -1, "{A020F0}[PROSES] {ffffff} Bisnis sedang Dibuat...");
    return 1;
}
forward OnBisnisInserted(type, price, Float:x, Float:y, Float:z);
public OnBisnisInserted(type, price, Float:x, Float:y, Float:z) {
    new id = TotalBisnis;
    BisnisData[id][bzID] = cache_insert_id();
    BisnisData[id][bzType] = type;
    BisnisData[id][bzPrice] = price;
    BisnisData[id][bzX] = x;
    BisnisData[id][bzY] = y;
    BisnisData[id][bzZ] = z;
    BisnisData[id][bzVW] = BisnisData[id][bzID];

    if(type == 1) { 
        BisnisData[id][bzIntX] = -2240.10;
        BisnisData[id][bzIntY] = 136.97;
        BisnisData[id][bzZIntZ] = 1035.41;
        BisnisData[id][bzInt] = 6;
    }
    else if(type == 2) {
        BisnisData[id][bzIntX] = 372.3891;
        BisnisData[id][bzIntY] = -133.5232;
        BisnisData[id][bzZIntZ] = 1001.4922;
        BisnisData[id][bzInt] = 5;
    }
    else if(type == 3) {
        BisnisData[id][bzIntX] = 285.8485;
        BisnisData[id][bzIntY] = -86.7571;
        BisnisData[id][bzZIntZ] = 1001.5229;
        BisnisData[id][bzInt] = 4;
    }
    else if(type == 4) {
        BisnisData[id][bzIntX] = 6.3571; 
        BisnisData[id][bzIntY] = -31.7603; 
        BisnisData[id][bzZIntZ] = 1003.5494; 
        BisnisData[id][bzInt] = 10;
    }

    BisnisData[id][bzStock] = 100;
    BisnisData[id][bzOwned] = false;
    format(BisnisData[id][bzOwner], 24, "No Owner");

    format(BisnisData[id][bzName], 64, "%s Business", GetBisnisType(type));

    new query[500];
    mysql_format(mMysql, query, sizeof(query), 
        "UPDATE `bisnis` SET `name`='%e', `intX`='%f', `intY`='%f', `intZ`='%f', `intID`='%d', `virtualWorld`='%d' WHERE `id`='%d'",
        BisnisData[id][bzName], BisnisData[id][bzIntX], BisnisData[id][bzIntY], BisnisData[id][bzZIntZ], BisnisData[id][bzInt], BisnisData[id][bzVW], BisnisData[id][bzID]
    );
    mysql_tquery(mMysql, query);

    BisnisData[id][bzPickup] = CreateDynamicPickup(19133, 23, BisnisData[id][bzX], BisnisData[id][bzY], BisnisData[id][bzZ], 0, 0);
    BisnisData[id][bzIntPickup] = CreateDynamicPickup(19133, 23, BisnisData[id][bzIntX], BisnisData[id][bzIntY], BisnisData[id][bzZIntZ], BisnisData[id][bzVW], BisnisData[id][bzInt]);
    
    UpdateBisnisLabel(id);

    if(BisnisData[id][bzMapIcon] != 0) DestroyDynamicMapIcon(BisnisData[id][bzMapIcon]);
    BisnisData[id][bzMapIcon] = CreateDynamicMapIcon(
        BisnisData[id][bzX], 
        BisnisData[id][bzY], 
        BisnisData[id][bzZ], 
        GetBisnisIcon(BisnisData[id][bzType]), 
        -1, 0, 0, -1, 100.0
    );
    
    TotalBisnis++;
    return 1;
}
CMD:buybisz(playerid, params[]) {
    for(new i = 0; i < TotalBisnis; i++) {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, BisnisData[i][bzX], BisnisData[i][bzY], BisnisData[i][bzZ])) {
            if(BisnisData[i][bzOwned]) return SendClientMessage(playerid, -1, "Sudah ada pemilik.");
            if(GetPlayerMoney(playerid) < BisnisData[i][bzPrice]) return SendClientMessage(playerid, -1, "Uang tidak cukup.");

            GivePlayerMoney(playerid, -BisnisData[i][bzPrice]);
            GetPlayerName(playerid, BisnisData[i][bzOwner], MAX_PLAYER_NAME);
            BisnisData[i][bzOwned] = true;

            new query[200];
            mysql_format(mMysql, query, sizeof(query), "UPDATE `bisnis` SET `owner`='%e', `owned`='1' WHERE `id`='%d'", BisnisData[i][bzOwner], BisnisData[i][bzID]);
            mysql_tquery(mMysql, query);

            UpdateBisnisLabel(i);
            SendClientMessage(playerid, -1, "Selamat! Bisnis berhasil dibeli.");
            return 1;
        }
    }
    return 1;
}
CMD:editbisnis(playerid, params[])
{
    if(admin_level[playerid] < 7) return PermissionError(playerid);

    new idbiz, opt[20], val[64];
    if(sscanf(params, "ds[20]S()[64]", idbiz, opt, val)) return SendClientMessage(playerid, -1, "Gunakan: /editbisnis [id] [stock/status/point/location/owner/delete]");

    new index = -1;
    for(new i = 0; i < TotalBisnis; i++) {
        if(BisnisData[i][bzID] == idbiz) { index = i; break; }
    }
    if(index == -1) return SendClientMessage(playerid, -1, "ID Bisnis tidak ditemukan.");

    new query[256];

    if(!strcmp(opt, "stock", true)) {
        new amount = strval(val);
        BisnisData[index][bzStock] = amount;
        
        mysql_format(mMysql, query, sizeof(query), "UPDATE bisnis SET stock = %d WHERE id = %d", amount, idbiz);
        mysql_tquery(mMysql, query);
        
        UpdateBisnisLabel(index);
        SendClientMessage(playerid, -1, "Stock berhasil diupdate.");
    }
    else if(!strcmp(opt, "status", true)) {
        new stat = strval(val);
        if(stat == 0) BisnisData[index][bzLocked] = true;
        else BisnisData[index][bzLocked] = false;

        mysql_format(mMysql, query, sizeof(query), "UPDATE bisnis SET locked = %d WHERE id = %d", (BisnisData[index][bzLocked] ? 1 : 0), idbiz);
        mysql_tquery(mMysql, query);
        
        UpdateBisnisLabel(index);
        SendClientMessage(playerid, -1, BisnisData[index][bzLocked] ? "Bisnis di-lock oleh admin." : "Bisnis di-unlock oleh admin.");
    }
    else if(!strcmp(opt, "location", true)) {
        GetPlayerPos(playerid, BisnisData[index][bzX], BisnisData[index][bzY], BisnisData[index][bzZ]);

        if(IsValidDynamicPickup(BisnisData[index][bzPickup])) DestroyDynamicPickup(BisnisData[index][bzPickup]);
        BisnisData[index][bzPickup] = CreateDynamicPickup(19133, 23, BisnisData[index][bzX], BisnisData[index][bzY], BisnisData[index][bzZ]);
        if(BisnisData[index][bzMapIcon] != 0) DestroyDynamicMapIcon(BisnisData[index][bzMapIcon]);
        BisnisData[index][bzMapIcon] = CreateDynamicMapIcon(BisnisData[index][bzX], BisnisData[index][bzY], BisnisData[index][bzZ], GetBisnisIcon(BisnisData[index][bzType]), -1);

        mysql_format(mMysql, query, sizeof(query), "UPDATE bisnis SET posX = '%f', posY = '%f', posZ = '%f' WHERE id = %d", BisnisData[index][bzX], BisnisData[index][bzY], BisnisData[index][bzZ], idbiz);
        mysql_tquery(mMysql, query);
        
        UpdateBisnisLabel(index);
        SendClientMessage(playerid, -1, "Lokasi berhasil dipindahkan ke tempat Anda berdiri.");
    }
    else if(!strcmp(opt, "owner", true)) {
        format(BisnisData[index][bzOwner], 24, val);
        BisnisData[index][bzOwned] = (val[0] == '\0' || !strcmp(val, "No Owner", true)) ? false : true;
        
        mysql_format(mMysql, query, sizeof(query), "UPDATE bisnis SET owner = '%e', owned = %d WHERE id = %d", val, (BisnisData[index][bzOwned] ? 1 : 0), idbiz);
        mysql_tquery(mMysql, query);
        
        UpdateBisnisLabel(index);
        SendClientMessage(playerid, -1, "Owner berhasil diganti.");
    }
    else if(!strcmp(opt, "delete", true)) {
        mysql_format(mMysql, query, sizeof(query), "DELETE FROM bisnis WHERE id = %d", idbiz);
        mysql_tquery(mMysql, query);

        if(IsValidDynamicPickup(BisnisData[index][bzPickup])) DestroyDynamicPickup(BisnisData[index][bzPickup]);
        if(IsValidDynamic3DTextLabel(BisnisData[index][bzLabel])) DestroyDynamic3DTextLabel(BisnisData[index][bzLabel]);
        if(BisnisData[index][bzMapIcon] != 0) DestroyDynamicMapIcon(BisnisData[index][bzMapIcon]);
        if(IsValidDynamicPickup(BisnisData[index][bzIntPickup])) DestroyDynamicPickup(BisnisData[index][bzIntPickup]);
        if(IsValidDynamic3DTextLabel(BisnisData[index][bzIntLabel])) DestroyDynamic3DTextLabel(BisnisData[index][bzIntLabel]);

        for(new i = index; i < TotalBisnis - 1; i++)
        {
            BisnisData[i] = BisnisData[i + 1];
        }
        TotalBisnis--;

        SendClientMessage(playerid, -1, "{ff0000}BISNIS: {ffffff}Bisnis berhasil dihapus total dari database dan RAM.");
    }
    else if(!strcmp(opt, "point", true)) {
        if(GetPlayerVirtualWorld(playerid) == 0) return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Set point harus di dalam interior!");

        GetPlayerPos(playerid, BisnisData[index][bzPointX], BisnisData[index][bzPointY], BisnisData[index][bzPointZ]);
        if(IsValidDynamicPickup(BisnisData[index][bzPointPickup])) DestroyDynamicPickup(BisnisData[index][bzPointPickup]);
        if(IsValidDynamic3DTextLabel(BisnisData[index][bzPointLabel])) DestroyDynamic3DTextLabel(BisnisData[index][bzPointLabel]);

        BisnisData[index][bzPointPickup] = CreateDynamicPickup(1274, 23, 
            BisnisData[index][bzPointX], BisnisData[index][bzPointY], BisnisData[index][bzPointZ], 
            BisnisData[index][bzVW], BisnisData[index][bzInt]);
        
        BisnisData[index][bzPointLabel] = CreateDynamic3DTextLabel("Untuk Membeli Product\nTekan Tombol {9b59b6}[Y]", -1, 
            BisnisData[index][bzPointX], BisnisData[index][bzPointY], BisnisData[index][bzPointZ], 5.0, .worldid = BisnisData[index][bzVW], .interiorid = BisnisData[index][bzInt]);


        mysql_format(mMysql, query, sizeof(query), "UPDATE bisnis SET pointX = '%f', pointY = '%f', pointZ = '%f' WHERE id = %d", 
            BisnisData[index][bzPointX], BisnisData[index][bzPointY], BisnisData[index][bzPointZ], idbiz);
        mysql_tquery(mMysql, query);

        SendClientMessage(playerid, -1, "{2ecc71}SUCCESS: {ffffff}Point belanja (Pickup) berhasil di-set!");
    }
    return 1;
}

CMD:bm(playerid, params[])
{
    new index = -1;
    for(new i = 0; i < TotalBisnis; i++) {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, BisnisData[i][bzX], BisnisData[i][bzY], BisnisData[i][bzZ])) {
            if(!strcmp(BisnisData[i][bzOwner], pData[playerid][pName], true)) {
                index = i;
                break;
            }
        }
    }

    if(index == -1) return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu harus berada di dekat bisnis milikmu!");

    SetPVarInt(playerid, "EditingBizz", index);
    ShowPlayerDialog(playerid, DIALOG_BUSINESS_MENU, DIALOG_STYLE_LIST, "Business Menu", "Edit Nama Bisnis\nLock/Unlock Bisnis\nHarga Product (Coming Soon)\nMoney Vault", "Select", "Close");
    return 1;
}

CMD:givebusiness(playerid, params[])
{
    new idbiz, targetid;
    
    // Mengecek format parameter: /givebusiness [idbiz] [targetid]
    if(sscanf(params, "du", idbiz, targetid)) 
        return SendClientMessage(playerid, -1, "Gunakan: /givebusiness [id bisnis] [id/nama player]");
        
    // Mengecek apakah player target sedang login/aktif
    if(!IsPlayerConnected(targetid)) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Player yang dituju tidak terhubung!");
        
    // Mencegah player memberikan bisnis ke dirinya sendiri
    if(playerid == targetid) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu tidak bisa memberikan bisnis ke diri sendiri!");
        
    // Mencari array index dari ID Bisnis yang diinput
    new index = -1;
    for(new i = 0; i < TotalBisnis; i++) {
        if(BisnisData[i][bzID] == idbiz) { 
            index = i; 
            break; 
        }
    }
    
    if(index == -1) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}ID Bisnis tersebut tidak ditemukan di database.");
        
    // Mengecek apakah player adalah pemilik bisnis asli (Berdasarkan variabel pData milikmu)
    if(strcmp(BisnisData[index][bzOwner], pData[playerid][pName], true) != 0) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu bukan pemilik dari bisnis ini!");
        
    // Mengecek apakah pemilik berada di dekat bisnis
    if(!IsPlayerInRangeOfPoint(playerid, 3.0, BisnisData[index][bzX], BisnisData[index][bzY], BisnisData[index][bzZ])) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu harus berada di dekat bisnis yang ingin diberikan!");
        
    // Mengecek apakah penerima juga berada di dekat bisnis tersebut
    if(!IsPlayerInRangeOfPoint(targetid, 5.0, BisnisData[index][bzX], BisnisData[index][bzY], BisnisData[index][bzZ])) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Penerima bisnis juga harus berada di dekat bisnis tersebut!");

    // Mengambil nama target dan memindahkan kepemilikan bisnis
    new targetName[MAX_PLAYER_NAME];
    GetPlayerName(targetid, targetName, MAX_PLAYER_NAME);
    format(BisnisData[index][bzOwner], MAX_PLAYER_NAME, targetName);
    
    // Melakukan update pada database MySQL
    new query[256];
    mysql_format(mMysql, query, sizeof(query), "UPDATE `bisnis` SET `owner`='%e' WHERE `id`='%d'", BisnisData[index][bzOwner], idbiz);
    mysql_tquery(mMysql, query);
    
    // Update 3D Text Label agar nama owner yang baru langsung muncul
    UpdateBisnisLabel(index);
    
    // Memberikan pesan notifikasi sukses kepada Pemberi dan Penerima
    new str[144];
    format(str, sizeof(str), "{2ecc71}BISNIS: {ffffff}Kamu telah berhasil memberikan Bisnis (ID: %d) kepada %s.", idbiz, targetName);
    SendClientMessage(playerid, -1, str);
    
    format(str, sizeof(str), "{2ecc71}BISNIS: {ffffff}%s telah memberikan kepemilikan Bisnis (ID: %d) kepadamu.", pData[playerid][pName], idbiz);
    SendClientMessage(targetid, -1, str);
    
    return 1;
}

stock GiveMoneyToBusiness(bizid, amount)
{
    BisnisData[bizid][bzVault] += amount;
    BisnisData[bizid][bzStock]--;
    
    new query[128];
    mysql_format(mMysql, query, sizeof(query), "UPDATE bisnis SET vault = %d, stock = %d WHERE id = %d", 
        BisnisData[bizid][bzVault], BisnisData[bizid][bzStock], BisnisData[bizid][bzID]);
    mysql_tquery(mMysql, query);
    return 1;
}
//TINGGAL BIKIN SQL NYA SAMA OTOT Y