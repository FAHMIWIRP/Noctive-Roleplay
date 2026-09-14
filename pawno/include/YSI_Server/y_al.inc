#define MAX_OBJ_UP "{FFFF00}[INFO] {ffffff}Server Ini Menggunakan {00ff00}GameMode {ffffff}By"
#define MAX_OBJ_DOWN "{FFFF00}[INFO] {FF0000}> > {00FFFF}> > {FF0000}{ {00ff00}ALFIN#7492 {FF0000}* {00FFFF}NSRP STORE {FF0000}} {00FFFF}< < {FF0000}< <"
#define MAX_OBJ_ADV "{7289DA}[DISCORD] | | {ffffff}https://discord.gg/UxKxSxMUSr {7289DA} | |"

//ACTOR SYSTEM -ARIWIWIN14
#define SEM(%0,%1) SendClientMessage(%0,0xBFC0C200,%1) 					// SEM = Send Error Message by 	Myself
#define alfingans(%0,%1) for(new %0 = 0; %0 < %1; %0++)                      // Loop                     by 	Myself
#define IsNull(%1) ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))    // IsNull macro 			by 	Y_Less
#define strToLower(%0) \
    for(new i; %0[i] != EOS; ++i) \
        %0[i] = ('A' <= %0[i] <= 'Z') ? (%0[i] += 'a' - 'A') : (%0[i])  // strToLower 				by 	RyDeR`
#define RGBAToInt(%0,%1,%2,%3) \
	((16777216 * (%0)) + (65536 * (%1)) + (256 * (%2)) + (%3))          // RGBAToInt 				by 	RyDeR`
	#define MAX_EDITING_ACTOR    (100)

#define strcpy(%0,%1,%2) \
    strcat((%0[0] = '\0', %0), %1, %2)

/*
new ALFINST;
new ALFINOP;
*/

IsValidRoleplayName(const name[]) {
    if(!name[0] || strfind(name, "_") == -1)
        return 0;

    else for (new i = 0, len = strlen(name); i != len; i ++) {
    if((i == 0) && (name[i] < 'A' || name[i] > 'Z'))
            return 0;

        else if((i != 0 && i < len  && name[i] == '_') && (name[i + 1] < 'A' || name[i + 1] > 'Z'))
            return 0;

        else if((name[i] < 'A' || name[i] > 'Z') && (name[i] < 'a' || name[i] > 'z') && name[i] != '_' && name[i] != '.')
            return 0;
    }
    return 1;
}

//new DCC_Channel:alfinlist;
new DCC_Channel:unwhitelist;
enum E_WHITELIST // ENUM DATA
{
	pWhitelist,
	pAdmin
};
new pWData[MAX_PLAYERS][E_WHITELIST];
new File[128];
stock GetName(playerid)
{
    new name[ 64 ];
    GetPlayerName(playerid, name, sizeof( name ));
    return name;
}

/*
SendClientMessageEx(playerid, color, const text[], {Float, _}:...)
{
    static
        args,
            str[144];

    if((args = numargs()) == 3)
    {
            SendClientMessage(playerid, color, text);
    }
    else
    {
        while (--args >= 3)
        {
            #emit LCTRL 5
            #emit LOAD.alt args
            #emit SHL.C.alt 2
            #emit ADD.C 12
            #emit ADD
            #emit LOAD.I
            #emit PUSH.pri
        }
        #emit PUSH.S text
        #emit PUSH.C 144
        #emit PUSH.C str
        #emit PUSH.S 8
        #emit SYSREQ.C format
        #emit LCTRL 5
        #emit SCTRL 4

        SendClientMessage(playerid, color, str);

        #emit RETN
    }
    return 1;
}

forward CancelVote();
new OnVote;
new Voted[MAX_PLAYERS];
enum VOTES
{
	Vote[50],
	VoteY,
	VoteN,
}
new Voting[VOTES];
*/

#define red 0xFF0000FF
#define green 0x00FF00FF
#define yellow 0xFFFF00FF

#define RED_E 		"{FF0000}"
#define GREY_E 		"{BABABA}"
#define WHITE_E 	"{FFFFFF}"
#define LIMIT_PER_PLAYER 3

/* DEFINE FROM LRP */
#define Servers(%1,%2) SendClientMessage(%1, -1, "{7fffd4}SERVER: {ffffff}"%2)
#define Info(%1,%2) SendClientMessage(%1, -1, "{7fffd4}INFO: {ffffff}"%2)
#define Usage(%1,%2) SendClientMessage(%1, -1 , ">{7fffd4} KEGUNAAN: {ffffff}"%2)
#define Error(%1,%2) SendClientMessage(%1, -1, "{ff0000}ERROR: {ffffff}"%2)

#define dot "{F2F853}> {F0F0F0}"

#define MAX_WORKSHOP 100
#define MAX_WORKSHOP_EMPLOYEE 3
#define MAX_WORKSHOP_INT 7000
#define WS_MENU 1050

#define DIALOG_MY_WS 1051
#define DIALOG_PICKUPVEH 1052
#define DIALOG_TRACKPARK 1053
#define DIALOG_TRACKWS 1054
#define WS_SETNAME 1055
#define WS_SETOWNER 1056
#define WS_SETEMPLOYE 1057
#define WS_SETEMPLOYEE 1058
#define WS_SETOWNERCONFIRM 1059
#define WS_SETMEMBER 1060
#define WS_SETMEMBERE 1061
#define WS_MONEY 1062
#define WS_WITHDRAWMONEY 1063
#define WS_DEPOSITMONEY 1064
#define WS_COMPONENT 1065
#define WS_COMPONENT2 1066
#define WS_MATERIAL 1067
#define WS_MATERIAL2 1068

//ANTI DDOS ALFIN
#define ATTACK_TYPE_PLAYERID 1
#define ATTACK_TYPE_IP 2

/*
NearPlayer(playerid, targetid, Float:radius)
{
    static
        Float:fX,
        Float:fY,
        Float:fZ;

    GetPlayerPos(targetid, fX, fY, fZ);

    return (GetPlayerInterior(playerid) == GetPlayerInterior(targetid) && GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(targetid)) && IsPlayerInRangeOfPoint(playerid, radius, fX, fY, fZ);
}
*/