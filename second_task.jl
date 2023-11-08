using HorizonSideRobots
r = Robot("untitled.sit", animate=true)


include("import_modules.jl")


function square!(r)
    x, y = get_coord!(r)
    for i in [Ost, Nord, West, Sud]
        while !isborder(r, i)
            move!(r, i)
            putmarker!(r)
        end
    end
    get_start!(r, x, y)
end


square!(r)