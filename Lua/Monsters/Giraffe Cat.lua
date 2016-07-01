-- A basic monster script skeleton you can copy and modify for your own creations.

comments = {"Meow!", "It smells like cat food."}
commands = {"Cat food"}
randomdialogue = {"Meow?"}


sprite = "Giraffe_Cat" --Always PNG. Extension is added automatically.
name = "Giraffe Cat"
Food = 0
hp = 50
atk = 3
def = 3
check = "So.. Fast..."
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
    BattleDialog({"Giraffe Cat eats the food."})
	Food = Food + 1
	if Food == 2 then
	    canspare = true
	end
end