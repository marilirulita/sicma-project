class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors do |t|
      t.string :name
      t.string :email
      t.string :whatsapp
      t.string :contacto

      t.timestamps
    end
  end
end
