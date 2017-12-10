require "minitest/autorun"
require_relative "isbn.rb"
class TestISBN < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_isbn_num_is_integer
    	assert_equal(Integer, isbn(7))
    end

    def test_assert_that_wombat_is_not_a_integer
    	assert_equal(false, isbn("wombat"))
    end

	def test_that_false_is_returned_in_check_isbn_function_if_less_than_10
        isbn_num = 147852963
		assert_equal(false, check_isbn(isbn_num))
    end

    def test_that_true_is_returned_if_length_returns_10
        isbn_num = 1470852963
		assert_equal(true, check_isbn(isbn_num))
    end

    def test_that_true_is_returned_if_length_returns_13
    	isbn_num = 9876543210369
    	assert_equal(true, check_isbn(isbn_num))
    end

    # def test_that_isbn_invalid
    # 	isbn_num = 123456789
    # 	assert_equals(false)

end