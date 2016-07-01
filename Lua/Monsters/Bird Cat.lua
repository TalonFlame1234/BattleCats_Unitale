-- A basic monster script skeleton you can copy and modify for your own creations.

comments = {"Meow!", "It smells like cat food."}
commands = {"Cat food"}
randomdialogue = {"Meow?"}


sprite = "Bird_Cat" --Always PNG. Extension is added automatically.
name = "Bird Cat"
Food = 0
hp = 1
atk = 15
def = 1
check = "Has the heath of a pea."
dialogbubble = "right" -- See documentation for what bubbles you have available.
canspare = false
cancheck = true

-- Happens after the slash animation but before the shaking and hit sound.
function HandleAttack(attackstatus)
    if attackstatus == -1 then
        -- player pressed fight but didn't press Z afterwards
    else
        -- player did actually attack
    end
end
 
-- This handles the commands; all-caps versions of the commands list you have above.
function HandleCustomCommand(command)
    if command == "Cat food" then
        
	    currentdialogue = {"Cat eats gratefully."}
		canspare = true
		
  
		
    end
BattleDialog({"Bird Cat eats the food."})
canspare = true
	
end