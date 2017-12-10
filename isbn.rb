def isbn(isbn_num)
	isbn_num.class
	if isbn_num.class == Integer
		Integer
	else
		false
	end
end

def check_isbn(isbn_num)
    isbn_arr = isbn_num.to_s.split(''){s.to_i}
    if isbn_arr.length == 10 || isbn_arr.length == 13
        true
    else
        false
	end
end




