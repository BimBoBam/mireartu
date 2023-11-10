using HorizonSideRobots
r = Robot("untitled.sit", animate=true)


include("import_modules.jl")


function do_dot!(r, d, l)
    for i in 0:l
        move!(r, d)
    putmarker!(r)
    along!(r, inverse(d))
end


function point_a!(r)
    road, a, b = difficult_coord!(r)
    square!(r)
    difficult_start!(r, road)
end


function point_b!(r)
    road, a, b = difficult_coord!(r)
    do_dot!(r, Ost, a)
    do_dot!(r, Nord, b)
    along!(r, Nord)
    do_dot!(r, Ost, a)
    along!(r, Ost)
    along!(r, Sud)
    do_dot!(r, Nord, b)
    along!(r, Sud)
    difficult_start!(r, road)
end