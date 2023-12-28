using HorizonSideRobots
include("func_for_all.jl")

function task28!(n)
    i = 0
    fib_sum = 0
    fib1 = 1
    fib2 = 1

    while i < n - 2
        fib_sum = fib1 + fib2
        fib1 = fib2
        fib2 = fib_sum
        i = i + 1
    end
    return fib2
end

function task28r!(n)
    if n <= 1
        return n
    else
        return (task28r!(n-1) + task28r!(n-2))
    end
end

function task28re1!(n, memo = Dict())
    if n <= 1
        return n
    elseif haskey(memo, n)
        return memo[n]
    else
        memo[n] = task28re1!(n-1, memo) + task28re1!(n-2, memo)
        return memo[n]
    end
end