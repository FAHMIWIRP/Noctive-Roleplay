loadtextdraw(){
        //GiveDamage TakeDamage
    GiveDamage = TextDrawCreate(171.000000, 388.000000, " ");
    TextDrawAlignment(GiveDamage, 2);
    TextDrawBackgroundColor(GiveDamage, 255);
    TextDrawFont(GiveDamage, 2);
    TextDrawLetterSize(GiveDamage, 0.160000, 0.599999);
    TextDrawColor(GiveDamage, 0x00FF04FF);
    TextDrawSetOutline(GiveDamage, 1);
    TextDrawSetProportional(GiveDamage, 1);

    TakeDamage = TextDrawCreate(440.000000,388.000000, " ");
    TextDrawAlignment(TakeDamage, 2);
    TextDrawBackgroundColor(TakeDamage, 255);
    TextDrawFont(TakeDamage, 2);
    TextDrawLetterSize(TakeDamage, 0.160000, 0.599999);
    TextDrawColor(TakeDamage, 0xE81010FF);
    TextDrawSetOutline(TakeDamage, 1);
    TextDrawSetProportional(TakeDamage, 1);

	//jam
    TextDate = TextDrawCreate(3.000000, 433.000000, "-, - - -");
    TextDrawFont(TextDate, 1);
    TextDrawLetterSize(TextDate, 0.400000, 1.399999);
    TextDrawTextSize(TextDate, 400.000000, 17.000000);
    TextDrawSetOutline(TextDate, 0);
    TextDrawSetShadow(TextDate, 0);
    TextDrawAlignment(TextDate, 1);
    TextDrawColor(TextDate, -1);
    TextDrawBackgroundColor(TextDate, 255);
    TextDrawBoxColor(TextDate, 50);
    TextDrawUseBox(TextDate, 0);
    TextDrawSetProportional(TextDate, 1);
    TextDrawSetSelectable(TextDate, 0);

    TextTime = TextDrawCreate(547.000000, 28.000000, "-:-:-");
    TextDrawFont(TextTime, 1);
    TextDrawLetterSize(TextTime, 0.400000, 2.000000);
    TextDrawTextSize(TextTime, 400.000000, 1.399999);
    TextDrawSetOutline(TextTime, 1);
    TextDrawSetShadow(TextTime, 0);
    TextDrawAlignment(TextTime, 1);
    TextDrawColor(TextTime, -1);
    TextDrawBackgroundColor(TextTime, 255);
    TextDrawBoxColor(TextTime, 50);
    TextDrawUseBox(TextTime, 0);
    TextDrawSetProportional(TextTime, 1);
    TextDrawSetSelectable(TextTime, 0);
    SetTimer("WaktuServer", 1000, true);

    PhoneTD[0] = TextDrawCreate(454.000, 172.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[0], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[0], 1);
    TextDrawColor(PhoneTD[0], 255);
    TextDrawSetShadow(PhoneTD[0], 0);
    TextDrawSetOutline(PhoneTD[0], 0);
    TextDrawBackgroundColor(PhoneTD[0], 255);
    TextDrawFont(PhoneTD[0], 4);
    TextDrawSetProportional(PhoneTD[0], 1);

    PhoneTD[1] = TextDrawCreate(540.000, 172.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[1], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[1], 1);
    TextDrawColor(PhoneTD[1], 255);
    TextDrawSetShadow(PhoneTD[1], 0);
    TextDrawSetOutline(PhoneTD[1], 0);
    TextDrawBackgroundColor(PhoneTD[1], 255);
    TextDrawFont(PhoneTD[1], 4);
    TextDrawSetProportional(PhoneTD[1], 1);

    PhoneTD[2] = TextDrawCreate(540.000, 400.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[2], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[2], 1);
    TextDrawColor(PhoneTD[2], 255);
    TextDrawSetShadow(PhoneTD[2], 0);
    TextDrawSetOutline(PhoneTD[2], 0);
    TextDrawBackgroundColor(PhoneTD[2], 255);
    TextDrawFont(PhoneTD[2], 4);
    TextDrawSetProportional(PhoneTD[2], 1);

    PhoneTD[3] = TextDrawCreate(454.000, 400.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[3], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[3], 1);
    TextDrawColor(PhoneTD[3], 255);
    TextDrawSetShadow(PhoneTD[3], 0);
    TextDrawSetOutline(PhoneTD[3], 0);
    TextDrawBackgroundColor(PhoneTD[3], 255);
    TextDrawFont(PhoneTD[3], 4);
    TextDrawSetProportional(PhoneTD[3], 1);

    PhoneTD[4] = TextDrawCreate(463.000, 178.000, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[4], 90.000, 252.000);
    TextDrawAlignment(PhoneTD[4], 1);
    TextDrawColor(PhoneTD[4], 255);
    TextDrawSetShadow(PhoneTD[4], 0);
    TextDrawSetOutline(PhoneTD[4], 0);
    TextDrawBackgroundColor(PhoneTD[4], 255);
    TextDrawFont(PhoneTD[4], 4);
    TextDrawSetProportional(PhoneTD[4], 1);

    PhoneTD[5] = TextDrawCreate(457.500, 190.000, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[5], 101.000, 230.000);
    TextDrawAlignment(PhoneTD[5], 1);
    TextDrawColor(PhoneTD[5], 255);
    TextDrawSetShadow(PhoneTD[5], 0);
    TextDrawSetOutline(PhoneTD[5], 0);
    TextDrawBackgroundColor(PhoneTD[5], 255);
    TextDrawFont(PhoneTD[5], 4);
    TextDrawSetProportional(PhoneTD[5], 1);

    PhoneTD[6] = TextDrawCreate(456.000, 175.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[6], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[6], 1);
    TextDrawColor(PhoneTD[6], 1887473919);
    TextDrawSetShadow(PhoneTD[6], 0);
    TextDrawSetOutline(PhoneTD[6], 0);
    TextDrawBackgroundColor(PhoneTD[6], 255);
    TextDrawFont(PhoneTD[6], 4);
    TextDrawSetProportional(PhoneTD[6], 1);

    PhoneTD[7] = TextDrawCreate(538.000, 175.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[7], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[7], 1);
    TextDrawColor(PhoneTD[7], 1887473919);
    TextDrawSetShadow(PhoneTD[7], 0);
    TextDrawSetOutline(PhoneTD[7], 0);
    TextDrawBackgroundColor(PhoneTD[7], 255);
    TextDrawFont(PhoneTD[7], 4);
    TextDrawSetProportional(PhoneTD[7], 1);

    PhoneTD[8] = TextDrawCreate(538.000, 397.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[8], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[8], 1);
    TextDrawColor(PhoneTD[8], 1887473919);
    TextDrawSetShadow(PhoneTD[8], 0);
    TextDrawSetOutline(PhoneTD[8], 0);
    TextDrawBackgroundColor(PhoneTD[8], 255);
    TextDrawFont(PhoneTD[8], 4);
    TextDrawSetProportional(PhoneTD[8], 1);

    PhoneTD[9] = TextDrawCreate(456.000, 397.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[9], 22.000, 36.000);
    TextDrawAlignment(PhoneTD[9], 1);
    TextDrawColor(PhoneTD[9], 1887473919);
    TextDrawSetShadow(PhoneTD[9], 0);
    TextDrawSetOutline(PhoneTD[9], 0);
    TextDrawBackgroundColor(PhoneTD[9], 255);
    TextDrawFont(PhoneTD[9], 4);
    TextDrawSetProportional(PhoneTD[9], 1);

    PhoneTD[10] = TextDrawCreate(466.000, 181.000, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[10], 85.000, 246.000);
    TextDrawAlignment(PhoneTD[10], 1);
    TextDrawColor(PhoneTD[10], 1887473919);
    TextDrawSetShadow(PhoneTD[10], 0);
    TextDrawSetOutline(PhoneTD[10], 0);
    TextDrawBackgroundColor(PhoneTD[10], 255);
    TextDrawFont(PhoneTD[10], 4);
    TextDrawSetProportional(PhoneTD[10], 1);

    PhoneTD[11] = TextDrawCreate(460.000, 189.000, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[11], 96.000, 225.000);
    TextDrawAlignment(PhoneTD[11], 1);
    TextDrawColor(PhoneTD[11], 1887473919);
    TextDrawSetShadow(PhoneTD[11], 0);
    TextDrawSetOutline(PhoneTD[11], 0);
    TextDrawBackgroundColor(PhoneTD[11], 255);
    TextDrawFont(PhoneTD[11], 4);
    TextDrawSetProportional(PhoneTD[11], 1);

    PhoneTD[12] = TextDrawCreate(488.000, 181.000, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[12], 42.000, 13.000);
    TextDrawAlignment(PhoneTD[12], 1);
    TextDrawColor(PhoneTD[12], 255);
    TextDrawSetShadow(PhoneTD[12], 0);
    TextDrawSetOutline(PhoneTD[12], 0);
    TextDrawBackgroundColor(PhoneTD[12], 255);
    TextDrawFont(PhoneTD[12], 4);
    TextDrawSetProportional(PhoneTD[12], 1);

    PhoneTD[13] = TextDrawCreate(484.000, 174.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[13], 11.000, 24.000);
    TextDrawAlignment(PhoneTD[13], 1);
    TextDrawColor(PhoneTD[13], 255);
    TextDrawSetShadow(PhoneTD[13], 0);
    TextDrawSetOutline(PhoneTD[13], 0);
    TextDrawBackgroundColor(PhoneTD[13], 255);
    TextDrawFont(PhoneTD[13], 4);
    TextDrawSetProportional(PhoneTD[13], 1);

    PhoneTD[14] = TextDrawCreate(523.000, 174.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[14], 11.000, 24.000);
    TextDrawAlignment(PhoneTD[14], 1);
    TextDrawColor(PhoneTD[14], 255);
    TextDrawSetShadow(PhoneTD[14], 0);
    TextDrawSetOutline(PhoneTD[14], 0);
    TextDrawBackgroundColor(PhoneTD[14], 255);
    TextDrawFont(PhoneTD[14], 4);
    TextDrawSetProportional(PhoneTD[14], 1);

    PhoneTD[15] = TextDrawCreate(492.000, 185.500, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[15], 28.000, 2.000);
    TextDrawAlignment(PhoneTD[15], 1);
    TextDrawColor(PhoneTD[15], -1);
    TextDrawSetShadow(PhoneTD[15], 0);
    TextDrawSetOutline(PhoneTD[15], 0);
    TextDrawBackgroundColor(PhoneTD[15], 255);
    TextDrawFont(PhoneTD[15], 4);
    TextDrawSetProportional(PhoneTD[15], 1);

    PhoneTD[16] = TextDrawCreate(523.000, 182.000, "LD_BEAT:chit");
    TextDrawTextSize(PhoneTD[16], 5.000, 8.000);
    TextDrawAlignment(PhoneTD[16], 1);
    TextDrawColor(PhoneTD[16], 1887473919);
    TextDrawSetShadow(PhoneTD[16], 0);
    TextDrawSetOutline(PhoneTD[16], 0);
    TextDrawBackgroundColor(PhoneTD[16], 255);
    TextDrawFont(PhoneTD[16], 4);
    TextDrawSetProportional(PhoneTD[16], 1);
    TextDrawSetSelectable(PhoneTD[16], 1);

    PhoneTD[17] = TextDrawCreate(542.000, 185.000, "LD_DUAL:white");
    TextDrawTextSize(PhoneTD[17], 9.000, 5.000);
    TextDrawAlignment(PhoneTD[17], 1);
    TextDrawColor(PhoneTD[17], -1);
    TextDrawSetShadow(PhoneTD[17], 0);
    TextDrawSetOutline(PhoneTD[17], 0);
    TextDrawBackgroundColor(PhoneTD[17], 255);
    TextDrawFont(PhoneTD[17], 4);
    TextDrawSetProportional(PhoneTD[17], 1);

    PhoneTD[18] = TextDrawCreate(534.000, 182.000, "5G");
    TextDrawLetterSize(PhoneTD[18], 0.150, 0.999);
    TextDrawAlignment(PhoneTD[18], 1);
    TextDrawColor(PhoneTD[18], -1);
    TextDrawSetShadow(PhoneTD[18], 0);
    TextDrawSetOutline(PhoneTD[18], 0);
    TextDrawBackgroundColor(PhoneTD[18], 150);
    TextDrawFont(PhoneTD[18], 1);
    TextDrawSetProportional(PhoneTD[18], 1);

    PhoneTD[19] = TextDrawCreate(495.000, 250.000, "_");
    TextDrawLetterSize(PhoneTD[19], 0.958, 6.797);
    TextDrawAlignment(PhoneTD[19], 1);
    TextDrawColor(PhoneTD[19], -626712321);
    TextDrawSetShadow(PhoneTD[19], 0);
    TextDrawSetOutline(PhoneTD[19], 0);
    TextDrawBackgroundColor(PhoneTD[19], 150);
    TextDrawFont(PhoneTD[19], 1);
    TextDrawSetProportional(PhoneTD[19], 1);

    PhoneTD[20] = TextDrawCreate(492.000, 301.000, "_");
    TextDrawLetterSize(PhoneTD[20], 0.238, 1.699);
    TextDrawAlignment(PhoneTD[20], 1);
    TextDrawColor(PhoneTD[20], -626712321);
    TextDrawSetShadow(PhoneTD[20], 0);
    TextDrawSetOutline(PhoneTD[20], 0);
    TextDrawBackgroundColor(PhoneTD[20], 150);
    TextDrawFont(PhoneTD[20], 1);
    TextDrawSetProportional(PhoneTD[20], 1);


    JAMTD = TextDrawCreate(467.000, 183.000, "00:00");
    TextDrawLetterSize(JAMTD, 0.150, 0.999);
    TextDrawAlignment(JAMTD, 1);
    TextDrawColor(JAMTD, -1);
    TextDrawSetShadow(JAMTD, 0);
    TextDrawSetOutline(JAMTD, 0);
    TextDrawBackgroundColor(JAMTD, 150);
    TextDrawFont(JAMTD, 1);
    TextDrawSetProportional(JAMTD, 1);

    TUTUPHP = TextDrawCreate(473.000, 420.000, "LD_DUAL:white");
    TextDrawTextSize(TUTUPHP, 70.000, 5.000);
    TextDrawAlignment(TUTUPHP, 1);
    TextDrawColor(TUTUPHP, -262226);
    TextDrawSetShadow(TUTUPHP, 0);
    TextDrawSetOutline(TUTUPHP, 0);
    TextDrawBackgroundColor(TUTUPHP, 255);
    TextDrawFont(TUTUPHP, 4);
    TextDrawSetProportional(TUTUPHP, 1);
    TextDrawSetSelectable(TUTUPHP, 1);

    APKNAME[0] = TextDrawCreate(479.000, 236.000, "Maps");
    TextDrawLetterSize(APKNAME[0], 0.170, 0.898);
    TextDrawAlignment(APKNAME[0], 2);
    TextDrawColor(APKNAME[0], -1);
    TextDrawSetShadow(APKNAME[0], 0);
    TextDrawSetOutline(APKNAME[0], 0);
    TextDrawBackgroundColor(APKNAME[0], 150);
    TextDrawFont(APKNAME[0], 1);
    TextDrawSetProportional(APKNAME[0], 1);

    APKNAME[1] = TextDrawCreate(508.000, 236.000, "Kontak");
    TextDrawLetterSize(APKNAME[1], 0.170, 0.898);
    TextDrawAlignment(APKNAME[1], 2);
    TextDrawColor(APKNAME[1], -1);
    TextDrawSetShadow(APKNAME[1], 0);
    TextDrawSetOutline(APKNAME[1], 0);
    TextDrawBackgroundColor(APKNAME[1], 150);
    TextDrawFont(APKNAME[1], 1);
    TextDrawSetProportional(APKNAME[1], 1);

    APKNAME[2] = TextDrawCreate(537.000, 236.000, "Airdrop");
    TextDrawLetterSize(APKNAME[2], 0.170, 0.898);
    TextDrawAlignment(APKNAME[2], 2);
    TextDrawColor(APKNAME[2], -1);
    TextDrawSetShadow(APKNAME[2], 0);
    TextDrawSetOutline(APKNAME[2], 0);
    TextDrawBackgroundColor(APKNAME[2], 150);
    TextDrawFont(APKNAME[2], 1);
    TextDrawSetProportional(APKNAME[2], 1);

    APKNAME[3] = TextDrawCreate(479.000, 279.000, "Gojek");
    TextDrawLetterSize(APKNAME[3], 0.170, 0.898);
    TextDrawAlignment(APKNAME[3], 2);
    TextDrawColor(APKNAME[3], -1);
    TextDrawSetShadow(APKNAME[3], 0);
    TextDrawSetOutline(APKNAME[3], 0);
    TextDrawBackgroundColor(APKNAME[3], 150);
    TextDrawFont(APKNAME[3], 1);
    TextDrawSetProportional(APKNAME[3], 1);

    APKNAME[4] = TextDrawCreate(508.000, 279.000, "MBanking");
    TextDrawLetterSize(APKNAME[4], 0.170, 0.898);
    TextDrawAlignment(APKNAME[4], 2);
    TextDrawColor(APKNAME[4], -1);
    TextDrawSetShadow(APKNAME[4], 0);
    TextDrawSetOutline(APKNAME[4], 0);
    TextDrawBackgroundColor(APKNAME[4], 150);
    TextDrawFont(APKNAME[4], 1);
    TextDrawSetProportional(APKNAME[4], 1);

    APKNAME[5] = TextDrawCreate(537.000, 279.000, "Twitter");
    TextDrawLetterSize(APKNAME[5], 0.170, 0.898);
    TextDrawAlignment(APKNAME[5], 2);
    TextDrawColor(APKNAME[5], -1);
    TextDrawSetShadow(APKNAME[5], 0);
    TextDrawSetOutline(APKNAME[5], 0);
    TextDrawBackgroundColor(APKNAME[5], 150);
    TextDrawFont(APKNAME[5], 1);
    TextDrawSetProportional(APKNAME[5], 1);

    APKNAME[6] = TextDrawCreate(479.000, 322.000, "Darkweb");
    TextDrawLetterSize(APKNAME[6], 0.170, 0.898);
    TextDrawAlignment(APKNAME[6], 2);
    TextDrawColor(APKNAME[6], -1);
    TextDrawSetShadow(APKNAME[6], 0);
    TextDrawSetOutline(APKNAME[6], 0);
    TextDrawBackgroundColor(APKNAME[6], 150);
    TextDrawFont(APKNAME[6], 1);
    TextDrawSetProportional(APKNAME[6], 1);

    APKNAME[7] = TextDrawCreate(508.000, 322.000, "Playstore");
    TextDrawLetterSize(APKNAME[7], 0.170, 0.898);
    TextDrawAlignment(APKNAME[7], 2);
    TextDrawColor(APKNAME[7], -1);
    TextDrawSetShadow(APKNAME[7], 0);
    TextDrawSetOutline(APKNAME[7], 0);
    TextDrawBackgroundColor(APKNAME[7], 150);
    TextDrawFont(APKNAME[7], 1);
    TextDrawSetProportional(APKNAME[7], 1);

    APKNAME[8] = TextDrawCreate(508.000, 409.000, "Spotify");
    TextDrawLetterSize(APKNAME[8], 0.170, 0.898);
    TextDrawAlignment(APKNAME[8], 2);
    TextDrawColor(APKNAME[8], -1);
    TextDrawSetShadow(APKNAME[8], 0);
    TextDrawSetOutline(APKNAME[8], 0);
    TextDrawBackgroundColor(APKNAME[8], 150);
    TextDrawFont(APKNAME[8], 1);
    TextDrawSetProportional(APKNAME[8], 1);

    APKNAME[9] = TextDrawCreate(479.000, 409.000, "Call");
    TextDrawLetterSize(APKNAME[9], 0.170, 0.898);
    TextDrawAlignment(APKNAME[9], 2);
    TextDrawColor(APKNAME[9], -1);
    TextDrawSetShadow(APKNAME[9], 0);
    TextDrawSetOutline(APKNAME[9], 0);
    TextDrawBackgroundColor(APKNAME[9], 150);
    TextDrawFont(APKNAME[9], 1);
    TextDrawSetProportional(APKNAME[9], 1);

    APKNAME[10] = TextDrawCreate(537.000, 409.000, "Setting");
    TextDrawLetterSize(APKNAME[10], 0.170, 0.898);
    TextDrawAlignment(APKNAME[10], 2);
    TextDrawColor(APKNAME[10], -1);
    TextDrawSetShadow(APKNAME[10], 0);
    TextDrawSetOutline(APKNAME[10], 0);
    TextDrawBackgroundColor(APKNAME[10], 150);
    TextDrawFont(APKNAME[10], 1);
    TextDrawSetProportional(APKNAME[10], 1);

    APKNAME[11] = TextDrawCreate(537.000, 322.000, "Sharelock");
    TextDrawLetterSize(APKNAME[11], 0.170, 0.898);
    TextDrawAlignment(APKNAME[11], 2);
    TextDrawColor(APKNAME[11], -1);
    TextDrawSetShadow(APKNAME[11], 0);
    TextDrawSetOutline(APKNAME[11], 0);
    TextDrawBackgroundColor(APKNAME[11], 150);
    TextDrawFont(APKNAME[11], 1);
    TextDrawSetProportional(APKNAME[11], 1);

    APKNAME[12] = TextDrawCreate(479.000, 366.000, "Kamera");
    TextDrawLetterSize(APKNAME[12], 0.170, 0.898);
    TextDrawAlignment(APKNAME[12], 2);
    TextDrawColor(APKNAME[12], -1);
    TextDrawSetShadow(APKNAME[12], 0);
    TextDrawSetOutline(APKNAME[12], 0);
    TextDrawBackgroundColor(APKNAME[12], 150);
    TextDrawFont(APKNAME[12], 1);
    TextDrawSetProportional(APKNAME[12], 1);

    JAMLOCKSCREEN = TextDrawCreate(485.000, 218.000, "00:00");
    TextDrawLetterSize(JAMLOCKSCREEN, 0.439, 3.599);
    TextDrawAlignment(JAMLOCKSCREEN, 1);
    TextDrawColor(JAMLOCKSCREEN, -1);
    TextDrawSetShadow(JAMLOCKSCREEN, 0);
    TextDrawSetOutline(JAMLOCKSCREEN, 0);
    TextDrawBackgroundColor(JAMLOCKSCREEN, 150);
    TextDrawFont(JAMLOCKSCREEN, 2);
    TextDrawSetProportional(JAMLOCKSCREEN, 1);

    TANGGAL = TextDrawCreate(509.000, 246.000, "7 Februari 2023");
    TextDrawLetterSize(TANGGAL, 0.150, 1.299);
    TextDrawAlignment(TANGGAL, 2);
    TextDrawColor(TANGGAL, -1);
    TextDrawSetShadow(TANGGAL, 0);
    TextDrawSetOutline(TANGGAL, 0);
    TextDrawBackgroundColor(TANGGAL, 150);
    TextDrawFont(TANGGAL, 1);
    TextDrawSetProportional(TANGGAL, 1);

    FINGERPRINT = TextDrawCreate(497.000, 365.000, "LD_BEAT:chit");
    TextDrawTextSize(FINGERPRINT, 25.000, 35.000);
    TextDrawAlignment(FINGERPRINT, 1);
    TextDrawColor(FINGERPRINT, -1);
    TextDrawSetShadow(FINGERPRINT, 0);
    TextDrawSetOutline(FINGERPRINT, 0);
    TextDrawBackgroundColor(FINGERPRINT, 255);
    TextDrawFont(FINGERPRINT, 4);
    TextDrawSetProportional(FINGERPRINT, 1);
    TextDrawSetSelectable(FINGERPRINT, 1);

    GPS = TextDrawCreate(469.000, 212.000, "LD_DUAL:white");
    TextDrawTextSize(GPS, 20.000, 25.000);
    TextDrawAlignment(GPS, 1);
    TextDrawColor(GPS, -1);
    TextDrawSetShadow(GPS, 0);
    TextDrawSetOutline(GPS, 0);
    TextDrawBackgroundColor(GPS, 255);
    TextDrawFont(GPS, 4);
    TextDrawSetProportional(GPS, 1);
    TextDrawSetSelectable(GPS, 1);

    KONTAK = TextDrawCreate(498.000, 212.000, "LD_DUAL:white");
    TextDrawTextSize(KONTAK, 20.000, 25.000);
    TextDrawAlignment(KONTAK, 1);
    TextDrawColor(KONTAK, -1);
    TextDrawSetShadow(KONTAK, 0);
    TextDrawSetOutline(KONTAK, 0);
    TextDrawBackgroundColor(KONTAK, 255);
    TextDrawFont(KONTAK, 4);
    TextDrawSetProportional(KONTAK, 1);
    TextDrawSetSelectable(KONTAK, 1);

    AIRDROP = TextDrawCreate(527.000, 212.000, "LD_DUAL:white");
    TextDrawTextSize(AIRDROP, 20.000, 25.000);
    TextDrawAlignment(AIRDROP, 1);
    TextDrawColor(AIRDROP, -1);
    TextDrawSetShadow(AIRDROP, 0);
    TextDrawSetOutline(AIRDROP, 0);
    TextDrawBackgroundColor(AIRDROP, 255);
    TextDrawFont(AIRDROP, 4);
    TextDrawSetProportional(AIRDROP, 1);
    TextDrawSetSelectable(AIRDROP, 1);

    GOJEK = TextDrawCreate(469.000, 255.000, "LD_DUAL:white");
    TextDrawTextSize(GOJEK, 20.000, 25.000);
    TextDrawAlignment(GOJEK, 1);
    TextDrawColor(GOJEK, -1);
    TextDrawSetShadow(GOJEK, 0);
    TextDrawSetOutline(GOJEK, 0);
    TextDrawBackgroundColor(GOJEK, 255);
    TextDrawFont(GOJEK, 4);
    TextDrawSetProportional(GOJEK, 1);
    TextDrawSetSelectable(GOJEK, 1);

    MBANKING = TextDrawCreate(498.000, 255.000, "LD_DUAL:white");
    TextDrawTextSize(MBANKING, 20.000, 25.000);
    TextDrawAlignment(MBANKING, 1);
    TextDrawColor(MBANKING, -1);
    TextDrawSetShadow(MBANKING, 0);
    TextDrawSetOutline(MBANKING, 0);
    TextDrawBackgroundColor(MBANKING, 255);
    TextDrawFont(MBANKING, 4);
    TextDrawSetProportional(MBANKING, 1);
    TextDrawSetSelectable(MBANKING, 1);

    TWITTER = TextDrawCreate(527.000, 255.000, "LD_DUAL:white");
    TextDrawTextSize(TWITTER, 20.000, 25.000);
    TextDrawAlignment(TWITTER, 1);
    TextDrawColor(TWITTER, -1);
    TextDrawSetShadow(TWITTER, 0);
    TextDrawSetOutline(TWITTER, 0);
    TextDrawBackgroundColor(TWITTER, 255);
    TextDrawFont(TWITTER, 4);
    TextDrawSetProportional(TWITTER, 1);
    TextDrawSetSelectable(TWITTER, 1);

    DARKWEB = TextDrawCreate(469.000, 298.000, "LD_DUAL:white");
    TextDrawTextSize(DARKWEB, 20.000, 25.000);
    TextDrawAlignment(DARKWEB, 1);
    TextDrawColor(DARKWEB, -1);
    TextDrawSetShadow(DARKWEB, 0);
    TextDrawSetOutline(DARKWEB, 0);
    TextDrawBackgroundColor(DARKWEB, 255);
    TextDrawFont(DARKWEB, 4);
    TextDrawSetProportional(DARKWEB, 1);
    TextDrawSetSelectable(DARKWEB, 1);

    PLAYSTORE = TextDrawCreate(498.000, 298.000, "LD_DUAL:white");
    TextDrawTextSize(PLAYSTORE, 20.000, 25.000);
    TextDrawAlignment(PLAYSTORE, 1);
    TextDrawColor(PLAYSTORE, -1);
    TextDrawSetShadow(PLAYSTORE, 0);
    TextDrawSetOutline(PLAYSTORE, 0);
    TextDrawBackgroundColor(PLAYSTORE, 255);
    TextDrawFont(PLAYSTORE, 4);
    TextDrawSetProportional(PLAYSTORE, 1);
    TextDrawSetSelectable(PLAYSTORE, 1);

    CALL = TextDrawCreate(469.000, 385.000, "LD_DUAL:white");
    TextDrawTextSize(CALL, 20.000, 25.000);
    TextDrawAlignment(CALL, 1);
    TextDrawColor(CALL, -1);
    TextDrawSetShadow(CALL, 0);
    TextDrawSetOutline(CALL, 0);
    TextDrawBackgroundColor(CALL, 255);
    TextDrawFont(CALL, 4);
    TextDrawSetProportional(CALL, 1);
    TextDrawSetSelectable(CALL, 1);

    MUSIC = TextDrawCreate(498.000, 385.000, "LD_DUAL:white");
    TextDrawTextSize(MUSIC, 20.000, 25.000);
    TextDrawAlignment(MUSIC, 1);
    TextDrawColor(MUSIC, -1);
    TextDrawSetShadow(MUSIC, 0);
    TextDrawSetOutline(MUSIC, 0);
    TextDrawBackgroundColor(MUSIC, 255);
    TextDrawFont(MUSIC, 4);
    TextDrawSetProportional(MUSIC, 1);
    TextDrawSetSelectable(MUSIC, 1);

    SETTINGS = TextDrawCreate(527.000, 385.000, "LD_DUAL:white");
    TextDrawTextSize(SETTINGS, 20.000, 25.000);
    TextDrawAlignment(SETTINGS, 1);
    TextDrawColor(SETTINGS, -1);
    TextDrawSetShadow(SETTINGS, 0);
    TextDrawSetOutline(SETTINGS, 0);
    TextDrawBackgroundColor(SETTINGS, 255);
    TextDrawFont(SETTINGS, 4);
    TextDrawSetProportional(SETTINGS, 1);
    TextDrawSetSelectable(SETTINGS, 1);

    WHATSAPP = TextDrawCreate(527.000, 298.000, "LD_DUAL:white");
    TextDrawTextSize(WHATSAPP, 20.000, 25.000);
    TextDrawAlignment(WHATSAPP, 1);
    TextDrawColor(WHATSAPP, -1);
    TextDrawSetShadow(WHATSAPP, 0);
    TextDrawSetOutline(WHATSAPP, 0);
    TextDrawBackgroundColor(WHATSAPP, 255);
    TextDrawFont(WHATSAPP, 4);
    TextDrawSetProportional(WHATSAPP, 1);
    TextDrawSetSelectable(WHATSAPP, 1);

    KAMERA = TextDrawCreate(469.000, 342.000, "LD_DUAL:white");
    TextDrawTextSize(KAMERA, 20.000, 25.000);
    TextDrawAlignment(KAMERA, 1);
    TextDrawColor(KAMERA, -1);
    TextDrawSetShadow(KAMERA, 0);
    TextDrawSetOutline(KAMERA, 0);
    TextDrawBackgroundColor(KAMERA, 255);
    TextDrawFont(KAMERA, 4);
    TextDrawSetProportional(KAMERA, 1);
    TextDrawSetSelectable(KAMERA, 1);   

    //td jngn dhpus dan hrus taro pling atas
    TweetTD[0] = TextDrawCreate(500.000000, 269.000000, "    ");
    TextDrawFont(TweetTD[0], 1);
    TextDrawLetterSize(TweetTD[0], 0.349999, 0.1000);
    TextDrawTextSize(TweetTD[0], 585.500000, 169.500000);
    TextDrawSetOutline(TweetTD[0], 0);
    TextDrawSetShadow(TweetTD[0], 0);
    TextDrawAlignment(TweetTD[0], 0);
    TextDrawColor(TweetTD[0], 16777215);
    TextDrawBackgroundColor(TweetTD[0], 0);
    TextDrawBoxColor(TweetTD[0], 0);
    TextDrawUseBox(TweetTD[0], 1);
    TextDrawSetProportional(TweetTD[0], 1);
    TextDrawSetSelectable(TweetTD[0], 0);
        //stts
    txtStats = TextDrawCreate(142.500000,362.500000," ");
    TextDrawAlignment(txtStats,0);
    TextDrawBackgroundColor(txtStats,0x000000FF);
    TextDrawFont(txtStats,1);
    TextDrawLetterSize(txtStats,0.199999,1.000000);
    TextDrawColor(txtStats,0xffffffFF);
    TextDrawSetOutline(txtStats,1);
    TextDrawSetProportional(txtStats,1);
    TextDrawSetShadow(txtStats,1);
            //GiveDamage TakeDamage
    GiveDamage = TextDrawCreate(171.000000, 388.000000, " ");
    TextDrawAlignment(GiveDamage, 2);
    TextDrawBackgroundColor(GiveDamage, 255);
    TextDrawFont(GiveDamage, 2);
    TextDrawLetterSize(GiveDamage, 0.160000, 0.599999);
    TextDrawColor(GiveDamage, 0x00FF04FF);
    TextDrawSetOutline(GiveDamage, 1);
    TextDrawSetProportional(GiveDamage, 1);

    TakeDamage = TextDrawCreate(440.000000,388.000000, " ");
    TextDrawAlignment(TakeDamage, 2);
    TextDrawBackgroundColor(TakeDamage, 255);
    TextDrawFont(TakeDamage, 2);
    TextDrawLetterSize(TakeDamage, 0.160000, 0.599999);
    TextDrawColor(TakeDamage, 0xE81010FF);
    TextDrawSetOutline(TakeDamage, 1);
    TextDrawSetProportional(TakeDamage, 1);
        //
    CrateTD[5] = TextDrawCreate(234.333313, 183.362961, "box");
    TextDrawLetterSize(CrateTD[5], 0.000000, 13.533330);
    TextDrawTextSize(CrateTD[5], 371.000000, 0.000000);
    TextDrawAlignment(CrateTD[5], 1);
    TextDrawColor(CrateTD[5], 0xFFFFFFFF);
    TextDrawUseBox(CrateTD[5], 1);
    TextDrawBoxColor(CrateTD[5], 0x0000005D);
    TextDrawSetShadow(CrateTD[5], 0);
    TextDrawSetOutline(CrateTD[5], 0);
    TextDrawBackgroundColor(CrateTD[5], 0x000000FF);
    TextDrawFont(CrateTD[5], 1);
    TextDrawSetProportional(CrateTD[5], 1);
    TextDrawSetSelectable(CrateTD[5], 0);

    CrateTD[4] = TextDrawCreate(234.333328, 164.266617, "box");
    TextDrawLetterSize(CrateTD[4], 0.000000, 1.666666);
    TextDrawTextSize(CrateTD[4], 371.000000, 0.000000);
    TextDrawAlignment(CrateTD[4], 1);
    TextDrawColor(CrateTD[4], 0xFFFFFFFF);
    TextDrawUseBox(CrateTD[4], 1);
    TextDrawBoxColor(CrateTD[4], 0x000000FE);
    TextDrawSetShadow(CrateTD[4], 0);
    TextDrawSetOutline(CrateTD[4], 0);
    TextDrawBackgroundColor(CrateTD[4], 0x000000FF);
    TextDrawFont(CrateTD[4], 1);
    TextDrawSetProportional(CrateTD[4], 1);
    TextDrawSetSelectable(CrateTD[4], 0);

    CrateTD[3] = TextDrawCreate(303.000000, 163.466629, "Crate System");
    TextDrawLetterSize(CrateTD[3], 0.400000, 1.600000);
    TextDrawTextSize(CrateTD[3], 1280.000000, 1280.000000);
    TextDrawAlignment(CrateTD[3], 2);
    TextDrawColor(CrateTD[3], 0xFFFFFFFF);
    TextDrawUseBox(CrateTD[3], 0);
    TextDrawBoxColor(CrateTD[3], 0x80808080);
    TextDrawSetShadow(CrateTD[3], 0);
    TextDrawSetOutline(CrateTD[3], 1);
    TextDrawBackgroundColor(CrateTD[3], 0x000000FF);
    TextDrawFont(CrateTD[3], 3);
    TextDrawSetProportional(CrateTD[3], 1);
    TextDrawSetSelectable(CrateTD[3], 0);

    CrateTD[2] = TextDrawCreate(302.400146, 309.348358, "Open Crate");
    TextDrawLetterSize(CrateTD[2], 0.280000, 1.475556);
    TextDrawTextSize(CrateTD[2], 10.000000, 136.730698);
    TextDrawAlignment(CrateTD[2], 2);
    TextDrawColor(CrateTD[2], 0xFFFFFFFF);
    TextDrawUseBox(CrateTD[2], 1);
    TextDrawBoxColor(CrateTD[2], 0x00FF001C);
    TextDrawSetShadow(CrateTD[2], 0);
    TextDrawSetOutline(CrateTD[2], 1);
    TextDrawBackgroundColor(CrateTD[2], 0x0000007A);
    TextDrawFont(CrateTD[2], 2);
    TextDrawSetProportional(CrateTD[2], 1);
    TextDrawSetSelectable(CrateTD[2], 1);

    CrateTD[1] = TextDrawCreate(302.466766, 343.450439, "Cancel");
    TextDrawLetterSize(CrateTD[1], 0.280000, 1.475556);
    TextDrawTextSize(CrateTD[1], 10.000000, 136.730698);
    TextDrawAlignment(CrateTD[1], 2);
    TextDrawColor(CrateTD[1], 0xFFFFFFFF);
    TextDrawUseBox(CrateTD[1], 1);
    TextDrawBoxColor(CrateTD[1], 0xFF000024);
    TextDrawSetShadow(CrateTD[1], 0);
    TextDrawSetOutline(CrateTD[1], 1);
    TextDrawBackgroundColor(CrateTD[1], 0x0000007A);
    TextDrawFont(CrateTD[1], 2);
    TextDrawSetProportional(CrateTD[1], 1);
    TextDrawSetSelectable(CrateTD[1], 1);

    CrateTD[0] = TextDrawCreate(302.466766, 326.449402, "Try for free");
    TextDrawLetterSize(CrateTD[0], 0.280000, 1.475556);
    TextDrawTextSize(CrateTD[0], 10.000000, 136.730698);
    TextDrawAlignment(CrateTD[0], 2);
    TextDrawColor(CrateTD[0], 0xFFFFFFFF);
    TextDrawUseBox(CrateTD[0], 1);
    TextDrawBoxColor(CrateTD[0], 0xADD8E619);
    TextDrawSetShadow(CrateTD[0], 0);
    TextDrawSetOutline(CrateTD[0], 1);
    TextDrawBackgroundColor(CrateTD[0], 0x0000007A);
    TextDrawFont(CrateTD[0], 2);
    TextDrawSetProportional(CrateTD[0], 1);
    TextDrawSetSelectable(CrateTD[0], 1);

    //Kasino
    for(new i, z = MAX_BONE_TABLES; i < z; i++)
    {
        bones_table_td[i][0] = TextDrawCreate(7.1769, 209.4649, "BET:_0$"); // ?????
        TextDrawLetterSize(bones_table_td[i][0], 0.2477, 1.3707);
        TextDrawAlignment(bones_table_td[i][0], 1);
        TextDrawColor(bones_table_td[i][0], -1271791617);
        TextDrawBackgroundColor(bones_table_td[i][0], -2144370623);
        TextDrawFont(bones_table_td[i][0], 1);
        TextDrawSetProportional(bones_table_td[i][0], 1);
        TextDrawSetShadow(bones_table_td[i][0], 1);

        bones_table_td[i][1] = TextDrawCreate(6.9345, 220.0489, "PLAYERS:_0/4"); // ?????
        TextDrawLetterSize(bones_table_td[i][1], 0.2105, 1.3664);
        TextDrawTextSize(bones_table_td[i][1], 1.0000, 0.0000);
        TextDrawAlignment(bones_table_td[i][1], 1);
        TextDrawColor(bones_table_td[i][1], -1271791617);
        TextDrawBackgroundColor(bones_table_td[i][1], -2144370623);
        TextDrawFont(bones_table_td[i][1], 1);
        TextDrawSetProportional(bones_table_td[i][1], 1);
        TextDrawSetShadow(bones_table_td[i][1], 1);
    }

    bones_global_td[0] = TextDrawCreate(5.4397, 187.8377, "Box"); // ?????
    TextDrawLetterSize(bones_global_td[0], 0.0000, 7.8110);
    TextDrawTextSize(bones_global_td[0], 128.0000, 0.0000);
    TextDrawAlignment(bones_global_td[0], 1);
    TextDrawColor(bones_global_td[0], -1);
    TextDrawUseBox(bones_global_td[0], 1);
    TextDrawBoxColor(bones_global_td[0], 81);
    TextDrawBackgroundColor(bones_global_td[0], 255);
    TextDrawFont(bones_global_td[0], 1);
    TextDrawSetProportional(bones_global_td[0], 1);
    TextDrawSetShadow(bones_global_td[0], 0);

    bones_global_td[1] = TextDrawCreate(5.7871, 205.7574, "Box"); // ?????
    TextDrawLetterSize(bones_global_td[1], 0.0000, -0.1454);
    TextDrawTextSize(bones_global_td[1], 128.0000, 0.0000);
    TextDrawAlignment(bones_global_td[1], 1);
    TextDrawColor(bones_global_td[1], -1);
    TextDrawUseBox(bones_global_td[1], 1);
    TextDrawBoxColor(bones_global_td[1], 437918463);
    TextDrawBackgroundColor(bones_global_td[1], 255);
    TextDrawFont(bones_global_td[1], 1);
    TextDrawSetProportional(bones_global_td[1], 1);
    TextDrawSetShadow(bones_global_td[1], 0);

    bones_global_td[2] = TextDrawCreate(49.2182, 187.4053, "CASINO"); // ?????
    TextDrawLetterSize(bones_global_td[2], 0.2692, 1.3923);
    TextDrawAlignment(bones_global_td[2], 1);
    TextDrawColor(bones_global_td[2], -1271791617);
    TextDrawBackgroundColor(bones_global_td[2], -2144370623);
    TextDrawFont(bones_global_td[2], 1);
    TextDrawSetProportional(bones_global_td[2], 1);
    TextDrawSetShadow(bones_global_td[2], 1);

    bones_global_td[3] = TextDrawCreate(104.7948, 241.8622, "EXIT"); // ?????
    TextDrawLetterSize(bones_global_td[3], 0.2863, 1.3102);
    TextDrawTextSize(bones_global_td[3], 10.0000, 40.0000);
    TextDrawAlignment(bones_global_td[3], 2);
    TextDrawColor(bones_global_td[3], -1271791617);
    TextDrawUseBox(bones_global_td[3], 1);
    TextDrawBoxColor(bones_global_td[3], 0);
    TextDrawBackgroundColor(bones_global_td[3], -2144370623);
    TextDrawFont(bones_global_td[3], 1);
    TextDrawSetProportional(bones_global_td[3], 1);
    TextDrawSetShadow(bones_global_td[3], 1);
    TextDrawSetSelectable(bones_global_td[3], true);

    bones_global_td[4] = TextDrawCreate(24.7318, 241.5973, "BET"); // ?????
    TextDrawLetterSize(bones_global_td[4], 0.2863, 1.3102);
    TextDrawTextSize(bones_global_td[4], 10.0000, 40.0000);
    TextDrawAlignment(bones_global_td[4], 2);
    TextDrawColor(bones_global_td[4], -1271791617);
    TextDrawUseBox(bones_global_td[4], 1);
    TextDrawBoxColor(bones_global_td[4], 0);
    TextDrawBackgroundColor(bones_global_td[4], -2144370623);
    TextDrawFont(bones_global_td[4], 1);
    TextDrawSetProportional(bones_global_td[4], 1);
    TextDrawSetShadow(bones_global_td[4], 1);
    TextDrawSetSelectable(bones_global_td[4], true);

    bones_global_td[5] = TextDrawCreate(5.8448, 237.7630, "Box"); // ?????
    TextDrawLetterSize(bones_global_td[5], 0.0000, -0.1801);
    TextDrawTextSize(bones_global_td[5], 128.0000, 0.0000);
    TextDrawAlignment(bones_global_td[5], 1);
    TextDrawColor(bones_global_td[5], -1);
    TextDrawUseBox(bones_global_td[5], 1);
    TextDrawBoxColor(bones_global_td[5], 437918463);
    TextDrawBackgroundColor(bones_global_td[5], 255);
    TextDrawFont(bones_global_td[5], 1);
    TextDrawSetProportional(bones_global_td[5], 1);
    TextDrawSetShadow(bones_global_td[5], 0);

    bones_global_td[6] = TextDrawCreate(62.6803, 242.0298, "DICE"); // ?????
    TextDrawLetterSize(bones_global_td[6], 0.2863, 1.3102);
    TextDrawTextSize(bones_global_td[6], 10.0000, 40.0000);
    TextDrawAlignment(bones_global_td[6], 2);
    TextDrawColor(bones_global_td[6], -1271791617);
    TextDrawUseBox(bones_global_td[6], 1);
    TextDrawBoxColor(bones_global_td[6], 0);
    TextDrawBackgroundColor(bones_global_td[6], -2144370623);
    TextDrawFont(bones_global_td[6], 1);
    TextDrawSetProportional(bones_global_td[6], 1);
    TextDrawSetShadow(bones_global_td[6], 1);
    TextDrawSetSelectable(bones_global_td[6], true);

    //Tuning

    tune_global_td[0] = TextDrawCreate(227.8067, 79.9686, "AIR_INTAKE"); // kosong
    TextDrawLetterSize(tune_global_td[0], 0.2685, 1.3317);
    TextDrawTextSize(tune_global_td[0], 0.0000, 84.0000);
    TextDrawAlignment(tune_global_td[0], 2);
    TextDrawColor(tune_global_td[0], -1);
    TextDrawUseBox(tune_global_td[0], 1);
    TextDrawBoxColor(tune_global_td[0], 73);
    TextDrawBackgroundColor(tune_global_td[0], 255);
    TextDrawFont(tune_global_td[0], 1);
    TextDrawSetProportional(tune_global_td[0], 1);
    TextDrawSetShadow(tune_global_td[0], 0);
    TextDrawSetSelectable(tune_global_td[0], true);

    tune_global_td[1] = TextDrawCreate(317.1011, 79.9685, "SPOILER"); // kosong
    TextDrawLetterSize(tune_global_td[1], 0.2685, 1.3317);
    TextDrawTextSize(tune_global_td[1], 0.0000, 84.0000);
    TextDrawAlignment(tune_global_td[1], 2);
    TextDrawColor(tune_global_td[1], -1);
    TextDrawUseBox(tune_global_td[1], 1);
    TextDrawBoxColor(tune_global_td[1], 73);
    TextDrawBackgroundColor(tune_global_td[1], 255);
    TextDrawFont(tune_global_td[1], 1);
    TextDrawSetProportional(tune_global_td[1], 1);
    TextDrawSetShadow(tune_global_td[1], 0);
    TextDrawSetSelectable(tune_global_td[1], true);

    tune_global_td[2] = TextDrawCreate(406.3581, 79.9685, "MUFFLER"); // kosong
    TextDrawLetterSize(tune_global_td[2], 0.2685, 1.3317);
    TextDrawTextSize(tune_global_td[2], 0.0000, 84.0000);
    TextDrawAlignment(tune_global_td[2], 2);
    TextDrawColor(tune_global_td[2], -1);
    TextDrawUseBox(tune_global_td[2], 1);
    TextDrawBoxColor(tune_global_td[2], 73);
    TextDrawBackgroundColor(tune_global_td[2], 255);
    TextDrawFont(tune_global_td[2], 1);
    TextDrawSetProportional(tune_global_td[2], 1);
    TextDrawSetShadow(tune_global_td[2], 0);
    TextDrawSetSelectable(tune_global_td[2], true);

    tune_global_td[3] = TextDrawCreate(227.8067, 61.5675, "FRONT_BUMBER"); // kosong
    TextDrawLetterSize(tune_global_td[3], 0.2685, 1.3317);
    TextDrawTextSize(tune_global_td[3], 0.0000, 84.0000);
    TextDrawAlignment(tune_global_td[3], 2);
    TextDrawColor(tune_global_td[3], -1);
    TextDrawUseBox(tune_global_td[3], 1);
    TextDrawBoxColor(tune_global_td[3], 73);
    TextDrawBackgroundColor(tune_global_td[3], 255);
    TextDrawFont(tune_global_td[3], 1);
    TextDrawSetProportional(tune_global_td[3], 1);
    TextDrawSetShadow(tune_global_td[3], 0);
    TextDrawSetSelectable(tune_global_td[3], true);

    tune_global_td[4] = TextDrawCreate(317.1011, 61.5675, "REAR_BUMBER"); // kosong
    TextDrawLetterSize(tune_global_td[4], 0.2685, 1.3317);
    TextDrawTextSize(tune_global_td[4], 0.0000, 84.0000);
    TextDrawAlignment(tune_global_td[4], 2);
    TextDrawColor(tune_global_td[4], -1);
    TextDrawUseBox(tune_global_td[4], 1);
    TextDrawBoxColor(tune_global_td[4], 73);
    TextDrawBackgroundColor(tune_global_td[4], 255);
    TextDrawFont(tune_global_td[4], 1);
    TextDrawSetProportional(tune_global_td[4], 1);
    TextDrawSetShadow(tune_global_td[4], 0);
    TextDrawSetSelectable(tune_global_td[4], true);

    tune_global_td[5] = TextDrawCreate(406.3581, 61.5675, "SIDE_SKIRTS"); // kosong
    TextDrawLetterSize(tune_global_td[5], 0.2685, 1.3317);
    TextDrawTextSize(tune_global_td[5], 0.0000, 84.0000);
    TextDrawAlignment(tune_global_td[5], 2);
    TextDrawColor(tune_global_td[5], -1);
    TextDrawUseBox(tune_global_td[5], 1);
    TextDrawBoxColor(tune_global_td[5], 73);
    TextDrawBackgroundColor(tune_global_td[5], 255);
    TextDrawFont(tune_global_td[5], 1);
    TextDrawSetProportional(tune_global_td[5], 1);
    TextDrawSetShadow(tune_global_td[5], 0);
    TextDrawSetSelectable(tune_global_td[5], true);

    tune_global_td[6] = TextDrawCreate(185.8603, 77.5999, "Box"); // kosong
    TextDrawLetterSize(tune_global_td[6], 0.0000, -0.1988);
    TextDrawTextSize(tune_global_td[6], 449.0000, 0.0000);
    TextDrawAlignment(tune_global_td[6], 1);
    TextDrawColor(tune_global_td[6], -1);
    TextDrawUseBox(tune_global_td[6], 1);
    TextDrawBoxColor(tune_global_td[6], 255);
    TextDrawBackgroundColor(tune_global_td[6], 255);
    TextDrawFont(tune_global_td[6], 1);
    TextDrawSetProportional(tune_global_td[6], 1);
    TextDrawSetShadow(tune_global_td[6], 0);

    tune_global_td[7] = TextDrawCreate(273.3226, 61.5999, "Box"); // kosong
    TextDrawLetterSize(tune_global_td[7], 0.0000, 3.3708);
    TextDrawTextSize(tune_global_td[7], 272.0000, 0.0000);
    TextDrawAlignment(tune_global_td[7], 1);
    TextDrawColor(tune_global_td[7], -1);
    TextDrawUseBox(tune_global_td[7], 1);
    TextDrawBoxColor(tune_global_td[7], 255);
    TextDrawBackgroundColor(tune_global_td[7], 255);
    TextDrawFont(tune_global_td[7], 1);
    TextDrawSetProportional(tune_global_td[7], 1);
    TextDrawSetShadow(tune_global_td[7], 0);

    tune_global_td[8] = TextDrawCreate(362.5220, 61.5323, "Box"); // kosong
    TextDrawLetterSize(tune_global_td[8], 0.0000, 3.3708);
    TextDrawTextSize(tune_global_td[8], 361.0000, 0.0000);
    TextDrawAlignment(tune_global_td[8], 1);
    TextDrawColor(tune_global_td[8], -1);
    TextDrawUseBox(tune_global_td[8], 1);
    TextDrawBoxColor(tune_global_td[8], 255);
    TextDrawBackgroundColor(tune_global_td[8], 255);
    TextDrawFont(tune_global_td[8], 1);
    TextDrawSetProportional(tune_global_td[8], 1);
    TextDrawSetShadow(tune_global_td[8], 0);

    //Perampokan

    rob_global_td[0] = TextDrawCreate(275.4071, 318.4323, "Box"); // ?????
    TextDrawLetterSize(rob_global_td[0], 0.0000, 1.8349);
    TextDrawTextSize(rob_global_td[0], 353.0000, 0.0000);
    TextDrawAlignment(rob_global_td[0], 1);
    TextDrawColor(rob_global_td[0], -1);
    TextDrawUseBox(rob_global_td[0], 1);
    TextDrawBoxColor(rob_global_td[0], 255);
    TextDrawBackgroundColor(rob_global_td[0], 255);
    TextDrawFont(rob_global_td[0], 1);
    TextDrawSetProportional(rob_global_td[0], 1);
    TextDrawSetShadow(rob_global_td[0], 0);

    rob_global_td[1] = TextDrawCreate(276.4494, 319.7296, "Box"); // ?????
    TextDrawLetterSize(rob_global_td[1], 0.0000, 1.5270);
    TextDrawTextSize(rob_global_td[1], 352.0000, 0.0000);
    TextDrawAlignment(rob_global_td[1], 1);
    TextDrawColor(rob_global_td[1], 1204715519);
    TextDrawUseBox(rob_global_td[1], 1);
    TextDrawBoxColor(rob_global_td[1], 1328835519);
    TextDrawBackgroundColor(rob_global_td[1], 255);
    TextDrawFont(rob_global_td[1], 1);
    TextDrawSetProportional(rob_global_td[1], 1);
    TextDrawSetShadow(rob_global_td[1], 0);

    //Graffiti

    graffiti_global_td[0] = TextDrawCreate(275.4071, 318.4323, "Box"); // ?????
    TextDrawLetterSize(graffiti_global_td[0], 0.0000, 1.8349);
    TextDrawTextSize(graffiti_global_td[0], 353.0000, 0.0000);
    TextDrawAlignment(graffiti_global_td[0], 1);
    TextDrawColor(graffiti_global_td[0], -1);
    TextDrawUseBox(graffiti_global_td[0], 1);
    TextDrawBoxColor(graffiti_global_td[0], 255);
    TextDrawBackgroundColor(graffiti_global_td[0], 255);
    TextDrawFont(graffiti_global_td[0], 1);
    TextDrawSetProportional(graffiti_global_td[0], 1);
    TextDrawSetShadow(graffiti_global_td[0], 0);

    graffiti_global_td[1] = TextDrawCreate(276.4494, 319.7296, "Box"); // ?????
    TextDrawLetterSize(graffiti_global_td[1], 0.0000, 1.5270);
    TextDrawTextSize(graffiti_global_td[1], 352.0000, 0.0000);
    TextDrawAlignment(graffiti_global_td[1], 1);
    TextDrawColor(graffiti_global_td[1], 1204715519);
    TextDrawUseBox(graffiti_global_td[1], 1);
    TextDrawBoxColor(graffiti_global_td[1], 1328835519);
    TextDrawBackgroundColor(graffiti_global_td[1], 255);
    TextDrawFont(graffiti_global_td[1], 1);
    TextDrawSetProportional(graffiti_global_td[1], 1);
    TextDrawSetShadow(graffiti_global_td[1], 0);

    //Memilih kulit

    skinTD[0] = TextDrawCreate(316.0585, 418.7568, "SELECT"); // ?????
    TextDrawLetterSize(skinTD[0], 0.2985, 1.6043);
    TextDrawTextSize(skinTD[0], 15.0000, 97.0000);
    TextDrawAlignment(skinTD[0], 2);
    TextDrawColor(skinTD[0], -1);
    TextDrawUseBox(skinTD[0], 1);
    TextDrawBoxColor(skinTD[0], 68);
    TextDrawBackgroundColor(skinTD[0], 255);
    TextDrawFont(skinTD[0], 1);
    TextDrawSetProportional(skinTD[0], 1);
    TextDrawSetShadow(skinTD[0], 0);
    TextDrawSetSelectable(skinTD[0], true);

    skinTD[1] = TextDrawCreate(288.7846, 398.8649, "NEXT"); // ?????
    TextDrawLetterSize(skinTD[1], 0.2985, 1.6043);
    TextDrawTextSize(skinTD[1], 15.0000, 42.0000);
    TextDrawAlignment(skinTD[1], 2);
    TextDrawColor(skinTD[1], -1);
    TextDrawUseBox(skinTD[1], 1);
    TextDrawBoxColor(skinTD[1], 68);
    TextDrawBackgroundColor(skinTD[1], 255);
    TextDrawFont(skinTD[1], 1);
    TextDrawSetProportional(skinTD[1], 1);
    TextDrawSetShadow(skinTD[1], 0);
    TextDrawSetSelectable(skinTD[1], true);

    skinTD[2] = TextDrawCreate(343.3071, 398.8325, "PREV"); // ?????
    TextDrawLetterSize(skinTD[2], 0.2985, 1.6043);
    TextDrawTextSize(skinTD[2], 15.0000, 42.0000);
    TextDrawAlignment(skinTD[2], 2);
    TextDrawColor(skinTD[2], -1);
    TextDrawUseBox(skinTD[2], 1);
    TextDrawBoxColor(skinTD[2], 68);
    TextDrawBackgroundColor(skinTD[2], 255);
    TextDrawFont(skinTD[2], 1);
    TextDrawSetProportional(skinTD[2], 1);
    TextDrawSetShadow(skinTD[2], 0);
    TextDrawSetSelectable(skinTD[2], true);

    //TOYS
    ToysTDBuy[0] = TextDrawCreate(318.000000, 89.000000, "_");
    TextDrawFont(ToysTDBuy[0], 1);
    TextDrawLetterSize(ToysTDBuy[0], 0.600000, 17.700002);
    TextDrawTextSize(ToysTDBuy[0], 298.500000, 200.000000);
    TextDrawSetOutline(ToysTDBuy[0], 1);
    TextDrawSetShadow(ToysTDBuy[0], 0);
    TextDrawAlignment(ToysTDBuy[0], 2);
    TextDrawColor(ToysTDBuy[0], -1);
    TextDrawBackgroundColor(ToysTDBuy[0], 255);
    TextDrawBoxColor(ToysTDBuy[0], 255);
    TextDrawUseBox(ToysTDBuy[0], 1);
    TextDrawSetProportional(ToysTDBuy[0], 1);
    TextDrawSetSelectable(ToysTDBuy[0], 0);

    ToysTDBuy[1] = TextDrawCreate(318.000000, 94.000000, "_");
    TextDrawFont(ToysTDBuy[1], 1);
    TextDrawLetterSize(ToysTDBuy[1], 0.600000, 16.450021);
    TextDrawTextSize(ToysTDBuy[1], 298.500000, 192.000000);
    TextDrawSetOutline(ToysTDBuy[1], 1);
    TextDrawSetShadow(ToysTDBuy[1], 0);
    TextDrawAlignment(ToysTDBuy[1], 2);
    TextDrawColor(ToysTDBuy[1], -1);
    TextDrawBackgroundColor(ToysTDBuy[1], 255);
    TextDrawBoxColor(ToysTDBuy[1], -1);
    TextDrawUseBox(ToysTDBuy[1], 1);
    TextDrawSetProportional(ToysTDBuy[1], 1);
    TextDrawSetSelectable(ToysTDBuy[1], 0);

    bt_next = TextDrawCreate(409.000000, 142.000000, "ld_pool:ball");
    TextDrawFont(bt_next, 4);
    TextDrawLetterSize(bt_next, 0.600000, 2.000000);
    TextDrawTextSize(bt_next, 48.500000, 58.000000);
    TextDrawSetOutline(bt_next, 1);
    TextDrawSetShadow(bt_next, 0);
    TextDrawAlignment(bt_next, 1);
    TextDrawColor(bt_next, 255);
    TextDrawBackgroundColor(bt_next, 255);
    TextDrawBoxColor(bt_next, 50);
    TextDrawUseBox(bt_next, 1);
    TextDrawSetProportional(bt_next, 1);
    TextDrawSetSelectable(bt_next, 1);

    bt_back = TextDrawCreate(178.000000, 142.000000, "ld_pool:ball");
    TextDrawFont(bt_back, 4);
    TextDrawLetterSize(bt_back, 0.600000, 2.000000);
    TextDrawTextSize(bt_back, 48.500000, 58.000000);
    TextDrawSetOutline(bt_back, 1);
    TextDrawSetShadow(bt_back, 0);
    TextDrawAlignment(bt_back, 1);
    TextDrawColor(bt_back, 255);
    TextDrawBackgroundColor(bt_back, 255);
    TextDrawBoxColor(bt_back, 50);
    TextDrawUseBox(bt_back, 1);
    TextDrawSetProportional(bt_back, 1);
    TextDrawSetSelectable(bt_back, 1);

    ToysTDBuy[2] = TextDrawCreate(422.000000, 148.000000, ">>");
    TextDrawFont(ToysTDBuy[2], 1);
    TextDrawLetterSize(ToysTDBuy[2], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[2], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[2], 1);
    TextDrawSetShadow(ToysTDBuy[2], 0);
    TextDrawAlignment(ToysTDBuy[2], 1);
    TextDrawColor(ToysTDBuy[2], -1);
    TextDrawBackgroundColor(ToysTDBuy[2], 255);
    TextDrawBoxColor(ToysTDBuy[2], 50);
    TextDrawUseBox(ToysTDBuy[2], 0);
    TextDrawSetProportional(ToysTDBuy[2], 1);
    TextDrawSetSelectable(ToysTDBuy[2], 0);

    ToysTDBuy[3] = TextDrawCreate(191.000000, 148.000000, "<<");
    TextDrawFont(ToysTDBuy[3], 1);
    TextDrawLetterSize(ToysTDBuy[3], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[3], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[3], 1);
    TextDrawSetShadow(ToysTDBuy[3], 0);
    TextDrawAlignment(ToysTDBuy[3], 1);
    TextDrawColor(ToysTDBuy[3], -1);
    TextDrawBackgroundColor(ToysTDBuy[3], 255);
    TextDrawBoxColor(ToysTDBuy[3], 50);
    TextDrawUseBox(ToysTDBuy[3], 0);
    TextDrawSetProportional(ToysTDBuy[3], 1);
    TextDrawSetSelectable(ToysTDBuy[3], 0);

    bt_rxp = TextDrawCreate(178.000000, 205.000000, "ld_pool:ball");
    TextDrawFont(bt_rxp, 4);
    TextDrawLetterSize(bt_rxp, 0.600000, 2.000000);
    TextDrawTextSize(bt_rxp, 48.500000, 58.000000);
    TextDrawSetOutline(bt_rxp, 1);
    TextDrawSetShadow(bt_rxp, 0);
    TextDrawAlignment(bt_rxp, 1);
    TextDrawColor(bt_rxp, 255);
    TextDrawBackgroundColor(bt_rxp, 255);
    TextDrawBoxColor(bt_rxp, 50);
    TextDrawUseBox(bt_rxp, 1);
    TextDrawSetProportional(bt_rxp, 1);
    TextDrawSetSelectable(bt_rxp, 1);

    bt_rxm = TextDrawCreate(178.000000, 270.000000, "ld_pool:ball");
    TextDrawFont(bt_rxm, 4);
    TextDrawLetterSize(bt_rxm, 0.600000, 2.000000);
    TextDrawTextSize(bt_rxm, 48.500000, 58.000000);
    TextDrawSetOutline(bt_rxm, 1);
    TextDrawSetShadow(bt_rxm, 0);
    TextDrawAlignment(bt_rxm, 1);
    TextDrawColor(bt_rxm, 255);
    TextDrawBackgroundColor(bt_rxm, 255);
    TextDrawBoxColor(bt_rxm, 50);
    TextDrawUseBox(bt_rxm, 1);
    TextDrawSetProportional(bt_rxm, 1);
    TextDrawSetSelectable(bt_rxm, 1);

    bt_ryp = TextDrawCreate(409.000000, 205.000000, "ld_pool:ball");
    TextDrawFont(bt_ryp, 4);
    TextDrawLetterSize(bt_ryp, 0.600000, 2.000000);
    TextDrawTextSize(bt_ryp, 48.500000, 58.000000);
    TextDrawSetOutline(bt_ryp, 1);
    TextDrawSetShadow(bt_ryp, 0);
    TextDrawAlignment(bt_ryp, 1);
    TextDrawColor(bt_ryp, 255);
    TextDrawBackgroundColor(bt_ryp, 255);
    TextDrawBoxColor(bt_ryp, 50);
    TextDrawUseBox(bt_ryp, 1);
    TextDrawSetProportional(bt_ryp, 1);
    TextDrawSetSelectable(bt_ryp, 1);

    bt_rym = TextDrawCreate(409.000000, 270.000000, "ld_pool:ball");
    TextDrawFont(bt_rym, 4);
    TextDrawLetterSize(bt_rym, 0.600000, 2.000000);
    TextDrawTextSize(bt_rym, 48.500000, 58.000000);
    TextDrawSetOutline(bt_rym, 1);
    TextDrawSetShadow(bt_rym, 0);
    TextDrawAlignment(bt_rym, 1);
    TextDrawColor(bt_rym, 255);
    TextDrawBackgroundColor(bt_rym, 255);
    TextDrawBoxColor(bt_rym, 50);
    TextDrawUseBox(bt_rym, 1);
    TextDrawSetProportional(bt_rym, 1);
    TextDrawSetSelectable(bt_rym, 1);

    ToysTDBuy[4] = TextDrawCreate(186.000000, 211.000000, "+RX");
    TextDrawFont(ToysTDBuy[4], 1);
    TextDrawLetterSize(ToysTDBuy[4], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[4], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[4], 1);
    TextDrawSetShadow(ToysTDBuy[4], 0);
    TextDrawAlignment(ToysTDBuy[4], 1);
    TextDrawColor(ToysTDBuy[4], -1);
    TextDrawBackgroundColor(ToysTDBuy[4], 255);
    TextDrawBoxColor(ToysTDBuy[4], 50);
    TextDrawUseBox(ToysTDBuy[4], 0);
    TextDrawSetProportional(ToysTDBuy[4], 1);
    TextDrawSetSelectable(ToysTDBuy[4], 0);

    ToysTDBuy[5] = TextDrawCreate(189.000000, 276.000000, "-RX");
    TextDrawFont(ToysTDBuy[5], 1);
    TextDrawLetterSize(ToysTDBuy[5], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[5], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[5], 1);
    TextDrawSetShadow(ToysTDBuy[5], 0);
    TextDrawAlignment(ToysTDBuy[5], 1);
    TextDrawColor(ToysTDBuy[5], -1);
    TextDrawBackgroundColor(ToysTDBuy[5], 255);
    TextDrawBoxColor(ToysTDBuy[5], 50);
    TextDrawUseBox(ToysTDBuy[5], 0);
    TextDrawSetProportional(ToysTDBuy[5], 1);
    TextDrawSetSelectable(ToysTDBuy[5], 0);

    ToysTDBuy[6] = TextDrawCreate(418.000000, 211.000000, "+RY");
    TextDrawFont(ToysTDBuy[6], 1);
    TextDrawLetterSize(ToysTDBuy[6], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[6], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[6], 1);
    TextDrawSetShadow(ToysTDBuy[6], 0);
    TextDrawAlignment(ToysTDBuy[6], 1);
    TextDrawColor(ToysTDBuy[6], -1);
    TextDrawBackgroundColor(ToysTDBuy[6], 255);
    TextDrawBoxColor(ToysTDBuy[6], 50);
    TextDrawUseBox(ToysTDBuy[6], 0);
    TextDrawSetProportional(ToysTDBuy[6], 1);
    TextDrawSetSelectable(ToysTDBuy[6], 0);

    ToysTDBuy[7] = TextDrawCreate(421.000000, 277.000000, "-RY");
    TextDrawFont(ToysTDBuy[7], 1);
    TextDrawLetterSize(ToysTDBuy[7], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[7], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[7], 1);
    TextDrawSetShadow(ToysTDBuy[7], 0);
    TextDrawAlignment(ToysTDBuy[7], 1);
    TextDrawColor(ToysTDBuy[7], -1);
    TextDrawBackgroundColor(ToysTDBuy[7], 255);
    TextDrawBoxColor(ToysTDBuy[7], 50);
    TextDrawUseBox(ToysTDBuy[7], 0);
    TextDrawSetProportional(ToysTDBuy[7], 1);
    TextDrawSetSelectable(ToysTDBuy[7], 0);

    bt_buy = TextDrawCreate(258.000000, 270.000000, "ld_pool:ball");
    TextDrawFont(bt_buy, 4);
    TextDrawLetterSize(bt_buy, 0.600000, 2.000000);
    TextDrawTextSize(bt_buy, 48.500000, 58.000000);
    TextDrawSetOutline(bt_buy, 1);
    TextDrawSetShadow(bt_buy, 0);
    TextDrawAlignment(bt_buy, 1);
    TextDrawColor(bt_buy, 255);
    TextDrawBackgroundColor(bt_buy, 255);
    TextDrawBoxColor(bt_buy, 50);
    TextDrawUseBox(bt_buy, 1);
    TextDrawSetProportional(bt_buy, 1);
    TextDrawSetSelectable(bt_buy, 1);

    ToysTDBuy[8] = TextDrawCreate(268.000000, 277.000000, "BUY");
    TextDrawFont(ToysTDBuy[8], 1);
    TextDrawLetterSize(ToysTDBuy[8], 0.474999, 4.650000);
    TextDrawTextSize(ToysTDBuy[8], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[8], 1);
    TextDrawSetShadow(ToysTDBuy[8], 0);
    TextDrawAlignment(ToysTDBuy[8], 1);
    TextDrawColor(ToysTDBuy[8], -1);
    TextDrawBackgroundColor(ToysTDBuy[8], 255);
    TextDrawBoxColor(ToysTDBuy[8], 50);
    TextDrawUseBox(ToysTDBuy[8], 0);
    TextDrawSetProportional(ToysTDBuy[8], 1);
    TextDrawSetSelectable(ToysTDBuy[8], 0);

    bt_exit = TextDrawCreate(328.000000, 270.000000, "ld_pool:ball");
    TextDrawFont(bt_exit, 4);
    TextDrawLetterSize(bt_exit, 0.600000, 2.000000);
    TextDrawTextSize(bt_exit, 48.500000, 58.000000);
    TextDrawSetOutline(bt_exit, 1);
    TextDrawSetShadow(bt_exit, 0);
    TextDrawAlignment(bt_exit, 1);
    TextDrawColor(bt_exit, 255);
    TextDrawBackgroundColor(bt_exit, 255);
    TextDrawBoxColor(bt_exit, 50);
    TextDrawUseBox(bt_exit, 1);
    TextDrawSetProportional(bt_exit, 1);
    TextDrawSetSelectable(bt_exit, 1);

    ToysTDBuy[9] = TextDrawCreate(337.000000, 277.000000, "EXIT");
    TextDrawFont(ToysTDBuy[9], 1);
    TextDrawLetterSize(ToysTDBuy[9], 0.424999, 4.449999);
    TextDrawTextSize(ToysTDBuy[9], 400.000000, 17.000000);
    TextDrawSetOutline(ToysTDBuy[9], 1);
    TextDrawSetShadow(ToysTDBuy[9], 0);
    TextDrawAlignment(ToysTDBuy[9], 1);
    TextDrawColor(ToysTDBuy[9], -1);
    TextDrawBackgroundColor(ToysTDBuy[9], 255);
    TextDrawBoxColor(ToysTDBuy[9], 50);
    TextDrawUseBox(ToysTDBuy[9], 0);
    TextDrawSetProportional(ToysTDBuy[9], 1);
    TextDrawSetSelectable(ToysTDBuy[9], 0);

    //Pasar otomatis

    autoshop_global_td[0] = TextDrawCreate(316.0058, 394.4739, "select"); // kosong
    TextDrawLetterSize(autoshop_global_td[0], 0.2152, 1.3443);
    TextDrawTextSize(autoshop_global_td[0], 0.0000, 75.0000);
    TextDrawAlignment(autoshop_global_td[0], 2);
    TextDrawColor(autoshop_global_td[0], -1);
    TextDrawUseBox(autoshop_global_td[0], 1);
    TextDrawBoxColor(autoshop_global_td[0], 437918463);
    TextDrawBackgroundColor(autoshop_global_td[0], 255);
    TextDrawFont(autoshop_global_td[0], 2);
    TextDrawSetProportional(autoshop_global_td[0], 1);
    TextDrawSetShadow(autoshop_global_td[0], 0);

    autoshop_global_td[1] = TextDrawCreate(370.3475, 394.4190, ">>>"); // kanan
    TextDrawLetterSize(autoshop_global_td[1], 0.1682, 1.3559);
    TextDrawTextSize(autoshop_global_td[1], 10.0000, 24.0000);
    TextDrawAlignment(autoshop_global_td[1], 2);
    TextDrawColor(autoshop_global_td[1], -1);
    TextDrawUseBox(autoshop_global_td[1], 1);
    TextDrawBoxColor(autoshop_global_td[1], 437918463);
    TextDrawBackgroundColor(autoshop_global_td[1], 255);
    TextDrawFont(autoshop_global_td[1], 2);
    TextDrawSetProportional(autoshop_global_td[1], 1);
    TextDrawSetShadow(autoshop_global_td[1], 0);
    TextDrawSetSelectable(autoshop_global_td[1], true);

    autoshop_global_td[2] = TextDrawCreate(262.1549, 394.5541, "<<<"); // Kiri
    TextDrawLetterSize(autoshop_global_td[2], 0.1520, 1.3413);
    TextDrawTextSize(autoshop_global_td[2], 10.0000, 24.0000);
    TextDrawAlignment(autoshop_global_td[2], 2);
    TextDrawColor(autoshop_global_td[2], -1);
    TextDrawUseBox(autoshop_global_td[2], 1);
    TextDrawBoxColor(autoshop_global_td[2], 437918463);
    TextDrawBackgroundColor(autoshop_global_td[2], 255);
    TextDrawFont(autoshop_global_td[2], 2);
    TextDrawSetProportional(autoshop_global_td[2], 1);
    TextDrawSetShadow(autoshop_global_td[2], 0);
    TextDrawSetSelectable(autoshop_global_td[2], true);

    autoshop_global_td[3] = TextDrawCreate(250.1640, 361.9808, "Box"); // kosong
    TextDrawLetterSize(autoshop_global_td[3], 0.0000, 2.9012);
    TextDrawTextSize(autoshop_global_td[3], 383.0000, 0.0000);
    TextDrawAlignment(autoshop_global_td[3], 1);
    TextDrawColor(autoshop_global_td[3], -1);
    TextDrawUseBox(autoshop_global_td[3], 1);
    TextDrawBoxColor(autoshop_global_td[3], 78);
    TextDrawBackgroundColor(autoshop_global_td[3], 255);
    TextDrawFont(autoshop_global_td[3], 1);
    TextDrawSetProportional(autoshop_global_td[3], 1);
    TextDrawSetShadow(autoshop_global_td[3], 0);

    autoshop_global_td[4] = TextDrawCreate(316.1427, 331.0439, "CAR_SHOWROOM"); // kosong
    TextDrawLetterSize(autoshop_global_td[4], 0.2377, 1.2365);
    TextDrawAlignment(autoshop_global_td[4], 2);
    TextDrawColor(autoshop_global_td[4], -1);
    TextDrawBackgroundColor(autoshop_global_td[4], 255);
    TextDrawFont(autoshop_global_td[4], 1);
    TextDrawSetProportional(autoshop_global_td[4], 1);
    TextDrawSetShadow(autoshop_global_td[4], 0);

    autoshop_global_td[5] = TextDrawCreate(281.7983, 418.0679, "BUY"); // kosong
    TextDrawLetterSize(autoshop_global_td[5], 0.3210, 1.3837);
    TextDrawTextSize(autoshop_global_td[5], 10.0000, 63.0000);
    TextDrawAlignment(autoshop_global_td[5], 2);
    TextDrawColor(autoshop_global_td[5], -1);
    TextDrawUseBox(autoshop_global_td[5], 1);
    TextDrawBoxColor(autoshop_global_td[5], 437918463);
    TextDrawBackgroundColor(autoshop_global_td[5], 255);
    TextDrawFont(autoshop_global_td[5], 1);
    TextDrawSetProportional(autoshop_global_td[5], 1);
    TextDrawSetShadow(autoshop_global_td[5], 0);
    TextDrawSetSelectable(autoshop_global_td[5], true);

    autoshop_global_td[6] = TextDrawCreate(350.9559, 418.0679, "CANCEL"); // kosong
    TextDrawLetterSize(autoshop_global_td[6], 0.2876, 1.3967);
    TextDrawTextSize(autoshop_global_td[6], 10.0000, 63.0000);
    TextDrawAlignment(autoshop_global_td[6], 2);
    TextDrawColor(autoshop_global_td[6], -1);
    TextDrawUseBox(autoshop_global_td[6], 1);
    TextDrawBoxColor(autoshop_global_td[6], 437918463);
    TextDrawBackgroundColor(autoshop_global_td[6], 255);
    TextDrawFont(autoshop_global_td[6], 1);
    TextDrawSetProportional(autoshop_global_td[6], 1);
    TextDrawSetShadow(autoshop_global_td[6], 0);
    TextDrawSetSelectable(autoshop_global_td[6], true);

    autoshop_global_td[7] = TextDrawCreate(292.3540, 362.2340, "price:~n~max_speed:~n~tank:"); // kosong
    TextDrawLetterSize(autoshop_global_td[7], 0.1605, 0.8883);
    TextDrawAlignment(autoshop_global_td[7], 1);
    TextDrawColor(autoshop_global_td[7], -1);
    TextDrawBackgroundColor(autoshop_global_td[7], 255);
    TextDrawFont(autoshop_global_td[7], 2);
    TextDrawSetProportional(autoshop_global_td[7], 1);
    TextDrawSetShadow(autoshop_global_td[7], 0);

    PilihSpawnTD[0] = TextDrawCreate(201.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[0], 4);
    TextDrawLetterSize(PilihSpawnTD[0], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[0], 1.500000, 70.500000);
    TextDrawSetOutline(PilihSpawnTD[0], 1);
    TextDrawSetShadow(PilihSpawnTD[0], 0);
    TextDrawAlignment(PilihSpawnTD[0], 1);
    TextDrawColor(PilihSpawnTD[0], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[0], 255);
    TextDrawBoxColor(PilihSpawnTD[0], 50);
    TextDrawUseBox(PilihSpawnTD[0], 1);
    TextDrawSetProportional(PilihSpawnTD[0], 1);
    TextDrawSetSelectable(PilihSpawnTD[0], 0);

    PilihSpawnTD[1] = TextDrawCreate(201.000000, 401.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[1], 4);
    TextDrawLetterSize(PilihSpawnTD[1], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[1], 71.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[1], 1);
    TextDrawSetShadow(PilihSpawnTD[1], 0);
    TextDrawAlignment(PilihSpawnTD[1], 1);
    TextDrawColor(PilihSpawnTD[1], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[1], 255);
    TextDrawBoxColor(PilihSpawnTD[1], 50);
    TextDrawUseBox(PilihSpawnTD[1], 1);
    TextDrawSetProportional(PilihSpawnTD[1], 1);
    TextDrawSetSelectable(PilihSpawnTD[1], 0);

    PilihSpawnTD[2] = TextDrawCreate(271.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[2], 4);
    TextDrawLetterSize(PilihSpawnTD[2], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[2], 1.500000, 70.500000);
    TextDrawSetOutline(PilihSpawnTD[2], 1);
    TextDrawSetShadow(PilihSpawnTD[2], 0);
    TextDrawAlignment(PilihSpawnTD[2], 1);
    TextDrawColor(PilihSpawnTD[2], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[2], 255);
    TextDrawBoxColor(PilihSpawnTD[2], 50);
    TextDrawUseBox(PilihSpawnTD[2], 1);
    TextDrawSetProportional(PilihSpawnTD[2], 1);
    TextDrawSetSelectable(PilihSpawnTD[2], 0);

    PilihSpawnTD[3] = TextDrawCreate(201.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[3], 4);
    TextDrawLetterSize(PilihSpawnTD[3], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[3], 71.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[3], 1);
    TextDrawSetShadow(PilihSpawnTD[3], 0);
    TextDrawAlignment(PilihSpawnTD[3], 1);
    TextDrawColor(PilihSpawnTD[3], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[3], 255);
    TextDrawBoxColor(PilihSpawnTD[3], 50);
    TextDrawUseBox(PilihSpawnTD[3], 1);
    TextDrawSetProportional(PilihSpawnTD[3], 1);
    TextDrawSetSelectable(PilihSpawnTD[3], 0);

    PilihSpawnTD[4] = TextDrawCreate(301.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[4], 4);
    TextDrawLetterSize(PilihSpawnTD[4], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[4], 1.500000, 70.500000);
    TextDrawSetOutline(PilihSpawnTD[4], 1);
    TextDrawSetShadow(PilihSpawnTD[4], 0);
    TextDrawAlignment(PilihSpawnTD[4], 1);
    TextDrawColor(PilihSpawnTD[4], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[4], 255);
    TextDrawBoxColor(PilihSpawnTD[4], 50);
    TextDrawUseBox(PilihSpawnTD[4], 1);
    TextDrawSetProportional(PilihSpawnTD[4], 1);
    TextDrawSetSelectable(PilihSpawnTD[4], 0);

    PilihSpawnTD[5] = TextDrawCreate(301.000000, 401.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[5], 4);
    TextDrawLetterSize(PilihSpawnTD[5], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[5], 71.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[5], 1);
    TextDrawSetShadow(PilihSpawnTD[5], 0);
    TextDrawAlignment(PilihSpawnTD[5], 1);
    TextDrawColor(PilihSpawnTD[5], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[5], 255);
    TextDrawBoxColor(PilihSpawnTD[5], 50);
    TextDrawUseBox(PilihSpawnTD[5], 1);
    TextDrawSetProportional(PilihSpawnTD[5], 1);
    TextDrawSetSelectable(PilihSpawnTD[5], 0);

    PilihSpawnTD[6] = TextDrawCreate(371.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[6], 4);
    TextDrawLetterSize(PilihSpawnTD[6], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[6], 1.500000, 70.500000);
    TextDrawSetOutline(PilihSpawnTD[6], 1);
    TextDrawSetShadow(PilihSpawnTD[6], 0);
    TextDrawAlignment(PilihSpawnTD[6], 1);
    TextDrawColor(PilihSpawnTD[6], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[6], 255);
    TextDrawBoxColor(PilihSpawnTD[6], 50);
    TextDrawUseBox(PilihSpawnTD[6], 1);
    TextDrawSetProportional(PilihSpawnTD[6], 1);
    TextDrawSetSelectable(PilihSpawnTD[6], 0);

    PilihSpawnTD[7] = TextDrawCreate(301.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[7], 4);
    TextDrawLetterSize(PilihSpawnTD[7], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[7], 71.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[7], 1);
    TextDrawSetShadow(PilihSpawnTD[7], 0);
    TextDrawAlignment(PilihSpawnTD[7], 1);
    TextDrawColor(PilihSpawnTD[7], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[7], 255);
    TextDrawBoxColor(PilihSpawnTD[7], 50);
    TextDrawUseBox(PilihSpawnTD[7], 1);
    TextDrawSetProportional(PilihSpawnTD[7], 1);
    TextDrawSetSelectable(PilihSpawnTD[7], 0);

    PilihSpawnTD[8] = TextDrawCreate(407.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[8], 4);
    TextDrawLetterSize(PilihSpawnTD[8], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[8], 1.500000, 70.500000);
    TextDrawSetOutline(PilihSpawnTD[8], 1);
    TextDrawSetShadow(PilihSpawnTD[8], 0);
    TextDrawAlignment(PilihSpawnTD[8], 1);
    TextDrawColor(PilihSpawnTD[8], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[8], 255);
    TextDrawBoxColor(PilihSpawnTD[8], 50);
    TextDrawUseBox(PilihSpawnTD[8], 1);
    TextDrawSetProportional(PilihSpawnTD[8], 1);
    TextDrawSetSelectable(PilihSpawnTD[8], 0);

    PilihSpawnTD[9] = TextDrawCreate(407.000000, 401.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[9], 4);
    TextDrawLetterSize(PilihSpawnTD[9], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[9], 71.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[9], 1);
    TextDrawSetShadow(PilihSpawnTD[9], 0);
    TextDrawAlignment(PilihSpawnTD[9], 1);
    TextDrawColor(PilihSpawnTD[9], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[9], 255);
    TextDrawBoxColor(PilihSpawnTD[9], 50);
    TextDrawUseBox(PilihSpawnTD[9], 1);
    TextDrawSetProportional(PilihSpawnTD[9], 1);
    TextDrawSetSelectable(PilihSpawnTD[9], 0);

    PilihSpawnTD[10] = TextDrawCreate(477.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[10], 4);
    TextDrawLetterSize(PilihSpawnTD[10], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[10], 1.500000, 70.500000);
    TextDrawSetOutline(PilihSpawnTD[10], 1);
    TextDrawSetShadow(PilihSpawnTD[10], 0);
    TextDrawAlignment(PilihSpawnTD[10], 1);
    TextDrawColor(PilihSpawnTD[10], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[10], 255);
    TextDrawBoxColor(PilihSpawnTD[10], 50);
    TextDrawUseBox(PilihSpawnTD[10], 1);
    TextDrawSetProportional(PilihSpawnTD[10], 1);
    TextDrawSetSelectable(PilihSpawnTD[10], 0);

    PilihSpawnTD[11] = TextDrawCreate(407.000000, 331.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[11], 4);
    TextDrawLetterSize(PilihSpawnTD[11], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[11], 71.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[11], 1);
    TextDrawSetShadow(PilihSpawnTD[11], 0);
    TextDrawAlignment(PilihSpawnTD[11], 1);
    TextDrawColor(PilihSpawnTD[11], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[11], 255);
    TextDrawBoxColor(PilihSpawnTD[11], 50);
    TextDrawUseBox(PilihSpawnTD[11], 1);
    TextDrawSetProportional(PilihSpawnTD[11], 1);
    TextDrawSetSelectable(PilihSpawnTD[11], 0);

    PilihSpawnTD[12] = TextDrawCreate(538.000000, 143.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[12], 4);
    TextDrawLetterSize(PilihSpawnTD[12], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[12], 1.500000, 130.500000);
    TextDrawSetOutline(PilihSpawnTD[12], 1);
    TextDrawSetShadow(PilihSpawnTD[12], 0);
    TextDrawAlignment(PilihSpawnTD[12], 1);
    TextDrawColor(PilihSpawnTD[12], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[12], 255);
    TextDrawBoxColor(PilihSpawnTD[12], 50);
    TextDrawUseBox(PilihSpawnTD[12], 1);
    TextDrawSetProportional(PilihSpawnTD[12], 1);
    TextDrawSetSelectable(PilihSpawnTD[12], 0);

    PilihSpawnTD[13] = TextDrawCreate(538.000000, 143.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[13], 4);
    TextDrawLetterSize(PilihSpawnTD[13], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[13], 80.000000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[13], 1);
    TextDrawSetShadow(PilihSpawnTD[13], 0);
    TextDrawAlignment(PilihSpawnTD[13], 1);
    TextDrawColor(PilihSpawnTD[13], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[13], 255);
    TextDrawBoxColor(PilihSpawnTD[13], 50);
    TextDrawUseBox(PilihSpawnTD[13], 1);
    TextDrawSetProportional(PilihSpawnTD[13], 1);
    TextDrawSetSelectable(PilihSpawnTD[13], 0);

    PilihSpawnTD[14] = TextDrawCreate(538.000000, 272.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[14], 4);
    TextDrawLetterSize(PilihSpawnTD[14], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[14], 80.000000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[14], 1);
    TextDrawSetShadow(PilihSpawnTD[14], 0);
    TextDrawAlignment(PilihSpawnTD[14], 1);
    TextDrawColor(PilihSpawnTD[14], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[14], 255);
    TextDrawBoxColor(PilihSpawnTD[14], 50);
    TextDrawUseBox(PilihSpawnTD[14], 1);
    TextDrawSetProportional(PilihSpawnTD[14], 1);
    TextDrawSetSelectable(PilihSpawnTD[14], 0);

    PilihSpawnTD[15] = TextDrawCreate(618.000000, 143.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[15], 4);
    TextDrawLetterSize(PilihSpawnTD[15], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[15], 1.500000, 131.000000);
    TextDrawSetOutline(PilihSpawnTD[15], 1);
    TextDrawSetShadow(PilihSpawnTD[15], 0);
    TextDrawAlignment(PilihSpawnTD[15], 1);
    TextDrawColor(PilihSpawnTD[15], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[15], 255);
    TextDrawBoxColor(PilihSpawnTD[15], 50);
    TextDrawUseBox(PilihSpawnTD[15], 1);
    TextDrawSetProportional(PilihSpawnTD[15], 1);
    TextDrawSetSelectable(PilihSpawnTD[15], 0);

    PilihSpawnTD[16] = TextDrawCreate(237.000000, 319.000000, "Pasbek");
    TextDrawFont(PilihSpawnTD[16], 2);
    TextDrawLetterSize(PilihSpawnTD[16], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[16], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[16], 0);
    TextDrawSetShadow(PilihSpawnTD[16], 0);
    TextDrawAlignment(PilihSpawnTD[16], 2);
    TextDrawColor(PilihSpawnTD[16], -1);
    TextDrawBackgroundColor(PilihSpawnTD[16], 255);
    TextDrawBoxColor(PilihSpawnTD[16], 50);
    TextDrawUseBox(PilihSpawnTD[16], 0);
    TextDrawSetProportional(PilihSpawnTD[16], 1);
    TextDrawSetSelectable(PilihSpawnTD[16], 0);

    PilihSpawnTD[17] = TextDrawCreate(338.000000, 319.000000, "Stasiun");
    TextDrawFont(PilihSpawnTD[17], 2);
    TextDrawLetterSize(PilihSpawnTD[17], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[17], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[17], 0);
    TextDrawSetShadow(PilihSpawnTD[17], 0);
    TextDrawAlignment(PilihSpawnTD[17], 2);
    TextDrawColor(PilihSpawnTD[17], -1);
    TextDrawBackgroundColor(PilihSpawnTD[17], 255);
    TextDrawBoxColor(PilihSpawnTD[17], 50);
    TextDrawUseBox(PilihSpawnTD[17], 0);
    TextDrawSetProportional(PilihSpawnTD[17], 1);
    TextDrawSetSelectable(PilihSpawnTD[17], 0);

    PilihSpawnTD[18] = TextDrawCreate(443.000000, 319.000000, "Bandara");
    TextDrawFont(PilihSpawnTD[18], 2);
    TextDrawLetterSize(PilihSpawnTD[18], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[18], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[18], 0);
    TextDrawSetShadow(PilihSpawnTD[18], 0);
    TextDrawAlignment(PilihSpawnTD[18], 2);
    TextDrawColor(PilihSpawnTD[18], -1);
    TextDrawBackgroundColor(PilihSpawnTD[18], 255);
    TextDrawBoxColor(PilihSpawnTD[18], 50);
    TextDrawUseBox(PilihSpawnTD[18], 0);
    TextDrawSetProportional(PilihSpawnTD[18], 1);
    TextDrawSetSelectable(PilihSpawnTD[18], 0);

    PilihSpawnTD[19] = TextDrawCreate(577.000000, 132.000000, "MENU");
    TextDrawFont(PilihSpawnTD[19], 2);
    TextDrawLetterSize(PilihSpawnTD[19], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[19], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[19], 0);
    TextDrawSetShadow(PilihSpawnTD[19], 0);
    TextDrawAlignment(PilihSpawnTD[19], 2);
    TextDrawColor(PilihSpawnTD[19], -1);
    TextDrawBackgroundColor(PilihSpawnTD[19], 255);
    TextDrawBoxColor(PilihSpawnTD[19], 50);
    TextDrawUseBox(PilihSpawnTD[19], 0);
    TextDrawSetProportional(PilihSpawnTD[19], 1);
    TextDrawSetSelectable(PilihSpawnTD[19], 0);

    SPWPASBEK = TextDrawCreate(202.500000, 333.000000, "ld_rce1:race00");
    TextDrawFont(SPWPASBEK, 4);
    TextDrawLetterSize(SPWPASBEK, 0.600000, 2.000000);
    TextDrawTextSize(SPWPASBEK, 68.500000, 68.000000);
    TextDrawSetOutline(SPWPASBEK, 1);
    TextDrawSetShadow(SPWPASBEK, 0);
    TextDrawAlignment(SPWPASBEK, 1);
    TextDrawColor(SPWPASBEK, -1);
    TextDrawBackgroundColor(SPWPASBEK, 255);
    TextDrawBoxColor(SPWPASBEK, 50);
    TextDrawUseBox(SPWPASBEK, 1);
    TextDrawSetProportional(SPWPASBEK, 1);
    TextDrawSetSelectable(SPWPASBEK, 1);

    SPWSTASIUN = TextDrawCreate(302.500000, 333.000000, "ld_rce2:race06");
    TextDrawFont(SPWSTASIUN, 4);
    TextDrawLetterSize(SPWSTASIUN, 0.600000, 2.000000);
    TextDrawTextSize(SPWSTASIUN, 68.500000, 68.000000);
    TextDrawSetOutline(SPWSTASIUN, 1);
    TextDrawSetShadow(SPWSTASIUN, 0);
    TextDrawAlignment(SPWSTASIUN, 1);
    TextDrawColor(SPWSTASIUN, -1);
    TextDrawBackgroundColor(SPWSTASIUN, 255);
    TextDrawBoxColor(SPWSTASIUN, 50);
    TextDrawUseBox(SPWSTASIUN, 1);
    TextDrawSetProportional(SPWSTASIUN, 1);
    TextDrawSetSelectable(SPWSTASIUN, 1);

    SPWBANDARA = TextDrawCreate(408.500000, 333.000000, "ld_rce5:race24");
    TextDrawFont(SPWBANDARA, 4);
    TextDrawLetterSize(SPWBANDARA, 0.600000, 2.000000);
    TextDrawTextSize(SPWBANDARA, 68.500000, 68.000000);
    TextDrawSetOutline(SPWBANDARA, 1);
    TextDrawSetShadow(SPWBANDARA, 0);
    TextDrawAlignment(SPWBANDARA, 1);
    TextDrawColor(SPWBANDARA, -1);
    TextDrawBackgroundColor(SPWBANDARA, 255);
    TextDrawBoxColor(SPWBANDARA, 50);
    TextDrawUseBox(SPWBANDARA, 1);
    TextDrawSetProportional(SPWBANDARA, 1);
    TextDrawSetSelectable(SPWBANDARA, 1);

    SPWTERAKHIR = TextDrawCreate(544.000000, 151.000000, "ld_dual:white");
    TextDrawFont(SPWTERAKHIR, 4);
    TextDrawLetterSize(SPWTERAKHIR, 0.600000, 2.000000);
    TextDrawTextSize(SPWTERAKHIR, 70.500000, 20.000000);
    TextDrawSetOutline(SPWTERAKHIR, 1);
    TextDrawSetShadow(SPWTERAKHIR, 0);
    TextDrawAlignment(SPWTERAKHIR, 1);
    TextDrawColor(SPWTERAKHIR, 1296911871);
    TextDrawBackgroundColor(SPWTERAKHIR, 255);
    TextDrawBoxColor(SPWTERAKHIR, 50);
    TextDrawUseBox(SPWTERAKHIR, 1);
    TextDrawSetProportional(SPWTERAKHIR, 1);
    TextDrawSetSelectable(SPWTERAKHIR, 1);

    SPWPEKERJAAN = TextDrawCreate(544.000000, 176.000000, "ld_dual:white");
    TextDrawFont(SPWPEKERJAAN, 4);
    TextDrawLetterSize(SPWPEKERJAAN, 0.600000, 2.000000);
    TextDrawTextSize(SPWPEKERJAAN, 70.500000, 20.000000);
    TextDrawSetOutline(SPWPEKERJAAN, 1);
    TextDrawSetShadow(SPWPEKERJAAN, 0);
    TextDrawAlignment(SPWPEKERJAAN, 1);
    TextDrawColor(SPWPEKERJAAN, 1296911871);
    TextDrawBackgroundColor(SPWPEKERJAAN, 255);
    TextDrawBoxColor(SPWPEKERJAAN, 50);
    TextDrawUseBox(SPWPEKERJAAN, 1);
    TextDrawSetProportional(SPWPEKERJAAN, 1);
    TextDrawSetSelectable(SPWPEKERJAAN, 1);

    SPWRUMAH = TextDrawCreate(544.000000, 201.000000, "ld_dual:white");
    TextDrawFont(SPWRUMAH, 4);
    TextDrawLetterSize(SPWRUMAH, 0.600000, 2.000000);
    TextDrawTextSize(SPWRUMAH, 70.500000, 20.000000);
    TextDrawSetOutline(SPWRUMAH, 1);
    TextDrawSetShadow(SPWRUMAH, 0);
    TextDrawAlignment(SPWRUMAH, 1);
    TextDrawColor(SPWRUMAH, 1296911871);
    TextDrawBackgroundColor(SPWRUMAH, 255);
    TextDrawBoxColor(SPWRUMAH, 50);
    TextDrawUseBox(SPWRUMAH, 1);
    TextDrawSetProportional(SPWRUMAH, 1);
    TextDrawSetSelectable(SPWRUMAH, 1);

    SPWBALKOT = TextDrawCreate(544.000000, 226.000000, "ld_dual:white");
    TextDrawFont(SPWBALKOT, 4);
    TextDrawLetterSize(SPWBALKOT, 0.600000, 2.000000);
    TextDrawTextSize(SPWBALKOT, 70.500000, 20.000000);
    TextDrawSetOutline(SPWBALKOT, 1);
    TextDrawSetShadow(SPWBALKOT, 0);
    TextDrawAlignment(SPWBALKOT, 1);
    TextDrawColor(SPWBALKOT, 1296911871);
    TextDrawBackgroundColor(SPWBALKOT, 255);
    TextDrawBoxColor(SPWBALKOT, 50);
    TextDrawUseBox(SPWBALKOT, 1);
    TextDrawSetProportional(SPWBALKOT, 1);
    TextDrawSetSelectable(SPWBALKOT, 1);

    SPWSPAWNALL = TextDrawCreate(544.000000, 250.000000, "ld_dual:white");
    TextDrawFont(SPWSPAWNALL, 4);
    TextDrawLetterSize(SPWSPAWNALL, 0.600000, 2.000000);
    TextDrawTextSize(SPWSPAWNALL, 70.500000, 20.000000);
    TextDrawSetOutline(SPWSPAWNALL, 1);
    TextDrawSetShadow(SPWSPAWNALL, 0);
    TextDrawAlignment(SPWSPAWNALL, 1);
    TextDrawColor(SPWSPAWNALL, 1296911871);
    TextDrawBackgroundColor(SPWSPAWNALL, 255);
    TextDrawBoxColor(SPWSPAWNALL, 50);
    TextDrawUseBox(SPWSPAWNALL, 1);
    TextDrawSetProportional(SPWSPAWNALL, 1);
    TextDrawSetSelectable(SPWSPAWNALL, 1);

    PilihSpawnTD[20] = TextDrawCreate(561.000000, 155.000000, "LOKASI_TERAKHIR");
    TextDrawFont(PilihSpawnTD[20], 2);
    TextDrawLetterSize(PilihSpawnTD[20], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[20], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[20], 0);
    TextDrawSetShadow(PilihSpawnTD[20], 0);
    TextDrawAlignment(PilihSpawnTD[20], 1);
    TextDrawColor(PilihSpawnTD[20], -1);
    TextDrawBackgroundColor(PilihSpawnTD[20], 255);
    TextDrawBoxColor(PilihSpawnTD[20], 50);
    TextDrawUseBox(PilihSpawnTD[20], 0);
    TextDrawSetProportional(PilihSpawnTD[20], 1);
    TextDrawSetSelectable(PilihSpawnTD[20], 0);

    PilihSpawnTD[21] = TextDrawCreate(561.000000, 180.000000, "PEKERJAAN");
    TextDrawFont(PilihSpawnTD[21], 2);
    TextDrawLetterSize(PilihSpawnTD[21], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[21], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[21], 0);
    TextDrawSetShadow(PilihSpawnTD[21], 0);
    TextDrawAlignment(PilihSpawnTD[21], 1);
    TextDrawColor(PilihSpawnTD[21], -1);
    TextDrawBackgroundColor(PilihSpawnTD[21], 255);
    TextDrawBoxColor(PilihSpawnTD[21], 50);
    TextDrawUseBox(PilihSpawnTD[21], 0);
    TextDrawSetProportional(PilihSpawnTD[21], 1);
    TextDrawSetSelectable(PilihSpawnTD[21], 0);

    PilihSpawnTD[22] = TextDrawCreate(561.000000, 206.000000, "RUMAH");
    TextDrawFont(PilihSpawnTD[22], 2);
    TextDrawLetterSize(PilihSpawnTD[22], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[22], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[22], 0);
    TextDrawSetShadow(PilihSpawnTD[22], 0);
    TextDrawAlignment(PilihSpawnTD[22], 1);
    TextDrawColor(PilihSpawnTD[22], -1);
    TextDrawBackgroundColor(PilihSpawnTD[22], 255);
    TextDrawBoxColor(PilihSpawnTD[22], 50);
    TextDrawUseBox(PilihSpawnTD[22], 0);
    TextDrawSetProportional(PilihSpawnTD[22], 1);
    TextDrawSetSelectable(PilihSpawnTD[22], 0);

    PilihSpawnTD[23] = TextDrawCreate(561.000000, 230.000000, "BALKOT");
    TextDrawFont(PilihSpawnTD[23], 2);
    TextDrawLetterSize(PilihSpawnTD[23], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[23], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[23], 0);
    TextDrawSetShadow(PilihSpawnTD[23], 0);
    TextDrawAlignment(PilihSpawnTD[23], 1);
    TextDrawColor(PilihSpawnTD[23], -1);
    TextDrawBackgroundColor(PilihSpawnTD[23], 255);
    TextDrawBoxColor(PilihSpawnTD[23], 50);
    TextDrawUseBox(PilihSpawnTD[23], 0);
    TextDrawSetProportional(PilihSpawnTD[23], 1);
    TextDrawSetSelectable(PilihSpawnTD[23], 0);

    PilihSpawnTD[24] = TextDrawCreate(561.000000, 255.000000, "SPAWN");
    TextDrawFont(PilihSpawnTD[24], 2);
    TextDrawLetterSize(PilihSpawnTD[24], 0.145833, 1.100000);
    TextDrawTextSize(PilihSpawnTD[24], 400.000000, 17.000000);
    TextDrawSetOutline(PilihSpawnTD[24], 0);
    TextDrawSetShadow(PilihSpawnTD[24], 0);
    TextDrawAlignment(PilihSpawnTD[24], 1);
    TextDrawColor(PilihSpawnTD[24], -1);
    TextDrawBackgroundColor(PilihSpawnTD[24], 255);
    TextDrawBoxColor(PilihSpawnTD[24], 50);
    TextDrawUseBox(PilihSpawnTD[24], 0);
    TextDrawSetProportional(PilihSpawnTD[24], 1);
    TextDrawSetSelectable(PilihSpawnTD[24], 0);

    PilihSpawnTD[25] = TextDrawCreate(550.000000, 152.000000, "ld_beat:chit");
    TextDrawFont(PilihSpawnTD[25], 4);
    TextDrawLetterSize(PilihSpawnTD[25], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[25], 7.500000, 10.000000);
    TextDrawSetOutline(PilihSpawnTD[25], 1);
    TextDrawSetShadow(PilihSpawnTD[25], 0);
    TextDrawAlignment(PilihSpawnTD[25], 1);
    TextDrawColor(PilihSpawnTD[25], -1);
    TextDrawBackgroundColor(PilihSpawnTD[25], 255);
    TextDrawBoxColor(PilihSpawnTD[25], 50);
    TextDrawUseBox(PilihSpawnTD[25], 1);
    TextDrawSetProportional(PilihSpawnTD[25], 1);
    TextDrawSetSelectable(PilihSpawnTD[25], 0);

    PilihSpawnTD[26] = TextDrawCreate(547.000000, 157.000000, "ld_beat:chit");
    TextDrawFont(PilihSpawnTD[26], 4);
    TextDrawLetterSize(PilihSpawnTD[26], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[26], 13.500000, 12.500000);
    TextDrawSetOutline(PilihSpawnTD[26], 1);
    TextDrawSetShadow(PilihSpawnTD[26], 0);
    TextDrawAlignment(PilihSpawnTD[26], 1);
    TextDrawColor(PilihSpawnTD[26], -1);
    TextDrawBackgroundColor(PilihSpawnTD[26], 255);
    TextDrawBoxColor(PilihSpawnTD[26], 50);
    TextDrawUseBox(PilihSpawnTD[26], 1);
    TextDrawSetProportional(PilihSpawnTD[26], 1);
    TextDrawSetSelectable(PilihSpawnTD[26], 0);

    PilihSpawnTD[27] = TextDrawCreate(547.000000, 183.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[27], 4);
    TextDrawLetterSize(PilihSpawnTD[27], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[27], 12.000000, 8.500000);
    TextDrawSetOutline(PilihSpawnTD[27], 1);
    TextDrawSetShadow(PilihSpawnTD[27], 0);
    TextDrawAlignment(PilihSpawnTD[27], 1);
    TextDrawColor(PilihSpawnTD[27], -1);
    TextDrawBackgroundColor(PilihSpawnTD[27], 255);
    TextDrawBoxColor(PilihSpawnTD[27], 50);
    TextDrawUseBox(PilihSpawnTD[27], 1);
    TextDrawSetProportional(PilihSpawnTD[27], 1);
    TextDrawSetSelectable(PilihSpawnTD[27], 0);

    PilihSpawnTD[28] = TextDrawCreate(549.000000, 180.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[28], 4);
    TextDrawLetterSize(PilihSpawnTD[28], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[28], 8.500000, 8.500000);
    TextDrawSetOutline(PilihSpawnTD[28], 1);
    TextDrawSetShadow(PilihSpawnTD[28], 0);
    TextDrawAlignment(PilihSpawnTD[28], 1);
    TextDrawColor(PilihSpawnTD[28], -1);
    TextDrawBackgroundColor(PilihSpawnTD[28], 255);
    TextDrawBoxColor(PilihSpawnTD[28], 50);
    TextDrawUseBox(PilihSpawnTD[28], 1);
    TextDrawSetProportional(PilihSpawnTD[28], 1);
    TextDrawSetSelectable(PilihSpawnTD[28], 0);

    PilihSpawnTD[29] = TextDrawCreate(549.000000, 205.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[29], 4);
    TextDrawLetterSize(PilihSpawnTD[29], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[29], 8.500000, 13.000000);
    TextDrawSetOutline(PilihSpawnTD[29], 1);
    TextDrawSetShadow(PilihSpawnTD[29], 0);
    TextDrawAlignment(PilihSpawnTD[29], 1);
    TextDrawColor(PilihSpawnTD[29], -1);
    TextDrawBackgroundColor(PilihSpawnTD[29], 255);
    TextDrawBoxColor(PilihSpawnTD[29], 50);
    TextDrawUseBox(PilihSpawnTD[29], 1);
    TextDrawSetProportional(PilihSpawnTD[29], 1);
    TextDrawSetSelectable(PilihSpawnTD[29], 0);

    PilihSpawnTD[30] = TextDrawCreate(550.000000, 206.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[30], 4);
    TextDrawLetterSize(PilihSpawnTD[30], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[30], 6.500000, 8.000000);
    TextDrawSetOutline(PilihSpawnTD[30], 1);
    TextDrawSetShadow(PilihSpawnTD[30], 0);
    TextDrawAlignment(PilihSpawnTD[30], 1);
    TextDrawColor(PilihSpawnTD[30], 255);
    TextDrawBackgroundColor(PilihSpawnTD[30], 255);
    TextDrawBoxColor(PilihSpawnTD[30], 50);
    TextDrawUseBox(PilihSpawnTD[30], 1);
    TextDrawSetProportional(PilihSpawnTD[30], 1);
    TextDrawSetSelectable(PilihSpawnTD[30], 0);

    PilihSpawnTD[31] = TextDrawCreate(550.000000, 215.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[31], 4);
    TextDrawLetterSize(PilihSpawnTD[31], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[31], 1.500000, 3.000000);
    TextDrawSetOutline(PilihSpawnTD[31], 1);
    TextDrawSetShadow(PilihSpawnTD[31], 0);
    TextDrawAlignment(PilihSpawnTD[31], 1);
    TextDrawColor(PilihSpawnTD[31], 255);
    TextDrawBackgroundColor(PilihSpawnTD[31], 255);
    TextDrawBoxColor(PilihSpawnTD[31], 50);
    TextDrawUseBox(PilihSpawnTD[31], 1);
    TextDrawSetProportional(PilihSpawnTD[31], 1);
    TextDrawSetSelectable(PilihSpawnTD[31], 0);

    PilihSpawnTD[32] = TextDrawCreate(550.000000, 208.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[32], 4);
    TextDrawLetterSize(PilihSpawnTD[32], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[32], 6.500000, 1.000000);
    TextDrawSetOutline(PilihSpawnTD[32], 1);
    TextDrawSetShadow(PilihSpawnTD[32], 0);
    TextDrawAlignment(PilihSpawnTD[32], 1);
    TextDrawColor(PilihSpawnTD[32], -1);
    TextDrawBackgroundColor(PilihSpawnTD[32], 255);
    TextDrawBoxColor(PilihSpawnTD[32], 50);
    TextDrawUseBox(PilihSpawnTD[32], 1);
    TextDrawSetProportional(PilihSpawnTD[32], 1);
    TextDrawSetSelectable(PilihSpawnTD[32], 0);

    PilihSpawnTD[33] = TextDrawCreate(550.000000, 211.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[33], 4);
    TextDrawLetterSize(PilihSpawnTD[33], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[33], 6.500000, 1.000000);
    TextDrawSetOutline(PilihSpawnTD[33], 1);
    TextDrawSetShadow(PilihSpawnTD[33], 0);
    TextDrawAlignment(PilihSpawnTD[33], 1);
    TextDrawColor(PilihSpawnTD[33], -1);
    TextDrawBackgroundColor(PilihSpawnTD[33], 255);
    TextDrawBoxColor(PilihSpawnTD[33], 50);
    TextDrawUseBox(PilihSpawnTD[33], 1);
    TextDrawSetProportional(PilihSpawnTD[33], 1);
    TextDrawSetSelectable(PilihSpawnTD[33], 0);

    PilihSpawnTD[34] = TextDrawCreate(552.000000, 206.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[34], 4);
    TextDrawLetterSize(PilihSpawnTD[34], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[34], 2.000000, 8.000000);
    TextDrawSetOutline(PilihSpawnTD[34], 1);
    TextDrawSetShadow(PilihSpawnTD[34], 0);
    TextDrawAlignment(PilihSpawnTD[34], 1);
    TextDrawColor(PilihSpawnTD[34], -1);
    TextDrawBackgroundColor(PilihSpawnTD[34], 255);
    TextDrawBoxColor(PilihSpawnTD[34], 50);
    TextDrawUseBox(PilihSpawnTD[34], 1);
    TextDrawSetProportional(PilihSpawnTD[34], 1);
    TextDrawSetSelectable(PilihSpawnTD[34], 0);

    PilihSpawnTD[35] = TextDrawCreate(548.000000, 235.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[35], 4);
    TextDrawLetterSize(PilihSpawnTD[35], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[35], 10.500000, 8.000000);
    TextDrawSetOutline(PilihSpawnTD[35], 1);
    TextDrawSetShadow(PilihSpawnTD[35], 0);
    TextDrawAlignment(PilihSpawnTD[35], 1);
    TextDrawColor(PilihSpawnTD[35], -1);
    TextDrawBackgroundColor(PilihSpawnTD[35], 255);
    TextDrawBoxColor(PilihSpawnTD[35], 50);
    TextDrawUseBox(PilihSpawnTD[35], 1);
    TextDrawSetProportional(PilihSpawnTD[35], 1);
    TextDrawSetSelectable(PilihSpawnTD[35], 0);

    PilihSpawnTD[36] = TextDrawCreate(551.000000, 227.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[36], 4);
    TextDrawLetterSize(PilihSpawnTD[36], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[36], 3.500000, 8.000000);
    TextDrawSetOutline(PilihSpawnTD[36], 1);
    TextDrawSetShadow(PilihSpawnTD[36], 0);
    TextDrawAlignment(PilihSpawnTD[36], 1);
    TextDrawColor(PilihSpawnTD[36], -1);
    TextDrawBackgroundColor(PilihSpawnTD[36], 255);
    TextDrawBoxColor(PilihSpawnTD[36], 50);
    TextDrawUseBox(PilihSpawnTD[36], 1);
    TextDrawSetProportional(PilihSpawnTD[36], 1);
    TextDrawSetSelectable(PilihSpawnTD[36], 0);

    PilihSpawnTD[37] = TextDrawCreate(549.000000, 237.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[37], 4);
    TextDrawLetterSize(PilihSpawnTD[37], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[37], 8.500000, 3.500000);
    TextDrawSetOutline(PilihSpawnTD[37], 1);
    TextDrawSetShadow(PilihSpawnTD[37], 0);
    TextDrawAlignment(PilihSpawnTD[37], 1);
    TextDrawColor(PilihSpawnTD[37], 255);
    TextDrawBackgroundColor(PilihSpawnTD[37], 255);
    TextDrawBoxColor(PilihSpawnTD[37], 50);
    TextDrawUseBox(PilihSpawnTD[37], 1);
    TextDrawSetProportional(PilihSpawnTD[37], 1);
    TextDrawSetSelectable(PilihSpawnTD[37], 0);

    PilihSpawnTD[38] = TextDrawCreate(551.000000, 241.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[38], 4);
    TextDrawLetterSize(PilihSpawnTD[38], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[38], 4.500000, 2.000000);
    TextDrawSetOutline(PilihSpawnTD[38], 1);
    TextDrawSetShadow(PilihSpawnTD[38], 0);
    TextDrawAlignment(PilihSpawnTD[38], 1);
    TextDrawColor(PilihSpawnTD[38], 255);
    TextDrawBackgroundColor(PilihSpawnTD[38], 255);
    TextDrawBoxColor(PilihSpawnTD[38], 50);
    TextDrawUseBox(PilihSpawnTD[38], 1);
    TextDrawSetProportional(PilihSpawnTD[38], 1);
    TextDrawSetSelectable(PilihSpawnTD[38], 0);

    PilihSpawnTD[39] = TextDrawCreate(549.000000, 239.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[39], 4);
    TextDrawLetterSize(PilihSpawnTD[39], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[39], 9.500000, -0.500000);
    TextDrawSetOutline(PilihSpawnTD[39], 1);
    TextDrawSetShadow(PilihSpawnTD[39], 0);
    TextDrawAlignment(PilihSpawnTD[39], 1);
    TextDrawColor(PilihSpawnTD[39], -1);
    TextDrawBackgroundColor(PilihSpawnTD[39], 255);
    TextDrawBoxColor(PilihSpawnTD[39], 50);
    TextDrawUseBox(PilihSpawnTD[39], 1);
    TextDrawSetProportional(PilihSpawnTD[39], 1);
    TextDrawSetSelectable(PilihSpawnTD[39], 0);

    PilihSpawnTD[40] = TextDrawCreate(550.000000, 229.000000, "ld_dual:white");
    TextDrawFont(PilihSpawnTD[40], 4);
    TextDrawLetterSize(PilihSpawnTD[40], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[40], 6.000000, 6.500000);
    TextDrawSetOutline(PilihSpawnTD[40], 1);
    TextDrawSetShadow(PilihSpawnTD[40], 0);
    TextDrawAlignment(PilihSpawnTD[40], 1);
    TextDrawColor(PilihSpawnTD[40], -1);
    TextDrawBackgroundColor(PilihSpawnTD[40], 255);
    TextDrawBoxColor(PilihSpawnTD[40], 50);
    TextDrawUseBox(PilihSpawnTD[40], 1);
    TextDrawSetProportional(PilihSpawnTD[40], 1);
    TextDrawSetSelectable(PilihSpawnTD[40], 0);

    PilihSpawnTD[41] = TextDrawCreate(546.000000, 252.000000, "ld_beat:chit");
    TextDrawFont(PilihSpawnTD[41], 4);
    TextDrawLetterSize(PilihSpawnTD[41], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[41], 14.000000, 16.000000);
    TextDrawSetOutline(PilihSpawnTD[41], 1);
    TextDrawSetShadow(PilihSpawnTD[41], 0);
    TextDrawAlignment(PilihSpawnTD[41], 1);
    TextDrawColor(PilihSpawnTD[41], -1);
    TextDrawBackgroundColor(PilihSpawnTD[41], 255);
    TextDrawBoxColor(PilihSpawnTD[41], 50);
    TextDrawUseBox(PilihSpawnTD[41], 1);
    TextDrawSetProportional(PilihSpawnTD[41], 1);
    TextDrawSetSelectable(PilihSpawnTD[41], 0);

    PilihSpawnTD[42] = TextDrawCreate(547.000000, 253.000000, "ld_beat:chit");
    TextDrawFont(PilihSpawnTD[42], 4);
    TextDrawLetterSize(PilihSpawnTD[42], 0.600000, 2.000000);
    TextDrawTextSize(PilihSpawnTD[42], 12.000000, 14.000000);
    TextDrawSetOutline(PilihSpawnTD[42], 1);
    TextDrawSetShadow(PilihSpawnTD[42], 0);
    TextDrawAlignment(PilihSpawnTD[42], 1);
    TextDrawColor(PilihSpawnTD[42], 1296911871);
    TextDrawBackgroundColor(PilihSpawnTD[42], 255);
    TextDrawBoxColor(PilihSpawnTD[42], 50);
    TextDrawUseBox(PilihSpawnTD[42], 1);
    TextDrawSetProportional(PilihSpawnTD[42], 1);
    TextDrawSetSelectable(PilihSpawnTD[42], 0);
    
	//LEAVE GREEN ZONE
	leave_zz_td[0] = TextDrawCreate(14.999973, 222.926330, "LD_SPAC:white");
	TextDrawLetterSize(leave_zz_td[0], 0.000000, 0.000000);
	TextDrawTextSize(leave_zz_td[0], 112.499969, 17.925924);
	TextDrawAlignment(leave_zz_td[0], 1);
	TextDrawColor(leave_zz_td[0], 269488383);
	TextDrawSetShadow(leave_zz_td[0], 0);
	TextDrawSetOutline(leave_zz_td[0], 0);
	TextDrawBackgroundColor(leave_zz_td[0], 255);
	TextDrawFont(leave_zz_td[0], 4);
	TextDrawSetProportional(leave_zz_td[0], 0);
	TextDrawSetShadow(leave_zz_td[0], 0);

	leave_zz_td[1] = TextDrawCreate(19.166648, 227.074386, "LD_SPAC:WHITE");
	TextDrawLetterSize(leave_zz_td[1], 0.000000, 0.000000);
	TextDrawTextSize(leave_zz_td[1], 2.083297, 10.148147);
	TextDrawAlignment(leave_zz_td[1], 1);
	TextDrawColor(leave_zz_td[1], 8388863);
	TextDrawSetShadow(leave_zz_td[1], 0);
	TextDrawSetOutline(leave_zz_td[1], 0);
	TextDrawBackgroundColor(leave_zz_td[1], 255);
	TextDrawFont(leave_zz_td[1], 4);
	TextDrawSetProportional(leave_zz_td[1], 0);
	TextDrawSetShadow(leave_zz_td[1], 0);

	leave_zz_td[2] = TextDrawCreate(24.583339, 227.851913, "YOU_LEAVE_~gr~GREEN_ZONE");
	TextDrawLetterSize(leave_zz_td[2], 0.198332, 0.884443);
	TextDrawAlignment(leave_zz_td[2], 1);
	TextDrawColor(leave_zz_td[2], -1);
	TextDrawSetShadow(leave_zz_td[2], 0);
	TextDrawSetOutline(leave_zz_td[2], 0);
	TextDrawBackgroundColor(leave_zz_td[2], 255);
	TextDrawFont(leave_zz_td[2], 1);
	TextDrawSetProportional(leave_zz_td[2], 1);
	TextDrawSetShadow(leave_zz_td[2], 0);

	//MASUK GREEN ZONE
	zz_td[0] = TextDrawCreate(14.999973, 222.926330, "LD_SPAC:white");
	TextDrawLetterSize(zz_td[0], 0.000000, 0.000000);
	TextDrawTextSize(zz_td[0], 112.499969, 17.925924);
	TextDrawAlignment(zz_td[0], 1);
	TextDrawColor(zz_td[0], 269488383);
	TextDrawSetShadow(zz_td[0], 0);
	TextDrawSetOutline(zz_td[0], 0);
	TextDrawBackgroundColor(zz_td[0], 255);
	TextDrawFont(zz_td[0], 4);
	TextDrawSetProportional(zz_td[0], 0);
	TextDrawSetShadow(zz_td[0], 0);

	zz_td[1] = TextDrawCreate(19.166648, 227.074386, "LD_SPAC:WHITE");
	TextDrawLetterSize(zz_td[1], 0.000000, 0.000000);
	TextDrawTextSize(zz_td[1], 2.083297, 10.148147);
	TextDrawAlignment(zz_td[1], 1);
	TextDrawColor(zz_td[1], 8388863);
	TextDrawSetShadow(zz_td[1], 0);
	TextDrawSetOutline(zz_td[1], 0);
	TextDrawBackgroundColor(zz_td[1], 255);
	TextDrawFont(zz_td[1], 4);
	TextDrawSetProportional(zz_td[1], 0);
	TextDrawSetShadow(zz_td[1], 0);

	zz_td[2] = TextDrawCreate(24.583339, 227.851913, "KAMU_MEMASUKI_~gr~GREEN_ZONE");
	TextDrawLetterSize(zz_td[2], 0.198332, 0.884443);
	TextDrawAlignment(zz_td[2], 1);
	TextDrawColor(zz_td[2], -1);
	TextDrawSetShadow(zz_td[2], 0);
	TextDrawSetOutline(zz_td[2], 0);
	TextDrawBackgroundColor(zz_td[2], 255);
	TextDrawFont(zz_td[2], 1);
	TextDrawSetProportional(zz_td[2], 1);
	TextDrawSetShadow(zz_td[2], 0);
}