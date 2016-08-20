require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get dogs_name:string_url
    assert_response :success
  end

  test "should get descr:text" do
    get dogs_descr:text_url
    assert_response :success
  end

end
