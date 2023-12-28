using HorizonSideRobots
include("func_for_all.jl")
condition = false
r = Chess_Robot(Robot("sits/center.sit",animate = true),condition)

function task25!(robot,side)

    if !isborder(robot,side)
        move!(robot,side)
        task25!(robot,side)
    end
end
