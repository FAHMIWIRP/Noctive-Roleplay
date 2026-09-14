#define MAX_GARKOT 100
enum E_GARKOT
{
	GT_ID,
	Float:GT_POS_X,
	Float:GT_POS_Y,
	Float:GT_POS_Z,
	GT_PICKUP_1,
	Text3D: GT_TEXT_1
};
new GARKOTDATA[MAX_GARKOT][E_GARKOT];
new Iterator:garkot<MAX_GARKOT>;

epublic: LoadGarkot()
{
	new string[1248];
	new rows;
	rows = cache_num_rows();

	if(rows)
  	{
		for(new i; i < rows; i++)
		{
		    cache_get_value_name_int(i, "id", GARKOTDATA[i][GT_ID]);

			cache_get_value_name_float(i, "point_x", GARKOTDATA[i][GT_POS_X]);
			cache_get_value_name_float(i, "point_y", GARKOTDATA[i][GT_POS_Y]);
			cache_get_value_name_float(i, "point_z", GARKOTDATA[i][GT_POS_Z]);

			Iter_Add(garkot, i);

			GARKOTDATA[i][GT_PICKUP_1] = CreateDynamicPickup(1239, 23, GARKOTDATA[i][GT_POS_X], GARKOTDATA[i][GT_POS_Y], GARKOTDATA[i][GT_POS_Z], 0);
			format(string, sizeof(string), "GARKOT ID : {ffff00} [%d]{ffffff}\n TEKAN : {32cd32}F{ffffff}>> UNTUK MEGAMBIL KENDARAAN", i);
			GARKOTDATA[i][GT_TEXT_1] = CreateDynamic3DTextLabel(string, COLOR_WHITE, GARKOTDATA[i][GT_POS_X], GARKOTDATA[i][GT_POS_Y], GARKOTDATA[i][GT_POS_Z], 4.0);
			CreateDynamicMapIcon(GARKOTDATA[i][GT_POS_X], GARKOTDATA[i][GT_POS_Y], GARKOTDATA[i][GT_POS_Z], 35, -1, 0, -1, -1);
	    }
	}
	return 1;
}

epublic: SaveGarkot(id)
{
	new cQuery[998];
	format(cQuery, sizeof(cQuery), "UPDATE garkot SET point_x='%f', point_y='%f', point_z='%f' WHERE id='%d'",
	GARKOTDATA[id][GT_POS_X],
    GARKOTDATA[id][GT_POS_Y],
	GARKOTDATA[id][GT_POS_Z],
	id);
	return mysql_tquery(mMysql, cQuery);
}

epublic: GarkotUpdate(i)
{
    if(IsValidDynamic3DTextLabel(GARKOTDATA[i][GT_TEXT_1])) DestroyDynamic3DTextLabel(GARKOTDATA[i][GT_TEXT_1]);
    if(IsValidDynamicPickup(GARKOTDATA[i][GT_PICKUP_1])) DestroyDynamicPickup(GARKOTDATA[i][GT_PICKUP_1]);
	new string[2048];

	GARKOTDATA[i][GT_PICKUP_1] = CreateDynamicPickup(1239, 23, GARKOTDATA[i][GT_POS_X], GARKOTDATA[i][GT_POS_Y], GARKOTDATA[i][GT_POS_Z], 0);
	format(string, sizeof(string), "GARKOT ID : {ffff00} [%d]{ffffff}\n TEKAN : {32cd32}F{ffffff}>> UNTUK MEGAMBIL KENDARAAN", i);
	GARKOTDATA[i][GT_TEXT_1] = CreateDynamic3DTextLabel(string, COLOR_WHITE, GARKOTDATA[i][GT_POS_X], GARKOTDATA[i][GT_POS_Y], GARKOTDATA[i][GT_POS_Z], 4.0);
	CreateDynamicMapIcon(GARKOTDATA[i][GT_POS_X], GARKOTDATA[i][GT_POS_Y], GARKOTDATA[i][GT_POS_Z], 35, -1, 0, -1, -1);
	return 1;
}

CMD:creategarkot(playerid, params[])
{
	if(admin_level[playerid] < 8 || !admin_logged[playerid]) return 1;
	new idx = Iter_Free(garkot);

	new Cache:result;

 	new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);
    GARKOTDATA[idx][GT_POS_X] = X;
    GARKOTDATA[idx][GT_POS_Y] = Y;
	GARKOTDATA[idx][GT_POS_Z] = Z;

	new fmt_text[2048];
	format
	(
		fmt_text, sizeof fmt_text,
		"INSERT INTO garkot \
		(point_x, point_y, point_z)\
		VALUES ('%f', '%f', '%f')",
		X,
		Y,
 		Z
	);

	result = mysql_query(mMysql, fmt_text, true);

	GARKOTDATA[idx][GT_ID] = cache_insert_id();

	cache_delete(result);
    Iter_Add(garkot, idx);
	SaveGarkot(idx);
	GarkotUpdate(idx);
	format(String, sizeof(String), "ADMINFO: [%s] BERHASIL MEMBUAT GARKOT [%d]", GN(playerid), idx);
	SendAdminMessage(COLOR_YELLOW, String);
	return 1;
}

CMD:deletegarkot(playerid, params[])
{
    if(admin_level[playerid] < 8 || !admin_logged[playerid]) return 1;

    new string[1280];

    extract params -> new GTID; else return SCM(playerid, -1, "/removegarkot [Garkot Id]");

    if(GTID > MAX_GARKOT) return SCM(playerid, -1, "WRONG ID");
    if(GTID < 0) return SCM(playerid, -1, "WRONG ID");

	new query[1280];
	format(string, sizeof(string), "GARKOT ID [%d] DI HAPUS", GTID);
	SendClientMessageEx(playerid, COLOR_GRAD1, string);
	Iter_Remove(garkot, GTID);
	GarkotUpdate(GTID);
	mysql_format(mMysql, query, sizeof(query), "DELETE FROM garkot WHERE id=%d", GTID);
	mysql_tquery(mMysql, query);
    return 1;
}