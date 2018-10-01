require 'test_helper'

class DevizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devize = devizes(:one)
  end

  test "should get index" do
    get devizes_url
    assert_response :success
  end

  test "should get new" do
    get new_devize_url
    assert_response :success
  end

  test "should create devize" do
    assert_difference('Devize.count') do
      post devizes_url, params: { devize: { valute_id: @devize.valute_id } }
    end

    assert_redirected_to devize_url(Devize.last)
  end

  test "should show devize" do
    get devize_url(@devize)
    assert_response :success
  end

  test "should get edit" do
    get edit_devize_url(@devize)
    assert_response :success
  end

  test "should update devize" do
    patch devize_url(@devize), params: { devize: { valute_id: @devize.valute_id } }
    assert_redirected_to devize_url(@devize)
  end

  test "should destroy devize" do
    assert_difference('Devize.count', -1) do
      delete devize_url(@devize)
    end

    assert_redirected_to devizes_url
  end
end
