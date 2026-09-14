new PlayerText: PROGRESSBAR[MAX_PLAYERS][19];
new LoadingPlayerBar[MAX_PLAYERS];
new TimerLoading[MAX_PLAYERS];

HideProgressBar(playerid)
{
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][0]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][1]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][2]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][3]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][4]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][5]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][6]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][7]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][8]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][9]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][10]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][11]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][12]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][13]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][14]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][15]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][16]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][17]);
	PlayerTextDrawHide(playerid, PROGRESSBAR[playerid][18]);
	return 1;
}
CreateProgress(playerid)
{
	//baru
	PROGRESSBAR[playerid][0] = CreatePlayerTextDraw(playerid, 415.000, 411.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][0], 93.000, 3.000);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][0], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][0], 255);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][0], 1);

	PROGRESSBAR[playerid][1] = CreatePlayerTextDraw(playerid, 415.000, 432.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][1], 93.000, -2.000);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][1], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][1], 255);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][1], 1);

	PROGRESSBAR[playerid][2] = CreatePlayerTextDraw(playerid, 417.000, 413.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][2], -2.000, 18.000);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][2], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][2], 255);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][2], 1);

	PROGRESSBAR[playerid][3] = CreatePlayerTextDraw(playerid, 417.000, 413.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][3], -2.000, 18.000);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][3], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][3], 255);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][3], 1);

	PROGRESSBAR[playerid][4] = CreatePlayerTextDraw(playerid, 508.000, 413.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][4], -2.000, 18.000);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][4], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][4], 255);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][4], 1);

	PROGRESSBAR[playerid][5] = CreatePlayerTextDraw(playerid, 417.000, 413.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][5], 89.000, 17.000);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][5], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][5], -65281);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][5], 255);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][5], 1);

	PROGRESSBAR[playerid][6] = CreatePlayerTextDraw(playerid, 437.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][6], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][6], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][6], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][6], 1);

	PROGRESSBAR[playerid][7] = CreatePlayerTextDraw(playerid, 457.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][7], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][7], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][7], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][7], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][7], 1);

	PROGRESSBAR[playerid][8] = CreatePlayerTextDraw(playerid, 422.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][8], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][8], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][8], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][8], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][8], 1);

	PROGRESSBAR[playerid][9] = CreatePlayerTextDraw(playerid, 429.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][9], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][9], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][9], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][9], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][9], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][9], 1);

	PROGRESSBAR[playerid][10] = CreatePlayerTextDraw(playerid, 469.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][10], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][10], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][10], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][10], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][10], 1);

	PROGRESSBAR[playerid][11] = CreatePlayerTextDraw(playerid, 444.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][11], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][11], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][11], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][11], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][11], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][11], 1);

	PROGRESSBAR[playerid][12] = CreatePlayerTextDraw(playerid, 451.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][12], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][12], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][12], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][12], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][12], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][12], 1);

	PROGRESSBAR[playerid][13] = CreatePlayerTextDraw(playerid, 463.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][13], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][13], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][13], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][13], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][13], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][13], 1);

	PROGRESSBAR[playerid][14] = CreatePlayerTextDraw(playerid, 476.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][14], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][14], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][14], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][14], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][14], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][14], 1);

	PROGRESSBAR[playerid][15] = CreatePlayerTextDraw(playerid, 483.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][15], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][15], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][15], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][15], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][15], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][15], 1);

	PROGRESSBAR[playerid][16] = CreatePlayerTextDraw(playerid, 490.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][16], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][16], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][16], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][16], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][16], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][16], 1);

	PROGRESSBAR[playerid][17] = CreatePlayerTextDraw(playerid, 497.000, 413.000, "/");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][17], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][17], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][17], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][17], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][17], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][17], 1);

	PROGRESSBAR[playerid][18] = CreatePlayerTextDraw(playerid, 432.000, 399.000, "AUFA GANTENG....");
	PlayerTextDrawLetterSize(playerid, PROGRESSBAR[playerid][18], 0.170, 0.999);
	PlayerTextDrawAlignment(playerid, PROGRESSBAR[playerid][18], 1);
	PlayerTextDrawColor(playerid, PROGRESSBAR[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, PROGRESSBAR[playerid][18], 1);
	PlayerTextDrawSetOutline(playerid, PROGRESSBAR[playerid][18], 1);
	PlayerTextDrawBackgroundColor(playerid, PROGRESSBAR[playerid][18], 150);
	PlayerTextDrawFont(playerid, PROGRESSBAR[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, PROGRESSBAR[playerid][18], 1);
	return 1;
}

ShowProgressbar(playerid, text[] = "", Times)
{
	if(pData[playerid][pProgress] > 0) return 1;
	//scrip aufa, biar ga bisa spam progressbar
	LoadingPlayerBar[playerid] = 0;
	pData[playerid][pProgress] = 1;
	LoadingPlayerBar[playerid] = 0;
	new Float:Value = LoadingPlayerBar[playerid]*89.0/100;
	new Timers = Times*1000/100;
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][5], Value, 17.0);
	PlayerTextDrawSetString(playerid, PROGRESSBAR[playerid][18], text);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][0]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][1]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][2]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][3]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][4]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][5]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][6]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][7]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][8]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][9]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][10]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][11]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][12]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][13]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][14]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][15]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][16]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][17]);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][18]);
	TogglePlayerControllable(playerid, 0);
	TimerLoading[playerid] = SetTimerEx("UpdtLoading", Timers, true, "d", playerid);
	return 1;
}

stock UpdateLoading(playerid)
{
	new Float:Value = LoadingPlayerBar[playerid]*89.00/100;
	PlayerTextDrawTextSize(playerid, PROGRESSBAR[playerid][5], Value, 17.0);
	PlayerTextDrawShow(playerid, PROGRESSBAR[playerid][5]);
	return 1;
}

forward UpdtLoading(playerid);
public UpdtLoading(playerid)
{
	LoadingPlayerBar[playerid] += 1;
	UpdateLoading(playerid);
	if(LoadingPlayerBar[playerid] >= 100)
	{
		KillTimer(TimerLoading[playerid]);
		LoadingPlayerBar[playerid] = 0;
		pData[playerid][pProgress] = 0;
		HideProgressBar(playerid);
		//SetTimerEx(ProgressTimer[playerid], 300, false, "d", playerid);
		TogglePlayerControllable(playerid, 1);
	}
	return 1;
}