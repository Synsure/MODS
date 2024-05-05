require 'moonloader'

function main()
  if not isSampLoaded() or not isSampfuncsLoaded() then return end
  while not isSampAvailable() do wait(100) end
  sampRegisterChatCommand("autobarril", barril)
   while true do
    barril_1()
      wait(0)
   end
end

local state = false

function barril_1()

    boolresult = isCharPlayingAnim(PLAYER_PED, "crry_prtial")
    
     if state == true and isKeyJustPressed(VK_L) then
        while state do
        setVirtualKeyDown(VK_H, true)
        wait(1)
        setVirtualKeyDown(VK_H, false)
        wait(1)
        setVirtualKeyDown(VK_H, true)
            if boolresult == true then
                sampAddChatMessage("Cogiste el barril gran puta", 0x00FF00)
                break
            end
        end
     end 
 end

function barril()
    state = not state  
    if state == true then
       printString("activado", 2000)
   else
       printString("desactivado", 2000)
    end
end

