# frozen_string_literal: true

require 'application_system_test_case'

class AdvancedSearchTest < ApplicationSystemTestCase
  def setup
    visit('/advanced')
  end

  def test_basic_dom
    assert page.has_selector?('nav')                          # Navigation
    assert page.has_selector?('main')                         # Main
    assert page.has_selector?('div.advanced-search-form')     # Adv Search Form
    assert page.has_selector?('div.query-criteria')           # Text Field
    assert page.has_selector?('div.limit-criteria')           # Facet Limiters
    assert page.has_selector?('select#sort')                  # Sort Control
    assert page.has_selector?('input#advanced-search-submit') # Submit Button
  end

  def test_advanced_search
    skip('@TODO: fix unpermitted params and text input')
    within('form.advanced') do
      # fill_in("clause_0_query", with: "water")
      click_button 'Search'
    end

    assert page.has_content?('Search Results')
  end
end
