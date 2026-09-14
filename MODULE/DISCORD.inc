forward CheckPlayers(playerid);
public CheckPlayers(playerid)
{
    new str[102];
    format(str, sizeof(str), "Players: %s/50, Liberal Theater | LTHT v2.7 Update [ONLINE]", number_format(Iter_Count(Player)));
    DCC_SetBotActivity(str);
    return 1;
}

forward ShareGMActivity(playerid);
public ShareGMActivity(playerid)
{
    new sokran[102];
    format(sokran, sizeof(sokran), "Players: %s/50, Playing a Game : Liberal Theater", number_format(Iter_Count(Player)));
    DCC_SetBotActivity(sokran);
    return 1;
}

DCMD:pesan(user, channel, params[])
{
    if(channel != DCC_FindChannelById("1195001227512123492"))
        return 1;

    new string[256];
    if(isnull(params)) return DCC_SendChannelMessage(channel, "/pesan [text]");
    format(string, sizeof(string), "{FF7F00}[B] | {FF0000}Announcement: {FFFFFF}%s ", params);
    SendClientMessageToAll(COLOR_YELLOW, string);
    DCC_SendChannelMessage(channel, "```Pesan anda berhasil dikirim ke dalam kota oleh Liberty Theater Bot!```");
    return 1;
}