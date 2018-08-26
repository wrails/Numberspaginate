require 'test_helper'

class NumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @number = numbers(:one)
  end

  test "should get index" do
    get numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_number_url
    assert_response :success
  end

  test "should create number" do
    assert_difference('Number.count') do
      post numbers_url, params: { number: { name: @number.name, name_in_word: @number.name_in_word } }
    end

    assert_redirected_to number_url(Number.last)
  end

  test "should show number" do
    get number_url(@number)
    assert_response :success
  end

  test "should get edit" do
    get edit_number_url(@number)
    assert_response :success
  end

  test "should update number" do
    patch number_url(@number), params: { number: { name: @number.name, name_in_word: @number.name_in_word } }
    assert_redirected_to number_url(@number)
  end

  test "should destroy number" do
    assert_difference('Number.count', -1) do
      delete number_url(@number)
    end

    assert_redirected_to numbers_url
  end
end
