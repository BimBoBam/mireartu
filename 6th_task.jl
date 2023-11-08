using HorizonSideRobots
r = Robot("untitled.sit", animate=true)


include("import_modules.jl")


function difficult_coord!(r)
    x = 0
    y = 0
    while !isborder(r, West) | !isborder(r, Sud)
        if !isborder(r, West)
            x += 1
            move!(r, West)
        else 
            y += 1
            move!(r, Sud)
        end
    end
    return x, y
end


function difficult_start!(r, x, y)
    x_start = 0
    y_start = 0
    while x_start != x | y_start != y
        if !isborder(r, Nord) & y_start != y 
            y_start += 1
            move!(r, Nord)
        elseif !isborder(r, Ost) & x_start != x
            x_start += 1
            move!(r, Ost)
        end 
    end
    print(x_start, y_start)
end

x, y = difficult_coord!(r)
print(x, y)
difficult_start!(r, x, y)