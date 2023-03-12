require "application_system_test_case"

class FacturasTest < ApplicationSystemTestCase
  setup do
    @factura = facturas(:one)
  end

  test "visiting the index" do
    visit facturas_url
    assert_selector "h1", text: "Facturas"
  end

  test "should create factura" do
    visit facturas_url
    click_on "New factura"

    fill_in "Cliente", with: @factura.cliente_id
    fill_in "Total", with: @factura.total
    click_on "Create Factura"

    assert_text "Factura was successfully created"
    click_on "Back"
  end

  test "should update Factura" do
    visit factura_url(@factura)
    click_on "Edit this factura", match: :first

    fill_in "Cliente", with: @factura.cliente_id
    fill_in "Total", with: @factura.total
    click_on "Update Factura"

    assert_text "Factura was successfully updated"
    click_on "Back"
  end

  test "should destroy Factura" do
    visit factura_url(@factura)
    click_on "Destroy this factura", match: :first

    assert_text "Factura was successfully destroyed"
  end
end
