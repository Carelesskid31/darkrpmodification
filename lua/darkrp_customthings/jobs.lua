--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_MOB = DarkRP.createJob("Assasin", {
	color = Color(0, 0, 0, 255),
	model = {"models/player/arctic.mdl"},
	description = [[Killing People Amd Stealiing Things]],
	weapons = {"lockpick", "door_ram", "weapon_fists", "weapon_cs_base2", "manhack_welder", "weapon_medkit", "keys", "weapon_base", "ls_sniper", "med_kit"},
	command = "!job1",
	max = 4,
	salary = 200,
	admin = 2,
	vote = false,
	hasLicense = true,
	candemote = false,
	category = hitman",
	customCheck = function(ply) return
		table.HasValue({"vip", "admin"}, ply:GetNWString("usergroup"))
	end,
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
