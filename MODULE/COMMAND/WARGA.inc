CMD:i(playerid)
{
    Inventory_Show(playerid);
    return 1;
}
CMD:tw(playerid){
    SetPVarInt(playerid, "pTwitterTime", gettime() + 30 * 1000);
    ShowPlayerDialog(playerid, HP_TWITTER, DIALOG_STYLE_INPUT, "Twitter", "Masukan Text Disini:", "Posting", "Batal");
    return 1;
}

CMD:hidektp(playerid, params[])
{
    for(new txd; txd < 28; txd++)
    {
        PlayerTextDrawHide(playerid, Liberty_KTP[playerid][txd]);
    }
    CancelSelectTextDraw(playerid);
    return 1;
}
CMD:ktp(playerid, params[])//0x999999FF
{
    extract params -> new to_player; else return SendClientMessage(playerid, -1, "/ktp [id pemain]");

    if(!IsPlayerConnected(to_player))
        return SendClientMessage(playerid, 0x999999FF, "Pemain Sedang tidak di kota");

    if(!ProxDetectorS(4.0, playerid, to_player)) return Send(playerid, COLOR_GREY,"Pemain terlalu jauh");

    if(PlayerInfo[playerid][pKtp] < 0) return SCM(playerid, COLOR_RED, "ERROR: You Don't Have Passport");

    if(GetPVarInt(playerid,"pPassTime") > gettime()) return Send(playerid, COLOR_GREY, "Tunggu sebentar...");

    new atext[20];
    if(PlayerInfo[playerid][pSex] == 1) atext = "Laki-laki";
    else atext = "Perempuan";

    new htext[10];
    if(GetPlayerHouse(playerid) != -1) format(htext, sizeof(htext), "Nomor rumah%d", GetPlayerHouse(playerid));
    else if(PlayerInfo[playerid][pHotel] != -1) format(htext, sizeof(htext), "No. hotel%d", PlayerInfo[playerid][pHotel]);
    else htext = "Tunawisma";

    MeAction(playerid, "menunjukkan paspornya");

    new strings[256];

    format(strings, sizeof(strings), "%s", pData[playerid][pName]);
    PlayerTextDrawSetString(playerid, Liberty_KTP[playerid][16], strings);
    // Set birtdate
    format(strings, sizeof(strings), "%d", pData[playerid][pAge]);
    PlayerTextDrawSetString(playerid, Liberty_KTP[playerid][20], strings);

    format(strings, sizeof(strings), "%s", atext);
    PlayerTextDrawSetString(playerid, Liberty_KTP[playerid][21], strings);
    // Set tinggi
    format(strings, sizeof(strings), "%s",  NamesJob(playerid));
    PlayerTextDrawSetString(playerid, Liberty_KTP[playerid][22], strings);
    // Set ttd
    format(strings, sizeof(strings), "#HopeTogether");
    PlayerTextDrawSetString(playerid, Liberty_KTP[playerid][23], strings);

    for(new txd; txd < 28; txd++)
    {
        PlayerTextDrawShow(playerid, Liberty_KTP[playerid][txd]);
    }

    PlayerInfo[playerid][pKtp] -= 1;
    OnPlayerUpdateAccountsPer(playerid, "pKtp", PlayerInfo[playerid][pKtp]);
    PlayerInfo[to_player][pKtp] += 1;
    OnPlayerUpdateAccountsPer(to_player, "pKtp", PlayerInfo[to_player][pKtp]);

    Info(playerid, "/hidektp untuk menghilangkan ktp.");

    SetPVarInt(playerid, "pPassTime", gettime() + 15);
    return 1;
}
CMD:drone(playerid, params[])
{
    if(admin_level[playerid] < 1) return Error(playerid, "Hanya bisa digunakan admin [Progress untuk public]");
    new str[128];
    if( sscanf( params, "s", str ) ) return Info(playerid, "/drone [spawn/detonate/remove]" );
    //if(pData[playerid][pDrone] = 0) return Info(playerid, "Anda tidak memiliki Drone!")

    if( strcmp( str, "spawn" ) == 0 ) {
        if( GetPVarInt( playerid, "DroneSpawned" ) == 0 ) {
            new Float:Health;
            GetPlayerHealth( playerid, Health );

            if(Health != 0) {
                new Float:PosX, Float:PosY, Float:PosZ;
                GetPlayerPos( playerid, PosX, PosY, PosZ );
                SetPVarFloat( playerid, "OldPosX", PosX );
                SetPVarFloat( playerid, "OldPosY", PosY );
                SetPVarFloat( playerid, "OldPosZ", PosZ );
                SetPVarInt( playerid, "DroneSpawned", 1 );
                Info( playerid, "Drone berhasil dihidupkan" );
                Drones[playerid] = CreateVehicle( 465, PosX, PosY, PosZ + 20, 0, 0, 0, 0, -1 );
                PutPlayerInVehicle( playerid, Drones[playerid], 0 );
            }
        } else {
            Info( playerid, "Kamu sedang mengendalikan drone" );
        }
    } else {
        if( strcmp( str, "detonate" ) == 0 ) {
            if( GetPVarInt( playerid, "DroneSpawned" ) == 1 ) {
                new Float:PosX, Float:PosY, Float:PosZ;
                GetVehiclePos( Drones[playerid], PosX, PosY, PosZ );

                SetPVarInt( playerid, "DroneSpawned", 0 );
                Info( playerid, "Drone berhasil diledakan" );
                DestroyVehicle( Drones[playerid] );

                CreateExplosion( PosX, PosY, PosZ, 7, 25 );

                SetPlayerPos(playerid, GetPVarFloat( playerid, "OldPosX" ), GetPVarFloat( playerid, "OldPosY" ), GetPVarFloat( playerid, "OldPosZ" ));
            } else {
                Info( playerid, "Hidupkan Drone!" );
            }
        } else {
            if( strcmp( str, "remove" ) == 0 ) {
                if( GetPVarInt( playerid, "DroneSpawned" ) == 1 ) {
                    SetPVarInt( playerid, "DroneSpawned", 0 );
                    Info( playerid, "Drone berhasil dimatikan" );
                    DestroyVehicle( Drones[playerid] );

                    SetPlayerPos(playerid, GetPVarFloat( playerid, "OldPosX" ), GetPVarFloat( playerid, "OldPosY" ), GetPVarFloat( playerid, "OldPosZ" ));
                } else {
                    Info( playerid, "Hidupkan Drone!" );
                }
            }
        }
    }
    return 1;
}