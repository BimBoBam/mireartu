using HorizonSideRobots
r = Robot("untitled.sit", animate=true)


include("import_modules.jl")


function full_square!(r)
    x, y =get_coord!(r)
    while !isborder(r, Nord) & !isborder(r, Ost)
        while !isborder(r, Nord)
            putmarker!(r)
            move!(r, Nord)
        end
        putmarker!(r)
        move!(r, Ost)
        while !isborder(r, Sud)
            putmarker!(r)
            move!(r, Sud)
        end
        putmarker!(r)
        move!(r, Ost)
    end
    get_start!(r, x, y)
end


full_square!(r)