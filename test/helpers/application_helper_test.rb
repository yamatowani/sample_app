require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal "#{page_title} | #{base_title}", full_title
    assert_equal " 'Help' | #{base_title}", full_title("Help")
  end
end