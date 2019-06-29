function love.load()
  number = 0
end

function love.update(dt)
  number = number + 1
end

function love.draw()
  love.graphics.setFont(love.graphics.setNewFont(50))
  love.graphics.print(number)
end
