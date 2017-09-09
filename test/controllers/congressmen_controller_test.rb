require 'test_helper'

class CongressmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congressman = congressmen(:one)
  end

  test "should get index" do
    get congressmen_url
    assert_response :success
  end

  test "should get new" do
    get new_congressman_url
    assert_response :success
  end

  test "should create congressman" do
    assert_difference('Congressman.count') do
      post congressmen_url, params: { congressman: { name: @congressman.name, party: @congressman.party, ranking: @congressman.ranking, uf: @congressman.uf } }
    end

    assert_redirected_to congressman_url(Congressman.last)
  end

  test "should show congressman" do
    get congressman_url(@congressman)
    assert_response :success
  end

  test "should get edit" do
    get edit_congressman_url(@congressman)
    assert_response :success
  end

  test "should update congressman" do
    patch congressman_url(@congressman), params: { congressman: { name: @congressman.name, party: @congressman.party, ranking: @congressman.ranking, uf: @congressman.uf } }
    assert_redirected_to congressman_url(@congressman)
  end

  test "should destroy congressman" do
    assert_difference('Congressman.count', -1) do
      delete congressman_url(@congressman)
    end

    assert_redirected_to congressmen_url
  end
end
