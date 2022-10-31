def phone_digits(str)
    str_digits = str.gsub(/x/, '').tr('^0-9', '')
    if(str_digits.length % 3 == 1)
        str_first = str_digits[0, str_digits.length - 4].scan(/.{1,#{3}}/).join('-')
        str_last = str_digits[str_digits.length - 4, str_digits.length].scan(/.{1,#{2}}/).join('-')
        [str_first,str_last].join('-')
    else
        str_digits.scan(/.{1,#{3}}/).join('-')
    end
end
puts phone_digits("555 123 1234")
puts phone_digits("(+1) 888 33x19")
