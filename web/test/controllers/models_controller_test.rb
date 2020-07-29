require 'test_helper'

class ModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get models_url
    assert_response :success
  end

  test "should get new" do
    get new_model_url
    assert_response :success
  end

  test "should create model" do
    assert_difference('Model.count') do
      post models_url, params: { model: { booking_rate: @model.booking_rate, country: @model.country, genre: @model.genre, name: @model.name, num_of_people: @model.num_of_people, people: @model.people, published: @model.published, rank: @model.rank, rate: @model.rate, running_time: @model.running_time, summary: @model.summary } }
    end

    assert_redirected_to model_url(Model.last)
  end

  test "should show model" do
    get model_url(@model)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_url(@model)
    assert_response :success
  end

  test "should update model" do
    patch model_url(@model), params: { model: { booking_rate: @model.booking_rate, country: @model.country, genre: @model.genre, name: @model.name, num_of_people: @model.num_of_people, people: @model.people, published: @model.published, rank: @model.rank, rate: @model.rate, running_time: @model.running_time, summary: @model.summary } }
    assert_redirected_to model_url(@model)
  end

  test "should destroy model" do
    assert_difference('Model.count', -1) do
      delete model_url(@model)
    end

    assert_redirected_to models_url
  end
end
