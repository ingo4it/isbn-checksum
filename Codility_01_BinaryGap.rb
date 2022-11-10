
def solution(n)
    value = n
    gap = 0
    temp_gap = 0
    found_one = false
    while value >= 1 
        if value % 2 == 0
            if found_one 
                temp_gap += 1
            end
        else
            found_one = true
            gap = [gap, temp_gap].max
            temp_gap = 0            
        end
        value = value / 2
    end
    gap
end
puts solution(9)
puts solution(529)
puts solution(20)
puts solution(32)
puts solution(1041)