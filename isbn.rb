def isbn(isbn_num)
	isbn_num.class
	if isbn_num.class == Integer
		Integer
	else
		false
	end
end

def check_isbn(isbn_num)
    isbn_arr = isbn_num.to_s.split('')
    if isbn_arr.length == 10 || isbn_arr.length == 13
        true
    else
        false
	end
end

def validate_isbn_10(isbn_num)
	ten_isbn = isbn_num.to_s.split('')
	
	isbn_length = ten_isbn.count	
	counter = 0
	sum = 0
	input = 10

	isbn_length.times do
		sum = sum + ten_isbn[counter].to_i * input
		counter = counter + 1
		input = input - 1
	end

	if sum % 11 == 0 
		true
	else
		false	
	end
end

def validate_isbn_13(isbn_num)
	thirteen_isbn = isbn_num.to_s.split('')
	
	isbn_length = thirteen_isbn.count	
	counter = 0
	sum = 0
	input = 0

	isbn_length.times do
		thirteen_isbn[counter] = thirteen_isbn[counter].to_i 
		if counter != 12
			if counter % 2 == 0 
				sum = sum + counter * 3
			elsif 
				sum = sum + counter
			end
			counter = counter + 1
		end
	end
	input = sum % 10 
	input = 10 - input


	if input == thirteen_isbn[12]
		true
	else
		false
	end
end