--[[

Simple Run Test

]]


require "src.gui"

local window = gui.create_window()
window.title = "Mouse Event Demo"
    
local button_label = window:add_label()
local coordinates_label = window:add_label()
coordinates_label.y = button_label.height
    
function window:on_mouse_move(x, y)
  coordinates_label.text = x .. ", " .. y
end
    
function window:on_mouse_up(button)
  button_label.text = button .. " button released"
end
    
function window:on_mouse_down(button)
  button_label.text = button .. " button pressed"
end

gui.run()