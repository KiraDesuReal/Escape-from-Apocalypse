------------------------------------------------------------------------------
--
-- Workfile: globalFunctions.lua
-- Created by: Plus
-- Copyright (C) 2000-2003 Targem Ltd. All rights reserved.
--
-- Misc global script objects.
--
------------------------------------------------------------------------------
-- $Id: globalObjects.lua,v 1.15 2005/10/10 13:12:02 lena Exp $
------------------------------------------------------------------------------


-- global script server
g_ScriptServer = GET_GLOBAL_OBJECT "script server"

-- global console
g_Console = GET_GLOBAL_OBJECT "console"
if g_Console == nil then
	LOG "Could not found global console instance..."
else
	g_Console:PrintF "Successfully registered console on the script side...\n"
end


