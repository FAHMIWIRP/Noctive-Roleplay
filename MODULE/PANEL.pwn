new PlayerText: JPRP_PANELSTD[MAX_PLAYERS][54]; // ini panel awal buka
new PlayerText: JPRP_DPANEL[MAX_PLAYERS][47]; // ini panel dokumen
new PlayerText: JPRP_IPANEL[MAX_PLAYERS][29]; // ini panel identitas kek lihat ktp dll
new PlayerText: JPRP_KPANEL[MAX_PLAYERS][44]; // ini panel kendaraan menu
new PlayerText: JPRP_PPANEL[MAX_PLAYERS][28]; // ini panel pakaian / aksesoris

stock HidePanelFull(playerid)
{
	for(new i = 0; i < 54; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_PANELSTD[playerid][i]);
	}

	//

	for(new i = 0; i < 47; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_DPANEL[playerid][i]);
	}

	//

	for(new i = 0; i < 29; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_IPANEL[playerid][i]);
	}

	//

	for(new i = 0; i < 44; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_KPANEL[playerid][i]);
	}

	//

	for(new i = 0; i < 28; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_PPANEL[playerid][i]);
	}
	CancelSelectTextDraw(playerid);
	BukaPanel[playerid] = 0;
	return 1;
}
stock HidePanelS(playerid)
{
	for(new i = 0; i < 54; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_PANELSTD[playerid][i]);
	}
}
stock HidePanelK(playerid)
{
	for(new i = 0; i < 44; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_KPANEL[playerid][i]);
	}
	return 1;
}
stock HidePanelI(playerid)
{
	for(new i = 0; i < 29; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_IPANEL[playerid][i]);
	}
	return 1;
}
stock HidePanelP(playerid)
{
	for(new i = 0; i < 28; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_PPANEL[playerid][i]);
	}
	return 1;
}
stock HidePanelD(playerid)
{
	for(new i = 0; i < 47; i++)
	{
		PlayerTextDrawHide(playerid, JPRP_DPANEL[playerid][i]);
	}
	return 1;
}
stock ShowPanelS(playerid)
{
	for(new i = 0; i < 54; i++)
	{
		PlayerTextDrawShow(playerid, JPRP_PANELSTD[playerid][i]);
	}
	return 1;
}

stock CreatePlayerTdPanel(playerid)
{
	BukaPanel[playerid] = 0;
	
    JPRP_PANELSTD[playerid][0] = CreatePlayerTextDraw(playerid, 224.000, 143.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][0], 195.000, 226.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][0], hud_green_transparant);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][0], 1);

    JPRP_PANELSTD[playerid][1] = CreatePlayerTextDraw(playerid, 296.000, 153.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][1], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][1], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][1], 1);

    JPRP_PANELSTD[playerid][2] = CreatePlayerTextDraw(playerid, 247.000, 182.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][2], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][2], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][2], 1);

    JPRP_PANELSTD[playerid][3] = CreatePlayerTextDraw(playerid, 236.000, 249.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][3], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][3], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][3], 1);

    JPRP_PANELSTD[playerid][4] = CreatePlayerTextDraw(playerid, 275.000, 298.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][4], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][4], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][4], 1);

    JPRP_PANELSTD[playerid][5] = CreatePlayerTextDraw(playerid, 327.000, 294.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][5], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][5], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][5], 1);

    JPRP_PANELSTD[playerid][6] = CreatePlayerTextDraw(playerid, 359.000, 244.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][6], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][6], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][6], 1);

    JPRP_PANELSTD[playerid][7] = CreatePlayerTextDraw(playerid, 347.000, 182.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][7], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][7], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][7], 1);

    JPRP_PANELSTD[playerid][8] = CreatePlayerTextDraw(playerid, 303.000, 233.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][8], 39.000, 46.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][8], 100);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PANELSTD[playerid][8], 1);

    JPRP_PANELSTD[playerid][9] = CreatePlayerTextDraw(playerid, 317.000, 238.000, "x");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][9], 0.569, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][9], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][9], 1);

    JPRP_PANELSTD[playerid][10] = CreatePlayerTextDraw(playerid, 313.000, 164.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][10], 14.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][10], 1);

    JPRP_PANELSTD[playerid][11] = CreatePlayerTextDraw(playerid, 313.000, 164.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][11], -1.000, 22.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][11], 1);

    JPRP_PANELSTD[playerid][12] = CreatePlayerTextDraw(playerid, 327.000, 164.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][12], -1.000, 22.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][12], 1);

    JPRP_PANELSTD[playerid][13] = CreatePlayerTextDraw(playerid, 312.000, 185.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][13], 15.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][13], 1);

    JPRP_PANELSTD[playerid][14] = CreatePlayerTextDraw(playerid, 317.000, 186.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][14], 5.000, 6.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][14], 1);

    JPRP_PANELSTD[playerid][15] = CreatePlayerTextDraw(playerid, 258.000, 199.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][15], 26.000, 17.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][15], 1);

    JPRP_PANELSTD[playerid][16] = CreatePlayerTextDraw(playerid, 259.000, 202.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][16], 7.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][16], 1);

    JPRP_PANELSTD[playerid][17] = CreatePlayerTextDraw(playerid, 269.000, 201.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][17], 13.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][17], 1);

    JPRP_PANELSTD[playerid][18] = CreatePlayerTextDraw(playerid, 269.000, 210.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][18], 13.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][18], 1);

    JPRP_PANELSTD[playerid][19] = CreatePlayerTextDraw(playerid, 269.000, 206.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][19], 13.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][19], 1);

    JPRP_PANELSTD[playerid][20] = CreatePlayerTextDraw(playerid, 362.000, 201.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][20], 18.000, 21.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][20], 1);

    JPRP_PANELSTD[playerid][21] = CreatePlayerTextDraw(playerid, 357.000, 191.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][21], 28.000, 21.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][21], 1);

    JPRP_PANELSTD[playerid][22] = CreatePlayerTextDraw(playerid, 363.000, 208.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][22], 16.000, 12.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][22], 1768516095);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][22], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][22], 1);

    JPRP_PANELSTD[playerid][23] = CreatePlayerTextDraw(playerid, 364.000, 210.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][23], 14.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][23], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][23], 1);

    JPRP_PANELSTD[playerid][24] = CreatePlayerTextDraw(playerid, 374.000, 211.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][24], 2.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][24], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][24], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][24], 1);

    JPRP_PANELSTD[playerid][25] = CreatePlayerTextDraw(playerid, 380.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][25], 4.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][25], 1);

    JPRP_PANELSTD[playerid][26] = CreatePlayerTextDraw(playerid, 380.000, 218.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][26], 4.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][26], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][26], 1);

    JPRP_PANELSTD[playerid][27] = CreatePlayerTextDraw(playerid, 383.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][27], 1.000, 15.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][27], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][27], 1);

    JPRP_PANELSTD[playerid][28] = CreatePlayerTextDraw(playerid, 251.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][28], 17.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][28], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][28], 1);

    JPRP_PANELSTD[playerid][29] = CreatePlayerTextDraw(playerid, 248.000, 262.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][29], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][29], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][29], 1);

    JPRP_PANELSTD[playerid][30] = CreatePlayerTextDraw(playerid, 271.000, 262.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][30], -0.319, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][30], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][30], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][30], 1);

    JPRP_PANELSTD[playerid][31] = CreatePlayerTextDraw(playerid, 248.000, 275.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][31], 24.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][31], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][31], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][31], 1);

    JPRP_PANELSTD[playerid][32] = CreatePlayerTextDraw(playerid, 248.000, 277.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][32], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][32], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][32], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][32], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][32], 1);

    JPRP_PANELSTD[playerid][33] = CreatePlayerTextDraw(playerid, 268.000, 277.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][33], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][33], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][33], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][33], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][33], 1);

    JPRP_PANELSTD[playerid][34] = CreatePlayerTextDraw(playerid, 248.000, 284.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][34], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][34], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][34], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][34], 1);

    JPRP_PANELSTD[playerid][35] = CreatePlayerTextDraw(playerid, 268.000, 284.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][35], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][35], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][35], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][35], 1);

    JPRP_PANELSTD[playerid][36] = CreatePlayerTextDraw(playerid, 245.000, 270.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][36], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][36], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][36], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][36], 1);

    JPRP_PANELSTD[playerid][37] = CreatePlayerTextDraw(playerid, 270.000, 270.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][37], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][37], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][37], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][37], 1);

    JPRP_PANELSTD[playerid][38] = CreatePlayerTextDraw(playerid, 290.000, 313.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][38], 18.000, 26.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][38], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][38], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][38], 1);

    JPRP_PANELSTD[playerid][39] = CreatePlayerTextDraw(playerid, 292.000, 311.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][39], 13.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][39], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][39], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][39], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][39], 1);

    JPRP_PANELSTD[playerid][40] = CreatePlayerTextDraw(playerid, 293.000, 318.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][40], 12.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][40], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][40], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][40], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][40], 1);

    JPRP_PANELSTD[playerid][41] = CreatePlayerTextDraw(playerid, 293.000, 320.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][41], 12.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][41], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][41], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][41], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][41], 1);

    JPRP_PANELSTD[playerid][42] = CreatePlayerTextDraw(playerid, 293.000, 325.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][42], 12.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][42], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][42], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][42], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][42], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][42], 1);

    JPRP_PANELSTD[playerid][43] = CreatePlayerTextDraw(playerid, 296.000, 327.000, "$");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][43], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][43], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][43], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][43], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][43], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][43], 1);

    JPRP_PANELSTD[playerid][44] = CreatePlayerTextDraw(playerid, 339.000, 312.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][44], 26.000, 21.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][44], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][44], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][44], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][44], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][44], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][44], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][44], 1);

    JPRP_PANELSTD[playerid][45] = CreatePlayerTextDraw(playerid, 339.000, 307.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][45], 8.000, 6.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][45], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][45], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][45], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][45], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][45], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][45], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][45], 1);

    JPRP_PANELSTD[playerid][46] = CreatePlayerTextDraw(playerid, 345.000, 326.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][46], 2.000, 7.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][46], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][46], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][46], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][46], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][46], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][46], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][46], 1);

    JPRP_PANELSTD[playerid][47] = CreatePlayerTextDraw(playerid, 345.000, 326.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][47], 11.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][47], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][47], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][47], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][47], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][47], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][47], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][47], 1);

    JPRP_PANELSTD[playerid][48] = CreatePlayerTextDraw(playerid, 356.000, 326.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][48], 2.000, 7.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][48], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][48], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][48], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][48], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][48], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][48], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][48], 1);

    JPRP_PANELSTD[playerid][49] = CreatePlayerTextDraw(playerid, 370.000, 261.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][49], 26.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][49], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][49], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][49], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][49], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][49], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][49], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][49], 1);

    JPRP_PANELSTD[playerid][50] = CreatePlayerTextDraw(playerid, 375.000, 270.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PANELSTD[playerid][50], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][50], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][50], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][50], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][50], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][50], 255);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][50], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][50], 1);

    JPRP_PANELSTD[playerid][51] = CreatePlayerTextDraw(playerid, 385.000, 259.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][51], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][51], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][51], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][51], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][51], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][51], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][51], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][51], 1);

    JPRP_PANELSTD[playerid][52] = CreatePlayerTextDraw(playerid, 383.000, 259.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][52], -0.338, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][52], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][52], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][52], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][52], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][52], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][52], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][52], 1);

    JPRP_PANELSTD[playerid][53] = CreatePlayerTextDraw(playerid, 381.000, 262.000, "-");
    PlayerTextDrawLetterSize(playerid, JPRP_PANELSTD[playerid][53], 0.370, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_PANELSTD[playerid][53], 1);
    PlayerTextDrawColor(playerid, JPRP_PANELSTD[playerid][53], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PANELSTD[playerid][53], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PANELSTD[playerid][53], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PANELSTD[playerid][53], 150);
    PlayerTextDrawFont(playerid, JPRP_PANELSTD[playerid][53], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PANELSTD[playerid][53], 1);

    // Panel Pakaian
    JPRP_PPANEL[playerid][0] = CreatePlayerTextDraw(playerid, 224.000, 143.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][0], 195.000, 226.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][0], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][0], hud_green_transparant);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][0], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][0], 1);

    JPRP_PPANEL[playerid][1] = CreatePlayerTextDraw(playerid, 296.000, 153.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][1], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][1], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][1], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][1], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PPANEL[playerid][1], 1);

    JPRP_PPANEL[playerid][2] = CreatePlayerTextDraw(playerid, 299.000, 304.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][2], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][2], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][2], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][2], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PPANEL[playerid][2], 1);

    JPRP_PPANEL[playerid][3] = CreatePlayerTextDraw(playerid, 233.000, 228.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][3], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][3], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][3], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][3], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PPANEL[playerid][3], 1);

    JPRP_PPANEL[playerid][4] = CreatePlayerTextDraw(playerid, 363.000, 228.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][4], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][4], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][4], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][4], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PPANEL[playerid][4], 1);

    JPRP_PPANEL[playerid][5] = CreatePlayerTextDraw(playerid, 303.000, 233.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][5], 39.000, 46.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][5], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][5], 100);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][5], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_PPANEL[playerid][5], 1);

    JPRP_PPANEL[playerid][6] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "X");
    PlayerTextDrawLetterSize(playerid, JPRP_PPANEL[playerid][6], 0.439, 1.999);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][6], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][6], 150);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][6], 1);

    JPRP_PPANEL[playerid][7] = CreatePlayerTextDraw(playerid, 306.000, 164.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][7], 30.000, 30.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][7], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][7], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][7], 1);

    JPRP_PPANEL[playerid][8] = CreatePlayerTextDraw(playerid, 307.000, 175.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][8], 8.000, 12.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][8], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][8], -2139062136);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][8], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][8], 1);

    JPRP_PPANEL[playerid][9] = CreatePlayerTextDraw(playerid, 309.000, 170.000, "7");
    PlayerTextDrawLetterSize(playerid, JPRP_PPANEL[playerid][9], 0.459, 2.299);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][9], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][9], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][9], 150);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][9], 1);

    JPRP_PPANEL[playerid][10] = CreatePlayerTextDraw(playerid, 305.000, 171.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][10], 12.000, 7.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][10], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][10], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][10], 1);

    JPRP_PPANEL[playerid][11] = CreatePlayerTextDraw(playerid, 246.000, 248.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][11], 22.000, 18.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][11], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][11], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][11], 1);

    JPRP_PPANEL[playerid][12] = CreatePlayerTextDraw(playerid, 246.000, 251.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][12], 22.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][12], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][12], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][12], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][12], 1);

    JPRP_PPANEL[playerid][13] = CreatePlayerTextDraw(playerid, 254.000, 250.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][13], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][13], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][13], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][13], 1);

    JPRP_PPANEL[playerid][14] = CreatePlayerTextDraw(playerid, 250.000, 242.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][14], 2.000, 7.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][14], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][14], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][14], 1);

    JPRP_PPANEL[playerid][15] = CreatePlayerTextDraw(playerid, 261.000, 242.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][15], 2.000, 7.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][15], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][15], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][15], 1);

    JPRP_PPANEL[playerid][16] = CreatePlayerTextDraw(playerid, 251.000, 242.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][16], 10.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][16], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][16], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][16], 1);

    JPRP_PPANEL[playerid][17] = CreatePlayerTextDraw(playerid, 320.000, 314.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][17], 6.000, 33.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][17], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][17], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][17], 1);

    JPRP_PPANEL[playerid][18] = CreatePlayerTextDraw(playerid, 316.000, 321.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][18], 14.000, 17.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][18], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][18], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][18], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][18], 1);

    JPRP_PPANEL[playerid][19] = CreatePlayerTextDraw(playerid, 317.000, 323.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][19], 12.000, 13.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][19], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][19], -1448498689);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][19], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][19], 1);

    JPRP_PPANEL[playerid][20] = CreatePlayerTextDraw(playerid, 319.000, 328.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][20], 5.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][20], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][20], 572666879);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][20], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][20], 1);

    JPRP_PPANEL[playerid][21] = CreatePlayerTextDraw(playerid, 322.000, 325.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][21], 2.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][21], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][21], 572666879);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][21], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][21], 1);

    JPRP_PPANEL[playerid][22] = CreatePlayerTextDraw(playerid, 377.000, 249.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][22], 21.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][22], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][22], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][22], 1);

    JPRP_PPANEL[playerid][23] = CreatePlayerTextDraw(playerid, 377.000, 252.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][23], 21.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][23], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][23], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][23], 1);

    JPRP_PPANEL[playerid][24] = CreatePlayerTextDraw(playerid, 367.000, 246.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][24], 20.000, 20.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][24], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][24], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][24], 1);

    JPRP_PPANEL[playerid][25] = CreatePlayerTextDraw(playerid, 389.000, 246.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][25], 20.000, 20.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][25], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][25], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][25], 1);

    JPRP_PPANEL[playerid][26] = CreatePlayerTextDraw(playerid, 368.000, 247.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][26], 18.000, 18.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][26], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][26], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][26], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][26], 1);

    JPRP_PPANEL[playerid][27] = CreatePlayerTextDraw(playerid, 390.000, 247.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_PPANEL[playerid][27], 18.000, 18.000);
    PlayerTextDrawAlignment(playerid, JPRP_PPANEL[playerid][27], 1);
    PlayerTextDrawColor(playerid, JPRP_PPANEL[playerid][27], -2139062017);
    PlayerTextDrawSetShadow(playerid, JPRP_PPANEL[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_PPANEL[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_PPANEL[playerid][27], 255);
    PlayerTextDrawFont(playerid, JPRP_PPANEL[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_PPANEL[playerid][27], 1);
    // Panel Kendaraan
    JPRP_KPANEL[playerid][0] = CreatePlayerTextDraw(playerid, 224.000, 143.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][0], 195.000, 226.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][0], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][0], hud_green_transparant);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][0], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][0], 1);

    JPRP_KPANEL[playerid][1] = CreatePlayerTextDraw(playerid, 300.000, 150.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][1], 45.000, 52.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][1], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][1], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][1], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][1], 1);

    JPRP_KPANEL[playerid][2] = CreatePlayerTextDraw(playerid, 303.000, 233.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][2], 39.000, 46.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][2], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][2], 100);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][2], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][2], 1);

    JPRP_KPANEL[playerid][3] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "X");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][3], 0.439, 1.998);
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][3], -5.000, -7.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][3], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][3], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][3], 1);

    JPRP_KPANEL[playerid][4] = CreatePlayerTextDraw(playerid, 243.000, 190.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][4], 45.000, 52.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][4], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][4], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][4], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][4], 1);

    JPRP_KPANEL[playerid][5] = CreatePlayerTextDraw(playerid, 242.000, 263.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][5], 45.000, 52.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][5], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][5], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][5], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][5], 1);

    JPRP_KPANEL[playerid][6] = CreatePlayerTextDraw(playerid, 300.000, 305.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][6], 45.000, 52.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][6], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][6], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][6], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][6], 1);

    JPRP_KPANEL[playerid][7] = CreatePlayerTextDraw(playerid, 358.000, 263.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][7], 45.000, 52.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][7], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][7], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][7], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][7], 1);

    JPRP_KPANEL[playerid][8] = CreatePlayerTextDraw(playerid, 356.000, 190.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][8], 45.000, 52.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][8], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][8], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][8], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_KPANEL[playerid][8], 1);

    JPRP_KPANEL[playerid][9] = CreatePlayerTextDraw(playerid, 308.000, 156.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][9], 30.000, 30.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][9], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][9], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][9], 1);

    JPRP_KPANEL[playerid][10] = CreatePlayerTextDraw(playerid, 311.000, 159.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][10], 24.000, 28.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][10], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][10], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][10], 1);

    JPRP_KPANEL[playerid][11] = CreatePlayerTextDraw(playerid, 313.000, 169.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][11], 20.000, 17.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][11], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][11], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][11], 1);

    JPRP_KPANEL[playerid][12] = CreatePlayerTextDraw(playerid, 319.000, 170.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][12], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][12], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][12], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][12], 1);

    JPRP_KPANEL[playerid][13] = CreatePlayerTextDraw(playerid, 321.000, 173.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][13], 4.000, 12.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][13], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][13], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][13], 1);

    JPRP_KPANEL[playerid][14] = CreatePlayerTextDraw(playerid, 365.000, 206.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][14], 14.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][14], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][14], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][14], 1);

    JPRP_KPANEL[playerid][15] = CreatePlayerTextDraw(playerid, 365.000, 220.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][15], 14.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][15], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][15], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][15], 1);

    JPRP_KPANEL[playerid][16] = CreatePlayerTextDraw(playerid, 370.000, 213.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][16], 9.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][16], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][16], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][16], 1);

    JPRP_KPANEL[playerid][17] = CreatePlayerTextDraw(playerid, 380.000, 198.000, "D");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][17], 0.599, 3.299);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][17], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][17], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][17], 1);

    JPRP_KPANEL[playerid][18] = CreatePlayerTextDraw(playerid, 260.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][18], 12.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][18], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][18], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][18], 1);

    JPRP_KPANEL[playerid][19] = CreatePlayerTextDraw(playerid, 257.000, 203.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][19], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][19], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][19], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][19], 1);

    JPRP_KPANEL[playerid][20] = CreatePlayerTextDraw(playerid, 275.000, 203.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][20], -0.299, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][20], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][20], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][20], 1);

    JPRP_KPANEL[playerid][21] = CreatePlayerTextDraw(playerid, 258.000, 203.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][21], -0.449, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][21], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][21], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][21], 1);

    JPRP_KPANEL[playerid][22] = CreatePlayerTextDraw(playerid, 251.000, 216.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][22], 27.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][22], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][22], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][22], 1);

    JPRP_KPANEL[playerid][23] = CreatePlayerTextDraw(playerid, 253.000, 222.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][23], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][23], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][23], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][23], 1);

    JPRP_KPANEL[playerid][24] = CreatePlayerTextDraw(playerid, 269.000, 222.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][24], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][24], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][24], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][24], 1);

    JPRP_KPANEL[playerid][25] = CreatePlayerTextDraw(playerid, 257.000, 277.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][25], 12.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][25], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][25], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][25], 1);

    JPRP_KPANEL[playerid][26] = CreatePlayerTextDraw(playerid, 254.000, 275.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][26], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][26], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][26], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][26], 1);

    JPRP_KPANEL[playerid][27] = CreatePlayerTextDraw(playerid, 272.000, 275.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][27], -0.299, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][27], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][27], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][27], 1);

    JPRP_KPANEL[playerid][28] = CreatePlayerTextDraw(playerid, 273.000, 275.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][28], 0.600, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][28], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][28], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][28], 1);

    JPRP_KPANEL[playerid][29] = CreatePlayerTextDraw(playerid, 251.000, 288.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][29], 27.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][29], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][29], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][29], 1);

    JPRP_KPANEL[playerid][30] = CreatePlayerTextDraw(playerid, 253.000, 294.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][30], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][30], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][30], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][30], 1);

    JPRP_KPANEL[playerid][31] = CreatePlayerTextDraw(playerid, 269.000, 294.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][31], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][31], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][31], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][31], 1);

    JPRP_KPANEL[playerid][32] = CreatePlayerTextDraw(playerid, 310.000, 321.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][32], 24.000, 6.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][32], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][32], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][32], 1);

    JPRP_KPANEL[playerid][33] = CreatePlayerTextDraw(playerid, 320.000, 327.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][33], 7.000, 7.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][33], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][33], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][33], 1);

    JPRP_KPANEL[playerid][34] = CreatePlayerTextDraw(playerid, 321.000, 328.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][34], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][34], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][34], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][34], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][34], 1);

    JPRP_KPANEL[playerid][35] = CreatePlayerTextDraw(playerid, 327.000, 327.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][35], 5.000, 14.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][35], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][35], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][35], 1);

    JPRP_KPANEL[playerid][36] = CreatePlayerTextDraw(playerid, 378.000, 277.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][36], 12.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][36], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][36], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][36], 1);

    JPRP_KPANEL[playerid][37] = CreatePlayerTextDraw(playerid, 375.000, 275.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][37], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][37], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][37], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][37], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][37], 1);

    JPRP_KPANEL[playerid][38] = CreatePlayerTextDraw(playerid, 393.000, 275.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][38], -0.299, 1.500);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][38], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][38], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][38], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][38], 1);

    JPRP_KPANEL[playerid][39] = CreatePlayerTextDraw(playerid, 377.000, 279.000, "/");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][39], -0.429, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][39], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][39], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][39], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][39], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][39], 1);

    JPRP_KPANEL[playerid][40] = CreatePlayerTextDraw(playerid, 369.000, 288.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][40], 27.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][40], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][40], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][40], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][40], 1);

    JPRP_KPANEL[playerid][41] = CreatePlayerTextDraw(playerid, 371.000, 294.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][41], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][41], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][41], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][41], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][41], 1);

    JPRP_KPANEL[playerid][42] = CreatePlayerTextDraw(playerid, 387.000, 294.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_KPANEL[playerid][42], 8.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][42], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][42], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][42], 255);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][42], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][42], 1);

    JPRP_KPANEL[playerid][43] = CreatePlayerTextDraw(playerid, 374.000, 276.000, "-");
    PlayerTextDrawLetterSize(playerid, JPRP_KPANEL[playerid][43], -0.429, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_KPANEL[playerid][43], 1);
    PlayerTextDrawColor(playerid, JPRP_KPANEL[playerid][43], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_KPANEL[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_KPANEL[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_KPANEL[playerid][43], 150);
    PlayerTextDrawFont(playerid, JPRP_KPANEL[playerid][43], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_KPANEL[playerid][43], 1);
    // Panel Identitas
    JPRP_IPANEL[playerid][0] = CreatePlayerTextDraw(playerid, 224.000, 143.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][0], 195.000, 226.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][0], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][0], hud_green_transparant);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][0], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][0], 1);

    JPRP_IPANEL[playerid][1] = CreatePlayerTextDraw(playerid, 296.000, 153.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][1], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][1], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][1], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][1], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_IPANEL[playerid][1], 1);

    JPRP_IPANEL[playerid][2] = CreatePlayerTextDraw(playerid, 299.000, 304.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][2], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][2], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][2], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][2], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_IPANEL[playerid][2], 1);

    JPRP_IPANEL[playerid][3] = CreatePlayerTextDraw(playerid, 233.000, 228.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][3], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][3], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][3], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][3], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_IPANEL[playerid][3], 1);

    JPRP_IPANEL[playerid][4] = CreatePlayerTextDraw(playerid, 363.000, 228.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][4], 48.000, 55.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][4], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][4], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][4], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_IPANEL[playerid][4], 1);

    JPRP_IPANEL[playerid][5] = CreatePlayerTextDraw(playerid, 303.000, 233.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][5], 39.000, 46.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][5], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][5], 100);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][5], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_IPANEL[playerid][5], 1);

    JPRP_IPANEL[playerid][6] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "X");
    PlayerTextDrawLetterSize(playerid, JPRP_IPANEL[playerid][6], 0.439, 1.999);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][6], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][6], 150);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][6], 1);

    JPRP_IPANEL[playerid][7] = CreatePlayerTextDraw(playerid, 306.000, 184.000, "LIHAT KTP");
    PlayerTextDrawLetterSize(playerid, JPRP_IPANEL[playerid][7], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][7], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][7], 150);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][7], 1);

    JPRP_IPANEL[playerid][8] = CreatePlayerTextDraw(playerid, 371.000, 259.000, "TUNJUKAN KTP");
    PlayerTextDrawLetterSize(playerid, JPRP_IPANEL[playerid][8], 0.140, 1.199);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][8], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][8], 150);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][8], 1);

    JPRP_IPANEL[playerid][9] = CreatePlayerTextDraw(playerid, 240.000, 259.000, "TUNJUKAN SIM");
    PlayerTextDrawLetterSize(playerid, JPRP_IPANEL[playerid][9], 0.140, 1.199);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][9], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][9], 150);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][9], 1);

    JPRP_IPANEL[playerid][10] = CreatePlayerTextDraw(playerid, 309.000, 339.000, "LIHAT SIM");
    PlayerTextDrawLetterSize(playerid, JPRP_IPANEL[playerid][10], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][10], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][10], 150);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][10], 1);

    JPRP_IPANEL[playerid][11] = CreatePlayerTextDraw(playerid, 306.000, 165.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][11], 29.000, 16.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][11], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][11], 1687547391);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][11], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][11], 1);

    JPRP_IPANEL[playerid][12] = CreatePlayerTextDraw(playerid, 309.000, 168.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][12], 11.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][12], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][12], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][12], 1);

    JPRP_IPANEL[playerid][13] = CreatePlayerTextDraw(playerid, 309.000, 174.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][13], 11.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][13], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][13], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][13], 1);

    JPRP_IPANEL[playerid][14] = CreatePlayerTextDraw(playerid, 323.000, 168.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][14], 9.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][14], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][14], -16776961);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][14], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][14], 1);

    JPRP_IPANEL[playerid][15] = CreatePlayerTextDraw(playerid, 373.000, 241.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][15], 29.000, 16.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][15], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][15], 1687547391);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][15], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][15], 1);

    JPRP_IPANEL[playerid][16] = CreatePlayerTextDraw(playerid, 376.000, 244.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][16], 11.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][16], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][16], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][16], 1);

    JPRP_IPANEL[playerid][17] = CreatePlayerTextDraw(playerid, 376.000, 250.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][17], 11.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][17], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][17], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][17], 1);

    JPRP_IPANEL[playerid][18] = CreatePlayerTextDraw(playerid, 390.000, 244.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][18], 9.000, 9.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][18], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][18], -16776961);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][18], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][18], 1);

    JPRP_IPANEL[playerid][19] = CreatePlayerTextDraw(playerid, 242.000, 241.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][19], 29.000, 16.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][19], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][19], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][19], 1);

    JPRP_IPANEL[playerid][20] = CreatePlayerTextDraw(playerid, 244.000, 244.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][20], 9.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][20], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][20], -16776961);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][20], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][20], 1);

    JPRP_IPANEL[playerid][21] = CreatePlayerTextDraw(playerid, 242.000, 238.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][21], 29.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][21], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][21], -16776961);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][21], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][21], 1);

    JPRP_IPANEL[playerid][22] = CreatePlayerTextDraw(playerid, 256.000, 244.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][22], 11.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][22], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][22], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][22], 1);

    JPRP_IPANEL[playerid][23] = CreatePlayerTextDraw(playerid, 256.000, 250.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][23], 11.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][23], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][23], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][23], 1);

    JPRP_IPANEL[playerid][24] = CreatePlayerTextDraw(playerid, 309.000, 319.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][24], 29.000, 16.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][24], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][24], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][24], 1);

    JPRP_IPANEL[playerid][25] = CreatePlayerTextDraw(playerid, 311.000, 322.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][25], 9.000, 10.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][25], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][25], -16776961);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][25], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][25], 1);

    JPRP_IPANEL[playerid][26] = CreatePlayerTextDraw(playerid, 309.000, 316.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][26], 29.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][26], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][26], -16776961);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][26], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][26], 1);

    JPRP_IPANEL[playerid][27] = CreatePlayerTextDraw(playerid, 323.000, 322.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][27], 11.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][27], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][27], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][27], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][27], 1);

    JPRP_IPANEL[playerid][28] = CreatePlayerTextDraw(playerid, 323.000, 328.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_IPANEL[playerid][28], 11.000, 4.000);
    PlayerTextDrawAlignment(playerid, JPRP_IPANEL[playerid][28], 1);
    PlayerTextDrawColor(playerid, JPRP_IPANEL[playerid][28], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_IPANEL[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_IPANEL[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_IPANEL[playerid][28], 255);
    PlayerTextDrawFont(playerid, JPRP_IPANEL[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_IPANEL[playerid][28], 1);
    // Panel Dokumen
    JPRP_DPANEL[playerid][0] = CreatePlayerTextDraw(playerid, 224.000, 143.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][0], 195.000, 226.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][0], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][0], hud_green_transparant);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][0], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][0], 1);

    JPRP_DPANEL[playerid][1] = CreatePlayerTextDraw(playerid, 300.000, 150.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][1], 42.000, 50.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][1], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][1], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][1], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][1], 1);

    JPRP_DPANEL[playerid][2] = CreatePlayerTextDraw(playerid, 303.000, 233.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][2], 39.000, 46.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][2], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][2], 100);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][2], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][2], 1);

    JPRP_DPANEL[playerid][3] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "X");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][3], 0.439, 1.998);
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][3], -5.000, -7.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][3], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][3], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][3], 1);

    JPRP_DPANEL[playerid][4] = CreatePlayerTextDraw(playerid, 250.000, 185.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][4], 42.000, 50.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][4], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][4], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][4], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][4], 1);

    JPRP_DPANEL[playerid][5] = CreatePlayerTextDraw(playerid, 243.000, 257.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][5], 42.000, 50.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][5], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][5], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][5], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][5], 1);

    JPRP_DPANEL[playerid][6] = CreatePlayerTextDraw(playerid, 300.000, 307.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][6], 42.000, 50.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][6], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][6], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][6], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][6], 1);

    JPRP_DPANEL[playerid][7] = CreatePlayerTextDraw(playerid, 361.000, 256.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][7], 42.000, 50.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][7], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][7], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][7], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][7], 1);

    JPRP_DPANEL[playerid][8] = CreatePlayerTextDraw(playerid, 350.000, 185.000, "LD_POOL:ball");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][8], 42.000, 50.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][8], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][8], 230);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][8], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, JPRP_DPANEL[playerid][8], 1);

    JPRP_DPANEL[playerid][9] = CreatePlayerTextDraw(playerid, 307.000, 177.000, "LIHAT BPJS");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][9], 0.159, 0.898);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][9], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][9], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][9], 1);

    JPRP_DPANEL[playerid][10] = CreatePlayerTextDraw(playerid, 355.000, 214.000, "TUNJUKAN BPJS");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][10], 0.119, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][10], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][10], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][10], 1);

    JPRP_DPANEL[playerid][11] = CreatePlayerTextDraw(playerid, 255.000, 214.000, "TUNJUKAN SKCK");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][11], 0.119, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][11], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][11], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][11], 1);

    JPRP_DPANEL[playerid][12] = CreatePlayerTextDraw(playerid, 307.000, 339.000, "TUNJUKAN SKS");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][12], 0.119, 0.999);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][12], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][12], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][12], 1);

    JPRP_DPANEL[playerid][13] = CreatePlayerTextDraw(playerid, 250.000, 288.000, "LIHAT SKCK");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][13], 0.159, 0.898);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][13], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][13], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][13], 1);

    JPRP_DPANEL[playerid][14] = CreatePlayerTextDraw(playerid, 370.000, 288.000, "LIHAT SKS");
    PlayerTextDrawLetterSize(playerid, JPRP_DPANEL[playerid][14], 0.159, 0.898);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][14], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][14], 150);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][14], 1);

    JPRP_DPANEL[playerid][15] = CreatePlayerTextDraw(playerid, 309.000, 162.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][15], 24.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][15], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][15], 579543807);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][15], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][15], 1);

    JPRP_DPANEL[playerid][16] = CreatePlayerTextDraw(playerid, 309.000, 165.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][16], 24.000, 11.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][16], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][16], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][16], 1);

    JPRP_DPANEL[playerid][17] = CreatePlayerTextDraw(playerid, 310.000, 166.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][17], 22.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][17], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][17], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][17], 1);

    JPRP_DPANEL[playerid][18] = CreatePlayerTextDraw(playerid, 322.000, 169.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][18], 9.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][18], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][18], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][18], 1);

    JPRP_DPANEL[playerid][19] = CreatePlayerTextDraw(playerid, 322.000, 172.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][19], 9.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][19], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][19], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][19], 1);

    JPRP_DPANEL[playerid][20] = CreatePlayerTextDraw(playerid, 359.000, 198.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][20], 24.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][20], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][20], 579543807);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][20], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][20], 1);

    JPRP_DPANEL[playerid][21] = CreatePlayerTextDraw(playerid, 359.000, 201.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][21], 24.000, 11.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][21], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][21], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][21], 1);

    JPRP_DPANEL[playerid][22] = CreatePlayerTextDraw(playerid, 360.000, 202.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][22], 22.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][22], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][22], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][22], 1);

    JPRP_DPANEL[playerid][23] = CreatePlayerTextDraw(playerid, 372.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][23], 9.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][23], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][23], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][23], 1);

    JPRP_DPANEL[playerid][24] = CreatePlayerTextDraw(playerid, 372.000, 208.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][24], 9.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][24], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][24], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][24], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][24], 1);

    JPRP_DPANEL[playerid][25] = CreatePlayerTextDraw(playerid, 263.000, 191.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][25], 17.000, 22.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][25], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][25], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][25], 1);

    JPRP_DPANEL[playerid][26] = CreatePlayerTextDraw(playerid, 267.000, 192.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][26], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][26], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][26], -2686721);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][26], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][26], 1);

    JPRP_DPANEL[playerid][27] = CreatePlayerTextDraw(playerid, 266.000, 202.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][27], 11.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][27], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][27], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][27], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][27], 1);

    JPRP_DPANEL[playerid][28] = CreatePlayerTextDraw(playerid, 266.000, 208.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][28], 11.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][28], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][28], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][28], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][28], 1);

    JPRP_DPANEL[playerid][29] = CreatePlayerTextDraw(playerid, 266.000, 210.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][29], 11.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][29], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][29], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][29], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][29], 1);

    JPRP_DPANEL[playerid][30] = CreatePlayerTextDraw(playerid, 256.000, 263.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][30], 17.000, 22.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][30], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][30], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][30], 1);

    JPRP_DPANEL[playerid][31] = CreatePlayerTextDraw(playerid, 260.000, 264.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][31], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][31], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][31], -2686721);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][31], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][31], 1);

    JPRP_DPANEL[playerid][32] = CreatePlayerTextDraw(playerid, 259.000, 274.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][32], 11.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][32], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][32], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][32], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][32], 1);

    JPRP_DPANEL[playerid][33] = CreatePlayerTextDraw(playerid, 259.000, 280.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][33], 11.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][33], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][33], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][33], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][33], 1);

    JPRP_DPANEL[playerid][34] = CreatePlayerTextDraw(playerid, 259.000, 282.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][34], 11.000, 1.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][34], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][34], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][34], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][34], 1);

    JPRP_DPANEL[playerid][35] = CreatePlayerTextDraw(playerid, 373.000, 263.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][35], 19.000, 24.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][35], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][35], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][35], 1);

    JPRP_DPANEL[playerid][36] = CreatePlayerTextDraw(playerid, 373.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][36], 19.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][36], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][36], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][36], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][36], 1);

    JPRP_DPANEL[playerid][37] = CreatePlayerTextDraw(playerid, 371.000, 268.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][37], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][37], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][37], -1448498689);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][37], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][37], 1);

    JPRP_DPANEL[playerid][38] = CreatePlayerTextDraw(playerid, 374.000, 274.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][38], 17.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][38], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][38], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][38], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][38], 1);

    JPRP_DPANEL[playerid][39] = CreatePlayerTextDraw(playerid, 374.000, 277.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][39], 17.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][39], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][39], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][39], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][39], 1);

    JPRP_DPANEL[playerid][40] = CreatePlayerTextDraw(playerid, 374.000, 282.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][40], 17.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][40], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][40], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][40], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][40], 1);

    JPRP_DPANEL[playerid][41] = CreatePlayerTextDraw(playerid, 312.000, 313.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][41], 19.000, 24.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][41], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][41], -1);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][41], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][41], 1);

    JPRP_DPANEL[playerid][42] = CreatePlayerTextDraw(playerid, 312.000, 314.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][42], 19.000, 3.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][42], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][42], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][42], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][42], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][42], 1);

    JPRP_DPANEL[playerid][43] = CreatePlayerTextDraw(playerid, 310.000, 318.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][43], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][43], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][43], -1448498689);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][43], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][43], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][43], 1);

    JPRP_DPANEL[playerid][44] = CreatePlayerTextDraw(playerid, 313.000, 324.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][44], 17.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][44], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][44], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][44], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][44], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][44], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][44], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][44], 1);

    JPRP_DPANEL[playerid][45] = CreatePlayerTextDraw(playerid, 313.000, 327.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][45], 17.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][45], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][45], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][45], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][45], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][45], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][45], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][45], 1);

    JPRP_DPANEL[playerid][46] = CreatePlayerTextDraw(playerid, 313.000, 332.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, JPRP_DPANEL[playerid][46], 17.000, 2.000);
    PlayerTextDrawAlignment(playerid, JPRP_DPANEL[playerid][46], 1);
    PlayerTextDrawColor(playerid, JPRP_DPANEL[playerid][46], 255);
    PlayerTextDrawSetShadow(playerid, JPRP_DPANEL[playerid][46], 0);
    PlayerTextDrawSetOutline(playerid, JPRP_DPANEL[playerid][46], 0);
    PlayerTextDrawBackgroundColor(playerid, JPRP_DPANEL[playerid][46], 255);
    PlayerTextDrawFont(playerid, JPRP_DPANEL[playerid][46], 4);
    PlayerTextDrawSetProportional(playerid, JPRP_DPANEL[playerid][46], 1);
	return 1;
}
