-- ----------------------------------------------------------------------------
-- 
-- Workfile: queststates.lua
-- Created by: Anton
-- Copyright (C) 2000-2004 Targem Ltd. All rights reserved.
-- 
-- Script functions called when some quests change their states
-- 
-- ----------------------------------------------------------------------------
--  $Id: queststates.lua,v 1.10 2005/06/04 06:36:52 anton Exp $
-- ----------------------------------------------------------------------------

-- QUEST_COMPLETE = 1
-- QUEST_FAILED   = 2

function Human1_Quest1_Take()
	println( "Talen human1quest1" )
	AddItemsToPlayerRepository("fibreboard", 5)
end

function Human1_Quest1_Complete()
	println( "Complete human1quest1" )
	RemoveItemsFromPlayerRepository("fibreboard", 3)
end
function FreeExtremistLeader_Take()
   println("Leader Caravan Guards Created")
   TeamCreate("LeaderGuardTeam",1010,CVector(2339.986, 249.000, 2961.419),{"Revolutioner2","Bug01","Bug01"}, CVector(2359.986, 254.000, 2939.419))
   TActivate("trLeaderCaravanDie")
   TActivate("trExtrLeader")
end

function KillExtremist_Take()
   println("KILL Extremist")
   SetTolerance(1001, 1012, RS_ENEMY)
end