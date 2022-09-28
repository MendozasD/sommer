require "test_helper"

class TextersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @texter = texters(:one)
  end

  test "should get index" do
    get texters_url
    assert_response :success
  end

  test "should get new" do
    get new_texter_url
    assert_response :success
  end

  test "should create texter" do
    assert_difference('Texter.count') do
      post texters_url, params: { texter: { comment: @texter.comment, genre: @texter.genre, piece: @texter.piece, premiere: @texter.premiere, responsible: @texter.responsible, year: @texter.year } }
    end

    assert_redirected_to texter_url(Texter.last)
  end

  test "should show texter" do
    get texter_url(@texter)
    assert_response :success
  end

  test "should get edit" do
    get edit_texter_url(@texter)
    assert_response :success
  end

  test "should update texter" do
    patch texter_url(@texter), params: { texter: { comment: @texter.comment, genre: @texter.genre, piece: @texter.piece, premiere: @texter.premiere, responsible: @texter.responsible, year: @texter.year } }
    assert_redirected_to texter_url(@texter)
  end

  test "should destroy texter" do
    assert_difference('Texter.count', -1) do
      delete texter_url(@texter)
    end

    assert_redirected_to texters_url
  end
end
