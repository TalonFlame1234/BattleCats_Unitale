-- The bouncing bullets attack from the documentation example.
spawntimer = 0
bullets = {}
VerticalSpeedMultiplier = 4 -- Default was 2
VerticalSpeedStart = 1  -- Default was 1
VerticalSpeedChange = -0.8 -- Default was -0.04

function Update()
    spawntimer = spawntimer + 1
    if spawntimer%30 == 0 then
        local posx = 200 
        local posy = Arena.height/2
        local bullet = CreateProjectile('bullet', posx, posy)
        
		bullet.SetVar('velx', VerticalSpeedStart - VerticalSpeedMultiplier*math.random())
        bullet.SetVar('vely', 0)
        table.insert(bullets, bullet)
    end
    
    for i=1,#bullets do
        local bullet = bullets[i]
        local velx = bullet.GetVar('velx')
        local vely = bullet.GetVar('vely')
        local newposx = bullet.x + velx
        local newposy = bullet.y + vely
        if(bullet.x > -Arena.width/2 and bullet.x < Arena.width/2) then
            if(bullet.y < -Arena.height/2 + 8) then 
                newposy = -Arena.height/2 + 8
                vely = 30 -- Default was 4
            end
        end
        vely = vely + VerticalSpeedChange
        bullet.MoveTo(newposx, newposy)
        bullet.SetVar('vely', vely)
    end
end