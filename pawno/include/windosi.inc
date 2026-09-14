/*
Vehicle Windows/Doors/Siren Control (WinDoSi Control)
 _______________________________________
|										|
| Name: WinDoSi Control					|
| Version: 1.0.0						|
| Release date: 						|
| Credits:								|
|  - valych - author of this include    |
|_______________________________________|

* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This section here should include and extremely long   *
* and immensely boring formal text regarding licensing. *
* But since we know how nobody ever gives a single      *
* rat's behind about such stuff, you are free to skip   *
* this part.                                            *
* And this I didn't quite make out, sorry.              * 
* * * * * * * * * * * * * * * * * * * * * * * * * * * * *

------------- Additional information ----------------

  Official forum's thread: http://forum.sa-mp.com/showthread.php?p=3549532
  Change Log: https://github.com/valychbreak/SAMP-WinDoSi.inc/commits/master
  Documentation: *link*

-----------------------------------------------------
*/

#if defined veh_WinDoSi_control_included
	#endinput
#endif
#define veh_WinDoSi_control_included

//-------- Debug -------
#if defined VEHICLE_DEBUG
	#define WDS::Debug(%0,%1) printf(%0,%1)
#else
	#define WDS::Debug(%0,%1) gettime()
#endif

//-------- Definitions --------
#define MAX_VEHICLE_DOORS 4 // Amount of doors (Just to avoid using literals)

// Doors
#define FL_DOOR 	0 // Front Left (Driver's door)
#define FR_DOOR 	1 // Front Right (Passenger's door)
#define BL_DOOR 	2 // Back Left
#define BR_DOOR 	3 // Back Right

// Door states
#define DOOR_STATE_OPENED		1 // Opened state
#define DOOR_STATE_CLOSED		0 // Closed state
#define DOOR_STATE_NOT_SET	   -1 // Not set

// Window states 
#define WINDOW_STATE_OPENED		0 // Opened state
#define WINDOW_STATE_CLOSED		1 // Closed state
#define WINDOW_STATE_NOT_SET   -1 // Not set

// Siren states
#define SIREN_STATE_ON 				 1 // On 
#define SIREN_STATE_OFF				 0 // Off
#define SIREN_STATE_NOT_INSTALLED 	-1 // Not installed - means, that the siren was not set in AddStaticVehicleEx/CreateVehicle functions (parameter addsiren = 0).
//------------------------------

// Enumeration to store specific vehicle infomation


/*
 * Sets a new vehicle's window state
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 * newstate - 	new state of vehicle's window (see Definitions -> Window states)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
stock SetVehicleWindowState(vehicleid, door, newstate)
{
	// In case of invalid vehicleid
	if(vehicleid < 0 || vehicleid > MAX_VEHICLES - 1) return 0;

	// In case of invalid door number
	if(door < 0 || door > 3) return 0;

	// In case of invalid state value. STATE_NOT_SET state is also treated as INVALID.
	if(newstate != WINDOW_STATE_OPENED && newstate != WINDOW_STATE_CLOSED) return 0;

	new WindowsTemp[MAX_VEHICLE_DOORS]; // To store current doors states

	// Get cuurent state of each window
	GetVehicleParamsCarWindows(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);
	
	// Set a new state for the door and update vehicle"s doors states
	WindowsTemp[door] = newstate;
	WDS::Debug("SetVehicleWindowState - vehicleid = %d, door = %d, newstate = %d, newwindowstate = %d", vehicleid, door, newstate, WindowsTemp[door]);
	SetVehicleParamsCarWindows(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);

	return 1;
}

/*
 * Sets a new vehicle's door state
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 * newstate - 	new state of vehicle window (see Definitions -> Door states)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
stock SetVehicleDoorState(vehicleid, door, newstate)
{
	// In case of invalid vehicleid
	if(vehicleid < 0 || vehicleid > MAX_VEHICLES - 1) return 0;

	// In case of invalid door number
	if(door < 0 || door > 3) return 0;

	// In case of invalid state value
	if(newstate != DOOR_STATE_OPENED && newstate != DOOR_STATE_CLOSED) 
	{
		newstate = DOOR_STATE_CLOSED;
	}

	new WindowsTemp[MAX_VEHICLE_DOORS]; // To store current doors states
	
	// Get cuurent state of each door
	GetVehicleParamsCarDoors(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);
	
	// Set a new state for the door and update vehicle's doors states
	WindowsTemp[door] = newstate;
	WDS::Debug("SetVehicleDoorState - vehicleid = %d, door = %d newstate = %d, newdoorstate = %d", vehicleid, door, newstate, WindowsTemp[door]);
	SetVehicleParamsCarDoors(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);
	GetVehicleParamsCarDoors(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);
	WDS::Debug("SetVehicleDoorState2 - vehicleid = %d, door = %d getdoorstate = %d", vehicleid, door, WindowsTemp[door]);
	return 1;
}

/* 
 * Sets a new vehicle's siren state. 
 * Note: it can be used only to install/uninstall siren. There is no possibility to turn siren on/off yet. 
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * newstate - 	new state for the siren (see Definitions -> Siren states)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
 
stock SetVehicleSirenState(vehicleid, newstate)
{
	//for(new i = 1, z = sizeof standart_vehicle; i < z; i++) if(standart_vehicle[i][vSpawnDelay] == 0) standart_vehicle[i][vSpawnDelay] = 600;
	// In case of invalid vehicleid
	if(vehicleid < 0 || vehicleid > MAX_VEHICLES - 1) return 0;

	// In case of invalid state value. SIREN_STATE_ON is treated as INVALID, because 
	// there is no possibility to turn the siren on yet.
	if(newstate != SIREN_STATE_OFF && newstate != SIREN_STATE_NOT_INSTALLED) return 0;

	// If current siren state is the same as a new one
	if(GetVehicleParamsSirenState(vehicleid) == newstate) return 0;

	// Get info about vehicle
	new Float:x,Float:y,Float:z,Float:a, // to store position
		modelid = GetVehicleModel(vehicleid); // vehicle's modelid
	GetVehiclePos(vehicleid, x,y,z);
	GetVehicleZAngle(vehicleid, a);

	// If vehicle is "destroyable"
	if(DestroyVehicle(vehicleid))
	{
		if(VehInfo[vehicleid][vFr])
		{
			// Re-create a static vehicle
			CreateVehicle(modelid, x,y,z,a,
				VehInfo[vehicleid][vColors1], VehInfo[vehicleid][vColors2], 
				VehInfo[vehicleid][vSpawnDelay],
				newstate == SIREN_STATE_NOT_INSTALLED ? 0 : 1
			);
		}
		else
		{
			// Re-create a vehicle
			CreateVehicle(modelid, x,y,z,a,
				VehInfo[vehicleid][vColors1], VehInfo[vehicleid][vColors2], 
				standart_vehicle[vehicleid][vSpawnDelay],
				newstate == SIREN_STATE_NOT_INSTALLED ? 0 : 1
			);
		}
		return 1;
	}
	return 0;
}
/*
 * Gets a current state of vehicle's window
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns current state of the window (see Definitions -> Window states)
 */
stock GetVehicleWindowState(vehicleid, door)
{
	// In case of invalid vehicleid
	if(vehicleid < 0 || vehicleid > MAX_VEHICLES - 1) return WINDOW_STATE_CLOSED;

	// In case of invalid door number
	if(door < 0 || door > 3) return WINDOW_STATE_CLOSED;

	new WindowsTemp[MAX_VEHICLE_DOORS]; // To store current doors states

	// Get cuurent state of each window
	GetVehicleParamsCarWindows(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);

	WDS::Debug("GetVehicleWindowState - vehicleid = %d, door = %d, state = %d", vehicleid, door, WindowsTemp[door]);
	return WindowsTemp[door];
}

/*
 * Gets a current state of vehicle's door
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns current state of the window (see Definitions -> Door states)
 */
stock GetVehicleDoorState(vehicleid, door)
{
	// In case of invalid door number
	if(door < 0 || door > 3) return DOOR_STATE_CLOSED;

	new WindowsTemp[MAX_VEHICLE_DOORS]; // To store current doors states
	
	// Get cuurent state of each door
	GetVehicleParamsCarDoors(vehicleid, 
		WindowsTemp[FL_DOOR], WindowsTemp[FR_DOOR], 
		WindowsTemp[BL_DOOR], WindowsTemp[BR_DOOR]
	);

	WDS::Debug("GetVehicleDoorState - vehicleid = %d, door = %d, state = %d", vehicleid, door, WindowsTemp[door]);
	return WindowsTemp[door];
}

// ------------ Macros -------------

/* OpenVehicleDoor(vehicleid, door):
 * Opens a vehicle's door
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
#define OpenVehicleDoor(%1,%2) SetVehicleDoorState(%1, %2, DOOR_STATE_OPENED)

/* CloseVehicleDoor(vehicleid, door)
 * Closes a vehicle's door
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
#define CloseVehicleDoor(%1,%2) SetVehicleDoorState(%1, %2, DOOR_STATE_CLOSED)

/* IsVehicleDoorOpened(vehicleid, door)
 * Checks, whether a door is opened or not
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns true, if opened, otherwise false.
 */
#define IsVehicleDoorOpened(%1,%2) GetVehicleDoorState(%1, %2) == DOOR_STATE_OPENED

/* IsVehicleDoorClosed(vehicleid, door)
 * Checks, whether a door is closed or not
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns true, if closed, otherwise false.
 */
#define IsVehicleDoorClosed(%1,%2) GetVehicleDoorState(%1, %2) != DOOR_STATE_OPENED

/* OpenVehicleWindow(vehicleid, door)
 * Opens a vehicle's window
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
#define OpenVehicleWindow(%1,%2) SetVehicleWindowState(%1, %2, WINDOW_STATE_OPENED)

/* OpenVehicleWindow(vehicleid, door)
 * Opens a vehicle's window
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns 1, if succeeded, otherwise 0.
 */
#define CloseVehicleWindow(%1,%2) SetVehicleWindowState(%1, %2, WINDOW_STATE_CLOSED)

/* IsVehicleWindowOpened(vehicleid, door)
 * Checks, whether a window is opened or not
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns true, if opened, otherwise false.
 */
#define IsVehicleWindowOpened(%1,%2) GetVehicleWindowState(%1, %2) == WINDOW_STATE_OPENED

/* IsVehicleWindowClosed(vehicleid, door)
 * Checks, whether a window is closed or not
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 * door - 		vehicle's door ID (see Definitions -> Doors)
 *
 * Returns true, if closed, otherwise false.
 */
#define IsVehicleWindowClosed(%1,%2) GetVehicleWindowState(%1, %2) != WINDOW_STATE_OPENED

/* InstallVehicleSiren(vehicleid)
 * Intalles a siren on a vehicle
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 *
 * Returns 1, if succeeded, otherwise 0.
 */
#define InstallVehicleSiren(%1) SetVehicleSirenState(%1, SIREN_STATE_OFF)

/* UninstallVehicleSiren(vehicleid)
 * Removes a siren from a vehicle
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 *
 * Returns 1, if succeeded, otherwise 0.
 */
#define UninstallVehicleSiren(%1) SetVehicleSirenState(%1, SIREN_STATE_NOT_INSTALLED)

/* GetVehicleSirenState(vehicleid)
 * Gets a current state of vehicle's siren
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 *
 * Returns current state of the siren (see Definitions -> Siren states)
 */
#define GetVehicleSirenState(%1) GetVehicleParamsSirenState(%1)

/* IsVehicleSirenOn(vehicleid)
 * Checks, whether a siren is on or not
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 *
 * Returns true, if turned on, otherwise false.
 */
#define IsVehicleSirenOn(%1) GetVehicleSirenState(%1) == SIREN_STATE_ON

 /* IsVehicleSirenOff(vehicleid)
 * Checks, whether a siren is off or not
 *
 * Parameters:
 * vehicleid - 	vehicle's ID
 *
 * Returns true, if turned off, otherwise false.
 */
#define IsVehicleSirenOff(%1) GetVehicleSirenState(%1) != SIREN_STATE_ON

// -------------- Standart functions replacement -----------

