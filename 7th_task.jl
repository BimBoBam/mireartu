using HorizonSideRobots
r = Robot("untitled.sit", animate=true)

include("import_modules.jl")


function get_door!(r)
    i = 1
    while isborder(r, Nord)
        for j in 0:i
            if mod(i, 2) == 0
                d = Ost
            else
                d = West
            end
            move!(r, d)
            if isborder(r, Nord)
                return nothing
            end
            i += 1
        end
    end
end
