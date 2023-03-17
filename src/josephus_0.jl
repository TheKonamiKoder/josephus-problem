
function josephus_0(n::Integer)::Integer
    next = 0
    circle = [1:n...]
    while length(circle) > 1
        next = (next + 1) % length(circle)
        deleteat!(circle, next + 1)
    end

    circle[1]
end
