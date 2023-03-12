require "application_system_test_case"

class CotizacionDllsTest < ApplicationSystemTestCase
  setup do
    @cotizacion_dll = cotizacion_dlls(:one)
  end

  test "visiting the index" do
    visit cotizacion_dlls_url
    assert_selector "h1", text: "Cotizacion dlls"
  end

  test "should create cotizacion dll" do
    visit cotizacion_dlls_url
    click_on "New cotizacion dll"

    fill_in "Cliente", with: @cotizacion_dll.cliente_id
    fill_in "Factura", with: @cotizacion_dll.factura_id
    fill_in "Job", with: @cotizacion_dll.job_id
    fill_in "Status", with: @cotizacion_dll.status
    fill_in "User", with: @cotizacion_dll.user_id
    click_on "Create Cotizacion dll"

    assert_text "Cotizacion dll was successfully created"
    click_on "Back"
  end

  test "should update Cotizacion dll" do
    visit cotizacion_dll_url(@cotizacion_dll)
    click_on "Edit this cotizacion dll", match: :first

    fill_in "Cliente", with: @cotizacion_dll.cliente_id
    fill_in "Factura", with: @cotizacion_dll.factura_id
    fill_in "Job", with: @cotizacion_dll.job_id
    fill_in "Status", with: @cotizacion_dll.status
    fill_in "User", with: @cotizacion_dll.user_id
    click_on "Update Cotizacion dll"

    assert_text "Cotizacion dll was successfully updated"
    click_on "Back"
  end

  test "should destroy Cotizacion dll" do
    visit cotizacion_dll_url(@cotizacion_dll)
    click_on "Destroy this cotizacion dll", match: :first

    assert_text "Cotizacion dll was successfully destroyed"
  end
end
