require "application_system_test_case"

class TvChannelsTest < ApplicationSystemTestCase
  setup do
    @tv_channel = tv_channels(:one)
  end

  test "visiting the index" do
    visit tv_channels_url
    assert_selector "h1", text: "Tv Channels"
  end

  test "creating a Tv channel" do
    visit tv_channels_url
    click_on "New Tv Channel"

    click_on "Create Tv channel"

    assert_text "Tv channel was successfully created"
    click_on "Back"
  end

  test "updating a Tv channel" do
    visit tv_channels_url
    click_on "Edit", match: :first

    click_on "Update Tv channel"

    assert_text "Tv channel was successfully updated"
    click_on "Back"
  end

  test "destroying a Tv channel" do
    visit tv_channels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tv channel was successfully destroyed"
  end
end
