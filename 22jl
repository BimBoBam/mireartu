using HorizonSideRobots
include("func_for_all.jl")
r = Robot(animate = true)
function double_redist!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
        double_redist!(robot, side)
        try_move!(robot, inverse(side))
        try_move!(robot, inverse(side))
    end
        

    
end
task23!(robot, side) = double_redist!(robot, side)
