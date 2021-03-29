require "test_helper"

class CosmMedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cosm_med = cosm_meds(:one)
  end

  test "should get index" do
    get cosm_meds_url
    assert_response :success
  end

  test "should get new" do
    get new_cosm_med_url
    assert_response :success
  end

  test "should create cosm_med" do
    assert_difference('CosmMed.count') do
      post cosm_meds_url, params: { cosm_med: { description: @cosm_med.description, img: @cosm_med.img, main: @cosm_med.main, name: @cosm_med.name, quantity: @cosm_med.quantity } }
    end

    assert_redirected_to cosm_med_url(CosmMed.last)
  end

  test "should show cosm_med" do
    get cosm_med_url(@cosm_med)
    assert_response :success
  end

  test "should get edit" do
    get edit_cosm_med_url(@cosm_med)
    assert_response :success
  end

  test "should update cosm_med" do
    patch cosm_med_url(@cosm_med), params: { cosm_med: { description: @cosm_med.description, img: @cosm_med.img, main: @cosm_med.main, name: @cosm_med.name, quantity: @cosm_med.quantity } }
    assert_redirected_to cosm_med_url(@cosm_med)
  end

  test "should destroy cosm_med" do
    assert_difference('CosmMed.count', -1) do
      delete cosm_med_url(@cosm_med)
    end

    assert_redirected_to cosm_meds_url
  end
end
