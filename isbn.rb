# def isbn(isbn_num)
# 	isbn_num.class
# 	if isbn_num.class == Integer
# 		Integer
# 	else
# 		false
# 	end
# end

def check_isbn(isbn_num)
    isbn_arr = isbn_num.to_s.split(''){|s| s.to_i}
    if isbn_arr.length == 10 || isbn_arr.length == 13
        true
    else
        false
	end
end

def isbn_valid(isbn_num)
	isbn_number = isbn_num.to_s.split(''){|s| s.to_i}
	
	isbn_length = isbn_number.count	
	counter = 0
	sum = 0
	multiply = 10


	isbn_length.times do
		sum = sum + (isbn_number[counter].to_i * multiply)
		counter = counter + 1
		multiply = multiply - 1
end


	if sum % 11 == 0 
		true
	else
		false
		
	end
end