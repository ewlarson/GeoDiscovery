require "application_system_test_case"

class HomepageTest < ApplicationSystemTestCase
  def setup
    visit("/")
  end

  def test_basic_dom
    assert page.has_selector?("nav")              # Navigation
    assert page.has_selector?("main")             # Main
  end

  def test_homepage_search
    within("form.search-query-form") do
      fill_in("q", with: 'water')
      click_button 'Search'
    end

    assert page.has_content?("Search Results")
  end
end