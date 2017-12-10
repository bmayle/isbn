# def isbn(isbn_num)
# 	isbn_num.class
# 	if isbn_num.class == Integer
# 		Integer
# 	else
# 		false
# 	end
# end

def check_isbn(isbn_num)
    isbn_arr = isbn_num.to_s.split(''){s.to_i}
    if isbn_arr.length == 10 || isbn_arr.length == 13
        true
    else
        false
	end
end

def isbn_valid_13(isbn_num)
	isbn_number = isbn_num.to_s.split(''){s.to_i}

	isbn_length = isbn_number.count	
	counter = 0
	sum = 0
	multiply = 0

	isbn_length.times do
		isbn_number[counter] = isbn_number[counter].to_i

		if counter != 12
			if counter % 2 == 0
				sum = sum + isbn_number[counter]
			else
				sum = sum + isbn_number[counter] * 3
			end

			counter = counter - 1
		end
	end

	if multiply = sum % 10
	checker = 10 - multiply
	if checker == isbn_number[12]
		true
	else
		false
	end
end

def isbn_valid_10(isbn_num)
	isbn_number = isbn_num.to_s.split(''){s.to_i}
	
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