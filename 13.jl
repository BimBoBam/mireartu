using HorizonSideRobots
include("func_for_all.jl")
r = Chess_Robot(Robot("ss/15x15.sit",animate = true), true)
function task13!(robot)
    x = go_along_shag!(robot, West)
    y = go_along_shag!(robot, Sud)
    snake!(robot; start_side = Ost, ortogonal_side = Nord)
    to_corner!(robot, Sud, West)
    return_home!(robot, x , y, Ost, Nord)
end
task13!(r)