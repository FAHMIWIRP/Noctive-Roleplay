if(clickedid == AIRDROP)
    {
        new str[500], count = 0, playerListString[500];
        playerListString[0] = '\0';
        foreach(new i : Player)
        {
            if(IsPlayerConnected(i) && NearPlayer(playerid, i, 5) && i != playerid)
            {
                format(str, sizeof(str), "Kantong - %s (%d)\n", pData[i][pName], i);
                strcat(playerListString, str);
                SetPlayerListitemValue(playerid, count++, i);
            }
        }
        if(!count) 
        {
            ShowError(playerid, "Tidak ada player lain didekat mu!");
        }
        else 
        {
            ShowPlayerDialog(playerid, DIALOG_AIRDROP, DIALOG_STYLE_LIST, "Liberal Town AirDrop", playerListString, "Pilih", "Tutup");
        }
    }

stock bandiar(playerid, userid)
{
    new Id = PlayerInfo[playerid][pID];
    new Name[MAX_PLAYER_NAME];
    new No;

    // Mengambil nomor dari variabel PVar
    GetPVarInt(userid, "nNumber", No);

    // Ambil nama kontak dari variabel PVar
    GetPVarString(userid, "nName", Name, sizeof(Name));

    format(MySQLStr, sizeof(MySQLStr), "INSERT INTO `book` (`plID`, `nName`, `nNumber`) VALUES (%d, '%s', %d)", Id, Name, No);
    mysql_tquery(mMysql, MySQLStr, "", "");

    new ARMZ[256];
    format(ARMZ, sizeof(ARMZ), "~y~%s ~w~telah membagikan nomor hpnya ke kontak kamu", PlayerInfo[playerid][pName]);
    ShowSucces(userid, ARMZ);
    ShowSucces(playerid, "Berhasil membagikan kontak");

    // Hapus variabel PVar setelah digunakan
    DeletePVar(userid, "nName");
    DeletePVar(userid, "nNumber");

    return 1;
}

