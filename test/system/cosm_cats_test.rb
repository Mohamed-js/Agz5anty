# frozen_string_literal: true

require 'application_system_test_case'

class CosmCatsTest < ApplicationSystemTestCase
  setup do
    @cosm_cat = cosm_cats(:one)
  end

  test 'visiting the index' do
    visit cosm_cats_url
    assert_selector 'h1', text: 'Cosm Cats'
  end

  test 'creating a Cosm cat' do
    visit cosm_cats_url
    click_on 'New Cosm Cat'

    fill_in 'Img', with: @cosm_cat.img
    fill_in 'Name', with: @cosm_cat.name
    click_on 'Create Cosm cat'

    assert_text 'Cosm cat was successfully created'
    click_on 'Back'
  end

  test 'updating a Cosm cat' do
    visit cosm_cats_url
    click_on 'Edit', match: :first

    fill_in 'Img', with: @cosm_cat.img
    fill_in 'Name', with: @cosm_cat.name
    click_on 'Update Cosm cat'

    assert_text 'Cosm cat was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Cosm cat' do
    visit cosm_cats_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Cosm cat was successfully destroyed'
  end
end
