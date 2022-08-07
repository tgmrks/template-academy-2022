require "test_helper"

class MovieGenreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movie_genre_index_url
    assert_response :success
  end

  test "should get show" do
    get movie_genre_show_url
    assert_response :success
  end

  test "should get new" do
    get movie_genre_new_url
    assert_response :success
  end

  test "should get edit" do
    get movie_genre_edit_url
    assert_response :success
  end

  test "should get create" do
    get movie_genre_create_url
    assert_response :success
  end

  test "should get update" do
    get movie_genre_update_url
    assert_response :success
  end

  test "should get destroy" do
    get movie_genre_destroy_url
    assert_response :success
  end
end
