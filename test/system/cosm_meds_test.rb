# frozen_string_literal: true

require 'application_system_test_case'

class CosmMedsTest < ApplicationSystemTestCase
  setup do
    @cosm_med = cosm_meds(:one)
  end

  test 'visiting the index' do
    visit cosm_meds_url
    assert_selector 'h1', text: 'Cosm Meds'
  end

  test 'creating a Cosm med' do
    visit cosm_meds_url
    click_on 'New Cosm Med'

    fill_in 'Description', with: @cosm_med.description
    fill_in 'Img', with: @cosm_med.img
    fill_in 'Main', with: @cosm_med.main
    fill_in 'Name', with: @cosm_med.name
    fill_in 'Quantity', with: @cosm_med.quantity
    click_on 'Create Cosm med'

    assert_text 'Cosm med was successfully created'
    click_on 'Back'
  end

  test 'updating a Cosm med' do
    visit cosm_meds_url
    click_on 'Edit', match: :first

    fill_in 'Description', with: @cosm_med.description
    fill_in 'Img', with: @cosm_med.img
    fill_in 'Main', with: @cosm_med.main
    fill_in 'Name', with: @cosm_med.name
    fill_in 'Quantity', with: @cosm_med.quantity
    click_on 'Update Cosm med'

    assert_text 'Cosm med was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Cosm med' do
    visit cosm_meds_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Cosm med was successfully destroyed'
  end
end
