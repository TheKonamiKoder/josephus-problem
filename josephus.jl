function josephus_0(n::Integer)::Integer
    curr = 0
    circle = [1:(n+1)...]
    
    while length(circle) > 1
        kill = curr + 1
        deleteat!(circle, kill)
        curr = mod(kill, length(circle)) 
    end

    circle[1]
end
