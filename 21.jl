using HorizonSideRobots
include("func_for_all.jl")
r = BorderRobot(Robot("sits/pereprava21.sit",animate=true))
function move_with_barrier!(robot, side, n::Integer)
    if n == 0
        return
    end

    if !try_move!(robot, side)
        return
    end
    move_with_barrier!(robot, side, n - 1)
end