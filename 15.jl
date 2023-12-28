using HorizonSideRobots
include("func_for_all.jl")
r = Border_Coord_Robot(Robot("ss/pereprava15.sit",animate = true))

function task15!(robot)
    back = move_to_angle!(robot)
    snake_border!(robot; start_side=Nord, ortogonal_side=Ost)
    move_to_angle!(robot)
    move!(r, back)
end

task15!(r)