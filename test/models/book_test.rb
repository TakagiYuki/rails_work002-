require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@book = Book.new(title: "hoge", body: "hoge")
	end

	test "should be valid" do
		assert @book.valid?
	end

	test "title should be present" do#空の場合はNG
		@book.title = "    "
		assert_not @book.valid?
	end

	test "title should be present" do#空の場合はNG
		@book.body = "    "
		assert_not @book.valid?
	end
end