require 'test_helper'

class AutoGatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_gate = auto_gates(:one)
  end

  test "should get index" do
    get auto_gates_url
    assert_response :success
  end

  test "should get new" do
    get new_auto_gate_url
    assert_response :success
  end

  test "should create auto_gate" do
    assert_difference('AutoGate.count') do
      post auto_gates_url, params: { auto_gate: { name: @auto_gate.name, open_code: @auto_gate.open_code, shared_secret: @auto_gate.shared_secret } }
    end

    assert_redirected_to auto_gate_url(AutoGate.last)
  end

  test "should show auto_gate" do
    get auto_gate_url(@auto_gate)
    assert_response :success
  end

  test "should get edit" do
    get edit_auto_gate_url(@auto_gate)
    assert_response :success
  end

  test "should update auto_gate" do
    patch auto_gate_url(@auto_gate), params: { auto_gate: { name: @auto_gate.name, open_code: @auto_gate.open_code, shared_secret: @auto_gate.shared_secret } }
    assert_redirected_to auto_gate_url(@auto_gate)
  end

  test "should destroy auto_gate" do
    assert_difference('AutoGate.count', -1) do
      delete auto_gate_url(@auto_gate)
    end

    assert_redirected_to auto_gates_url
  end
end
