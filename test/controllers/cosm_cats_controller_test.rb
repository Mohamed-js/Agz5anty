require 'test_helper'

class CosmCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cosm_cat = cosm_cats(:one)
  end

  test 'should get index' do
    get cosm_cats_url
    assert_response :success
  end

  test 'should get new' do
    get new_cosm_cat_url
    assert_response :success
  end

  test 'should create cosm_cat' do
    assert_difference('CosmCat.count') do
      post cosm_cats_url, params: { cosm_cat: { img: @cosm_cat.img, name: @cosm_cat.name } }
    end

    assert_redirected_to cosm_cat_url(CosmCat.last)
  end

  test 'should show cosm_cat' do
    get cosm_cat_url(@cosm_cat)
    assert_response :success
  end

  test 'should get edit' do
    get edit_cosm_cat_url(@cosm_cat)
    assert_response :success
  end

  test 'should update cosm_cat' do
    patch cosm_cat_url(@cosm_cat), params: { cosm_cat: { img: @cosm_cat.img, name: @cosm_cat.name } }
    assert_redirected_to cosm_cat_url(@cosm_cat)
  end

  test 'should destroy cosm_cat' do
    assert_difference('CosmCat.count', -1) do
      delete cosm_cat_url(@cosm_cat)
    end

    assert_redirected_to cosm_cats_url
  end
end
