/*-----------------------------------------------------------
	Furnace addons = quentid[FR]

	Copyright © 2015 quentid[FR] (Quentin Derpion)
	All Rights Reserved
	Steam: http://steamcommunity.com/profiles/76561198044306043
-------------------------------------------------------------*/
AddEntity("Four de cuisine", {						
	ent = "ent_four",							
	model = "models/props_wasteland/kitchen_stove001a.mdl",
	allowed = {TEAM_COOK},
	price = 1,															
	max = 10,									
	cmd = "buy_entfour"								
})
ENT.Type = "anim"
ENT.PrintName = "Four"
ENT.Author = "quentid[FR]"
ENT.Spawnable = false
ENT.AutomaticFrameAdvance = true 
if CLIENT then
	function ENT:Draw()
		self:DrawModel()
	end
end
