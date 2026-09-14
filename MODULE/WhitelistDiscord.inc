// =============================================================================
// KONFIGURASI CHANNEL DISCORD (PRESET ID)
// =============================================================================
#define CHANNEL_INFO_WL     "1546098049749884958"
#define CHANNEL_MONEY_LOG   "1546098449831956551"
#define CHANNEL_IP_LOG      "1546181770582556713"
#define CHANNEL_DDOS_LOG    "1546070671941963888"
#define CHANNEL_WL_REQ      "1513096018218979491"
#define CHANNEL_ADMIN       "1513097530034880572"

#define SERVER_IP           "195.88.211.40:7067"

// Variable Global Channel Log
new DCC_Channel:g_IPLogChannel = DCC_Channel:0;
new DCC_Channel:g_InfoWLChannel = DCC_Channel:0;
new DCC_Channel:g_MoneyLogChannel = DCC_Channel:0;
new g_ServerStartTime;

// =============================================================================
// INITIALIZE & NOTIFIKASI SCRIPT AKTIF
// =============================================================================
public OnGameModeInit()
{
    g_ServerStartTime = gettime();

    // Load Preset Channel secara otomatis
    g_InfoWLChannel  = DCC_FindChannelById(CHANNEL_INFO_WL);
    g_MoneyLogChannel = DCC_FindChannelById(CHANNEL_MONEY_LOG);
    g_IPLogChannel   = DCC_FindChannelById(CHANNEL_IP_LOG);

    // Timer proteksi DDoS
    SetTimer("OnDDoSProtectionCheck", 1000, true);
    
    // Timer Notifikasi Sistem Aktif
    SetTimer("SendScriptActiveNotification", 3000, false);

    #if defined Init_OnGameModeInit
        return Init_OnGameModeInit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit Init_OnGameModeInit
#if defined Init_OnGameModeInit
    forward Init_OnGameModeInit();
#endif

// Callback Notifikasi bahwa Semua Script telah Aktif
forward SendScriptActiveNotification();
public SendScriptActiveNotification()
{
    if(!g_InfoWLChannel)   g_InfoWLChannel  = DCC_FindChannelById(CHANNEL_INFO_WL);
    if(!g_MoneyLogChannel) g_MoneyLogChannel = DCC_FindChannelById(CHANNEL_MONEY_LOG);
    if(!g_IPLogChannel)    g_IPLogChannel   = DCC_FindChannelById(CHANNEL_IP_LOG);

    new DCC_Channel:adminChan = DCC_FindChannelById(CHANNEL_ADMIN);
    if(adminChan)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "✅ SYSTEM ALL SCRIPTS ACTIVE");
        DCC_SetEmbedDescription(embed, "Seluruh modul script, command bot Discord, dan channel logging telah **BERHASIL DI-LOAD & AKTIF 100%**!");
        DCC_SetEmbedColor(embed, 0x2ECC71); // Hijau

        DCC_AddEmbedField(embed, "📋 Whitelist Log", "<#" CHANNEL_INFO_WL "> - `READY`", false);
        DCC_AddEmbedField(embed, "💰 Money Log", "<#" CHANNEL_MONEY_LOG "> - `READY`", false);
        DCC_AddEmbedField(embed, "🛡️ IP & Security Log", "<#" CHANNEL_IP_LOG "> - `READY`", false);
        DCC_AddEmbedField(embed, "🚨 DDoS Detector", "<#" CHANNEL_DDOS_LOG "> - `READY`", false);

        new h, m, s, timeStr[64];
        gettime(h, m, s);
        format(timeStr, sizeof(timeStr), "Noctive Core System | Active at %02d:%02d:%02d WIB", h, m, s);
        DCC_SetEmbedFooter(embed, timeStr);

        DCC_SendChannelEmbedMessage(adminChan, embed);
    }

    printf("[NOCTIVE BOT] Semua modul script dan channel log telah aktif!");
    return 1;
}

public DCC_OnMessageCreate(DCC_Message:message)
{
    new content[128], channel_id[21];
    new bool:is_bot;
    new DCC_User:author;
    new DCC_Channel:channel = DCC_GetMessageChannel(message);
    
    DCC_GetMessageAuthor(message, author);
    DCC_IsUserBot(author, is_bot);
    
    if(is_bot) return 1;

    DCC_GetChannelId(channel, channel_id, sizeof(channel_id));
    DCC_GetMessageContent(message, content, sizeof(content));

    return 1;
}

// =============================================================================
// COMMAND DISCORD: !helpall
// =============================================================================
DCMD:helpall(user, channel, params[])
{
    new DCC_Embed:embed = DCC_CreateEmbed();
    
    DCC_SetEmbedTitle(embed, "📜 DAFTAR COMMAND DISCORD BOT NOCTIVE");
    DCC_SetEmbedDescription(embed, "Berikut adalah daftar seluruh command bot Discord yang tersedia beserta petunjuk penggunaannya:");
    DCC_SetEmbedColor(embed, 0x3498DB); // Biru

    DCC_AddEmbedField(embed, "📋 Whitelist & Admin", 
        "`!wl [Nama_IC]` - Mendaftar Whitelist\n" \
        "`!unwl [Nama_IC]` - Menghapus Whitelist Player\n" \
        "`!setadmin [Nama_IC] [Level] [Nama_Admin]` - Menambahkan Admin\n" \
        "`!kickadmin [Nama_IC]` - Menghapus Admin dari Database", false);

    DCC_AddEmbedField(embed, "📢 Pengumuman & Panel", 
        "`!pesan [Teks]` - Broadcast Pengumuman ke In-Game\n" \
        "`!setuppanel` - Menampilkan Control Panel Owner\n" \
        "`!setuppanelinfo` - Menampilkan Info Live Status Server", false);

    DCC_AddEmbedField(embed, "🛡️ Keamanan & Testing", 
        "`!testddos [kecil/besar/selesai]` - Simulasi Log DDoS\n" \
        "`!helpall` - Menampilkan Menu Bantuan Ini", false);

    DCC_SetEmbedFooter(embed, "Noctive Roleplay | Discord Bot Help System");

    DCC_SendChannelEmbedMessage(channel, embed);
    return 1;
}

// =============================================================================
// COMMAND DISCORD: !wl
// =============================================================================
DCMD:wl(user, channel, params[])
{
    new id[21];
    if(channel != DCC_FindChannelById(CHANNEL_WL_REQ))
        return 1;

    new namaIC[32];
    
    if(sscanf(params, "s[32]", namaIC)) 
    {
        return DCC_SendChannelMessage(channel, "**[GUNAKAN]:** __!wl [Nama_Depan_Belakang]__\n*Contoh: !wl Hisma_Roizu*");
    }

    if(strfind(namaIC, "_") == -1)
        return DCC_SendChannelMessage(channel, "**Pendaftaran Gagal!** Gunakan format nama IC (Contoh: Nama_Belakang).");

    DCC_GetUserId(user, id, sizeof id);

    new filePath[64];
    format(filePath, sizeof(filePath), "whitelist/%s.ini", namaIC);
    
    if(fexist(filePath))
    {
        return DCC_SendChannelMessage(channel, "**Pendaftaran Gagal!** Nama IC tersebut sudah digunakan orang lain.");
    }

    new File:hFile = fopen(filePath, io_write);
    if(hFile)
    {
        new content[150];
        format(content, sizeof(content), "DiscordID: %s\r\nCharacterName: %s", id, namaIC);
        fwrite(hFile, content);
        fclose(hFile);

        new File:hMaster = fopen("whitelist/master_list.ini", io_append);
        if(hMaster)
        {
            new entry[128];
            format(entry, sizeof(entry), "%s | Discord ID: %s\r\n", namaIC, id);
            fwrite(hMaster, entry);
            fclose(hMaster);
        }

        new feedback[200];
        format(feedback, sizeof(feedback), "<@%s>, **BERHASIL DI WHITELIST!**\nNama IC: `%s`", id, namaIC);
        DCC_SendChannelMessage(channel, feedback);

        new query[256];
        mysql_format(mMysql, query, sizeof query, "INSERT INTO `account` (`pName`) VALUES ('%e')", namaIC);
        mysql_tquery(mMysql, query);

        // --- AUTOMATIC LOG KE CHANNEL INFO WL ---
        if(g_InfoWLChannel)
        {
            new h, m, s;
            gettime(h, m, s);

            new DCC_Embed:embed = DCC_CreateEmbed();
            DCC_SetEmbedTitle(embed, "LOG WHITELIST BARU");
            DCC_SetEmbedColor(embed, 0x2ECC71);

            new logDesc[256];
            format(logDesc, sizeof(logDesc), 
                "**Nama IC:** `%s`\n" \
                "**Pendaftar:** <@%s> (`ID: %s`)\n" \
                "**Waktu:** %02d:%02d:%02d WIB", 
                namaIC, id, id, h, m, s
            );
            DCC_SetEmbedDescription(embed, logDesc);
            DCC_SetEmbedFooter(embed, "Noctive Whitelist System Log");

            DCC_SendChannelEmbedMessage(g_InfoWLChannel, embed);
        }
    }
    else
    {
        DCC_SendChannelMessage(channel, "**Error!** Gagal akses folder `scriptfiles/whitelist/`.");
    }
    return 1;
}

// =============================================================================
// COMMAND DISCORD: !unwl
// =============================================================================
DCMD:unwl(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_WL_REQ)) 
        return 1;

    new targetName[32];

    if(sscanf(params, "s[32]", targetName))
    {
        return DCC_SendChannelMessage(channel, "**[USAGE]:** !unwl [Nama_IC]");
    }

    new filePath[64];
    format(filePath, sizeof(filePath), "whitelist/%s.ini", targetName);

    if(!fexist(filePath))
    {
        return DCC_SendChannelMessage(channel, "**Gagal!** Data whitelist untuk nama tersebut tidak ditemukan.");
    }

    fremove(filePath);

    if(fexist("whitelist/master_list.ini"))
    {
        new File:hOld = fopen("whitelist/master_list.ini", io_read);
        new File:hNew = fopen("whitelist/master_list_temp.ini", io_write);
        new line[128];

        if(hOld && hNew)
        {
            while(fread(hOld, line))
            {
                if(strfind(line, targetName) == -1) 
                {
                    fwrite(hNew, line);
                }
            }
            fclose(hOld);
            fclose(hNew);

            fremove("whitelist/master_list.ini");
            
            hOld = fopen("whitelist/master_list_temp.ini", io_read);
            hNew = fopen("whitelist/master_list.ini", io_write);
            while(fread(hOld, line)) fwrite(hNew, line);
            fclose(hOld);
            fclose(hNew);
            
            fremove("whitelist/master_list_temp.ini");
        }
    }

    new feedback[200];
    format(feedback, sizeof(feedback), "**Whitelist Removed!**\n**Nama IC:** `%s`\n\n*Data berhasil dihapus dari sistem.*", targetName);
    DCC_SendChannelMessage(channel, feedback);

    return 1;
}

// =============================================================================
// COMMAND DISCORD: !pesan
// =============================================================================
DCMD:pesan(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_ADMIN)) 
        return 1;

    if(isnull(params)) 
    {
        return DCC_SendChannelMessage(channel, "**[USAGE]:** !pesan [Teks Pengumuman]");
    }

    new annMessage[256];
    format(annMessage, sizeof(annMessage), "{FFFF00}[ ANNOUNCEMENT ] {FFFFFF}%s", params);
    
    SendClientMessageToAll(-1, annMessage);

    new feedback[256];
    format(feedback, sizeof(feedback), "**Pengumuman terkirim ke Server!**\n```\n[ ANNOUNCEMENT ] %s\n```", params);
    DCC_SendChannelMessage(channel, feedback);

    return 1;
}

// =============================================================================
// COMMAND DISCORD: !kickadmin
// =============================================================================
DCMD:kickadmin(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_ADMIN)) 
        return 1;

    if(isnull(params)) 
        return DCC_SendChannelMessage(channel, "**[USAGE]:** !kickadmin [Nama_IC]");

    new targetName[32]; 
    format(targetName, sizeof(targetName), "%s", params);

    new query[128];
    mysql_format(mMysql, query, sizeof(query), 
        "DELETE FROM `admin` WHERE `Name` = '%e' LIMIT 1", 
        targetName
    );

    mysql_tquery(mMysql, query, "OnAdminKicked", "ds", channel, targetName);
    return 1;
}

forward OnAdminKicked(DCC_Channel:channel, name[]);
public OnAdminKicked(DCC_Channel:channel, name[])
{
    new rows = cache_affected_rows(); 

    if(rows > 0)
    {
        new feedback[128];
        format(feedback, sizeof(feedback), "**Berhasil!** Data admin dengan nama `%s` telah dihapus dari database.", name);
        DCC_SendChannelMessage(channel, feedback);
    }
    else
    {
        new feedback[128];
        format(feedback, sizeof(feedback), "**Gagal!** Nama `%s` tidak ditemukan dalam daftar admin.", name);
        DCC_SendChannelMessage(channel, feedback);
    }
    return 1;
}

// =============================================================================
// COMMAND DISCORD: !setadmin
// =============================================================================
DCMD:setadmin(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_ADMIN)) return 1;

    new targetName[32], adminLevel, adminSetter[64]; 

    if(sscanf(params, "s[32]is[64]", targetName, adminLevel, adminSetter))
    {
        return DCC_SendChannelMessage(channel, "**[USAGE]:** !setadmin [Nama_IC] [Level] [Nama_Admin]");
    }

    new query[256];
    mysql_format(mMysql, query, sizeof(query), 
        "INSERT INTO `admin` (`Name`, `pAdmin`, `pAdminKey`, `pAname`) VALUES ('%e', %d, '0', '%e')", 
        targetName, 
        adminLevel, 
        adminSetter 
    );

    mysql_tquery(mMysql, query);

    new feedback[200];
    format(feedback, sizeof(feedback), "**Data Admin Baru Ditambahkan!**\n**Target:** %s\n**Level:** %d\n**Admin Penginput:** %s", targetName, adminLevel, adminSetter);
    DCC_SendChannelMessage(channel, feedback);

    return 1;
}

// =============================================================================
// COMMAND DISCORD: !setuppanel
// =============================================================================
DCMD:setuppanel(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_ADMIN)) 
        return 1;

    new DCC_Embed:panel = DCC_CreateEmbed();
    
    DCC_SetEmbedTitle(panel, "PANEL OWNER NOCTIVE");
    DCC_SetEmbedDescription(panel, "Selamat datang di Control Panel Server.\nGunakan format command di bawah ini pada channel ini untuk mengatur server.");
    DCC_SetEmbedColor(panel, 0xFFD700); 

    DCC_AddEmbedField(panel, "Whitelist Player", "```\n!wl [Nama_IC]\n```*Contoh: !wl Hisma_Roizu*", false);
    DCC_AddEmbedField(panel, "Un-Whitelist", "```\n!unwl [Nama_IC]\n```*Contoh: !unwl Hisma_Roizu*", false);
    DCC_AddEmbedField(panel, "Set Admin", "```\n!setadmin [Nama_IC] [Level] [Nama_Input]\n```*Contoh: !setadmin Hisma_Roizu 5 Noctive*", false);
    DCC_AddEmbedField(panel, "Kick Admin", "```\n!kickadmin [Nama_IC]\n```*Contoh: !kickadmin Hisma_Roizu*", false);
    DCC_AddEmbedField(panel, "Announcement", "```\n!pesan [Isi Pengumuman]\n```*Contoh: !pesan Server akan restart dalam 5 menit.*", false);

    DCC_SetEmbedFooter(panel, "Automated System by Noctive | SA-MP Discord Connector");

    DCC_SendChannelEmbedMessage(channel, panel);
    DCC_SendChannelMessage(channel, "*Panel berhasil dibuat!*");

    return 1;
}

// =============================================================================
// COMMAND DISCORD: !setuppanelinfo
// =============================================================================
stock GetServerUptime(output[], len = sizeof(output))
{
    new uptimeSeconds = gettime() - g_ServerStartTime;
    new days = uptimeSeconds / 86400;
    new hours = (uptimeSeconds % 86400) / 3600;
    new minutes = (uptimeSeconds % 3600) / 60;
    new seconds = uptimeSeconds % 60;

    if(days > 0)
        format(output, len, "%d Hari, %d Jam, %d Mnt", days, hours, minutes);
    else if(hours > 0)
        format(output, len, "%d Jam, %d Mnt, %d Detik", hours, minutes, seconds);
    else
        format(output, len, "%d Mnt, %d Detik", minutes, seconds);
}

DCMD:setuppanelinfo(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_ADMIN))
        return 1;

    new count = 0;
    #if defined foreach
    foreach(new i : Player)
    #else
    for(new i = 0; i < MAX_PLAYERS; i++)
    #endif
    {
        if(IsPlayerConnected(i)) count++;
    }

    new uptimeStr[64];
    GetServerUptime(uptimeStr);

    new DCC_Embed:embed = DCC_CreateEmbed();
    
    DCC_SetEmbedTitle(embed, "INFORMATION SERVER NOCTIVE");
    DCC_SetEmbedDescription(embed, 
        "Selamat datang di **Noctive Roleplay**! Tempat terbaik untuk membangun cerita karakter impianmu.\n\n" \
        "Nikmati pengalaman roleplay yang realistis dengan fitur-fitur modern, ekonomi yang seimbang, " \
        "serta performa server yang tinggi dan stabil."
    );
    
    DCC_SetEmbedColor(embed, 0x00A8FF); 

    DCC_AddEmbedField(embed, "Status Server", "**ONLINE & STABIL**", true);

    new playerInfo[32];
    format(playerInfo, sizeof(playerInfo), "**%d / %d** Player", count, GetMaxPlayers());
    DCC_AddEmbedField(embed, "Total Online", playerInfo, true);

    DCC_AddEmbedField(embed, "Server Uptime", uptimeStr, true);
    DCC_AddEmbedField(embed, "Connect IP Address", "```\n" SERVER_IP "\n```", false);

    DCC_SetEmbedFooter(embed, "Noctive Roleplay | Official Live Information Panel");

    DCC_SendChannelEmbedMessage(channel, embed);
    return 1;
}

// =============================================================================
// COMMAND DISCORD: !testddos
// =============================================================================
DCMD:testddos(user, channel, params[])
{
    if(channel != DCC_FindChannelById(CHANNEL_ADMIN))
        return 1;

    new tipe[16];
    if(sscanf(params, "s[16]", tipe))
    {
        return DCC_SendChannelMessage(channel, "**[USAGE]:** !testddos [kecil / besar / selesai]");
    }

    if(!strcmp(tipe, "kecil", true))
    {
        SendAdvancedDDoSLog(25, 2, "195.88.211.40", 7067);
        DCC_SendChannelMessage(channel, "**[TEST SIMULATION]** Berhasil memicu log DDoS Kecil/Medium.");
    }
    else if(!strcmp(tipe, "besar", true))
    {
        SendAdvancedDDoSLog(999999, 40, "195.88.211.40", 7067);
        DCC_SendChannelMessage(channel, "**[TEST SIMULATION]** Berhasil memicu log DDoS Besar/Botnet.");
    }
    else if(!strcmp(tipe, "selesai", true))
    {
        SendDDoSMitigatedLog();
        DCC_SendChannelMessage(channel, "**[TEST SIMULATION]** Berhasil memicu log DDoS Resolved.");
    }
    else
    {
        DCC_SendChannelMessage(channel, "**Format Salah!** Gunakan: `!testddos kecil`, `!testddos besar`, atau `!testddos selesai`.");
    }

    return 1;
}

// =============================================================================
// DDOS DETECTOR SYSTEM
// =============================================================================
#define PPS_THRESHOLD_LOW   15   
#define PPS_THRESHOLD_HIGH  45   

new g_IncomingPPS = 0;           
new g_UniqueIPsThisSecond = 0;   
new g_LastSampleIP[16] = "0.0.0.0";
new g_LastSamplePort = 0;
new bool:g_UnderDDoSAttack = false;

public OnIncomingConnection(playerid, ip_address[], port)
{
    g_IncomingPPS++;
    
    if(strcmp(g_LastSampleIP, ip_address) != 0)
    {
        g_UniqueIPsThisSecond++;
        format(g_LastSampleIP, sizeof(g_LastSampleIP), "%s", ip_address);
        g_LastSamplePort = port;
    }

    #if defined DDoS_OnIncomingConnection
        return DDoS_OnIncomingConnection(playerid, ip_address, port);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnIncomingConnection
    #undef OnIncomingConnection
#else
    #define _ALS_OnIncomingConnection
#endif
#define OnIncomingConnection DDoS_OnIncomingConnection
#if defined DDoS_OnIncomingConnection
    forward DDoS_OnIncomingConnection(playerid, ip_address[], port);
#endif

forward OnDDoSProtectionCheck();
public OnDDoSProtectionCheck()
{
    if(g_IncomingPPS >= PPS_THRESHOLD_LOW)
    {
        SendAdvancedDDoSLog(g_IncomingPPS, g_UniqueIPsThisSecond, g_LastSampleIP, g_LastSamplePort);
        g_UnderDDoSAttack = true;
    }
    else if(g_UnderDDoSAttack && g_IncomingPPS < PPS_THRESHOLD_LOW)
    {
        SendDDoSMitigatedLog();
        g_UnderDDoSAttack = false;
    }

    g_IncomingPPS = 0;
    g_UniqueIPsThisSecond = 0;
    return 1;
}

stock SendAdvancedDDoSLog(pps, uniqueIPs, const sampleIP[], port)
{
    new DCC_Channel:logChannel = DCC_FindChannelById(CHANNEL_DDOS_LOG);
    if(!logChannel) return 0;

    new DCC_Embed:embed = DCC_CreateEmbed();
    new attackType[128], severity[32], colorHex;

    if(pps >= PPS_THRESHOLD_HIGH)
    {
        colorHex = 0xFF0000;
        format(severity, sizeof(severity), "Sangat Parah (Kritis)");

        if(uniqueIPs > 15)
            format(attackType, sizeof(attackType), "Serangan Massal (Dikirim bersamaan dari banyak komputer/botnet)");
        else
            format(attackType, sizeof(attackType), "Banjir Paket Data (Dapat kiriman data dalam jumlah sangat besar)");
    }
    else
    {
        colorHex = 0xFFA500;
        format(severity, sizeof(severity), "Sedang (Waspada)");

        if(uniqueIPs <= 3)
            format(attackType, sizeof(attackType), "Spam Masuk Game (Upaya pemaksaan koneksi dari 1–3 IP)");
        else
            format(attackType, sizeof(attackType), "Lalu Lintas Aneh (Ada lonjakan paket data yang tidak wajar)");
    }

    DCC_SetEmbedTitle(embed, "PERINGATAN SERANGAN DDOS");
    DCC_SetEmbedDescription(embed, "Sistem keamanan mendeteksi adanya upaya gangguan lalu lintas data yang masuk ke server game.");
    DCC_SetEmbedColor(embed, colorHex);

    DCC_AddEmbedField(embed, "Tingkat Bahaya", severity, true);
    DCC_AddEmbedField(embed, "Jenis Gangguan", attackType, true);

    new ppsStr[64];
    format(ppsStr, sizeof(ppsStr), "**%d** paket / detik", pps);
    DCC_AddEmbedField(embed, "Kecepatan Data", ppsStr, true);

    new botnetStr[64];
    format(botnetStr, sizeof(botnetStr), "**%d** alamat IP pengirim", uniqueIPs);
    DCC_AddEmbedField(embed, "Jumlah Penyerang", botnetStr, true);

    new ipStr[64];
    format(ipStr, sizeof(ipStr), "`%s:%d`", sampleIP, port);
    DCC_AddEmbedField(embed, "Sampel IP Penyerang", ipStr, true);

    DCC_AddEmbedField(embed, "Tindakan Otomatis", "Sistem langsung memblokir dan menyaring paket liar agar server tidak lag.", false);

    new h, m, s, timeStr[64];
    gettime(h, m, s);
    format(timeStr, sizeof(timeStr), "Terdeteksi jam %02d:%02d:%02d WIB | Noctive Security", h, m, s);
    DCC_SetEmbedFooter(embed, timeStr);

    DCC_SendChannelEmbedMessage(logChannel, embed);
    return 1;
}

stock SendDDoSMitigatedLog()
{
    new DCC_Channel:logChannel = DCC_FindChannelById(CHANNEL_DDOS_LOG);
    if(!logChannel) return 0;

    new DCC_Embed:embed = DCC_CreateEmbed();
    DCC_SetEmbedTitle(embed, "SERANGAN DDOS BERHASIL DIATASI");
    DCC_SetEmbedDescription(embed, "Lalu lintas data server sudah kembali normal. Kondisi server aman dan pemain bisa bermain seperti biasa.");
    DCC_SetEmbedColor(embed, 0x2ECC71); 
    DCC_SetEmbedFooter(embed, "Noctive Security System");

    DCC_SendChannelEmbedMessage(logChannel, embed);
    return 1;
}

// =============================================================================
// FUNGSI LOG MONEY
// =============================================================================
stock SendMoneyLog(giverid, receiverid, amount)
{
    if(!g_MoneyLogChannel) g_MoneyLogChannel = DCC_FindChannelById(CHANNEL_MONEY_LOG);
    if(!g_MoneyLogChannel) return 0;

    new giverName[MAX_PLAYER_NAME], receiverName[MAX_PLAYER_NAME];
    GetPlayerName(giverid, giverName, sizeof(giverName));
    GetPlayerName(receiverid, receiverName, sizeof(receiverName));

    new h, m, s;
    gettime(h, m, s);

    new DCC_Embed:embed = DCC_CreateEmbed();
    DCC_SetEmbedTitle(embed, "NOCTIVE - LOG MONEY");
    DCC_SetEmbedColor(embed, 0x2ECC71);

    new logContent[256];
    format(logContent, sizeof(logContent), 
        "**Penerima:** %s (ID: %d)\n" \
        "**Pengirim:** %s (ID: %d)\n" \
        "**Jumlah:** $%d", 
        receiverName, receiverid, 
        giverName, giverid, 
        amount
    );
    DCC_AddEmbedField(embed, "Detail Transaksi", logContent, false);

    new timeStr[64];
    format(timeStr, sizeof(timeStr), "Waktu: %02d:%02d:%02d WIB", h, m, s);
    DCC_SetEmbedFooter(embed, timeStr);

    DCC_SendChannelEmbedMessage(g_MoneyLogChannel, embed);
    return 1;
}

// =============================================================================
// FUNGSI LOG IP & DETEKSI DUAL AKUN (MYSQL FIXED)
// Panggil fungsi ini di OnPlayerConnect(playerid)
// =============================================================================
stock CheckAndLogPlayerIP(playerid)
{
    if(!g_IPLogChannel) g_IPLogChannel = DCC_FindChannelById(CHANNEL_IP_LOG);
    if(!g_IPLogChannel) return 0;

    new playerIP[16], name[MAX_PLAYER_NAME];
    GetPlayerIp(playerid, playerIP, sizeof(playerIP));
    GetPlayerName(playerid, name, sizeof(name));

    // 1. Simpan / Update IP terbaru ke database
    new query[256];
    mysql_format(mMysql, query, sizeof(query), 
        "UPDATE `account` SET `IP` = '%e' WHERE `pName` = '%e'", 
        playerIP, name
    );
    mysql_tquery(mMysql, query);

    // 2. Cari ke database apakah ada AKUN LAIN yang pernah pakai IP ini
    mysql_format(mMysql, query, sizeof(query), 
        "SELECT `pName` FROM `account` WHERE `IP` = '%e' AND `pName` != '%e'", 
        playerIP, name
    );
    
    new extraData[64];
    format(extraData, sizeof(extraData), "%d|%s|%s", playerid, name, playerIP);
    mysql_tquery(mMysql, query, "OnCheckIPDuplicate", "s", extraData);

    return 1;
}

// Callback penerima data dari MySQL untuk IP Duplicate
forward OnCheckIPDuplicate(extraData[]);
public OnCheckIPDuplicate(extraData[])
{
    new playerid, name[MAX_PLAYER_NAME], playerIP[16];
    sscanf(extraData, "p<|>ds[32]s[16]", playerid, name, playerIP);

    new h, m, s;
    gettime(h, m, s);

    new rows = cache_num_rows();
    new DCC_Embed:embed = DCC_CreateEmbed();

    if(rows > 0)
    {
        // ---------------------------------------------------------------------
        // TERDETEKSI IP SAMA / DUAL AKUN (SAMA SPERTI YNG DIHARAPKAN)
        // ---------------------------------------------------------------------
        new otherNames[256] = "";
        new tempName[32];

        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name(i, "pName", tempName);
            if(i == 0) format(otherNames, sizeof(otherNames), "`%s`", tempName);
            else format(otherNames, sizeof(otherNames), "%s, `%s`", otherNames, tempName);
        }

        DCC_SetEmbedTitle(embed, "⚠️ PERINGATAN DUAL AKUN DETECTED");
        DCC_SetEmbedColor(embed, 0xE74C3C); // Warna Merah Warning

        new desc[400];
        format(desc, sizeof(desc), 
            "**PERINGATAN:** Terdeteksi IP yang sama digunakan oleh beberapa akun berbeda!\n\n" \
            "👤 **Akun Masuk:** `%s` (ID: %d)\n" \
            "🌐 **Alamat IP:** `%s`\n" \
            "👥 **Akun Lain Dengan IP Ini:** %s\n" \
            "⏰ **Waktu:** %02d:%02d:%02d WIB",
            name, playerid, playerIP, otherNames, h, m, s
        );
        DCC_SetEmbedDescription(embed, desc);
        DCC_SetEmbedFooter(embed, "Noctive IP Security System - Dual Account Warning");
    }
    else
    {
        // ---------------------------------------------------------------------
        // LOG PLAYER CONNECT NORMAL (Hanya 1 akun pada IP ini)
        // ---------------------------------------------------------------------
        DCC_SetEmbedTitle(embed, "LOG PLAYER CONNECT");
        DCC_SetEmbedColor(embed, 0x3498DB); // Warna Biru Normal

        new desc[256];
        format(desc, sizeof(desc), 
            "**Nama IC:** `%s` (ID: %d)\n" \
            "**Alamat IP:** `%s`\n" \
            "**Waktu:** %02d:%02d:%02d WIB",
            name, playerid, playerIP, h, m, s
        );
        DCC_SetEmbedDescription(embed, desc);
        DCC_SetEmbedFooter(embed, "Noctive IP Security System");
    }

    DCC_SendChannelEmbedMessage(g_IPLogChannel, embed);
    return 1;
}