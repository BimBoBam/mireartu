using HorizonSideRobots
r = Robot("untitled.sit", animate=true)


function inverse(d)
    #у меня почему-то нет функции inverse
    if d == Ost
        return West
    end
    if d == West
        return Ost
    end
    if d == Sud
        return Nord
    end
    if d == Nord
        return Sud
    end
end


function along_and_back_with_marker!(r, direct)
    while !isborder(r, direct)
        move!(r, direct)
        putmarker!(r)
    end
    direct = inverse(direct)
    while ismarker(r)
        move!(r, direct)
    end
end


function cross!(r)
    direction = [Ost, West, Sud, Nord]
    for i in direction
        along_and_back_with_marker!(r, i)
    end
    putmarker!(r)
end


cross!(r)

