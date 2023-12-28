using HorizonSideRobots
include("func_for_all.jl")
r = Robot("ss/pusto.sit", animate = true), true

function task17!(robot)
    spiral!(()->ismarker(robot), robot; start_p = West, rotation = right)
end

task17!(r)