require 'test_helper'

class UserCapturePokemonTest < ActionDispatch::IntegrationTest
  test "displays captured message and backpack content" do
    Pokemon.create(name: "Pikachu", image_url: "http://vignette4.wikia.nocookie.net/gpxplus/images/b/b4/001_Bulbasaur_Pic.png/revision/20101225095459")

    visit root_path

    assert page.has_content?("Backpack: 0")

    click_button "Capture"

    assert page.has_content?("You now have 1 Pikachu.")
    assert page.has_content?("Backpack: 1")

    click_button "Capture"
    assert page.has_content?("You now have 2 Pikachus.")
    assert page.has_content?("Backpack: 2")

  end
end
