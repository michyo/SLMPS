--/////////////////////////////////////////////////////////////////
--//                                                             //
--// SLMPS - Simplify Library for Michyo's Programming Seminar   //
--//                                                             //
--//                  Copyright (C) 2022 michyo (Michiyo Tagami) //
--//                                                             //
--// Released under THE MOUSE LICENSE                            //
--//             https://opensource.org/licenses/mit-license.php //
--//                                                             //
--/////////////////////////////////////////////////////////////////

font = love.graphics.newFont("font.ttf", 20)
love.graphics.setFont(font)
math.randomseed(os.time())

function gprint(coloredtext, x, y, angle, sx, sy, ox, oy, kx, ky)
  if (coloredtext~=nil) then
    love.graphics.print(coloredtext, x, y, angle, sx, sy, ox, oy, kx, ky)
  end
end

function gprintf(text, x, y, limit, align, r, sx, sy, ox, oy, kx, ky)
  if (text~=nil) then
    love.graphics.printf(text, x, y, limit, align, r, sx, sy, ox, oy, kx, ky)
  end
end

function color(red, green, blue, alpha)
  love.graphics.setColor( red, green, blue, alpha )
end

function image(filename)
  return love.graphics.newImage(filename)
end

function draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
  love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
end

function circle(mode, x, y, radius)
  love.graphics.circle(mode, x, y, radius)
end

function bgcolor(red, green, blue, alpha)
  love.graphics.setBackgroundColor(red, green, blue, alpha)
end

function rect(mode, x, y, width, height)
  love.graphics.rectangle(mode, x, y, width, height)
end

function inkey(key)
  return love.keyboard.isDown(key)
end

function clip(x, min, max)
  if (x<min) then x = min end
  if (x>max) then x = max end
  return x
end

function random(min, max)
  return math.random(min, max)
end

function sound(filename, type)
  return love.audio.newSource(filename, type)
end

function play(source)
  love.audio.play(source)
end
