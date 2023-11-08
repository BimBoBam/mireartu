function get_coord!(r)
    x = 0
    y = 0
    while !isborder(r, West)
        move!(r, West)
        x += 1
    end
    while !isborder(r, Sud)
        move!(r, Sud)
        y += 1
    end
    return x, y
end


function get_start!(r, x, y)
    while !isborder(r, West)
        move!(r, West)
    end
    while !isborder(r, Sud)
        move!(r, Sud)
    end
    for i in 1:x
        move!(r, Ost)
    end
    for i in 1:y
        move!(r, Nord)
    end
end


function square!(r)
    for i in [Ost, Nord, West, Sud]
        while !isborder(r, i)
            move!(r, i)
            putmarker!(r)
        end
    end
end