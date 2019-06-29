function love.load()
  --number = 0
  button={}
  button.x=200
  button.y=200
  button.size=50

  score=0
  timer=0

  myfont = love.graphics.newFont(40)
end

function love.update(dt)
  --number = number + 1
end

function love.draw()
  --[[love.graphics.setFont(love.graphics.setNewFont(50))
  --love.graphics.print(number)
  love.graphics.setColor(0, 0, 1, alpha)
  love.graphics.rectangle("fill", 200, 400, 200, 100)]]

  love.graphics.setColor(1, 0, 0, 1)
  love.graphics.circle("fill", button.x, button.y, button.size)
  --set score and print
  love.graphics.setFont(myfont)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.print(score)
end
--Detecção de clique do mouse + posicionamento.
function love.mousepressed(x, y, b, isTouch)
  if b == 1 then
    if distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
      score = score + 1
    end
  end
end
-- Fórmula de cálculo de ditancia entre 2 objetos.
function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end
