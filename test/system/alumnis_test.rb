require "application_system_test_case"

class AlumnisTest < ApplicationSystemTestCase
  setup do
    @alumni = alumnis(:one)
  end

  test "visiting the index" do
    visit alumnis_url
    assert_selector "h1", text: "Alumnis"
  end

  test "creating a Alumni" do
    visit alumnis_url
    click_on "New Alumni"

    fill_in "Description", with: @alumni.description
    fill_in "Facebook url", with: @alumni.facebook_url
    fill_in "Linkedin url", with: @alumni.linkedin_url
    fill_in "Name", with: @alumni.name
    fill_in "Profession", with: @alumni.profession
    fill_in "Twitter url", with: @alumni.twitter_url
    click_on "Create Alumni"

    assert_text "Alumni was successfully created"
    click_on "Back"
  end

  test "updating a Alumni" do
    visit alumnis_url
    click_on "Edit", match: :first

    fill_in "Description", with: @alumni.description
    fill_in "Facebook url", with: @alumni.facebook_url
    fill_in "Linkedin url", with: @alumni.linkedin_url
    fill_in "Name", with: @alumni.name
    fill_in "Profession", with: @alumni.profession
    fill_in "Twitter url", with: @alumni.twitter_url
    click_on "Update Alumni"

    assert_text "Alumni was successfully updated"
    click_on "Back"
  end

  test "destroying a Alumni" do
    visit alumnis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alumni was successfully destroyed"
  end
end
