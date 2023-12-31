using HorizonSideRobots
include("func_for_all.jl")
r = Robot("sits/zd5.sit",animate=true)
function task5!(robot)

    side1 = Nord
    side2 = West

    x = go_along_shag!(robot,West)
    y = go_along_shag!(robot,Nord)
    while !isborder(robot,Nord) || !isborder(robot,West)
        if !isborder(robot,West)
            x+=go_along_shag!(robot,West)-1
            side1 = West
            side2 = Nord
            x,y = y,x
        elseif !isborder(robot,Nord)
            y+=go_along_shag!(robot,Nord)-1
            side1 = Nord
            side2 = West
        end
    end

    perimetr!(robot)
    lenght = go_along_shag!(robot,Ost)
    go_along_shag!(robot,West)
    line=gofind(robot,lenght)
    markinnerperimetr(robot,line)
    to_corner!(robot,Nord,West)
    return_home!(robot,side1,side2,y,x)
    
end
task5!(r)