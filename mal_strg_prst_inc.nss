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









/// @brief gets the objects inmoduleid
/// @param object nen object type
/// @return string representation of the id
string get_id(oObject);




string get_id(object oObject)
{
    return GetLocalString(oObject,"id");
}