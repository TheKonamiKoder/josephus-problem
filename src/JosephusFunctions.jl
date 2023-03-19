module JosephusFunctions
    export josephus_0, josephus_1, josephus_2, josephus_3
    
    function josephus_0(n::Integer)::Integer
        next = 0
        circle = [1:n...]
        while length(circle) > 1
            next = (next + 1) % length(circle)
            deleteat!(circle, next + 1)
        end
    
        circle[1]
    end
    
    function josephus_1(n::Integer, k::Integer)::Integer
        next = 0
        circle = [1:n...]
        while length(circle) > 1
            next = (next + k - 1) % length(circle)
            deleteat!(circle, next + 1)
        end
    
        circle[1]
    end
    
    function josephus_2(n::Integer, k::Integer, l::Integer)::Integer
        next = 0
        circle = [(position=position, lives=l) for position in 1:n]
    
        while length(circle) > 1
            next = (next + k - 1) % length(circle)
            circle[next + 1] = (position=circle[next + 1].position, lives=circle[next + 1].lives - 1)
            if circle[next + 1].lives == 0
                deleteat!(circle, next + 1)
            end
        end
    
        circle[1].position
    end

    function josephus_3(n::Integer, f::Function)::Integer
        next = 0
        circle = [1:n...]
        while length(circle) > 1
            next = f(next) % length(circle)
            deleteat!(circle, next + 1)
        end

        circle[1]
    end
end