require 'test_helper'

class TvChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_channel = tv_channels(:one)
  end

  test "should get index" do
    get tv_channels_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_channel_url
    assert_response :success
  end

  test "should create tv_channel" do
    assert_difference('TvChannel.count') do
      post tv_channels_url, params: { tv_channel: {  } }
    end

    assert_redirected_to tv_channel_url(TvChannel.last)
  end

  test "should show tv_channel" do
    get tv_channel_url(@tv_channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_channel_url(@tv_channel)
    assert_response :success
  end

  test "should update tv_channel" do
    patch tv_channel_url(@tv_channel), params: { tv_channel: {  } }
    assert_redirected_to tv_channel_url(@tv_channel)
  end

  test "should destroy tv_channel" do
    assert_difference('TvChannel.count', -1) do
      delete tv_channel_url(@tv_channel)
    end

    assert_redirected_to tv_channels_url
  end
end
