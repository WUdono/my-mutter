require 'test_helper'

class MutteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @muttee = muttees(:one)
  end

  test "should get index" do
    get muttees_url
    assert_response :success
  end

  test "should get new" do
    get new_muttee_url
    assert_response :success
  end

  test "should create muttee" do
    assert_difference('Muttee.count') do
      post muttees_url, params: { muttee: { mutter: @muttee.mutter, title: @muttee.title } }
    end

    assert_redirected_to muttee_url(Muttee.last)
  end

  test "should show muttee" do
    get muttee_url(@muttee)
    assert_response :success
  end

  test "should get edit" do
    get edit_muttee_url(@muttee)
    assert_response :success
  end

  test "should update muttee" do
    patch muttee_url(@muttee), params: { muttee: { mutter: @muttee.mutter, title: @muttee.title } }
    assert_redirected_to muttee_url(@muttee)
  end

  test "should destroy muttee" do
    assert_difference('Muttee.count', -1) do
      delete muttee_url(@muttee)
    end

    assert_redirected_to muttees_url
  end
end
