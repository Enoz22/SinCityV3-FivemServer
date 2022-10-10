Config = {

Sprite = { -- Vehicle blip sprite by class
	[0] = 225,
	[1] = 225,
	[2] = 225,
	[3] = 225,
	[4] = 225,
	[5] = 225,
	[6] = 225,
	[7] = 225,
	[8] = 226,
	[9] = 225,
	[10] = 67,
	[11] = 67,
	[12] = 67,
	[13] = 226,
	[14] = 410,
	[15] = 422,
	[16] = 423,
	[17] = 225,
	[18] = 225,
	[19] = 225,
	[20] = 67
},

Icons = { -- Vehicle icon by class
	[0] = 'fa-car',
	[1] = 'fa-car',
	[2] = 'fa-car',
	[3] = 'fa-car',
	[4] = 'fa-car',
	[5] = 'fa-car',
	[6] = 'fa-car',
	[7] = 'fa-car',
	[8] = 'fa-motorcycle',
	[9] = 'fa-car',
	[10] = 'fa-truck',
	[11] = 'fa-truck',
	[12] = 'fa-truck',
	[13] = 'fa-bicycle',
	[14] = 'fa-ship',
	[15] = 'fa-helicopter',
	[16] = 'fa-plane',
	[17] = 'fa-car',
	[18] = 'fa-car',
	[19] = 'fa-car',
	[20] = 'fa-truck'
},


OpenMenuKey = 'F9', -- Key to open the dispach menu (Leave blank if you dont need a key)
OpenMenuCommand = 'dispatch', -- Command to open dispach menu (CAN NOT BE LEFT BLANK)

EnableUnitArrivalNotice = true, -- Give player notice that the unit is arriving to them! (Triggered when any unit accepts the call)


callCommandSprite = 280, -- Blip sprite when player calls using command
callCommandColor = 57, -- Blip color when player calls using command

EnableMapBlipsForUnits = false, -- Shows units in their vehicles on the map
AddCallBlips = true, -- Adds blips for calls that disappear over time
CallBlipDisappearInterval = 500, -- The higher value longer they will stay on the map

EnableShootingAlerts = true, -- Alerts when citizens shoot in shooting zones
ShootingIgnore = { -- Zones where citizens shooting gives police an alert
	{coords = vector3(454.74185180664,-995.00451660156,31.997316360474), radius = 50.0} -- LSPD
},


-- You can have 3 jobs that can interact with the dispach and 
-- canRequestLocalBackup - This is for requesting backup/help from same job as yours
-- canRequestOtherJobBackup - This is for requesting backup/help from other jobs too
-- forwardCall - This will allow you to forward your jobs call to other jobs
-- callCommand - Command to make a call in dispach (You can also use triggers and make phone funcionallity or smth)
-- color - This is the color of units! this is a css class if you dont know what are you doing dont change
-- label - Label of the job
JobOne = {job = 'police', canRequestLocalBackup = true, canRequestOtherJobBackup = true, forwardCall = true, canRemoveCall = true, callCommand = "911", color = "blueunit", label = "Police", blipColor = 26 },
JobTwo = {job = 'ambulance', canRequestLocalBackup = true, canRequestOtherJobBackup = true, forwardCall = true, canRemoveCall = true, callCommand = "103", color = "redunit", label = "EMS",  blipColor = 1 },
JobThree = {job = 'sheriff', canRequestLocalBackup = true, canRequestOtherJobBackup = true, forwardCall = true, canRemoveCall = true, callCommand = "202", color = "grayunit", label = "BCSO",  blipColor = 39 },


Text = {

	['call_removed'] = 'L\'appel a été supprimé',
	['backup_requested'] = 'Sauvegarde demandée',
	['call_forwarded'] = 'Appel transféré',
	['someone_is_reacting'] = 'L\'unité arrive à votre emplacement!',
	['offduty'] = 'Off Duty n\'est pas configuré!',
	['alerts_turned_off'] = 'Alertes désactivées!',
	['alerts_turned_on'] = 'Alertes activer',
	['phone_number_copied'] = 'Numéro copier',
	['unit_blips_turned_on'] = 'Les unités sont maintenant affichées',
	['unit_blips_turned_off'] = 'Les unités sont maintenant masquées',
	['call_blips_turned_on'] = 'Blips d\'appel affichés',
	['call_blips_turned_off'] = 'Blips d\'appel masqués'

}
	

}

-- Function called when you press power off button
function ToggleDuty() 
	ESX.TriggerServerCallback("core_dispach:OffDuty", function(cb)
			if cb == "police" or cb == "ambulance" or cb == "sheriff" then 
				print(cb)
				SendTextMessage('Vous avez repris votre service')
			else
				print(cb)
				SendTextMessage('Vous avez prie votre pause')
			end
		end, source)
		-- SendTextMessage(Config.Text['offduty'])
end

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('inform', msg)

end
