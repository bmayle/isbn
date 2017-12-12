def isbn(isbn_num)
	isbn_num.class
	if isbn_num.class == Integer
		true
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
	isbn_arr = isbn_num.to_s.split('')
	
	isbn_length = isbn_arr.count	
	counter = 0
	sum = 0
	input = 10

	isbn_length.times do
		sum = sum + isbn_arr[counter].to_i * input
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
	isbn_arr = isbn_num.to_s.split('')
	
	isbn_length = isbn_arr.count	
	counter = 0
	sum = 0
	input = 0

	isbn_length.times do
		isbn_arr[counter] = isbn_arr[counter].to_i
		if counter != 12
			false
		elsif counter % 2 == 0 
			sum = sum + counter * 3
		elsif 
			sum = sum + counter
		end
		counter = counter + 1
	end

	input = sum % 10 
	input = 10 - input

	if input == isbn_arr[12]
		true
	else
		false
	end
end	