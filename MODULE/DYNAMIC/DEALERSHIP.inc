#define MAX_DEALERSHIP 100
//DEALER
#define DIALOG_BUYJOBCARSVEHICLE 10565
#define DIALOG_BUYDEALERCARS_CONFIRM 10566
#define DIALOG_BUYTRUCKVEHICLE 10567
#define DIALOG_BUYBOATVEHICLE 10594
#define DIALOG_BUYMOTORCYCLEVEHICLE 10568
#define DIALOG_BUYUCARSVEHICLE 10569
#define DIALOG_BUYCARSVEHICLE 10570
#define DIALOG_DEALER_MANAGE 10571
#define DIALOG_DEALER_VAULT 10572
#define DIALOG_DEALER_WITHDRAW 10573
#define DIALOG_DEALER_DEPOSIT 10574
#define DIALOG_DEALER_NAME 10575
#define DIALOG_DEALER_RESTOCK 10576
#define DIALOG_FIND_DEALER  10577
#define     LIMIT_PER_PLAYER    (3)

enum DealerVariabel
{
    dealerOwner[MAX_PLAYER_NAME],
    dealerName[128],
    dealerPrice,
    dealerType,
    dealerLocked,
    dealerMoney,
    Float:dealerPosX,
    Float:dealerPosY,
    Float:dealerPosZ,
    Float:dealerPosA,
    Float:dealerPointX,
    Float:dealerPointY,
    Float:dealerPointZ,
    Float:dealerPointA,
    dealerStock,
    dealerRestock,

    // Hooked by DealerRefresh
    dealerPickup,
    dealerPickupPoint,
    dealerMap,
    Text3D:dealerLabel,
    Text3D:dealerPointLabel,
};

new DealershipData[MAX_DEALERSHIP][DealerVariabel];
new Iterator:Dealer<MAX_DEALERSHIP>;

DealerSave(id)
{
    new cQuery[2248];
    format(cQuery, sizeof(cQuery), "UPDATE dealership SET owner='%s', name='%s', price='%d', type='%d', locked='%d', money='%d', stock='%d', posx='%f', posy='%f', posz='%f', posa='%f', pointx='%f', pointy='%f', pointz='%f', restock='%d' WHERE ID='%d'",
    DealershipData[id][dealerOwner],
    DealershipData[id][dealerName],
    DealershipData[id][dealerPrice],
    DealershipData[id][dealerType],
    DealershipData[id][dealerLocked],
    DealershipData[id][dealerMoney],
    DealershipData[id][dealerStock],
    DealershipData[id][dealerPosX],
    DealershipData[id][dealerPosY],
    DealershipData[id][dealerPosZ],
    DealershipData[id][dealerPosA],
    DealershipData[id][dealerPointX],
    DealershipData[id][dealerPointY],
    DealershipData[id][dealerPointZ],
    DealershipData[id][dealerRestock],
    id
    );
    return mysql_tquery(mMysql, cQuery);
}

DealerPointRefresh(id)
{
    if(id != -1)
    {
        if(IsValidDynamic3DTextLabel(DealershipData[id][dealerPointLabel]))
        DestroyDynamic3DTextLabel(DealershipData[id][dealerPointLabel]);

        if(IsValidDynamicPickup(DealershipData[id][dealerPickupPoint]))
            DestroyDynamicPickup(DealershipData[id][dealerPickupPoint]);

        new tstr[218];
        if(DealershipData[id][dealerPointX] != 0 && DealershipData[id][dealerPointY] != 0 && DealershipData[id][dealerPointZ] != 0)
        {
            format(tstr, sizeof(tstr), "[ID: %d]\n"WHITE_E"%s Dealership Vehicle Spawn Point", id, DealershipData[id][dealerName]);
            DealershipData[id][dealerPointLabel] = CreateDynamic3DTextLabel(tstr, COLOR_YELLOW, DealershipData[id][dealerPointX], DealershipData[id][dealerPointY], DealershipData[id][dealerPointZ], 5.0);
            DealershipData[id][dealerPickupPoint] = CreateDynamicPickup(1239, 23, DealershipData[id][dealerPointX], DealershipData[id][dealerPointY], DealershipData[id][dealerPointZ]);
        }
        else if(DealershipData[id][dealerPointX], DealershipData[id][dealerPointY], DealershipData[id][dealerPointZ] != 0)
        {
            format(tstr, sizeof(tstr), "[ID: %d]\n"WHITE_E"%s Dealership Vehicle Spawn Point", id, DealershipData[id][dealerName]);
            DealershipData[id][dealerPointLabel] = CreateDynamic3DTextLabel(tstr, COLOR_YELLOW, DealershipData[id][dealerPointX], DealershipData[id][dealerPointY], DealershipData[id][dealerPointZ], 5.0);
            DealershipData[id][dealerPickupPoint] = CreateDynamicPickup(1239, 23, DealershipData[id][dealerPointX], DealershipData[id][dealerPointY], DealershipData[id][dealerPointZ]);
        }
    }
}

DealerRefresh(id)
{
    if(id != -1)
    {       
        if(IsValidDynamic3DTextLabel(DealershipData[id][dealerLabel]))
            DestroyDynamic3DTextLabel(DealershipData[id][dealerLabel]);

        if(IsValidDynamicPickup(DealershipData[id][dealerPickup]))
            DestroyDynamicPickup(DealershipData[id][dealerPickup]);
            
        DestroyDynamicMapIcon(DealershipData[id][dealerMap]);

        new type[128];
        if(DealershipData[id][dealerType] == 1)
        {
            type= "Motorcycle";
        }
        else if(DealershipData[id][dealerType] == 2)
        {
            type= "Cars";
        }
        else if(DealershipData[id][dealerType] == 3)
        {
            type= "Unique Cars";
        }
        else if(DealershipData[id][dealerType] == 4)
        {
            type= "Jobs Cars";
        }
        else if(DealershipData[id][dealerType] == 5)
        {
            type= "Truck";
        }
        else if(DealershipData[id][dealerType] == 6)
        {
            type= "Boat";
        }
        else
        {
            type= "Unknown";
        }
        
        new tstr[218];
        if(DealershipData[id][dealerPosX] != 0 && DealershipData[id][dealerPosY] != 0 && DealershipData[id][dealerPosZ] != 0 && strcmp(DealershipData[id][dealerOwner], "-"))
        {
            format(tstr, sizeof(tstr), "[ID: %d]\n"WHITE_E"Name: {FFFF00}%s\n"WHITE_E"Owned by %s\nType: "YELLOW_E"%s\nStock: "YELLOW_E"%s\n"WHITE_E"Use "RED_E"Tekan {FF7F00}[ALT] "WHITE_E"untuk membeli Kendaraan disini.", id, DealershipData[id][dealerName], DealershipData[id][dealerOwner], type, DealershipData[id][dealerStock]);
            DealershipData[id][dealerLabel] = CreateDynamic3DTextLabel(tstr, COLOR_ORANGE, DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ], 5.0);
            DealershipData[id][dealerPickup] = CreateDynamicPickup(1239, 23, DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ]);
        }
        else if(DealershipData[id][dealerPosX] != 0 && DealershipData[id][dealerPosY] != 0 && DealershipData[id][dealerPosZ] != 0)
        {
            format(tstr, sizeof(tstr), "[ID: %d]\n"WHITE_E"This dealership for sell\nLocation: %s\nPrice: "GREEN_E"%s\n"WHITE_E"Type: "YELLOW_E"%s", id, GetLocation(DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ]), FormatMoney(DealershipData[id][dealerPrice]), type);
            DealershipData[id][dealerLabel] = CreateDynamic3DTextLabel(tstr, COLOR_ORANGE, DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ], 5.0);
            DealershipData[id][dealerPickup] = CreateDynamicPickup(1239, 23, DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ]);
        }
        
        if(DealershipData[id][dealerType] == 1)
        {
            DealershipData[id][dealerMap] = CreateDynamicMapIcon(DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ], 55, -1, -1, -1, -1, 70.0);
        }
        else if(DealershipData[id][dealerType] == 2)
        {
            DealershipData[id][dealerMap] = CreateDynamicMapIcon(DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ], 55, -1, -1, -1, -1, 70.0);
        }
        else if(DealershipData[id][dealerType] == 3)
        {
            DealershipData[id][dealerMap] = CreateDynamicMapIcon(DealershipData[id][dealerPosX], DealershipData[id][dealerPosY], DealershipData[id][dealerPosZ], 55, -1, -1, -1, -1, 70.0);
        }
        else if(DealershipData[id][dealerType] == 4)
        {
            DealershipData[id][dealerMap] = CreateDynamicMapIcon(DealershipData[id][dealerPosX], DealershipData[id][dealerPosX], DealershipData[id][dealerPosZ], 55, -1, -1, -1, -1, 70.0);
        }
        else if(DealershipData[id][dealerType] == 5)
        {
            DealershipData[id][dealerMap] = CreateDynamicMapIcon(DealershipData[id][dealerPosX], DealershipData[id][dealerPosX], DealershipData[id][dealerPosZ], 55, -1, -1, -1, -1, 70.0);
        }
        else if(DealershipData[id][dealerType] == 6)
        {
            DealershipData[id][dealerMap] = CreateDynamicMapIcon(DealershipData[id][dealerPosX], DealershipData[id][dealerPosX], DealershipData[id][dealerPosZ], 55, -1, -1, -1, -1, 70.0);
        }
        else
        {
            DestroyDynamicMapIcon(DealershipData[id][dealerMap]);
        }
        printf("[!]: DealerRefresh Called on Dealer ID %d", id);
    }
}

DealerReset(id)
{
    format(DealershipData[id][dealerOwner], MAX_PLAYER_NAME, "-");
    DestroyDynamicPickup(DealershipData[id][dealerPickup]);
    DestroyDynamicPickup(DealershipData[id][dealerPickupPoint]);
    DealershipData[id][dealerLocked] = 1;
    DealershipData[id][dealerMoney] = 0;
    DealershipData[id][dealerStock] = 0;
    DealershipData[id][dealerRestock] = 0;
    DealerRefresh(id);
}

PlayerOwnsDealership(playerid, id)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(id == -1) return 0;
    if(!strcmp(DealershipData[id][dealerOwner], pData[playerid][pName], true)) return 1;
    return 0;
}

Player_DealerCount(playerid)
{
    #if LIMIT_PER_PLAYER != 0
    new count;
    foreach(new i : Dealer)
    {
        if(PlayerOwnsDealership(playerid, i)) count++;
    }
    return count;
    #else
        return 0;
    #endif
}

epublic: DealerBuyVehicle(playerid, dealerid)
{
    if(dealerid <= -1 )
        return 0;

    switch(DealershipData[dealerid][dealerType])
    {
        case 1:
        {
            new str[1224];
            format(str, sizeof(str), ""WHITE_E"%s\t\t"LG_E"%s\n%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n",
            GetVehicleModelName(481), FormatMoney(GetDealerVehicleCost(481)),
            GetVehicleModelName(509), FormatMoney(GetDealerVehicleCost(509)),
            GetVehicleModelName(510), FormatMoney(GetDealerVehicleCost(510)),
            GetVehicleModelName(462), FormatMoney(GetDealerVehicleCost(462)),
            GetVehicleModelName(586), FormatMoney(GetDealerVehicleCost(586)),
            GetVehicleModelName(581), FormatMoney(GetDealerVehicleCost(581)),
            GetVehicleModelName(461), FormatMoney(GetDealerVehicleCost(461)),
            GetVehicleModelName(521), FormatMoney(GetDealerVehicleCost(521)),
            GetVehicleModelName(463), FormatMoney(GetDealerVehicleCost(463)),
            GetVehicleModelName(468), FormatMoney(GetDealerVehicleCost(468)),
            GetVehicleModelName(522), FormatMoney(GetDealerVehicleCost(522))
            );

            ShowPlayerDialog(playerid, DIALOG_BUYMOTORCYCLEVEHICLE, DIALOG_STYLE_LIST, "Motorcyle Dealership", str, "Buy", "Close");
        }
        case 2:
        {
            new str[1024];
            format(str, sizeof(str), ""WHITE_E"%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n",
            GetVehicleModelName(400), FormatMoney(GetDealerVehicleCost(400)),
            GetVehicleModelName(412), FormatMoney(GetDealerVehicleCost(412)),
            GetVehicleModelName(419), FormatMoney(GetDealerVehicleCost(419)),
            GetVehicleModelName(426), FormatMoney(GetDealerVehicleCost(426)),
            GetVehicleModelName(436), FormatMoney(GetDealerVehicleCost(436)),
            GetVehicleModelName(466), FormatMoney(GetDealerVehicleCost(466)),
            GetVehicleModelName(467), FormatMoney(GetDealerVehicleCost(467)),
            GetVehicleModelName(474), FormatMoney(GetDealerVehicleCost(474)),
            GetVehicleModelName(475), FormatMoney(GetDealerVehicleCost(475)),
            GetVehicleModelName(480), FormatMoney(GetDealerVehicleCost(480)),
            GetVehicleModelName(603), FormatMoney(GetDealerVehicleCost(603)),
            GetVehicleModelName(421), FormatMoney(GetDealerVehicleCost(421)),
            GetVehicleModelName(602), FormatMoney(GetDealerVehicleCost(602)),
            GetVehicleModelName(492), FormatMoney(GetDealerVehicleCost(492)),
            GetVehicleModelName(545), FormatMoney(GetDealerVehicleCost(545)),
            GetVehicleModelName(489), FormatMoney(GetDealerVehicleCost(489)),
            GetVehicleModelName(405), FormatMoney(GetDealerVehicleCost(405)),
            GetVehicleModelName(445), FormatMoney(GetDealerVehicleCost(445)),
            GetVehicleModelName(579), FormatMoney(GetDealerVehicleCost(579)),
            GetVehicleModelName(507), FormatMoney(GetDealerVehicleCost(507))
            );

            ShowPlayerDialog(playerid, DIALOG_BUYCARSVEHICLE, DIALOG_STYLE_LIST, "Cars Dealership", str, "Buy", "Close");
        }
        case 3:
        {
            new str[1024];
            format(str, sizeof(str), ""WHITE_E"%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n",
            GetVehicleModelName(483), FormatMoney(GetDealerVehicleCost(483)),
            GetVehicleModelName(534), FormatMoney(GetDealerVehicleCost(534)),
            GetVehicleModelName(535), FormatMoney(GetDealerVehicleCost(535)),
            GetVehicleModelName(536), FormatMoney(GetDealerVehicleCost(536)),
            GetVehicleModelName(558), FormatMoney(GetDealerVehicleCost(558)),
            GetVehicleModelName(559), FormatMoney(GetDealerVehicleCost(559)),
            GetVehicleModelName(560), FormatMoney(GetDealerVehicleCost(560)),
            GetVehicleModelName(561), FormatMoney(GetDealerVehicleCost(561)),
            GetVehicleModelName(562), FormatMoney(GetDealerVehicleCost(562)),
            GetVehicleModelName(565), FormatMoney(GetDealerVehicleCost(565)),
            GetVehicleModelName(575), FormatMoney(GetDealerVehicleCost(575)),
            GetVehicleModelName(576), FormatMoney(GetDealerVehicleCost(576))
            );

            ShowPlayerDialog(playerid, DIALOG_BUYUCARSVEHICLE, DIALOG_STYLE_LIST, "Unique Cars Dealership", str, "Buy", "Close");
        }
        case 4:
        {
            //Job Cars
            new str[1024];
            format(str, sizeof(str), ""WHITE_E"%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n",
            GetVehicleModelName(420), FormatMoney(GetDealerVehicleCost(420)),
            GetVehicleModelName(438), FormatMoney(GetDealerVehicleCost(438)),
            GetVehicleModelName(403), FormatMoney(GetDealerVehicleCost(403)),
            GetVehicleModelName(413), FormatMoney(GetDealerVehicleCost(413)),
            GetVehicleModelName(414), FormatMoney(GetDealerVehicleCost(414)),
            GetVehicleModelName(422), FormatMoney(GetDealerVehicleCost(422)),
            GetVehicleModelName(440), FormatMoney(GetDealerVehicleCost(440)),
            GetVehicleModelName(455), FormatMoney(GetDealerVehicleCost(455)),
            GetVehicleModelName(456), FormatMoney(GetDealerVehicleCost(456)),
            GetVehicleModelName(478), FormatMoney(GetDealerVehicleCost(478)),
            GetVehicleModelName(482), FormatMoney(GetDealerVehicleCost(482)),
            GetVehicleModelName(498), FormatMoney(GetDealerVehicleCost(498)),
            GetVehicleModelName(499), FormatMoney(GetDealerVehicleCost(499)),
            GetVehicleModelName(423), FormatMoney(GetDealerVehicleCost(423)),
            GetVehicleModelName(588), FormatMoney(GetDealerVehicleCost(588)),
            GetVehicleModelName(524), FormatMoney(GetDealerVehicleCost(524)),
            GetVehicleModelName(525), FormatMoney(GetDealerVehicleCost(525)),
            GetVehicleModelName(543), FormatMoney(GetDealerVehicleCost(543)),
            GetVehicleModelName(552), FormatMoney(GetDealerVehicleCost(552)),
            GetVehicleModelName(554), FormatMoney(GetDealerVehicleCost(554)),
            GetVehicleModelName(578), FormatMoney(GetDealerVehicleCost(578)),
            GetVehicleModelName(609), FormatMoney(GetDealerVehicleCost(609))
            //GetVehicleModelName(530), FormatMoney(GetDealerVehicleCost(530)) //fortklift
            );

            ShowPlayerDialog(playerid, DIALOG_BUYJOBCARSVEHICLE, DIALOG_STYLE_LIST, "Job Cars", str, "Buy", "Close");
        }
        case 5:
        {
            new str[1024];
            format(str, sizeof(str), ""WHITE_E"%s\t\t"LG_E"%s\n%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n",
            GetVehicleModelName(414), FormatMoney(GetDealerVehicleCost(414)),
            GetVehicleModelName(499), FormatMoney(GetDealerVehicleCost(499)),
            GetVehicleModelName(498), FormatMoney(GetDealerVehicleCost(498)),
            GetVehicleModelName(455), FormatMoney(GetDealerVehicleCost(455)),
            GetVehicleModelName(524), FormatMoney(GetDealerVehicleCost(524)),
            GetVehicleModelName(578), FormatMoney(GetDealerVehicleCost(578)),
            GetVehicleModelName(403), FormatMoney(GetDealerVehicleCost(403)),
            GetVehicleModelName(514), FormatMoney(GetDealerVehicleCost(514)),
            GetVehicleModelName(515), FormatMoney(GetDealerVehicleCost(515))
            );

            ShowPlayerDialog(playerid, DIALOG_BUYTRUCKVEHICLE, DIALOG_STYLE_LIST, "Truck Dealership", str, "Buy", "Close");
        }
        case 6:
        {
            new str[1024];
            format(str, sizeof(str), ""WHITE_E"%s\t\t"LG_E"%s\n%s\t\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n%s\t"LG_E"%s\n",
            GetVehicleModelName(446), FormatMoney(GetDealerVehicleCost(446)),
            GetVehicleModelName(493), FormatMoney(GetDealerVehicleCost(493)),
            GetVehicleModelName(484), FormatMoney(GetDealerVehicleCost(484)),
            GetVehicleModelName(453), FormatMoney(GetDealerVehicleCost(453))
            );

            ShowPlayerDialog(playerid, DIALOG_BUYBOATVEHICLE, DIALOG_STYLE_LIST, "Boat Dealership", str, "Buy", "Close");
        }
    }
    return 1;
}

GetDealerVehicleCost(carid)
{
    //Category Kendaraan Non Dealer
    if(carid == 434) return 1000000; //Hotknife
    if(carid == 502) return 1000000; //Hotring Racer
    if(carid == 495) return 1000000; //Sandking
    if(carid == 451) return 1000000; //Turismo
    if(carid == 470) return 5000000; //Patriot
    if(carid == 424) return 5000000; //BF Injection
    if(carid == 522) return 2800000; //Nrg
    if(carid == 411) return 1500000; //Infernus
    if(carid == 541) return 1400000; //Bullet
    if(carid == 504) return 1500000; //Bloodring Banger
    if(carid == 603) return 8000000; //Phoenix
    if(carid == 415) return 1000000; //Cheetah
    if(carid == 402) return 5000000; //Buffalo
    if(carid == 508) return 5000000; //Journey
    if(carid == 457) return 5000000; //Caddy
    if(carid == 471) return 5000000; //Quad
    
    //Category Kendaraan Bikes/Motor
    if(carid == 481) return 30000;  //Bmx
    if(carid == 509) return 35000; //Bike
    if(carid == 510) return 30000; //Mt bike
    if(carid == 463) return 1345000; //Freeway harley
    if(carid == 521) return 1000000; //Fcr 900
    if(carid == 461) return 1265000; //Pcj 600
    if(carid == 581) return 1365000; //Bf
    if(carid == 468) return 1650000; //Sancehz
    if(carid == 586) return 1220000; //Wayfare
    if(carid == 462) return 40000; //Faggio

    //Category Kendaraan Cars
    if(carid == 445) return 1000000; //Admiral
    if(carid == 496) return 1500000; //Blista Compact
    if(carid == 401) return 1250000; //Bravura
    if(carid == 518) return 1350000; //Buccaneer
    if(carid == 527) return 1330000; //Cadrona
    if(carid == 483) return 1400000; //Camper
    if(carid == 542) return 1850000; //Clover
    if(carid == 589) return 1835000; //Club
    if(carid == 507) return 1000000; //Elegant
    if(carid == 540) return 7950000; //Vincent
    if(carid == 585) return 8200000; //Emperor
    if(carid == 419) return 8100000; //Esperanto
    if(carid == 526) return 7000000; //Fortune
    if(carid == 466) return 1250000; //Glendale
    if(carid == 492) return 1260000; //Greenwood
    if(carid == 474) return 8800000; //Hermes
    if(carid == 546) return 8800000; //Intruder
    if(carid == 517) return 9900000; //Majestic
    if(carid == 410) return 7200000; //Manana
    if(carid == 551) return 7400000; //Merit
    if(carid == 516) return 8300000; //Nebula
    if(carid == 467) return 8800000; //Oceanic
    if(carid == 404) return 9500000; //Perenniel
    if(carid == 600) return 9000000; //Picador
    if(carid == 426) return 8200000; //Premier
    if(carid == 436) return 1230000; //Previon
    if(carid == 547) return 1080000; //Primo
    if(carid == 405) return 1170000; //Sentinel
    if(carid == 458) return 8000000; //Solair
    if(carid == 439) return 1280000; //Stallion
    if(carid == 550) return 1330000; //Sunrise
    if(carid == 566) return 7000000; //Tahoma
    if(carid == 549) return 9500000; //Tampa
    if(carid == 491) return 9600000; //Virgo
    if(carid == 412) return 9300000; //Voodoo
    if(carid == 421) return 8600000; //Washington
    if(carid == 529) return 8100000; //Willard
    if(carid == 555) return 1800000; //Windsor
    if(carid == 580) return 1200000; //Stafford
    if(carid == 475) return 1280000; //Sabre
    if(carid == 545) return 1380000; //Hustler

    //Category Kendaraan Lowriders
    if(carid == 536) return 1300000; //Blade
    if(carid == 575) return 1280000; //Broadway
    if(carid == 533) return 1330000; //Feltzer
    if(carid == 534) return 1280000; //Remington
    //if(carid == 567) return 1350000; //Savanna
    if(carid == 535) return 1380000; //Slamvan
    if(carid == 576) return 1320000; //Tornado
    if(carid == 566) return 1340000; //Tahoma
    if(carid == 412) return 1360000; //Voodoo

    //Category Kendaraan SUVS Cars
    if(carid == 579) return 1870000; //Huntley
    if(carid == 400) return 1380000; //Landstalker
    if(carid == 500) return 1750000; //Mesa
    if(carid == 489) return 2200000; //Rancher
    if(carid == 479) return 2220000; //Regina
    if(carid == 482) return 1520000; //Burrito
    if(carid == 418) return 1580000; //Moonbeam
    if(carid == 413) return 1560000; //Pony
    
    //Category Kendaraan Sports
    if(carid == 602) return 2650000; //Alpha
    if(carid == 429) return 2660000; //Banshee
    if(carid == 562) return 6820000; //Elegy
    if(carid == 587) return 2540000; //Euros
    if(carid == 565) return 2880000; //Flash
    if(carid == 559) return 4640000; //Jester
    if(carid == 561) return 3880000; //Stratum
    if(carid == 560) return 8200000; //Sultan
    if(carid == 506) return 1255000; //Super GT
    if(carid == 558) return 3880000; //Uranus
    if(carid == 477) return 4670000; //Zr-350
    if(carid == 480) return 3853000; //Comet
    if(carid == 420) return 1250000; //Taxi
    if(carid == 438) return 5000000; //Cabbie
    if(carid == 403) return 2500000; //Linerunner
    if(carid == 414) return 1300000; //Mule
    if(carid == 422) return 1200000; //Bobcat
    if(carid == 440) return 1200000; //Rumpo
    if(carid == 455) return 1850000; //Flatbead
    if(carid == 456) return 2200000; //Yankee
    if(carid == 478) return 1450000; //Walton
    if(carid == 498) return 1580000; //Boxville
    if(carid == 499) return 1550000; //Benson
    if(carid == 514) return 2520000; //Tanker
    if(carid == 515) return 3850000; //Roadtrain
    if(carid == 524) return 1580000; //Cement Truck
    if(carid == 525) return 8000000; //Towtruck
    if(carid == 543) return 1200000; //Sadler
    if(carid == 552) return 1600000; //Utility Van
    if(carid == 554) return 1850000; //Yosemite
    if(carid == 578) return 3000000; //DFT-30
    if(carid == 609) return 1800000; //Boxville
    if(carid == 423) return 1500000; //Mr Whoopee/Ice cream
    if(carid == 588) return 1620000; //Hotdog
    //boat vehicle
    if(carid == 446) return 5000000;
    if(carid == 493) return 9000000;
    if(carid == 484) return 4000000;
    if(carid == 453) return 5500000;
    return -1;
}

stock GetClosestDealerr(playerid, Float: range = 3.0)
{
    new id = -1, Float: dist = range, Float: tempdist;
    foreach(new i : Dealer)
    {
        tempdist = GetPlayerDistanceFromPoint(playerid, DealershipData[i][dealerPosX], DealershipData[i][dealerPosY], DealershipData[i][dealerPosZ]);

        if(tempdist > range) continue;
        if(tempdist <= dist && GetPlayerInterior(playerid) == DealershipData[i][dealerPointA] && GetPlayerVirtualWorld(playerid) == DealershipData[i][dealerPosA])
        {
            dist = tempdist;
            id = i;
        }
    }
    return id;
}

epublic: LoadDealership()
{
    static dealerid;
    
    new rows = cache_num_rows(), owner[128], name[128];
    if(rows)
    {
        for(new i; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID", dealerid);
            cache_get_value_name(i, "owner", owner);
            format(DealershipData[dealerid][dealerOwner], 128, owner);
            cache_get_value_name(i, "name", name);
            format(DealershipData[dealerid][dealerName], 128, name);
            cache_get_value_name_int(i, "type", DealershipData[dealerid][dealerType]);
            cache_get_value_name_int(i, "price", DealershipData[dealerid][dealerPrice]);
            cache_get_value_name_float(i, "posx", DealershipData[dealerid][dealerPosX]);
            cache_get_value_name_float(i, "posy", DealershipData[dealerid][dealerPosY]);
            cache_get_value_name_float(i, "posz", DealershipData[dealerid][dealerPosZ]);
            cache_get_value_name_float(i, "posa", DealershipData[dealerid][dealerPosA]);
            cache_get_value_name_int(i, "money", DealershipData[dealerid][dealerMoney]);
            cache_get_value_name_int(i, "locked", DealershipData[dealerid][dealerLocked]);
            cache_get_value_name_int(i, "stock", DealershipData[dealerid][dealerStock]);
            cache_get_value_name_float(i, "pointx", DealershipData[dealerid][dealerPointX]);
            cache_get_value_name_float(i, "pointy", DealershipData[dealerid][dealerPointY]);
            cache_get_value_name_float(i, "pointz", DealershipData[dealerid][dealerPointZ]);
            cache_get_value_name_int(i, "restock", DealershipData[dealerid][dealerRestock]);
            DealerRefresh(dealerid);
            DealerPointRefresh(dealerid);
            Iter_Add(Dealer, dealerid);
        }
        printf("[Dynamic Dealership] Number of Loaded: %d.", rows);
    }
}

CMD:editdealer(playerid, params[])
{
    static
        did,
        type[24],
        string[128];

    if(admin_level[playerid] < 6)
        return PermissionError(playerid);

    if(sscanf(params, "ds[24]S()[128]", did, type, string))
    {
        Info(playerid, "/editdealer [id] [name]");
        SendClientMessage(playerid, COLOR_YELLOW, "[NAMES]:{FFFFFF} location, point, price, type, stock, restock, reset");
        return 1;
    }
    if((did < 0 || did > MAX_DEALERSHIP))
        return Error(playerid, "You have specified an invalid ID.");

    if(!Iter_Contains(Dealer, did)) return Error(playerid, "The dealership you specified ID of doesn't exist.");

    if(!strcmp(type, "location", true))
    {
        GetPlayerPos(playerid, DealershipData[did][dealerPosX], DealershipData[did][dealerPosY], DealershipData[did][dealerPosZ]);
        GetPlayerFacingAngle(playerid, DealershipData[did][dealerPosA]);
        DealerSave(did);
        DealerRefresh(did);

        SendAdminMessageEx(COLOR_RED, "%s Changes Location Dealer ID: %d.", pData[playerid][pAname], did);
    }
    else if(!strcmp(type, "price", true))
    {
        new price;

        if(sscanf(string, "d", price))
            return Info(playerid, "/editdealer [id] [Price] [Amount]");

        DealershipData[did][dealerPrice] = price;

        DealerSave(did);
        DealerRefresh(did);
        SendAdminMessageEx(COLOR_RED, "%s Changes Price Of The Dealer ID: %d to %d.", pData[playerid][pAname], did, price);
    }
    else if(!strcmp(type, "type", true))
    {
        new dtype;

        if(sscanf(string, "d", dtype))
            return Info(playerid, "/editbisnis [id] [Type] [1.Motorcycle 2.Cars 3.Unique Cars 4.Job Cars 5.Truck 6.Boat]");

        DealershipData[did][dealerType] = dtype;
        DealerSave(did);
        DealerRefresh(did);
        SendAdminMessageEx(COLOR_RED, "%s Changes Type Of The Dealer ID: %d to %d.", pData[playerid][pAname], did, dtype);
    }
    else if(!strcmp(type, "stock", true))
    {
        new dStock;
        if(sscanf(string, "d", dStock))
            return Info(playerid, "/editdealer [id] [stock]");

        DealershipData[did][dealerStock] = dStock;
        DealerSave(did);
        DealerRefresh(did);
        SendAdminMessageEx(COLOR_RED, "%s Set Stock Of The Dealer ID: %d with stock %d.", pData[playerid][pAname], did, dStock);
    }
    else if(!strcmp(type, "reset", true))
    {
        DealerReset(did);
        DealerSave(did);
        DealerRefresh(did);
        SendAdminMessageEx(COLOR_RED, "%s has reset dealer ID: %d.", pData[playerid][pAname], did);
    }
    else if(!strcmp(type, "point", true))
    {
        new Float:x, Float:y, Float:z, Float:a;
        GetPlayerPos(playerid, x, y, z);
        GetPlayerFacingAngle(playerid, Float:a);
        DealershipData[did][dealerPointX] = x;
        DealershipData[did][dealerPointY] = y;
        DealershipData[did][dealerPointZ] = z;
        DealerSave(did);
        DealerPointRefresh(did);
        SendAdminMessageEx(COLOR_RED, "%s Change Point Of The Dealer ID: %d.", pData[playerid][pAname], did);
    }
    return 1;
}

CMD:buydealer(playerid, params[])
{
    foreach(new dealerid : Dealer)
    {
        if(IsPlayerInRangeOfPoint(playerid, 2.5, DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ]))
        {
            if(DealershipData[dealerid][dealerPrice] > GetPlayerMoney(playerid)) 
                return Error(playerid, "Not enough money, you can't afford this dealership.");

            if(strcmp(DealershipData[dealerid][dealerOwner], "-")) 
                return Error(playerid, "Someone already owns this dealership.");

            if(pData[playerid][pVip] == 1)
            {
                #if LIMIT_PER_PLAYER > 0
                if(Player_DealerCount(playerid) + 1 > 1) return Error(playerid, "You can't buy any more dealership.");
                #endif
            }
            else if(pData[playerid][pVip] == 2)
            {
                #if LIMIT_PER_PLAYER > 0
                if(Player_DealerCount(playerid) + 1 > 1) return Error(playerid, "You can't buy any more dealership.");
                #endif
            }
            else if(pData[playerid][pVip] == 3)
            {
                #if LIMIT_PER_PLAYER > 0
                if(Player_DealerCount(playerid) + 1 > 1) return Error(playerid, "You can't buy any more dealership.");
                #endif
            }
            else
            {
                #if LIMIT_PER_PLAYER > 0
                if(Player_DealerCount(playerid) + 1 > 1) return Error(playerid, "You can't buy any more dealership.");
                #endif
            }

            GivePlayerMoneyEx(playerid, -DealershipData[dealerid][dealerPrice], "BuyDealer");
            GetPlayerName(playerid, DealershipData[dealerid][dealerOwner], MAX_PLAYER_NAME);
            
            DealerRefresh(dealerid);
            DealerSave(dealerid);
        }
    }
    return 1;
}

CMD:createdealer(playerid, params[])
{
    if(admin_level[playerid] < 6)
        return PermissionError(playerid);
    
    new query[512];
    new dealerid = Iter_Free(Dealer), address[128];

    new price, type;
    if(sscanf(params, "dd", price, type))
        return Info(playerid, "/createdealer [price] [type 1.Motorcycle 2.Cars 3.Unique Cars 4. JobsVehicle 5.Truck 6.Boat]");

    if(dealerid == -1) 
        return Error(playerid, "You cant create more dealership");

    if((dealerid < 0 || dealerid >= MAX_DEALERSHIP))
        return Error(playerid, "You have already input 15 dealership in this server.");

    if(type > 6 || type < 0)
        return Error(playerid, "Invalid dealership Type");

    format(DealershipData[dealerid][dealerOwner], 128, "-");
    GetPlayerPos(playerid, DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ]);
    GetPlayerFacingAngle(playerid, DealershipData[dealerid][dealerPosA]);

    DealershipData[dealerid][dealerPrice] = price;
    DealershipData[dealerid][dealerType] = type;

    address = GetLocation(DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ]);
    format(DealershipData[dealerid][dealerName], 128, address);

    DealershipData[dealerid][dealerLocked] = 1;
    DealershipData[dealerid][dealerMoney] = 0;
    DealershipData[dealerid][dealerStock] = 50;
    DealershipData[dealerid][dealerRestock] = 0;

    Iter_Add(Dealer, dealerid);

    mysql_format(mMysql, query, sizeof(query), "INSERT INTO dealership SET ID='%d', owner='%s', price='%d', type='%d', posx='%f', posy='%f', posz='%f', posa='%f', name='%s'", dealerid, DealershipData[dealerid][dealerOwner], DealershipData[dealerid][dealerPrice], DealershipData[dealerid][dealerType], DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ], DealershipData[dealerid][dealerPosA], DealershipData[dealerid][dealerName]);
    mysql_tquery(mMysql, query, "OnDealerCreated", "i", dealerid);
    return 1;
}

epublic: OnDealerCreated(dealerid)
{
    DealerRefresh(dealerid);
    DealerSave(dealerid);
    return 1;
}

CMD:deletedealer(playerid, params[])
{
    if(admin_level[playerid] < 6)
        return PermissionError(playerid);

    new dealerid;

    if(sscanf(params, "d", dealerid))
        return Info(playerid, "/deletedealer [id]");

    if(dealerid < 0 || dealerid >= MAX_DEALERSHIP)
        return Error(playerid, "You have specified an invalid ID.");

    if(!Iter_Contains(Dealer, dealerid)) 
        return Error(playerid, "The dealership you specified ID of doesn't exist.");

    DealerReset(dealerid);
        
    DestroyDynamic3DTextLabel(DealershipData[dealerid][dealerLabel]);
    DestroyDynamic3DTextLabel(DealershipData[dealerid][dealerPointLabel]);

    DestroyDynamicPickup(DealershipData[dealerid][dealerPickup]);
    DestroyDynamicPickup(DealershipData[dealerid][dealerPickupPoint]);
        
    DealershipData[dealerid][dealerPosX] = 0;
    DealershipData[dealerid][dealerPosY] = 0;
    DealershipData[dealerid][dealerPosZ] = 0;
    DealershipData[dealerid][dealerPosA] = 0;
    DealershipData[dealerid][dealerPointX] = 0;
    DealershipData[dealerid][dealerPointY] = 0;
    DealershipData[dealerid][dealerPointZ] = 0;
    DealershipData[dealerid][dealerPrice] = 0;
    DealershipData[dealerid][dealerLabel] = Text3D:INVALID_3DTEXT_ID;
    DealershipData[dealerid][dealerPointLabel] = Text3D:INVALID_3DTEXT_ID;
    DealershipData[dealerid][dealerPickup] = -1;
    DealershipData[dealerid][dealerPickupPoint] = -1;
        
    Iter_Remove(Dealer, dealerid);
    new query[128];
    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dealership WHERE ID=%d", dealerid);
    mysql_tquery(mMysql, query);
    SendAdminMessageEx(COLOR_RED, "%s has delete dealership ID: %d.", pData[playerid][pAname], dealerid);
    return 1;
}

CMD:gotodealer(playerid, params[])
{
    if(admin_level[playerid] < 6)
        return PermissionError(playerid);

    new dealerid;

    if(sscanf(params, "d", dealerid))
        return Info(playerid, "/gotodealer [id]");

    if(dealerid < 0 || dealerid >= MAX_DEALERSHIP)
        return Error(playerid, "You have specified an invalid ID.");

    if(!Iter_Contains(Dealer, dealerid)) 
        return Error(playerid, "The dealership you specified ID of doesn't exist.");

    SetPlayerPos(playerid, DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ]);
    SetPlayerFacingAngle(playerid, DealershipData[dealerid][dealerPosA]);
        
    Servers(playerid, "You has teleport to dealership id %d", dealerid);
    return 1;
}

CMD:gotodealerpoint(playerid, params[])
{
    if(admin_level[playerid] < 6)
        return PermissionError(playerid);

    new dealerid;

    if(sscanf(params, "d", dealerid))
        return Info(playerid, "/gotodealerpoint [id]");

    if(dealerid < 0 || dealerid >= MAX_DEALERSHIP)
        return Error(playerid, "You have specified an invalid ID.");

    if(!Iter_Contains(Dealer, dealerid)) 
        return Error(playerid, "The dealership you specified ID of doesn't exist.");

    if(DealershipData[dealerid][dealerPointX] == 0.0 && DealershipData[dealerid][dealerPointY] == 0.0 && DealershipData[dealerid][dealerPointZ] == 0.0)
        return Error(playerid, "That point is exists but doesnt have any position");

    SetPlayerPos(playerid, DealershipData[dealerid][dealerPointX], DealershipData[dealerid][dealerPointY], DealershipData[dealerid][dealerPointZ]);
        
    Servers(playerid, "You has teleport to dealership id %d", dealerid);
    return 1;
}

CMD:dealermanage(playerid, params[])
{
    foreach(new dealerid : Dealer)
    {
        if(IsPlayerInRangeOfPoint(playerid, 2.5, DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ]))
        {
            if(!PlayerOwnsDealership(playerid, dealerid)) return Error(playerid, "Dealership ini bukan milik anda!");
            ShowPlayerDialog(playerid, DIALOG_DEALER_MANAGE, DIALOG_STYLE_LIST, "Dealer Manage", "Dealer Information\nDealer Change Name\nDealer Vault\nDealer RequestStock", "Select", "Cancel");
        }
    }
    return 1;
}

CMD:gpsdealer(playerid)
{
    new
    han2[MAX_DEALERSHIP * 32];

    han2 = "ID\tName\tType\tLocation\n";

    new type[128];
    foreach(new dealerid : Dealer)
    {
        if(DealershipData[dealerid][dealerType] == 1)
        {
            type = "Motorcycle";
        }
        else if(DealershipData[dealerid][dealerType] == 2)
        {
            type = "Cars";
        }
        else if(DealershipData[dealerid][dealerType] == 3)
        {
            type = "Unique Cars";
        }
        else if(DealershipData[dealerid][dealerType] == 4)
        {
            type = "Job Cars";
        }
        else if(DealershipData[dealerid][dealerType] == 5)
        {
            type = "Truck";
        }
        else if(DealershipData[dealerid][dealerType] == 6)
        {
            type= "Boat";
        }
        else
        {
            type = "Unknow";
        }

        format(han2, sizeof(han2), "%s%d\t%s\t%s\t"RED_E"%.1f m\n", han2,
        dealerid, DealershipData[dealerid][dealerName], type, GetPlayerDistanceFromPoint(playerid, DealershipData[dealerid][dealerPosX], DealershipData[dealerid][dealerPosY], DealershipData[dealerid][dealerPosZ]));
    }
    ShowPlayerDialog(playerid, DIALOG_FIND_DEALER, DIALOG_STYLE_TABLIST_HEADERS, "Dealership Location", han2, "Select", "Close");
    return 1;
}

CMD:helpdealer(playerid)
{
    Info(playerid, "/gpsdealer /buydealer /dealermanage");
    return 1;
}