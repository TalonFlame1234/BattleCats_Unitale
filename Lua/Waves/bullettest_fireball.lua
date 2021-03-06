spawntimer = 0
bullets = {}



function UpdateBulletPositionsStraight()
    for i=1,#bullets do
        local bullet = bullets[i]
        local velx = bullet.GetVar('velx')
        local vely = bullet.GetVar('vely')
        local newposx = bullet.x + velx
        local newposy = bullet.y + vely
        bullet.MoveTo(newposx, newposy)
        bullet.SetVar('vely', vely)
    end 
end


function RandomInRange(low, high)
   local range = high - low
   local retval = high - math.random(range)
   return retval
end

function Update()
    spawntimer = spawntimer + 1
    if spawntimer%30 == 0 then
        local posx = 250
        local posy = RandomInRange(-100,100)
        local bullet = CreateProjectile('fireball', posx, posy)
        bullet.SetVar('velx', -10)
        bullet.SetVar('vely', 0)
        table.insert(bullets, bullet)
    end
    
	UpdateBulletPositionsStraight()

end

