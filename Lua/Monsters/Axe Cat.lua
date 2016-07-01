-- A basic monster script skeleton you can copy and modify for your own creations.

comments = {"Meow!", "It smells like cat food."}
commands = {"Cat food"}
randomdialogue = {"Meow?"}

sprite = "Brave_cat" --Always PNG. Extension is added automatically.
name = "Brave Cat"
hp = 30
atk = 5
def = 1
check = "Strong against red enemies...\rnot that it matters!"
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
        
	    currentdialogue = {"Cat eats greatfully."}
		canspare = true
		
  
		
    end
    BattleDialog({"Brave Cat eats the food."})
	canspare = true
end