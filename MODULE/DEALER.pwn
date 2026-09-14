new PlayerText: DealerTD[MAX_PLAYERS][14];

stock CreatePlayerTdDealer(playerid)
{
	DealerTD[playerid][0] = CreatePlayerTextDraw(playerid, 246.000, 382.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, DealerTD[playerid][0], 55.000, 18.000);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][0], 690964735);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, DealerTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, DealerTD[playerid][0], 1);

	DealerTD[playerid][1] = CreatePlayerTextDraw(playerid, 344.000, 382.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, DealerTD[playerid][1], 55.000, 18.000);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][1], 690964735);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, DealerTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, DealerTD[playerid][1], 1);

	DealerTD[playerid][2] = CreatePlayerTextDraw(playerid, 295.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, DealerTD[playerid][2], 55.000, 18.000);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][2], 690964735);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, DealerTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, DealerTD[playerid][2], 1);

	DealerTD[playerid][3] = CreatePlayerTextDraw(playerid, 433.000, 371.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, DealerTD[playerid][3], 55.000, 18.000);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][3], hud_green);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, DealerTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, DealerTD[playerid][3], 1);

	DealerTD[playerid][4] = CreatePlayerTextDraw(playerid, 169.000, 346.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, DealerTD[playerid][4], 55.000, 18.000);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][4], 690964735);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, DealerTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, DealerTD[playerid][4], 1);

	DealerTD[playerid][5] = CreatePlayerTextDraw(playerid, 186.000, 334.000, "Harga");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][5], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][5], 1);

	DealerTD[playerid][6] = CreatePlayerTextDraw(playerid, 197.000, 348.000, "$29,200");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][6], 0.230, 1.399);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, DealerTD[playerid][6], 6553855);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][6], 1);

	DealerTD[playerid][7] = CreatePlayerTextDraw(playerid, 271.000, 385.000, "< KEMBALI");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][7], 0.218, 1.299);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, DealerTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][7], 1);

	DealerTD[playerid][8] = CreatePlayerTextDraw(playerid, 370.000, 385.000, "> SELANJUTNYA");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][8], 0.170, 1.299);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][8], 2);
	PlayerTextDrawColor(playerid, DealerTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][8], 1);

	DealerTD[playerid][9] = CreatePlayerTextDraw(playerid, 322.000, 413.000, "BATAL");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][9], 0.170, 1.299);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][9], 2);
	PlayerTextDrawColor(playerid, DealerTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][9], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][9], 1);

	DealerTD[playerid][10] = CreatePlayerTextDraw(playerid, 461.000, 373.000, "BELI KENDARAAN");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][10], 0.158, 1.299);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][10], 2);
	PlayerTextDrawColor(playerid, DealerTD[playerid][10], hud_black);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][10], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][10], 1);

	DealerTD[playerid][11] = CreatePlayerTextDraw(playerid, 149.000, 378.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, DealerTD[playerid][11], 76.000, 28.000);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][11], 690964735);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, DealerTD[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][11], 1);

	DealerTD[playerid][12] = CreatePlayerTextDraw(playerid, 159.000, 369.000, "Nama Kendaraan");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][12], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, DealerTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][12], 1);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][12], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][12], 1);

	DealerTD[playerid][13] = CreatePlayerTextDraw(playerid, 187.000, 388.000, "SULTAN");
	PlayerTextDrawLetterSize(playerid, DealerTD[playerid][13], 0.218, 1.299);
	PlayerTextDrawAlignment(playerid, DealerTD[playerid][13], 2);
	PlayerTextDrawColor(playerid, DealerTD[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, DealerTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, DealerTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, DealerTD[playerid][13], 150);
	PlayerTextDrawFont(playerid, DealerTD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, DealerTD[playerid][13], 1);
    return 1;
}
