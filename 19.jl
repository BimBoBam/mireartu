using HorizonSideRobots
include("func_for_all.jl")
r = Robot(animate = true)

function re_along!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
        re_along!(robot, side)
    end
    
end

task19!(robot, side) = re_along!(robot, side)