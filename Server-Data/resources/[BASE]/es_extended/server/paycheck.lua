ESX.StartPayCheck = function()
	function payCheck()
		local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			local job     = xPlayer.job.grade_name
			local salary  = xPlayer.job.grade_salary
			local job2     = xPlayer.job2.grade_name
			local salary2  = xPlayer.job2.grade_salary

			if salary > 0 then
				if job == 'nojob' then -- unemployed
					xPlayer.addAccountMoney('bank', salary)
					TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), _U('received_paycheck'), _U('received_help', salary), 'CHAR_BANK_MAZE', 9)
				elseif Config.EnableSocietyPayouts then -- possibly a society
					TriggerEvent('esx_society:getSociety', xPlayer.job.name, function (society)
						if society ~= nil then -- verified society
							TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function (account)
								if account.money >= salary then -- does the society money to pay its employees?
									xPlayer.addAccountMoney('bank', salary)
									account.removeMoney(salary)
									
									MySQL.Async.transaction({
									'UPDATE fiscal SET CAS1 = CAS1 - @amount WHERE society = @id',
									'UPDATE fiscal SET SalS1 = SalS1 + @amount  WHERE society = @id'
									},
									{ ['@amount'] = salary, ['@id'] = society.account },
									  function(affectedRows)
										print(affectedRows)
									  end
									)
									


									TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), _U('received_paycheck'), _U('received_salary', salary), 'CHAR_BANK_MAZE', 9)
								else
									TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), '', _U('company_nomoney'), 'CHAR_BANK_MAZE', 1)
								end
							end)
						else -- not a society
							xPlayer.addAccountMoney('bank', salary)
							TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), _U('received_paycheck'), _U('received_salary', salary), 'CHAR_BANK_MAZE', 9)
						end
					end)
					
					TriggerEvent('esx_society:getSociety', xPlayer.job2.name, function (society2)
						if society2 ~= nil then -- verified society
							TriggerEvent('esx_addonaccount:getSharedAccount', society2.account, function (account2)
								if account2.money >= salary2 then -- does the society money to pay its employees?
									xPlayer.addAccountMoney('bank', salary2)
									account2.removeMoney(salary2)
									
									MySQL.Async.transaction({
										'UPDATE fiscal SET CAS1 = CAS1 - @amount WHERE society = @id',
										'UPDATE fiscal SET SalS1 = SalS1 + @amount  WHERE society = @id'
										},
										{ ['@amount'] = salary, ['@id'] = society.account },
										  function(affectedRows)
											print(affectedRows)
										  end
										)


									TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), _U('received_paycheck'), _U('received_salary', salary2), 'CHAR_BANK_MAZE', 9)
								else
									TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), '', _U('company_nomoney'), 'CHAR_BANK_MAZE', 1)
								end
							end)
						else -- not a society
							xPlayer.addAccountMoney('bank', salary2)
							TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), _U('received_paycheck'), _U('received_salary', salary2), 'CHAR_BANK_MAZE', 9)
						end
					end)
				else -- generic job
					xPlayer.addAccountMoney('bank', salary2)
					TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, _U('bank'), _U('received_paycheck'), _U('received_salary', salary2), 'CHAR_BANK_MAZE', 9)
				end
			end
			
			Wait(500)

		end

		SetTimeout(Config.PaycheckInterval, payCheck)
	end

	SetTimeout(Config.PaycheckInterval, payCheck)
end
