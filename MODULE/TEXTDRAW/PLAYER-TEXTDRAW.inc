//KTP
new PlayerText:Liberty_KTP[MAX_PLAYERS][28];

loadplayertextdraw(playerid){
  //KTP
  Liberty_KTP[playerid][0] = CreatePlayerTextDraw(playerid, 368.000, 247.000, "ld_beat:chit");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][0], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][0], 16.500, 21.500);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][0], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][0], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][0], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][0], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][0], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][0], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][0], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][0], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][0], 1);

  Liberty_KTP[playerid][1] = CreatePlayerTextDraw(playerid, 368.000, 359.000, "ld_beat:chit");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][1], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][1], 18.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][1], 2);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][1], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][1], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][1], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][1], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][1], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][1], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][1], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][1], 1);

  Liberty_KTP[playerid][2] = CreatePlayerTextDraw(playerid, 518.000, 359.000, "ld_beat:chit");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][2], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][2], 16.500, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][2], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][2], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][2], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][2], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][2], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][2], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][2], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][2], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][2], 1);

  Liberty_KTP[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 248.000, "ld_beat:chit");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][3], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][3], 16.500, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][3], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][3], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][3], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][3], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][3], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][3], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][3], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][3], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][3], 1);

  Liberty_KTP[playerid][4] = CreatePlayerTextDraw(playerid, 376.000, 330.000, "ld_bum:blkdot");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][4], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][4], 148.500, 43.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][4], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][4], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][4], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][4], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][4], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][4], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][4], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][4], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][4], 1);

  Liberty_KTP[playerid][5] = CreatePlayerTextDraw(playerid, 374.000, 330.000, "ld_bum:blkdot");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][5], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][5], 151.500, -79.500);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][5], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][5], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][5], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][5], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][5], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][5], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][5], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][5], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][5], 1);

  Liberty_KTP[playerid][6] = CreatePlayerTextDraw(playerid, 371.000, 257.000, "ld_bum:blkdot");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][6], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][6], 161.000, 109.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][6], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][6], 1671806975);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][6], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][6], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][6], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][6], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][6], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][6], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][6], 1);

  Liberty_KTP[playerid][7] = CreatePlayerTextDraw(playerid, 416.000, 300.000, "UMUR");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][7], 0.137, 1.049);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][7], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][7], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][7], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][7], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][7], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][7], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][7], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][7], 1);

  Liberty_KTP[playerid][8] = CreatePlayerTextDraw(playerid, 382.000, 271.000, "");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][8], 0.554, 2.699);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][8], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][8], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][8], -6710785);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][8], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][8], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][8], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][8], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][8], 1);

  Liberty_KTP[playerid][9] = CreatePlayerTextDraw(playerid, 394.000, 273.000, "");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][9], -0.475, 1.699);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][9], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][9], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][9], -6710785);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][9], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][9], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][9], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][9], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][9], 1);

  Liberty_KTP[playerid][10] = CreatePlayerTextDraw(playerid, 394.000, 284.000, "");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][10], -0.475, 1.399);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][10], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][10], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][10], -6710785);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][10], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][10], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][10], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][10], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][10], 1);

  Liberty_KTP[playerid][11] = CreatePlayerTextDraw(playerid, 392.000, 272.000, "");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][11], 0.554, 2.699);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][11], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][11], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][11], -6710785);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][11], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][11], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][11], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][11], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][11], 1);

  Liberty_KTP[playerid][12] = CreatePlayerTextDraw(playerid, 414.000, 274.000, "ld_bum:blkdot");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][12], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][12], 118.000, 14.500);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][12], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][12], -16776961);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][12], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][12], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][12], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][12], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][12], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][12], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][12], 1);

  Liberty_KTP[playerid][13] = CreatePlayerTextDraw(playerid, 414.000, 288.000, "ld_bum:blkdot");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][13], 0.600, 2.000);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][13], 118.000, 13.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][13], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][13], -1);
  PlayerTextDrawUseBox(playerid, Liberty_KTP[playerid][13], 1);
  PlayerTextDrawBoxColor(playerid, Liberty_KTP[playerid][13], 50);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][13], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][13], 1);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][13], -789973249);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][13], 4);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][13], 1);

  Liberty_KTP[playerid][14] = CreatePlayerTextDraw(playerid, 424.000, 250.000, "KARTU TANDA PENDUDUK");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][14], 0.135, 1.149);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][14], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][14], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][14], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][14], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][14], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][14], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][14], 1);

  Liberty_KTP[playerid][15] = CreatePlayerTextDraw(playerid, 420.000, 258.000, "PEMERINTAH KOTA LIBERTY");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][15], 0.150, 1.299);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][15], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][15], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][15], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][15], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][15], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][15], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][15], 1);

  Liberty_KTP[playerid][16] = CreatePlayerTextDraw(playerid, 418.000, 279.000, "Donald_Bebek");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][16], 0.145, 1.649);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][16], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][16], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][16], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][16], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][16], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][16], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][16], 2);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][16], 1);

  Liberty_KTP[playerid][17] = CreatePlayerTextDraw(playerid, 469.000, 300.000, "KELAMIN");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][17], 0.133, 0.999);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][17], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][17], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][17], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][17], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][17], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][17], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][17], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][17], 1);

  Liberty_KTP[playerid][18] = CreatePlayerTextDraw(playerid, 506.000, 300.000, "PEKERJAAN");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][18], 0.145, 1.049);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][18], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][18], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][18], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][18], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][18], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][18], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][18], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][18], 1);

  Liberty_KTP[playerid][19] = CreatePlayerTextDraw(playerid, 416.000, 318.000, "TANDA TANGAN");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][19], 0.116, 1.049);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][19], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][19], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][19], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][19], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][19], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][19], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][19], 1);

  Liberty_KTP[playerid][20] = CreatePlayerTextDraw(playerid, 421.000, 307.000, "19-03-1800");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][20], 0.124, 0.899);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][20], 465.500, 10.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][20], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][20], -667137);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][20], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][20], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][20], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][20], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][20], 1);

  Liberty_KTP[playerid][21] = CreatePlayerTextDraw(playerid, 472.000, 307.000, "MALE");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][21], 0.145, 0.949);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][21], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][21], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][21], -667137);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][21], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][21], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][21], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][21], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][21], 1);

  Liberty_KTP[playerid][22] = CreatePlayerTextDraw(playerid, 510.000, 307.000, "192");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][22], 0.145, 0.949);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][22], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][22], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][22], -667137);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][22], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][22], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][22], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][22], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][22], 1);

  Liberty_KTP[playerid][23] = CreatePlayerTextDraw(playerid, 421.000, 327.000, "Donald");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][23], 0.191, 1.149);
  PlayerTextDrawTextSize(playerid, Liberty_KTP[playerid][23], 400.000, 17.000);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][23], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][23], -667137);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][23], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][23], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][23], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][23], 0);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][23], 1);

  Liberty_KTP[playerid][24] = CreatePlayerTextDraw(playerid, 381.000, 338.000, "BERLAKU SEUMUR HIDUP");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][24], 0.158, 1.099);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][24], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][24], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][24], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][24], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][24], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][24], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][24], 1);

  Liberty_KTP[playerid][25] = CreatePlayerTextDraw(playerid, 381.000, 346.000, "KARTU TANDA PENDUDUK INI RESMI DI KELUARKAN PEMERINTAH LIBERTY");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][25], 0.112, 0.899);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][25], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][25], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][25], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][25], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][25], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][25], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][25], 1);

  Liberty_KTP[playerid][26] = CreatePlayerTextDraw(playerid, 381.000, 353.000, "MENJADI BUKTI BAHWA YANG BERSANGKUTAN MEMILIKI HAK DAN KEWAJIBAN");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][26], 0.112, 0.899);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][26], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][26], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][26], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][26], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][26], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][26], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][26], 1);

  Liberty_KTP[playerid][27] = CreatePlayerTextDraw(playerid, 381.000, 360.000, "SEBAGAI WARGA LIBERTY");
  PlayerTextDrawLetterSize(playerid, Liberty_KTP[playerid][27], 0.112, 0.899);
  PlayerTextDrawAlignment(playerid, Liberty_KTP[playerid][27], 1);
  PlayerTextDrawColor(playerid, Liberty_KTP[playerid][27], 255);
  PlayerTextDrawSetShadow(playerid, Liberty_KTP[playerid][27], 0);
  PlayerTextDrawSetOutline(playerid, Liberty_KTP[playerid][27], 0);
  PlayerTextDrawBackgroundColor(playerid, Liberty_KTP[playerid][27], 255);
  PlayerTextDrawFont(playerid, Liberty_KTP[playerid][27], 1);
  PlayerTextDrawSetProportional(playerid, Liberty_KTP[playerid][27], 1);
}