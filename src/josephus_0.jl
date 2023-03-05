using Plots

function josephus_0(n::Integer)::Integer
    curr = 1
    circle = [1:n...]
    while length(circle) > 1
        kill = curr + 1
        deleteat!(circle, kill)
        curr = mod(kill, length(circle)) 
    end

    circle[1]
end

x = 1:1000
y = josephus_0.(x)

plot(x, y, label=["josephus_0(n)"])
title!("Josephus 0")
xlabel!("n")
ylabel!("Survivor")
