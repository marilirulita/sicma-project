require "test_helper"

class CotizacionMnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizacion_mn = cotizacion_mns(:one)
  end

  test "should get index" do
    get cotizacion_mns_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizacion_mn_url
    assert_response :success
  end

  test "should create cotizacion_mn" do
    assert_difference("CotizacionMn.count") do
      post cotizacion_mns_url, params: { cotizacion_mn: { cliente_id: @cotizacion_mn.cliente_id, factura_id: @cotizacion_mn.factura_id, job_id: @cotizacion_mn.job_id, status: @cotizacion_mn.status, user_id: @cotizacion_mn.user_id } }
    end

    assert_redirected_to cotizacion_mn_url(CotizacionMn.last)
  end

  test "should show cotizacion_mn" do
    get cotizacion_mn_url(@cotizacion_mn)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizacion_mn_url(@cotizacion_mn)
    assert_response :success
  end

  test "should update cotizacion_mn" do
    patch cotizacion_mn_url(@cotizacion_mn), params: { cotizacion_mn: { cliente_id: @cotizacion_mn.cliente_id, factura_id: @cotizacion_mn.factura_id, job_id: @cotizacion_mn.job_id, status: @cotizacion_mn.status, user_id: @cotizacion_mn.user_id } }
    assert_redirected_to cotizacion_mn_url(@cotizacion_mn)
  end

  test "should destroy cotizacion_mn" do
    assert_difference("CotizacionMn.count", -1) do
      delete cotizacion_mn_url(@cotizacion_mn)
    end

    assert_redirected_to cotizacion_mns_url
  end
end
