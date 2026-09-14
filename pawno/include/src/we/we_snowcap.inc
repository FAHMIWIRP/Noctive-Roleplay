#if defined _we_snowcap_included
    #endinput
#endif

#define _we_snowcap_included
#pragma library we_snowcap

/**
  * Variables
 */
const WINTER_SNOW_CAP_INDEX = 3;
static bool: snowCapStatus[MAX_PLAYERS];

/**
  * Functions
 */
stock Winter_GetSnowCapStatus(playerid)
{
    return snowCapStatus[playerid];
}

stock Winter_SetSnowCapStatus(playerid, bool:status)
{
    if (!status)
    {
        RemovePlayerAttachedObject(playerid, WINTER_SNOW_CAP_INDEX);
        snowCapStatus[playerid] = false;
        return 1;
    }

    SetPlayerAttachedObject(
        playerid,
        WINTER_SNOW_CAP_INDEX,
        19065,
        2,
        0.120000, 0.040000, -0.003500,
        0.0, 100.0, 100.0,
        1.4, 1.4, 1.4
    );

    snowCapStatus[playerid] = true;
    return 1;
}
