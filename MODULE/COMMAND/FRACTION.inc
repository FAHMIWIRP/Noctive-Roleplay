CMD:k(playerid, params[])
{
    if(PlayerInfo[playerid][pMuted] > 0) return Send(playerid,0xafafafff,"Anda memiliki larangan obrolan");

    new f_id = GetPlayerData(playerid, pFamily);

    if(f_id == -1) return SCM(playerid, -1, "Anda bukan anggota keluarga!");

    if(!strlen(params)) return SCM(playerid, -1, "Gunakan: /k [teks]");

	format(format_string, 144, "%s[%i]: {FFFFFF}%s", GetPlayerNameEx(playerid), playerid, params);

	SendFamilyMessage(f_id, format_string);

	return 1;
}