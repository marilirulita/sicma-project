require "application_system_test_case"

class ProveedorsTest < ApplicationSystemTestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "visiting the index" do
    visit proveedors_url
    assert_selector "h1", text: "Proveedors"
  end

  test "should create proveedor" do
    visit proveedors_url
    click_on "New proveedor"

    fill_in "Contacto", with: @proveedor.contacto
    fill_in "Email", with: @proveedor.email
    fill_in "Name", with: @proveedor.name
    fill_in "Whatsapp", with: @proveedor.whatsapp
    click_on "Create Proveedor"

    assert_text "Proveedor was successfully created"
    click_on "Back"
  end

  test "should update Proveedor" do
    visit proveedor_url(@proveedor)
    click_on "Edit this proveedor", match: :first

    fill_in "Contacto", with: @proveedor.contacto
    fill_in "Email", with: @proveedor.email
    fill_in "Name", with: @proveedor.name
    fill_in "Whatsapp", with: @proveedor.whatsapp
    click_on "Update Proveedor"

    assert_text "Proveedor was successfully updated"
    click_on "Back"
  end

  test "should destroy Proveedor" do
    visit proveedor_url(@proveedor)
    click_on "Destroy this proveedor", match: :first

    assert_text "Proveedor was successfully destroyed"
  end
end
