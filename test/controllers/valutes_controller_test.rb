require 'test_helper'

class ValutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valute = valutes(:one)
  end

  test "should get index" do
    get valutes_url
    assert_response :success
  end

  test "should get new" do
    get new_valute_url
    assert_response :success
  end

  test "should create valute" do
    assert_difference('Valute.count') do
      post valutes_url, params: { valute: {  } }
    end

    assert_redirected_to valute_url(Valute.last)
  end

  test "should show valute" do
    get valute_url(@valute)
    assert_response :success
  end

  test "should get edit" do
    get edit_valute_url(@valute)
    assert_response :success
  end

  test "should update valute" do
    patch valute_url(@valute), params: { valute: {  } }
    assert_redirected_to valute_url(@valute)
  end

  test "should destroy valute" do
    assert_difference('Valute.count', -1) do
      delete valute_url(@valute)
    end

    assert_redirected_to valutes_url
  end
end
