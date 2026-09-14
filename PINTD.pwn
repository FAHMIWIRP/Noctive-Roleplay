#include <a_samp>

#define PIN_LENGTH 5
#define TDPIN_COUNT 27
#define PIN_SALT "GANTI_DENGAN_SALT_RAHASIA"

#define PIN_OFF     0
#define PIN_ENTER   1
#define PIN_CREATE  2
#define PIN_CONFIRM 3
#define PIN_OK      4

#define COLOR_WHITE -1
#define COLOR_RED   -16776961
#define COLOR_GREEN 16711935

// Satu array untuk slot digit + semua hiasan.
new PlayerText:TDPIN[MAX_PLAYERS][TDPIN_COUNT];

// Nama terpisah hanya untuk tombol.
new PlayerText:PIN1[MAX_PLAYERS];
new PlayerText:PIN2[MAX_PLAYERS];
new PlayerText:PIN3[MAX_PLAYERS];
new PlayerText:PIN4[MAX_PLAYERS];
new PlayerText:PIN5[MAX_PLAYERS];
new PlayerText:PIN6[MAX_PLAYERS];
new PlayerText:PIN7[MAX_PLAYERS];
new PlayerText:PIN8[MAX_PLAYERS];
new PlayerText:PIN9[MAX_PLAYERS];
new PlayerText:PIN0[MAX_PLAYERS];
new PlayerText:PINX[MAX_PLAYERS];
new PlayerText:PINDONE[MAX_PLAYERS];

// State PIN.
new PinInput[MAX_PLAYERS][PIN_LENGTH + 1];
new PinTempHash[MAX_PLAYERS];
new PinHash[MAX_PLAYERS];
new PinStage[MAX_PLAYERS];
new PinSalah[MAX_PLAYERS];

stock PlayerText:CreatePinSprite(playerid, const texture[], Float:x, Float:y, Float:w, Float:h, color, selectable)
{
    new PlayerText:td = CreatePlayerTextDraw(playerid, x, y, texture);
    PlayerTextDrawTextSize(playerid, td, w, h);
    PlayerTextDrawAlignment(playerid, td, 1);
    PlayerTextDrawColor(playerid, td, color);
    PlayerTextDrawSetShadow(playerid, td, 0);
    PlayerTextDrawSetOutline(playerid, td, 0);
    PlayerTextDrawBackgroundColor(playerid, td, 255);
    PlayerTextDrawFont(playerid, td, 4);
    PlayerTextDrawSetProportional(playerid, td, 1);
    PlayerTextDrawSetSelectable(playerid, td, selectable);
    return td;
}

stock PlayerText:CreatePinLabel(playerid, Float:x, Float:y, const text[], Float:letterX, Float:letterY, color)
{
    new PlayerText:td = CreatePlayerTextDraw(playerid, x, y, text);
    PlayerTextDrawLetterSize(playerid, td, letterX, letterY);
    PlayerTextDrawAlignment(playerid, td, 1);
    PlayerTextDrawColor(playerid, td, color);
    PlayerTextDrawSetShadow(playerid, td, 1);
    PlayerTextDrawSetOutline(playerid, td, 1);
    PlayerTextDrawBackgroundColor(playerid, td, 150);
    PlayerTextDrawFont(playerid, td, 1);
    PlayerTextDrawSetProportional(playerid, td, 1);
    return td;
}

stock Pin_Create(playerid)
{
    // Slot digit (TDPIN 0-4).
    TDPIN[playerid][0] = CreatePinLabel(playerid, 281.000, 154.000, "1", 0.349, 1.899, COLOR_WHITE);
    TDPIN[playerid][1] = CreatePinLabel(playerid, 291.000, 154.000, "2", 0.349, 1.899, COLOR_WHITE);
    TDPIN[playerid][2] = CreatePinLabel(playerid, 301.000, 154.000, "3", 0.349, 1.899, COLOR_WHITE);
    TDPIN[playerid][3] = CreatePinLabel(playerid, 312.000, 154.000, "4", 0.349, 1.899, COLOR_WHITE);
    TDPIN[playerid][4] = CreatePinLabel(playerid, 323.000, 154.000, "5", 0.349, 1.899, COLOR_WHITE);

    // Hiasan (TDPIN 5-26). Tidak pernah dipanggil satuan, jadi tidak butuh nama.
    TDPIN[playerid][5]  = CreatePinSprite(playerid, "LD_SPAC:white", 248.000, 146.000, 126.000, 198.000, 12582911, 0);
    TDPIN[playerid][6]  = CreatePinSprite(playerid, "LD_BEAT:chit", 242.000, 128.000, 37.000, 41.000, 12582911, 0);
    TDPIN[playerid][7]  = CreatePinSprite(playerid, "LD_BEAT:chit", 242.000, 321.000, 37.000, 41.000, 12582911, 0);
    TDPIN[playerid][8]  = CreatePinSprite(playerid, "LD_BEAT:chit", 343.000, 321.000, 37.000, 41.000, 12582911, 0);
    TDPIN[playerid][9]  = CreatePinSprite(playerid, "LD_BEAT:chit", 343.000, 128.000, 37.000, 41.000, 12582911, 0);
    TDPIN[playerid][10] = CreatePinSprite(playerid, "LD_SPAC:white", 259.000, 135.000, 104.000, 220.000, 12582911, 0);
    TDPIN[playerid][11] = CreatePinSprite(playerid, "LD_SPAC:white", 263.000, 148.000, 95.000, 27.000, -1788417, 0);
    TDPIN[playerid][12] = CreatePinSprite(playerid, "LD_SPAC:white", 263.000, 150.000, 95.000, 27.000, 1768516095, 0);
    TDPIN[playerid][13] = CreatePinSprite(playerid, "LD_SPAC:white", 312.000, 272.000, 53.000, 27.000, COLOR_WHITE, 0);
    TDPIN[playerid][14] = CreatePinLabel(playerid, 264.000, 210.000, "1", 0.368, 1.899, -1329275137);
    TDPIN[playerid][15] = CreatePinLabel(playerid, 292.000, 210.000, "2", 0.368, 1.899, -1329275137);
    TDPIN[playerid][16] = CreatePinLabel(playerid, 319.000, 210.000, "3", 0.368, 1.899, -1329275137);
    TDPIN[playerid][17] = CreatePinLabel(playerid, 347.000, 210.000, "4", 0.368, 1.899, -1329275137);
    TDPIN[playerid][18] = CreatePinLabel(playerid, 264.000, 243.000, "5", 0.368, 1.899, -1329275137);
    TDPIN[playerid][19] = CreatePinLabel(playerid, 292.000, 243.000, "6", 0.368, 1.899, -1329275137);
    TDPIN[playerid][20] = CreatePinLabel(playerid, 320.000, 243.000, "7", 0.368, 1.899, -1329275137);
    TDPIN[playerid][21] = CreatePinLabel(playerid, 348.000, 243.000, "8", 0.368, 1.899, -1329275137);
    TDPIN[playerid][22] = CreatePinLabel(playerid, 264.000, 275.000, "9", 0.368, 1.899, -1329275137);
    TDPIN[playerid][23] = CreatePinLabel(playerid, 292.000, 275.000, "0", 0.368, 1.899, -1329275137);
    TDPIN[playerid][24] = CreatePinLabel(playerid, 264.000, 317.000, "X", 0.398, 1.899, COLOR_WHITE);
    TDPIN[playerid][25] = CreatePinLabel(playerid, 317.000, 318.000, "DONE", 0.300, 1.500, COLOR_WHITE);
    TDPIN[playerid][26] = CreatePinLabel(playerid, 317.000, 278.000, "NOCTIVE", 0.300, 1.500, 512819199);

    // Tombol keypad (nama terpisah supaya click handler mudah dibaca).
    PIN1[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 256.000, 207.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN2[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 284.000, 207.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN3[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 312.000, 207.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN4[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 340.000, 207.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN5[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 256.000, 240.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN6[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 284.000, 240.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN7[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 312.000, 240.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN8[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 340.000, 240.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN9[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 256.000, 272.000, 25.000, 27.000, COLOR_WHITE, 1);
    PIN0[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 284.000, 272.000, 25.000, 27.000, COLOR_WHITE, 1);
    PINX[playerid]   = CreatePinSprite(playerid, "LD_SPAC:white", 257.000, 312.000, 25.000, 27.000, COLOR_RED, 1);
    PINDONE[playerid] = CreatePinSprite(playerid, "LD_SPAC:white", 300.000, 312.000, 65.000, 27.000, COLOR_GREEN, 1);
}

stock bool:Pin_IsActive(playerid)
{
    return (PinStage[playerid] >= PIN_ENTER && PinStage[playerid] <= PIN_CONFIRM);
}

stock Pin_UpdateSlots(playerid)
{
    new len = strlen(PinInput[playerid]);
    new text[2];

    for (new i = 0; i < PIN_LENGTH; i++)
    {
        text[0] = (i < len) ? '*' : '_';
        text[1] = 0;
        PlayerTextDrawSetString(playerid, TDPIN[playerid][i], text);
    }
}

stock Pin_Show(playerid)
{
    for (new i = 0; i < TDPIN_COUNT; i++) ShowPlayerTextDraw(playerid, TDPIN[playerid][i]);

    ShowPlayerTextDraw(playerid, PIN1[playerid]);
    ShowPlayerTextDraw(playerid, PIN2[playerid]);
    ShowPlayerTextDraw(playerid, PIN3[playerid]);
    ShowPlayerTextDraw(playerid, PIN4[playerid]);
    ShowPlayerTextDraw(playerid, PIN5[playerid]);
    ShowPlayerTextDraw(playerid, PIN6[playerid]);
    ShowPlayerTextDraw(playerid, PIN7[playerid]);
    ShowPlayerTextDraw(playerid, PIN8[playerid]);
    ShowPlayerTextDraw(playerid, PIN9[playerid]);
    ShowPlayerTextDraw(playerid, PIN0[playerid]);
    ShowPlayerTextDraw(playerid, PINX[playerid]);
    ShowPlayerTextDraw(playerid, PINDONE[playerid]);

    Pin_UpdateSlots(playerid);

    // Warna hover tombol (hijau seperti di screenshot).
    SelectTextDraw(playerid, COLOR_GREEN);
}

stock Pin_Hide(playerid)
{
    for (new i = 0; i < TDPIN_COUNT; i++) PlayerTextDrawHide(playerid, TDPIN[playerid][i]);

    PlayerTextDrawHide(playerid, PIN1[playerid]);
    PlayerTextDrawHide(playerid, PIN2[playerid]);
    PlayerTextDrawHide(playerid, PIN3[playerid]);
    PlayerTextDrawHide(playerid, PIN4[playerid]);
    PlayerTextDrawHide(playerid, PIN5[playerid]);
    PlayerTextDrawHide(playerid, PIN6[playerid]);
    PlayerTextDrawHide(playerid, PIN7[playerid]);
    PlayerTextDrawHide(playerid, PIN8[playerid]);
    PlayerTextDrawHide(playerid, PIN9[playerid]);
    PlayerTextDrawHide(playerid, PIN0[playerid]);
    PlayerTextDrawHide(playerid, PINX[playerid]);
    PlayerTextDrawHide(playerid, PINDONE[playerid]);

    CancelSelectTextDraw(playerid);
}

stock Pin_AddDigit(playerid, digit)
{
    new len = strlen(PinInput[playerid]);
    if (len >= PIN_LENGTH) return;

    PinInput[playerid][len] = digit + '0';
    PinInput[playerid][len + 1] = 0;

    Pin_UpdateSlots(playerid);
}

stock Pin_Backspace(playerid)
{
    new len = strlen(PinInput[playerid]);
    if (len == 0) return;

    PinInput[playerid][len - 1] = 0;
    Pin_UpdateSlots(playerid);
}

stock Pin_Hash(const input[])
{
    new salted[128];
    format(salted, sizeof(salted), "%s%s", PIN_SALT, input);

    new hash = 5381;
    new len = strlen(salted);

    for (new i = 0; i < len; i++)
    {
        hash = (hash * 33) + salted[i];
    }

    if (hash == 0) hash = 1;
    return hash;
}

stock Pin_Request(playerid)
{
    if (!IsPlayerConnected(playerid)) return;
    if (Pin_IsActive(playerid)) Pin_Hide(playerid);

    PinInput[playerid][0] = 0;
    PinSalah[playerid] = 0;

    if (PinHash[playerid] != 0)
    {
        PinStage[playerid] = PIN_ENTER;
        SendClientMessage(playerid, COLOR_WHITE, "Masukkan PIN Anda menggunakan mouse.");
    }
    else
    {
        PinStage[playerid] = PIN_CREATE;
        SendClientMessage(playerid, COLOR_WHITE, "Buat PIN 5 angka. Gunakan mouse pada keypad.");
    }

    Pin_Show(playerid);
    TogglePlayerControllable(playerid, false);
}

stock Pin_Accept(playerid)
{
    PinStage[playerid] = PIN_OK;
    PinInput[playerid][0] = 0;

    Pin_Hide(playerid);
    TogglePlayerControllable(playerid, true);

    SendClientMessage(playerid, COLOR_GREEN, "PIN diterima. Anda dapat bergerak.");
}

stock Pin_Submit(playerid)
{
    if (!Pin_IsActive(playerid)) return;

    if (strlen(PinInput[playerid]) != PIN_LENGTH)
    {
        SendClientMessage(playerid, COLOR_RED, "PIN harus 5 angka.");
        return;
    }

    if (PinStage[playerid] == PIN_CREATE)
    {
        PinTempHash[playerid] = Pin_Hash(PinInput[playerid]);
        PinInput[playerid][0] = 0;
        Pin_UpdateSlots(playerid);

        PinStage[playerid] = PIN_CONFIRM;
        SendClientMessage(playerid, COLOR_WHITE, "Masukkan ulang PIN yang sama untuk konfirmasi.");
        return;
    }

    if (PinStage[playerid] == PIN_CONFIRM)
    {
        if (Pin_Hash(PinInput[playerid]) == PinTempHash[playerid])
        {
            PinHash[playerid] = PinTempHash[playerid];
            // TODO: simpan PinHash[playerid] ke database/file di sini.

            SendClientMessage(playerid, COLOR_GREEN, "PIN berhasil dibuat.");
            Pin_Accept(playerid);
        }
        else
        {
            PinTempHash[playerid] = 0;
            PinInput[playerid][0] = 0;
            Pin_UpdateSlots(playerid);

            PinStage[playerid] = PIN_CREATE;
            SendClientMessage(playerid, COLOR_RED, "Konfirmasi PIN tidak sama. Silakan buat PIN kembali.");
        }
        return;
    }

    if (PinStage[playerid] == PIN_ENTER)
    {
        if (Pin_Hash(PinInput[playerid]) == PinHash[playerid])
        {
            Pin_Accept(playerid);
        }
        else
        {
            PinSalah[playerid]++;

            if (PinSalah[playerid] >= 3)
            {
                SendClientMessage(playerid, COLOR_RED, "Anda dikick karena 3 kali salah PIN.");
                Pin_Hide(playerid);
                SetTimerEx("KickDelayed", 1000, false, "i", playerid);
            }
            else
            {
                PinInput[playerid][0] = 0;
                Pin_UpdateSlots(playerid);

                new msg[128];
                format(msg, sizeof(msg), "PIN salah. Sisa kesempatan: %d.", 3 - PinSalah[playerid]);
                SendClientMessage(playerid, COLOR_RED, msg);
            }
        }
    }
}

forward KickDelayed(playerid);
public KickDelayed(playerid)
{
    if (IsPlayerConnected(playerid)) Kick(playerid);
}

public OnPlayerConnect(playerid)
{
    Pin_Create(playerid);

    PinInput[playerid][0] = 0;
    PinTempHash[playerid] = 0;
    PinHash[playerid] = 0;
    PinStage[playerid] = PIN_OFF;
    PinSalah[playerid] = 0;

    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    if (Pin_IsActive(playerid)) Pin_Hide(playerid);

    PinStage[playerid] = PIN_OFF;
    return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    if (!Pin_IsActive(playerid)) return 0;

    if (playertextid == PIN1[playerid]) Pin_AddDigit(playerid, 1);
    else if (playertextid == PIN2[playerid]) Pin_AddDigit(playerid, 2);
    else if (playertextid == PIN3[playerid]) Pin_AddDigit(playerid, 3);
    else if (playertextid == PIN4[playerid]) Pin_AddDigit(playerid, 4);
    else if (playertextid == PIN5[playerid]) Pin_AddDigit(playerid, 5);
    else if (playertextid == PIN6[playerid]) Pin_AddDigit(playerid, 6);
    else if (playertextid == PIN7[playerid]) Pin_AddDigit(playerid, 7);
    else if (playertextid == PIN8[playerid]) Pin_AddDigit(playerid, 8);
    else if (playertextid == PIN9[playerid]) Pin_AddDigit(playerid, 9);
    else if (playertextid == PIN0[playerid]) Pin_AddDigit(playerid, 0);
    else if (playertextid == PINX[playerid]) Pin_Backspace(playerid);
    else if (playertextid == PINDONE[playerid]) Pin_Submit(playerid);
    else return 0;

    return 1;
}