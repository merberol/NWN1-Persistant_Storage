////////////////////////////////////////////////////////////////////////////////
// Created by: Charlie Simonsson ( Malcorath )                                //
// date: jan 19 2022                                                          //
// Licence: free to use but kindly leave this header                          //
// if you find any bugs kindly report them here:                              //
// https://github.com/merberol/NWN1-Persistant_Storage                        //
////////////////////////////////////////////////////////////////////////////////
// This is the top include file for my persistance of storage system          //
// in will consist of wrappers for NWNX SQL functions and helper functions to //
// make the code in the main event scripts simpler to read                    //
////////////////////////////////////////////////////////////////////////////////



/// @brief gets the objects inmodule id
/// @param object nwn object type
/// @return string representation of the id
string get_id(oObject);

/// @brief returns 1 if object had data loaded from DB
/// @param object nwn object type
/// @return 1 if true else 0
int is_loaded(object oObject);

/// @brief sanity check to see if a chest allready is loaded before we load from db
/// @param object nwn object type
/// @return 1 if we can load else 0
int try_set_loaded(object oObject);

/// @brief serializes and stores and object in DB
/// @param sChestId string representation o the chest id (used as a table ID )
/// @param object nwn object type
/// @return 1 if we can load else 0
int store_object(string sChestId, object oObject)




string get_id(object oObject)
{
    return GetLocalString(oObject,"id");
}


int is_loaded(object oObject)
{
    return GetLocalInt(oObject, "loaded") == 1;
}


int try_set_loaded(object oObject)
{
    // if we try to load from db and we are allready loaded something is wrong.
    if(is_loaded(oObject))
    {
        return 0;
    }
    return 1;
}



int store_object(string sChestId, object oObject)
{
    string sUUID = GetLocalStr(oObject,"DBUUID")
    if(sUUID == "")
    {
        //this item does not exist in the db we are ading a new item
        string sUUID = GetObjectUUID(oObject);
        SetLocalStr(oObject, "DBUUID", sUUID)
        // use sqlite and the internal nwndb system

    }
    else
    {
        // this item allready exists in the DB so we are uptating the item.
    }
    return 0;
}


