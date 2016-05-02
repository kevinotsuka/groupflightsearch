require 'test_helper'

class FlightsearchesControllerTest < ActionController::TestCase
  setup do
    @flightsearch = flightsearches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flightsearches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flightsearch" do
    assert_difference('Flightsearch.count') do
      post :create, flightsearch: { airport: @flightsearch.airport, arrival_date: @flightsearch.arrival_date, departure_date: @flightsearch.departure_date }
    end

    assert_redirected_to flightsearch_path(assigns(:flightsearch))
  end

  test "should show flightsearch" do
    get :show, id: @flightsearch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flightsearch
    assert_response :success
  end

  test "should update flightsearch" do
    patch :update, id: @flightsearch, flightsearch: { airport: @flightsearch.airport, arrival_date: @flightsearch.arrival_date, departure_date: @flightsearch.departure_date }
    assert_redirected_to flightsearch_path(assigns(:flightsearch))
  end

  test "should destroy flightsearch" do
    assert_difference('Flightsearch.count', -1) do
      delete :destroy, id: @flightsearch
    end

    assert_redirected_to flightsearches_path
  end
end
