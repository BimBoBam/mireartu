using HorizonSideRobots
include("func_for_all.jl")
r = Robot("sits/pereprava12.sit",animate = true)

function task12!(r)
    num_horizontal_borders_razriv!(r, 1) 
end

task12!(r)