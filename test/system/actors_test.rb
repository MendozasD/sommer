require "application_system_test_case"

class ActorsTest < ApplicationSystemTestCase
  setup do
    @actor = actors(:one)
  end

  test "visiting the index" do
    visit actors_url
    assert_selector "h1", text: "Actors"
  end

  test "creating a Actor" do
    visit actors_url
    click_on "New Actor"

    fill_in "Choreo", with: @actor.choreo
    fill_in "Director", with: @actor.director
    fill_in "End date", with: @actor.end_date
    fill_in "Location", with: @actor.location
    fill_in "Musiker", with: @actor.musiker
    fill_in "Piece", with: @actor.piece
    check "Premiere" if @actor.premiere
    fill_in "Role", with: @actor.role
    fill_in "Start date", with: @actor.start_date
    fill_in "Url", with: @actor.url
    click_on "Create Actor"

    assert_text "Actor was successfully created"
    click_on "Back"
  end

  test "updating a Actor" do
    visit actors_url
    click_on "Edit", match: :first

    fill_in "Choreo", with: @actor.choreo
    fill_in "Director", with: @actor.director
    fill_in "End date", with: @actor.end_date
    fill_in "Location", with: @actor.location
    fill_in "Musiker", with: @actor.musiker
    fill_in "Piece", with: @actor.piece
    check "Premiere" if @actor.premiere
    fill_in "Role", with: @actor.role
    fill_in "Start date", with: @actor.start_date
    fill_in "Url", with: @actor.url
    click_on "Update Actor"

    assert_text "Actor was successfully updated"
    click_on "Back"
  end

  test "destroying a Actor" do
    visit actors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actor was successfully destroyed"
  end
end
