using HorizonSideRobots
r = Robot("untitled.sit", animate=true)


include("import_modules.jl")

x, y = get_coord!(r)


function square!(r)
    for i in [Ost, Nord, West, Sud]
        while !isborder(r, i)
            move!(r, i)
            putmarker!(r)
        end
    end
end


function minisquare!(r)
    if isborder(r, Nord)
        sid =  [(Ost,Nord), (Nord,West), (West,Sud), (Sud,Ost)]
    else
        sid = [(Ost,Sud), (Sud,West), (West,Nord), (Nord,Ost)]
    end
    for i in sid
        a, b = i
        while isborder(r, b)
            putmarker!(r)
            move!(r, a)
        end
        putmarker!(r)
        move!(r, b)
    end


function points_around_rectangle!(r)
    square!(r)
    move!(r, Ost)
    while !isborder(r, Sud) | !isborder(r, Nord)
        for i in [Nord, Sud]
            move!(r, i)
            while !ismarker(r) & !isborder(r, i)
                move!(r, i)
            end
            if isborder(r, i) & !ismarker(r)
                minisquare!(r)
                get_start!(r, x, y)
                return nothing
            end
            move!(r, Ost)
        end
    end
    
end


points_around_rectangle!(r)