#include <a_samp>
#include <streamer>
// Pastikan include mysql juga sudah ter-load sebelum ini jika dibutuhkan

#define MAX_VENDING 100
#define DIALOG_VENDING_BUY 2550 
#define DIALOG_VENDING_MENU   2551
#define DIALOG_VENDING_NAME   2552
#define DIALOG_VENDING_VAULT  2553

enum vmInfo {
    vmID,
    vmPrice,
    Float:vmX,
    Float:vmY,
    Float:vmZ,
    Float:vmA, 
    vmOwner[MAX_PLAYER_NAME],
    vmName[64],
    vmStock,
    bool:vmOwned,
    vmVault,
    vmObject, 
    Text3D:vmLabel,
    bool:vmLocked
}
new VendingData[MAX_VENDING][vmInfo];
new TotalVending = 0;

// ================= [ FUNGSI & CALLBACK ] =================
stock GetNearestVending(playerid) {
    for (new i = 0; i < TotalVending; i++) {
        if (IsPlayerInRangeOfPoint(playerid, 2.5, VendingData[i][vmX], VendingData[i][vmY], VendingData[i][vmZ]))
            return i; // KEMBALIKAN INDEX ARRAY, BUKAN vmID
    }
    return -1;
}
stock UpdateVendingLabel(id) {
    new str[512], status[20];
    status = (VendingData[id][vmLocked]) ? ("{ff0000}Locked") : ("{2ecc71}Unlocked");

    if(!VendingData[id][vmOwned]) { 
        format(str, sizeof(str), "{ffff00}VENDING MACHINE [ID: %d]\n{0576FF}Vending Ini Dijual\n{ffffff}Status: %s\nPrice: {2ecc71}%s\n{ffffff}Stock: %d\n{0576FF}/buyvending {ffffff}Untuk Membeli\nTekan Tombol {0576FF}[Y] {ffffff}Untuk Berbelanja",
            VendingData[id][vmID], status, FormatMoney(VendingData[id][vmPrice]), VendingData[id][vmStock]);
    } else {
        format(str, sizeof(str), "{ffff00}VENDING MACHINE [ID: %d]\n{0576FF}%s\n{ffffff}Status: %s\nOwner Name: {2ecc71}%s\n{ffffff}Stock: %d\nTekan Tombol {0576FF}[Y] {ffffff}Untuk Berbelanja",
            VendingData[id][vmID], VendingData[id][vmName], status, VendingData[id][vmOwner], VendingData[id][vmStock]);
    }

    if(IsValidDynamic3DTextLabel(VendingData[id][vmLabel])) UpdateDynamic3DTextLabelText(VendingData[id][vmLabel], -1, str);
    else VendingData[id][vmLabel] = CreateDynamic3DTextLabel(str, -1, VendingData[id][vmX], VendingData[id][vmY], VendingData[id][vmZ] + 1.2, 10.0); 
    return 1;
}

forward LoadVending();
public LoadVending() {
    new rows = cache_num_rows();
    if(rows > 0) {
        for(new i = 0; i < rows && i < MAX_VENDING; i++) {
            cache_get_value_name_int(i, "id", VendingData[i][vmID]);
            cache_get_value_name_int(i, "price", VendingData[i][vmPrice]);
            cache_get_value_name_float(i, "posX", VendingData[i][vmX]);
            cache_get_value_name_float(i, "posY", VendingData[i][vmY]);
            cache_get_value_name_float(i, "posZ", VendingData[i][vmZ]);
            cache_get_value_name_float(i, "posA", VendingData[i][vmA]);
            cache_get_value_name(i, "owner", VendingData[i][vmOwner], MAX_PLAYER_NAME);
            cache_get_value_name(i, "name", VendingData[i][vmName], 64);
            cache_get_value_name_int(i, "stock", VendingData[i][vmStock]);
            cache_get_value_name_int(i, "vault", VendingData[i][vmVault]);

            new isLocked, isOwned;
            cache_get_value_name_int(i, "locked", isLocked);
            VendingData[i][vmLocked] = (isLocked == 1) ? true : false;
            cache_get_value_name_int(i, "owned", isOwned);
            VendingData[i][vmOwned] = (isOwned == 1) ? true : false;

            VendingData[i][vmObject] = CreateDynamicObject(1776, VendingData[i][vmX], VendingData[i][vmY], VendingData[i][vmZ], 0.0, 0.0, VendingData[i][vmA]);

            UpdateVendingLabel(i);
            TotalVending++;
        }
        printf("[MySQL] Berhasil memuat %d Vending Machine MayoW.", TotalVending);
    }
    return 1;
}

forward OnVendingInserted(price, Float:x, Float:y, Float:z, Float:a);
public OnVendingInserted(price, Float:x, Float:y, Float:z, Float:a) {
    new id = TotalVending;
    VendingData[id][vmID] = cache_insert_id();
    VendingData[id][vmPrice] = price;
    VendingData[id][vmX] = x;
    VendingData[id][vmY] = y;
    VendingData[id][vmZ] = z;
    VendingData[id][vmA] = a;
    VendingData[id][vmStock] = 50; 
    VendingData[id][vmOwned] = false;
    VendingData[id][vmLocked] = false;
    VendingData[id][vmVault] = 0;
    format(VendingData[id][vmOwner], MAX_PLAYER_NAME, "No Owner");
    format(VendingData[id][vmName], 64, "Vending Machine");

    new query[300];
    mysql_format(mMysql, query, sizeof(query), "UPDATE `vending` SET `name`='%e', `stock`='%d' WHERE `id`='%d'", VendingData[id][vmName], VendingData[id][vmStock], VendingData[id][vmID]);
    mysql_tquery(mMysql, query);

    VendingData[id][vmObject] = CreateDynamicObject(1776, x, y, z, 0.0, 0.0, a);
    UpdateVendingLabel(id);
    TotalVending++;
    return 1;
}

// ================= [ COMMANDS ] =================

CMD:createvending(playerid, params[]) {
    if(admin_level[playerid] < 7) return PermissionError(playerid);
    new price;
    if(sscanf(params, "d", price)) return SendClientMessage(playerid, -1, "Gunakan: /createvending [price]");

    new Float:x, Float:y, Float:z, Float:a;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);
    z -= 0.5; 

    new query[256];
    mysql_format(mMysql, query, sizeof(query), "INSERT INTO `vending` (`price`, `posX`, `posY`, `posZ`, `posA`) VALUES (%d, '%f', '%f', '%f', '%f')", price, x, y, z, a);
    mysql_tquery(mMysql, query, "OnVendingInserted", "dffff", price, x, y, z, a);
    SendClientMessage(playerid, -1, "{A020F0}[PROSES] {ffffff}Vending Machine sedang dibuat ke database...");
    return 1;
}

CMD:buyvending(playerid, params[]) {
    for(new i = 0; i < TotalVending; i++) {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, VendingData[i][vmX], VendingData[i][vmY], VendingData[i][vmZ])) {
            if(VendingData[i][vmOwned]) return SendClientMessage(playerid, -1, "Vending ini sudah ada pemilik.");
            if(GetPlayerMoney(playerid) < VendingData[i][vmPrice]) return SendClientMessage(playerid, -1, "Uang tidak cukup.");

            GivePlayerMoney(playerid, -VendingData[i][vmPrice]);
            GetPlayerName(playerid, VendingData[i][vmOwner], MAX_PLAYER_NAME);
            VendingData[i][vmOwned] = true;

            new query[200];
            mysql_format(mMysql, query, sizeof(query), "UPDATE `vending` SET `owner`='%e', `owned`='1' WHERE `id`='%d'", VendingData[i][vmOwner], VendingData[i][vmID]);
            mysql_tquery(mMysql, query);

            UpdateVendingLabel(i);
            SendClientMessage(playerid, -1, "Selamat! Vending Machine berhasil dibeli.");
            return 1;
        }
    }
    return 1;
}

CMD:editvending(playerid, params[]) {
    if(admin_level[playerid] < 7) return PermissionError(playerid);
    new idvm, opt[20], val[64];
    if(sscanf(params, "ds[20]S()[64]", idvm, opt, val)) return SendClientMessage(playerid, -1, "Gunakan: /editvending [id] [stock/pos/owner/price/delete]");

    new index = -1;
    for(new i = 0; i < TotalVending; i++) {
        if(VendingData[i][vmID] == idvm) { index = i; break; }
    }
    if(index == -1) return SendClientMessage(playerid, -1, "ID Vending tidak ditemukan.");
    new query[256];

    if(!strcmp(opt, "stock", true)) {
        new amount = strval(val);
        VendingData[index][vmStock] = amount;
        mysql_format(mMysql, query, sizeof(query), "UPDATE vending SET stock = %d WHERE id = %d", amount, idvm);
        mysql_tquery(mMysql, query);
        UpdateVendingLabel(index);
        SendClientMessage(playerid, -1, "Stock Vending berhasil diupdate.");
    }
    else if(!strcmp(opt, "pos", true)) {
        GetPlayerPos(playerid, VendingData[index][vmX], VendingData[index][vmY], VendingData[index][vmZ]);
        GetPlayerFacingAngle(playerid, VendingData[index][vmA]);
        VendingData[index][vmZ] -= 0.5;

        if(IsValidDynamicObject(VendingData[index][vmObject])) DestroyDynamicObject(VendingData[index][vmObject]);
        VendingData[index][vmObject] = CreateDynamicObject(1776, VendingData[index][vmX], VendingData[index][vmY], VendingData[index][vmZ], 0.0, 0.0, VendingData[index][vmA]);

        mysql_format(mMysql, query, sizeof(query), "UPDATE vending SET posX = '%f', posY = '%f', posZ = '%f', posA = '%f' WHERE id = %d", VendingData[index][vmX], VendingData[index][vmY], VendingData[index][vmZ], VendingData[index][vmA], idvm);
        mysql_tquery(mMysql, query);
        UpdateVendingLabel(index);
        SendClientMessage(playerid, -1, "Lokasi objek vending berhasil dipindahkan.");
    }
    else if(!strcmp(opt, "price", true)) {
        new harga = strval(val);
        VendingData[index][vmPrice] = harga;
        mysql_format(mMysql, query, sizeof(query), "UPDATE vending SET price = %d WHERE id = %d", harga, idvm);
        mysql_tquery(mMysql, query);
        UpdateVendingLabel(index);
        SendClientMessage(playerid, -1, "Harga beli Vending Machine berhasil diubah.");
    }
    else if(!strcmp(opt, "owner", true)) {
        format(VendingData[index][vmOwner], MAX_PLAYER_NAME, val);
        VendingData[index][vmOwned] = (val[0] == '\0' || !strcmp(val, "No Owner", true)) ? false : true;
        mysql_format(mMysql, query, sizeof(query), "UPDATE vending SET owner = '%e', owned = %d WHERE id = %d", val, (VendingData[index][vmOwned] ? 1 : 0), idvm);
        mysql_tquery(mMysql, query);
        UpdateVendingLabel(index);
        SendClientMessage(playerid, -1, "Pemilik Vending berhasil diganti.");
    }
    else if(!strcmp(opt, "delete", true)) {
        mysql_format(mMysql, query, sizeof(query), "DELETE FROM vending WHERE id = %d", idvm);
        mysql_tquery(mMysql, query);
        if(IsValidDynamicObject(VendingData[index][vmObject])) DestroyDynamicObject(VendingData[index][vmObject]);
        if(IsValidDynamic3DTextLabel(VendingData[index][vmLabel])) DestroyDynamic3DTextLabel(VendingData[index][vmLabel]);

        for(new i = index; i < TotalVending - 1; i++) VendingData[i] = VendingData[i + 1];
        TotalVending--;
        SendClientMessage(playerid, -1, "{ff0000}VENDING: {ffffff}Vending dihapus total.");
    }
    return 1;
}
CMD:myvending(playerid, params[])
{
    new index = -1;
    GetPlayerName(playerid,PlayerInfo[playerid][pName],MAX_PLAYER_NAME);

    for(new i = 0; i < TotalVending; i++) {
        if(IsPlayerInRangeOfPoint(playerid, 3.0, VendingData[i][vmX], VendingData[i][vmY], VendingData[i][vmZ])) {
              if(!strcmp(VendingData[i][vmOwner], PlayerInfo[playerid][pName], true)) {
                index = i;
                break;
            }
        }
    }

    if(index == -1) return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu harus berada di dekat vending machine milikmu!");

    SetPVarInt(playerid, "EditingVending", index);
    
    new str[256];
    format(str, sizeof(str), "Ubah Nama Vending\nLock/Unlock Vending (Status: %s)\nTarik Uang Vault (Isi: {2ecc71}$%d{ffffff})", 
        (VendingData[index][vmLocked] ? "{ff0000}Locked" : "{2ecc71}Unlocked"), 
        VendingData[index][vmVault]);

    ShowPlayerDialog(playerid, DIALOG_VENDING_MENU, DIALOG_STYLE_LIST, "Vending Machine - Owner Menu", str, "Select", "Close");
    return 1;
}
CMD:givevending(playerid, params[])
{
    new idvm, targetid;
    
    // Mengecek format parameter: /givevending [idvm] [targetid]
    if(sscanf(params, "du", idvm, targetid)) 
        return SendClientMessage(playerid, -1, "Gunakan: /givevending [id vending] [id/nama player]");
        
    // Mengecek apakah player target sedang login/aktif
    if(!IsPlayerConnected(targetid)) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Player yang dituju tidak terhubung!");
        
    // Mencegah player memberikan vending ke dirinya sendiri
    if(playerid == targetid) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu tidak bisa memberikan vending machine ke diri sendiri!");
        
    // Mencari array index dari ID Vending yang diinput
    new index = -1;
    for(new i = 0; i < TotalVending; i++) {
        if(VendingData[i][vmID] == idvm) { 
            index = i; 
            break; 
        }
    }
    
    if(index == -1) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}ID Vending tersebut tidak ditemukan di database.");
        
    // Mengambil nama pengirim untuk dicocokkan dengan owner
    new playerName[MAX_PLAYER_NAME];
    GetPlayerName(playerid, playerName, MAX_PLAYER_NAME);
        
    // Mengecek apakah player adalah pemilik vending asli
    if(strcmp(VendingData[index][vmOwner], playerName, true) != 0) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu bukan pemilik dari Vending Machine ini!");
        
    // Mengecek apakah pemilik berada di dekat vending
    if(!IsPlayerInRangeOfPoint(playerid, 3.0, VendingData[index][vmX], VendingData[index][vmY], VendingData[index][vmZ])) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Kamu harus berada di dekat Vending Machine yang ingin diberikan!");
        
    // Mengecek apakah penerima juga berada di dekat vending tersebut
    if(!IsPlayerInRangeOfPoint(targetid, 5.0, VendingData[index][vmX], VendingData[index][vmY], VendingData[index][vmZ])) 
        return SendClientMessage(playerid, -1, "{ff0000}ERROR: {ffffff}Penerima juga harus berada di dekat Vending Machine tersebut!");

    // Mengambil nama target dan memindahkan kepemilikan vending
    new targetName[MAX_PLAYER_NAME];
    GetPlayerName(targetid, targetName, MAX_PLAYER_NAME);
    format(VendingData[index][vmOwner], MAX_PLAYER_NAME, targetName);
    
    // Melakukan update pada database MySQL (tabel vending)
    new query[256];
    mysql_format(mMysql, query, sizeof(query), "UPDATE `vending` SET `owner`='%e' WHERE `id`='%d'", VendingData[index][vmOwner], idvm);
    mysql_tquery(mMysql, query);
    
    // Update 3D Text Label agar nama owner yang baru langsung muncul di atas vending
    UpdateVendingLabel(index);
    
    // Memberikan pesan notifikasi sukses kepada Pemberi dan Penerima
    new str[144];
    format(str, sizeof(str), "{2ecc71}VENDING: {ffffff}Kamu telah berhasil memberikan Vending Machine (ID: %d) kepada %s.", idvm, targetName);
    SendClientMessage(playerid, -1, str);
    
    format(str, sizeof(str), "{2ecc71}VENDING: {ffffff}%s telah memberikan kepemilikan Vending Machine (ID: %d) kepadamu.", playerName, idvm);
    SendClientMessage(targetid, -1, str);
    
    return 1;
}