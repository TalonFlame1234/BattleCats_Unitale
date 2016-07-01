-- A basic encounter script skeleton you can copy and modify for your own creations.

-- music = "shine_on_you_crazy_diamond" --Always OGG or WAV. Extension is added automatically. Remove the first two lines for custom music.
music = "Battle Cats"
encountertext = "The battle cats have come to\rUndertale!" --Modify as necessary. It will only be read out in the action select screen.
nextwaves = {"bullettest_bouncy"}
wavetimer = 5
arenasize = {500, 50}

enemies = {
"Bird Cat"
}

enemypositions = {
{0, 0}
}

-- A custom list with attacks to choose from. Actual selection happens in EnemyDialogueEnding(). Put here in case you want to use it.
possible_attacks = {"bullettest_touhou"}

function EncounterStarting()
    -- If you want to change the game state immediately, this is the place.
end

function EnemyDialogueStarting()
    -- Good location for setting monster dialogue depending on how the battle is going.
    -- Example: enemies[1].SetVar('currentdialogue', {"Check it\nout!"})   See documentation for details.
end

function EnemyDialogueEnding()
    -- Good location to fill the 'nextwaves' table with the attacks you want to have simultaneously.
    -- This example line below takes a random attack from 'possible_attacks'.
    nextwaves = { possible_attacks[math.random(#possible_attacks)] }
end

function DefenseEnding() --This built-in function fires after the defense round ends.
    encountertext = RandomEncounterText() --This built-in function gets a random encounter text from a random enemy.
end

function HandleSpare()
     State("") --By default, pressing spare only spares the enemies but stays in the menu. Changing state happens here.
end

function HandleItem(ItemID)
    BattleDialog({"Selected item " .. ItemID .. "."})
end