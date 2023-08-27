------------------------------------------------------------------------------
--
-- Workfile: GuiObjects.lua
-- Created by: SoftKitty
-- Copyright (C) 2000-2003 Targem Ltd. All rights reserved.
--
-- Misc global script objects.
--
------------------------------------------------------------------------------
-- $Id: GuiObjects.lua,v 1.1 2005/10/10 13:12:15 lena Exp $
------------------------------------------------------------------------------



g_CinemaPanel = GET_GLOBAL_OBJECT "g_CinemaPanel"
if not g_CinemaPanel then
	LOG "Could not find global CinemaPanel!!!"
end

ConversationWnd = GET_GLOBAL_OBJECT "ConversationWnd"
if not ConversationWnd then
	LOG "Could not find global ConversationWnd!!!"
end

RepliesManager = GET_GLOBAL_OBJECT "RepliesManager"
if not RepliesManager then
	LOG "Could not find global RepliesManager!!!"
end

TalkWithNpcDlg = GET_GLOBAL_OBJECT "TalkWithNpcDlg"
if not TalkWithNpcDlg then
	LOG "Could not find global TalkWithNpcDlg!!!"
end

Journal = GET_GLOBAL_OBJECT "Journal"
if not Journal then
	LOG "Could not find global Journal!!!"
end

Radar = GET_GLOBAL_OBJECT "Radar"
if not Radar then
	LOG "Could not find global Radar!!!"
end

LevelInfoManager = GET_GLOBAL_OBJECT "LevelInfoManager"
if not LevelInfoManager then
	LOG "Could not find global LevelInfoManager!!!"
end

SavesManager = GET_GLOBAL_OBJECT "SavesManager"
if not SavesManager then
	LOG "Could not find global SavesManager!!!"
end

MsgManager = GET_GLOBAL_OBJECT "MsgManager"
if not MsgManager then
	LOG "Could not find global MsgManager!!!"
end

TownDlg = GET_GLOBAL_OBJECT "TownDlg"
if not TownDlg then
	LOG "Could not find global TownDlg!!!"
end

MotherPanel = GET_GLOBAL_OBJECT "MotherPanel"
if not MotherPanel then
	LOG "Could not find global MotherPanel!!!"
end

WeaponGroupManager = GET_GLOBAL_OBJECT "WeaponGroupManager"
if not WeaponGroupManager then
	LOG "Could not find global WeaponGroupManager!!!"
end

HelpManager = GET_GLOBAL_OBJECT "HelpManager"
if not HelpManager then
	LOG "Could not find global HelpManager!!!"
end

MainGameInterface = GET_GLOBAL_OBJECT "MainGameInterface"
if not MainGameInterface then
	LOG "Could not find global MainGameInterface!!!"
end

