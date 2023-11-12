local changed = true

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  changeScene("menu")
  defFont = love.graphics.newFont(12)
  
end

function love.update(dt)
  scene:update(dt)
  if scene:change() and changed then 
   if scene.id == 2 then
     changeScene("menu")
   else 
     changeScene("game")
   end
   changed = false
  else
   changed = true
  end
end

function love.draw()
  scene:draw()
end

function changeScene(newScene)
  scene = require("scenes/"..newScene)
  scene:load()
end