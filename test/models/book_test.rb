require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "title should be present" do
    @book.title = "     "
    assert_not @book.valid?
  end
end
