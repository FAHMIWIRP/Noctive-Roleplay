#if defined _we_snowfalling_included
    #endinput
#endif

#define _we_snowfalling_included
#pragma library we_snowfalling

/**
  * Variables
 */
static
    snowObject[MAX_PLAYERS],
    snowFallingTimer[MAX_PLAYERS],

    bool: snowFallingStatus[MAX_PLAYERS];

/**
  * Callbacks
 */
forward __Winter_SnowFallingTimer(playerid);
public __Winter_SnowFallingTimer(playerid)
{
    if (!Winter_GetSnowflakeStatus(playerid))
        return 1;

    if (GetPlayerInterior(playerid) != 0 || GetPlayerVirtualWorld(playerid) != 0)
        return 1;

    new Float:x, Float:y, Float:z;
    GetPlayerCameraPos(playerid, x, y, z);

    MovePlayerObject(
        playerid,
        snowObject[playerid],
        x,
        y,
        z - 2.5,
        4000.0
    );

    return 1;
}

/**
  * Functions
 */
stock Winter_GetSnowflakeStatus(playerid)
{
    return snowFallingStatus[playerid];
}

stock Winter_SetSnowflakeStatus(playerid, bool:status)
{
    if (!status)
    {
        snowFallingStatus[playerid] = false;
        DestroyPlayerObject(playerid, snowObject[playerid]);
        KillTimer(snowFallingTimer[playerid]);
        return 1;
    }

    new Float:x, Float:y, Float:z;
    GetPlayerCameraPos(playerid, x, y, z);

    snowObject[playerid] = CreatePlayerObject(
        playerid,
        18864,
        x + random(25),
        y + random(25),
        z - 5.0,
        0.0, 0.0, 0.0,
        300.0
    );

    snowFallingTimer[playerid] = SetTimerEx(
        "__Winter_SnowFallingTimer",
        500,
        true,
        "d",
        playerid
    );

    snowFallingStatus[playerid] = true;
    return 1;
}
