using HorizonSideRobots
include("func_for_all.jl")
r = Robot("sits/center.sit",animate = true)
function to_symm_pos!(robot, side)
    if isborder(robot, side)
    re_along!(robot, inverse(side))
    else
    move!(robot,side)
    to_symm_pos!(robot, side)
    move!(robot,side)
    end
end
task23!(robot, side) = to_symm_pos!(robot, side)
putmarker!(r)
task23!(r,Ost)