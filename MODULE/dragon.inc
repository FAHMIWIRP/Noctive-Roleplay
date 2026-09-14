// =============================
// ENUM DATA TOYS
// ============================
#include "MODULE/toy_enum.inc"
// =============================
// CONFIG
// =============================
#define DRAGON_COUNT 3
#define DRAGON_SLOT_START 5 // Slot 0 dipakai aduty, jadi kita pakai 5+

// =============================
// DATA DRAGON TOYS
// =============================
new DragonToys[DRAGON_COUNT][eToyData] = 
{
    {3528, 2, 0.064000, 0.082999, -0.034000, 0.0, 81.399971, 80.599983, 0.068998, 0.083998, 0.080999},
    {3528, 1, 0.155999, -0.187000, 0.295001, -159.300048, 0.0, 0.0, 0.25, 0.007999, 0.166998},
    {3528, 1, 0.155999, -0.187000, -0.345999, -21.599996, 0.0, 0.0, 0.25, 0.007999, 0.166998}
};

// =============================
// REMOVE DRAGON
// =============================
stock Dragon_Remove(playerid)
{
    for(new i = 0; i < DRAGON_COUNT; i++)
    {
        if(IsPlayerAttachedObjectSlotUsed(playerid, DRAGON_SLOT_START + i))
        {
            RemovePlayerAttachedObject(playerid, DRAGON_SLOT_START + i);
        }
    }
    return 1;
}

// =============================
// APPLY DRAGON
// =============================
stock Dragon_Apply(playerid)
{
    Dragon_Remove(playerid);

    for(new i = 0; i < DRAGON_COUNT; i++)
    {
        SetPlayerAttachedObject(
            playerid,
            DRAGON_SLOT_START + i,
            DragonToys[i][tModel],
            DragonToys[i][tBone],
            DragonToys[i][tX],
            DragonToys[i][tY],
            DragonToys[i][tZ],
            DragonToys[i][tRX],
            DragonToys[i][tRY],
            DragonToys[i][tRZ],
            DragonToys[i][tSX],
            DragonToys[i][tSY],
            DragonToys[i][tSZ]
        );
    }

    SendClientMessage(playerid, -1, "{FF0000}>> Dragon Developer set aktif!");
    return 1;
}

// =============================
// COMMAND DEVELOPER ONLY
// =============================
CMD:dragon(playerid, params[])
{
    if(admin_level[playerid] < 10)
        return SendClientMessage(playerid, 0xFF0000FF, "Cmd ini khusus Developer.");

    if(!IsPlayerConnected(playerid) || !IsPlayerLogged(playerid))
        return 1;

    if(IsPlayerAttachedObjectSlotUsed(playerid, DRAGON_SLOT_START))
    {
        Dragon_Remove(playerid);
        SendClientMessage(playerid, -1, "{FFFFFF}>> Dragon set dilepas.");
    }
    else
    {
        Dragon_Apply(playerid);
    }
    return 1;
}