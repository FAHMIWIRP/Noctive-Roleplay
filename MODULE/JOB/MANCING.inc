//========[ MANCING CP ]========
new mancing1;
new mancing2;
new mancing3;
new mancing4;
new mancing5;
new mancing6;
new mancing7;
new mancing8;
new mancing9;
new mancing10;
new mancing11;
new mancing12;
new mancing13;
new mancing14;
new mancing15;
new mancing16;
new mancing17;
new mancing18;
new mancing19;
new mancing20;
new mancing21;
new mancing22;
new mancing23;
new mancing24;

SendNearbyMessage(playerid, Float:radius, color, const str[], {Float,_}:...)
{
    static
        args,
        start,
        end,
        string[144]
    ;
    #emit LOAD.S.pri 8
    #emit STOR.pri args

    if(args > 16)
    {
        #emit ADDR.pri str
        #emit STOR.pri start

        for (end = start + (args - 16); end > start; end -= 4)
        {
            #emit LREF.pri end
            #emit PUSH.pri
        }
        #emit PUSH.S str
        #emit PUSH.C 144
        #emit PUSH.C string

        #emit LOAD.S.pri 8
        #emit CONST.alt 4
        #emit SUB
        #emit PUSH.pri

        #emit SYSREQ.C format
        #emit LCTRL 5
        #emit SCTRL 4

        foreach (new i : Player)
        {
            if(NearPlayer(i, playerid, radius)) {
                SendClientMessage(i, color, string);
            }
        }
        return 1;
    }
    foreach (new i : Player)
    {
        if(NearPlayer(i, playerid, radius)) {
            SendClientMessage(i, color, str);
        }
    }
    return 1;
}

CMD:beliumpan(playerid, params[])
{
    if(pData[playerid][pUmpan] == 100) return Error(playerid, "Anda tidak bisa membawa lebih dari 100 umpan");

    if(GetPlayerMoney(playerid) < 200) return SCM(playerid, COLOR_GREY, "Uang anda tidak cukup! minimal 200$");
    PlayerInfo[playerid][pCash] -= 200;
    GivePlayerMoney(playerid, -200);
    OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
    pData[playerid][pUmpan] += 10;
    /*format(str, sizeof(str), "ADD_%dx", pay);
    ShowItemBox(playerid, "Umpan", str, 1485, total);
    Inventory_Update(playerid);*/
    Info(playerid, "Anda berhasil membeli 10 umpan");
    return 1;
}

CMD:belipancing(playerid, params[])
{
    if(pData[playerid][pPancing] == 1) return Error(playerid, "Anda sudah memiliki pancingan");

    if(GetPlayerMoney(playerid) < 500) return SCM(playerid, COLOR_GREY, "Uang anda tidak cukup! minimal 500$");
    PlayerInfo[playerid][pCash] -= 500;
    GivePlayerMoney(playerid, -500);
    OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
    pData[playerid][pPancing] += 1;
    /*format(str, sizeof(str), "ADD_%dx", pay);
    ShowItemBox(playerid, "Pancingan", str, 18632, total);
    Inventory_Update(playerid);*/
    Info(playerid, "Anda berhasil membeli pancingan seharga $500");
    return 1;
}

CMD:051110(playerid,params[])
{
    if(pData[playerid][pUmpan] < 1) return Error(playerid, "Anda tidak memiliki umpan");
    if(pData[playerid][pPancing] < 1) return Error(playerid, "Anda tidak memiliki pancingan");
    new random2 = RandomEx(10000, 20000);
    pData[playerid][pInFish] = 1;
    SetTimerEx("FishTime", random2, 0, "i",playerid);
    ShowProgressbar(playerid, "Memancing ikan", 15);
    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "** %s mengayunkan pancing dan mulai menunggu ikan", ReturnName(playerid));
    TogglePlayerControllable(playerid, 0);
    ApplyAnimation(playerid,"SWORD","sword_block",50.0 ,0,1,0,1,1);
    SetPlayerAttachedObject(playerid, 9,18632,6,0.079376,0.037070,0.007706,181.482910,0.000000,0.000000,1.000000,1.000000,1.000000);
    return 1;
}
epublic: FishTime(playerid)
{
    if(IsPlayerConnected(playerid) && pData[playerid][pInFish] == 1)
    {
        new rand = RandomEx(1,12);
        if(rand == 1)
        {
            Info(playerid, "Anda mendapatkan sebuah rumput Laut dan langsung membuangannya.");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            return 1;
        }
        else if(rand == 2)
        {
            Info(playerid, "Anda mendapatkan ikan nemo!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Ikan_Makarel", "Received_1x", 19630, 2);
            return 1;
        }
        else if(rand == 3)
        {
            Info(playerid, "Anda mendapatkan ikan nemo!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Nemo", "Received_1x", 1599, 2);
            return 1;
        }
        else if(rand == 4)
        {
            Info(playerid, "Anda mendapatkan penyu");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Penyu", "Received_1x", 1609, 2);
            return 1;
        }
        else if(rand == 5)
        {
            Info(playerid, "Anda mendapatkan blue fish!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Blue_Fish", "Received_1x", 1604, 2);
            return 1;
        }
        else if(rand == 6)
        {
            Info(playerid, "Anda mendapatkan ikan nemo!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Ikan_Makarel", "Received_1x", 19630, 2);
            return 1;
        }
        else if(rand == 7)
        {
            Info(playerid, "Anda mendapatkan ikan nemo!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Ikan_Makarel", "Received_1x", 19630, 2);
            return 1;
        }
        else if(rand == 8)
        {
            Info(playerid, "Anda mendapatkan ikan nemo!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Ikan_Makarel", "Received_1x", 19630, 2);
            return 1;
        }
        else if(rand == 9)
        {
            Info(playerid, "Anda mendapatkan ikan nemo!");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            pData[playerid][pIkan]++;
            //ShowItemBox(playerid, "Ikan_Makarel", "Received_1x", 19630, 2);
            return 1;
        }
        else if(rand == 10)
        {
            Info(playerid, "Anda mendapatkan rumput laut dan langsung membuangnya");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pInFish] = 0;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            return 1;
        }
        else if(rand == 11)
        {
            Info(playerid, "Ikan yang sangat besar! tetapi pancingan anda terputus dan rusak.");
            pData[playerid][pUmpan] -= 1;
            pData[playerid][pPancing] -= 1;
            pData[playerid][pInFish] = 0;
            pData[playerid][pFishTool]--;
            TogglePlayerControllable(playerid, 1);
            RemovePlayerAttachedObject(playerid, 9);
            return 1;
        }
        else
        {
	         Info(playerid, "Anda mendapatkan rumput laut dan langsung membuangnya.");
	         pData[playerid][pInFish] = 0;
	         TogglePlayerControllable(playerid, 1);
	         RemovePlayerAttachedObject(playerid, 9);
            return 1;
        }
    }
    return 0;
}