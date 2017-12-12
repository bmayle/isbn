require "minitest/autorun"
require_relative "isbn.rb"
class TestISBN < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_isbn_num_is_integer
    	assert_equal(true, isbn(7))
    end

    def test_assert_that_wombat_is_not_a_integer
    	assert_equal(false, isbn("wombat"))
    end

	def test_that_false_is_returned_if_length_less_than_10
        isbn_num = 147852963
		assert_equal(false, check_isbn(isbn_num))
    end

    def test_that_true_is_returned_if_length_returns_10
        isbn_num = 1470852963
		assert_equal(true, check_isbn(isbn_num))
    end

    def test_that_false_is_returned_if_length_less_than_13
        isbn_num = 147852968888
		assert_equal(false, check_isbn(isbn_num))
	end
	
    def test_that_true_is_returned_if_length_returns_13
    	isbn_num = 9876543210369
    	assert_equal(true, check_isbn(isbn_num))
    end

    def test_that_isbn_invalid_for_10_digits
    	isbn_num = 7465823190
    	assert_equal(false, validate_isbn_10(isbn_num))
    end

    def test_that_isbn_valid_for_10_digits
    	isbn_num = 9604250590
    	assert_equal(true, validate_isbn_10(isbn_num))
    end

    def test_for_isbn_invalid_for_13_digits
		isbn_num = 1234567891011
		assert_equal(false, validate_isbn_13(isbn_num))
	end

	def test_for_isbn_valid_for_13_digits
		isbn_num = 9781566199094 
		assert_equal(true, validate_isbn_13(isbn_num))
	end
end