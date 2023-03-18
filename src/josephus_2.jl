
function josephus_2(n::Integer, k::Integer, l::Integer)::Integer
    next = 0
    circle = [(position=position, lives=l) for position in 1:n]

    while length(circle) > 0
        next = (next + k - 1) % length(circle)
        circle[next + 1].lives -= 1
        if circle[next + 1].lives == 0
            deleteat!(circle, next + 1)
        end
    end

    circle[1].position
end