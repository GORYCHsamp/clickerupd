script_name("Clicker")
script_version("1.0")
script_author("GRYCH")
script_description("/pisser")

local hook = require 'lib.samp.events'
local inicfg = require 'inicfg'
require 'lib.moonloader'
local dlstatus = require('moonloader').download_status

function main()
	while not isSampAvailable() do wait(0) end
	sampAddChatMessage("{00FA9A}Clicker{FFD700} |{FFFFFF} Настройки: {00FA9A}/clicker {FFD700}|{FFFFFF} Автор: {00FA9A}GORYCH", 0xFFFFFF)
	if not doesDirectoryExist("moonloader/config") then createDirectory("moonloader/config") end
	Data = inicfg.load({
		Settings = {
			Key1 = R,
			Key2 = RBUTTON,
			Keys = 2,
			Job = 2,
			Nopalevo = 1,
			autoupdate = 1,
		},
	}, "Clicker")
	if data.options.autoupdate == 1 then
	    sampAddChatMessage("{00FA9A}Clicker{FFD700} |{FFFFFF} Проверка обновлений ...", 0xFFFFFF)
		update()
		while update ~= false do wait(100) end
	end
	if Data.Settings.Keys == 1 then
	sampAddChatMessage(string.format("{00FA9A}Clicker{FFD700} |{FFFFFF} В данный момент установлена клавиша: {00FA9A}%s ", Data.Settings.Key1),0xFFFFFF)
	elseif Data.Settings.Keys == 2 then
	sampAddChatMessage(string.format("{00FA9A}Clicker{FFD700} |{FFFFFF} В данный момент установлены клавиши: {00FA9A}%s{FFFFFF} + {00FA9A}%s", Data.Settings.Key1, Data.Settings.Key2), 0xFFFFFF)
	end
	sampAddChatMessage("{00FA9A}Clicker{FFD700} |{FFFFFF} Update log: {00FA9A}/updcl", 0xFFFFFF)
	inicfg.save(Data, "Clicker")
	Dialog = lua_thread.create_suspended(DialogFunc)
	sampRegisterChatCommand("clicker", Clicker)
	sampRegisterChatCommand("updcl", UpdateCl)
	sampSetClientCommandDescription("clicker", "Настройки клавиш для кликера")
	sampSetClientCommandDescription("updcl", "Просмотреть список изменений")
	score = 0
	func()
end

function hook.onServerMessage(color, text)
    if string.find(text, "^Этим клиентом, занят другой механик!$") then
        Delay = 1
	else
	    Delay = 0
    end
end

function func()
while true do
		wait(0)
if Data.Settings.Key1 == "LBUTTON" then FIRSTKEY = 1
elseif Data.Settings.Key1 == "RBUTTON" then FIRSTKEY = 2
elseif Data.Settings.Key1 == "MBUTTON" then FIRSTKEY = 4
elseif Data.Settings.Key1 == "F1" then FIRSTKEY = 112
elseif Data.Settings.Key1 == "F2" then FIRSTKEY = 113
elseif Data.Settings.Key1 == "F3" then FIRSTKEY = 114
elseif Data.Settings.Key1 == "F4" then FIRSTKEY = 115
elseif Data.Settings.Key1 == "F5" then FIRSTKEY = 116
elseif Data.Settings.Key1 == "F6" then FIRSTKEY = 117
elseif Data.Settings.Key1 == "F7" then FIRSTKEY = 118
elseif Data.Settings.Key1 == "F8" then FIRSTKEY = 119
elseif Data.Settings.Key1 == "F9" then FIRSTKEY = 120
elseif Data.Settings.Key1 == "F10" then FIRSTKEY = 121
elseif Data.Settings.Key1 == "F11" then FIRSTKEY = 122
elseif Data.Settings.Key1 == "F12" then FIRSTKEY = 123
elseif Data.Settings.Key1 == "SPACE" then FIRSTKEY = 32
elseif Data.Settings.Key1 == "SHIFT" then FIRSTKEY = 16
elseif Data.Settings.Key1 == "CTRL" then FIRSTKEY = 17
elseif Data.Settings.Key1 == "ALT" then FIRSTKEY = 18
elseif Data.Settings.Key1 == "LEFT" then FIRSTKEY = 37
elseif Data.Settings.Key1 == "UP" then FIRSTKEY = 38
elseif Data.Settings.Key1 == "RIGHT" then FIRSTKEY = 39
elseif Data.Settings.Key1 == "DOWN" then FIRSTKEY = 40
elseif Data.Settings.Key1 == "0" then FIRSTKEY = 48
elseif Data.Settings.Key1 == "1" then FIRSTKEY = 49
elseif Data.Settings.Key1 == "2" then FIRSTKEY = 50
elseif Data.Settings.Key1 == "3" then FIRSTKEY = 51
elseif Data.Settings.Key1 == "4" then FIRSTKEY = 52
elseif Data.Settings.Key1 == "5" then FIRSTKEY = 53
elseif Data.Settings.Key1 == "6" then FIRSTKEY = 54
elseif Data.Settings.Key1 == "7" then FIRSTKEY = 55
elseif Data.Settings.Key1 == "8" then FIRSTKEY = 56
elseif Data.Settings.Key1 == "9" then FIRSTKEY = 57
elseif Data.Settings.Key1 == "Q" then FIRSTKEY = 81
elseif Data.Settings.Key1 == "W" then FIRSTKEY = 87
elseif Data.Settings.Key1 == "E" then FIRSTKEY = 69
elseif Data.Settings.Key1 == "R" then FIRSTKEY = 82
elseif Data.Settings.Key1 == "T" then FIRSTKEY = 84
elseif Data.Settings.Key1 == "Y" then FIRSTKEY = 89
elseif Data.Settings.Key1 == "U" then FIRSTKEY = 85
elseif Data.Settings.Key1 == "I" then FIRSTKEY = 73
elseif Data.Settings.Key1 == "O" then FIRSTKEY = 79
elseif Data.Settings.Key1 == "P" then FIRSTKEY = 80
elseif Data.Settings.Key1 == "A" then FIRSTKEY = 65
elseif Data.Settings.Key1 == "S" then FIRSTKEY = 83
elseif Data.Settings.Key1 == "D" then FIRSTKEY = 68
elseif Data.Settings.Key1 == "F" then FIRSTKEY = 70
elseif Data.Settings.Key1 == "G" then FIRSTKEY = 71
elseif Data.Settings.Key1 == "H" then FIRSTKEY = 72
elseif Data.Settings.Key1 == "J" then FIRSTKEY = 74
elseif Data.Settings.Key1 == "K" then FIRSTKEY = 75
elseif Data.Settings.Key1 == "L" then FIRSTKEY = 76
elseif Data.Settings.Key1 == "Z" then FIRSTKEY = 90
elseif Data.Settings.Key1 == "X" then FIRSTKEY = 88
elseif Data.Settings.Key1 == "C" then FIRSTKEY = 67
elseif Data.Settings.Key1 == "V" then FIRSTKEY = 86
elseif Data.Settings.Key1 == "B" then FIRSTKEY = 66
elseif Data.Settings.Key1 == "N" then FIRSTKEY = 78
elseif Data.Settings.Key1 == "M" then FIRSTKEY = 77
elseif Data.Settings.Key1 == "NUMPAD1" then FIRSTKEY = 97
elseif Data.Settings.Key1 == "NUMPAD2" then FIRSTKEY = 98
elseif Data.Settings.Key1 == "NUMPAD3" then FIRSTKEY = 99
elseif Data.Settings.Key1 == "NUMPAD4" then FIRSTKEY = 100
elseif Data.Settings.Key1 == "NUMPAD5" then FIRSTKEY = 101
elseif Data.Settings.Key1 == "NUMPAD6" then FIRSTKEY = 102
elseif Data.Settings.Key1 == "NUMPAD7" then FIRSTKEY = 103
elseif Data.Settings.Key1 == "NUMPAD8" then FIRSTKEY = 104
elseif Data.Settings.Key1 == "NUMPAD9" then FIRSTKEY = 105
end
if Data.Settings.Key2 == "LBUTTON" then SECONDKEY = 1
elseif Data.Settings.Key2 == "RBUTTON" then SECONDKEY = 2
elseif Data.Settings.Key2 == "MBUTTON" then SECONDKEY = 4
elseif Data.Settings.Key2 == "F1" then SECONDKEY = 112
elseif Data.Settings.Key2 == "F2" then SECONDKEY = 113
elseif Data.Settings.Key2 == "F3" then SECONDKEY = 114
elseif Data.Settings.Key2 == "F4" then SECONDKEY = 115
elseif Data.Settings.Key2 == "F5" then SECONDKEY = 116
elseif Data.Settings.Key2 == "F6" then SECONDKEY = 117
elseif Data.Settings.Key2 == "F7" then SECONDKEY = 118
elseif Data.Settings.Key2 == "F8" then SECONDKEY = 119
elseif Data.Settings.Key2 == "F9" then SECONDKEY = 120
elseif Data.Settings.Key2 == "F10" then SECONDKEY = 121
elseif Data.Settings.Key2 == "F11" then SECONDKEY = 122
elseif Data.Settings.Key2 == "F12" then SECONDKEY = 123
elseif Data.Settings.Key2 == "SPACE" then SECONDKEY = 32
elseif Data.Settings.Key2 == "SHIFT" then SECONDKEY = 16
elseif Data.Settings.Key2 == "CTRL" then SECONDKEY = 17
elseif Data.Settings.Key2 == "ALT" then SECONDKEY = 18
elseif Data.Settings.Key2 == "LEFT" then SECONDKEY = 37
elseif Data.Settings.Key2 == "UP" then SECONDKEY = 38
elseif Data.Settings.Key2 == "RIGHT" then SECONDKEY = 39
elseif Data.Settings.Key2 == "DOWN" then SECONDKEY = 40
elseif Data.Settings.Key2 == "0" then SECONDKEY = 48
elseif Data.Settings.Key2 == "1" then SECONDKEY = 49
elseif Data.Settings.Key2 == "2" then SECONDKEY = 50
elseif Data.Settings.Key2 == "3" then SECONDKEY = 51
elseif Data.Settings.Key2 == "4" then SECONDKEY = 52
elseif Data.Settings.Key2 == "5" then SECONDKEY = 53
elseif Data.Settings.Key2 == "6" then SECONDKEY = 54
elseif Data.Settings.Key2 == "7" then SECONDKEY = 55
elseif Data.Settings.Key2 == "8" then SECONDKEY = 56
elseif Data.Settings.Key2 == "9" then SECONDKEY = 57
elseif Data.Settings.Key2 == "Q" then SECONDKEY = 81
elseif Data.Settings.Key2 == "W" then SECONDKEY = 87
elseif Data.Settings.Key2 == "E" then SECONDKEY = 69
elseif Data.Settings.Key2 == "R" then SECONDKEY = 82
elseif Data.Settings.Key2 == "T" then SECONDKEY = 84
elseif Data.Settings.Key2 == "Y" then SECONDKEY = 89
elseif Data.Settings.Key2 == "U" then SECONDKEY = 85
elseif Data.Settings.Key2 == "I" then SECONDKEY = 73
elseif Data.Settings.Key2 == "O" then SECONDKEY = 79
elseif Data.Settings.Key2 == "P" then SECONDKEY = 80
elseif Data.Settings.Key2 == "A" then SECONDKEY = 65
elseif Data.Settings.Key2 == "S" then SECONDKEY = 83
elseif Data.Settings.Key2 == "D" then SECONDKEY = 68
elseif Data.Settings.Key2 == "F" then SECONDKEY = 70
elseif Data.Settings.Key2 == "G" then SECONDKEY = 71
elseif Data.Settings.Key2 == "H" then SECONDKEY = 72
elseif Data.Settings.Key2 == "J" then SECONDKEY = 74
elseif Data.Settings.Key2 == "K" then SECONDKEY = 75
elseif Data.Settings.Key2 == "L" then SECONDKEY = 76
elseif Data.Settings.Key2 == "Z" then SECONDKEY = 90
elseif Data.Settings.Key2 == "X" then SECONDKEY = 88
elseif Data.Settings.Key2 == "C" then SECONDKEY = 67
elseif Data.Settings.Key2 == "V" then SECONDKEY = 86
elseif Data.Settings.Key2 == "B" then SECONDKEY = 66
elseif Data.Settings.Key2 == "N" then SECONDKEY = 78
elseif Data.Settings.Key2 == "M" then SECONDKEY = 77
elseif Data.Settings.Key2 == "NUMPAD1" then SECONDKEY = 97
elseif Data.Settings.Key2 == "NUMPAD2" then SECONDKEY = 98
elseif Data.Settings.Key2 == "NUMPAD3" then SECONDKEY = 99
elseif Data.Settings.Key2 == "NUMPAD4" then SECONDKEY = 100
elseif Data.Settings.Key2 == "NUMPAD5" then SECONDKEY = 101
elseif Data.Settings.Key2 == "NUMPAD6" then SECONDKEY = 102
elseif Data.Settings.Key2 == "NUMPAD7" then SECONDKEY = 103
elseif Data.Settings.Key2 == "NUMPAD8" then SECONDKEY = 104
elseif Data.Settings.Key2 == "NUMPAD9" then SECONDKEY = 105
end
   if Data.Settings.Keys == 1 and not sampIsScoreboardOpen() and not sampIsChatInputActive() then
   if isKeyDown(FIRSTKEY) then -- R
      if Data.Settings.Nopalevo == 2 then 
		 while not sampIsDialogActive() and isKeyDown(FIRSTKEY) do 
	     wait(0)
	     setVirtualKeyDown(18, true)
	     wait(1)
	     setVirtualKeyDown(18, false)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 1 do
	     wait(50)
	     sampSetCurrentDialogListItem(0)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 2 do
	     wait(50)
	     sampSetCurrentDialogListItem(1)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 3 do
	     wait(50)
	     sampSetCurrentDialogListItem(2)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
	 end
	 if Data.Settings.Nopalevo == 1 then
	    while not sampIsDialogActive() and Delay == 1 and isKeyDown(FIRSTKEY) do
	     wait(0)
	     setVirtualKeyDown(18, true)
	     wait(1)
	     setVirtualKeyDown(18, false)
		end
		while not sampIsDialogActive() and isKeyDown(FIRSTKEY) and Delay ~= 1 do 
	     wait(120)
	     setVirtualKeyDown(18, true)
	     wait(1)
	     setVirtualKeyDown(18, false)
		end
		while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 1 do
	     wait(50)
	     sampSetCurrentDialogListItem(0)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 2 do
	     wait(50)
	     sampSetCurrentDialogListItem(1)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 3 do
	     wait(50)
	     sampSetCurrentDialogListItem(2)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
    end
	end
 end 
if Data.Settings.Keys == 2 and not sampIsScoreboardOpen() and not sampIsChatInputActive() then
  if isKeyDown(FIRSTKEY) and isKeyDown(SECONDKEY) then -- R
      if Data.Settings.Nopalevo == 2 then 
		 while not sampIsDialogActive() and isKeyDown(FIRSTKEY) do 
	     wait(0)
	     setVirtualKeyDown(18, true)
	     wait(1)
	     setVirtualKeyDown(18, false)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 1 do
	     wait(50)
	     sampSetCurrentDialogListItem(0)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 2 do
	     wait(50)
	     sampSetCurrentDialogListItem(1)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 3 do
	     wait(50)
	     sampSetCurrentDialogListItem(2)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
	 end
	 if Data.Settings.Nopalevo == 1 then
	    while not sampIsDialogActive() and Delay == 1 and isKeyDown(FIRSTKEY) do
	     wait(0)
	     setVirtualKeyDown(18, true)
	     wait(1)
	     setVirtualKeyDown(18, false)
		end
		while not sampIsDialogActive() and isKeyDown(FIRSTKEY) and Delay ~= 1 do 
	     wait(120)
	     setVirtualKeyDown(18, true)
	     wait(1)
	     setVirtualKeyDown(18, false)
		end
		while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 1 do
	     wait(50)
	     sampSetCurrentDialogListItem(0)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 2 do
	     wait(50)
	     sampSetCurrentDialogListItem(1)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
		 while sampIsDialogActive() and sampGetCurrentDialogId() == 381 and Data.Settings.Job == 3 do
	     wait(50)
	     sampSetCurrentDialogListItem(2)
		 wait(10)
	     sampCloseCurrentDialogWithButton(1)
	     end
    end
	end
    end
   end	
  end

function UpdateCl()
sampAddChatMessage("{00FA9A}v1.0{FFD700} | {FFFFFF} Установлен беспалевный режим в beta стадии", 0xFFFFFF)
end
  
function Clicker()
	Dialog:run()
end

function DialogFunc()
    if Data.Settings.Keys == 1 then KeysString = "{55FF55}1 клавиша." end
	if Data.Settings.Keys == 2 then KeysString = "{55FF55}2 клавиши." end
	if Data.Settings.Job == 1 then JobString = "{FFFFFF}1. Ремонт машины!" end
	if Data.Settings.Job == 2 then JobString = "{FFFFFF}2. Состояние двигателя!" end
	if Data.Settings.Job == 3 then JobString = "{FFFFFF}3. Установка AutoLock!" end
	if Data.Settings.Nopalevo == 1 then NopalevoString = "{55FF55}Вкл." end
	if Data.Settings.Nopalevo == 2 then NopalevoString = "{FF5555}Выкл." end
	if Data.Settings.Keys == 1 then
	    local DialogText = string.format("{F6DB6A}Количество клавиш: \t%s\n{F6DB6A}Выбор работы.\n{F6DB6A}Беспалевный режим(beta)\t%s\n{F6DB6A}Изменить клавишу:\t %s", KeysString, NopalevoString, Data.Settings.Key1)
	    dialogId = 1100
	    dialogButton = nil
	    dialogListItem = nil
	    dialogInput = nil
	    dialogBool = false
	    sampShowDialog(dialogId, "{FFFFFF}Настройки скрипта." , DialogText, "Выбрать", "Закрыть", 4)
	    while not dialogBool do
	    	wait(0)
	    	dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
	    end
	    if dialogButton ~= 0 then
	    	if dialogListItem == 0 then
		    	if Data.Settings.Keys == 1 then 
		    	Data.Settings.Keys = 2
    			elseif Data.Settings.Keys == 2 then 
	    		Data.Settings.Keys = 1
		        end
			    inicfg.save(Data, "Clicker")
    			DialogFunc()
			elseif dialogListItem == 1 then
		    	local DialogText = "{F6DB6A}1.{FFFFFF} Ремонтировать авто!\n{F6DB6A}2.{FFFFFF} Восстанавливать состояние!\n{F6DB6A}3.{FFFFFF} Заниматься установкой AutoLock!"
	 		   dialogId = 228
	 		   dialogButton = nil
	  		  dialogListItem = nil
			    dialogInput = nil
			    dialogBool = false
			    sampShowDialog(dialogId, "{FFFFFF}Выбор работы" , DialogText, "Принять", "Отмена", 4)
			    while not dialogBool do
	 		   	wait(0)
			    	dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
			    end
	        if dialogButton ~= 0 then
	        	if dialogListItem == 0 then
		        	Data.Settings.Job = 1
		    	    inicfg.save(Data, "Clicker")
    	    		DialogFunc()
			    elseif dialogListItem == 1 then
		        	Data.Settings.Job = 2
			        inicfg.save(Data, "Clicker")
    		    	DialogFunc()
		        elseif dialogListItem == 2 then
		        	Data.Settings.Job = 3
		    	    inicfg.save(Data, "Clicker")
    		    	DialogFunc()
				end
		    else
			DialogFunc()
		    end
			elseif dialogListItem == 2 then
		        	if Data.Settings.Nopalevo == 1 then 
		    	Data.Settings.Nopalevo = 2
    			elseif Data.Settings.Nopalevo == 2 then 
	    		Data.Settings.Nopalevo = 1
		        end
			    inicfg.save(Data, "Clicker")
    			DialogFunc()
	    	elseif dialogListItem == 3 then
		    	local DialogText = string.format("{F6DB6A}Введите название клавиши.\n{F6DB6A}Не стоит использовать клавиши LBUTTON, CTRL и ALT.\n\n{F6DB6A}Установленная клавиша: {FFFFFF}%s", Data.Settings.Key1)
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false
					sampShowDialog(dialogId, "{FFFFFF}Изменение клавиши." , DialogText, "Применить", "Назад", 1)
					sampSetCurrentDialogEditboxText(Data.Settings.Key1)
					while not dialogBool do
						wait(0)
						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end
					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
							dialogInput = string.match(dialogInput, "^%s*(.-)%s*$")
							Data.Settings.Key1 = dialogInput
							inicfg.save(Data, "Clicker")
							DialogFunc()
						else
							sampAddChatMessage(string.format("{00FA9A}[Clicker]{FF0000} Введите название клавиши."), 0xFF0000)
						end
					else
						DialogFunc()
					end	
		    end
		else
		end
	elseif Data.Settings.Keys == 2 then
	    local DialogText = string.format("{F6DB6A}Количество клавиш: \t%s\n{F6DB6A}Выбор работы.\n{F6DB6A}Беспалевный режим(beta)\t%s\n{F6DB6A}Изменить клавишу 1:\t %s\n{F6DB6A}Изменить клавишу 2:\t %s", KeysString, NopalevoString, Data.Settings.Key1, Data.Settings.Key2)
	    dialogId = 1100
	    dialogButton = nil
	    dialogListItem = nil
	    dialogInput = nil
	    dialogBool = false
	    sampShowDialog(dialogId, "{FFFFFF}Настройки скрипта." , DialogText, "Выбрать", "Закрыть", 4)
	    while not dialogBool do
	    	wait(0)
	    	dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
	    end
	    if dialogButton ~= 0 then
	    	if dialogListItem == 0 then
		    	if Data.Settings.Keys == 1 then 
		    	Data.Settings.Keys = 2
    			elseif Data.Settings.Keys == 2 then 
	    		Data.Settings.Keys = 1
		        end
			    inicfg.save(Data, "Clicker")
    			DialogFunc()
			elseif dialogListItem == 1 then
		    	local DialogText = "{F6DB6A}1.{FFFFFF} Ремонтировать авто!\n{F6DB6A}2.{FFFFFF} Восстанавливать состояние!\n{F6DB6A}3.{FFFFFF} Заниматься установкой AutoLock!"
	 		    dialogId = 381
	 		    dialogButton = nil
	  		    dialogListItem = nil
			    dialogInput = nil
			    dialogBool = false
			    sampShowDialog(dialogId, "{FFFFFF}Выбор работы" , DialogText, "Принять", "Отмена", 4)
			    while not dialogBool do
	 		   	wait(0)
			    	dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
			    end
	        if dialogButton ~= 0 then
	        	if dialogListItem == 0 then
		        	Data.Settings.Job = 1
		    	    inicfg.save(Data, "Clicker")
    	    		DialogFunc()
			    elseif dialogListItem == 1 then
		        	Data.Settings.Job = 2
			        inicfg.save(Data, "Clicker")
    		    	DialogFunc()
		        elseif dialogListItem == 2 then
		        	Data.Settings.Job = 3
		    	    inicfg.save(Data, "Clicker")
    		    	DialogFunc()
			    end
		    else
			DialogFunc()
		    end
			elseif dialogListItem == 2 then
		        	if Data.Settings.Nopalevo == 1 then 
		    	Data.Settings.Nopalevo = 2
    			elseif Data.Settings.Nopalevo == 2 then 
	    		Data.Settings.Nopalevo = 1
		        end
			    inicfg.save(Data, "Clicker")
    			DialogFunc()
	    	elseif dialogListItem == 3 then
		    	local DialogText = string.format("{F6DB6A}Введите название клавиши.\n{F6DB6A}Не стоит использовать клавиши LBUTTON, CTRL и ALT.\n\n{F6DB6A}Установленная клавиша: {FFFFFF}%s", Data.Settings.Key1)
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false
					sampShowDialog(dialogId, "{FFFFFF}Изменение клавиши." , DialogText, "Применить", "Назад", 1)
					sampSetCurrentDialogEditboxText(Data.Settings.Key1)
					while not dialogBool do
						wait(0)
						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end
					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
							dialogInput = string.match(dialogInput, "^%s*(.-)%s*$")
							Data.Settings.Key1 = dialogInput
							inicfg.save(Data, "Clicker")
							DialogFunc()
						else
							sampAddChatMessage(string.format("{00FA9A}[Clicker]{FF0000} Введите название клавиши."), 0xFF0000)
						end
					else
						DialogFunc()
					end	
			elseif dialogListItem == 4 then
		    	local DialogText = string.format("{F6DB6A}Введите название клавиши.\n{F6DB6A}Не стоит использовать клавиши LBUTTON, CTRL и ALT.\n\n{F6DB6A}Установленная клавиша: {FFFFFF}%s", Data.Settings.Key2)
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false
					sampShowDialog(dialogId, "{FFFFFF}Изменение клавиши." , DialogText, "Применить", "Назад", 1)
					sampSetCurrentDialogEditboxText(Data.Settings.Key2)
					while not dialogBool do
						wait(0)
						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end
					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
							dialogInput = string.match(dialogInput, "^%s*(.-)%s*$")
							Data.Settings.Key2 = dialogInput
							inicfg.save(Data, "Clicker")
							DialogFunc()
						else
							sampAddChatMessage(string.format("{00FA9A}[Clicker]{FF0000} Введите название клавиши."), 0xFF0000)
						end
					else
						DialogFunc()
		            end
		    end
	    else
		end
    end
end

function update()
	local fpath = os.getenv('TEMP') .. '\\clicker-version.json'
	downloadUrlToFile('https://raw.githubusercontent.com/GORYCHsamp/clickerupd/master/clicker.json', fpath, function(id, status, p1, p2)
		if status == dlstatus.STATUS_ENDDOWNLOADDATA then
			local f = io.open(fpath, 'r')
			if f then
				local info = decodeJson(f:read('*a'))
				if info and info.latest then
					local version = tonumber(info.latest)
					if version > tonumber(thisScript().version) then
						lua_thread.create(goupdate)
					end
				end
			end
		end
	end)
end
function goupdate()
sampAddChatMessage(("{00FA9A}[Clicker]{FFD700}: {FFFFFF}Обновление до версии: {00FA9A}"..version), 0xFFFFFF)
sampAddChatMessage(("{00FA9A}[Clicker]{FFD700}: {FFFFFF}Текущая версия: "..thisScript().version), 0xFFFFFF)
wait(300)
downloadUrlToFile(updatelink, thisScript().path, function(id3, status1, p13, p23)
	if status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
	sampAddChatMessage(('{00FA9A}[Clicker]{FFD700}: {FFFFFF}Обновление завершено!'), 0xFFFFFF)
	goplay = 1
	thisScript():reload()
end
end)
end
