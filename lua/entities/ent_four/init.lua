/*-----------------------------------------------------------
	Furnace addons = quentid[FR]
	Addons based to mdl / entities by KoZ's : Food Mod.

	Copyright © 2015 quentid[FR] (Quentin Derpion)
	All Rights Reserved
	Steam: http://steamcommunity.com/profiles/76561198044306043
-------------------------------------------------------------*/
AddCSLuaFile("cl_init.lua") 	
AddCSLuaFile("shared.lua")
include("shared.lua")	
function ENT:Initialize()										
	self:SetModel("models/props_wasteland/kitchen_stove001a.mdl");
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)										
end
function ENT:Use(ply)									
	umsg.Start("indexfour", ply)
		umsg.Entity(self)
	umsg.End()
end
util.AddNetworkString( "myMessage" )
	net.Receive( "myMessage", function( len, ply )
		print( "Addons Pizza by quentid[FR] use!" )
		print( "For more info contact admin@quentid.ovh" )
	end )
function MakeProp1(user,com,arg)
	user:addMoney(-40)
	local e = ents.Create( "food_cheesepizza" )
	e:SetModel( "models/cheesepizza01/cheesepizza01.mdl" )
	e:SetPos(user:GetShootPos() + (user:GetAimVector() * 64))
	e:Spawn()
end
concommand.Add("spawnprop1",MakeProp1)
function MakeProp2(user,com,arg)
	user:addMoney(-40)
	local e = ents.Create( "food_pepperonipizza" )
	e:SetModel( "models/peppizza02/peppizza02.mdl" )
	e:SetPos(self:GetPos()+self:GetUp()*12)
	e:Spawn()
end
concommand.Add("spawnprop2",MakeProp2)


