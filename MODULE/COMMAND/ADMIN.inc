CMD:wl(playerid, params[])
{
    if(admin_level[playerid] < 1 || !admin_logged[playerid]) return 1;
    ShowPlayerDialog(playerid,1073,DIALOG_STYLE_INPUT,"{00FFFF}Whitelist","{FF0000}Masukan nama player","Oke","Batal");
    return 1;
}
CMD:unwl(playerid,params[])
{
    if(admin_level[playerid] < 1 || !admin_logged[playerid]) return 1;
    ShowPlayerDialog(playerid,1074,DIALOG_STYLE_INPUT,"{00FFFF}Unwhitelist","{FF0000}Masukan nama player","Oke","Batal");
    return 1;
}
CMD:explode(playerid, params[])
{
    if(admin_level[playerid] < 15 || !admin_logged[playerid]) return 1;
    new targetid;
    if(sscanf(params, "u", targetid))
        return SendClientMessage(playerid, -1, "Gunakan: /explode [playerid]");

    if(admin_level[playerid] < 11)
        return SendClientMessage(playerid, -1, "ERROR: Anda bukan Admin.");

    if(!IsPlayerConnected(targetid))
        return SendClientMessage(playerid, -1, "ERROR: Pemain tidak dapat ditemukan.");

    new Float:x, Float:y, Float:z;
    GetPlayerPos(targetid, x, y, z);
    CreateExplosion(x, y, z, 0, 10.0);
    return 1;
}

CMD:setadminname(playerid, params[])
{
    if(admin_level[playerid] < 1) return SendClientMessage(playerid, COLOR_RED, "SERVER {FFFFFF}: Anda Tidak Bisa Melakukan ini");

    if(!strlen(params))
        return SendClientMessage(playerid, 0xCECECEFF, "Gunakan: /setadminname [id pemain] [nickname]");

    extract params -> new to_player, string: message[144 + 1]; else return SendClientMessage(playerid, 0xCECECEFF, "Gunakan: /setadminname [id pemain] [nickname]");

    if(!IsPlayerConnected(to_player))
        return SendClientMessage(playerid, 0xCECECEFF, "Tidak ada pemain seperti itu");

    new fmt_str[128];
    format(fmt_str, sizeof fmt_str, "{FE0000}[SERVER] {FEF500}%s(%d) Merubah Nama Admin %s(%d) Menjadi %s", Name(playerid), playerid, Name(to_player), to_player, message);
    SendAdminMessage(0xFF9945FF, fmt_str);

    format(fmt_str, sizeof fmt_str, "SERVER: Nama Admin Anda Di Ubah Oleh %s(%d) Menjadi %s", PlayerInfo[playerid][pAname], playerid, message);
    SendClientMessage(to_player, 0xCECECEFF, fmt_str);

    new query[140];
    mysql_format(mMysql, query, sizeof query, "UPDATE `admin` SET `pAname` = '%s' WHERE `Name` = '%s'", message, GetPlayerNameEx(to_player));
    mysql_tquery(mMysql, query);

    format(PlayerInfo[to_player][pAname], MAX_PLAYER_NAME, "%s", message);

    return 1;
}

CMD:setname(playerid, params[])
{
    if(admin_level[playerid] < 11) return 1;

    if(!strlen(params))
        return SendClientMessage(playerid, 0xCECECEFF, "Gunakan: /setname [id pemain] [nickname baru]");

    extract params -> new to_player, string: message[144 + 1]; else return SendClientMessage(playerid, 0xCECECEFF, "Gunakan: /setname [id pemain] [nickname]");

    if(!IsPlayerConnected(to_player))
        return SendClientMessage(playerid, 0xCECECEFF, "Tidak ada pemain seperti itu");

    new fmt_str[128];
    format(fmt_str, sizeof fmt_str, "{FE0000}[SERVER] {FEF500}%s(%d) Merubah Nama Pemain %s(%d) Menjadi %s", GetPlayerNameEx(playerid), playerid, GetPlayerNameEx(to_player), to_player, message);
    SendAdminMessage(0xFF9945FF, fmt_str);

    format(fmt_str, sizeof fmt_str, "SERVER: Nama Anda Di Ubah Oleh %s(%d) Menjadi %s", GetPlayerNameEx(playerid), playerid, message);
    SendClientMessage(to_player, 0xCECECEFF, fmt_str);

    format(format_string, 144, "UPDATE `accounts` SET `pName` = '%s' WHERE `pID` = %i", message, GetPlayerAccountID(to_player));
    mysql_tquery(mMysql, format_string);

    format(format_string, 144, "UPDATE `whitelist` SET `playername` = '%s' WHERE `playername` = '%s'", message, GetPlayerNameEx(to_player));
    mysql_tquery(mMysql, format_string);

    if(admin_level[playerid]){
        format(format_string, 144, "UPDATE `admin` SET `Name` = '%s' WHERE `Name` = '%s'", message, GetPlayerNameEx(to_player));
        mysql_tquery(mMysql, format_string);
    }

    if(GetPlayerHouse(to_player) != -1)
    {
        new h_id = GetPlayerHouse(to_player);

        format(HouseInfo[h_id][hOwner], MAX_PLAYER_NAME, message);

        format(format_string, 144, "UPDATE `house` SET `hOwned` = '%s' WHERE `hID` = %i", message, h_id);
        mysql_tquery(mMysql, format_string);
    }

    if(PlayerInfo[to_player][pHotel] != -1)
    {
        new h_id = PlayerInfo[to_player][pHotel];

        format(hotel_info[h_id][hOwner], MAX_PLAYER_NAME, message);

        format(format_string, 144, "UPDATE `hotels` SET `hOwner` = '%s' WHERE `id` = %i", message, h_id);
        mysql_tquery(mMysql, format_string);
    }

    if(GetPlayerBizz(to_player) != -1)
    {
        new b_id = GetPlayerBizz(to_player);

        format(BizzInfo[b_id][bOwner], MAX_PLAYER_NAME, message);

        format(format_string, 144, "UPDATE `bizz` SET `bOwned` = '%s' WHERE `bID` = %i", message, b_id);
        mysql_tquery(mMysql, format_string);
    }

    if(GetPlayerABizz(to_player) != 0)
    {
        new a_id = GetPlayerABizz(to_player);

        format(BizzAInfo[a_id][aOwner], MAX_PLAYER_NAME, message);

        format(format_string, 144, "UPDATE `bizz_fuel` SET `aOwned` = '%s' WHERE `aID` = %i", message, a_id);
        mysql_tquery(mMysql, format_string);
    }

    if(PlayerInfo[playerid][pFamily] != -1)
    {
        new f_id = PlayerInfo[to_player][pFamily];

        if(strfind(GetPlayerNameEx(to_player), family_info[f_id][f_owner], true) != -1)
        {
            format(family_info[f_id][f_owner], MAX_PLAYER_NAME, message);

            format(format_string, 144, "UPDATE `family` SET `f_owner` = '%s' WHERE `f_id` = %i", message, f_id);
            mysql_tquery(mMysql, format_string);
        }
    }

    format(format_string, 188, "INSERT INTO `history_name` (`user_id`,`old_nick`,`new_nick`) VALUES (%i,'%s','%s');", GetPlayerAccountID(playerid), GetPlayerNameEx(playerid), message);
    mysql_tquery(mMysql, format_string);

    SetPlayerName(to_player, message);

    format(PlayerInfo[playerid][pName], MAX_PLAYER_NAME, message);
    return 1;
}

CMD:resetpass(playerid, params[])
{
    if(admin_level[playerid] < 11 || !admin_logged[playerid]) return 1;
    extract params -> new string:playerName[32]; else return Send(playerid, -1, "USAGE: /resetpass [player name]");
    if(strlen(playerName) < 0 || strlen(playerName) > 32) return Send(playerid, -1, "Player name tidak kurang dari 0 dan lebih dari 32");

    new query[120];
    mysql_format(mMysql, query, sizeof query, "SELECT `pName` from `accounts` WHERE `pName` = '%s'", playerName);
    new Cache: result = mysql_query(mMysql, query);

    if(!cache_num_rows()) return SCMF(playerid, COLOR_GREY, "Username %s tidak ditemukan.", playerName);
    cache_delete(result);
    new newPassword[200], newPass_salt[200];
    
    new query2[300];
    mysql_format(mMysql, query2, sizeof query2, "UPDATE `accounts` SET `pPassword` = '%e', `pass_salt` = '%e' WHERE `pName` = '%s'", newPassword, newPass_salt, playerName);
    mysql_tquery(mMysql, query2);

    SCMF(playerid, -1, "Berhasil me-reset password dari %s", playerName);

    format(format_string, sizeof(format_string), "Administrator %s mereset password %s",Name(playerid), playerName);
    AddAdminLog(playerid, format_string);

    return 1;
}

CMD:setpassword(playerid, params[])
{
    if(admin_level[playerid] < 11)
        return PermissionError(playerid);

    new cname[21], query[128], pass[65], tmp[64];
    if(sscanf(params, "s[21]s[20]", cname, pass))
    {
        Info(playerid, "/setpassword <name> <new password>");
        Info(playerid, "Make sure you enter the players name and not ID!");

        return 1;
    }

    mysql_format(mMysql, query, sizeof(query), "SELECT pPassword FROM accounts WHERE pName='%s'", cname);
    mysql_tquery(mMysql, query, "ChangePlayerPassword", "iss", playerid, cname, pass);

    format(tmp, sizeof(tmp), "%s", pass);
    return 1;
}

epublic: ChangePlayerPassword(admin, cPlayer[], newpass[])
{
    new query[512];

    // Lakukan query untuk memeriksa apakah nama ada dalam database
    mysql_format(mMysql, query, sizeof(query), "SELECT pPassword FROM accounts WHERE pName='%s'", cPlayer);
    mysql_tquery(mMysql, query, "CheckPlayerExistence", "iss", admin, cPlayer, newpass);

    return 1;
}

epublic: CheckPlayerExistence(admin, cPlayer[], newpass[])
{
    if(cache_num_rows() > 0)
    {
        new query[512], pass[65], salt[16];

        Info(admin, "[!] Password for %s has been set to \"%s\"", cPlayer, newpass);

        // Generate salt and hash password
        strmid(salt, gensalt(), 0, 6, 6);
        strmid(pass, hashit(salt , newpass), 0, 33, 33);

        // Update password and salt in database
        mysql_format(mMysql, query, sizeof(query), "UPDATE accounts SET pPassword='%s', pass_salt='%e' WHERE pName='%s'", pass, salt, cPlayer);
        mysql_tquery(mMysql, query);
    }
    else
    {
        // Name doesn't exist in database
        Error(admin, "The name '%s' doesn't exist in the database!");
    }

    return 1;
}

CMD:vehname(playerid, params[])
{
    if(admin_level[playerid] >= 1) 
    {
        SendClientMessageEx(playerid, COLOR_WHITE, "Vehicle Search:");

        new
            string[128];

        if(isnull(params)) return Error(playerid, "Masukan Nama kendaraan dengan benar.");
        if(!params[2]) return Error(playerid, "Search keyword too short.");

        for(new v; v < sizeof(VehicleNames); v++) 
        {
            if(strfind(VehicleNames[v], params, true) != -1) {

                if(isnull(string)) format(string, sizeof(string), "%s (ID %d)", VehicleNames[v], v+400);
                else format(string, sizeof(string), "%s | %s (ID %d)", string, VehicleNames[v], v+400);
            }
        }

        if(!string[0]) Error(playerid, "No results found.");
        else if(string[127]) Error(playerid, "Too many results found.");
        else SendClientMessageEx(playerid, COLOR_WHITE, string);
    }
    else
    {
        Error(playerid, "You don't have permission to use this command!");
    }
    return 1;
}

CMD:giverubelall(playerid, params[])
{
    if(admin_level[playerid] < 11)
    {
        return SCM(playerid, COLOR_SYNTAX, "Hanya untuk Admin");
    }
    foreach(new i : Player)
    {
        if(PlayerInfo[i][pLogin])
        {
        PlayerInfo[i][pRouble] += 100;
        OnPlayerUpdateAccountsPer(i, "pRouble", PlayerInfo[i][pRouble]);
        }
    }
    format(format_string, sizeof(format_string), "(( {FF0000} %s Telah Memberi 100 Rouble Untuk Ke Semua Player Yang Online.",GetName(playerid));
    SendClientMessageToAll(COLOR_WHITE, format_string);
    return 1;
}

CMD:givelevelall(playerid, params[])
{
    if(admin_level[playerid] < 11)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }
    foreach(new i : Player)
    {
        if(PlayerInfo[i][pLogin])
        {
        PlayerInfo[i][pLevel] += 1;
        OnPlayerUpdateAccountsPer(i, "pLevel", PlayerInfo[i][pLevel]);
        }
    }
    format(format_string, sizeof(format_string), "(( {FF0000} %s Telah Memberi 1 Level Untuk Ke Semua Player Yang Online.",GetName(playerid));
    SendClientMessageToAll(COLOR_WHITE, format_string);
    return 1;
}

CMD:giverouletall(playerid, params[])
{
    if(admin_level[playerid] < 11)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }
    foreach(new i : Player)
    {
        if(PlayerInfo[i][pLogin])
        {
        PlayerInfo[i][pFreeRoulet] += 3;
        OnPlayerUpdateAccountsPer(i, "pFreeRoulet", PlayerInfo[i][pFreeRoulet]);
        }
    }
    format(format_string, sizeof(format_string), "(( {FF0000} %s Telah Memberi 3 Roulette Gratis Untuk Ke Semua Player Yang Online (/roulette).",GetName(playerid));
    SendClientMessageToAll(COLOR_WHITE, format_string);
    return 1;
}

CMD:givemoneyall(playerid, params[])
{
    new amount;

    if(admin_level[playerid] < 11)
    {
        return SCM(playerid, COLOR_SYNTAX, "Hanya untuk Admin");
    }
    if(sscanf(params, "i", amount))
    {
        return SCM(playerid, COLOR_SYNTAX, "Penggunaan: /givemoneyall [jumlah]");
    }
    if(amount < 1 || amount > 10000000)
    {
        return SCM(playerid, COLOR_SYNTAX, "Maximal jumlah yang di masukan Rp. 10.000.000.");
    }

    foreach(new i : Player)
    {
        if(PlayerInfo[i][pLogin])
        {
            GivePlayerMoneyEx(i, amount, "All In One");
        }
    }
	format(format_string, sizeof(format_string), "{FF0000} %s telah memberikan uang sebesar %d kepada semua pemain online.",GetName(playerid), amount);
	SendClientMessageToAll(COLOR_WHITE, format_string);
    return 1;
}