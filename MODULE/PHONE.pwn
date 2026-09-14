new PlayerText: PHONEAWAL[MAX_PLAYERS][24];
new PlayerText: PHONEMENUAPP[MAX_PLAYERS][48];
new PlayerText: PHONEAPPSTORE[MAX_PLAYERS][42];
new PlayerText: PHONEBANK[MAX_PLAYERS][36];
new PlayerText: PHONEGOJEK[MAX_PLAYERS][53];

stock PunyaMap(playerid)
{
	if(PlayerInfo[playerid][pApkMap] == 0)
	{
        PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][24]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][34]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][45]);
	}
	if(PlayerInfo[playerid][pApkMap] == 1)
	{
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][24]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][34]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][45]);
	}
	return 1;
}
stock PunyaMbanking(playerid)
{
	if(PlayerInfo[playerid][pApkBank] == 0)
	{
 	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][25]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][35]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][44]);
	}
	if(PlayerInfo[playerid][pApkBank] == 1)
	{
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][25]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][35]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][44]);
	}
	return 1;
}
stock PunyaSosmed(playerid)
{
	if(PlayerInfo[playerid][pApkSosmed] == 0)
	{
 	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][26]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][36]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][46]);
	}
	if(PlayerInfo[playerid][pApkSosmed] == 1)
	{
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][26]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][36]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][46]);
	}
	return 1;
}
stock PunyaGojek(playerid)
{
	if(PlayerInfo[playerid][pApkGojek] == 0)
	{
        PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][27]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][37]);
	    PlayerTextDrawHide(playerid, PHONEMENUAPP[playerid][47]);
	}
	if(PlayerInfo[playerid][pApkGojek] == 1)
	{
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][27]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][37]);
	    PlayerTextDrawShow(playerid, PHONEMENUAPP[playerid][47]);
	}
	return 1;
}
stock CreatePlayerTdPhone(playerid)
{
    PHONEAWAL[playerid][0] = CreatePlayerTextDraw(playerid, 522.500, 206.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][0], 2.500, 211.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][0], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][0], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][0], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][0], 1);

	PHONEAWAL[playerid][1] = CreatePlayerTextDraw(playerid, 528.000, 202.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][1], 77.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][1], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][1], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][1], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][1], 1);

	PHONEAWAL[playerid][2] = CreatePlayerTextDraw(playerid, 612.000, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][2], 2.000, 207.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][2], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][2], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][2], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][2], 1);

	PHONEAWAL[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][3], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][3], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][3], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][3], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][3], 1);

	PHONEAWAL[playerid][4] = CreatePlayerTextDraw(playerid, 591.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][4], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][4], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][4], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][4], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][4], 1);

	PHONEAWAL[playerid][5] = CreatePlayerTextDraw(playerid, 528.000, 419.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][5], 79.000, 2.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][5], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][5], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][5], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][5], 1);

	PHONEAWAL[playerid][6] = CreatePlayerTextDraw(playerid, 525.000, 404.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][6], 88.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][6], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][6], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][6], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][6], 1);

	PHONEAWAL[playerid][7] = CreatePlayerTextDraw(playerid, 528.000, 415.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][7], 79.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][7], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][7], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][7], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][7], 1);

	PHONEAWAL[playerid][8] = CreatePlayerTextDraw(playerid, 518.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][8], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][8], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][8], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][8], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][8], 1);

	PHONEAWAL[playerid][9] = CreatePlayerTextDraw(playerid, 591.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][9], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][9], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][9], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][9], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][9], 1);

	PHONEAWAL[playerid][10] = CreatePlayerTextDraw(playerid, 525.000, 208.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][10], 87.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][10], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][10], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][10], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][10], 1);

	PHONEAWAL[playerid][11] = CreatePlayerTextDraw(playerid, 525.000, 218.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][11], 87.000, 186.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][11], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_pink);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][11], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][11], 1);

	PHONEAWAL[playerid][12] = CreatePlayerTextDraw(playerid, 554.000, 207.000, "Ipong");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][12], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][12], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][12], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][12], 1);

	PHONEAWAL[playerid][13] = CreatePlayerTextDraw(playerid, 553.000, 363.000, "HUD:skipicon");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][13], 28.000, 20.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][13], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][13], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAWAL[playerid][13], 1);

	PHONEAWAL[playerid][14] = CreatePlayerTextDraw(playerid, 598.500, 208.399, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][14], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][14], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][14], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAWAL[playerid][14], 1);

	PHONEAWAL[playerid][15] = CreatePlayerTextDraw(playerid, 559.500, 402.398, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][15], 16.000, 20.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][15], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][15], 1221709055);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][15], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAWAL[playerid][15], 1);

	PHONEAWAL[playerid][16] = CreatePlayerTextDraw(playerid, 560.000, 404.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][16], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][16], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][16], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][16], 1);

	PHONEAWAL[playerid][17] = CreatePlayerTextDraw(playerid, 599.000, 209.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAWAL[playerid][17], 5.000, 6.000);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][17], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][17], 255);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][17], 255);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAWAL[playerid][17], 1);

	PHONEAWAL[playerid][18] = CreatePlayerTextDraw(playerid, 536.000, 384.000, "Klik Untuk Membuka Kunci");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][18], 0.150, 0.999);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][18], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][18], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][18], 1);

	PHONEAWAL[playerid][19] = CreatePlayerTextDraw(playerid, 548.000, 244.000, "12:40");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][19], 0.449, 1.699);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][19], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][19], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][19], 1);

	PHONEAWAL[playerid][20] = CreatePlayerTextDraw(playerid, 548.000, 244.000, "12:40");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][20], 0.449, 1.699);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][20], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][20], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][20], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][20], 1);

	PHONEAWAL[playerid][21] = CreatePlayerTextDraw(playerid, 548.000, 261.000, "34 April 2100");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][21], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][21], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][21], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][21], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][21], 1);

	PHONEAWAL[playerid][22] = CreatePlayerTextDraw(playerid, 549.000, 292.000, "");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][22], 0.728, 3.098);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][22], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][22], 1182971135);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][22], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][22], 1);

	PHONEAWAL[playerid][23] = CreatePlayerTextDraw(playerid, 560.000, 292.000, "KT");
	PlayerTextDrawLetterSize(playerid, PHONEAWAL[playerid][23], 0.728, 3.098);
	PlayerTextDrawAlignment(playerid, PHONEAWAL[playerid][23], 1);
	PlayerTextDrawColor(playerid, PHONEAWAL[playerid][23], 1182971135);
	PlayerTextDrawSetShadow(playerid, PHONEAWAL[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAWAL[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAWAL[playerid][23], 150);
	PlayerTextDrawFont(playerid, PHONEAWAL[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAWAL[playerid][23], 1);

	PHONEMENUAPP[playerid][0] = CreatePlayerTextDraw(playerid, 522.500, 206.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][0], 2.500, 211.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][0], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][0], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][0], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][0], 1);

	PHONEMENUAPP[playerid][1] = CreatePlayerTextDraw(playerid, 528.000, 202.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][1], 77.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][1], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][1], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][1], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][1], 1);

	PHONEMENUAPP[playerid][2] = CreatePlayerTextDraw(playerid, 612.000, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][2], 2.000, 207.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][2], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][2], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][2], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][2], 1);

	PHONEMENUAPP[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][3], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][3], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][3], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][3], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][3], 1);

	PHONEMENUAPP[playerid][4] = CreatePlayerTextDraw(playerid, 591.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][4], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][4], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][4], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][4], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][4], 1);

	PHONEMENUAPP[playerid][5] = CreatePlayerTextDraw(playerid, 528.000, 419.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][5], 79.000, 2.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][5], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][5], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][5], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][5], 1);

	PHONEMENUAPP[playerid][6] = CreatePlayerTextDraw(playerid, 525.000, 404.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][6], 88.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][6], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][6], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][6], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][6], 1);

	PHONEMENUAPP[playerid][7] = CreatePlayerTextDraw(playerid, 528.000, 415.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][7], 79.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][7], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][7], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][7], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][7], 1);

	PHONEMENUAPP[playerid][8] = CreatePlayerTextDraw(playerid, 518.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][8], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][8], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][8], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][8], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][8], 1);

	PHONEMENUAPP[playerid][9] = CreatePlayerTextDraw(playerid, 591.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][9], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][9], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][9], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][9], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][9], 1);

	PHONEMENUAPP[playerid][10] = CreatePlayerTextDraw(playerid, 525.000, 208.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][10], 87.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][10], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][10], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][10], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][10], 1);

	PHONEMENUAPP[playerid][11] = CreatePlayerTextDraw(playerid, 525.000, 218.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][11], 87.000, 186.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][11], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][11], hud_pink);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][11], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][11], 1);

	PHONEMENUAPP[playerid][12] = CreatePlayerTextDraw(playerid, 554.000, 207.000, "Ipong");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][12], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][12], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][12], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][12], 1);

	PHONEMENUAPP[playerid][13] = CreatePlayerTextDraw(playerid, 531.000, 223.000, "00:00");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][13], 0.109, 0.699);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][13], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][13], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][13], 1);

	PHONEMENUAPP[playerid][14] = CreatePlayerTextDraw(playerid, 598.500, 208.399, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][14], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][14], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][14], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][14], 1);

	PHONEMENUAPP[playerid][15] = CreatePlayerTextDraw(playerid, 559.500, 402.399, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][15], 16.000, 20.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][15], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][15], 1221709055);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][15], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][15], 1);

	PHONEMENUAPP[playerid][16] = CreatePlayerTextDraw(playerid, 560.000, 404.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][16], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][16], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][16], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][16], 1);

	PHONEMENUAPP[playerid][17] = CreatePlayerTextDraw(playerid, 599.000, 209.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][17], 5.000, 6.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][17], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][17], 255);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][17], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][17], 1);

	PHONEMENUAPP[playerid][18] = CreatePlayerTextDraw(playerid, 531.000, 236.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][18], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][18], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][18], 16711935);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][18], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][18], 1);

	PHONEMENUAPP[playerid][19] = CreatePlayerTextDraw(playerid, 557.000, 236.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][19], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][19], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][19], 2096890111);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][19], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][19], 1);

	PHONEMENUAPP[playerid][20] = CreatePlayerTextDraw(playerid, 583.000, 236.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][20], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][20], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][20], 1296911871);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][20], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][20], 1);

	PHONEMENUAPP[playerid][21] = CreatePlayerTextDraw(playerid, 531.000, 278.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][21], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][21], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][21], 16711935);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][21], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][21], 1);

	PHONEMENUAPP[playerid][22] = CreatePlayerTextDraw(playerid, 557.000, 278.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][22], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][22], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][22], 1433087999);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][22], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][22], 1);

	PHONEMENUAPP[playerid][23] = CreatePlayerTextDraw(playerid, 583.000, 278.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][23], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][23], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][23], 1433087999);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][23], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][23], 1);

	PHONEMENUAPP[playerid][24] = CreatePlayerTextDraw(playerid, 531.000, 320.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][24], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][24], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][24], 16711935);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][24], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][24], 1);

	PHONEMENUAPP[playerid][25] = CreatePlayerTextDraw(playerid, 557.000, 320.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][25], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][25], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][25], 1221709055);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][25], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][25], 1);

	PHONEMENUAPP[playerid][26] = CreatePlayerTextDraw(playerid, 583.000, 320.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][26], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][26], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][26], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][26], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][26], 1);

	PHONEMENUAPP[playerid][27] = CreatePlayerTextDraw(playerid, 531.000, 361.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][27], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][27], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][27], 16711935);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][27], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEMENUAPP[playerid][27], 1);

	PHONEMENUAPP[playerid][28] = CreatePlayerTextDraw(playerid, 533.000, 261.000, "Kontak");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][28], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][28], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][28], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][28], 1);

	PHONEMENUAPP[playerid][29] = CreatePlayerTextDraw(playerid, 560.000, 261.000, "Pesan");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][29], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][29], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][29], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][29], 1);

	PHONEMENUAPP[playerid][30] = CreatePlayerTextDraw(playerid, 583.000, 261.000, "Panggilan");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][30], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][30], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][30], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][30], 1);

	PHONEMENUAPP[playerid][31] = CreatePlayerTextDraw(playerid, 531.000, 303.000, "AppStore");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][31], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][31], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][31], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][31], 1);

	PHONEMENUAPP[playerid][32] = CreatePlayerTextDraw(playerid, 558.000, 303.000, "Settings");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][32], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][32], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][32], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][32], 1);

	PHONEMENUAPP[playerid][33] = CreatePlayerTextDraw(playerid, 585.000, 303.000, "Kamera");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][33], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][33], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][33], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][33], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][33], 1);

	PHONEMENUAPP[playerid][34] = CreatePlayerTextDraw(playerid, 537.000, 346.000, "MAP");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][34], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][34], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][34], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][34], 1);

	PHONEMENUAPP[playerid][35] = CreatePlayerTextDraw(playerid, 557.000, 346.000, "Mbanking");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][35], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][35], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][35], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][35], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][35], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][35], 1);

	PHONEMENUAPP[playerid][36] = CreatePlayerTextDraw(playerid, 585.000, 346.000, "Sosmed");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][36], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][36], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][36], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][36], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][36], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][36], 1);

	PHONEMENUAPP[playerid][37] = CreatePlayerTextDraw(playerid, 534.000, 387.000, "Gojek");
	PlayerTextDrawLetterSize(playerid, PHONEMENUAPP[playerid][37], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][37], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][37], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][37], 150);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][37], 1);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][37], 1);

	PHONEMENUAPP[playerid][38] = CreatePlayerTextDraw(playerid, 534.000, 240.000, "HUD:radar_saveGame");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][38], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][38], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][38], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][38], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][38], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][38], 1);

	PHONEMENUAPP[playerid][39] = CreatePlayerTextDraw(playerid, 560.000, 240.000, "LD_CHAT:goodcha");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][39], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][39], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][39], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][39], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][39], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][39], 1);

	PHONEMENUAPP[playerid][40] = CreatePlayerTextDraw(playerid, 586.000, 240.000, "HUD:radar_CATALINAPINK");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][40], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][40], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][40], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][40], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][40], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][40], 1);

	PHONEMENUAPP[playerid][41] = CreatePlayerTextDraw(playerid, 534.000, 282.000, "HUD:radar_mafiaCasino");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][41], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][41], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][41], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][41], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][41], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][41], 1);

	PHONEMENUAPP[playerid][42] = CreatePlayerTextDraw(playerid, 560.000, 282.000, "HUD:radar_qmark");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][42], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][42], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][42], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][42], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][42], 1);

	PHONEMENUAPP[playerid][43] = CreatePlayerTextDraw(playerid, 586.000, 282.000, "HUD:radar_light");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][43], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][43], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][43], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][43], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][43], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][43], 1);

	PHONEMENUAPP[playerid][44] = CreatePlayerTextDraw(playerid, 561.000, 324.000, "HUD:radar_cash");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][44], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][44], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][44], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][44], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][44], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][44], 1);

	PHONEMENUAPP[playerid][45] = CreatePlayerTextDraw(playerid, 534.000, 323.000, "HUD:radar_waypoint");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][45], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][45], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][45], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][45], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][45], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][45], 1);

	PHONEMENUAPP[playerid][46] = CreatePlayerTextDraw(playerid, 586.000, 323.000, "HUD:radar_gangN");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][46], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][46], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][46], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][46], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][46], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][46], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][46], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][46], 1);

	PHONEMENUAPP[playerid][47] = CreatePlayerTextDraw(playerid, 534.000, 364.000, "HUD:radar_triadsCasino");
	PlayerTextDrawTextSize(playerid, PHONEMENUAPP[playerid][47], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEMENUAPP[playerid][47], 1);
	PlayerTextDrawColor(playerid, PHONEMENUAPP[playerid][47], -1);
	PlayerTextDrawSetShadow(playerid, PHONEMENUAPP[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, PHONEMENUAPP[playerid][47], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEMENUAPP[playerid][47], 255);
	PlayerTextDrawFont(playerid, PHONEMENUAPP[playerid][47], 4);
	PlayerTextDrawSetProportional(playerid, PHONEMENUAPP[playerid][47], 1);

    PHONEAPPSTORE[playerid][0] = CreatePlayerTextDraw(playerid, 522.500, 206.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][0], 2.500, 211.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][0], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][0], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][0], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][0], 1);

	PHONEAPPSTORE[playerid][1] = CreatePlayerTextDraw(playerid, 528.000, 202.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][1], 77.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][1], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][1], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][1], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][1], 1);

	PHONEAPPSTORE[playerid][2] = CreatePlayerTextDraw(playerid, 612.000, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][2], 2.000, 207.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][2], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][2], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][2], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][2], 1);

	PHONEAPPSTORE[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][3], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][3], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][3], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][3], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][3], 1);

	PHONEAPPSTORE[playerid][4] = CreatePlayerTextDraw(playerid, 591.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][4], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][4], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][4], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][4], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][4], 1);

	PHONEAPPSTORE[playerid][5] = CreatePlayerTextDraw(playerid, 528.000, 419.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][5], 79.000, 2.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][5], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][5], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][5], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][5], 1);

	PHONEAPPSTORE[playerid][6] = CreatePlayerTextDraw(playerid, 525.000, 404.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][6], 88.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][6], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][6], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][6], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][6], 1);

	PHONEAPPSTORE[playerid][7] = CreatePlayerTextDraw(playerid, 528.000, 415.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][7], 79.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][7], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][7], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][7], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][7], 1);

	PHONEAPPSTORE[playerid][8] = CreatePlayerTextDraw(playerid, 518.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][8], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][8], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][8], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][8], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][8], 1);

	PHONEAPPSTORE[playerid][9] = CreatePlayerTextDraw(playerid, 591.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][9], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][9], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][9], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][9], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][9], 1);

	PHONEAPPSTORE[playerid][10] = CreatePlayerTextDraw(playerid, 525.000, 208.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][10], 87.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][10], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][10], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][10], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][10], 1);

	PHONEAPPSTORE[playerid][11] = CreatePlayerTextDraw(playerid, 525.000, 218.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][11], 87.000, 186.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][11], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][11], hud_pink);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][11], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][11], 1);

	PHONEAPPSTORE[playerid][12] = CreatePlayerTextDraw(playerid, 554.000, 207.000, "Ipong");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][12], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][12], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][12], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][12], 1);

	PHONEAPPSTORE[playerid][13] = CreatePlayerTextDraw(playerid, 532.000, 272.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][13], 73.000, 28.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][13], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][13], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][13], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][13], 1);

	PHONEAPPSTORE[playerid][14] = CreatePlayerTextDraw(playerid, 598.500, 208.399, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][14], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][14], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][14], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][14], 1);

	PHONEAPPSTORE[playerid][15] = CreatePlayerTextDraw(playerid, 559.500, 402.398, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][15], 16.000, 20.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][15], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][15], 1221709055);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][15], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][15], 1);

	PHONEAPPSTORE[playerid][16] = CreatePlayerTextDraw(playerid, 560.000, 404.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][16], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][16], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][16], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][16], 1);

	PHONEAPPSTORE[playerid][17] = CreatePlayerTextDraw(playerid, 599.000, 209.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][17], 5.000, 6.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][17], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][17], 255);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][17], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][17], 1);

	PHONEAPPSTORE[playerid][18] = CreatePlayerTextDraw(playerid, 529.000, 225.000, "LD_BEAT:left");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][18], 12.000, 8.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][18], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][18], 255);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][18], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][18], 1);

	PHONEAPPSTORE[playerid][19] = CreatePlayerTextDraw(playerid, 536.000, 247.000, "Name");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][19], 0.190, 1.199);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][19], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][19], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][19], 1);

	PHONEAPPSTORE[playerid][20] = CreatePlayerTextDraw(playerid, 525.000, 260.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][20], 88.000, 1.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][20], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][20], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][20], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][20], 1);

	PHONEAPPSTORE[playerid][21] = CreatePlayerTextDraw(playerid, 576.000, 247.000, "Actions");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][21], 0.190, 1.199);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][21], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][21], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][21], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][21], 1);

	PHONEAPPSTORE[playerid][22] = CreatePlayerTextDraw(playerid, 550.000, 232.000, "AppStore");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][22], 0.190, 1.199);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][22], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][22], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][22], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][22], 1);

	PHONEAPPSTORE[playerid][23] = CreatePlayerTextDraw(playerid, 532.000, 304.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][23], 73.000, 28.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][23], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][23], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][23], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][23], 1);

	PHONEAPPSTORE[playerid][24] = CreatePlayerTextDraw(playerid, 532.000, 335.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][24], 73.000, 28.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][24], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][24], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][24], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][24], 1);

	PHONEAPPSTORE[playerid][25] = CreatePlayerTextDraw(playerid, 532.000, 367.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][25], 73.000, 28.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][25], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][25], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][25], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][25], 1);

	PHONEAPPSTORE[playerid][26] = CreatePlayerTextDraw(playerid, 535.000, 370.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][26], 25.000, 22.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][26], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][26], 1182971135);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][26], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][26], 1);

	PHONEAPPSTORE[playerid][27] = CreatePlayerTextDraw(playerid, 535.000, 338.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][27], 25.000, 22.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][27], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][27], 579543807);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][27], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][27], 1);

	PHONEAPPSTORE[playerid][28] = CreatePlayerTextDraw(playerid, 535.000, 307.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][28], 25.000, 22.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][28], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][28], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][28], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][28], 1);

	PHONEAPPSTORE[playerid][29] = CreatePlayerTextDraw(playerid, 535.000, 275.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][29], 25.000, 22.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][29], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][29], 16711935);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][29], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][29], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEAPPSTORE[playerid][29], 1);

	PHONEAPPSTORE[playerid][30] = CreatePlayerTextDraw(playerid, 540.000, 278.000, "HUD:radar_waypoint");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][30], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][30], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][30], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][30], 1);

	PHONEAPPSTORE[playerid][31] = CreatePlayerTextDraw(playerid, 540.000, 310.000, "HUD:radar_gangN");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][31], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][31], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][31], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][31], 1);

	PHONEAPPSTORE[playerid][32] = CreatePlayerTextDraw(playerid, 540.000, 340.000, "HUD:radar_triadsCasino");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][32], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][32], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][32], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][32], 1);

	PHONEAPPSTORE[playerid][33] = CreatePlayerTextDraw(playerid, 540.000, 373.000, "HUD:radar_cash");
	PlayerTextDrawTextSize(playerid, PHONEAPPSTORE[playerid][33], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][33], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][33], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][33], 255);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][33], 1);

	PHONEAPPSTORE[playerid][34] = CreatePlayerTextDraw(playerid, 564.000, 274.000, "Map");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][34], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][34], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][34], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][34], 1);

	PHONEAPPSTORE[playerid][35] = CreatePlayerTextDraw(playerid, 564.000, 284.000, "Install");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][35], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][35], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][35], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][35], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][35], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][35], 1);

	PHONEAPPSTORE[playerid][36] = CreatePlayerTextDraw(playerid, 564.000, 308.000, "Sosmed");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][36], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][36], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][36], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][36], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][36], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][36], 1);

	PHONEAPPSTORE[playerid][37] = CreatePlayerTextDraw(playerid, 564.000, 317.000, "Install");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][37], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][37], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][37], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][37], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][37], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][37], 1);

	PHONEAPPSTORE[playerid][38] = CreatePlayerTextDraw(playerid, 564.000, 338.000, "Gojek");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][38], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][38], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][38], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][38], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][38], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][38], 1);

	PHONEAPPSTORE[playerid][39] = CreatePlayerTextDraw(playerid, 564.000, 347.000, "Install");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][39], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][39], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][39], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][39], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][39], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][39], 1);

	PHONEAPPSTORE[playerid][40] = CreatePlayerTextDraw(playerid, 564.000, 370.000, "Mbanking");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][40], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][40], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][40], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][40], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][40], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][40], 1);

	PHONEAPPSTORE[playerid][41] = CreatePlayerTextDraw(playerid, 564.000, 379.000, "Install");
	PlayerTextDrawLetterSize(playerid, PHONEAPPSTORE[playerid][41], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEAPPSTORE[playerid][41], 1);
	PlayerTextDrawColor(playerid, PHONEAPPSTORE[playerid][41], -1);
	PlayerTextDrawSetShadow(playerid, PHONEAPPSTORE[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, PHONEAPPSTORE[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEAPPSTORE[playerid][41], 150);
	PlayerTextDrawFont(playerid, PHONEAPPSTORE[playerid][41], 1);
	PlayerTextDrawSetProportional(playerid, PHONEAPPSTORE[playerid][41], 1);

	PHONEBANK[playerid][0] = CreatePlayerTextDraw(playerid, 522.500, 206.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][0], 2.500, 211.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][0], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][0], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][0], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][0], 1);

	PHONEBANK[playerid][1] = CreatePlayerTextDraw(playerid, 528.000, 202.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][1], 77.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][1], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][1], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][1], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][1], 1);

	PHONEBANK[playerid][2] = CreatePlayerTextDraw(playerid, 612.000, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][2], 2.000, 207.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][2], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][2], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][2], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][2], 1);

	PHONEBANK[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][3], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][3], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][3], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][3], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][3], 1);

	PHONEBANK[playerid][4] = CreatePlayerTextDraw(playerid, 591.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][4], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][4], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][4], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][4], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][4], 1);

	PHONEBANK[playerid][5] = CreatePlayerTextDraw(playerid, 528.000, 419.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][5], 79.000, 2.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][5], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][5], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][5], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][5], 1);

	PHONEBANK[playerid][6] = CreatePlayerTextDraw(playerid, 525.000, 404.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][6], 88.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][6], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][6], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][6], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][6], 1);

	PHONEBANK[playerid][7] = CreatePlayerTextDraw(playerid, 528.000, 415.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][7], 79.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][7], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][7], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][7], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][7], 1);

	PHONEBANK[playerid][8] = CreatePlayerTextDraw(playerid, 518.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][8], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][8], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][8], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][8], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][8], 1);

	PHONEBANK[playerid][9] = CreatePlayerTextDraw(playerid, 591.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][9], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][9], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][9], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][9], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][9], 1);

	PHONEBANK[playerid][10] = CreatePlayerTextDraw(playerid, 525.000, 208.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][10], 87.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][10], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][10], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][10], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][10], 1);

	PHONEBANK[playerid][11] = CreatePlayerTextDraw(playerid, 525.000, 218.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][11], 87.000, 186.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][11], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][11], hud_pink);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][11], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][11], 1);

	PHONEBANK[playerid][12] = CreatePlayerTextDraw(playerid, 554.000, 207.000, "Ipong");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][12], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][12], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][12], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][12], 1);

	PHONEBANK[playerid][13] = CreatePlayerTextDraw(playerid, 527.000, 272.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][13], 82.000, 109.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][13], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][13], 255);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][13], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][13], 1);

	PHONEBANK[playerid][14] = CreatePlayerTextDraw(playerid, 598.500, 208.399, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][14], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][14], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][14], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEBANK[playerid][14], 1);

	PHONEBANK[playerid][15] = CreatePlayerTextDraw(playerid, 559.500, 402.398, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][15], 16.000, 20.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][15], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][15], 1221709055);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][15], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEBANK[playerid][15], 1);

	PHONEBANK[playerid][16] = CreatePlayerTextDraw(playerid, 560.000, 404.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][16], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][16], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][16], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][16], 1);

	PHONEBANK[playerid][17] = CreatePlayerTextDraw(playerid, 599.000, 209.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][17], 5.000, 6.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][17], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][17], 255);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][17], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEBANK[playerid][17], 1);

	PHONEBANK[playerid][18] = CreatePlayerTextDraw(playerid, 527.000, 246.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][18], 82.000, 15.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][18], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][18], 255);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][18], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][18], 1);

	PHONEBANK[playerid][19] = CreatePlayerTextDraw(playerid, 548.000, 232.000, "Kota Tegal Bank");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][19], 0.190, 0.999);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][19], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][19], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][19], 1);

	PHONEBANK[playerid][20] = CreatePlayerTextDraw(playerid, 528.000, 221.000, "00:00");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][20], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][20], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][20], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][20], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][20], 1);

	PHONEBANK[playerid][21] = CreatePlayerTextDraw(playerid, 527.000, 246.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][21], 82.000, 15.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][21], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][21], 255);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][21], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][21], 1);

	PHONEBANK[playerid][22] = CreatePlayerTextDraw(playerid, 536.000, 359.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][22], 65.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][22], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][22], 579543807);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][22], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEBANK[playerid][22], 1);

	PHONEBANK[playerid][23] = CreatePlayerTextDraw(playerid, 556.000, 360.000, "Transfer");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][23], 0.190, 0.999);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][23], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][23], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][23], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][23], 1);

	PHONEBANK[playerid][24] = CreatePlayerTextDraw(playerid, 536.000, 339.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][24], 64.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][24], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][24], 1768516095);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][24], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][24], 1);

	PHONEBANK[playerid][25] = CreatePlayerTextDraw(playerid, 575.000, 330.000, "No. Rek");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][25], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][25], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][25], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][25], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][25], 1);

	PHONEBANK[playerid][26] = CreatePlayerTextDraw(playerid, 539.000, 341.000, "081118");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][26], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][26], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][26], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][26], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][26], 1);

	PHONEBANK[playerid][27] = CreatePlayerTextDraw(playerid, 536.000, 314.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][27], 64.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][27], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][27], 1768516095);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][27], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][27], 1);

	PHONEBANK[playerid][28] = CreatePlayerTextDraw(playerid, 539.000, 316.000, "Atsuko Tadashiuu");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][28], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][28], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][28], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][28], 1);

	PHONEBANK[playerid][29] = CreatePlayerTextDraw(playerid, 582.000, 305.000, "Nama");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][29], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][29], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][29], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][29], 1);

	PHONEBANK[playerid][30] = CreatePlayerTextDraw(playerid, 536.000, 289.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][30], 64.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][30], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][30], 1768516095);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][30], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][30], 1);

	PHONEBANK[playerid][31] = CreatePlayerTextDraw(playerid, 583.000, 280.000, "Saldo");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][31], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][31], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][31], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][31], 1);

	PHONEBANK[playerid][32] = CreatePlayerTextDraw(playerid, 539.000, 291.000, "$1000");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][32], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][32], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][32], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][32], 1);

	PHONEBANK[playerid][33] = CreatePlayerTextDraw(playerid, 537.000, 249.000, "M-Banking");
	PlayerTextDrawLetterSize(playerid, PHONEBANK[playerid][33], 0.170, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][33], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][33], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][33], 150);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][33], 1);

	PHONEBANK[playerid][34] = CreatePlayerTextDraw(playerid, 569.000, 247.000, "LD_DRV:gold");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][34], 14.000, 13.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][34], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][34], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][34], 1);

	PHONEBANK[playerid][35] = CreatePlayerTextDraw(playerid, 528.000, 390.000, "LD_BEAT:left");
	PlayerTextDrawTextSize(playerid, PHONEBANK[playerid][35], 20.000, 9.000);
	PlayerTextDrawAlignment(playerid, PHONEBANK[playerid][35], 1);
	PlayerTextDrawColor(playerid, PHONEBANK[playerid][35], 255);
	PlayerTextDrawSetShadow(playerid, PHONEBANK[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, PHONEBANK[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEBANK[playerid][35], 255);
	PlayerTextDrawFont(playerid, PHONEBANK[playerid][35], 4);
	PlayerTextDrawSetProportional(playerid, PHONEBANK[playerid][35], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEBANK[playerid][35], 1);

	PHONEGOJEK[playerid][0] = CreatePlayerTextDraw(playerid, 522.500, 206.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][0], 2.500, 211.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][0], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][0], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][0], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][0], 1);

	PHONEGOJEK[playerid][1] = CreatePlayerTextDraw(playerid, 528.000, 202.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][1], 77.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][1], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][1], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][1], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][1], 1);

	PHONEGOJEK[playerid][2] = CreatePlayerTextDraw(playerid, 612.000, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][2], 2.000, 207.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][2], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][2], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][2], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][2], 1);

	PHONEGOJEK[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][3], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][3], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][3], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][3], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][3], 1);

	PHONEGOJEK[playerid][4] = CreatePlayerTextDraw(playerid, 591.000, 406.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][4], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][4], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][4], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][4], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][4], 1);

	PHONEGOJEK[playerid][5] = CreatePlayerTextDraw(playerid, 528.000, 419.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][5], 79.000, 2.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][5], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][5], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][5], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][5], 1);

	PHONEGOJEK[playerid][6] = CreatePlayerTextDraw(playerid, 525.000, 404.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][6], 88.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][6], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][6], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][6], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][6], 1);

	PHONEGOJEK[playerid][7] = CreatePlayerTextDraw(playerid, 528.000, 415.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][7], 79.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][7], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][7], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][7], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][7], 1);

	PHONEGOJEK[playerid][8] = CreatePlayerTextDraw(playerid, 518.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][8], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][8], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][8], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][8], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][8], 1);

	PHONEGOJEK[playerid][9] = CreatePlayerTextDraw(playerid, 591.000, 199.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][9], 27.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][9], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][9], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][9], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][9], 1);

	PHONEGOJEK[playerid][10] = CreatePlayerTextDraw(playerid, 525.000, 208.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][10], 87.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][10], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][10], hud_black);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][10], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][10], 1);

	PHONEGOJEK[playerid][11] = CreatePlayerTextDraw(playerid, 525.000, 218.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][11], 87.000, 186.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][11], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][11], hud_pink);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][11], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][11], 1);

	PHONEGOJEK[playerid][12] = CreatePlayerTextDraw(playerid, 554.000, 207.000, "Ipong");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][12], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][12], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][12], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][12], 1);

	PHONEGOJEK[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 223.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][13], 20.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][13], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][13], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][13], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][13], 1);

	PHONEGOJEK[playerid][14] = CreatePlayerTextDraw(playerid, 598.500, 208.399, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][14], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][14], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][14], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][14], 1);

	PHONEGOJEK[playerid][15] = CreatePlayerTextDraw(playerid, 559.500, 402.398, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][15], 16.000, 20.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][15], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][15], 1221709055);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][15], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][15], 1);

	PHONEGOJEK[playerid][16] = CreatePlayerTextDraw(playerid, 560.000, 404.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][16], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][16], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][16], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][16], 1);

	PHONEGOJEK[playerid][17] = CreatePlayerTextDraw(playerid, 599.000, 209.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][17], 5.000, 6.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][17], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][17], 255);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][17], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][17], 1);

	PHONEGOJEK[playerid][18] = CreatePlayerTextDraw(playerid, 588.000, 223.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][18], 20.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][18], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][18], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][18], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][18], 1);

	PHONEGOJEK[playerid][19] = CreatePlayerTextDraw(playerid, 588.000, 251.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][19], 20.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][19], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][19], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][19], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][19], 1);

	PHONEGOJEK[playerid][20] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][20], 20.000, 18.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][20], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][20], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][20], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][20], 1);

	PHONEGOJEK[playerid][21] = CreatePlayerTextDraw(playerid, 533.000, 226.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][21], 66.000, 39.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][21], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][21], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][21], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][21], 1);

	PHONEGOJEK[playerid][22] = CreatePlayerTextDraw(playerid, 530.000, 230.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][22], 4.000, 31.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][22], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][22], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][22], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][22], 1);

	PHONEGOJEK[playerid][23] = CreatePlayerTextDraw(playerid, 597.000, 230.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][23], 8.000, 31.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][23], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][23], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][23], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][23], 1);

	PHONEGOJEK[playerid][24] = CreatePlayerTextDraw(playerid, 565.000, 235.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][24], -27.000, 21.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][24], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][24], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][24], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][24], 1);

	PHONEGOJEK[playerid][25] = CreatePlayerTextDraw(playerid, 535.000, 237.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][25], -1.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][25], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][25], 1768516095);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][25], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][25], 1);

	PHONEGOJEK[playerid][26] = CreatePlayerTextDraw(playerid, 535.000, 244.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][26], -1.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][26], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][26], 1768516095);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][26], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][26], 1);

	PHONEGOJEK[playerid][27] = CreatePlayerTextDraw(playerid, 535.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][27], -1.000, 4.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][27], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][27], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][27], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][27], 1);

	PHONEGOJEK[playerid][28] = CreatePlayerTextDraw(playerid, 569.000, 238.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][28], 12.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][28], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][28], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][28], 1);

	PHONEGOJEK[playerid][29] = CreatePlayerTextDraw(playerid, 587.000, 238.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][29], 12.000, 12.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][29], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][29], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][29], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][29], 1);

	PHONEGOJEK[playerid][30] = CreatePlayerTextDraw(playerid, 569.000, 251.000, "Bayar");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][30], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][30], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][30], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][30], 1);

	PHONEGOJEK[playerid][31] = CreatePlayerTextDraw(playerid, 587.000, 251.000, "TopUp");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][31], 0.140, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][31], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][31], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][31], 1);

	PHONEGOJEK[playerid][32] = CreatePlayerTextDraw(playerid, 589.000, 237.000, "+");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][32], 0.349, 1.499);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][32], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][32], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][32], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][32], 1);

	PHONEGOJEK[playerid][33] = CreatePlayerTextDraw(playerid, 573.000, 238.500, ">");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][33], 0.290, 0.999);
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][33], 7.000, -10.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][33], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][33], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][33], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][33], 1);

	PHONEGOJEK[playerid][34] = CreatePlayerTextDraw(playerid, 571.000, 244.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][34], 6.000, -1.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][34], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][34], 512819199);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][34], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][34], 1);

	PHONEGOJEK[playerid][35] = CreatePlayerTextDraw(playerid, 540.000, 236.000, "Gopay");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][35], 0.160, 1.099);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][35], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][35], 255);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][35], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][35], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][35], 1);

	PHONEGOJEK[playerid][36] = CreatePlayerTextDraw(playerid, 541.000, 247.000, "$400");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][36], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][36], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][36], 255);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][36], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][36], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][36], 1);

	PHONEGOJEK[playerid][37] = CreatePlayerTextDraw(playerid, 533.000, 275.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][37], 31.000, 30.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][37], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][37], -92245249);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][37], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][37], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][37], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][37], 1);

	PHONEGOJEK[playerid][38] = CreatePlayerTextDraw(playerid, 542.000, 290.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][38], 2.000, 13.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][38], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][38], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][38], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][38], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][38], 1);

	PHONEGOJEK[playerid][39] = CreatePlayerTextDraw(playerid, 537.000, 279.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][39], 2.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][39], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][39], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][39], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][39], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][39], 1);

	PHONEGOJEK[playerid][40] = CreatePlayerTextDraw(playerid, 548.000, 279.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][40], 2.000, 10.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][40], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][40], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][40], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][40], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][40], 1);

	PHONEGOJEK[playerid][41] = CreatePlayerTextDraw(playerid, 537.000, 288.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][41], 13.000, 3.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][41], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][41], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][41], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][41], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][41], 1);

	PHONEGOJEK[playerid][42] = CreatePlayerTextDraw(playerid, 542.000, 292.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][42], 2.000, -13.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][42], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][42], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][42], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][42], 1);

	PHONEGOJEK[playerid][43] = CreatePlayerTextDraw(playerid, 557.000, 305.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][43], 2.000, -16.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][43], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][43], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][43], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][43], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][43], 1);

	PHONEGOJEK[playerid][44] = CreatePlayerTextDraw(playerid, 550.000, 277.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][44], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][44], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][44], -1306385665);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][44], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][44], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][44], 1);

	PHONEGOJEK[playerid][45] = CreatePlayerTextDraw(playerid, 574.000, 275.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][45], 31.000, 30.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][45], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][45], 2096890111);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][45], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][45], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][45], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][45], 1);

	PHONEGOJEK[playerid][46] = CreatePlayerTextDraw(playerid, 578.000, 275.000, "HUD:radar_impound");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][46], 25.000, 26.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][46], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][46], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][46], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][46], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][46], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][46], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][46], 1);

	PHONEGOJEK[playerid][47] = CreatePlayerTextDraw(playerid, 535.000, 307.000, "GoFood");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][47], 0.220, 0.999);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][47], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][47], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][47], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][47], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][47], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][47], 1);

	PHONEGOJEK[playerid][48] = CreatePlayerTextDraw(playerid, 578.000, 307.000, "GoCar");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][48], 0.220, 0.999);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][48], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][48], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][48], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][48], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][48], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][48], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][48], 1);

	PHONEGOJEK[playerid][49] = CreatePlayerTextDraw(playerid, 552.000, 332.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][49], 31.000, 30.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][49], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][49], 2096890111);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][49], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][49], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][49], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][49], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][49], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][49], 1);

	PHONEGOJEK[playerid][50] = CreatePlayerTextDraw(playerid, 557.000, 364.000, "GoJek");
	PlayerTextDrawLetterSize(playerid, PHONEGOJEK[playerid][50], 0.220, 0.999);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][50], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][50], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][50], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][50], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][50], 150);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][50], 1);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][50], 1);

	PHONEGOJEK[playerid][51] = CreatePlayerTextDraw(playerid, 552.000, 333.000, "_");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][51], 31.000, 27.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][51], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][51], -1);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][51], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][51], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][51], 2096890111);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][51], 5);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][51], 0);
	PlayerTextDrawSetPreviewModel(playerid, PHONEGOJEK[playerid][51], 468);
	PlayerTextDrawSetPreviewRot(playerid, PHONEGOJEK[playerid][51], -6.000, 0.000, -34.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, PHONEGOJEK[playerid][51], 0, 0);

	PHONEGOJEK[playerid][52] = CreatePlayerTextDraw(playerid, 530.000, 387.000, "LD_BEAT:left");
	PlayerTextDrawTextSize(playerid, PHONEGOJEK[playerid][52], 18.000, 11.000);
	PlayerTextDrawAlignment(playerid, PHONEGOJEK[playerid][52], 1);
	PlayerTextDrawColor(playerid, PHONEGOJEK[playerid][52], 255);
	PlayerTextDrawSetShadow(playerid, PHONEGOJEK[playerid][52], 0);
	PlayerTextDrawSetOutline(playerid, PHONEGOJEK[playerid][52], 0);
	PlayerTextDrawBackgroundColor(playerid, PHONEGOJEK[playerid][52], 255);
	PlayerTextDrawFont(playerid, PHONEGOJEK[playerid][52], 4);
	PlayerTextDrawSetProportional(playerid, PHONEGOJEK[playerid][52], 1);
	PlayerTextDrawSetSelectable(playerid, PHONEGOJEK[playerid][52], 1);
	return 1;
}

epublic: DownloadSosmed(playerid)
{
	PlayerInfo[playerid][pApkSosmed] = 1;
	OnPlayerUpdateAccountsPer(playerid, "pApkSosmed", PlayerInfo[playerid][pApkSosmed]);
	SendClientMessage(playerid, COLOR_SERVER, "AppStore: "W"telah selesai menginstall Sosmed");
	PlayerTextDrawHide(playerid, PHONEAPPSTORE[playerid][37]);
	PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][37], "Terinstall");
	PlayerTextDrawShow(playerid, PHONEAPPSTORE[playerid][37]);
	return 1;
}
epublic: DownloadMap(playerid)
{
	PlayerInfo[playerid][pApkMap] = 1;
	OnPlayerUpdateAccountsPer(playerid, "pApkMap", PlayerInfo[playerid][pApkMap]);
	SendClientMessage(playerid, COLOR_SERVER, "AppStore: "W"telah selesai menginstall Google Map");
	PlayerTextDrawHide(playerid, PHONEAPPSTORE[playerid][35]);
	PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][35], "Terinstall");
	PlayerTextDrawShow(playerid, PHONEAPPSTORE[playerid][35]);
	return 1;
}
epublic: DownloadBank(playerid)
{
	PlayerInfo[playerid][pApkBank] = 1;
	OnPlayerUpdateAccountsPer(playerid, "pApkBank", PlayerInfo[playerid][pApkBank]);
	SendClientMessage(playerid, COLOR_SERVER, "AppStore: "W"telah selesai menginstall Mbanking");
	PlayerTextDrawHide(playerid, PHONEAPPSTORE[playerid][41]);
	PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][41], "Terinstall");
	PlayerTextDrawShow(playerid, PHONEAPPSTORE[playerid][41]);
	return 1;
}
epublic: DownloadGojek(playerid)
{
	PlayerInfo[playerid][pApkGojek] = 1;
	OnPlayerUpdateAccountsPer(playerid, "pApkGojek", PlayerInfo[playerid][pApkGojek]);
	SendClientMessage(playerid, COLOR_SERVER, "AppStore: "W"telah selesai menginstall Gojek");
	PlayerTextDrawHide(playerid, PHONEAPPSTORE[playerid][39]);
	PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][39], "Terinstall");
	PlayerTextDrawShow(playerid, PHONEAPPSTORE[playerid][39]);
	return 1;
}
epublic: GojekAppStore(playerid)
{
	if(PlayerInfo[playerid][pApkGojek] == 0)
	{
 		PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][39], "Install");
	}
	else if(PlayerInfo[playerid][pApkGojek] == 1)
	{
	    PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][39], "Terinstall");
	}
	return 1;
}
epublic: BankAppStore(playerid)
{
	if(PlayerInfo[playerid][pApkBank] == 0)
	{
 		PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][41], "Install");
	}
	else if(PlayerInfo[playerid][pApkBank] == 1)
	{
	    PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][41], "Terinstall");
	}
	return 1;
}
epublic: MapAppStore(playerid)
{
	if(PlayerInfo[playerid][pApkMap] == 0)
	{
 		PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][35], "Install");
	}
	else if(PlayerInfo[playerid][pApkMap] == 1)
	{
	    PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][35], "Terinstall");
	}
	return 1;
}
epublic: SosmedAppStore(playerid)
{
	if(PlayerInfo[playerid][pApkSosmed] == 0)
	{
 		PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][37], "Install");
	}
	else if(PlayerInfo[playerid][pApkSosmed] == 1)
	{
	    PlayerTextDrawSetString(playerid, PHONEAPPSTORE[playerid][37], "Terinstall");
	}
	return 1;
}

CMD:openphone(playerid, params[])
{
    if(BukaHandphone[playerid] == 1) return 1;
	if(PlayerInfo[playerid][pPrison] != 0) return Send(playerid, COLOR_RED, "ERROR: "W"Tidak bisa digunakaan saat dipenjara");
	if(PlayerInfo[playerid][pProducts][0] == 0)
	{
	    SCM(playerid, COLOR_RED, "ERROR: "W"Anda tidak memiliki ponsel");
	    CancelSelectTextDraw(playerid);
	    return 1;
	}
	
	for(new i = 0; i < 24; i++)
	{
	    PlayerTextDrawShow(playerid, PHONEAWAL[playerid][i]);
	    SelectTextDraw(playerid, COLOR_GREY);
	    if(PlayerInfo[playerid][pWallpaper] == 0)
	    {
            PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_pink);
		}
		if(PlayerInfo[playerid][pWallpaper] == 1)
	    {
            PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_red);
		}
		if(PlayerInfo[playerid][pWallpaper] == 2)
	    {
            PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_green);
		}
		if(PlayerInfo[playerid][pWallpaper] == 3)
	    {
            PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_cyan);
		}
		if(PlayerInfo[playerid][pWallpaper] == 4)
	    {
            PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_purple);
		}
		if(PlayerInfo[playerid][pWallpaper] == 5)
	    {
            PlayerTextDrawColor(playerid, PHONEAWAL[playerid][11], hud_dark);
		}
	    PlayerPlaySound(playerid, 3600, 0,0,0);
	    SetPlayerAttachedObject(playerid, 9, 18871, 5, 0.056, 0.039, -0.015, -18.100, -108.600, 93.000, 1,1,1);
	    SetPlayerChatBubble(playerid, "Membuka Handphone",COLOR_PURPLE,30.0,5000);
	    BukaHandphone[playerid] = 1;
	    TakingSelfie[playerid] = 0;
	}
    if(!IsPlayerInAnyVehicle(playerid))
    {
       ApplyAnimation(playerid,"ped","Jetpack_Idle",4.0, 1, 0, 0, 0, 0, 1); // Not looping
    }
	return 1;
}
