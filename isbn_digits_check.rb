

def get_ISBN13_barcord(digits)
    result = 0
    mul_nums = [1, 3]    
    digits.split('').each_with_index { |c, index| 
        result += c.to_i * mul_nums[index % mul_nums.length]
    }
    result = 10 - result % 10    
    digits + result.to_s
end
puts get_ISBN13_barcord("978014300723")