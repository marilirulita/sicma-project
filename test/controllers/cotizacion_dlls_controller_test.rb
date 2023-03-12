require "test_helper"

class CotizacionDllsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotizacion_dll = cotizacion_dlls(:one)
  end

  test "should get index" do
    get cotizacion_dlls_url
    assert_response :success
  end

  test "should get new" do
    get new_cotizacion_dll_url
    assert_response :success
  end

  test "should create cotizacion_dll" do
    assert_difference("CotizacionDll.count") do
      post cotizacion_dlls_url, params: { cotizacion_dll: { cliente_id: @cotizacion_dll.cliente_id, factura_id: @cotizacion_dll.factura_id, job_id: @cotizacion_dll.job_id, status: @cotizacion_dll.status, user_id: @cotizacion_dll.user_id } }
    end

    assert_redirected_to cotizacion_dll_url(CotizacionDll.last)
  end

  test "should show cotizacion_dll" do
    get cotizacion_dll_url(@cotizacion_dll)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotizacion_dll_url(@cotizacion_dll)
    assert_response :success
  end

  test "should update cotizacion_dll" do
    patch cotizacion_dll_url(@cotizacion_dll), params: { cotizacion_dll: { cliente_id: @cotizacion_dll.cliente_id, factura_id: @cotizacion_dll.factura_id, job_id: @cotizacion_dll.job_id, status: @cotizacion_dll.status, user_id: @cotizacion_dll.user_id } }
    assert_redirected_to cotizacion_dll_url(@cotizacion_dll)
  end

  test "should destroy cotizacion_dll" do
    assert_difference("CotizacionDll.count", -1) do
      delete cotizacion_dll_url(@cotizacion_dll)
    end

    assert_redirected_to cotizacion_dlls_url
  end
end
