#include <a_samp>
#include <streamer>

#define MAX_DYN_HOUSE 500
#define DIALOG_DYNHOUSE_STORAGE      3000
#define DIALOG_DYNHOUSE_BUYTAX       3001
#define DIALOG_DYNHOUSE_MENU         3002
#define DIALOG_DYNHOUSE_DEPOSIT      3003

enum dhInfo {
    dhID,
    dhPrice,
    Float:dhX,
    Float:dhY,
    Float:dhZ,
    dhOwner[MAX_PLAYER_NAME],
    dhType, // 1: Small, 2: Medium, 3: Large
    bool:dhOwned,
    bool:dhLocked,
    dhTax,
    dhPickup,
    Text3D:dhLabel,
    // Storage Items
    dhMarijuana,
    dhCrack,
    dhMoney,
    dhRedmoney,
    dhMetall,
    dhComponent,
    dhWeapon,
    dhAmmo,
    dhMapIcon
}
new DynHouseData[MAX_DYN_HOUSE][dhInfo];
new TotalDynHouse = 0;

// Helper Functions
stock GetDynHouseTypeName(type) {
    new name[20];
    if(type == 1) name = "Small";
    else if(type == 2) name = "Medium";
    else if(type == 3) name = "Large";
    else name = "Unknown";
    return name;
}

stock GetDynHouseMax(type, item[]) {
    new multiplier = 1;
    if(type == 2) multiplier = 2;
    else if(type == 3) multiplier = 4;

    if(!strcmp(item, "drugs", true)) return 50 * multiplier;
    if(!strcmp(item, "money", true)) return 20000 * multiplier;
    if(!strcmp(item, "material", true)) return 100 * multiplier;
    if(!strcmp(item, "weapon", true)) return 2 * multiplier;
    return 0;
}

forward UpdateDynHouseLabel(id);
public UpdateDynHouseLabel(id) {
    new str[512], status[20];
    status = (DynHouseData[id][dhLocked]) ? ("{ff0000}Locked") : ("{2ecc71}Unlocked");

    if(IsValidDynamicPickup(DynHouseData[id][dhPickup])) DestroyDynamicPickup(DynHouseData[id][dhPickup]);
    if(IsValidDynamic3DTextLabel(DynHouseData[id][dhLabel])) DestroyDynamic3DTextLabel(DynHouseData[id][dhLabel]);
    if(IsValidDynamicMapIcon(DynHouseData[id][dhMapIcon])) DestroyDynamicMapIcon(DynHouseData[id][dhMapIcon]);

    if(!DynHouseData[id][dhOwned]) { 
        DynHouseData[id][dhPickup] = CreateDynamicPickup(1273, 23, DynHouseData[id][dhX], DynHouseData[id][dhY], DynHouseData[id][dhZ], 0, 0);
        format(str, sizeof(str), "{00ff00}HOUSE FOR SALE\n{ffffff}ID: %d\nType: %s\nPrice: {2ecc71}$%d\n{ffffff}Status: %s\nGunakan {0576FF}/buyhouse {ffffff}untuk membeli",
            DynHouseData[id][dhID], GetDynHouseTypeName(DynHouseData[id][dhType]), DynHouseData[id][dhPrice], status);
        DynHouseData[id][dhLabel] = CreateDynamic3DTextLabel(str, -1, DynHouseData[id][dhX], DynHouseData[id][dhY], DynHouseData[id][dhZ] + 0.7, 10.0);
        
        DynHouseData[id][dhMapIcon] = CreateDynamicMapIcon(DynHouseData[id][dhX], DynHouseData[id][dhY], DynHouseData[id][dhZ], 31, -1, -1, -1, -1, 100.0);
        
    } else {
        DynHouseData[id][dhPickup] = CreateDynamicPickup(1272, 23, DynHouseData[id][dhX], DynHouseData[id][dhY], DynHouseData[id][dhZ], 0, 0);
        format(str, sizeof(str), "{0576FF}HOUSE PROPERTY\n{ffffff}ID: %d\nOwner: {2ecc71}%s\nType: %s\nStatus: %s\nTax: %d Days Remaining",
            DynHouseData[id][dhID], DynHouseData[id][dhOwner], GetDynHouseTypeName(DynHouseData[id][dhType]), status, DynHouseData[id][dhTax]);
        DynHouseData[id][dhLabel] = CreateDynamic3DTextLabel(str, -1, DynHouseData[id][dhX], DynHouseData[id][dhY], DynHouseData[id][dhZ] + 0.7, 10.0);
        
        DynHouseData[id][dhMapIcon] = CreateDynamicMapIcon(DynHouseData[id][dhX], DynHouseData[id][dhY], DynHouseData[id][dhZ], 32, -1, -1, -1, -1, 100.0);
    }
    return 1;
}

forward LoadDynHouse();
public LoadDynHouse() {
    new rows = cache_num_rows();
    if(rows > 0) {
        for(new i = 0; i < rows && i < MAX_DYN_HOUSE; i++) {
            cache_get_value_name_int(i, "id", DynHouseData[i][dhID]);
            cache_get_value_name_int(i, "price", DynHouseData[i][dhPrice]);
            cache_get_value_name_float(i, "posX", DynHouseData[i][dhX]);
            cache_get_value_name_float(i, "posY", DynHouseData[i][dhY]);
            cache_get_value_name_float(i, "posZ", DynHouseData[i][dhZ]);
            cache_get_value_name(i, "owner", DynHouseData[i][dhOwner], MAX_PLAYER_NAME);
            cache_get_value_name_int(i, "type", DynHouseData[i][dhType]);
            cache_get_value_name_int(i, "tax", DynHouseData[i][dhTax]);

            new isLocked, isOwned;
            cache_get_value_name_int(i, "locked", isLocked);
            DynHouseData[i][dhLocked] = (isLocked == 1) ? true : false;
            cache_get_value_name_int(i, "owned", isOwned);
            DynHouseData[i][dhOwned] = (isOwned == 1) ? true : false;

            cache_get_value_name_int(i, "marijuana", DynHouseData[i][dhMarijuana]);
            cache_get_value_name_int(i, "crack", DynHouseData[i][dhCrack]);
            cache_get_value_name_int(i, "money", DynHouseData[i][dhMoney]);
            cache_get_value_name_int(i, "redmoney", DynHouseData[i][dhRedmoney]);
            cache_get_value_name_int(i, "metall", DynHouseData[i][dhMetall]);
            cache_get_value_name_int(i, "component", DynHouseData[i][dhComponent]);
            cache_get_value_name_int(i, "weapon", DynHouseData[i][dhWeapon]);
            cache_get_value_name_int(i, "ammo", DynHouseData[i][dhAmmo]);

            UpdateDynHouseLabel(i);
            TotalDynHouse++;
        }
        printf("[MySQL] Berhasil memuat %d Rumah Dinamis.", TotalDynHouse);
    }
    return 1;
}

forward CheckDynHouseTax();
public CheckDynHouseTax() {
    new query[256];
    for(new i = 0; i < TotalDynHouse; i++) {
        if(DynHouseData[i][dhOwned]) {
            DynHouseData[i][dhTax]--;
            if(DynHouseData[i][dhTax] <= 0) {
                DynHouseData[i][dhOwned] = false;
                DynHouseData[i][dhLocked] = true;
                format(DynHouseData[i][dhOwner], MAX_PLAYER_NAME, "No Owner");
                DynHouseData[i][dhTax] = 0;

                mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET owner='No Owner', owned=0, locked=1, tax=0 WHERE id=%d", DynHouseData[i][dhID]);
                mysql_tquery(mMysql, query);
                UpdateDynHouseLabel(i);
            } else {
                mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET tax=%d WHERE id=%d", DynHouseData[i][dhTax], DynHouseData[i][dhID]);
                mysql_tquery(mMysql, query);
            }
        }
    }
    return 1;
}

forward OnDynHouseInserted(price, type, Float:x, Float:y, Float:z);
public OnDynHouseInserted(price, type, Float:x, Float:y, Float:z) {
    new id = TotalDynHouse;
    DynHouseData[id][dhID] = cache_insert_id();
    DynHouseData[id][dhPrice] = price;
    DynHouseData[id][dhType] = type;
    DynHouseData[id][dhX] = x;
    DynHouseData[id][dhY] = y;
    DynHouseData[id][dhZ] = z;
    DynHouseData[id][dhOwned] = false;
    DynHouseData[id][dhLocked] = true;
    DynHouseData[id][dhTax] = 30;
    format(DynHouseData[id][dhOwner], MAX_PLAYER_NAME, "No Owner");

    UpdateDynHouseLabel(id);
    TotalDynHouse++;
    return 1;
}

// ================= [ COMMANDS ] =================

CMD:createhousee(playerid, params[]) {
    if(admin_level[playerid] < 7) return PermissionError(playerid);
    new price, typeStr[20], type = 0;
    if(sscanf(params, "ds[20]", price, typeStr)) return SendClientMessage(playerid, -1, "Gunakan: /createhouse [price] [small/medium/large]");

    if(!strcmp(typeStr, "small", true)) type = 1;
    else if(!strcmp(typeStr, "medium", true)) type = 2;
    else if(!strcmp(typeStr, "large", true)) type = 3;
    else return SendClientMessage(playerid, -1, "Tipe tidak valid! Pilih: small, medium, large");

    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);

    new query[256];
    mysql_format(mMysql, query, sizeof(query), "INSERT INTO `houses` (`price`, `type`, `posX`, `posY`, `posZ`) VALUES (%d, %d, '%f', '%f', '%f')", price, type, x, y, z);
    mysql_tquery(mMysql, query, "OnDynHouseInserted", "ddfff", price, type, x, y, z);
    SendClientMessage(playerid, -1, "{A020F0}[PROSES] {ffffff}Rumah baru sedang didaftarkan...");
    return 1;
}

CMD:buyhouse(playerid, params[]) {
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));

    for(new i = 0; i < TotalDynHouse; i++) {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, DynHouseData[i][dhX], DynHouseData[i][dhY], DynHouseData[i][dhZ])) {
            
            if(DynHouseData[i][dhOwned]) 
                return SendClientMessage(playerid, -1, "Rumah ini sudah dimiliki seseorang.");

            for(new j = 0; j < TotalDynHouse; j++) {
                if(DynHouseData[j][dhOwned] && !strcmp(DynHouseData[j][dhOwner], name, true)) {
                    return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu sudah memiliki rumah! Jual atau berikan rumah lamamu terlebih dahulu.");
                }
            }

            if(GetPlayerMoney(playerid) < DynHouseData[i][dhPrice]) 
                return SendClientMessage(playerid, -1, "Uang Anda tidak cukup.");

            GivePlayerMoney(playerid, -DynHouseData[i][dhPrice]);
            format(DynHouseData[i][dhOwner], MAX_PLAYER_NAME, name);
            DynHouseData[i][dhOwned] = true;
            DynHouseData[i][dhLocked] = false;
            DynHouseData[i][dhTax] = 30;

            new query[200];
            mysql_format(mMysql, query, sizeof(query), "UPDATE `houses` SET `owner`='%e', `owned`='1', `locked`='0', `tax`='30' WHERE `id`='%d'", DynHouseData[i][dhOwner], DynHouseData[i][dhID]);
            mysql_tquery(mMysql, query);

            UpdateDynHouseLabel(i);
            SendClientMessage(playerid, -1, "{2ecc71}SELAMAT! {ffffff}Rumah ini resmi menjadi milik Anda.");
            return 1;
        }
    }
    
    SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu tidak berada di dekat rumah yang dijual.");
    return 1;
}

CMD:lockh(playerid, params[]) {
    new name[MAX_PLAYER_NAME], currentVW = GetPlayerVirtualWorld(playerid);
    GetPlayerName(playerid, name, sizeof(name));
    
    new found = 0;

    for(new i = 0; i < TotalDynHouse; i++) {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, DynHouseData[i][dhX], DynHouseData[i][dhY], DynHouseData[i][dhZ]) || currentVW == DynHouseData[i][dhID]) {
            
            if(!strcmp(DynHouseData[i][dhOwner], name, true)) {
                
                DynHouseData[i][dhLocked] = !DynHouseData[i][dhLocked];

                new query[128];
                mysql_format(mMysql, query, sizeof(query), "UPDATE `houses` SET `locked`='%d' WHERE `id`='%d'", DynHouseData[i][dhLocked], DynHouseData[i][dhID]);
                mysql_tquery(mMysql, query);

                UpdateDynHouseLabel(i);

                new str[128];
                format(str, sizeof(str), "{2ecc71}HOUSE: {ffffff}Pintu rumahmu sekarang %s.", DynHouseData[i][dhLocked] ? ("{ff0000}Terkunci (Locked)") : ("{2ecc71}Terbuka (Unlocked)"));
                SendClientMessage(playerid, -1, str);
                
                found = 1;
                break;
            } else {
                return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Hanya pemilik sah rumah ini yang bisa menguncinya!");
            }
        }
    }

    if(!found) return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu harus berada di depan pintu luar atau di dalam rumah milikmu.");
    return 1;
}

CMD:myhouse(playerid, params[]) {
    new name[MAX_PLAYER_NAME], found = 0;
    GetPlayerName(playerid, name, sizeof(name));

    for(new i = 0; i < TotalDynHouse; i++) {
        if(!strcmp(DynHouseData[i][dhOwner], name, true)) {
            new str[128];
            format(str, sizeof(str), "{2ecc71}[RUMAH] {ffffff}ID: %d | Type: %s | Lock Status: %s | Sisa Pajak: %d Hari", 
                DynHouseData[i][dhID], GetDynHouseTypeName(DynHouseData[i][dhType]), (DynHouseData[i][dhLocked] ? "Terkunci" : "Terbuka"), DynHouseData[i][dhTax]);
            SendClientMessage(playerid, -1, str);
            SetPlayerCheckpoint(playerid, DynHouseData[i][dhX], DynHouseData[i][dhY], DynHouseData[i][dhZ], 3.0);
            SendClientMessage(playerid, -1, "{ffff00}INFO: Checkpoint lokasi rumahmu telah ditandai di map.");
            found = 1;
        }
    }
    if(!found) return SendClientMessage(playerid, -1, "Kamu tidak memiliki aset rumah baru.");
    return 1;
}

CMD:storageh(playerid, params[]) {
    new currentVW = GetPlayerVirtualWorld(playerid);
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));

    for(new i = 0; i < TotalDynHouse; i++) {
        if(currentVW == DynHouseData[i][dhID]) {
            if(strcmp(DynHouseData[i][dhOwner], name, true)) return SendClientMessage(playerid, -1, "Hanya pemilik sah rumah yang bisa membuka storage.");
            
            SetPVarInt(playerid, "AtDynHouseStorage", i);
            new str[512], type = DynHouseData[i][dhType];
            
            format(str, sizeof(str), "Item\tIsi / Slot\n\
                Marijuana\t(%d/%d)\n\
                Crack\t(%d/%d)\n\
                Money\t($%d/$%d)\n\
                Redmoney\t($%d/$%d)\n\
                Metall\t(%d/%d)\n\
                Component\t(%d/%d)\n\
                Lemari Rusak\t(%d/%d)",
                DynHouseData[i][dhMarijuana], GetDynHouseMax(type, "drugs"),
                DynHouseData[i][dhCrack], GetDynHouseMax(type, "drugs"),
                DynHouseData[i][dhMoney], GetDynHouseMax(type, "money"),
                DynHouseData[i][dhRedmoney], GetDynHouseMax(type, "money"),
                DynHouseData[i][dhMetall], GetDynHouseMax(type, "material"),
                DynHouseData[i][dhComponent], GetDynHouseMax(type, "material"),
                DynHouseData[i][dhWeapon], GetDynHouseMax(type, "weapon")
            );
            ShowPlayerDialog(playerid, DIALOG_DYNHOUSE_STORAGE, DIALOG_STYLE_TABLIST_HEADERS, "House Storage System", str, "Pilih", "Tutup");
            return 1;
        }
    }
    SendClientMessage(playerid, -1, "Kamu tidak berada di dalam rumah milikmu.");
    return 1;
}

CMD:buytax(playerid, params[]) {
    new name[MAX_PLAYER_NAME], found = -1;
    GetPlayerName(playerid, name, sizeof(name));

    for(new i = 0; i < TotalDynHouse; i++) {
        if(!strcmp(DynHouseData[i][dhOwner], name, true)) { found = i; break; }
    }
    if(found == -1) return SendClientMessage(playerid, -1, "Kamu tidak memiliki aset rumah.");

    SetPVarInt(playerid, "TaxDynHouseIndex", found);
    ShowPlayerDialog(playerid, DIALOG_DYNHOUSE_BUYTAX, DIALOG_STYLE_LIST, "Pay Tax House", 
        "House Small ($10,000 / 30 Day)\nHouse Medium ($15,000 / 30 Day)\nHouse Large ($20,000 / 30 Day)", "Bayar", "Batal");
    return 1;
}

CMD:edithouse(playerid, params[]) {
    if(admin_level[playerid] < 7) return PermissionError(playerid);
    new idhouse, opt[20], val[64];
    if(sscanf(params, "ds[20]S()[64]", idhouse, opt, val)) return SendClientMessage(playerid, -1, "Gunakan: /edithouse [id] [pos/owner/price/tax/type]");

    new index = -1;
    for(new i = 0; i < TotalDynHouse; i++) {
        if(DynHouseData[i][dhID] == idhouse) { index = i; break; }
    }
    if(index == -1) return SendClientMessage(playerid, -1, "ID Rumah tidak ditemukan!");
    new query[256];

    if(!strcmp(opt, "pos", true)) {
        GetPlayerPos(playerid, DynHouseData[index][dhX], DynHouseData[index][dhY], DynHouseData[index][dhZ]);
        mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET posX='%f', posY='%f', posZ='%f' WHERE id=%d", DynHouseData[index][dhX], DynHouseData[index][dhY], DynHouseData[index][dhZ], idhouse);
        mysql_tquery(mMysql, query);
        UpdateDynHouseLabel(index);
        SendClientMessage(playerid, -1, "Posisi pintu luar rumah berhasil dipindahkan.");
    }
    else if(!strcmp(opt, "owner", true)) {
        format(DynHouseData[index][dhOwner], MAX_PLAYER_NAME, val);
        DynHouseData[index][dhOwned] = (val[0] == '\0' || !strcmp(val, "No Owner", true)) ? false : true;
        mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET owner='%e', owned=%d WHERE id=%d", val, DynHouseData[index][dhOwned], idhouse);
        mysql_tquery(mMysql, query);
        UpdateDynHouseLabel(index);
        SendClientMessage(playerid, -1, "Kepemilikan rumah berhasil diperbarui.");
    }
    else if(!strcmp(opt, "price", true)) {
        DynHouseData[index][dhPrice] = strval(val);
        mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET price=%d WHERE id=%d", DynHouseData[index][dhPrice], idhouse);
        mysql_tquery(mMysql, query);
        UpdateDynHouseLabel(index);
        SendClientMessage(playerid, -1, "Harga jual properti berhasil dirubah.");
    }
    else if(!strcmp(opt, "tax", true)) {
        DynHouseData[index][dhTax] = strval(val);
        mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET tax=%d WHERE id=%d", DynHouseData[index][dhTax], idhouse);
        mysql_tquery(mMysql, query);
        UpdateDynHouseLabel(index);
        SendClientMessage(playerid, -1, "Masa aktif kontrak pajak properti berhasil diubah.");
    }
    else if(!strcmp(opt, "type", true)) {
        new typ = strval(val);
        if(typ < 1 || typ > 3) return SendClientMessage(playerid, -1, "Tipe valid: 1:Small, 2:Medium, 3:Large");
        DynHouseData[index][dhType] = typ;
        mysql_format(mMysql, query, sizeof(query), "UPDATE houses SET type=%d WHERE id=%d", typ, idhouse);
        mysql_tquery(mMysql, query);
        UpdateDynHouseLabel(index);
        SendClientMessage(playerid, -1, "Klasifikasi tipe rumah berhasil diubah.");
    }
    return 1;
}

CMD:givehouse(playerid, params[]) {
    new idhouse, targetid;
    
    if(sscanf(params, "du", idhouse, targetid)) 
        return SendClientMessage(playerid, -1, "Gunakan: /givehouse [id rumah] [id/nama player]");
        
    if(!IsPlayerConnected(targetid)) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Player yang dituju tidak terhubung!");
        
    if(playerid == targetid) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu tidak bisa memberikan properti ke diri sendiri!");
        
    new index = -1;
    for(new i = 0; i < TotalDynHouse; i++) {
        if(DynHouseData[i][dhID] == idhouse) { 
            index = i; 
            break; 
        }
    }
    
    if(index == -1) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}ID Rumah tersebut tidak ditemukan di database.");
        
    new playerName[MAX_PLAYER_NAME];
    GetPlayerName(playerid, playerName, MAX_PLAYER_NAME);
        
    if(strcmp(DynHouseData[index][dhOwner], playerName, true) != 0) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu bukan pemilik sah dari Rumah ini!");
        
    if(!IsPlayerInRangeOfPoint(playerid, 3.0, DynHouseData[index][dhX], DynHouseData[index][dhY], DynHouseData[index][dhZ])) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu harus berada di depan pintu luar Rumah yang ingin diberikan!");
        
    if(!IsPlayerInRangeOfPoint(targetid, 5.0, DynHouseData[index][dhX], DynHouseData[index][dhY], DynHouseData[index][dhZ])) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Penerima juga harus berada di dekat Rumah tersebut!");

    new targetName[MAX_PLAYER_NAME];
    GetPlayerName(targetid, targetName, MAX_PLAYER_NAME);
    format(DynHouseData[index][dhOwner], MAX_PLAYER_NAME, targetName);
    
    new query[256];
    mysql_format(mMysql, query, sizeof(query), "UPDATE `houses` SET `owner`='%e' WHERE `id`='%d'", DynHouseData[index][dhOwner], idhouse);
    mysql_tquery(mMysql, query);
    
    UpdateDynHouseLabel(index);
    
    new str[144];
    format(str, sizeof(str), "{2ecc71}HOUSE: {ffffff}Kamu telah berhasil memberikan Rumah (ID: %d) kepada %s.", idhouse, targetName);
    SendClientMessage(playerid, -1, str);
    
    format(str, sizeof(str), "{2ecc71}HOUSE: {ffffff}%s telah memindahtangankan kepemilikan Rumah (ID: %d) kepadamu.", playerName, idhouse);
    SendClientMessage(targetid, -1, str);
    
    return 1;
}