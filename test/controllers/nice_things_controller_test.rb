require 'test_helper'

class NiceThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nice_thing = nice_things(:one)
  end

  test "should get index" do
    get nice_things_url
    assert_response :success
  end

  test "should get new" do
    get new_nice_thing_url
    assert_response :success
  end

  test "should create nice_thing" do
    assert_difference('NiceThing.count') do
      post nice_things_url, params: { nice_thing: { enabled: @nice_thing.enabled, text: @nice_thing.text } }
    end

    assert_redirected_to nice_thing_url(NiceThing.last)
  end

  test "should show nice_thing" do
    get nice_thing_url(@nice_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_nice_thing_url(@nice_thing)
    assert_response :success
  end

  test "should update nice_thing" do
    patch nice_thing_url(@nice_thing), params: { nice_thing: { enabled: @nice_thing.enabled, text: @nice_thing.text } }
    assert_redirected_to nice_thing_url(@nice_thing)
  end

  test "should destroy nice_thing" do
    assert_difference('NiceThing.count', -1) do
      delete nice_thing_url(@nice_thing)
    end

    assert_redirected_to nice_things_url
  end
end
