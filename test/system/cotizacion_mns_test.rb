require "application_system_test_case"

class CotizacionMnsTest < ApplicationSystemTestCase
  setup do
    @cotizacion_mn = cotizacion_mns(:one)
  end

  test "visiting the index" do
    visit cotizacion_mns_url
    assert_selector "h1", text: "Cotizacion mns"
  end

  test "should create cotizacion mn" do
    visit cotizacion_mns_url
    click_on "New cotizacion mn"

    fill_in "Cliente", with: @cotizacion_mn.cliente_id
    fill_in "Factura", with: @cotizacion_mn.factura_id
    fill_in "Job", with: @cotizacion_mn.job_id
    fill_in "Status", with: @cotizacion_mn.status
    fill_in "User", with: @cotizacion_mn.user_id
    click_on "Create Cotizacion mn"

    assert_text "Cotizacion mn was successfully created"
    click_on "Back"
  end

  test "should update Cotizacion mn" do
    visit cotizacion_mn_url(@cotizacion_mn)
    click_on "Edit this cotizacion mn", match: :first

    fill_in "Cliente", with: @cotizacion_mn.cliente_id
    fill_in "Factura", with: @cotizacion_mn.factura_id
    fill_in "Job", with: @cotizacion_mn.job_id
    fill_in "Status", with: @cotizacion_mn.status
    fill_in "User", with: @cotizacion_mn.user_id
    click_on "Update Cotizacion mn"

    assert_text "Cotizacion mn was successfully updated"
    click_on "Back"
  end

  test "should destroy Cotizacion mn" do
    visit cotizacion_mn_url(@cotizacion_mn)
    click_on "Destroy this cotizacion mn", match: :first

    assert_text "Cotizacion mn was successfully destroyed"
  end
end
