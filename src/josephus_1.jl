
function josephus_1(n::Integer, k::Integer)::Integer
    next = 0
    circle = [1:n...]
    while length(circle) > 1
        next = (next + k - 1) % length(circle)
        deleteat!(circle, next + 1)
    end

    circle[1]
end

